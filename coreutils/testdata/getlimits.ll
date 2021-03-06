; ModuleID = 'coreutils-8.30/src/getlimits.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Output platform dependent limits in a format useful for shell scripts.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.74 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"getlimits\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.85 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.87 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CHAR_MAX=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CHAR_OFLOW=%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"CHAR_MIN=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"CHAR_UFLOW=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SCHAR_MAX=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SCHAR_OFLOW=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SCHAR_MIN=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHAR_UFLOW=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"UCHAR_MAX=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"UCHAR_OFLOW=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SHRT_MAX=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SHRT_OFLOW=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SHRT_MIN=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"SHRT_UFLOW=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"INT_MAX=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"INT_OFLOW=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"INT_MIN=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"INT_UFLOW=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"UINT_MAX=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UINT_OFLOW=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"LONG_MAX=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"LONG_OFLOW=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"LONG_MIN=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"LONG_UFLOW=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"ULONG_MAX=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ULONG_OFLOW=%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"SIZE_MAX=%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"SIZE_OFLOW=%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"SSIZE_MAX=%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SSIZE_OFLOW=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"SSIZE_MIN=%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SSIZE_UFLOW=%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"TIME_T_MAX=%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"TIME_T_OFLOW=%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"TIME_T_MIN=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"TIME_T_UFLOW=%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UID_T_MAX=%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"UID_T_OFLOW=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GID_T_MAX=%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"GID_T_OFLOW=%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PID_T_MAX=%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"PID_T_OFLOW=%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"PID_T_MIN=%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"PID_T_UFLOW=%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"OFF_T_MAX=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"OFF_T_OFLOW=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"OFF_T_MIN=%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFF_T_UFLOW=%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"INTMAX_MAX=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"INTMAX_OFLOW=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"INTMAX_MIN=%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"INTMAX_UFLOW=%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"UINTMAX_MAX=%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"UINTMAX_OFLOW=%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"FLT_MIN=\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"FLT_MAX=\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DBL_MIN=\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DBL_MAX=\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"LDBL_MIN=\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"LDBL_MAX=\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !6
@.str.89 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !13
@opterr = external local_unnamed_addr global i32, align 4
@.str.102 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.103, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.104, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !21
@optind = external local_unnamed_addr global i32, align 4
@.str.1.103 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.104 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !39
@.str.109 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.110 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.111 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.115, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.121, i32 0, i32 0), i8* null], align 16, !dbg !48
@.str.112 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.113 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.114 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.115 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.116 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.117 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.118 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.119 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.120 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.121 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !94
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.122 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.123 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.124 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.125 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.126 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.127 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.128 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
@.str.131 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.132 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.133 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.134 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.135 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.136 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.137 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.138 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.139 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.140 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.141 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.142 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.143 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.144 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.147 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.148 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.149 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.150 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.151 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.152 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.177 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !621 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !626, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %0, metadata !625, metadata !DIExpression()), !dbg !649
  %3 = icmp eq i32 %0, 0, !dbg !650
  br i1 %3, label %9, label %4, !dbg !651

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !652, !tbaa !654
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !652
  %7 = load i8*, i8** @program_name, align 8, !dbg !652, !tbaa !654
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !652
  br label %57, !dbg !652

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !658
  %11 = load i8*, i8** @program_name, align 8, !dbg !658, !tbaa !654
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !658
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !659
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !654
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !659
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !660
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !654
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !660
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !661
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !654
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !661
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #11, !dbg !662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !645
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !663
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !634, metadata !DIExpression()) #11, !dbg !664
  br label %24, !dbg !665

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !665
  %28 = icmp eq i32 %27, 0, !dbg !665
  br i1 %28, label %34, label %29, !dbg !666

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !668
  %32 = load i8*, i8** %31, align 8, !dbg !668, !tbaa !669
  %33 = icmp eq i8* %32, null, !dbg !671
  br i1 %33, label %34, label %24, !dbg !672, !llvm.loop !673

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !634, metadata !DIExpression()) #11, !dbg !664
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !634, metadata !DIExpression()) #11, !dbg !664
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !676
  %37 = load i8*, i8** %36, align 8, !dbg !676, !tbaa !678
  %38 = icmp eq i8* %37, null, !dbg !679
  %39 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !680
  call void @llvm.dbg.value(metadata i8* %39, metadata !633, metadata !DIExpression()) #11, !dbg !681
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 5) #11, !dbg !682
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0)) #11, !dbg !682
  %42 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !683
  call void @llvm.dbg.value(metadata i8* %42, metadata !641, metadata !DIExpression()) #11, !dbg !684
  %43 = icmp eq i8* %42, null, !dbg !685
  br i1 %43, label %50, label %44, !dbg !687

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !688
  %46 = icmp eq i32 %45, 0, !dbg !688
  br i1 %46, label %50, label %47, !dbg !689

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.85, i64 0, i64 0), i32 5) #11, !dbg !690
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !690
  br label %50, !dbg !692

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !693
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !693
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i32 5) #11, !dbg !694
  %54 = icmp eq i8* %39, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), !dbg !694
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !694
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #11, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #11, !dbg !695
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !696
  unreachable, !dbg !696
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !697 {
  %3 = alloca [40 x i8], align 16
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !708, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !708, metadata !DIExpression()), !dbg !720
  %4 = alloca [31 x i8], align 16
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !722, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !722, metadata !DIExpression()), !dbg !734
  %5 = alloca [45 x i8], align 16
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !736, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !736, metadata !DIExpression()), !dbg !748
  %6 = alloca [22 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !702, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8** %1, metadata !703, metadata !DIExpression()), !dbg !751
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !752
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %7) #11, !dbg !752
  call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !704, metadata !DIExpression()), !dbg !753
  %8 = load i8*, i8** %1, align 8, !dbg !754, !tbaa !654
  tail call void @set_program_name(i8* %8) #11, !dbg !755
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !756
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !757
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !758
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !759
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* null) #11, !dbg !760
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 1, !dbg !761
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #11, !dbg !761
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %13) #11, !dbg !761
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !771
  %16 = load i8, i8* %13, align 1, !dbg !773, !tbaa !774
  %17 = icmp eq i8 %16, 45, !dbg !775
  %18 = zext i1 %17 to i64, !dbg !776
  %19 = getelementptr inbounds i8, i8* %13, i64 %18, !dbg !776
  call void @llvm.dbg.value(metadata i8* %19, metadata !768, metadata !DIExpression()) #11, !dbg !777
  %20 = call i64 @strlen(i8* nonnull %19) #14, !dbg !778
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !779
  call void @llvm.dbg.value(metadata i8* %21, metadata !769, metadata !DIExpression()) #11, !dbg !780
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !781
  store i8 48, i8* %22, align 1, !dbg !782, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %21, metadata !769, metadata !DIExpression()) #11, !dbg !780
  %23 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !783
  call void @llvm.dbg.value(metadata i8* %23, metadata !769, metadata !DIExpression()) #11, !dbg !780
  %24 = load i8, i8* %23, align 1, !dbg !784, !tbaa !774
  %25 = icmp eq i8 %24, 57, !dbg !785
  br i1 %25, label %26, label %31, !dbg !786

; <label>:26:                                     ; preds = %2, %26
  %27 = phi i8* [ %28, %26 ], [ %23, %2 ]
  store i8 48, i8* %27, align 1, !dbg !787, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %27, metadata !769, metadata !DIExpression()) #11, !dbg !780
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !783
  call void @llvm.dbg.value(metadata i8* %28, metadata !769, metadata !DIExpression()) #11, !dbg !780
  %29 = load i8, i8* %28, align 1, !dbg !784, !tbaa !774
  %30 = icmp eq i8 %29, 57, !dbg !785
  br i1 %30, label %26, label %31, !dbg !786, !llvm.loop !788

; <label>:31:                                     ; preds = %26, %2
  %32 = phi i8* [ %23, %2 ], [ %28, %26 ], !dbg !783
  %33 = phi i8 [ %24, %2 ], [ %29, %26 ], !dbg !784
  %34 = add i8 %33, 1, !dbg !791
  store i8 %34, i8* %32, align 1, !dbg !791, !tbaa !774
  %35 = icmp ult i8* %19, %32, !dbg !792
  %36 = select i1 %35, i8* %19, i8* %32, !dbg !792
  call void @llvm.dbg.value(metadata i8* %36, metadata !770, metadata !DIExpression()) #11, !dbg !793
  br i1 %17, label %37, label %39, !dbg !794

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !795
  call void @llvm.dbg.value(metadata i8* %38, metadata !770, metadata !DIExpression()) #11, !dbg !793
  store i8 45, i8* %38, align 1, !dbg !797, !tbaa !774
  br label %39, !dbg !798

; <label>:39:                                     ; preds = %31, %37
  %40 = phi i8* [ %38, %37 ], [ %36, %31 ], !dbg !799
  call void @llvm.dbg.value(metadata i8* %40, metadata !770, metadata !DIExpression()) #11, !dbg !793
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %40) #11, !dbg !761
  %42 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #11, !dbg !800
  %43 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %13) #11, !dbg !800
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !803
  %44 = load i8, i8* %13, align 1, !dbg !805, !tbaa !774
  %45 = icmp eq i8 %44, 45, !dbg !806
  %46 = zext i1 %45 to i64, !dbg !807
  %47 = getelementptr inbounds i8, i8* %13, i64 %46, !dbg !807
  call void @llvm.dbg.value(metadata i8* %47, metadata !768, metadata !DIExpression()) #11, !dbg !808
  %48 = call i64 @strlen(i8* nonnull %47) #14, !dbg !809
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !810
  call void @llvm.dbg.value(metadata i8* %49, metadata !769, metadata !DIExpression()) #11, !dbg !811
  %50 = getelementptr inbounds i8, i8* %47, i64 -1, !dbg !812
  store i8 48, i8* %50, align 1, !dbg !813, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %49, metadata !769, metadata !DIExpression()) #11, !dbg !811
  %51 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !814
  call void @llvm.dbg.value(metadata i8* %51, metadata !769, metadata !DIExpression()) #11, !dbg !811
  %52 = load i8, i8* %51, align 1, !dbg !815, !tbaa !774
  %53 = icmp eq i8 %52, 57, !dbg !816
  br i1 %53, label %54, label %59, !dbg !817

; <label>:54:                                     ; preds = %39, %54
  %55 = phi i8* [ %56, %54 ], [ %51, %39 ]
  store i8 48, i8* %55, align 1, !dbg !818, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %55, metadata !769, metadata !DIExpression()) #11, !dbg !811
  %56 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !814
  call void @llvm.dbg.value(metadata i8* %56, metadata !769, metadata !DIExpression()) #11, !dbg !811
  %57 = load i8, i8* %56, align 1, !dbg !815, !tbaa !774
  %58 = icmp eq i8 %57, 57, !dbg !816
  br i1 %58, label %54, label %59, !dbg !817, !llvm.loop !788

; <label>:59:                                     ; preds = %54, %39
  %60 = phi i8* [ %51, %39 ], [ %56, %54 ], !dbg !814
  %61 = phi i8 [ %52, %39 ], [ %57, %54 ], !dbg !815
  %62 = add i8 %61, 1, !dbg !819
  store i8 %62, i8* %60, align 1, !dbg !819, !tbaa !774
  %63 = icmp ult i8* %47, %60, !dbg !820
  %64 = select i1 %63, i8* %47, i8* %60, !dbg !820
  call void @llvm.dbg.value(metadata i8* %64, metadata !770, metadata !DIExpression()) #11, !dbg !821
  br i1 %45, label %65, label %67, !dbg !822

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !823
  call void @llvm.dbg.value(metadata i8* %66, metadata !770, metadata !DIExpression()) #11, !dbg !821
  store i8 45, i8* %66, align 1, !dbg !824, !tbaa !774
  br label %67, !dbg !825

; <label>:67:                                     ; preds = %59, %65
  %68 = phi i8* [ %66, %65 ], [ %64, %59 ], !dbg !826
  call void @llvm.dbg.value(metadata i8* %68, metadata !770, metadata !DIExpression()) #11, !dbg !821
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %68) #11, !dbg !800
  %70 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #11, !dbg !827
  %71 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %13) #11, !dbg !827
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !828
  %72 = load i8, i8* %13, align 1, !dbg !830, !tbaa !774
  %73 = icmp eq i8 %72, 45, !dbg !831
  %74 = zext i1 %73 to i64, !dbg !832
  %75 = getelementptr inbounds i8, i8* %13, i64 %74, !dbg !832
  call void @llvm.dbg.value(metadata i8* %75, metadata !768, metadata !DIExpression()) #11, !dbg !833
  %76 = call i64 @strlen(i8* nonnull %75) #14, !dbg !834
  %77 = getelementptr inbounds i8, i8* %75, i64 %76, !dbg !835
  call void @llvm.dbg.value(metadata i8* %77, metadata !769, metadata !DIExpression()) #11, !dbg !836
  %78 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !837
  store i8 48, i8* %78, align 1, !dbg !838, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %77, metadata !769, metadata !DIExpression()) #11, !dbg !836
  %79 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !839
  call void @llvm.dbg.value(metadata i8* %79, metadata !769, metadata !DIExpression()) #11, !dbg !836
  %80 = load i8, i8* %79, align 1, !dbg !840, !tbaa !774
  %81 = icmp eq i8 %80, 57, !dbg !841
  br i1 %81, label %82, label %87, !dbg !842

; <label>:82:                                     ; preds = %67, %82
  %83 = phi i8* [ %84, %82 ], [ %79, %67 ]
  store i8 48, i8* %83, align 1, !dbg !843, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %83, metadata !769, metadata !DIExpression()) #11, !dbg !836
  %84 = getelementptr inbounds i8, i8* %83, i64 -1, !dbg !839
  call void @llvm.dbg.value(metadata i8* %84, metadata !769, metadata !DIExpression()) #11, !dbg !836
  %85 = load i8, i8* %84, align 1, !dbg !840, !tbaa !774
  %86 = icmp eq i8 %85, 57, !dbg !841
  br i1 %86, label %82, label %87, !dbg !842, !llvm.loop !788

; <label>:87:                                     ; preds = %82, %67
  %88 = phi i8* [ %79, %67 ], [ %84, %82 ], !dbg !839
  %89 = phi i8 [ %80, %67 ], [ %85, %82 ], !dbg !840
  %90 = add i8 %89, 1, !dbg !844
  store i8 %90, i8* %88, align 1, !dbg !844, !tbaa !774
  %91 = icmp ult i8* %75, %88, !dbg !845
  %92 = select i1 %91, i8* %75, i8* %88, !dbg !845
  call void @llvm.dbg.value(metadata i8* %92, metadata !770, metadata !DIExpression()) #11, !dbg !846
  br i1 %73, label %93, label %95, !dbg !847

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !848
  call void @llvm.dbg.value(metadata i8* %94, metadata !770, metadata !DIExpression()) #11, !dbg !846
  store i8 45, i8* %94, align 1, !dbg !849, !tbaa !774
  br label %95, !dbg !850

; <label>:95:                                     ; preds = %87, %93
  %96 = phi i8* [ %94, %93 ], [ %92, %87 ], !dbg !851
  call void @llvm.dbg.value(metadata i8* %96, metadata !770, metadata !DIExpression()) #11, !dbg !846
  %97 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %96) #11, !dbg !827
  %98 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #11, !dbg !852
  %99 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %13) #11, !dbg !852
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !855
  %100 = load i8, i8* %13, align 1, !dbg !857, !tbaa !774
  %101 = icmp eq i8 %100, 45, !dbg !858
  %102 = zext i1 %101 to i64, !dbg !859
  %103 = getelementptr inbounds i8, i8* %13, i64 %102, !dbg !859
  call void @llvm.dbg.value(metadata i8* %103, metadata !768, metadata !DIExpression()) #11, !dbg !860
  %104 = call i64 @strlen(i8* nonnull %103) #14, !dbg !861
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !862
  call void @llvm.dbg.value(metadata i8* %105, metadata !769, metadata !DIExpression()) #11, !dbg !863
  %106 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !864
  store i8 48, i8* %106, align 1, !dbg !865, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %105, metadata !769, metadata !DIExpression()) #11, !dbg !863
  %107 = getelementptr inbounds i8, i8* %105, i64 -1, !dbg !866
  call void @llvm.dbg.value(metadata i8* %107, metadata !769, metadata !DIExpression()) #11, !dbg !863
  %108 = load i8, i8* %107, align 1, !dbg !867, !tbaa !774
  %109 = icmp eq i8 %108, 57, !dbg !868
  br i1 %109, label %110, label %115, !dbg !869

; <label>:110:                                    ; preds = %95, %110
  %111 = phi i8* [ %112, %110 ], [ %107, %95 ]
  store i8 48, i8* %111, align 1, !dbg !870, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %111, metadata !769, metadata !DIExpression()) #11, !dbg !863
  %112 = getelementptr inbounds i8, i8* %111, i64 -1, !dbg !866
  call void @llvm.dbg.value(metadata i8* %112, metadata !769, metadata !DIExpression()) #11, !dbg !863
  %113 = load i8, i8* %112, align 1, !dbg !867, !tbaa !774
  %114 = icmp eq i8 %113, 57, !dbg !868
  br i1 %114, label %110, label %115, !dbg !869, !llvm.loop !788

; <label>:115:                                    ; preds = %110, %95
  %116 = phi i8* [ %107, %95 ], [ %112, %110 ], !dbg !866
  %117 = phi i8 [ %108, %95 ], [ %113, %110 ], !dbg !867
  %118 = add i8 %117, 1, !dbg !871
  store i8 %118, i8* %116, align 1, !dbg !871, !tbaa !774
  %119 = icmp ult i8* %103, %116, !dbg !872
  %120 = select i1 %119, i8* %103, i8* %116, !dbg !872
  call void @llvm.dbg.value(metadata i8* %120, metadata !770, metadata !DIExpression()) #11, !dbg !873
  br i1 %101, label %121, label %123, !dbg !874

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds i8, i8* %120, i64 -1, !dbg !875
  call void @llvm.dbg.value(metadata i8* %122, metadata !770, metadata !DIExpression()) #11, !dbg !873
  store i8 45, i8* %122, align 1, !dbg !876, !tbaa !774
  br label %123, !dbg !877

; <label>:123:                                    ; preds = %115, %121
  %124 = phi i8* [ %122, %121 ], [ %120, %115 ], !dbg !878
  call void @llvm.dbg.value(metadata i8* %124, metadata !770, metadata !DIExpression()) #11, !dbg !873
  %125 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %124) #11, !dbg !852
  %126 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 255) #11, !dbg !879
  %127 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %13) #11, !dbg !879
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !880
  %128 = load i8, i8* %13, align 1, !dbg !882, !tbaa !774
  %129 = icmp eq i8 %128, 45, !dbg !883
  %130 = zext i1 %129 to i64, !dbg !884
  %131 = getelementptr inbounds i8, i8* %13, i64 %130, !dbg !884
  call void @llvm.dbg.value(metadata i8* %131, metadata !768, metadata !DIExpression()) #11, !dbg !885
  %132 = call i64 @strlen(i8* nonnull %131) #14, !dbg !886
  %133 = getelementptr inbounds i8, i8* %131, i64 %132, !dbg !887
  call void @llvm.dbg.value(metadata i8* %133, metadata !769, metadata !DIExpression()) #11, !dbg !888
  %134 = getelementptr inbounds i8, i8* %131, i64 -1, !dbg !889
  store i8 48, i8* %134, align 1, !dbg !890, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %133, metadata !769, metadata !DIExpression()) #11, !dbg !888
  %135 = getelementptr inbounds i8, i8* %133, i64 -1, !dbg !891
  call void @llvm.dbg.value(metadata i8* %135, metadata !769, metadata !DIExpression()) #11, !dbg !888
  %136 = load i8, i8* %135, align 1, !dbg !892, !tbaa !774
  %137 = icmp eq i8 %136, 57, !dbg !893
  br i1 %137, label %138, label %143, !dbg !894

; <label>:138:                                    ; preds = %123, %138
  %139 = phi i8* [ %140, %138 ], [ %135, %123 ]
  store i8 48, i8* %139, align 1, !dbg !895, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %139, metadata !769, metadata !DIExpression()) #11, !dbg !888
  %140 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !891
  call void @llvm.dbg.value(metadata i8* %140, metadata !769, metadata !DIExpression()) #11, !dbg !888
  %141 = load i8, i8* %140, align 1, !dbg !892, !tbaa !774
  %142 = icmp eq i8 %141, 57, !dbg !893
  br i1 %142, label %138, label %143, !dbg !894, !llvm.loop !788

; <label>:143:                                    ; preds = %138, %123
  %144 = phi i8* [ %135, %123 ], [ %140, %138 ], !dbg !891
  %145 = phi i8 [ %136, %123 ], [ %141, %138 ], !dbg !892
  %146 = add i8 %145, 1, !dbg !896
  store i8 %146, i8* %144, align 1, !dbg !896, !tbaa !774
  %147 = icmp ult i8* %131, %144, !dbg !897
  %148 = select i1 %147, i8* %131, i8* %144, !dbg !897
  call void @llvm.dbg.value(metadata i8* %148, metadata !770, metadata !DIExpression()) #11, !dbg !898
  br i1 %129, label %149, label %151, !dbg !899

; <label>:149:                                    ; preds = %143
  %150 = getelementptr inbounds i8, i8* %148, i64 -1, !dbg !900
  call void @llvm.dbg.value(metadata i8* %150, metadata !770, metadata !DIExpression()) #11, !dbg !898
  store i8 45, i8* %150, align 1, !dbg !901, !tbaa !774
  br label %151, !dbg !902

; <label>:151:                                    ; preds = %143, %149
  %152 = phi i8* [ %150, %149 ], [ %148, %143 ], !dbg !903
  call void @llvm.dbg.value(metadata i8* %152, metadata !770, metadata !DIExpression()) #11, !dbg !898
  %153 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %152) #11, !dbg !879
  %154 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 32767) #11, !dbg !904
  %155 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %13) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !905
  %156 = load i8, i8* %13, align 1, !dbg !907, !tbaa !774
  %157 = icmp eq i8 %156, 45, !dbg !908
  %158 = zext i1 %157 to i64, !dbg !909
  %159 = getelementptr inbounds i8, i8* %13, i64 %158, !dbg !909
  call void @llvm.dbg.value(metadata i8* %159, metadata !768, metadata !DIExpression()) #11, !dbg !910
  %160 = call i64 @strlen(i8* nonnull %159) #14, !dbg !911
  %161 = getelementptr inbounds i8, i8* %159, i64 %160, !dbg !912
  call void @llvm.dbg.value(metadata i8* %161, metadata !769, metadata !DIExpression()) #11, !dbg !913
  %162 = getelementptr inbounds i8, i8* %159, i64 -1, !dbg !914
  store i8 48, i8* %162, align 1, !dbg !915, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %161, metadata !769, metadata !DIExpression()) #11, !dbg !913
  %163 = getelementptr inbounds i8, i8* %161, i64 -1, !dbg !916
  call void @llvm.dbg.value(metadata i8* %163, metadata !769, metadata !DIExpression()) #11, !dbg !913
  %164 = load i8, i8* %163, align 1, !dbg !917, !tbaa !774
  %165 = icmp eq i8 %164, 57, !dbg !918
  br i1 %165, label %166, label %171, !dbg !919

; <label>:166:                                    ; preds = %151, %166
  %167 = phi i8* [ %168, %166 ], [ %163, %151 ]
  store i8 48, i8* %167, align 1, !dbg !920, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %167, metadata !769, metadata !DIExpression()) #11, !dbg !913
  %168 = getelementptr inbounds i8, i8* %167, i64 -1, !dbg !916
  call void @llvm.dbg.value(metadata i8* %168, metadata !769, metadata !DIExpression()) #11, !dbg !913
  %169 = load i8, i8* %168, align 1, !dbg !917, !tbaa !774
  %170 = icmp eq i8 %169, 57, !dbg !918
  br i1 %170, label %166, label %171, !dbg !919, !llvm.loop !788

; <label>:171:                                    ; preds = %166, %151
  %172 = phi i8* [ %163, %151 ], [ %168, %166 ], !dbg !916
  %173 = phi i8 [ %164, %151 ], [ %169, %166 ], !dbg !917
  %174 = add i8 %173, 1, !dbg !921
  store i8 %174, i8* %172, align 1, !dbg !921, !tbaa !774
  %175 = icmp ult i8* %159, %172, !dbg !922
  %176 = select i1 %175, i8* %159, i8* %172, !dbg !922
  call void @llvm.dbg.value(metadata i8* %176, metadata !770, metadata !DIExpression()) #11, !dbg !923
  br i1 %157, label %177, label %179, !dbg !924

; <label>:177:                                    ; preds = %171
  %178 = getelementptr inbounds i8, i8* %176, i64 -1, !dbg !925
  call void @llvm.dbg.value(metadata i8* %178, metadata !770, metadata !DIExpression()) #11, !dbg !923
  store i8 45, i8* %178, align 1, !dbg !926, !tbaa !774
  br label %179, !dbg !927

; <label>:179:                                    ; preds = %171, %177
  %180 = phi i8* [ %178, %177 ], [ %176, %171 ], !dbg !928
  call void @llvm.dbg.value(metadata i8* %180, metadata !770, metadata !DIExpression()) #11, !dbg !923
  %181 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %180) #11, !dbg !904
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -32768) #11, !dbg !929
  %183 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %13) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !932
  %184 = load i8, i8* %13, align 1, !dbg !934, !tbaa !774
  %185 = icmp eq i8 %184, 45, !dbg !935
  %186 = zext i1 %185 to i64, !dbg !936
  %187 = getelementptr inbounds i8, i8* %13, i64 %186, !dbg !936
  call void @llvm.dbg.value(metadata i8* %187, metadata !768, metadata !DIExpression()) #11, !dbg !937
  %188 = call i64 @strlen(i8* nonnull %187) #14, !dbg !938
  %189 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !939
  call void @llvm.dbg.value(metadata i8* %189, metadata !769, metadata !DIExpression()) #11, !dbg !940
  %190 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !941
  store i8 48, i8* %190, align 1, !dbg !942, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %189, metadata !769, metadata !DIExpression()) #11, !dbg !940
  %191 = getelementptr inbounds i8, i8* %189, i64 -1, !dbg !943
  call void @llvm.dbg.value(metadata i8* %191, metadata !769, metadata !DIExpression()) #11, !dbg !940
  %192 = load i8, i8* %191, align 1, !dbg !944, !tbaa !774
  %193 = icmp eq i8 %192, 57, !dbg !945
  br i1 %193, label %194, label %199, !dbg !946

; <label>:194:                                    ; preds = %179, %194
  %195 = phi i8* [ %196, %194 ], [ %191, %179 ]
  store i8 48, i8* %195, align 1, !dbg !947, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %195, metadata !769, metadata !DIExpression()) #11, !dbg !940
  %196 = getelementptr inbounds i8, i8* %195, i64 -1, !dbg !943
  call void @llvm.dbg.value(metadata i8* %196, metadata !769, metadata !DIExpression()) #11, !dbg !940
  %197 = load i8, i8* %196, align 1, !dbg !944, !tbaa !774
  %198 = icmp eq i8 %197, 57, !dbg !945
  br i1 %198, label %194, label %199, !dbg !946, !llvm.loop !788

; <label>:199:                                    ; preds = %194, %179
  %200 = phi i8* [ %191, %179 ], [ %196, %194 ], !dbg !943
  %201 = phi i8 [ %192, %179 ], [ %197, %194 ], !dbg !944
  %202 = add i8 %201, 1, !dbg !948
  store i8 %202, i8* %200, align 1, !dbg !948, !tbaa !774
  %203 = icmp ult i8* %187, %200, !dbg !949
  %204 = select i1 %203, i8* %187, i8* %200, !dbg !949
  call void @llvm.dbg.value(metadata i8* %204, metadata !770, metadata !DIExpression()) #11, !dbg !950
  br i1 %185, label %205, label %207, !dbg !951

; <label>:205:                                    ; preds = %199
  %206 = getelementptr inbounds i8, i8* %204, i64 -1, !dbg !952
  call void @llvm.dbg.value(metadata i8* %206, metadata !770, metadata !DIExpression()) #11, !dbg !950
  store i8 45, i8* %206, align 1, !dbg !953, !tbaa !774
  br label %207, !dbg !954

; <label>:207:                                    ; preds = %199, %205
  %208 = phi i8* [ %206, %205 ], [ %204, %199 ], !dbg !955
  call void @llvm.dbg.value(metadata i8* %208, metadata !770, metadata !DIExpression()) #11, !dbg !950
  %209 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %208) #11, !dbg !929
  %210 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #11, !dbg !956
  %211 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* nonnull %13) #11, !dbg !956
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !957
  %212 = load i8, i8* %13, align 1, !dbg !959, !tbaa !774
  %213 = icmp eq i8 %212, 45, !dbg !960
  %214 = zext i1 %213 to i64, !dbg !961
  %215 = getelementptr inbounds i8, i8* %13, i64 %214, !dbg !961
  call void @llvm.dbg.value(metadata i8* %215, metadata !768, metadata !DIExpression()) #11, !dbg !962
  %216 = call i64 @strlen(i8* nonnull %215) #14, !dbg !963
  %217 = getelementptr inbounds i8, i8* %215, i64 %216, !dbg !964
  call void @llvm.dbg.value(metadata i8* %217, metadata !769, metadata !DIExpression()) #11, !dbg !965
  %218 = getelementptr inbounds i8, i8* %215, i64 -1, !dbg !966
  store i8 48, i8* %218, align 1, !dbg !967, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %217, metadata !769, metadata !DIExpression()) #11, !dbg !965
  %219 = getelementptr inbounds i8, i8* %217, i64 -1, !dbg !968
  call void @llvm.dbg.value(metadata i8* %219, metadata !769, metadata !DIExpression()) #11, !dbg !965
  %220 = load i8, i8* %219, align 1, !dbg !969, !tbaa !774
  %221 = icmp eq i8 %220, 57, !dbg !970
  br i1 %221, label %222, label %227, !dbg !971

; <label>:222:                                    ; preds = %207, %222
  %223 = phi i8* [ %224, %222 ], [ %219, %207 ]
  store i8 48, i8* %223, align 1, !dbg !972, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %223, metadata !769, metadata !DIExpression()) #11, !dbg !965
  %224 = getelementptr inbounds i8, i8* %223, i64 -1, !dbg !968
  call void @llvm.dbg.value(metadata i8* %224, metadata !769, metadata !DIExpression()) #11, !dbg !965
  %225 = load i8, i8* %224, align 1, !dbg !969, !tbaa !774
  %226 = icmp eq i8 %225, 57, !dbg !970
  br i1 %226, label %222, label %227, !dbg !971, !llvm.loop !788

; <label>:227:                                    ; preds = %222, %207
  %228 = phi i8* [ %219, %207 ], [ %224, %222 ], !dbg !968
  %229 = phi i8 [ %220, %207 ], [ %225, %222 ], !dbg !969
  %230 = add i8 %229, 1, !dbg !973
  store i8 %230, i8* %228, align 1, !dbg !973, !tbaa !774
  %231 = icmp ult i8* %215, %228, !dbg !974
  %232 = select i1 %231, i8* %215, i8* %228, !dbg !974
  call void @llvm.dbg.value(metadata i8* %232, metadata !770, metadata !DIExpression()) #11, !dbg !975
  br i1 %213, label %233, label %235, !dbg !976

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds i8, i8* %232, i64 -1, !dbg !977
  call void @llvm.dbg.value(metadata i8* %234, metadata !770, metadata !DIExpression()) #11, !dbg !975
  store i8 45, i8* %234, align 1, !dbg !978, !tbaa !774
  br label %235, !dbg !979

; <label>:235:                                    ; preds = %227, %233
  %236 = phi i8* [ %234, %233 ], [ %232, %227 ], !dbg !980
  call void @llvm.dbg.value(metadata i8* %236, metadata !770, metadata !DIExpression()) #11, !dbg !975
  %237 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %236) #11, !dbg !956
  %238 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #11, !dbg !981
  %239 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* nonnull %13) #11, !dbg !981
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !984
  %240 = load i8, i8* %13, align 1, !dbg !986, !tbaa !774
  %241 = icmp eq i8 %240, 45, !dbg !987
  %242 = zext i1 %241 to i64, !dbg !988
  %243 = getelementptr inbounds i8, i8* %13, i64 %242, !dbg !988
  call void @llvm.dbg.value(metadata i8* %243, metadata !768, metadata !DIExpression()) #11, !dbg !989
  %244 = call i64 @strlen(i8* nonnull %243) #14, !dbg !990
  %245 = getelementptr inbounds i8, i8* %243, i64 %244, !dbg !991
  call void @llvm.dbg.value(metadata i8* %245, metadata !769, metadata !DIExpression()) #11, !dbg !992
  %246 = getelementptr inbounds i8, i8* %243, i64 -1, !dbg !993
  store i8 48, i8* %246, align 1, !dbg !994, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %245, metadata !769, metadata !DIExpression()) #11, !dbg !992
  %247 = getelementptr inbounds i8, i8* %245, i64 -1, !dbg !995
  call void @llvm.dbg.value(metadata i8* %247, metadata !769, metadata !DIExpression()) #11, !dbg !992
  %248 = load i8, i8* %247, align 1, !dbg !996, !tbaa !774
  %249 = icmp eq i8 %248, 57, !dbg !997
  br i1 %249, label %250, label %255, !dbg !998

; <label>:250:                                    ; preds = %235, %250
  %251 = phi i8* [ %252, %250 ], [ %247, %235 ]
  store i8 48, i8* %251, align 1, !dbg !999, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %251, metadata !769, metadata !DIExpression()) #11, !dbg !992
  %252 = getelementptr inbounds i8, i8* %251, i64 -1, !dbg !995
  call void @llvm.dbg.value(metadata i8* %252, metadata !769, metadata !DIExpression()) #11, !dbg !992
  %253 = load i8, i8* %252, align 1, !dbg !996, !tbaa !774
  %254 = icmp eq i8 %253, 57, !dbg !997
  br i1 %254, label %250, label %255, !dbg !998, !llvm.loop !788

; <label>:255:                                    ; preds = %250, %235
  %256 = phi i8* [ %247, %235 ], [ %252, %250 ], !dbg !995
  %257 = phi i8 [ %248, %235 ], [ %253, %250 ], !dbg !996
  %258 = add i8 %257, 1, !dbg !1000
  store i8 %258, i8* %256, align 1, !dbg !1000, !tbaa !774
  %259 = icmp ult i8* %243, %256, !dbg !1001
  %260 = select i1 %259, i8* %243, i8* %256, !dbg !1001
  call void @llvm.dbg.value(metadata i8* %260, metadata !770, metadata !DIExpression()) #11, !dbg !1002
  br i1 %241, label %261, label %263, !dbg !1003

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds i8, i8* %260, i64 -1, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %262, metadata !770, metadata !DIExpression()) #11, !dbg !1002
  store i8 45, i8* %262, align 1, !dbg !1005, !tbaa !774
  br label %263, !dbg !1006

; <label>:263:                                    ; preds = %255, %261
  %264 = phi i8* [ %262, %261 ], [ %260, %255 ], !dbg !1007
  call void @llvm.dbg.value(metadata i8* %264, metadata !770, metadata !DIExpression()) #11, !dbg !1002
  %265 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %264) #11, !dbg !981
  %266 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !1008
  %267 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1009
  %268 = load i8, i8* %13, align 1, !dbg !1011, !tbaa !774
  %269 = icmp eq i8 %268, 45, !dbg !1012
  %270 = zext i1 %269 to i64, !dbg !1013
  %271 = getelementptr inbounds i8, i8* %13, i64 %270, !dbg !1013
  call void @llvm.dbg.value(metadata i8* %271, metadata !768, metadata !DIExpression()) #11, !dbg !1014
  %272 = call i64 @strlen(i8* nonnull %271) #14, !dbg !1015
  %273 = getelementptr inbounds i8, i8* %271, i64 %272, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %273, metadata !769, metadata !DIExpression()) #11, !dbg !1017
  %274 = getelementptr inbounds i8, i8* %271, i64 -1, !dbg !1018
  store i8 48, i8* %274, align 1, !dbg !1019, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %273, metadata !769, metadata !DIExpression()) #11, !dbg !1017
  %275 = getelementptr inbounds i8, i8* %273, i64 -1, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %275, metadata !769, metadata !DIExpression()) #11, !dbg !1017
  %276 = load i8, i8* %275, align 1, !dbg !1021, !tbaa !774
  %277 = icmp eq i8 %276, 57, !dbg !1022
  br i1 %277, label %278, label %283, !dbg !1023

; <label>:278:                                    ; preds = %263, %278
  %279 = phi i8* [ %280, %278 ], [ %275, %263 ]
  store i8 48, i8* %279, align 1, !dbg !1024, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %279, metadata !769, metadata !DIExpression()) #11, !dbg !1017
  %280 = getelementptr inbounds i8, i8* %279, i64 -1, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %280, metadata !769, metadata !DIExpression()) #11, !dbg !1017
  %281 = load i8, i8* %280, align 1, !dbg !1021, !tbaa !774
  %282 = icmp eq i8 %281, 57, !dbg !1022
  br i1 %282, label %278, label %283, !dbg !1023, !llvm.loop !788

; <label>:283:                                    ; preds = %278, %263
  %284 = phi i8* [ %275, %263 ], [ %280, %278 ], !dbg !1020
  %285 = phi i8 [ %276, %263 ], [ %281, %278 ], !dbg !1021
  %286 = add i8 %285, 1, !dbg !1025
  store i8 %286, i8* %284, align 1, !dbg !1025, !tbaa !774
  %287 = icmp ult i8* %271, %284, !dbg !1026
  %288 = select i1 %287, i8* %271, i8* %284, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %288, metadata !770, metadata !DIExpression()) #11, !dbg !1027
  br i1 %269, label %289, label %291, !dbg !1028

; <label>:289:                                    ; preds = %283
  %290 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %290, metadata !770, metadata !DIExpression()) #11, !dbg !1027
  store i8 45, i8* %290, align 1, !dbg !1030, !tbaa !774
  br label %291, !dbg !1031

; <label>:291:                                    ; preds = %283, %289
  %292 = phi i8* [ %290, %289 ], [ %288, %283 ], !dbg !1032
  call void @llvm.dbg.value(metadata i8* %292, metadata !770, metadata !DIExpression()) #11, !dbg !1027
  %293 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %292) #11, !dbg !1008
  %294 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1033
  %295 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1034
  %296 = load i8, i8* %13, align 1, !dbg !1036, !tbaa !774
  %297 = icmp eq i8 %296, 45, !dbg !1037
  %298 = zext i1 %297 to i64, !dbg !1038
  %299 = getelementptr inbounds i8, i8* %13, i64 %298, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %299, metadata !768, metadata !DIExpression()) #11, !dbg !1039
  %300 = call i64 @strlen(i8* nonnull %299) #14, !dbg !1040
  %301 = getelementptr inbounds i8, i8* %299, i64 %300, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %301, metadata !769, metadata !DIExpression()) #11, !dbg !1042
  %302 = getelementptr inbounds i8, i8* %299, i64 -1, !dbg !1043
  store i8 48, i8* %302, align 1, !dbg !1044, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %301, metadata !769, metadata !DIExpression()) #11, !dbg !1042
  %303 = getelementptr inbounds i8, i8* %301, i64 -1, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %303, metadata !769, metadata !DIExpression()) #11, !dbg !1042
  %304 = load i8, i8* %303, align 1, !dbg !1046, !tbaa !774
  %305 = icmp eq i8 %304, 57, !dbg !1047
  br i1 %305, label %306, label %311, !dbg !1048

; <label>:306:                                    ; preds = %291, %306
  %307 = phi i8* [ %308, %306 ], [ %303, %291 ]
  store i8 48, i8* %307, align 1, !dbg !1049, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %307, metadata !769, metadata !DIExpression()) #11, !dbg !1042
  %308 = getelementptr inbounds i8, i8* %307, i64 -1, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %308, metadata !769, metadata !DIExpression()) #11, !dbg !1042
  %309 = load i8, i8* %308, align 1, !dbg !1046, !tbaa !774
  %310 = icmp eq i8 %309, 57, !dbg !1047
  br i1 %310, label %306, label %311, !dbg !1048, !llvm.loop !788

; <label>:311:                                    ; preds = %306, %291
  %312 = phi i8* [ %303, %291 ], [ %308, %306 ], !dbg !1045
  %313 = phi i8 [ %304, %291 ], [ %309, %306 ], !dbg !1046
  %314 = add i8 %313, 1, !dbg !1050
  store i8 %314, i8* %312, align 1, !dbg !1050, !tbaa !774
  %315 = icmp ult i8* %299, %312, !dbg !1051
  %316 = select i1 %315, i8* %299, i8* %312, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %316, metadata !770, metadata !DIExpression()) #11, !dbg !1052
  br i1 %297, label %317, label %319, !dbg !1053

; <label>:317:                                    ; preds = %311
  %318 = getelementptr inbounds i8, i8* %316, i64 -1, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %318, metadata !770, metadata !DIExpression()) #11, !dbg !1052
  store i8 45, i8* %318, align 1, !dbg !1055, !tbaa !774
  br label %319, !dbg !1056

; <label>:319:                                    ; preds = %311, %317
  %320 = phi i8* [ %318, %317 ], [ %316, %311 ], !dbg !1057
  call void @llvm.dbg.value(metadata i8* %320, metadata !770, metadata !DIExpression()) #11, !dbg !1052
  %321 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %320) #11, !dbg !1033
  %322 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1058
  %323 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1061
  %324 = load i8, i8* %13, align 1, !dbg !1063, !tbaa !774
  %325 = icmp eq i8 %324, 45, !dbg !1064
  %326 = zext i1 %325 to i64, !dbg !1065
  %327 = getelementptr inbounds i8, i8* %13, i64 %326, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %327, metadata !768, metadata !DIExpression()) #11, !dbg !1066
  %328 = call i64 @strlen(i8* nonnull %327) #14, !dbg !1067
  %329 = getelementptr inbounds i8, i8* %327, i64 %328, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %329, metadata !769, metadata !DIExpression()) #11, !dbg !1069
  %330 = getelementptr inbounds i8, i8* %327, i64 -1, !dbg !1070
  store i8 48, i8* %330, align 1, !dbg !1071, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %329, metadata !769, metadata !DIExpression()) #11, !dbg !1069
  %331 = getelementptr inbounds i8, i8* %329, i64 -1, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %331, metadata !769, metadata !DIExpression()) #11, !dbg !1069
  %332 = load i8, i8* %331, align 1, !dbg !1073, !tbaa !774
  %333 = icmp eq i8 %332, 57, !dbg !1074
  br i1 %333, label %334, label %339, !dbg !1075

; <label>:334:                                    ; preds = %319, %334
  %335 = phi i8* [ %336, %334 ], [ %331, %319 ]
  store i8 48, i8* %335, align 1, !dbg !1076, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %335, metadata !769, metadata !DIExpression()) #11, !dbg !1069
  %336 = getelementptr inbounds i8, i8* %335, i64 -1, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %336, metadata !769, metadata !DIExpression()) #11, !dbg !1069
  %337 = load i8, i8* %336, align 1, !dbg !1073, !tbaa !774
  %338 = icmp eq i8 %337, 57, !dbg !1074
  br i1 %338, label %334, label %339, !dbg !1075, !llvm.loop !788

; <label>:339:                                    ; preds = %334, %319
  %340 = phi i8* [ %331, %319 ], [ %336, %334 ], !dbg !1072
  %341 = phi i8 [ %332, %319 ], [ %337, %334 ], !dbg !1073
  %342 = add i8 %341, 1, !dbg !1077
  store i8 %342, i8* %340, align 1, !dbg !1077, !tbaa !774
  %343 = icmp ult i8* %327, %340, !dbg !1078
  %344 = select i1 %343, i8* %327, i8* %340, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %344, metadata !770, metadata !DIExpression()) #11, !dbg !1079
  br i1 %325, label %345, label %347, !dbg !1080

; <label>:345:                                    ; preds = %339
  %346 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %346, metadata !770, metadata !DIExpression()) #11, !dbg !1079
  store i8 45, i8* %346, align 1, !dbg !1082, !tbaa !774
  br label %347, !dbg !1083

; <label>:347:                                    ; preds = %339, %345
  %348 = phi i8* [ %346, %345 ], [ %344, %339 ], !dbg !1084
  call void @llvm.dbg.value(metadata i8* %348, metadata !770, metadata !DIExpression()) #11, !dbg !1079
  %349 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %348) #11, !dbg !1058
  %350 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !1085
  %351 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1086
  %352 = load i8, i8* %13, align 1, !dbg !1088, !tbaa !774
  %353 = icmp eq i8 %352, 45, !dbg !1089
  %354 = zext i1 %353 to i64, !dbg !1090
  %355 = getelementptr inbounds i8, i8* %13, i64 %354, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %355, metadata !768, metadata !DIExpression()) #11, !dbg !1091
  %356 = call i64 @strlen(i8* nonnull %355) #14, !dbg !1092
  %357 = getelementptr inbounds i8, i8* %355, i64 %356, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %357, metadata !769, metadata !DIExpression()) #11, !dbg !1094
  %358 = getelementptr inbounds i8, i8* %355, i64 -1, !dbg !1095
  store i8 48, i8* %358, align 1, !dbg !1096, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %357, metadata !769, metadata !DIExpression()) #11, !dbg !1094
  %359 = getelementptr inbounds i8, i8* %357, i64 -1, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %359, metadata !769, metadata !DIExpression()) #11, !dbg !1094
  %360 = load i8, i8* %359, align 1, !dbg !1098, !tbaa !774
  %361 = icmp eq i8 %360, 57, !dbg !1099
  br i1 %361, label %362, label %367, !dbg !1100

; <label>:362:                                    ; preds = %347, %362
  %363 = phi i8* [ %364, %362 ], [ %359, %347 ]
  store i8 48, i8* %363, align 1, !dbg !1101, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %363, metadata !769, metadata !DIExpression()) #11, !dbg !1094
  %364 = getelementptr inbounds i8, i8* %363, i64 -1, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %364, metadata !769, metadata !DIExpression()) #11, !dbg !1094
  %365 = load i8, i8* %364, align 1, !dbg !1098, !tbaa !774
  %366 = icmp eq i8 %365, 57, !dbg !1099
  br i1 %366, label %362, label %367, !dbg !1100, !llvm.loop !788

; <label>:367:                                    ; preds = %362, %347
  %368 = phi i8* [ %359, %347 ], [ %364, %362 ], !dbg !1097
  %369 = phi i8 [ %360, %347 ], [ %365, %362 ], !dbg !1098
  %370 = add i8 %369, 1, !dbg !1102
  store i8 %370, i8* %368, align 1, !dbg !1102, !tbaa !774
  %371 = icmp ult i8* %355, %368, !dbg !1103
  %372 = select i1 %371, i8* %355, i8* %368, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %372, metadata !770, metadata !DIExpression()) #11, !dbg !1104
  br i1 %353, label %373, label %375, !dbg !1105

; <label>:373:                                    ; preds = %367
  %374 = getelementptr inbounds i8, i8* %372, i64 -1, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %374, metadata !770, metadata !DIExpression()) #11, !dbg !1104
  store i8 45, i8* %374, align 1, !dbg !1107, !tbaa !774
  br label %375, !dbg !1108

; <label>:375:                                    ; preds = %367, %373
  %376 = phi i8* [ %374, %373 ], [ %372, %367 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8* %376, metadata !770, metadata !DIExpression()) #11, !dbg !1104
  %377 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %376) #11, !dbg !1085
  %378 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !1110
  %379 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1111
  %380 = load i8, i8* %13, align 1, !dbg !1113, !tbaa !774
  %381 = icmp eq i8 %380, 45, !dbg !1114
  %382 = zext i1 %381 to i64, !dbg !1115
  %383 = getelementptr inbounds i8, i8* %13, i64 %382, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %383, metadata !768, metadata !DIExpression()) #11, !dbg !1116
  %384 = call i64 @strlen(i8* nonnull %383) #14, !dbg !1117
  %385 = getelementptr inbounds i8, i8* %383, i64 %384, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %385, metadata !769, metadata !DIExpression()) #11, !dbg !1119
  %386 = getelementptr inbounds i8, i8* %383, i64 -1, !dbg !1120
  store i8 48, i8* %386, align 1, !dbg !1121, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %385, metadata !769, metadata !DIExpression()) #11, !dbg !1119
  %387 = getelementptr inbounds i8, i8* %385, i64 -1, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %387, metadata !769, metadata !DIExpression()) #11, !dbg !1119
  %388 = load i8, i8* %387, align 1, !dbg !1123, !tbaa !774
  %389 = icmp eq i8 %388, 57, !dbg !1124
  br i1 %389, label %390, label %395, !dbg !1125

; <label>:390:                                    ; preds = %375, %390
  %391 = phi i8* [ %392, %390 ], [ %387, %375 ]
  store i8 48, i8* %391, align 1, !dbg !1126, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %391, metadata !769, metadata !DIExpression()) #11, !dbg !1119
  %392 = getelementptr inbounds i8, i8* %391, i64 -1, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %392, metadata !769, metadata !DIExpression()) #11, !dbg !1119
  %393 = load i8, i8* %392, align 1, !dbg !1123, !tbaa !774
  %394 = icmp eq i8 %393, 57, !dbg !1124
  br i1 %394, label %390, label %395, !dbg !1125, !llvm.loop !788

; <label>:395:                                    ; preds = %390, %375
  %396 = phi i8* [ %387, %375 ], [ %392, %390 ], !dbg !1122
  %397 = phi i8 [ %388, %375 ], [ %393, %390 ], !dbg !1123
  %398 = add i8 %397, 1, !dbg !1127
  store i8 %398, i8* %396, align 1, !dbg !1127, !tbaa !774
  %399 = icmp ult i8* %383, %396, !dbg !1128
  %400 = select i1 %399, i8* %383, i8* %396, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %400, metadata !770, metadata !DIExpression()) #11, !dbg !1129
  br i1 %381, label %401, label %403, !dbg !1130

; <label>:401:                                    ; preds = %395
  %402 = getelementptr inbounds i8, i8* %400, i64 -1, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %402, metadata !770, metadata !DIExpression()) #11, !dbg !1129
  store i8 45, i8* %402, align 1, !dbg !1132, !tbaa !774
  br label %403, !dbg !1133

; <label>:403:                                    ; preds = %395, %401
  %404 = phi i8* [ %402, %401 ], [ %400, %395 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8* %404, metadata !770, metadata !DIExpression()) #11, !dbg !1129
  %405 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* %404) #11, !dbg !1110
  %406 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1135
  %407 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1136
  %408 = load i8, i8* %13, align 1, !dbg !1138, !tbaa !774
  %409 = icmp eq i8 %408, 45, !dbg !1139
  %410 = zext i1 %409 to i64, !dbg !1140
  %411 = getelementptr inbounds i8, i8* %13, i64 %410, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %411, metadata !768, metadata !DIExpression()) #11, !dbg !1141
  %412 = call i64 @strlen(i8* nonnull %411) #14, !dbg !1142
  %413 = getelementptr inbounds i8, i8* %411, i64 %412, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %413, metadata !769, metadata !DIExpression()) #11, !dbg !1144
  %414 = getelementptr inbounds i8, i8* %411, i64 -1, !dbg !1145
  store i8 48, i8* %414, align 1, !dbg !1146, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %413, metadata !769, metadata !DIExpression()) #11, !dbg !1144
  %415 = getelementptr inbounds i8, i8* %413, i64 -1, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %415, metadata !769, metadata !DIExpression()) #11, !dbg !1144
  %416 = load i8, i8* %415, align 1, !dbg !1148, !tbaa !774
  %417 = icmp eq i8 %416, 57, !dbg !1149
  br i1 %417, label %418, label %423, !dbg !1150

; <label>:418:                                    ; preds = %403, %418
  %419 = phi i8* [ %420, %418 ], [ %415, %403 ]
  store i8 48, i8* %419, align 1, !dbg !1151, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %419, metadata !769, metadata !DIExpression()) #11, !dbg !1144
  %420 = getelementptr inbounds i8, i8* %419, i64 -1, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %420, metadata !769, metadata !DIExpression()) #11, !dbg !1144
  %421 = load i8, i8* %420, align 1, !dbg !1148, !tbaa !774
  %422 = icmp eq i8 %421, 57, !dbg !1149
  br i1 %422, label %418, label %423, !dbg !1150, !llvm.loop !788

; <label>:423:                                    ; preds = %418, %403
  %424 = phi i8* [ %415, %403 ], [ %420, %418 ], !dbg !1147
  %425 = phi i8 [ %416, %403 ], [ %421, %418 ], !dbg !1148
  %426 = add i8 %425, 1, !dbg !1152
  store i8 %426, i8* %424, align 1, !dbg !1152, !tbaa !774
  %427 = icmp ult i8* %411, %424, !dbg !1153
  %428 = select i1 %427, i8* %411, i8* %424, !dbg !1153
  call void @llvm.dbg.value(metadata i8* %428, metadata !770, metadata !DIExpression()) #11, !dbg !1154
  br i1 %409, label %429, label %431, !dbg !1155

; <label>:429:                                    ; preds = %423
  %430 = getelementptr inbounds i8, i8* %428, i64 -1, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %430, metadata !770, metadata !DIExpression()) #11, !dbg !1154
  store i8 45, i8* %430, align 1, !dbg !1157, !tbaa !774
  br label %431, !dbg !1158

; <label>:431:                                    ; preds = %423, %429
  %432 = phi i8* [ %430, %429 ], [ %428, %423 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8* %432, metadata !770, metadata !DIExpression()) #11, !dbg !1154
  %433 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %432) #11, !dbg !1135
  %434 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1160
  %435 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1163
  %436 = load i8, i8* %13, align 1, !dbg !1165, !tbaa !774
  %437 = icmp eq i8 %436, 45, !dbg !1166
  %438 = zext i1 %437 to i64, !dbg !1167
  %439 = getelementptr inbounds i8, i8* %13, i64 %438, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %439, metadata !768, metadata !DIExpression()) #11, !dbg !1168
  %440 = call i64 @strlen(i8* nonnull %439) #14, !dbg !1169
  %441 = getelementptr inbounds i8, i8* %439, i64 %440, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %441, metadata !769, metadata !DIExpression()) #11, !dbg !1171
  %442 = getelementptr inbounds i8, i8* %439, i64 -1, !dbg !1172
  store i8 48, i8* %442, align 1, !dbg !1173, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %441, metadata !769, metadata !DIExpression()) #11, !dbg !1171
  %443 = getelementptr inbounds i8, i8* %441, i64 -1, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %443, metadata !769, metadata !DIExpression()) #11, !dbg !1171
  %444 = load i8, i8* %443, align 1, !dbg !1175, !tbaa !774
  %445 = icmp eq i8 %444, 57, !dbg !1176
  br i1 %445, label %446, label %451, !dbg !1177

; <label>:446:                                    ; preds = %431, %446
  %447 = phi i8* [ %448, %446 ], [ %443, %431 ]
  store i8 48, i8* %447, align 1, !dbg !1178, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %447, metadata !769, metadata !DIExpression()) #11, !dbg !1171
  %448 = getelementptr inbounds i8, i8* %447, i64 -1, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %448, metadata !769, metadata !DIExpression()) #11, !dbg !1171
  %449 = load i8, i8* %448, align 1, !dbg !1175, !tbaa !774
  %450 = icmp eq i8 %449, 57, !dbg !1176
  br i1 %450, label %446, label %451, !dbg !1177, !llvm.loop !788

; <label>:451:                                    ; preds = %446, %431
  %452 = phi i8* [ %443, %431 ], [ %448, %446 ], !dbg !1174
  %453 = phi i8 [ %444, %431 ], [ %449, %446 ], !dbg !1175
  %454 = add i8 %453, 1, !dbg !1179
  store i8 %454, i8* %452, align 1, !dbg !1179, !tbaa !774
  %455 = icmp ult i8* %439, %452, !dbg !1180
  %456 = select i1 %455, i8* %439, i8* %452, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %456, metadata !770, metadata !DIExpression()) #11, !dbg !1181
  br i1 %437, label %457, label %459, !dbg !1182

; <label>:457:                                    ; preds = %451
  %458 = getelementptr inbounds i8, i8* %456, i64 -1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %458, metadata !770, metadata !DIExpression()) #11, !dbg !1181
  store i8 45, i8* %458, align 1, !dbg !1184, !tbaa !774
  br label %459, !dbg !1185

; <label>:459:                                    ; preds = %451, %457
  %460 = phi i8* [ %458, %457 ], [ %456, %451 ], !dbg !1186
  call void @llvm.dbg.value(metadata i8* %460, metadata !770, metadata !DIExpression()) #11, !dbg !1181
  %461 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %460) #11, !dbg !1160
  %462 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1187
  %463 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1188
  %464 = load i8, i8* %13, align 1, !dbg !1190, !tbaa !774
  %465 = icmp eq i8 %464, 45, !dbg !1191
  %466 = zext i1 %465 to i64, !dbg !1192
  %467 = getelementptr inbounds i8, i8* %13, i64 %466, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %467, metadata !768, metadata !DIExpression()) #11, !dbg !1193
  %468 = call i64 @strlen(i8* nonnull %467) #14, !dbg !1194
  %469 = getelementptr inbounds i8, i8* %467, i64 %468, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %469, metadata !769, metadata !DIExpression()) #11, !dbg !1196
  %470 = getelementptr inbounds i8, i8* %467, i64 -1, !dbg !1197
  store i8 48, i8* %470, align 1, !dbg !1198, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %469, metadata !769, metadata !DIExpression()) #11, !dbg !1196
  %471 = getelementptr inbounds i8, i8* %469, i64 -1, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %471, metadata !769, metadata !DIExpression()) #11, !dbg !1196
  %472 = load i8, i8* %471, align 1, !dbg !1200, !tbaa !774
  %473 = icmp eq i8 %472, 57, !dbg !1201
  br i1 %473, label %474, label %479, !dbg !1202

; <label>:474:                                    ; preds = %459, %474
  %475 = phi i8* [ %476, %474 ], [ %471, %459 ]
  store i8 48, i8* %475, align 1, !dbg !1203, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %475, metadata !769, metadata !DIExpression()) #11, !dbg !1196
  %476 = getelementptr inbounds i8, i8* %475, i64 -1, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %476, metadata !769, metadata !DIExpression()) #11, !dbg !1196
  %477 = load i8, i8* %476, align 1, !dbg !1200, !tbaa !774
  %478 = icmp eq i8 %477, 57, !dbg !1201
  br i1 %478, label %474, label %479, !dbg !1202, !llvm.loop !788

; <label>:479:                                    ; preds = %474, %459
  %480 = phi i8* [ %471, %459 ], [ %476, %474 ], !dbg !1199
  %481 = phi i8 [ %472, %459 ], [ %477, %474 ], !dbg !1200
  %482 = add i8 %481, 1, !dbg !1204
  store i8 %482, i8* %480, align 1, !dbg !1204, !tbaa !774
  %483 = icmp ult i8* %467, %480, !dbg !1205
  %484 = select i1 %483, i8* %467, i8* %480, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %484, metadata !770, metadata !DIExpression()) #11, !dbg !1206
  br i1 %465, label %485, label %487, !dbg !1207

; <label>:485:                                    ; preds = %479
  %486 = getelementptr inbounds i8, i8* %484, i64 -1, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %486, metadata !770, metadata !DIExpression()) #11, !dbg !1206
  store i8 45, i8* %486, align 1, !dbg !1209, !tbaa !774
  br label %487, !dbg !1210

; <label>:487:                                    ; preds = %479, %485
  %488 = phi i8* [ %486, %485 ], [ %484, %479 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8* %488, metadata !770, metadata !DIExpression()) #11, !dbg !1206
  %489 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %488) #11, !dbg !1187
  %490 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1212
  %491 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1215
  %492 = load i8, i8* %13, align 1, !dbg !1217, !tbaa !774
  %493 = icmp eq i8 %492, 45, !dbg !1218
  %494 = zext i1 %493 to i64, !dbg !1219
  %495 = getelementptr inbounds i8, i8* %13, i64 %494, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %495, metadata !768, metadata !DIExpression()) #11, !dbg !1220
  %496 = call i64 @strlen(i8* nonnull %495) #14, !dbg !1221
  %497 = getelementptr inbounds i8, i8* %495, i64 %496, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %497, metadata !769, metadata !DIExpression()) #11, !dbg !1223
  %498 = getelementptr inbounds i8, i8* %495, i64 -1, !dbg !1224
  store i8 48, i8* %498, align 1, !dbg !1225, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %497, metadata !769, metadata !DIExpression()) #11, !dbg !1223
  %499 = getelementptr inbounds i8, i8* %497, i64 -1, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %499, metadata !769, metadata !DIExpression()) #11, !dbg !1223
  %500 = load i8, i8* %499, align 1, !dbg !1227, !tbaa !774
  %501 = icmp eq i8 %500, 57, !dbg !1228
  br i1 %501, label %502, label %507, !dbg !1229

; <label>:502:                                    ; preds = %487, %502
  %503 = phi i8* [ %504, %502 ], [ %499, %487 ]
  store i8 48, i8* %503, align 1, !dbg !1230, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %503, metadata !769, metadata !DIExpression()) #11, !dbg !1223
  %504 = getelementptr inbounds i8, i8* %503, i64 -1, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %504, metadata !769, metadata !DIExpression()) #11, !dbg !1223
  %505 = load i8, i8* %504, align 1, !dbg !1227, !tbaa !774
  %506 = icmp eq i8 %505, 57, !dbg !1228
  br i1 %506, label %502, label %507, !dbg !1229, !llvm.loop !788

; <label>:507:                                    ; preds = %502, %487
  %508 = phi i8* [ %499, %487 ], [ %504, %502 ], !dbg !1226
  %509 = phi i8 [ %500, %487 ], [ %505, %502 ], !dbg !1227
  %510 = add i8 %509, 1, !dbg !1231
  store i8 %510, i8* %508, align 1, !dbg !1231, !tbaa !774
  %511 = icmp ult i8* %495, %508, !dbg !1232
  %512 = select i1 %511, i8* %495, i8* %508, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %512, metadata !770, metadata !DIExpression()) #11, !dbg !1233
  br i1 %493, label %513, label %515, !dbg !1234

; <label>:513:                                    ; preds = %507
  %514 = getelementptr inbounds i8, i8* %512, i64 -1, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %514, metadata !770, metadata !DIExpression()) #11, !dbg !1233
  store i8 45, i8* %514, align 1, !dbg !1236, !tbaa !774
  br label %515, !dbg !1237

; <label>:515:                                    ; preds = %507, %513
  %516 = phi i8* [ %514, %513 ], [ %512, %507 ], !dbg !1238
  call void @llvm.dbg.value(metadata i8* %516, metadata !770, metadata !DIExpression()) #11, !dbg !1233
  %517 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %516) #11, !dbg !1212
  %518 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !1239
  %519 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1240
  %520 = load i8, i8* %13, align 1, !dbg !1242, !tbaa !774
  %521 = icmp eq i8 %520, 45, !dbg !1243
  %522 = zext i1 %521 to i64, !dbg !1244
  %523 = getelementptr inbounds i8, i8* %13, i64 %522, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %523, metadata !768, metadata !DIExpression()) #11, !dbg !1245
  %524 = call i64 @strlen(i8* nonnull %523) #14, !dbg !1246
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %525, metadata !769, metadata !DIExpression()) #11, !dbg !1248
  %526 = getelementptr inbounds i8, i8* %523, i64 -1, !dbg !1249
  store i8 48, i8* %526, align 1, !dbg !1250, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %525, metadata !769, metadata !DIExpression()) #11, !dbg !1248
  %527 = getelementptr inbounds i8, i8* %525, i64 -1, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %527, metadata !769, metadata !DIExpression()) #11, !dbg !1248
  %528 = load i8, i8* %527, align 1, !dbg !1252, !tbaa !774
  %529 = icmp eq i8 %528, 57, !dbg !1253
  br i1 %529, label %530, label %535, !dbg !1254

; <label>:530:                                    ; preds = %515, %530
  %531 = phi i8* [ %532, %530 ], [ %527, %515 ]
  store i8 48, i8* %531, align 1, !dbg !1255, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %531, metadata !769, metadata !DIExpression()) #11, !dbg !1248
  %532 = getelementptr inbounds i8, i8* %531, i64 -1, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %532, metadata !769, metadata !DIExpression()) #11, !dbg !1248
  %533 = load i8, i8* %532, align 1, !dbg !1252, !tbaa !774
  %534 = icmp eq i8 %533, 57, !dbg !1253
  br i1 %534, label %530, label %535, !dbg !1254, !llvm.loop !788

; <label>:535:                                    ; preds = %530, %515
  %536 = phi i8* [ %527, %515 ], [ %532, %530 ], !dbg !1251
  %537 = phi i8 [ %528, %515 ], [ %533, %530 ], !dbg !1252
  %538 = add i8 %537, 1, !dbg !1256
  store i8 %538, i8* %536, align 1, !dbg !1256, !tbaa !774
  %539 = icmp ult i8* %523, %536, !dbg !1257
  %540 = select i1 %539, i8* %523, i8* %536, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %540, metadata !770, metadata !DIExpression()) #11, !dbg !1258
  br i1 %521, label %541, label %543, !dbg !1259

; <label>:541:                                    ; preds = %535
  %542 = getelementptr inbounds i8, i8* %540, i64 -1, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %542, metadata !770, metadata !DIExpression()) #11, !dbg !1258
  store i8 45, i8* %542, align 1, !dbg !1261, !tbaa !774
  br label %543, !dbg !1262

; <label>:543:                                    ; preds = %535, %541
  %544 = phi i8* [ %542, %541 ], [ %540, %535 ], !dbg !1263
  call void @llvm.dbg.value(metadata i8* %544, metadata !770, metadata !DIExpression()) #11, !dbg !1258
  %545 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* %544) #11, !dbg !1239
  %546 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !1264
  %547 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1264
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1265
  %548 = load i8, i8* %13, align 1, !dbg !1267, !tbaa !774
  %549 = icmp eq i8 %548, 45, !dbg !1268
  %550 = zext i1 %549 to i64, !dbg !1269
  %551 = getelementptr inbounds i8, i8* %13, i64 %550, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %551, metadata !768, metadata !DIExpression()) #11, !dbg !1270
  %552 = call i64 @strlen(i8* nonnull %551) #14, !dbg !1271
  %553 = getelementptr inbounds i8, i8* %551, i64 %552, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %553, metadata !769, metadata !DIExpression()) #11, !dbg !1273
  %554 = getelementptr inbounds i8, i8* %551, i64 -1, !dbg !1274
  store i8 48, i8* %554, align 1, !dbg !1275, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %553, metadata !769, metadata !DIExpression()) #11, !dbg !1273
  %555 = getelementptr inbounds i8, i8* %553, i64 -1, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %555, metadata !769, metadata !DIExpression()) #11, !dbg !1273
  %556 = load i8, i8* %555, align 1, !dbg !1277, !tbaa !774
  %557 = icmp eq i8 %556, 57, !dbg !1278
  br i1 %557, label %558, label %563, !dbg !1279

; <label>:558:                                    ; preds = %543, %558
  %559 = phi i8* [ %560, %558 ], [ %555, %543 ]
  store i8 48, i8* %559, align 1, !dbg !1280, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %559, metadata !769, metadata !DIExpression()) #11, !dbg !1273
  %560 = getelementptr inbounds i8, i8* %559, i64 -1, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %560, metadata !769, metadata !DIExpression()) #11, !dbg !1273
  %561 = load i8, i8* %560, align 1, !dbg !1277, !tbaa !774
  %562 = icmp eq i8 %561, 57, !dbg !1278
  br i1 %562, label %558, label %563, !dbg !1279, !llvm.loop !788

; <label>:563:                                    ; preds = %558, %543
  %564 = phi i8* [ %555, %543 ], [ %560, %558 ], !dbg !1276
  %565 = phi i8 [ %556, %543 ], [ %561, %558 ], !dbg !1277
  %566 = add i8 %565, 1, !dbg !1281
  store i8 %566, i8* %564, align 1, !dbg !1281, !tbaa !774
  %567 = icmp ult i8* %551, %564, !dbg !1282
  %568 = select i1 %567, i8* %551, i8* %564, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %568, metadata !770, metadata !DIExpression()) #11, !dbg !1283
  br i1 %549, label %569, label %571, !dbg !1284

; <label>:569:                                    ; preds = %563
  %570 = getelementptr inbounds i8, i8* %568, i64 -1, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %570, metadata !770, metadata !DIExpression()) #11, !dbg !1283
  store i8 45, i8* %570, align 1, !dbg !1286, !tbaa !774
  br label %571, !dbg !1287

; <label>:571:                                    ; preds = %563, %569
  %572 = phi i8* [ %570, %569 ], [ %568, %563 ], !dbg !1288
  call void @llvm.dbg.value(metadata i8* %572, metadata !770, metadata !DIExpression()) #11, !dbg !1283
  %573 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* %572) #11, !dbg !1264
  %574 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #11, !dbg !1289
  %575 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1290
  %576 = load i8, i8* %13, align 1, !dbg !1292, !tbaa !774
  %577 = icmp eq i8 %576, 45, !dbg !1293
  %578 = zext i1 %577 to i64, !dbg !1294
  %579 = getelementptr inbounds i8, i8* %13, i64 %578, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %579, metadata !768, metadata !DIExpression()) #11, !dbg !1295
  %580 = call i64 @strlen(i8* nonnull %579) #14, !dbg !1296
  %581 = getelementptr inbounds i8, i8* %579, i64 %580, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %581, metadata !769, metadata !DIExpression()) #11, !dbg !1298
  %582 = getelementptr inbounds i8, i8* %579, i64 -1, !dbg !1299
  store i8 48, i8* %582, align 1, !dbg !1300, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %581, metadata !769, metadata !DIExpression()) #11, !dbg !1298
  %583 = getelementptr inbounds i8, i8* %581, i64 -1, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %583, metadata !769, metadata !DIExpression()) #11, !dbg !1298
  %584 = load i8, i8* %583, align 1, !dbg !1302, !tbaa !774
  %585 = icmp eq i8 %584, 57, !dbg !1303
  br i1 %585, label %586, label %591, !dbg !1304

; <label>:586:                                    ; preds = %571, %586
  %587 = phi i8* [ %588, %586 ], [ %583, %571 ]
  store i8 48, i8* %587, align 1, !dbg !1305, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %587, metadata !769, metadata !DIExpression()) #11, !dbg !1298
  %588 = getelementptr inbounds i8, i8* %587, i64 -1, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %588, metadata !769, metadata !DIExpression()) #11, !dbg !1298
  %589 = load i8, i8* %588, align 1, !dbg !1302, !tbaa !774
  %590 = icmp eq i8 %589, 57, !dbg !1303
  br i1 %590, label %586, label %591, !dbg !1304, !llvm.loop !788

; <label>:591:                                    ; preds = %586, %571
  %592 = phi i8* [ %583, %571 ], [ %588, %586 ], !dbg !1301
  %593 = phi i8 [ %584, %571 ], [ %589, %586 ], !dbg !1302
  %594 = add i8 %593, 1, !dbg !1306
  store i8 %594, i8* %592, align 1, !dbg !1306, !tbaa !774
  %595 = icmp ult i8* %579, %592, !dbg !1307
  %596 = select i1 %595, i8* %579, i8* %592, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %596, metadata !770, metadata !DIExpression()) #11, !dbg !1308
  br i1 %577, label %597, label %599, !dbg !1309

; <label>:597:                                    ; preds = %591
  %598 = getelementptr inbounds i8, i8* %596, i64 -1, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %598, metadata !770, metadata !DIExpression()) #11, !dbg !1308
  store i8 45, i8* %598, align 1, !dbg !1311, !tbaa !774
  br label %599, !dbg !1312

; <label>:599:                                    ; preds = %591, %597
  %600 = phi i8* [ %598, %597 ], [ %596, %591 ], !dbg !1313
  call void @llvm.dbg.value(metadata i8* %600, metadata !770, metadata !DIExpression()) #11, !dbg !1308
  %601 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %600) #11, !dbg !1289
  %602 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #11, !dbg !1314
  %603 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1317
  %604 = load i8, i8* %13, align 1, !dbg !1319, !tbaa !774
  %605 = icmp eq i8 %604, 45, !dbg !1320
  %606 = zext i1 %605 to i64, !dbg !1321
  %607 = getelementptr inbounds i8, i8* %13, i64 %606, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %607, metadata !768, metadata !DIExpression()) #11, !dbg !1322
  %608 = call i64 @strlen(i8* nonnull %607) #14, !dbg !1323
  %609 = getelementptr inbounds i8, i8* %607, i64 %608, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %609, metadata !769, metadata !DIExpression()) #11, !dbg !1325
  %610 = getelementptr inbounds i8, i8* %607, i64 -1, !dbg !1326
  store i8 48, i8* %610, align 1, !dbg !1327, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %609, metadata !769, metadata !DIExpression()) #11, !dbg !1325
  %611 = getelementptr inbounds i8, i8* %609, i64 -1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %611, metadata !769, metadata !DIExpression()) #11, !dbg !1325
  %612 = load i8, i8* %611, align 1, !dbg !1329, !tbaa !774
  %613 = icmp eq i8 %612, 57, !dbg !1330
  br i1 %613, label %614, label %619, !dbg !1331

; <label>:614:                                    ; preds = %599, %614
  %615 = phi i8* [ %616, %614 ], [ %611, %599 ]
  store i8 48, i8* %615, align 1, !dbg !1332, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %615, metadata !769, metadata !DIExpression()) #11, !dbg !1325
  %616 = getelementptr inbounds i8, i8* %615, i64 -1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %616, metadata !769, metadata !DIExpression()) #11, !dbg !1325
  %617 = load i8, i8* %616, align 1, !dbg !1329, !tbaa !774
  %618 = icmp eq i8 %617, 57, !dbg !1330
  br i1 %618, label %614, label %619, !dbg !1331, !llvm.loop !788

; <label>:619:                                    ; preds = %614, %599
  %620 = phi i8* [ %611, %599 ], [ %616, %614 ], !dbg !1328
  %621 = phi i8 [ %612, %599 ], [ %617, %614 ], !dbg !1329
  %622 = add i8 %621, 1, !dbg !1333
  store i8 %622, i8* %620, align 1, !dbg !1333, !tbaa !774
  %623 = icmp ult i8* %607, %620, !dbg !1334
  %624 = select i1 %623, i8* %607, i8* %620, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %624, metadata !770, metadata !DIExpression()) #11, !dbg !1335
  br i1 %605, label %625, label %627, !dbg !1336

; <label>:625:                                    ; preds = %619
  %626 = getelementptr inbounds i8, i8* %624, i64 -1, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %626, metadata !770, metadata !DIExpression()) #11, !dbg !1335
  store i8 45, i8* %626, align 1, !dbg !1338, !tbaa !774
  br label %627, !dbg !1339

; <label>:627:                                    ; preds = %619, %625
  %628 = phi i8* [ %626, %625 ], [ %624, %619 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8* %628, metadata !770, metadata !DIExpression()) #11, !dbg !1335
  %629 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %628) #11, !dbg !1314
  %630 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1341
  %631 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1342
  %632 = load i8, i8* %13, align 1, !dbg !1344, !tbaa !774
  %633 = icmp eq i8 %632, 45, !dbg !1345
  %634 = zext i1 %633 to i64, !dbg !1346
  %635 = getelementptr inbounds i8, i8* %13, i64 %634, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %635, metadata !768, metadata !DIExpression()) #11, !dbg !1347
  %636 = call i64 @strlen(i8* nonnull %635) #14, !dbg !1348
  %637 = getelementptr inbounds i8, i8* %635, i64 %636, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %637, metadata !769, metadata !DIExpression()) #11, !dbg !1350
  %638 = getelementptr inbounds i8, i8* %635, i64 -1, !dbg !1351
  store i8 48, i8* %638, align 1, !dbg !1352, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %637, metadata !769, metadata !DIExpression()) #11, !dbg !1350
  %639 = getelementptr inbounds i8, i8* %637, i64 -1, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %639, metadata !769, metadata !DIExpression()) #11, !dbg !1350
  %640 = load i8, i8* %639, align 1, !dbg !1354, !tbaa !774
  %641 = icmp eq i8 %640, 57, !dbg !1355
  br i1 %641, label %642, label %647, !dbg !1356

; <label>:642:                                    ; preds = %627, %642
  %643 = phi i8* [ %644, %642 ], [ %639, %627 ]
  store i8 48, i8* %643, align 1, !dbg !1357, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %643, metadata !769, metadata !DIExpression()) #11, !dbg !1350
  %644 = getelementptr inbounds i8, i8* %643, i64 -1, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %644, metadata !769, metadata !DIExpression()) #11, !dbg !1350
  %645 = load i8, i8* %644, align 1, !dbg !1354, !tbaa !774
  %646 = icmp eq i8 %645, 57, !dbg !1355
  br i1 %646, label %642, label %647, !dbg !1356, !llvm.loop !788

; <label>:647:                                    ; preds = %642, %627
  %648 = phi i8* [ %639, %627 ], [ %644, %642 ], !dbg !1353
  %649 = phi i8 [ %640, %627 ], [ %645, %642 ], !dbg !1354
  %650 = add i8 %649, 1, !dbg !1358
  store i8 %650, i8* %648, align 1, !dbg !1358, !tbaa !774
  %651 = icmp ult i8* %635, %648, !dbg !1359
  %652 = select i1 %651, i8* %635, i8* %648, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %652, metadata !770, metadata !DIExpression()) #11, !dbg !1360
  br i1 %633, label %653, label %655, !dbg !1361

; <label>:653:                                    ; preds = %647
  %654 = getelementptr inbounds i8, i8* %652, i64 -1, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %654, metadata !770, metadata !DIExpression()) #11, !dbg !1360
  store i8 45, i8* %654, align 1, !dbg !1363, !tbaa !774
  br label %655, !dbg !1364

; <label>:655:                                    ; preds = %647, %653
  %656 = phi i8* [ %654, %653 ], [ %652, %647 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8* %656, metadata !770, metadata !DIExpression()) #11, !dbg !1360
  %657 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* %656) #11, !dbg !1341
  %658 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1366
  %659 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1369
  %660 = load i8, i8* %13, align 1, !dbg !1371, !tbaa !774
  %661 = icmp eq i8 %660, 45, !dbg !1372
  %662 = zext i1 %661 to i64, !dbg !1373
  %663 = getelementptr inbounds i8, i8* %13, i64 %662, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %663, metadata !768, metadata !DIExpression()) #11, !dbg !1374
  %664 = call i64 @strlen(i8* nonnull %663) #14, !dbg !1375
  %665 = getelementptr inbounds i8, i8* %663, i64 %664, !dbg !1376
  call void @llvm.dbg.value(metadata i8* %665, metadata !769, metadata !DIExpression()) #11, !dbg !1377
  %666 = getelementptr inbounds i8, i8* %663, i64 -1, !dbg !1378
  store i8 48, i8* %666, align 1, !dbg !1379, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %665, metadata !769, metadata !DIExpression()) #11, !dbg !1377
  %667 = getelementptr inbounds i8, i8* %665, i64 -1, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %667, metadata !769, metadata !DIExpression()) #11, !dbg !1377
  %668 = load i8, i8* %667, align 1, !dbg !1381, !tbaa !774
  %669 = icmp eq i8 %668, 57, !dbg !1382
  br i1 %669, label %670, label %675, !dbg !1383

; <label>:670:                                    ; preds = %655, %670
  %671 = phi i8* [ %672, %670 ], [ %667, %655 ]
  store i8 48, i8* %671, align 1, !dbg !1384, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %671, metadata !769, metadata !DIExpression()) #11, !dbg !1377
  %672 = getelementptr inbounds i8, i8* %671, i64 -1, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %672, metadata !769, metadata !DIExpression()) #11, !dbg !1377
  %673 = load i8, i8* %672, align 1, !dbg !1381, !tbaa !774
  %674 = icmp eq i8 %673, 57, !dbg !1382
  br i1 %674, label %670, label %675, !dbg !1383, !llvm.loop !788

; <label>:675:                                    ; preds = %670, %655
  %676 = phi i8* [ %667, %655 ], [ %672, %670 ], !dbg !1380
  %677 = phi i8 [ %668, %655 ], [ %673, %670 ], !dbg !1381
  %678 = add i8 %677, 1, !dbg !1385
  store i8 %678, i8* %676, align 1, !dbg !1385, !tbaa !774
  %679 = icmp ult i8* %663, %676, !dbg !1386
  %680 = select i1 %679, i8* %663, i8* %676, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %680, metadata !770, metadata !DIExpression()) #11, !dbg !1387
  br i1 %661, label %681, label %683, !dbg !1388

; <label>:681:                                    ; preds = %675
  %682 = getelementptr inbounds i8, i8* %680, i64 -1, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %682, metadata !770, metadata !DIExpression()) #11, !dbg !1387
  store i8 45, i8* %682, align 1, !dbg !1390, !tbaa !774
  br label %683, !dbg !1391

; <label>:683:                                    ; preds = %675, %681
  %684 = phi i8* [ %682, %681 ], [ %680, %675 ], !dbg !1392
  call void @llvm.dbg.value(metadata i8* %684, metadata !770, metadata !DIExpression()) #11, !dbg !1387
  %685 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* %684) #11, !dbg !1366
  %686 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1393
  %687 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1394
  %688 = load i8, i8* %13, align 1, !dbg !1396, !tbaa !774
  %689 = icmp eq i8 %688, 45, !dbg !1397
  %690 = zext i1 %689 to i64, !dbg !1398
  %691 = getelementptr inbounds i8, i8* %13, i64 %690, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %691, metadata !768, metadata !DIExpression()) #11, !dbg !1399
  %692 = call i64 @strlen(i8* nonnull %691) #14, !dbg !1400
  %693 = getelementptr inbounds i8, i8* %691, i64 %692, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %693, metadata !769, metadata !DIExpression()) #11, !dbg !1402
  %694 = getelementptr inbounds i8, i8* %691, i64 -1, !dbg !1403
  store i8 48, i8* %694, align 1, !dbg !1404, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %693, metadata !769, metadata !DIExpression()) #11, !dbg !1402
  %695 = getelementptr inbounds i8, i8* %693, i64 -1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %695, metadata !769, metadata !DIExpression()) #11, !dbg !1402
  %696 = load i8, i8* %695, align 1, !dbg !1406, !tbaa !774
  %697 = icmp eq i8 %696, 57, !dbg !1407
  br i1 %697, label %698, label %703, !dbg !1408

; <label>:698:                                    ; preds = %683, %698
  %699 = phi i8* [ %700, %698 ], [ %695, %683 ]
  store i8 48, i8* %699, align 1, !dbg !1409, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %699, metadata !769, metadata !DIExpression()) #11, !dbg !1402
  %700 = getelementptr inbounds i8, i8* %699, i64 -1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %700, metadata !769, metadata !DIExpression()) #11, !dbg !1402
  %701 = load i8, i8* %700, align 1, !dbg !1406, !tbaa !774
  %702 = icmp eq i8 %701, 57, !dbg !1407
  br i1 %702, label %698, label %703, !dbg !1408, !llvm.loop !788

; <label>:703:                                    ; preds = %698, %683
  %704 = phi i8* [ %695, %683 ], [ %700, %698 ], !dbg !1405
  %705 = phi i8 [ %696, %683 ], [ %701, %698 ], !dbg !1406
  %706 = add i8 %705, 1, !dbg !1410
  store i8 %706, i8* %704, align 1, !dbg !1410, !tbaa !774
  %707 = icmp ult i8* %691, %704, !dbg !1411
  %708 = select i1 %707, i8* %691, i8* %704, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %708, metadata !770, metadata !DIExpression()) #11, !dbg !1412
  br i1 %689, label %709, label %711, !dbg !1413

; <label>:709:                                    ; preds = %703
  %710 = getelementptr inbounds i8, i8* %708, i64 -1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %710, metadata !770, metadata !DIExpression()) #11, !dbg !1412
  store i8 45, i8* %710, align 1, !dbg !1415, !tbaa !774
  br label %711, !dbg !1416

; <label>:711:                                    ; preds = %703, %709
  %712 = phi i8* [ %710, %709 ], [ %708, %703 ], !dbg !1417
  call void @llvm.dbg.value(metadata i8* %712, metadata !770, metadata !DIExpression()) #11, !dbg !1412
  %713 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %712) #11, !dbg !1393
  %714 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1418
  %715 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1421
  %716 = load i8, i8* %13, align 1, !dbg !1423, !tbaa !774
  %717 = icmp eq i8 %716, 45, !dbg !1424
  %718 = zext i1 %717 to i64, !dbg !1425
  %719 = getelementptr inbounds i8, i8* %13, i64 %718, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %719, metadata !768, metadata !DIExpression()) #11, !dbg !1426
  %720 = call i64 @strlen(i8* nonnull %719) #14, !dbg !1427
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %721, metadata !769, metadata !DIExpression()) #11, !dbg !1429
  %722 = getelementptr inbounds i8, i8* %719, i64 -1, !dbg !1430
  store i8 48, i8* %722, align 1, !dbg !1431, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %721, metadata !769, metadata !DIExpression()) #11, !dbg !1429
  %723 = getelementptr inbounds i8, i8* %721, i64 -1, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %723, metadata !769, metadata !DIExpression()) #11, !dbg !1429
  %724 = load i8, i8* %723, align 1, !dbg !1433, !tbaa !774
  %725 = icmp eq i8 %724, 57, !dbg !1434
  br i1 %725, label %726, label %731, !dbg !1435

; <label>:726:                                    ; preds = %711, %726
  %727 = phi i8* [ %728, %726 ], [ %723, %711 ]
  store i8 48, i8* %727, align 1, !dbg !1436, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %727, metadata !769, metadata !DIExpression()) #11, !dbg !1429
  %728 = getelementptr inbounds i8, i8* %727, i64 -1, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %728, metadata !769, metadata !DIExpression()) #11, !dbg !1429
  %729 = load i8, i8* %728, align 1, !dbg !1433, !tbaa !774
  %730 = icmp eq i8 %729, 57, !dbg !1434
  br i1 %730, label %726, label %731, !dbg !1435, !llvm.loop !788

; <label>:731:                                    ; preds = %726, %711
  %732 = phi i8* [ %723, %711 ], [ %728, %726 ], !dbg !1432
  %733 = phi i8 [ %724, %711 ], [ %729, %726 ], !dbg !1433
  %734 = add i8 %733, 1, !dbg !1437
  store i8 %734, i8* %732, align 1, !dbg !1437, !tbaa !774
  %735 = icmp ult i8* %719, %732, !dbg !1438
  %736 = select i1 %735, i8* %719, i8* %732, !dbg !1438
  call void @llvm.dbg.value(metadata i8* %736, metadata !770, metadata !DIExpression()) #11, !dbg !1439
  br i1 %717, label %737, label %739, !dbg !1440

; <label>:737:                                    ; preds = %731
  %738 = getelementptr inbounds i8, i8* %736, i64 -1, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %738, metadata !770, metadata !DIExpression()) #11, !dbg !1439
  store i8 45, i8* %738, align 1, !dbg !1442, !tbaa !774
  br label %739, !dbg !1443

; <label>:739:                                    ; preds = %731, %737
  %740 = phi i8* [ %738, %737 ], [ %736, %731 ], !dbg !1444
  call void @llvm.dbg.value(metadata i8* %740, metadata !770, metadata !DIExpression()) #11, !dbg !1439
  %741 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %740) #11, !dbg !1418
  %742 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !1445
  %743 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %13) #11, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %7, metadata !762, metadata !DIExpression()) #11, !dbg !1446
  %744 = load i8, i8* %13, align 1, !dbg !1448, !tbaa !774
  %745 = icmp eq i8 %744, 45, !dbg !1449
  %746 = zext i1 %745 to i64, !dbg !1450
  %747 = getelementptr inbounds i8, i8* %13, i64 %746, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %747, metadata !768, metadata !DIExpression()) #11, !dbg !1451
  %748 = call i64 @strlen(i8* nonnull %747) #14, !dbg !1452
  %749 = getelementptr inbounds i8, i8* %747, i64 %748, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %749, metadata !769, metadata !DIExpression()) #11, !dbg !1454
  %750 = getelementptr inbounds i8, i8* %747, i64 -1, !dbg !1455
  store i8 48, i8* %750, align 1, !dbg !1456, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %749, metadata !769, metadata !DIExpression()) #11, !dbg !1454
  %751 = getelementptr inbounds i8, i8* %749, i64 -1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %751, metadata !769, metadata !DIExpression()) #11, !dbg !1454
  %752 = load i8, i8* %751, align 1, !dbg !1458, !tbaa !774
  %753 = icmp eq i8 %752, 57, !dbg !1459
  br i1 %753, label %754, label %759, !dbg !1460

; <label>:754:                                    ; preds = %739, %754
  %755 = phi i8* [ %756, %754 ], [ %751, %739 ]
  store i8 48, i8* %755, align 1, !dbg !1461, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %755, metadata !769, metadata !DIExpression()) #11, !dbg !1454
  %756 = getelementptr inbounds i8, i8* %755, i64 -1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %756, metadata !769, metadata !DIExpression()) #11, !dbg !1454
  %757 = load i8, i8* %756, align 1, !dbg !1458, !tbaa !774
  %758 = icmp eq i8 %757, 57, !dbg !1459
  br i1 %758, label %754, label %759, !dbg !1460, !llvm.loop !788

; <label>:759:                                    ; preds = %754, %739
  %760 = phi i8* [ %751, %739 ], [ %756, %754 ], !dbg !1457
  %761 = phi i8 [ %752, %739 ], [ %757, %754 ], !dbg !1458
  %762 = add i8 %761, 1, !dbg !1462
  store i8 %762, i8* %760, align 1, !dbg !1462, !tbaa !774
  %763 = icmp ult i8* %747, %760, !dbg !1463
  %764 = select i1 %763, i8* %747, i8* %760, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %764, metadata !770, metadata !DIExpression()) #11, !dbg !1464
  br i1 %745, label %765, label %767, !dbg !1465

; <label>:765:                                    ; preds = %759
  %766 = getelementptr inbounds i8, i8* %764, i64 -1, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %766, metadata !770, metadata !DIExpression()) #11, !dbg !1464
  store i8 45, i8* %766, align 1, !dbg !1467, !tbaa !774
  br label %767, !dbg !1468

; <label>:767:                                    ; preds = %759, %765
  %768 = phi i8* [ %766, %765 ], [ %764, %759 ], !dbg !1469
  call void @llvm.dbg.value(metadata i8* %768, metadata !770, metadata !DIExpression()) #11, !dbg !1464
  %769 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8* %768) #11, !dbg !1445
  %770 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !1470
  call void @llvm.dbg.value(metadata float 0x3810000000000000, metadata !728, metadata !DIExpression()) #11, !dbg !734
  %771 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %771) #11, !dbg !734
  %772 = call i32 @ftoastr(i8* nonnull %771, i64 31, i32 1, i32 0, float 0x3810000000000000) #11, !dbg !734
  %773 = call i32 @puts(i8* nonnull %771) #11, !dbg !734
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %771) #11, !dbg !734
  %774 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1470
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, metadata !728, metadata !DIExpression()) #11, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %771) #11, !dbg !732
  %775 = call i32 @ftoastr(i8* nonnull %771, i64 31, i32 1, i32 0, float 0x47EFFFFFE0000000) #11, !dbg !732
  %776 = call i32 @puts(i8* nonnull %771) #11, !dbg !732
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %771) #11, !dbg !732
  %777 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #11, !dbg !1471
  call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !714, metadata !DIExpression()) #11, !dbg !720
  %778 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %778) #11, !dbg !720
  %779 = call i32 @dtoastr(i8* nonnull %778, i64 40, i32 1, i32 0, double 0x10000000000000) #11, !dbg !720
  %780 = call i32 @puts(i8* nonnull %778) #11, !dbg !720
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %778) #11, !dbg !720
  %781 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #11, !dbg !1471
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !714, metadata !DIExpression()) #11, !dbg !718
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %778) #11, !dbg !718
  %782 = call i32 @dtoastr(i8* nonnull %778, i64 40, i32 1, i32 0, double 0x7FEFFFFFFFFFFFFF) #11, !dbg !718
  %783 = call i32 @puts(i8* nonnull %778) #11, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %778) #11, !dbg !718
  %784 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #11, !dbg !1472
  call void @llvm.dbg.value(metadata x86_fp80 0xK00018000000000000000, metadata !742, metadata !DIExpression()) #11, !dbg !746
  %785 = getelementptr inbounds [45 x i8], [45 x i8]* %5, i64 0, i64 0, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %785) #11, !dbg !746
  %786 = call i32 @ldtoastr(i8* nonnull %785, i64 45, i32 1, i32 0, x86_fp80 0xK00018000000000000000) #11, !dbg !746
  %787 = call i32 @puts(i8* nonnull %785) #11, !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %785) #11, !dbg !746
  %788 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #11, !dbg !1472
  call void @llvm.dbg.value(metadata x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF, metadata !742, metadata !DIExpression()) #11, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %785) #11, !dbg !748
  %789 = call i32 @ldtoastr(i8* nonnull %785, i64 45, i32 1, i32 0, x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF) #11, !dbg !748
  %790 = call i32 @puts(i8* nonnull %785) #11, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %785) #11, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %7) #11, !dbg !1473
  ret i32 0, !dbg !1474
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i8* %0, i8** @file_name, align 8, !dbg !1479, !tbaa !654
  ret void, !dbg !1480
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1481 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1485, metadata !DIExpression()), !dbg !1486
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1487, !tbaa !1488
  ret void, !dbg !1490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1491 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1498, !tbaa !654
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1499
  %3 = icmp eq i32 %2, 0, !dbg !1500
  br i1 %3, label %22, label %4, !dbg !1501

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1502, !tbaa !1488, !range !1503
  %6 = icmp eq i8 %5, 0, !dbg !1502
  br i1 %6, label %11, label %7, !dbg !1504

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #16, !dbg !1505
  %9 = load i32, i32* %8, align 4, !dbg !1505, !tbaa !1506
  %10 = icmp eq i32 %9, 32, !dbg !1508
  br i1 %10, label %22, label %11, !dbg !1509

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i32 5) #11, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %12, metadata !1495, metadata !DIExpression()), !dbg !1511
  %13 = load i8*, i8** @file_name, align 8, !dbg !1512, !tbaa !654
  %14 = icmp eq i8* %13, null, !dbg !1512
  %15 = tail call i32* @__errno_location() #16, !dbg !1514
  %16 = load i32, i32* %15, align 4, !dbg !1514, !tbaa !1506
  br i1 %14, label %19, label %17, !dbg !1515

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1516
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1517
  br label %20, !dbg !1517

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.91, i64 0, i64 0), i8* %12) #11, !dbg !1518
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1519, !tbaa !1506
  tail call void @_exit(i32 %21) #15, !dbg !1520
  unreachable, !dbg !1520

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1521, !tbaa !654
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1523
  %25 = icmp eq i32 %24, 0, !dbg !1524
  br i1 %25, label %28, label %26, !dbg !1525

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1526, !tbaa !1506
  tail call void @_exit(i32 %27) #15, !dbg !1527
  unreachable, !dbg !1527

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1528
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dtoastr(i8*, i64, i32, i32, double) local_unnamed_addr #7 !dbg !1529 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1533, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %1, metadata !1534, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %2, metadata !1535, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %3, metadata !1536, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata double %4, metadata !1537, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata double %4, metadata !1538, metadata !DIExpression()), !dbg !1553
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1554
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1539, metadata !DIExpression()), !dbg !1555
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1556
  %9 = fsub double -0.000000e+00, %4, !dbg !1557
  %10 = select i1 %8, double %9, double %4, !dbg !1558
  call void @llvm.dbg.value(metadata double %10, metadata !1541, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8* %7, metadata !1543, metadata !DIExpression()), !dbg !1560
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %11, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 37, i8* %7, align 1, !dbg !1562, !tbaa !774
  store i8 45, i8* %11, align 1, !dbg !1563, !tbaa !774
  %12 = and i32 %2, 1, !dbg !1564
  %13 = zext i32 %12 to i64, !dbg !1565
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %14, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 43, i8* %14, align 1, !dbg !1566, !tbaa !774
  %15 = lshr i32 %2, 1, !dbg !1567
  %16 = and i32 %15, 1, !dbg !1567
  %17 = zext i32 %16 to i64, !dbg !1568
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %18, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 32, i8* %18, align 1, !dbg !1569, !tbaa !774
  %19 = lshr i32 %2, 2, !dbg !1570
  %20 = and i32 %19, 1, !dbg !1570
  %21 = zext i32 %20 to i64, !dbg !1571
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %22, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 48, i8* %22, align 1, !dbg !1572, !tbaa !774
  %23 = lshr i32 %2, 3, !dbg !1573
  %24 = and i32 %23, 1, !dbg !1573
  %25 = zext i32 %24 to i64, !dbg !1574
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %26, metadata !1543, metadata !DIExpression()), !dbg !1560
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %27, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 42, i8* %26, align 1, !dbg !1576, !tbaa !774
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %28, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 46, i8* %27, align 1, !dbg !1578, !tbaa !774
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %29, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 42, i8* %28, align 1, !dbg !1580, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %29, metadata !1543, metadata !DIExpression()), !dbg !1560
  %30 = and i32 %2, 16, !dbg !1581
  %31 = icmp eq i32 %30, 0, !dbg !1582
  %32 = select i1 %31, i8 103, i8 71, !dbg !1582
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %33, metadata !1543, metadata !DIExpression()), !dbg !1560
  store i8 %32, i8* %29, align 1, !dbg !1584, !tbaa !774
  store i8 0, i8* %33, align 1, !dbg !1585, !tbaa !774
  %34 = fcmp olt double %10, 0x10000000000000, !dbg !1586
  %35 = select i1 %34, i32 1, i32 15, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %35, metadata !1542, metadata !DIExpression()), !dbg !1588
  %36 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1589
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %36, i8* nonnull %7, i32 %3, i32 %35, double %4) #11, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %37, metadata !1544, metadata !DIExpression()), !dbg !1590
  %38 = icmp slt i32 %37, 0, !dbg !1591
  br i1 %38, label %53, label %39, !dbg !1593

; <label>:39:                                     ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %35, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1542, metadata !DIExpression()), !dbg !1588
  %42 = sext i32 %40 to i64, !dbg !1594
  %43 = icmp ult i64 %42, %1, !dbg !1595
  br i1 %43, label %44, label %47, !dbg !1596

; <label>:44:                                     ; preds = %39
  %45 = call double @strtod(i8* nocapture %0, i8** null) #11, !dbg !1597
  %46 = fcmp oeq double %45, %4, !dbg !1598
  br i1 %46, label %53, label %47, !dbg !1599

; <label>:47:                                     ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %48, metadata !1542, metadata !DIExpression()), !dbg !1588
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %36, i8* nonnull %7, i32 %3, i32 %48, double %4) #11, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %49, metadata !1544, metadata !DIExpression()), !dbg !1590
  %50 = icmp slt i32 %49, 0, !dbg !1591
  %51 = icmp ugt i32 %41, 15, !dbg !1601
  %52 = or i1 %51, %50, !dbg !1593
  br i1 %52, label %53, label %39, !dbg !1593, !llvm.loop !1602

; <label>:53:                                     ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !1589
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1605
  ret i32 %54, !dbg !1605
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ftoastr(i8*, i64, i32, i32, float) local_unnamed_addr #7 !dbg !1606 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1611, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %1, metadata !1612, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %2, metadata !1613, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %3, metadata !1614, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata float %4, metadata !1615, metadata !DIExpression()), !dbg !1629
  %7 = fpext float %4 to double, !dbg !1630
  call void @llvm.dbg.value(metadata double %7, metadata !1616, metadata !DIExpression()), !dbg !1631
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1632
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #11, !dbg !1632
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1617, metadata !DIExpression()), !dbg !1633
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !1634
  %10 = fsub float -0.000000e+00, %4, !dbg !1635
  %11 = select i1 %9, float %10, float %4, !dbg !1636
  call void @llvm.dbg.value(metadata float %11, metadata !1618, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8* %8, metadata !1620, metadata !DIExpression()), !dbg !1638
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %12, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 37, i8* %8, align 1, !dbg !1640, !tbaa !774
  store i8 45, i8* %12, align 1, !dbg !1641, !tbaa !774
  %13 = and i32 %2, 1, !dbg !1642
  %14 = zext i32 %13 to i64, !dbg !1643
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %15, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 43, i8* %15, align 1, !dbg !1644, !tbaa !774
  %16 = lshr i32 %2, 1, !dbg !1645
  %17 = and i32 %16, 1, !dbg !1645
  %18 = zext i32 %17 to i64, !dbg !1646
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !1646
  call void @llvm.dbg.value(metadata i8* %19, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 32, i8* %19, align 1, !dbg !1647, !tbaa !774
  %20 = lshr i32 %2, 2, !dbg !1648
  %21 = and i32 %20, 1, !dbg !1648
  %22 = zext i32 %21 to i64, !dbg !1649
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %23, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 48, i8* %23, align 1, !dbg !1650, !tbaa !774
  %24 = lshr i32 %2, 3, !dbg !1651
  %25 = and i32 %24, 1, !dbg !1651
  %26 = zext i32 %25 to i64, !dbg !1652
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %27, metadata !1620, metadata !DIExpression()), !dbg !1638
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %28, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 42, i8* %27, align 1, !dbg !1654, !tbaa !774
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %29, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 46, i8* %28, align 1, !dbg !1656, !tbaa !774
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %30, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 42, i8* %29, align 1, !dbg !1658, !tbaa !774
  call void @llvm.dbg.value(metadata i8* %30, metadata !1620, metadata !DIExpression()), !dbg !1638
  %31 = and i32 %2, 16, !dbg !1659
  %32 = icmp eq i32 %31, 0, !dbg !1660
  %33 = select i1 %32, i8 103, i8 71, !dbg !1660
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %34, metadata !1620, metadata !DIExpression()), !dbg !1638
  store i8 %33, i8* %30, align 1, !dbg !1662, !tbaa !774
  store i8 0, i8* %34, align 1, !dbg !1663, !tbaa !774
  %35 = fcmp olt float %11, 0x3810000000000000, !dbg !1664
  %36 = select i1 %35, i32 1, i32 6, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %36, metadata !1619, metadata !DIExpression()), !dbg !1666
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1667
  %38 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %8, i32 %3, i32 %36, double %7) #11, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %38, metadata !1621, metadata !DIExpression()), !dbg !1668
  %39 = icmp slt i32 %38, 0, !dbg !1669
  br i1 %39, label %54, label %40, !dbg !1671

; <label>:40:                                     ; preds = %5, %48
  %41 = phi i32 [ %50, %48 ], [ %38, %5 ]
  %42 = phi i32 [ %49, %48 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !1619, metadata !DIExpression()), !dbg !1666
  %43 = sext i32 %41 to i64, !dbg !1672
  %44 = icmp ult i64 %43, %1, !dbg !1673
  br i1 %44, label %45, label %48, !dbg !1674

; <label>:45:                                     ; preds = %40
  %46 = call float @strtof(i8* nocapture %0, i8** null) #11, !dbg !1675
  %47 = fcmp oeq float %46, %4, !dbg !1676
  br i1 %47, label %54, label %48, !dbg !1677

; <label>:48:                                     ; preds = %45, %40
  %49 = add nuw nsw i32 %42, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %49, metadata !1619, metadata !DIExpression()), !dbg !1666
  %50 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %8, i32 %3, i32 %49, double %7) #11, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %50, metadata !1621, metadata !DIExpression()), !dbg !1668
  %51 = icmp slt i32 %50, 0, !dbg !1669
  %52 = icmp ugt i32 %42, 7, !dbg !1679
  %53 = or i1 %52, %51, !dbg !1671
  br i1 %53, label %54, label %40, !dbg !1671, !llvm.loop !1680

; <label>:54:                                     ; preds = %48, %45, %5
  %55 = phi i32 [ %38, %5 ], [ %41, %45 ], [ %50, %48 ], !dbg !1667
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #11, !dbg !1683
  ret i32 %55, !dbg !1683
}

; Function Attrs: nounwind
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ldtoastr(i8*, i64, i32, i32, x86_fp80) local_unnamed_addr #7 !dbg !1684 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1688, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %1, metadata !1689, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %2, metadata !1690, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %3, metadata !1691, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !1692, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !1693, metadata !DIExpression()), !dbg !1707
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1708
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1708
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1694, metadata !DIExpression()), !dbg !1709
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000, !dbg !1710
  %9 = fsub x86_fp80 0xK80000000000000000000, %4, !dbg !1711
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4, !dbg !1712
  call void @llvm.dbg.value(metadata x86_fp80 %10, metadata !1695, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %7, metadata !1697, metadata !DIExpression()), !dbg !1714
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %11, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 37, i8* %7, align 1, !dbg !1716, !tbaa !774
  store i8 45, i8* %11, align 1, !dbg !1717, !tbaa !774
  %12 = and i32 %2, 1, !dbg !1718
  %13 = zext i32 %12 to i64, !dbg !1719
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1719
  call void @llvm.dbg.value(metadata i8* %14, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 43, i8* %14, align 1, !dbg !1720, !tbaa !774
  %15 = lshr i32 %2, 1, !dbg !1721
  %16 = and i32 %15, 1, !dbg !1721
  %17 = zext i32 %16 to i64, !dbg !1722
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1722
  call void @llvm.dbg.value(metadata i8* %18, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 32, i8* %18, align 1, !dbg !1723, !tbaa !774
  %19 = lshr i32 %2, 2, !dbg !1724
  %20 = and i32 %19, 1, !dbg !1724
  %21 = zext i32 %20 to i64, !dbg !1725
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1725
  call void @llvm.dbg.value(metadata i8* %22, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 48, i8* %22, align 1, !dbg !1726, !tbaa !774
  %23 = lshr i32 %2, 3, !dbg !1727
  %24 = and i32 %23, 1, !dbg !1727
  %25 = zext i32 %24 to i64, !dbg !1728
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %26, metadata !1697, metadata !DIExpression()), !dbg !1714
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %27, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 42, i8* %26, align 1, !dbg !1730, !tbaa !774
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1731
  call void @llvm.dbg.value(metadata i8* %28, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 46, i8* %27, align 1, !dbg !1732, !tbaa !774
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1733
  call void @llvm.dbg.value(metadata i8* %29, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 42, i8* %28, align 1, !dbg !1734, !tbaa !774
  store i8 76, i8* %29, align 1, !dbg !1735, !tbaa !774
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1736
  call void @llvm.dbg.value(metadata i8* %30, metadata !1697, metadata !DIExpression()), !dbg !1714
  %31 = and i32 %2, 16, !dbg !1737
  %32 = icmp eq i32 %31, 0, !dbg !1738
  %33 = select i1 %32, i8 103, i8 71, !dbg !1738
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %34, metadata !1697, metadata !DIExpression()), !dbg !1714
  store i8 %33, i8* %30, align 1, !dbg !1740, !tbaa !774
  store i8 0, i8* %34, align 1, !dbg !1741, !tbaa !774
  %35 = fcmp olt x86_fp80 %10, 0xK00018000000000000000, !dbg !1742
  %36 = select i1 %35, i32 1, i32 18, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %36, metadata !1696, metadata !DIExpression()), !dbg !1744
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1745
  %38 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %36, x86_fp80 %4) #11, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %38, metadata !1698, metadata !DIExpression()), !dbg !1746
  %39 = icmp slt i32 %38, 0, !dbg !1747
  br i1 %39, label %54, label %40, !dbg !1749

; <label>:40:                                     ; preds = %5, %48
  %41 = phi i32 [ %50, %48 ], [ %38, %5 ]
  %42 = phi i32 [ %49, %48 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !1696, metadata !DIExpression()), !dbg !1744
  %43 = sext i32 %41 to i64, !dbg !1750
  %44 = icmp ult i64 %43, %1, !dbg !1751
  br i1 %44, label %45, label %48, !dbg !1752

; <label>:45:                                     ; preds = %40
  %46 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #11, !dbg !1753
  %47 = fcmp oeq x86_fp80 %46, %4, !dbg !1754
  br i1 %47, label %54, label %48, !dbg !1755

; <label>:48:                                     ; preds = %45, %40
  %49 = add nuw nsw i32 %42, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %49, metadata !1696, metadata !DIExpression()), !dbg !1744
  %50 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %49, x86_fp80 %4) #11, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %50, metadata !1698, metadata !DIExpression()), !dbg !1746
  %51 = icmp slt i32 %50, 0, !dbg !1747
  %52 = icmp ugt i32 %42, 19, !dbg !1757
  %53 = or i1 %52, %51, !dbg !1749
  br i1 %53, label %54, label %40, !dbg !1749, !llvm.loop !1758

; <label>:54:                                     ; preds = %48, %45, %5
  %55 = phi i32 [ %38, %5 ], [ %41, %45 ], [ %50, %48 ], !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1761
  ret i32 %55, !dbg !1761
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !1762 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1767, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8** %1, metadata !1768, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %3, metadata !1770, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* %4, metadata !1771, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1772, metadata !DIExpression()), !dbg !1798
  %8 = load i32, i32* @opterr, align 4, !dbg !1799, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %8, metadata !1774, metadata !DIExpression()), !dbg !1800
  store i32 0, i32* @opterr, align 4, !dbg !1801, !tbaa !1506
  %9 = icmp eq i32 %0, 2, !dbg !1802
  br i1 %9, label %10, label %17, !dbg !1803

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %11, metadata !1773, metadata !DIExpression()), !dbg !1805
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1806

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1807
  br label %17, !dbg !1808

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1809
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !1809
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1775, metadata !DIExpression()), !dbg !1810
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1811
  call void @llvm.va_start(i8* nonnull %14), !dbg !1811
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1812, !tbaa !654
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1813
  call void @exit(i32 0) #15, !dbg !1814
  unreachable, !dbg !1814

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1815, !tbaa !1506
  store i32 0, i32* @optind, align 4, !dbg !1816, !tbaa !1506
  ret void, !dbg !1817
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1820, metadata !DIExpression()), !dbg !1823
  %2 = icmp eq i8* %0, null, !dbg !1824
  br i1 %2, label %3, label %6, !dbg !1826

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1827, !tbaa !654
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.109, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !1829
  tail call void @abort() #15, !dbg !1830
  unreachable, !dbg !1830

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %7, metadata !1821, metadata !DIExpression()), !dbg !1832
  %8 = icmp eq i8* %7, null, !dbg !1833
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1834
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %10, metadata !1822, metadata !DIExpression()), !dbg !1836
  %11 = ptrtoint i8* %10 to i64, !dbg !1837
  %12 = ptrtoint i8* %0 to i64, !dbg !1837
  %13 = sub i64 %11, %12, !dbg !1837
  %14 = icmp sgt i64 %13, 6, !dbg !1839
  br i1 %14, label %15, label %24, !dbg !1840

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1841
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.110, i64 0, i64 0), i64 7) #14, !dbg !1842
  %18 = icmp eq i32 %17, 0, !dbg !1843
  br i1 %18, label %19, label %24, !dbg !1844

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1820, metadata !DIExpression()), !dbg !1823
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.111, i64 0, i64 0), i64 3) #14, !dbg !1845
  %21 = icmp eq i32 %20, 0, !dbg !1848
  br i1 %21, label %22, label %24, !dbg !1849

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %23, metadata !1820, metadata !DIExpression()), !dbg !1823
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1852, !tbaa !654
  br label %24, !dbg !1853

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1820, metadata !DIExpression()), !dbg !1823
  store i8* %25, i8** @program_name, align 8, !dbg !1854, !tbaa !654
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1855, !tbaa !654
  ret void, !dbg !1856
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1857 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1862, metadata !DIExpression()), !dbg !1865
  %2 = tail call i32* @__errno_location() #16, !dbg !1866
  %3 = load i32, i32* %2, align 4, !dbg !1866, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %3, metadata !1863, metadata !DIExpression()), !dbg !1867
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1868
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1868
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1868
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1869
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1864, metadata !DIExpression()), !dbg !1870
  store i32 %3, i32* %2, align 4, !dbg !1871, !tbaa !1506
  ret %struct.quoting_options* %8, !dbg !1872
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1873 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1879, metadata !DIExpression()), !dbg !1880
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1881
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1881
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1882
  %5 = load i32, i32* %4, align 8, !dbg !1882, !tbaa !1883
  ret i32 %5, !dbg !1885
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1886 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1890, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %1, metadata !1891, metadata !DIExpression()), !dbg !1893
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1894
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1894
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1895
  store i32 %1, i32* %5, align 8, !dbg !1896, !tbaa !1883
  ret void, !dbg !1897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1898 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1902, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %1, metadata !1903, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i32 %2, metadata !1904, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %1, metadata !1905, metadata !DIExpression()), !dbg !1914
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1915
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1915
  %6 = lshr i8 %1, 5, !dbg !1916
  %7 = zext i8 %6 to i64, !dbg !1916
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1917
  call void @llvm.dbg.value(metadata i32* %8, metadata !1907, metadata !DIExpression()), !dbg !1918
  %9 = and i8 %1, 31, !dbg !1919
  %10 = zext i8 %9 to i32, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %10, metadata !1909, metadata !DIExpression()), !dbg !1920
  %11 = load i32, i32* %8, align 4, !dbg !1921, !tbaa !1506
  %12 = lshr i32 %11, %10, !dbg !1922
  %13 = and i32 %12, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %13, metadata !1910, metadata !DIExpression()), !dbg !1924
  %14 = and i32 %2, 1, !dbg !1925
  %15 = xor i32 %13, %14, !dbg !1926
  %16 = shl i32 %15, %10, !dbg !1927
  %17 = xor i32 %16, %11, !dbg !1928
  store i32 %17, i32* %8, align 4, !dbg !1928, !tbaa !1506
  ret i32 %13, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1930 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %1, metadata !1935, metadata !DIExpression()), !dbg !1938
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1939
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1934, metadata !DIExpression()), !dbg !1937
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1942
  %6 = load i32, i32* %5, align 4, !dbg !1942, !tbaa !1943
  call void @llvm.dbg.value(metadata i32 %6, metadata !1936, metadata !DIExpression()), !dbg !1944
  store i32 %1, i32* %5, align 4, !dbg !1945, !tbaa !1943
  ret i32 %6, !dbg !1946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1947 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1951, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %1, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %2, metadata !1953, metadata !DIExpression()), !dbg !1956
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1957
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1959
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1951, metadata !DIExpression()), !dbg !1954
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1960
  store i32 10, i32* %6, align 8, !dbg !1961, !tbaa !1883
  %7 = icmp ne i8* %1, null, !dbg !1962
  %8 = icmp ne i8* %2, null, !dbg !1964
  %9 = and i1 %7, %8, !dbg !1965
  br i1 %9, label %11, label %10, !dbg !1965

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1966
  unreachable, !dbg !1966

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1967
  store i8* %1, i8** %12, align 8, !dbg !1968, !tbaa !1969
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1970
  store i8* %2, i8** %13, align 8, !dbg !1971, !tbaa !1972
  ret void, !dbg !1973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1978, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %1, metadata !1979, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* %2, metadata !1980, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %3, metadata !1981, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1982, metadata !DIExpression()), !dbg !1990
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1991
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1983, metadata !DIExpression()), !dbg !1992
  %8 = tail call i32* @__errno_location() #16, !dbg !1993
  %9 = load i32, i32* %8, align 4, !dbg !1993, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %9, metadata !1984, metadata !DIExpression()), !dbg !1994
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1995
  %11 = load i32, i32* %10, align 8, !dbg !1995, !tbaa !1883
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1996
  %13 = load i32, i32* %12, align 4, !dbg !1996, !tbaa !1943
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1997
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1998
  %16 = load i8*, i8** %15, align 8, !dbg !1998, !tbaa !1969
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1999
  %18 = load i8*, i8** %17, align 8, !dbg !1999, !tbaa !1972
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2000
  call void @llvm.dbg.value(metadata i64 %19, metadata !1985, metadata !DIExpression()), !dbg !2001
  store i32 %9, i32* %8, align 4, !dbg !2002, !tbaa !1506
  ret i64 %19, !dbg !2003
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2004 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %2, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %3, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %4, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %5, metadata !2015, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32* %6, metadata !2016, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %7, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %8, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 0, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* null, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 0, metadata !2023, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2087
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2088
  %14 = icmp eq i64 %13, 1, !dbg !2089
  %15 = lshr i32 %5, 1, !dbg !2090
  %16 = trunc i32 %15 to i8, !dbg !2090
  %17 = and i8 %16, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %17, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 0, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2029, metadata !DIExpression()), !dbg !2093
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2094

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2084
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2085
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2086
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2087
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2095
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2091
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2092
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2093
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %39, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %38, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %37, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %36, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %35, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %34, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %33, metadata !2023, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %32, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %31, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %30, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %29, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %28, metadata !2014, metadata !DIExpression()), !dbg !2078
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
  ], !dbg !2097

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %36, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 5, metadata !2014, metadata !DIExpression()), !dbg !2078
  br label %93, !dbg !2098

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 5, metadata !2014, metadata !DIExpression()), !dbg !2078
  %43 = and i8 %36, 1, !dbg !2099
  %44 = icmp eq i8 %43, 0, !dbg !2099
  br i1 %44, label %45, label %93, !dbg !2098

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2101
  br i1 %46, label %93, label %47, !dbg !2104

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2101, !tbaa !774
  br label %93, !dbg !2101

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.122, i64 0, i64 0), i32 %28), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %49, metadata !2017, metadata !DIExpression()), !dbg !2081
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), i32 %28), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %50, metadata !2018, metadata !DIExpression()), !dbg !2082
  br label %51, !dbg !2110

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %52, metadata !2017, metadata !DIExpression()), !dbg !2081
  %54 = and i8 %36, 1, !dbg !2111
  %55 = icmp eq i8 %54, 0, !dbg !2111
  br i1 %55, label %56, label %71, !dbg !2113

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2083
  %57 = load i8, i8* %52, align 1, !dbg !2114, !tbaa !774
  %58 = icmp eq i8 %57, 0, !dbg !2117
  br i1 %58, label %71, label %59, !dbg !2117

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %62, metadata !2020, metadata !DIExpression()), !dbg !2083
  %63 = icmp ult i64 %62, %40, !dbg !2118
  br i1 %63, label %64, label %66, !dbg !2121

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2118
  store i8 %60, i8* %65, align 1, !dbg !2118, !tbaa !774
  br label %66, !dbg !2118

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2121
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2122
  call void @llvm.dbg.value(metadata i8* %68, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %67, metadata !2020, metadata !DIExpression()), !dbg !2083
  %69 = load i8, i8* %68, align 1, !dbg !2114, !tbaa !774
  %70 = icmp eq i8 %69, 0, !dbg !2117
  br i1 %70, label %71, label %59, !dbg !2117, !llvm.loop !2123

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2083
  call void @llvm.dbg.value(metadata i64 %72, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 1, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %53, metadata !2022, metadata !DIExpression()), !dbg !2085
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %73, metadata !2023, metadata !DIExpression()), !dbg !2086
  br label %93, !dbg !2126

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2024, metadata !DIExpression()), !dbg !2087
  br label %75, !dbg !2127

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8 %76, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2090
  br label %77, !dbg !2128

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2087
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8 %79, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %78, metadata !2024, metadata !DIExpression()), !dbg !2087
  %80 = and i8 %79, 1, !dbg !2129
  %81 = icmp eq i8 %80, 0, !dbg !2129
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2131
  br label %83, !dbg !2131

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2132
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2090
  call void @llvm.dbg.value(metadata i8 %85, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %84, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  %86 = and i8 %85, 1, !dbg !2133
  %87 = icmp eq i8 %86, 0, !dbg !2133
  br i1 %87, label %88, label %93, !dbg !2135

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2136
  br i1 %89, label %93, label %90, !dbg !2139

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2136, !tbaa !774
  br label %93, !dbg !2136

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2090
  br label %93, !dbg !2140

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2141
  unreachable, !dbg !2141

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2083
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.124, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.124, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.124, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.124, i64 0, i64 0), %41 ], !dbg !2095
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2095
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2095
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %101, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %99, metadata !2023, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %97, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2143
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
  br label %121, !dbg !2144

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2145
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2083
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2084
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2091
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2092
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2093
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %125, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %122, metadata !2019, metadata !DIExpression()), !dbg !2143
  %130 = icmp eq i64 %125, -1, !dbg !2146
  br i1 %130, label %131, label %135, !dbg !2147

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2148
  %133 = load i8, i8* %132, align 1, !dbg !2148, !tbaa !774
  %134 = icmp eq i8 %133, 0, !dbg !2149
  br i1 %134, label %617, label %137, !dbg !2150

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2151
  br i1 %136, label %617, label %137, !dbg !2150

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2154
  br i1 %107, label %138, label %153, !dbg !2155

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2157
  %140 = and i1 %108, %130, !dbg !2158
  br i1 %140, label %141, label %143, !dbg !2158

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %142, metadata !2013, metadata !DIExpression()), !dbg !2077
  br label %143, !dbg !2160

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2013, metadata !DIExpression()), !dbg !2077
  %145 = icmp ugt i64 %139, %144, !dbg !2161
  br i1 %145, label %153, label %146, !dbg !2162

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2163
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2164
  %149 = icmp ne i32 %148, 0, !dbg !2165
  %150 = or i1 %149, %110, !dbg !2166
  %151 = xor i1 %149, true, !dbg !2166
  %152 = zext i1 %151 to i8, !dbg !2166
  br i1 %150, label %153, label %661, !dbg !2166

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2167
  call void @llvm.dbg.value(metadata i8 %155, metadata !2035, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %154, metadata !2013, metadata !DIExpression()), !dbg !2077
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2168
  %157 = load i8, i8* %156, align 1, !dbg !2168, !tbaa !774
  call void @llvm.dbg.value(metadata i8 %157, metadata !2030, metadata !DIExpression()), !dbg !2169
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
  ], !dbg !2170

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2171

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2172

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2153
  %161 = and i8 %126, 1, !dbg !2176
  %162 = icmp eq i8 %161, 0, !dbg !2176
  %163 = and i1 %114, %162, !dbg !2176
  br i1 %163, label %164, label %180, !dbg !2176

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2178
  br i1 %165, label %166, label %168, !dbg !2182

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2178
  store i8 39, i8* %167, align 1, !dbg !2178, !tbaa !774
  br label %168, !dbg !2178

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %169, metadata !2020, metadata !DIExpression()), !dbg !2083
  %170 = icmp ult i64 %169, %129, !dbg !2183
  br i1 %170, label %171, label %173, !dbg !2186

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2183
  store i8 36, i8* %172, align 1, !dbg !2183, !tbaa !774
  br label %173, !dbg !2183

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %174, metadata !2020, metadata !DIExpression()), !dbg !2083
  %175 = icmp ult i64 %174, %129, !dbg !2187
  br i1 %175, label %176, label %178, !dbg !2190

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2187
  store i8 39, i8* %177, align 1, !dbg !2187, !tbaa !774
  br label %178, !dbg !2187

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %179, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 1, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %180, !dbg !2191

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2142
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %182, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %181, metadata !2020, metadata !DIExpression()), !dbg !2083
  %183 = icmp ult i64 %181, %129, !dbg !2192
  br i1 %183, label %184, label %186, !dbg !2195

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2192
  store i8 92, i8* %185, align 1, !dbg !2192, !tbaa !774
  br label %186, !dbg !2192

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %187, metadata !2020, metadata !DIExpression()), !dbg !2083
  br i1 %104, label %188, label %478, !dbg !2196

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2198
  %190 = icmp ult i64 %189, %154, !dbg !2199
  br i1 %190, label %191, label %467, !dbg !2200

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2201
  %193 = load i8, i8* %192, align 1, !dbg !2201, !tbaa !774
  %194 = add i8 %193, -48, !dbg !2202
  %195 = icmp ult i8 %194, 10, !dbg !2202
  br i1 %195, label %196, label %467, !dbg !2202

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2203
  br i1 %197, label %198, label %200, !dbg !2207

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2203
  store i8 48, i8* %199, align 1, !dbg !2203, !tbaa !774
  br label %200, !dbg !2203

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %201, metadata !2020, metadata !DIExpression()), !dbg !2083
  %202 = icmp ult i64 %201, %129, !dbg !2208
  br i1 %202, label %203, label %205, !dbg !2211

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2208
  store i8 48, i8* %204, align 1, !dbg !2208, !tbaa !774
  br label %205, !dbg !2208

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %206, metadata !2020, metadata !DIExpression()), !dbg !2083
  br label %467, !dbg !2212

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2213

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2214

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2215

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2217

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2219
  %213 = icmp ult i64 %212, %154, !dbg !2220
  br i1 %213, label %214, label %467, !dbg !2221

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2222
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2223
  %217 = load i8, i8* %216, align 1, !dbg !2223, !tbaa !774
  %218 = icmp eq i8 %217, 63, !dbg !2224
  br i1 %218, label %219, label %467, !dbg !2225

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2226
  %221 = load i8, i8* %220, align 1, !dbg !2226, !tbaa !774
  %222 = sext i8 %221 to i32, !dbg !2226
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
  ], !dbg !2227

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2228

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %212, metadata !2019, metadata !DIExpression()), !dbg !2143
  %225 = icmp ult i64 %123, %129, !dbg !2230
  br i1 %225, label %226, label %228, !dbg !2233

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2230
  store i8 63, i8* %227, align 1, !dbg !2230, !tbaa !774
  br label %228, !dbg !2230

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %229, metadata !2020, metadata !DIExpression()), !dbg !2083
  %230 = icmp ult i64 %229, %129, !dbg !2234
  br i1 %230, label %231, label %233, !dbg !2237

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2234
  store i8 34, i8* %232, align 1, !dbg !2234, !tbaa !774
  br label %233, !dbg !2234

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %234, metadata !2020, metadata !DIExpression()), !dbg !2083
  %235 = icmp ult i64 %234, %129, !dbg !2238
  br i1 %235, label %236, label %238, !dbg !2241

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2238
  store i8 34, i8* %237, align 1, !dbg !2238, !tbaa !774
  br label %238, !dbg !2238

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %239, metadata !2020, metadata !DIExpression()), !dbg !2083
  %240 = icmp ult i64 %239, %129, !dbg !2242
  br i1 %240, label %241, label %243, !dbg !2245

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2242
  store i8 63, i8* %242, align 1, !dbg !2242, !tbaa !774
  br label %243, !dbg !2242

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %244, metadata !2020, metadata !DIExpression()), !dbg !2083
  br label %467, !dbg !2246

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2034, metadata !DIExpression()), !dbg !2247
  br label %255, !dbg !2248

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2034, metadata !DIExpression()), !dbg !2247
  br label %255, !dbg !2249

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2034, metadata !DIExpression()), !dbg !2247
  br label %253, !dbg !2250

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2034, metadata !DIExpression()), !dbg !2247
  br label %253, !dbg !2251

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2034, metadata !DIExpression()), !dbg !2247
  br label %255, !dbg !2252

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2034, metadata !DIExpression()), !dbg !2247
  br i1 %114, label %251, label %252, !dbg !2253

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2254

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2257

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2259
  call void @llvm.dbg.value(metadata i8 %254, metadata !2034, metadata !DIExpression()), !dbg !2247
  br i1 %113, label %255, label %661, !dbg !2260

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2259
  call void @llvm.dbg.value(metadata i8 %256, metadata !2034, metadata !DIExpression()), !dbg !2247
  br i1 %103, label %524, label %478, !dbg !2262

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2263
  br i1 %258, label %259, label %264, !dbg !2265

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2266, !tbaa !774
  %261 = icmp ne i8 %260, 0, !dbg !2267
  %262 = icmp ne i64 %122, 0, !dbg !2268
  %263 = or i1 %262, %261, !dbg !2270
  br i1 %263, label %467, label %270, !dbg !2270

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2271
  %266 = icmp ne i64 %122, 0, !dbg !2268
  %267 = or i1 %266, %265, !dbg !2265
  br i1 %267, label %467, label %270, !dbg !2265

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2268
  br i1 %269, label %270, label %467, !dbg !2272

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2154
  br label %271, !dbg !2273

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2259
  call void @llvm.dbg.value(metadata i8 %272, metadata !2037, metadata !DIExpression()), !dbg !2154
  br i1 %113, label %467, label %661, !dbg !2274

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2154
  br i1 %114, label %274, label %467, !dbg !2276

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2277

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2280
  %277 = icmp ne i64 %124, 0, !dbg !2282
  %278 = or i1 %277, %276, !dbg !2283
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2283
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %280, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %279, metadata !2021, metadata !DIExpression()), !dbg !2084
  %281 = icmp ult i64 %123, %280, !dbg !2284
  br i1 %281, label %282, label %284, !dbg !2287

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2284
  store i8 39, i8* %283, align 1, !dbg !2284, !tbaa !774
  br label %284, !dbg !2284

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %285, metadata !2020, metadata !DIExpression()), !dbg !2083
  %286 = icmp ult i64 %285, %280, !dbg !2288
  br i1 %286, label %287, label %289, !dbg !2291

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2288
  store i8 92, i8* %288, align 1, !dbg !2288, !tbaa !774
  br label %289, !dbg !2288

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %290, metadata !2020, metadata !DIExpression()), !dbg !2083
  %291 = icmp ult i64 %290, %280, !dbg !2292
  br i1 %291, label %292, label %294, !dbg !2295

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2292
  store i8 39, i8* %293, align 1, !dbg !2292, !tbaa !774
  br label %294, !dbg !2292

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %295, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %467, !dbg !2296

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2297

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2038, metadata !DIExpression()), !dbg !2298
  %298 = tail call i16** @__ctype_b_loc() #16, !dbg !2299
  %299 = load i16*, i16** %298, align 8, !dbg !2299, !tbaa !654
  %300 = zext i8 %157 to i64, !dbg !2299
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2299
  %302 = load i16, i16* %301, align 2, !dbg !2299, !tbaa !2301
  %303 = lshr i16 %302, 14, !dbg !2303
  %304 = trunc i16 %303 to i8, !dbg !2303
  %305 = and i8 %304, 1, !dbg !2303
  call void @llvm.dbg.value(metadata i8 %305, metadata !2041, metadata !DIExpression()), !dbg !2304
  br label %359, !dbg !2305

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2306
  store i64 0, i64* %10, align 8, !dbg !2307
  call void @llvm.dbg.value(metadata i64 0, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2304
  %307 = icmp eq i64 %154, -1, !dbg !2308
  br i1 %307, label %308, label %310, !dbg !2310

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %309, metadata !2013, metadata !DIExpression()), !dbg !2077
  br label %310, !dbg !2312

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2313
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  br label %312, !dbg !2314

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2315
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %314, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2317
  %315 = add i64 %313, %122, !dbg !2318
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2319
  %317 = sub i64 %311, %315, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2042, metadata !DIExpression(DW_OP_deref)), !dbg !2321
  call void @llvm.dbg.value(metadata i32* %12, metadata !2060, metadata !DIExpression(DW_OP_deref)), !dbg !2322
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %318, metadata !2063, metadata !DIExpression()), !dbg !2324
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2325

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  %320 = icmp ugt i64 %311, %315, !dbg !2326
  br i1 %320, label %321, label %344, !dbg !2328

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2038, metadata !DIExpression()), !dbg !2298
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2329
  %325 = load i8, i8* %324, align 1, !dbg !2329, !tbaa !774
  %326 = icmp eq i8 %325, 0, !dbg !2328
  br i1 %326, label %344, label %327, !dbg !2330

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %328, metadata !2038, metadata !DIExpression()), !dbg !2298
  %329 = add i64 %328, %122, !dbg !2332
  %330 = icmp ult i64 %329, %311, !dbg !2326
  br i1 %330, label %321, label %344, !dbg !2328, !llvm.loop !2333

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2334
  %333 = and i1 %116, %332, !dbg !2337
  call void @llvm.dbg.value(metadata i64 1, metadata !2064, metadata !DIExpression()), !dbg !2338
  br i1 %333, label %334, label %347, !dbg !2337

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2064, metadata !DIExpression()), !dbg !2338
  %336 = add i64 %335, %315, !dbg !2339
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2340
  %338 = load i8, i8* %337, align 1, !dbg !2340, !tbaa !774
  %339 = sext i8 %338 to i32, !dbg !2340
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2341

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %341, metadata !2064, metadata !DIExpression()), !dbg !2338
  %342 = icmp ult i64 %341, %318, !dbg !2334
  br i1 %342, label %334, label %347, !dbg !2343, !llvm.loop !2344

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %314, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %313, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %314, metadata !2041, metadata !DIExpression()), !dbg !2304
  br label %344, !dbg !2346

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %352, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2346
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2347, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %348, metadata !2060, metadata !DIExpression()), !dbg !2322
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2349
  %350 = icmp eq i32 %349, 0, !dbg !2349
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2350
  call void @llvm.dbg.value(metadata i8 %351, metadata !2041, metadata !DIExpression()), !dbg !2304
  %352 = add i64 %318, %313, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %352, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %351, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %352, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2346
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2042, metadata !DIExpression(DW_OP_deref)), !dbg !2321
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2352
  %354 = icmp eq i32 %353, 0, !dbg !2353
  br i1 %354, label %312, label %355, !dbg !2354, !llvm.loop !2355

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2357
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 2, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %94, metadata !2014, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %100, metadata !2024, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %311, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %351, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %352, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2357
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2358
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2359
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2359
  call void @llvm.dbg.value(metadata i8 %362, metadata !2041, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %361, metadata !2038, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %360, metadata !2013, metadata !DIExpression()), !dbg !2077
  %363 = and i8 %362, 1, !dbg !2360
  %364 = icmp ne i8 %363, 0, !dbg !2360
  call void @llvm.dbg.value(metadata i8 %363, metadata !2037, metadata !DIExpression()), !dbg !2154
  %365 = icmp ult i64 %361, 2, !dbg !2361
  %366 = or i1 %364, %115, !dbg !2362
  %367 = and i1 %365, %366, !dbg !2363
  br i1 %367, label %467, label %368, !dbg !2363

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %369, metadata !2071, metadata !DIExpression()), !dbg !2365
  br label %370, !dbg !2366

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2367
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2371
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2091
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2367
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2373
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2153
  call void @llvm.dbg.value(metadata i8 %376, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %375, metadata !2035, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %374, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %373, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %372, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %371, metadata !2019, metadata !DIExpression()), !dbg !2143
  br i1 %366, label %423, label %377, !dbg !2377

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2378

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2153
  %379 = and i8 %373, 1, !dbg !2381
  %380 = icmp eq i8 %379, 0, !dbg !2381
  %381 = and i1 %114, %380, !dbg !2381
  br i1 %381, label %382, label %398, !dbg !2381

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2383
  br i1 %383, label %384, label %386, !dbg !2387

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2383
  store i8 39, i8* %385, align 1, !dbg !2383, !tbaa !774
  br label %386, !dbg !2383

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %387, metadata !2020, metadata !DIExpression()), !dbg !2083
  %388 = icmp ult i64 %387, %129, !dbg !2388
  br i1 %388, label %389, label %391, !dbg !2391

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2388
  store i8 36, i8* %390, align 1, !dbg !2388, !tbaa !774
  br label %391, !dbg !2388

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %392, metadata !2020, metadata !DIExpression()), !dbg !2083
  %393 = icmp ult i64 %392, %129, !dbg !2392
  br i1 %393, label %394, label %396, !dbg !2395

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2392
  store i8 39, i8* %395, align 1, !dbg !2392, !tbaa !774
  br label %396, !dbg !2392

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %397, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 1, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %398, !dbg !2396

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2142
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %400, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %399, metadata !2020, metadata !DIExpression()), !dbg !2083
  %401 = icmp ult i64 %399, %129, !dbg !2397
  br i1 %401, label %402, label %404, !dbg !2400

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2397
  store i8 92, i8* %403, align 1, !dbg !2397, !tbaa !774
  br label %404, !dbg !2397

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %405, metadata !2020, metadata !DIExpression()), !dbg !2083
  %406 = icmp ult i64 %405, %129, !dbg !2401
  br i1 %406, label %407, label %411, !dbg !2404

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2401
  %409 = or i8 %408, 48, !dbg !2401
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2401
  store i8 %409, i8* %410, align 1, !dbg !2401, !tbaa !774
  br label %411, !dbg !2401

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %412, metadata !2020, metadata !DIExpression()), !dbg !2083
  %413 = icmp ult i64 %412, %129, !dbg !2405
  br i1 %413, label %414, label %419, !dbg !2408

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2405
  %416 = and i8 %415, 7, !dbg !2405
  %417 = or i8 %416, 48, !dbg !2405
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2405
  store i8 %417, i8* %418, align 1, !dbg !2405, !tbaa !774
  br label %419, !dbg !2405

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %420, metadata !2020, metadata !DIExpression()), !dbg !2083
  %421 = and i8 %374, 7, !dbg !2409
  %422 = or i8 %421, 48, !dbg !2410
  call void @llvm.dbg.value(metadata i8 %422, metadata !2030, metadata !DIExpression()), !dbg !2169
  br label %432, !dbg !2411

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2412
  %425 = icmp eq i8 %424, 0, !dbg !2412
  br i1 %425, label %432, label %426, !dbg !2413

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2414
  br i1 %427, label %428, label %430, !dbg !2417

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2414
  store i8 92, i8* %429, align 1, !dbg !2414, !tbaa !774
  br label %430, !dbg !2414

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %431, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2152
  br label %432, !dbg !2418

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2419
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2091
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2420
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2421
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2423
  call void @llvm.dbg.value(metadata i8 %437, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %436, metadata !2035, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %435, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %434, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %433, metadata !2020, metadata !DIExpression()), !dbg !2083
  %438 = add i64 %371, 1, !dbg !2424
  %439 = icmp ugt i64 %369, %438, !dbg !2426
  br i1 %439, label %440, label %562, !dbg !2427

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2428
  %442 = icmp ne i8 %441, 0, !dbg !2428
  %443 = and i8 %437, 1, !dbg !2428
  %444 = icmp eq i8 %443, 0, !dbg !2428
  %445 = and i1 %442, %444, !dbg !2428
  br i1 %445, label %446, label %457, !dbg !2428

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2431
  br i1 %447, label %448, label %450, !dbg !2435

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2431
  store i8 39, i8* %449, align 1, !dbg !2431, !tbaa !774
  br label %450, !dbg !2431

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %451, metadata !2020, metadata !DIExpression()), !dbg !2083
  %452 = icmp ult i64 %451, %129, !dbg !2436
  br i1 %452, label %453, label %455, !dbg !2439

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2436
  store i8 39, i8* %454, align 1, !dbg !2436, !tbaa !774
  br label %455, !dbg !2436

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %456, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %457, !dbg !2440

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2441
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %459, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %458, metadata !2020, metadata !DIExpression()), !dbg !2083
  %460 = icmp ult i64 %458, %129, !dbg !2442
  br i1 %460, label %461, label %463, !dbg !2444

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2442
  store i8 %435, i8* %462, align 1, !dbg !2442, !tbaa !774
  br label %463, !dbg !2442

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %464, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %438, metadata !2019, metadata !DIExpression()), !dbg !2143
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2445
  %466 = load i8, i8* %465, align 1, !dbg !2445, !tbaa !774
  call void @llvm.dbg.value(metadata i8 %466, metadata !2030, metadata !DIExpression()), !dbg !2169
  br label %370, !dbg !2446, !llvm.loop !2447

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2450
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2142
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2084
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2451
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2142
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2142
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2167
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2167
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2167
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %476, metadata !2037, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %475, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %155, metadata !2035, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %474, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %473, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %472, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %471, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %470, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %469, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %468, metadata !2019, metadata !DIExpression()), !dbg !2143
  br i1 %105, label %489, label %478, !dbg !2452

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
  br i1 %112, label %490, label %512, !dbg !2454

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2455

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
  %501 = lshr i8 %494, 5, !dbg !2456
  %502 = zext i8 %501 to i64, !dbg !2456
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2457
  %504 = load i32, i32* %503, align 4, !dbg !2457, !tbaa !1506
  %505 = and i8 %494, 31, !dbg !2458
  %506 = zext i8 %505 to i32, !dbg !2458
  %507 = shl i32 1, %506, !dbg !2459
  %508 = and i32 %504, %507, !dbg !2459
  %509 = icmp eq i32 %508, 0, !dbg !2459
  %510 = icmp eq i8 %155, 0, !dbg !2460
  %511 = and i1 %510, %509, !dbg !2461
  br i1 %511, label %562, label %524, !dbg !2461

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
  %523 = icmp eq i8 %155, 0, !dbg !2460
  br i1 %523, label %562, label %524, !dbg !2462

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2463
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2142
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2084
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2451
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2091
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2092
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2464
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2167
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %532, metadata !2037, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %531, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %530, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %529, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %528, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %527, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %526, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %525, metadata !2019, metadata !DIExpression()), !dbg !2143
  br i1 %110, label %534, label %661, !dbg !2467

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2153
  %535 = and i8 %529, 1, !dbg !2469
  %536 = icmp eq i8 %535, 0, !dbg !2469
  %537 = and i1 %114, %536, !dbg !2469
  br i1 %537, label %538, label %554, !dbg !2469

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2471
  br i1 %539, label %540, label %542, !dbg !2475

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2471
  store i8 39, i8* %541, align 1, !dbg !2471, !tbaa !774
  br label %542, !dbg !2471

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %543, metadata !2020, metadata !DIExpression()), !dbg !2083
  %544 = icmp ult i64 %543, %533, !dbg !2476
  br i1 %544, label %545, label %547, !dbg !2479

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2476
  store i8 36, i8* %546, align 1, !dbg !2476, !tbaa !774
  br label %547, !dbg !2476

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %548, metadata !2020, metadata !DIExpression()), !dbg !2083
  %549 = icmp ult i64 %548, %533, !dbg !2480
  br i1 %549, label %550, label %552, !dbg !2483

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2480
  store i8 39, i8* %551, align 1, !dbg !2480, !tbaa !774
  br label %552, !dbg !2480

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %553, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 1, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %554, !dbg !2484

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2441
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %556, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %555, metadata !2020, metadata !DIExpression()), !dbg !2083
  %557 = icmp ult i64 %555, %533, !dbg !2485
  br i1 %557, label %558, label %560, !dbg !2488

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2485
  store i8 92, i8* %559, align 1, !dbg !2485, !tbaa !774
  br label %560, !dbg !2485

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %561, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %572, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %571, metadata !2037, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %570, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %569, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %568, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %567, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %566, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %565, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %564, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %563, metadata !2019, metadata !DIExpression()), !dbg !2143
  br label %589, !dbg !2489

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2463
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2142
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2084
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2451
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2091
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2092
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2492
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2167
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2167
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %571, metadata !2037, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %570, metadata !2036, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %569, metadata !2030, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %568, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %567, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %566, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %565, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %564, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %563, metadata !2019, metadata !DIExpression()), !dbg !2143
  %573 = and i8 %567, 1, !dbg !2489
  %574 = icmp ne i8 %573, 0, !dbg !2489
  %575 = and i8 %570, 1, !dbg !2489
  %576 = icmp eq i8 %575, 0, !dbg !2489
  %577 = and i1 %574, %576, !dbg !2489
  br i1 %577, label %578, label %589, !dbg !2489

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2493
  br i1 %579, label %580, label %582, !dbg !2497

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2493
  store i8 39, i8* %581, align 1, !dbg !2493, !tbaa !774
  br label %582, !dbg !2493

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %583, metadata !2020, metadata !DIExpression()), !dbg !2083
  %584 = icmp ult i64 %583, %572, !dbg !2498
  br i1 %584, label %585, label %587, !dbg !2501

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2498
  store i8 39, i8* %586, align 1, !dbg !2498, !tbaa !774
  br label %587, !dbg !2498

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %588, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %589, !dbg !2502

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2441
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %598, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %597, metadata !2020, metadata !DIExpression()), !dbg !2083
  %599 = icmp ult i64 %597, %590, !dbg !2503
  br i1 %599, label %600, label %602, !dbg !2506

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2503
  store i8 %592, i8* %601, align 1, !dbg !2503, !tbaa !774
  br label %602, !dbg !2503

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %603, metadata !2020, metadata !DIExpression()), !dbg !2083
  %604 = and i8 %591, 1, !dbg !2507
  %605 = icmp eq i8 %604, 0, !dbg !2507
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2509
  call void @llvm.dbg.value(metadata i8 %606, metadata !2029, metadata !DIExpression()), !dbg !2093
  br label %607, !dbg !2510

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2463
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2142
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2084
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2451
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2091
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2142
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2093
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 %614, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %613, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %612, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %611, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %610, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %609, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %608, metadata !2019, metadata !DIExpression()), !dbg !2143
  %616 = add i64 %608, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %616, metadata !2019, metadata !DIExpression()), !dbg !2143
  br label %121, !dbg !2512, !llvm.loop !2513

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %125, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %125, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %126, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %127, metadata !2028, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %128, metadata !2029, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  %619 = icmp eq i64 %123, 0, !dbg !2515
  %620 = and i1 %114, %619, !dbg !2517
  %621 = xor i1 %620, true, !dbg !2517
  %622 = or i1 %110, %621, !dbg !2517
  br i1 %622, label %623, label %661, !dbg !2517

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2518
  %625 = xor i1 %624, true, !dbg !2518
  %626 = and i8 %127, 1, !dbg !2520
  %627 = icmp eq i8 %626, 0, !dbg !2520
  %628 = or i1 %627, %625, !dbg !2518
  br i1 %628, label %638, label %629, !dbg !2518

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2521
  %631 = icmp eq i8 %630, 0, !dbg !2521
  br i1 %631, label %634, label %632, !dbg !2524

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %618, metadata !2013, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %96, metadata !2018, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2021, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %125, metadata !2013, metadata !DIExpression()), !dbg !2077
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2525
  br label %671, !dbg !2526

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2527
  %636 = icmp ne i64 %124, 0, !dbg !2529
  %637 = and i1 %636, %635, !dbg !2530
  br i1 %637, label %27, label %638, !dbg !2530

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %129, metadata !2011, metadata !DIExpression()), !dbg !2075
  %639 = icmp ne i8* %98, null, !dbg !2531
  %640 = and i1 %639, %110, !dbg !2533
  br i1 %640, label %641, label %656, !dbg !2533

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2020, metadata !DIExpression()), !dbg !2083
  %642 = load i8, i8* %98, align 1, !dbg !2534, !tbaa !774
  %643 = icmp eq i8 %642, 0, !dbg !2537
  br i1 %643, label %656, label %644, !dbg !2537

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %647, metadata !2020, metadata !DIExpression()), !dbg !2083
  %648 = icmp ult i64 %647, %129, !dbg !2538
  br i1 %648, label %649, label %651, !dbg !2541

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2538
  store i8 %645, i8* %650, align 1, !dbg !2538, !tbaa !774
  br label %651, !dbg !2538

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2541
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %653, metadata !2022, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %652, metadata !2020, metadata !DIExpression()), !dbg !2083
  %654 = load i8, i8* %653, align 1, !dbg !2534, !tbaa !774
  %655 = icmp eq i8 %654, 0, !dbg !2537
  br i1 %655, label %656, label %644, !dbg !2537, !llvm.loop !2543

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2083
  call void @llvm.dbg.value(metadata i64 %657, metadata !2020, metadata !DIExpression()), !dbg !2083
  %658 = icmp ult i64 %657, %129, !dbg !2545
  br i1 %658, label %659, label %671, !dbg !2547

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2548
  store i8 0, i8* %660, align 1, !dbg !2549, !tbaa !774
  br label %671, !dbg !2548

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2011, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %663, metadata !2013, metadata !DIExpression()), !dbg !2077
  %665 = icmp ne i32 %662, 2, !dbg !2550
  %666 = icmp eq i8 %102, 0, !dbg !2552
  %667 = or i1 %665, %666, !dbg !2553
  call void @llvm.dbg.value(metadata i32 4, metadata !2014, metadata !DIExpression()), !dbg !2078
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %668, metadata !2014, metadata !DIExpression()), !dbg !2078
  %669 = and i32 %5, -3, !dbg !2554
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2555
  br label %671, !dbg !2556

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2557
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2567
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %3, metadata !2564, metadata !DIExpression()), !dbg !2569
  %4 = icmp eq i8* %3, %0, !dbg !2570
  br i1 %4, label %5, label %71, !dbg !2572

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %6, metadata !2565, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %6, metadata !2575, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* null, metadata !2581, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 85, metadata !2582, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 84, metadata !2583, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 70, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 45, metadata !2585, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 56, metadata !2586, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2603
  %7 = load i8, i8* %6, align 1, !dbg !2604, !tbaa !774
  %8 = and i8 %7, -33, !dbg !2604
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2604

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2606, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* null, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 84, metadata !2612, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 70, metadata !2613, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 45, metadata !2614, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 56, metadata !2615, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2616, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2617, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2632
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2633
  %11 = load i8, i8* %10, align 1, !dbg !2633, !tbaa !774
  %12 = and i8 %11, -33, !dbg !2633
  %13 = icmp eq i8 %12, 84, !dbg !2633
  br i1 %13, label %14, label %68, !dbg !2633

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2635, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* null, metadata !2640, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 70, metadata !2641, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 45, metadata !2642, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 56, metadata !2643, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2659
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2660
  %16 = load i8, i8* %15, align 1, !dbg !2660, !tbaa !774
  %17 = and i8 %16, -33, !dbg !2660
  %18 = icmp eq i8 %17, 70, !dbg !2660
  br i1 %18, label %19, label %68, !dbg !2660

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2662, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* null, metadata !2667, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 45, metadata !2668, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 56, metadata !2669, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2670, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8 0, metadata !2672, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2673, metadata !DIExpression()), !dbg !2684
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2685
  %21 = load i8, i8* %20, align 1, !dbg !2685, !tbaa !774
  %22 = icmp eq i8 %21, 45, !dbg !2685
  br i1 %22, label %23, label %68, !dbg !2687

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2688, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* null, metadata !2693, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 56, metadata !2694, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2708
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2709
  %25 = load i8, i8* %24, align 1, !dbg !2709, !tbaa !774
  %26 = icmp eq i8 %25, 56, !dbg !2709
  br i1 %26, label %27, label %68, !dbg !2711

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2712, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* null, metadata !2717, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 0, metadata !2718, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2719, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2730
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2731
  %29 = load i8, i8* %28, align 1, !dbg !2731, !tbaa !774
  %30 = icmp eq i8 %29, 0, !dbg !2731
  br i1 %30, label %31, label %68, !dbg !2733

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2734, !tbaa !774
  %33 = icmp eq i8 %32, 96, !dbg !2735
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.125, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.126, i64 0, i64 0), !dbg !2734
  br label %71, !dbg !2736

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2606, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* null, metadata !2611, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 66, metadata !2612, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 49, metadata !2613, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 56, metadata !2614, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 48, metadata !2615, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8 51, metadata !2616, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 48, metadata !2617, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2749
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2750
  %37 = load i8, i8* %36, align 1, !dbg !2750, !tbaa !774
  %38 = and i8 %37, -33, !dbg !2750
  %39 = icmp eq i8 %38, 66, !dbg !2750
  br i1 %39, label %40, label %68, !dbg !2750

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2635, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* null, metadata !2640, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 49, metadata !2641, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 56, metadata !2642, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 48, metadata !2643, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 51, metadata !2644, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 48, metadata !2645, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2760
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2761
  %42 = load i8, i8* %41, align 1, !dbg !2761, !tbaa !774
  %43 = icmp eq i8 %42, 49, !dbg !2761
  br i1 %43, label %44, label %68, !dbg !2762

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2662, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* null, metadata !2667, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 56, metadata !2668, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 48, metadata !2669, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 51, metadata !2670, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 48, metadata !2671, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 0, metadata !2672, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8 0, metadata !2673, metadata !DIExpression()), !dbg !2771
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2772
  %46 = load i8, i8* %45, align 1, !dbg !2772, !tbaa !774
  %47 = icmp eq i8 %46, 56, !dbg !2772
  br i1 %47, label %48, label %68, !dbg !2773

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2688, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8* null, metadata !2693, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 48, metadata !2694, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 51, metadata !2695, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 48, metadata !2696, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2781
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2782
  %50 = load i8, i8* %49, align 1, !dbg !2782, !tbaa !774
  %51 = icmp eq i8 %50, 48, !dbg !2782
  br i1 %51, label %52, label %68, !dbg !2783

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2712, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* null, metadata !2717, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 51, metadata !2718, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 48, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2790
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2791
  %54 = load i8, i8* %53, align 1, !dbg !2791, !tbaa !774
  %55 = icmp eq i8 %54, 51, !dbg !2791
  br i1 %55, label %56, label %68, !dbg !2792

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2793, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* null, metadata !2798, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8 48, metadata !2799, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8 0, metadata !2800, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 0, metadata !2801, metadata !DIExpression()), !dbg !2809
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2810
  %58 = load i8, i8* %57, align 1, !dbg !2810, !tbaa !774
  %59 = icmp eq i8 %58, 48, !dbg !2810
  br i1 %59, label %60, label %68, !dbg !2812

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2813, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* null, metadata !2818, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 0, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 0, metadata !2820, metadata !DIExpression()), !dbg !2827
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2828
  %62 = load i8, i8* %61, align 1, !dbg !2828, !tbaa !774
  %63 = icmp eq i8 %62, 0, !dbg !2828
  br i1 %63, label %64, label %68, !dbg !2830

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2831, !tbaa !774
  %66 = icmp eq i8 %65, 96, !dbg !2832
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.127, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.128, i64 0, i64 0), !dbg !2831
  br label %71, !dbg !2833

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2834
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.124, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), !dbg !2835
  br label %71, !dbg !2836

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2837
  ret i8* %72, !dbg !2838
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()) #11, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()) #11, !dbg !2864
  call void @llvm.dbg.value(metadata i64* null, metadata !2855, metadata !DIExpression()) #11, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2856, metadata !DIExpression()) #11, !dbg !2866
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2867
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2857, metadata !DIExpression()) #11, !dbg !2868
  %6 = tail call i32* @__errno_location() #16, !dbg !2869
  %7 = load i32, i32* %6, align 4, !dbg !2869, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %7, metadata !2858, metadata !DIExpression()) #11, !dbg !2870
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2871
  %9 = load i32, i32* %8, align 4, !dbg !2871, !tbaa !1943
  %10 = or i32 %9, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %10, metadata !2859, metadata !DIExpression()) #11, !dbg !2873
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2874
  %12 = load i32, i32* %11, align 8, !dbg !2874, !tbaa !1883
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2875
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2876
  %15 = load i8*, i8** %14, align 8, !dbg !2876, !tbaa !1969
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2877
  %17 = load i8*, i8** %16, align 8, !dbg !2877, !tbaa !1972
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2878
  %19 = add i64 %18, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %19, metadata !2860, metadata !DIExpression()) #11, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %19, metadata !2881, metadata !DIExpression()) #11, !dbg !2886
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %20, metadata !2861, metadata !DIExpression()) #11, !dbg !2889
  %21 = load i32, i32* %11, align 8, !dbg !2890, !tbaa !1883
  %22 = load i8*, i8** %14, align 8, !dbg !2891, !tbaa !1969
  %23 = load i8*, i8** %16, align 8, !dbg !2892, !tbaa !1972
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2893
  store i32 %7, i32* %6, align 4, !dbg !2894, !tbaa !1506
  ret i8* %20, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64* %2, metadata !2855, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2856, metadata !DIExpression()), !dbg !2899
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2900
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2900
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2857, metadata !DIExpression()), !dbg !2901
  %7 = tail call i32* @__errno_location() #16, !dbg !2902
  %8 = load i32, i32* %7, align 4, !dbg !2902, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %8, metadata !2858, metadata !DIExpression()), !dbg !2903
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2904
  %10 = load i32, i32* %9, align 4, !dbg !2904, !tbaa !1943
  %11 = icmp ne i64* %2, null, !dbg !2905
  %12 = xor i1 %11, true, !dbg !2905
  %13 = zext i1 %12 to i32, !dbg !2905
  %14 = or i32 %10, %13, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %14, metadata !2859, metadata !DIExpression()), !dbg !2907
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2908
  %16 = load i32, i32* %15, align 8, !dbg !2908, !tbaa !1883
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2909
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2910
  %19 = load i8*, i8** %18, align 8, !dbg !2910, !tbaa !1969
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2911
  %21 = load i8*, i8** %20, align 8, !dbg !2911, !tbaa !1972
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2912
  %23 = add i64 %22, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %23, metadata !2860, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %23, metadata !2881, metadata !DIExpression()) #11, !dbg !2915
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %24, metadata !2861, metadata !DIExpression()), !dbg !2918
  %25 = load i32, i32* %15, align 8, !dbg !2919, !tbaa !1883
  %26 = load i8*, i8** %18, align 8, !dbg !2920, !tbaa !1969
  %27 = load i8*, i8** %20, align 8, !dbg !2921, !tbaa !1972
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2922
  store i32 %8, i32* %7, align 4, !dbg !2923, !tbaa !1506
  br i1 %11, label %29, label %30, !dbg !2924

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2925, !tbaa !2927
  br label %30, !dbg !2929

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2931 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2935, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !2934, metadata !DIExpression()), !dbg !2937
  %2 = load i32, i32* @nslots, align 4, !dbg !2938, !tbaa !1506
  %3 = icmp sgt i32 %2, 1, !dbg !2941
  br i1 %3, label %4, label %12, !dbg !2942

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2934, metadata !DIExpression()), !dbg !2937
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2943
  %7 = load i8*, i8** %6, align 8, !dbg !2943, !tbaa !2944
  tail call void @free(i8* %7) #11, !dbg !2946
  %8 = add nuw nsw i64 %5, 1, !dbg !2947
  call void @llvm.dbg.value(metadata i32 undef, metadata !2934, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2937
  %9 = load i32, i32* @nslots, align 4, !dbg !2938, !tbaa !1506
  %10 = sext i32 %9 to i64, !dbg !2941
  %11 = icmp slt i64 %8, %10, !dbg !2941
  br i1 %11, label %4, label %12, !dbg !2942, !llvm.loop !2948

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2950
  %14 = load i8*, i8** %13, align 8, !dbg !2950, !tbaa !2944
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2952
  br i1 %15, label %17, label %16, !dbg !2953

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2954
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2956, !tbaa !2957
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2958, !tbaa !2944
  br label %17, !dbg !2959

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2960
  br i1 %18, label %21, label %19, !dbg !2962

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2963
  tail call void @free(i8* %20) #11, !dbg !2965
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2966, !tbaa !654
  br label %21, !dbg !2967

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2968, !tbaa !1506
  ret void, !dbg !2969
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %1, metadata !2975, metadata !DIExpression()), !dbg !2977
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2978
  ret i8* %3, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2985, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !2986, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2987, metadata !DIExpression()), !dbg !3002
  %5 = tail call i32* @__errno_location() #16, !dbg !3003
  %6 = load i32, i32* %5, align 4, !dbg !3003, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %6, metadata !2988, metadata !DIExpression()), !dbg !3004
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3005, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2989, metadata !DIExpression()), !dbg !3006
  %8 = icmp slt i32 %0, 0, !dbg !3007
  br i1 %8, label %9, label %10, !dbg !3009

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3010
  unreachable, !dbg !3010

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3011, !tbaa !1506
  %12 = icmp sgt i32 %11, %0, !dbg !3012
  br i1 %12, label %34, label %13, !dbg !3013

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3014
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2993, metadata !DIExpression()), !dbg !3015
  %15 = icmp eq i32 %0, 2147483647, !dbg !3016
  br i1 %15, label %16, label %17, !dbg !3018

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3019
  unreachable, !dbg !3019

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3020
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3020
  %20 = add nsw i32 %0, 1, !dbg !3021
  %21 = sext i32 %20 to i64, !dbg !3022
  %22 = shl nsw i64 %21, 4, !dbg !3023
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3024
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2989, metadata !DIExpression()), !dbg !3006
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3025, !tbaa !654
  br i1 %14, label %25, label %26, !dbg !3026

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3027, !tbaa.struct !3029
  br label %26, !dbg !3030

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3031, !tbaa !1506
  %28 = sext i32 %27 to i64, !dbg !3032
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3032
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3033
  %31 = sub nsw i32 %20, %27, !dbg !3034
  %32 = sext i32 %31 to i64, !dbg !3035
  %33 = shl nsw i64 %32, 4, !dbg !3036
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3033
  store i32 %20, i32* @nslots, align 4, !dbg !3037, !tbaa !1506
  br label %34, !dbg !3038

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3039
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2989, metadata !DIExpression()), !dbg !3006
  %36 = sext i32 %0 to i64, !dbg !3040
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3041
  %38 = load i64, i64* %37, align 8, !dbg !3041, !tbaa !2957
  call void @llvm.dbg.value(metadata i64 %38, metadata !2994, metadata !DIExpression()), !dbg !3042
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3043
  %40 = load i8*, i8** %39, align 8, !dbg !3043, !tbaa !2944
  call void @llvm.dbg.value(metadata i8* %40, metadata !2996, metadata !DIExpression()), !dbg !3044
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3045
  %42 = load i32, i32* %41, align 4, !dbg !3045, !tbaa !1943
  %43 = or i32 %42, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %43, metadata !2997, metadata !DIExpression()), !dbg !3047
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3048
  %45 = load i32, i32* %44, align 8, !dbg !3048, !tbaa !1883
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3049
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3050
  %48 = load i8*, i8** %47, align 8, !dbg !3050, !tbaa !1969
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3051
  %50 = load i8*, i8** %49, align 8, !dbg !3051, !tbaa !1972
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %51, metadata !2998, metadata !DIExpression()), !dbg !3053
  %52 = icmp ugt i64 %38, %51, !dbg !3054
  br i1 %52, label %63, label %53, !dbg !3056

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %54, metadata !2994, metadata !DIExpression()), !dbg !3042
  store i64 %54, i64* %37, align 8, !dbg !3059, !tbaa !2957
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3060
  br i1 %55, label %57, label %56, !dbg !3062

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3063
  br label %57, !dbg !3063

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2881, metadata !DIExpression()) #11, !dbg !3064
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %58, metadata !2996, metadata !DIExpression()), !dbg !3044
  store i8* %58, i8** %39, align 8, !dbg !3067, !tbaa !2944
  %59 = load i32, i32* %44, align 8, !dbg !3068, !tbaa !1883
  %60 = load i8*, i8** %47, align 8, !dbg !3069, !tbaa !1969
  %61 = load i8*, i8** %49, align 8, !dbg !3070, !tbaa !1972
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3071
  br label %63, !dbg !3072

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3073
  call void @llvm.dbg.value(metadata i8* %64, metadata !2996, metadata !DIExpression()), !dbg !3044
  store i32 %6, i32* %5, align 4, !dbg !3074, !tbaa !1506
  ret i8* %64, !dbg !3075
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* %1, metadata !3081, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %2, metadata !3082, metadata !DIExpression()), !dbg !3085
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3086
  ret i8* %4, !dbg !3087
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()) #11, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %0, metadata !2975, metadata !DIExpression()) #11, !dbg !3096
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3097
  ret i8* %2, !dbg !3098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()) #11, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %0, metadata !3081, metadata !DIExpression()) #11, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()) #11, !dbg !3110
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3111
  ret i8* %3, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3113 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %1, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %2, metadata !3119, metadata !DIExpression()), !dbg !3123
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3124
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3120, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %1, metadata !3126, metadata !DIExpression()) #11, !dbg !3132
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3134, !alias.scope !3135
  %6 = icmp eq i32 %1, 10, !dbg !3138
  br i1 %6, label %7, label %8, !dbg !3140

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3141, !noalias !3135
  unreachable, !dbg !3141

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3142
  store i32 %1, i32* %9, align 8, !dbg !3143, !tbaa !1883, !alias.scope !3135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3120, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3131, metadata !DIExpression(DW_OP_deref)), !dbg !3134
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3145
  ret i8* %10, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3147 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %3, metadata !3154, metadata !DIExpression()), !dbg !3159
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3160
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3155, metadata !DIExpression(DW_OP_deref)), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %1, metadata !3126, metadata !DIExpression()) #11, !dbg !3162
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3164, !alias.scope !3165
  %7 = icmp eq i32 %1, 10, !dbg !3168
  br i1 %7, label %8, label %9, !dbg !3169

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3170, !noalias !3165
  unreachable, !dbg !3170

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3171
  store i32 %1, i32* %10, align 8, !dbg !3172, !tbaa !1883, !alias.scope !3165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3155, metadata !DIExpression(DW_OP_deref)), !dbg !3161
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3131, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3173
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3174
  ret i8* %11, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3176 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %1, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()) #11, !dbg !3184
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()) #11, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()) #11, !dbg !3187
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3120, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()) #11, !dbg !3190
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3192, !alias.scope !3193
  %5 = icmp eq i32 %0, 10, !dbg !3196
  br i1 %5, label %6, label %7, !dbg !3197

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3198, !noalias !3193
  unreachable, !dbg !3198

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3199
  store i32 %0, i32* %8, align 8, !dbg !3200, !tbaa !1883, !alias.scope !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3120, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3131, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3192
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3202
  ret i8* %9, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3204 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()) #11, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()) #11, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()) #11, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %2, metadata !3154, metadata !DIExpression()) #11, !dbg !3218
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3155, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3220
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()) #11, !dbg !3221
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3223, !alias.scope !3224
  %6 = icmp eq i32 %0, 10, !dbg !3227
  br i1 %6, label %7, label %8, !dbg !3228

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3229, !noalias !3224
  unreachable, !dbg !3229

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3230
  store i32 %0, i32* %9, align 8, !dbg !3231, !tbaa !1883, !alias.scope !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3155, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3131, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3223
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3233
  ret i8* %10, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3235 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8 %2, metadata !3241, metadata !DIExpression()), !dbg !3245
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3246
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3247, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3242, metadata !DIExpression(DW_OP_deref)), !dbg !3249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1902, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8 %2, metadata !1903, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8 %2, metadata !1905, metadata !DIExpression()), !dbg !3254
  %6 = lshr i8 %2, 5, !dbg !3255
  %7 = zext i8 %6 to i64, !dbg !3255
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3256
  call void @llvm.dbg.value(metadata i32* %8, metadata !1907, metadata !DIExpression()), !dbg !3257
  %9 = and i8 %2, 31, !dbg !3258
  %10 = zext i8 %9 to i32, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %10, metadata !1909, metadata !DIExpression()), !dbg !3259
  %11 = load i32, i32* %8, align 4, !dbg !3260, !tbaa !1506
  %12 = lshr i32 %11, %10, !dbg !3261
  %13 = and i32 %12, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %13, metadata !1910, metadata !DIExpression()), !dbg !3263
  %14 = xor i32 %13, 1, !dbg !3264
  %15 = shl i32 %14, %10, !dbg !3265
  %16 = xor i32 %15, %11, !dbg !3266
  store i32 %16, i32* %8, align 4, !dbg !3266, !tbaa !1506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3242, metadata !DIExpression(DW_OP_deref)), !dbg !3249
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3267
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3268
  ret i8* %17, !dbg !3269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3270 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 %1, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #11, !dbg !3278
  call void @llvm.dbg.value(metadata i64 -1, metadata !3240, metadata !DIExpression()) #11, !dbg !3280
  call void @llvm.dbg.value(metadata i8 %1, metadata !3241, metadata !DIExpression()) #11, !dbg !3281
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3283, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1902, metadata !DIExpression()) #11, !dbg !3285
  call void @llvm.dbg.value(metadata i8 %1, metadata !1903, metadata !DIExpression()) #11, !dbg !3287
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()) #11, !dbg !3288
  call void @llvm.dbg.value(metadata i8 %1, metadata !1905, metadata !DIExpression()) #11, !dbg !3289
  %5 = lshr i8 %1, 5, !dbg !3290
  %6 = zext i8 %5 to i64, !dbg !3290
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3291
  call void @llvm.dbg.value(metadata i32* %7, metadata !1907, metadata !DIExpression()) #11, !dbg !3292
  %8 = and i8 %1, 31, !dbg !3293
  %9 = zext i8 %8 to i32, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %9, metadata !1909, metadata !DIExpression()) #11, !dbg !3294
  %10 = load i32, i32* %7, align 4, !dbg !3295, !tbaa !1506
  %11 = lshr i32 %10, %9, !dbg !3296
  %12 = and i32 %11, 1, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %12, metadata !1910, metadata !DIExpression()) #11, !dbg !3298
  %13 = xor i32 %12, 1, !dbg !3299
  %14 = shl i32 %13, %9, !dbg !3300
  %15 = xor i32 %14, %10, !dbg !3301
  store i32 %15, i32* %7, align 4, !dbg !3301, !tbaa !1506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3284
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3302
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3303
  ret i8* %16, !dbg !3304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3305 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()) #11, !dbg !3309
  call void @llvm.dbg.value(metadata i8 58, metadata !3275, metadata !DIExpression()) #11, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #11, !dbg !3312
  call void @llvm.dbg.value(metadata i64 -1, metadata !3240, metadata !DIExpression()) #11, !dbg !3314
  call void @llvm.dbg.value(metadata i8 58, metadata !3241, metadata !DIExpression()) #11, !dbg !3315
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3317, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1902, metadata !DIExpression()) #11, !dbg !3319
  call void @llvm.dbg.value(metadata i8 58, metadata !1903, metadata !DIExpression()) #11, !dbg !3321
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()) #11, !dbg !3322
  call void @llvm.dbg.value(metadata i8 58, metadata !1905, metadata !DIExpression()) #11, !dbg !3323
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32* %4, metadata !1907, metadata !DIExpression()) #11, !dbg !3325
  call void @llvm.dbg.value(metadata i32 26, metadata !1909, metadata !DIExpression()) #11, !dbg !3326
  %5 = load i32, i32* %4, align 4, !dbg !3327, !tbaa !1506
  %6 = or i32 %5, 67108864, !dbg !3328
  store i32 %6, i32* %4, align 4, !dbg !3328, !tbaa !1506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3318
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3330
  ret i8* %7, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3332 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #11, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()) #11, !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !3241, metadata !DIExpression()) #11, !dbg !3341
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3342
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3343, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1902, metadata !DIExpression()) #11, !dbg !3345
  call void @llvm.dbg.value(metadata i8 58, metadata !1903, metadata !DIExpression()) #11, !dbg !3347
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()) #11, !dbg !3348
  call void @llvm.dbg.value(metadata i8 58, metadata !1905, metadata !DIExpression()) #11, !dbg !3349
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3350
  call void @llvm.dbg.value(metadata i32* %5, metadata !1907, metadata !DIExpression()) #11, !dbg !3351
  call void @llvm.dbg.value(metadata i32 26, metadata !1909, metadata !DIExpression()) #11, !dbg !3352
  %6 = load i32, i32* %5, align 4, !dbg !3353, !tbaa !1506
  %7 = or i32 %6, 67108864, !dbg !3354
  store i32 %7, i32* %5, align 4, !dbg !3354, !tbaa !1506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3242, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3344
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3355
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3356
  ret i8* %8, !dbg !3357
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3358 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3131, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %1, metadata !3361, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* %2, metadata !3362, metadata !DIExpression()), !dbg !3368
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3369
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3370
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %1, metadata !3126, metadata !DIExpression()) #11, !dbg !3371
  call void @llvm.dbg.value(metadata i32 0, metadata !3131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3364
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3364, !alias.scope !3372
  %8 = icmp eq i32 %1, 10, !dbg !3375
  br i1 %8, label %9, label %10, !dbg !3376

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3377, !noalias !3372
  unreachable, !dbg !3377

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3364
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3370
  store i32 %1, i32* %11, align 8, !dbg !3370
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3370
  %13 = bitcast i32* %12 to i8*, !dbg !3370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3363, metadata !DIExpression(DW_OP_deref)), !dbg !3378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1902, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8 58, metadata !1903, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8 58, metadata !1905, metadata !DIExpression()), !dbg !3383
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3384
  call void @llvm.dbg.value(metadata i32* %14, metadata !1907, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 26, metadata !1909, metadata !DIExpression()), !dbg !3386
  %15 = load i32, i32* %14, align 4, !dbg !3387, !tbaa !1506
  %16 = or i32 %15, 67108864, !dbg !3388
  store i32 %16, i32* %14, align 4, !dbg !3388, !tbaa !1506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3363, metadata !DIExpression(DW_OP_deref)), !dbg !3378
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3389
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3390
  ret i8* %17, !dbg !3391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3392 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %2, metadata !3398, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %3, metadata !3399, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()) #11, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()) #11, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()) #11, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %3, metadata !3411, metadata !DIExpression()) #11, !dbg !3418
  call void @llvm.dbg.value(metadata i64 -1, metadata !3412, metadata !DIExpression()) #11, !dbg !3419
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3421, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1951, metadata !DIExpression()) #11, !dbg !3423
  call void @llvm.dbg.value(metadata i8* %1, metadata !1952, metadata !DIExpression()) #11, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !1953, metadata !DIExpression()) #11, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1951, metadata !DIExpression()) #11, !dbg !3423
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3427
  store i32 10, i32* %7, align 8, !dbg !3428, !tbaa !1883
  %8 = icmp ne i8* %1, null, !dbg !3429
  %9 = icmp ne i8* %2, null, !dbg !3430
  %10 = and i1 %8, %9, !dbg !3431
  br i1 %10, label %12, label %11, !dbg !3431

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3432
  unreachable, !dbg !3432

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3433
  store i8* %1, i8** %13, align 8, !dbg !3434, !tbaa !1969
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3435
  store i8* %2, i8** %14, align 8, !dbg !3436, !tbaa !1972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3422
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3438
  ret i8* %15, !dbg !3439
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3405 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %3, metadata !3411, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %4, metadata !3412, metadata !DIExpression()), !dbg !3444
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3446, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3413, metadata !DIExpression(DW_OP_deref)), !dbg !3447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1951, metadata !DIExpression()) #11, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !1952, metadata !DIExpression()) #11, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %2, metadata !1953, metadata !DIExpression()) #11, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1951, metadata !DIExpression()) #11, !dbg !3448
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3452
  store i32 10, i32* %8, align 8, !dbg !3453, !tbaa !1883
  %9 = icmp ne i8* %1, null, !dbg !3454
  %10 = icmp ne i8* %2, null, !dbg !3455
  %11 = and i1 %9, %10, !dbg !3456
  br i1 %11, label %13, label %12, !dbg !3456

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3457
  unreachable, !dbg !3457

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3458
  store i8* %1, i8** %14, align 8, !dbg !3459, !tbaa !1969
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3460
  store i8* %2, i8** %15, align 8, !dbg !3461, !tbaa !1972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3413, metadata !DIExpression(DW_OP_deref)), !dbg !3447
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3463
  ret i8* %16, !dbg !3464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3465 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8* %1, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %2, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3396, metadata !DIExpression()) #11, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()) #11, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !3398, metadata !DIExpression()) #11, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %2, metadata !3399, metadata !DIExpression()) #11, !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()) #11, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %1, metadata !3410, metadata !DIExpression()) #11, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3411, metadata !DIExpression()) #11, !dbg !3484
  call void @llvm.dbg.value(metadata i64 -1, metadata !3412, metadata !DIExpression()) #11, !dbg !3485
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3487, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1951, metadata !DIExpression()) #11, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %0, metadata !1952, metadata !DIExpression()) #11, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %1, metadata !1953, metadata !DIExpression()) #11, !dbg !3492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1951, metadata !DIExpression()) #11, !dbg !3489
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3493
  store i32 10, i32* %6, align 8, !dbg !3494, !tbaa !1883
  %7 = icmp ne i8* %0, null, !dbg !3495
  %8 = icmp ne i8* %1, null, !dbg !3496
  %9 = and i1 %7, %8, !dbg !3497
  br i1 %9, label %11, label %10, !dbg !3497

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3498
  unreachable, !dbg !3498

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3499
  store i8* %0, i8** %12, align 8, !dbg !3500, !tbaa !1969
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3501
  store i8* %1, i8** %13, align 8, !dbg !3502, !tbaa !1972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3488
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3504
  ret i8* %14, !dbg !3505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3506 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %1, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %2, metadata !3512, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %3, metadata !3513, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()) #11, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()) #11, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3410, metadata !DIExpression()) #11, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %2, metadata !3411, metadata !DIExpression()) #11, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %3, metadata !3412, metadata !DIExpression()) #11, !dbg !3523
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3525, !tbaa.struct !3248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1951, metadata !DIExpression()) #11, !dbg !3527
  call void @llvm.dbg.value(metadata i8* %0, metadata !1952, metadata !DIExpression()) #11, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %1, metadata !1953, metadata !DIExpression()) #11, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1951, metadata !DIExpression()) #11, !dbg !3527
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3531
  store i32 10, i32* %7, align 8, !dbg !3532, !tbaa !1883
  %8 = icmp ne i8* %0, null, !dbg !3533
  %9 = icmp ne i8* %1, null, !dbg !3534
  %10 = and i1 %8, %9, !dbg !3535
  br i1 %10, label %12, label %11, !dbg !3535

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3536
  unreachable, !dbg !3536

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3537
  store i8* %0, i8** %13, align 8, !dbg !3538, !tbaa !1969
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3539
  store i8* %1, i8** %14, align 8, !dbg !3540, !tbaa !1972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3413, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3526
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3541
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3542
  ret i8* %15, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %2, metadata !3550, metadata !DIExpression()), !dbg !3553
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3554
  ret i8* %4, !dbg !3555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()) #11, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %0, metadata !3549, metadata !DIExpression()) #11, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()) #11, !dbg !3567
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3568
  ret i8* %3, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !3575, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()) #11, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()) #11, !dbg !3580
  call void @llvm.dbg.value(metadata i64 -1, metadata !3550, metadata !DIExpression()) #11, !dbg !3581
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3582
  ret i8* %3, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3588, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 0, metadata !3574, metadata !DIExpression()) #11, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #11, !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()) #11, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %0, metadata !3549, metadata !DIExpression()) #11, !dbg !3595
  call void @llvm.dbg.value(metadata i64 -1, metadata !3550, metadata !DIExpression()) #11, !dbg !3596
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3597
  ret i8* %2, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3599 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3654, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %1, metadata !3655, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8* %2, metadata !3656, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %3, metadata !3657, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8** %4, metadata !3658, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %5, metadata !3659, metadata !DIExpression()), !dbg !3665
  %7 = icmp eq i8* %1, null, !dbg !3666
  br i1 %7, label %10, label %8, !dbg !3668

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3669
  br label %12, !dbg !3669

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.132, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3670
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.133, i64 0, i64 0), i32 5) #11, !dbg !3671
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3671
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.134, i64 0, i64 0), i32 5) #11, !dbg !3672
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3672
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
  ], !dbg !3673

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3674
  unreachable, !dbg !3674

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.135, i64 0, i64 0), i32 5) #11, !dbg !3676
  %20 = load i8*, i8** %4, align 8, !dbg !3676, !tbaa !654
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3676
  br label %146, !dbg !3677

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.136, i64 0, i64 0), i32 5) #11, !dbg !3678
  %24 = load i8*, i8** %4, align 8, !dbg !3678, !tbaa !654
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3678
  %26 = load i8*, i8** %25, align 8, !dbg !3678, !tbaa !654
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3678
  br label %146, !dbg !3679

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.137, i64 0, i64 0), i32 5) #11, !dbg !3680
  %30 = load i8*, i8** %4, align 8, !dbg !3680, !tbaa !654
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3680
  %32 = load i8*, i8** %31, align 8, !dbg !3680, !tbaa !654
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3680
  %34 = load i8*, i8** %33, align 8, !dbg !3680, !tbaa !654
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3680
  br label %146, !dbg !3681

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.138, i64 0, i64 0), i32 5) #11, !dbg !3682
  %38 = load i8*, i8** %4, align 8, !dbg !3682, !tbaa !654
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3682
  %40 = load i8*, i8** %39, align 8, !dbg !3682, !tbaa !654
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3682
  %42 = load i8*, i8** %41, align 8, !dbg !3682, !tbaa !654
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3682
  %44 = load i8*, i8** %43, align 8, !dbg !3682, !tbaa !654
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3682
  br label %146, !dbg !3683

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.139, i64 0, i64 0), i32 5) #11, !dbg !3684
  %48 = load i8*, i8** %4, align 8, !dbg !3684, !tbaa !654
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3684
  %50 = load i8*, i8** %49, align 8, !dbg !3684, !tbaa !654
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3684
  %52 = load i8*, i8** %51, align 8, !dbg !3684, !tbaa !654
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3684
  %54 = load i8*, i8** %53, align 8, !dbg !3684, !tbaa !654
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3684
  %56 = load i8*, i8** %55, align 8, !dbg !3684, !tbaa !654
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3684
  br label %146, !dbg !3685

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.140, i64 0, i64 0), i32 5) #11, !dbg !3686
  %60 = load i8*, i8** %4, align 8, !dbg !3686, !tbaa !654
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3686
  %62 = load i8*, i8** %61, align 8, !dbg !3686, !tbaa !654
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3686
  %64 = load i8*, i8** %63, align 8, !dbg !3686, !tbaa !654
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3686
  %66 = load i8*, i8** %65, align 8, !dbg !3686, !tbaa !654
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3686
  %68 = load i8*, i8** %67, align 8, !dbg !3686, !tbaa !654
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3686
  %70 = load i8*, i8** %69, align 8, !dbg !3686, !tbaa !654
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3686
  br label %146, !dbg !3687

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.141, i64 0, i64 0), i32 5) #11, !dbg !3688
  %74 = load i8*, i8** %4, align 8, !dbg !3688, !tbaa !654
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3688
  %76 = load i8*, i8** %75, align 8, !dbg !3688, !tbaa !654
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3688
  %78 = load i8*, i8** %77, align 8, !dbg !3688, !tbaa !654
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3688
  %80 = load i8*, i8** %79, align 8, !dbg !3688, !tbaa !654
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3688
  %82 = load i8*, i8** %81, align 8, !dbg !3688, !tbaa !654
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3688
  %84 = load i8*, i8** %83, align 8, !dbg !3688, !tbaa !654
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3688
  %86 = load i8*, i8** %85, align 8, !dbg !3688, !tbaa !654
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3688
  br label %146, !dbg !3689

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.142, i64 0, i64 0), i32 5) #11, !dbg !3690
  %90 = load i8*, i8** %4, align 8, !dbg !3690, !tbaa !654
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3690
  %92 = load i8*, i8** %91, align 8, !dbg !3690, !tbaa !654
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3690
  %94 = load i8*, i8** %93, align 8, !dbg !3690, !tbaa !654
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3690
  %96 = load i8*, i8** %95, align 8, !dbg !3690, !tbaa !654
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3690
  %98 = load i8*, i8** %97, align 8, !dbg !3690, !tbaa !654
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3690
  %100 = load i8*, i8** %99, align 8, !dbg !3690, !tbaa !654
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3690
  %102 = load i8*, i8** %101, align 8, !dbg !3690, !tbaa !654
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3690
  %104 = load i8*, i8** %103, align 8, !dbg !3690, !tbaa !654
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3690
  br label %146, !dbg !3691

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.143, i64 0, i64 0), i32 5) #11, !dbg !3692
  %108 = load i8*, i8** %4, align 8, !dbg !3692, !tbaa !654
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3692
  %110 = load i8*, i8** %109, align 8, !dbg !3692, !tbaa !654
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3692
  %112 = load i8*, i8** %111, align 8, !dbg !3692, !tbaa !654
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3692
  %114 = load i8*, i8** %113, align 8, !dbg !3692, !tbaa !654
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3692
  %116 = load i8*, i8** %115, align 8, !dbg !3692, !tbaa !654
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3692
  %118 = load i8*, i8** %117, align 8, !dbg !3692, !tbaa !654
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3692
  %120 = load i8*, i8** %119, align 8, !dbg !3692, !tbaa !654
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3692
  %122 = load i8*, i8** %121, align 8, !dbg !3692, !tbaa !654
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3692
  %124 = load i8*, i8** %123, align 8, !dbg !3692, !tbaa !654
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3692
  br label %146, !dbg !3693

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.144, i64 0, i64 0), i32 5) #11, !dbg !3694
  %128 = load i8*, i8** %4, align 8, !dbg !3694, !tbaa !654
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3694
  %130 = load i8*, i8** %129, align 8, !dbg !3694, !tbaa !654
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3694
  %132 = load i8*, i8** %131, align 8, !dbg !3694, !tbaa !654
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3694
  %134 = load i8*, i8** %133, align 8, !dbg !3694, !tbaa !654
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3694
  %136 = load i8*, i8** %135, align 8, !dbg !3694, !tbaa !654
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3694
  %138 = load i8*, i8** %137, align 8, !dbg !3694, !tbaa !654
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3694
  %140 = load i8*, i8** %139, align 8, !dbg !3694, !tbaa !654
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3694
  %142 = load i8*, i8** %141, align 8, !dbg !3694, !tbaa !654
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3694
  %144 = load i8*, i8** %143, align 8, !dbg !3694, !tbaa !654
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3694
  br label %146, !dbg !3695

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3696
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3697 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3701, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !3702, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %2, metadata !3703, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i8* %3, metadata !3704, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8** %4, metadata !3705, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 0, metadata !3706, metadata !DIExpression()), !dbg !3712
  br label %6, !dbg !3713

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3717
  %9 = load i8*, i8** %8, align 8, !dbg !3717, !tbaa !654
  %10 = icmp eq i8* %9, null, !dbg !3718
  %11 = add i64 %7, 1, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %11, metadata !3706, metadata !DIExpression()), !dbg !3712
  br i1 %10, label %12, label %6, !dbg !3718, !llvm.loop !3720

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %7, metadata !3706, metadata !DIExpression()), !dbg !3712
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3722
  ret void, !dbg !3723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3724 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3735, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8* %1, metadata !3736, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %2, metadata !3737, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %3, metadata !3738, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3739, metadata !DIExpression()), !dbg !3747
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3748
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3748
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3741, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 0, metadata !3740, metadata !DIExpression()), !dbg !3750
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3740, metadata !DIExpression()), !dbg !3750
  %11 = load i32, i32* %8, align 8, !dbg !3751
  %12 = icmp ult i32 %11, 41, !dbg !3751
  br i1 %12, label %13, label %18, !dbg !3751

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3751
  %15 = sext i32 %11 to i64, !dbg !3751
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3751
  %17 = add i32 %11, 8, !dbg !3751
  store i32 %17, i32* %8, align 8, !dbg !3751
  br label %21, !dbg !3751

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3751
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3751
  store i8* %20, i8** %10, align 8, !dbg !3751
  br label %21, !dbg !3751

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3751
  %25 = load i8*, i8** %24, align 8, !dbg !3751
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3754
  store i8* %25, i8** %26, align 16, !dbg !3755, !tbaa !654
  %27 = icmp eq i8* %25, null, !dbg !3756
  br i1 %27, label %30, label %28, !dbg !3757

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 1, metadata !3740, metadata !DIExpression()), !dbg !3750
  %29 = icmp ult i32 %22, 41, !dbg !3751
  br i1 %29, label %35, label %32, !dbg !3751

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3758
  call void @llvm.dbg.value(metadata i64 %31, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %31, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3759
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3760
  ret void, !dbg !3760

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3751
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3751
  store i8* %34, i8** %10, align 8, !dbg !3751
  br label %40, !dbg !3751

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3751
  %37 = sext i32 %22 to i64, !dbg !3751
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3751
  %39 = add i32 %22, 8, !dbg !3751
  store i32 %39, i32* %8, align 8, !dbg !3751
  br label %40, !dbg !3751

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3751
  %44 = load i8*, i8** %43, align 8, !dbg !3751
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3754
  store i8* %44, i8** %45, align 8, !dbg !3755, !tbaa !654
  %46 = icmp eq i8* %44, null, !dbg !3756
  br i1 %46, label %30, label %47, !dbg !3757

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 2, metadata !3740, metadata !DIExpression()), !dbg !3750
  %48 = icmp ult i32 %41, 41, !dbg !3751
  br i1 %48, label %52, label %49, !dbg !3751

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3751
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3751
  store i8* %51, i8** %10, align 8, !dbg !3751
  br label %57, !dbg !3751

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3751
  %54 = sext i32 %41 to i64, !dbg !3751
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3751
  %56 = add i32 %41, 8, !dbg !3751
  store i32 %56, i32* %8, align 8, !dbg !3751
  br label %57, !dbg !3751

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3751
  %61 = load i8*, i8** %60, align 8, !dbg !3751
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3754
  store i8* %61, i8** %62, align 16, !dbg !3755, !tbaa !654
  %63 = icmp eq i8* %61, null, !dbg !3756
  br i1 %63, label %30, label %64, !dbg !3757

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 3, metadata !3740, metadata !DIExpression()), !dbg !3750
  %65 = icmp ult i32 %58, 41, !dbg !3751
  br i1 %65, label %69, label %66, !dbg !3751

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3751
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3751
  store i8* %68, i8** %10, align 8, !dbg !3751
  br label %74, !dbg !3751

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3751
  %71 = sext i32 %58 to i64, !dbg !3751
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3751
  %73 = add i32 %58, 8, !dbg !3751
  store i32 %73, i32* %8, align 8, !dbg !3751
  br label %74, !dbg !3751

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3751
  %78 = load i8*, i8** %77, align 8, !dbg !3751
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3754
  store i8* %78, i8** %79, align 8, !dbg !3755, !tbaa !654
  %80 = icmp eq i8* %78, null, !dbg !3756
  br i1 %80, label %30, label %81, !dbg !3757

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 4, metadata !3740, metadata !DIExpression()), !dbg !3750
  %82 = icmp ult i32 %75, 41, !dbg !3751
  br i1 %82, label %86, label %83, !dbg !3751

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3751
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3751
  store i8* %85, i8** %10, align 8, !dbg !3751
  br label %91, !dbg !3751

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3751
  %88 = sext i32 %75 to i64, !dbg !3751
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3751
  %90 = add i32 %75, 8, !dbg !3751
  store i32 %90, i32* %8, align 8, !dbg !3751
  br label %91, !dbg !3751

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3751
  %95 = load i8*, i8** %94, align 8, !dbg !3751
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3754
  store i8* %95, i8** %96, align 16, !dbg !3755, !tbaa !654
  %97 = icmp eq i8* %95, null, !dbg !3756
  br i1 %97, label %30, label %98, !dbg !3757

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 5, metadata !3740, metadata !DIExpression()), !dbg !3750
  %99 = icmp ult i32 %92, 41, !dbg !3751
  br i1 %99, label %103, label %100, !dbg !3751

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3751
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3751
  store i8* %102, i8** %10, align 8, !dbg !3751
  br label %108, !dbg !3751

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3751
  %105 = sext i32 %92 to i64, !dbg !3751
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3751
  %107 = add i32 %92, 8, !dbg !3751
  store i32 %107, i32* %8, align 8, !dbg !3751
  br label %108, !dbg !3751

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3751
  %111 = load i8*, i8** %110, align 8, !dbg !3751
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3754
  store i8* %111, i8** %112, align 8, !dbg !3755, !tbaa !654
  %113 = icmp eq i8* %111, null, !dbg !3756
  br i1 %113, label %30, label %114, !dbg !3757

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 6, metadata !3740, metadata !DIExpression()), !dbg !3750
  %115 = load i8*, i8** %10, align 8, !dbg !3751
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3751
  store i8* %116, i8** %10, align 8, !dbg !3751
  %117 = bitcast i8* %115 to i8**, !dbg !3751
  %118 = load i8*, i8** %117, align 8, !dbg !3751
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3754
  store i8* %118, i8** %119, align 16, !dbg !3755, !tbaa !654
  %120 = icmp eq i8* %118, null, !dbg !3756
  br i1 %120, label %30, label %121, !dbg !3757

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 7, metadata !3740, metadata !DIExpression()), !dbg !3750
  %122 = load i8*, i8** %10, align 8, !dbg !3751
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3751
  store i8* %123, i8** %10, align 8, !dbg !3751
  %124 = bitcast i8* %122 to i8**, !dbg !3751
  %125 = load i8*, i8** %124, align 8, !dbg !3751
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3754
  store i8* %125, i8** %126, align 8, !dbg !3755, !tbaa !654
  %127 = icmp eq i8* %125, null, !dbg !3756
  br i1 %127, label %30, label %128, !dbg !3757

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 8, metadata !3740, metadata !DIExpression()), !dbg !3750
  %129 = load i8*, i8** %10, align 8, !dbg !3751
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3751
  store i8* %130, i8** %10, align 8, !dbg !3751
  %131 = bitcast i8* %129 to i8**, !dbg !3751
  %132 = load i8*, i8** %131, align 8, !dbg !3751
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3754
  store i8* %132, i8** %133, align 16, !dbg !3755, !tbaa !654
  %134 = icmp eq i8* %132, null, !dbg !3756
  br i1 %134, label %30, label %135, !dbg !3757

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 9, metadata !3740, metadata !DIExpression()), !dbg !3750
  %136 = load i8*, i8** %10, align 8, !dbg !3751
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3751
  store i8* %137, i8** %10, align 8, !dbg !3751
  %138 = bitcast i8* %136 to i8**, !dbg !3751
  %139 = load i8*, i8** %138, align 8, !dbg !3751
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3754
  store i8* %139, i8** %140, align 8, !dbg !3755, !tbaa !654
  %141 = icmp eq i8* %139, null, !dbg !3756
  %142 = select i1 %141, i64 9, i64 10, !dbg !3757
  br label %30, !dbg !3757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3761 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3765, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %1, metadata !3766, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %2, metadata !3767, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %3, metadata !3768, metadata !DIExpression()), !dbg !3777
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3778
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3778
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3769, metadata !DIExpression()), !dbg !3779
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3780
  call void @llvm.va_start(i8* nonnull %6), !dbg !3780
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3781
  call void @llvm.va_end(i8* nonnull %6), !dbg !3782
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3783
  ret void, !dbg !3783
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3784 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.147, i64 0, i64 0), i32 5) #11, !dbg !3785
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.148, i64 0, i64 0)) #11, !dbg !3785
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.149, i64 0, i64 0), i32 5) #11, !dbg !3786
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.150, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.151, i64 0, i64 0)) #11, !dbg !3786
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.152, i64 0, i64 0), i32 5) #11, !dbg !3787
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3787, !tbaa !654
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3787
  ret void, !dbg !3788
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3789 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3796
  %3 = udiv i64 9223372036854775807, %1, !dbg !3797
  %4 = icmp ult i64 %3, %0, !dbg !3797
  br i1 %4, label %5, label %6, !dbg !3799

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3800
  unreachable, !dbg !3800

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %7, metadata !3802, metadata !DIExpression()) #11, !dbg !3809
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %8, metadata !3808, metadata !DIExpression()) #11, !dbg !3812
  %9 = icmp eq i8* %8, null, !dbg !3813
  %10 = icmp ne i64 %7, 0, !dbg !3815
  %11 = and i1 %10, %9, !dbg !3816
  br i1 %11, label %12, label %13, !dbg !3816

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3817
  unreachable, !dbg !3817

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3818
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3803 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()), !dbg !3819
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()), !dbg !3821
  %3 = icmp eq i8* %2, null, !dbg !3822
  %4 = icmp ne i64 %0, 0, !dbg !3823
  %5 = and i1 %4, %3, !dbg !3824
  br i1 %5, label %6, label %7, !dbg !3824

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3825
  unreachable, !dbg !3825

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3826
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3831, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 %1, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %2, metadata !3833, metadata !DIExpression()), !dbg !3836
  %4 = udiv i64 9223372036854775807, %2, !dbg !3837
  %5 = icmp ult i64 %4, %1, !dbg !3837
  br i1 %5, label %6, label %7, !dbg !3839

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3840
  unreachable, !dbg !3840

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #11, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %8, metadata !3847, metadata !DIExpression()) #11, !dbg !3850
  %9 = icmp eq i64 %8, 0, !dbg !3851
  %10 = icmp ne i8* %0, null, !dbg !3853
  %11 = and i1 %10, %9, !dbg !3854
  br i1 %11, label %12, label %13, !dbg !3854

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3855
  br label %19, !dbg !3857

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %14, metadata !3842, metadata !DIExpression()) #11, !dbg !3848
  %15 = icmp eq i8* %14, null, !dbg !3859
  %16 = icmp ne i64 %8, 0, !dbg !3861
  %17 = and i1 %16, %15, !dbg !3862
  br i1 %17, label %18, label %19, !dbg !3862

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3863
  unreachable, !dbg !3863

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3864
  ret i8* %20, !dbg !3865
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3843 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()), !dbg !3867
  %3 = icmp eq i64 %1, 0, !dbg !3868
  %4 = icmp ne i8* %0, null, !dbg !3869
  %5 = and i1 %4, %3, !dbg !3870
  br i1 %5, label %6, label %7, !dbg !3870

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3871
  br label %13, !dbg !3872

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3873
  call void @llvm.dbg.value(metadata i8* %8, metadata !3842, metadata !DIExpression()), !dbg !3866
  %9 = icmp eq i8* %8, null, !dbg !3874
  %10 = icmp ne i64 %1, 0, !dbg !3875
  %11 = and i1 %10, %9, !dbg !3876
  br i1 %11, label %12, label %13, !dbg !3876

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3877
  unreachable, !dbg !3877

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3878
  ret i8* %14, !dbg !3879
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !202, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64* %1, metadata !203, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %2, metadata !204, metadata !DIExpression()), !dbg !3882
  %4 = load i64, i64* %1, align 8, !dbg !3883, !tbaa !2927
  call void @llvm.dbg.value(metadata i64 %4, metadata !205, metadata !DIExpression()), !dbg !3884
  %5 = icmp eq i8* %0, null, !dbg !3885
  br i1 %5, label %6, label %20, !dbg !3887

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3888
  br i1 %7, label %8, label %13, !dbg !3891

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %9, metadata !205, metadata !DIExpression()), !dbg !3884
  %10 = icmp ugt i64 %2, 128, !dbg !3894
  %11 = zext i1 %10 to i64, !dbg !3894
  %12 = add nuw nsw i64 %9, %11, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %12, metadata !205, metadata !DIExpression()), !dbg !3884
  br label %13, !dbg !3896

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3897
  call void @llvm.dbg.value(metadata i64 %14, metadata !205, metadata !DIExpression()), !dbg !3884
  %15 = udiv i64 9223372036854775807, %2, !dbg !3898
  %16 = icmp ult i64 %15, %14, !dbg !3898
  br i1 %16, label %19, label %17, !dbg !3900

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !205, metadata !DIExpression()), !dbg !3884
  store i64 %14, i64* %1, align 8, !dbg !3901, !tbaa !2927
  %18 = mul i64 %14, %2, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #11, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %28, metadata !3847, metadata !DIExpression()) #11, !dbg !3905
  br label %31, !dbg !3906

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3907
  unreachable, !dbg !3907

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3908
  %22 = icmp ugt i64 %21, %4, !dbg !3911
  br i1 %22, label %24, label %23, !dbg !3912

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3913
  unreachable, !dbg !3913

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3914
  %26 = add i64 %4, 1, !dbg !3915
  %27 = add i64 %26, %25, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %27, metadata !205, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %27, metadata !205, metadata !DIExpression()), !dbg !3884
  store i64 %27, i64* %1, align 8, !dbg !3901, !tbaa !2927
  %28 = mul i64 %27, %2, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #11, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %28, metadata !3847, metadata !DIExpression()) #11, !dbg !3905
  %29 = icmp eq i64 %28, 0, !dbg !3917
  br i1 %29, label %30, label %31, !dbg !3906

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3918
  br label %38, !dbg !3919

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %33, metadata !3842, metadata !DIExpression()) #11, !dbg !3903
  %34 = icmp eq i8* %33, null, !dbg !3921
  %35 = icmp ne i64 %32, 0, !dbg !3922
  %36 = and i1 %35, %34, !dbg !3923
  br i1 %36, label %37, label %38, !dbg !3923

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3924
  unreachable, !dbg !3924

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3925
  ret i8* %39, !dbg !3926
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3927 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3929, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()) #11, !dbg !3931
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3933
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #11, !dbg !3934
  %3 = icmp eq i8* %2, null, !dbg !3935
  %4 = icmp ne i64 %0, 0, !dbg !3936
  %5 = and i1 %4, %3, !dbg !3937
  br i1 %5, label %6, label %7, !dbg !3937

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3938
  unreachable, !dbg !3938

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64* %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* %0, metadata !202, metadata !DIExpression()) #11, !dbg !3948
  call void @llvm.dbg.value(metadata i64* %1, metadata !203, metadata !DIExpression()) #11, !dbg !3950
  call void @llvm.dbg.value(metadata i64 1, metadata !204, metadata !DIExpression()) #11, !dbg !3951
  %3 = load i64, i64* %1, align 8, !dbg !3952, !tbaa !2927
  call void @llvm.dbg.value(metadata i64 %3, metadata !205, metadata !DIExpression()) #11, !dbg !3953
  %4 = icmp eq i8* %0, null, !dbg !3954
  br i1 %4, label %5, label %12, !dbg !3955

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3956
  br i1 %6, label %9, label %7, !dbg !3957

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !205, metadata !DIExpression()) #11, !dbg !3953
  %8 = icmp slt i64 %3, 0, !dbg !3958
  br i1 %8, label %11, label %9, !dbg !3959

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !205, metadata !DIExpression()) #11, !dbg !3953
  store i64 %10, i64* %1, align 8, !dbg !3960, !tbaa !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #11, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %18, metadata !3847, metadata !DIExpression()) #11, !dbg !3963
  br label %21, !dbg !3964

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3965
  unreachable, !dbg !3965

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3966
  br i1 %13, label %15, label %14, !dbg !3967

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3968
  unreachable, !dbg !3968

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3969
  %17 = add i64 %3, 1, !dbg !3970
  %18 = add i64 %17, %16, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %18, metadata !205, metadata !DIExpression()) #11, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %18, metadata !205, metadata !DIExpression()) #11, !dbg !3953
  store i64 %18, i64* %1, align 8, !dbg !3960, !tbaa !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #11, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %18, metadata !3847, metadata !DIExpression()) #11, !dbg !3963
  %19 = icmp eq i64 %18, 0, !dbg !3972
  br i1 %19, label %20, label %21, !dbg !3964

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3973
  br label %28, !dbg !3974

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %23, metadata !3842, metadata !DIExpression()) #11, !dbg !3961
  %24 = icmp eq i8* %23, null, !dbg !3976
  %25 = icmp ne i64 %22, 0, !dbg !3977
  %26 = and i1 %25, %24, !dbg !3978
  br i1 %26, label %27, label %28, !dbg !3978

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3979
  unreachable, !dbg !3979

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3980
  ret i8* %29, !dbg !3981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3982 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()) #11, !dbg !3986
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #11, !dbg !3989
  %3 = icmp eq i8* %2, null, !dbg !3990
  %4 = icmp ne i64 %0, 0, !dbg !3991
  %5 = and i1 %4, %3, !dbg !3992
  br i1 %5, label %6, label %7, !dbg !3992

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3993
  unreachable, !dbg !3993

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3994
  ret i8* %2, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3996 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()), !dbg !4002
  %3 = udiv i64 9223372036854775807, %1, !dbg !4003
  %4 = icmp ult i64 %3, %0, !dbg !4003
  br i1 %4, label %8, label %5, !dbg !4005

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4006
  call void @llvm.dbg.value(metadata i8* %6, metadata !4000, metadata !DIExpression()), !dbg !4007
  %7 = icmp eq i8* %6, null, !dbg !4008
  br i1 %7, label %8, label %9, !dbg !4009

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4010
  unreachable, !dbg !4010

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()) #11, !dbg !4022
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #11, !dbg !4025
  %4 = icmp eq i8* %3, null, !dbg !4026
  %5 = icmp ne i64 %1, 0, !dbg !4027
  %6 = and i1 %5, %4, !dbg !4028
  br i1 %6, label %7, label %8, !dbg !4028

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4029
  unreachable, !dbg !4029

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4030
  ret i8* %3, !dbg !4031
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4034, metadata !DIExpression()), !dbg !4035
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4036
  %3 = add i64 %2, 1, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %0, metadata !4018, metadata !DIExpression()) #11, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %3, metadata !4019, metadata !DIExpression()) #11, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %3, metadata !3802, metadata !DIExpression()) #11, !dbg !4041
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #11, !dbg !4044
  %5 = icmp eq i8* %4, null, !dbg !4045
  %6 = icmp ne i64 %3, 0, !dbg !4046
  %7 = and i1 %6, %5, !dbg !4047
  br i1 %7, label %8, label %9, !dbg !4047

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4048
  unreachable, !dbg !4048

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4049
  ret i8* %4, !dbg !4050
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4051 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4053, !tbaa !1506
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.163, i64 0, i64 0), i32 5) #11, !dbg !4054
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i64 0, i64 0), i8* %2) #11, !dbg !4055
  tail call void @abort() #15, !dbg !4056
  unreachable, !dbg !4056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4057 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4060, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4061, metadata !DIExpression()), !dbg !4067
  %3 = icmp eq i64 %0, 0, !dbg !4068
  %4 = icmp eq i64 %1, 0, !dbg !4069
  %5 = or i1 %3, %4, !dbg !4070
  br i1 %5, label %12, label %6, !dbg !4070

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4063, metadata !DIExpression()), !dbg !4072
  %8 = udiv i64 %7, %1, !dbg !4073
  %9 = icmp eq i64 %8, %0, !dbg !4075
  br i1 %9, label %12, label %10, !dbg !4076

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !4077
  store i32 12, i32* %11, align 4, !dbg !4079, !tbaa !1506
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4060, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %13, metadata !4061, metadata !DIExpression()), !dbg !4067
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %15, metadata !4062, metadata !DIExpression()), !dbg !4081
  br label %16, !dbg !4082

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4083
  ret i8* %17, !dbg !4084
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4085 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4102, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %1, metadata !4103, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %2, metadata !4104, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4105, metadata !DIExpression()), !dbg !4114
  %6 = bitcast i32* %5 to i8*, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4115
  %7 = icmp eq i32* %0, null, !dbg !4116
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4118
  call void @llvm.dbg.value(metadata i32* %8, metadata !4102, metadata !DIExpression()), !dbg !4111
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %9, metadata !4106, metadata !DIExpression()), !dbg !4120
  %10 = icmp ugt i64 %9, -3, !dbg !4121
  %11 = icmp ne i64 %2, 0, !dbg !4122
  %12 = and i1 %11, %10, !dbg !4123
  br i1 %12, label %13, label %18, !dbg !4123

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4124
  br i1 %14, label %18, label %15, !dbg !4125

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4126, !tbaa !774
  call void @llvm.dbg.value(metadata i8 %16, metadata !4108, metadata !DIExpression()), !dbg !4127
  %17 = zext i8 %16 to i32, !dbg !4128
  store i32 %17, i32* %8, align 4, !dbg !4129, !tbaa !1506
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4131
  ret i64 %19, !dbg !4131
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4132 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4171, metadata !DIExpression()), !dbg !4176
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4177
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4178, metadata !DIExpression()), !dbg !4182
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4184
  %4 = load i32, i32* %3, align 8, !dbg !4184, !tbaa !4185
  %5 = and i32 %4, 32, !dbg !4184
  %6 = icmp eq i32 %5, 0, !dbg !4187
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4188
  %8 = icmp ne i32 %7, 0, !dbg !4189
  br i1 %6, label %9, label %19, !dbg !4190

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4192
  %11 = xor i1 %8, true, !dbg !4193
  %12 = or i1 %10, %11, !dbg !4193
  %13 = sext i1 %8 to i32, !dbg !4193
  br i1 %12, label %22, label %14, !dbg !4193

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !4194
  %16 = load i32, i32* %15, align 4, !dbg !4194, !tbaa !1506
  %17 = icmp ne i32 %16, 9, !dbg !4195
  %18 = sext i1 %17 to i32, !dbg !4196
  br label %22, !dbg !4196

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4197

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !4199
  store i32 0, i32* %21, align 4, !dbg !4201, !tbaa !1506
  br label %22, !dbg !4199

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4202
  ret i32 %23, !dbg !4203
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4204 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i8 1, metadata !4210, metadata !DIExpression()), !dbg !4213
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4214
  call void @llvm.dbg.value(metadata i8* %2, metadata !4211, metadata !DIExpression()), !dbg !4215
  %3 = icmp eq i8* %2, null, !dbg !4216
  br i1 %3, label %11, label %4, !dbg !4218

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0)) #14, !dbg !4219
  %6 = icmp eq i32 %5, 0, !dbg !4224
  br i1 %6, label %10, label %7, !dbg !4225

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.174, i64 0, i64 0)) #14, !dbg !4226
  %9 = icmp eq i32 %8, 0, !dbg !4227
  br i1 %9, label %10, label %11, !dbg !4228

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4210, metadata !DIExpression()), !dbg !4213
  br label %11, !dbg !4229

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4231 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  %2 = icmp eq i8* %1, null, !dbg !4239
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.177, i64 0, i64 0), i8* %1, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %3, metadata !4236, metadata !DIExpression()), !dbg !4238
  %4 = load i8, i8* %3, align 1, !dbg !4242, !tbaa !774
  %5 = icmp eq i8 %4, 0, !dbg !4246
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), i8* %3, !dbg !4247
  call void @llvm.dbg.value(metadata i8* %6, metadata !4236, metadata !DIExpression()), !dbg !4238
  ret i8* %6, !dbg !4248
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4249 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4288, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 0, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 0, metadata !4291, metadata !DIExpression()), !dbg !4294
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4295
  call void @llvm.dbg.value(metadata i32 %2, metadata !4290, metadata !DIExpression()), !dbg !4296
  %3 = icmp slt i32 %2, 0, !dbg !4297
  br i1 %3, label %4, label %6, !dbg !4299

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4300
  br label %24, !dbg !4301

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4302
  %8 = icmp eq i32 %7, 0, !dbg !4302
  br i1 %8, label %13, label %9, !dbg !4304

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4305
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4306
  %12 = icmp eq i64 %11, -1, !dbg !4307
  br i1 %12, label %16, label %13, !dbg !4308

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4309
  %15 = icmp eq i32 %14, 0, !dbg !4309
  br i1 %15, label %16, label %18, !dbg !4310

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4289, metadata !DIExpression()), !dbg !4293
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4311
  call void @llvm.dbg.value(metadata i32 %21, metadata !4291, metadata !DIExpression()), !dbg !4294
  br label %24, !dbg !4312

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4313
  %20 = load i32, i32* %19, align 4, !dbg !4313, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 %20, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %20, metadata !4289, metadata !DIExpression()), !dbg !4293
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4311
  call void @llvm.dbg.value(metadata i32 %21, metadata !4291, metadata !DIExpression()), !dbg !4294
  %22 = icmp eq i32 %20, 0, !dbg !4314
  br i1 %22, label %24, label %23, !dbg !4312

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4316, !tbaa !1506
  call void @llvm.dbg.value(metadata i32 -1, metadata !4291, metadata !DIExpression()), !dbg !4294
  br label %24, !dbg !4318

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4319
  ret i32 %25, !dbg !4320
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4321 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4360, metadata !DIExpression()), !dbg !4361
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4362
  br i1 %2, label %6, label %3, !dbg !4364

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4365
  %5 = icmp eq i32 %4, 0, !dbg !4365
  br i1 %5, label %6, label %8, !dbg !4366

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4367
  br label %17, !dbg !4368

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4369, metadata !DIExpression()) #11, !dbg !4374
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4376
  %10 = load i32, i32* %9, align 8, !dbg !4376, !tbaa !4185
  %11 = and i32 %10, 256, !dbg !4378
  %12 = icmp eq i32 %11, 0, !dbg !4378
  br i1 %12, label %15, label %13, !dbg !4379

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4380
  br label %15, !dbg !4380

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4381
  br label %17, !dbg !4382

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4383
  ret i32 %18, !dbg !4384
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4385 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4424, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %1, metadata !4425, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i32 %2, metadata !4426, metadata !DIExpression()), !dbg !4432
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4433
  %5 = load i8*, i8** %4, align 8, !dbg !4433, !tbaa !4434
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4435
  %7 = load i8*, i8** %6, align 8, !dbg !4435, !tbaa !4436
  %8 = icmp eq i8* %5, %7, !dbg !4437
  br i1 %8, label %9, label %28, !dbg !4438

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4439
  %11 = load i8*, i8** %10, align 8, !dbg !4439, !tbaa !4440
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4441
  %13 = load i8*, i8** %12, align 8, !dbg !4441, !tbaa !4442
  %14 = icmp eq i8* %11, %13, !dbg !4443
  br i1 %14, label %15, label %28, !dbg !4444

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4445
  %17 = load i8*, i8** %16, align 8, !dbg !4445, !tbaa !4446
  %18 = icmp eq i8* %17, null, !dbg !4447
  br i1 %18, label %19, label %28, !dbg !4448

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4449
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4450
  call void @llvm.dbg.value(metadata i64 %21, metadata !4427, metadata !DIExpression()), !dbg !4451
  %22 = icmp eq i64 %21, -1, !dbg !4452
  br i1 %22, label %30, label %23, !dbg !4454

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4455
  %25 = load i32, i32* %24, align 8, !dbg !4456, !tbaa !4185
  %26 = and i32 %25, -17, !dbg !4456
  store i32 %26, i32* %24, align 8, !dbg !4456, !tbaa !4185
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4457
  store i64 %21, i64* %27, align 8, !dbg !4458, !tbaa !4459
  br label %30, !dbg !4460

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4461
  br label %30, !dbg !4462

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4463
  ret i32 %31, !dbg !4464
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { cold }

!llvm.dbg.cu = !{!144, !2, !178, !15, !180, !182, !23, !41, !50, !184, !137, !192, !209, !211, !213, !216, !218, !220, !609, !611, !613}
!llvm.ident = !{!615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615, !615}
!llvm.module.flags = !{!616, !617, !618, !619, !620}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !8, line: 46, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !8, line: 56, type: !9, isLocal: true, isDefinition: true)
!8 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "exit_failure", scope: !15, file: !18, line: 24, type: !19, isLocal: false, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17)
!16 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!17 = !{!13}
!18 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "long_options", scope: !23, file: !26, line: 33, type: !27, isLocal: true, isDefinition: true)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !25)
!24 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!25 = !{!21}
!26 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 768, elements: !37)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !30, line: 50, size: 256, elements: !31)
!30 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !{!32, !33, !34, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !30, line: 52, baseType: !10, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !29, file: !30, line: 55, baseType: !20, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !29, file: !30, line: 56, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !29, file: !30, line: 57, baseType: !20, size: 32, offset: 192)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "program_name", scope: !41, file: !47, line: 33, type: !10, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !46)
!42 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!46 = !{!39}
!47 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !50, file: !96, line: 85, type: !131, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !88, globals: !93)
!51 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!52 = !{!53, !68, !73}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !54, line: 32, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
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
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !54, line: 242, baseType: !55, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 46, baseType: !55, size: 32, elements: !75)
!74 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!88 = !{!20, !89, !90, !45}
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 62, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !{!48, !94, !101, !113, !115, !120, !127, !129}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !50, file: !96, line: 101, type: !97, isLocal: false, isDefinition: true)
!96 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 320, elements: !99)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!99 = !{!100}
!100 = !DISubrange(count: 10)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !50, file: !96, line: 1052, type: !103, isLocal: false, isDefinition: true)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !96, line: 65, size: 448, elements: !104)
!104 = !{!105, !106, !107, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !103, file: !96, line: 68, baseType: !53, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !96, line: 71, baseType: !20, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !103, file: !96, line: 75, baseType: !108, size: 256, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !103, file: !96, line: 78, baseType: !10, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !103, file: !96, line: 81, baseType: !10, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !50, file: !96, line: 116, type: !103, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !50, file: !96, line: 842, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !50, file: !96, line: 845, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !96, line: 834, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !96, line: 836, baseType: !90, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !96, line: 837, baseType: !45, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !50, file: !96, line: 843, type: !20, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !50, file: !96, line: 844, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !140, line: 26, type: !141, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139)
!138 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!139 = !{!135}
!140 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 376, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 47)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !155)
!145 = !DIFile(filename: "src/getlimits.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!146 = !{!147}
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 52, baseType: !55, size: 32, elements: !149)
!148 = !DIFile(filename: "./lib/ftoastr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !{!150, !151, !152, !153, !154}
!150 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8, isUnsigned: true)
!154 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16, isUnsigned: true)
!155 = !{!10, !44, !156, !160, !163, !166, !169, !172, !174, !176}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !157, line: 102, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !159, line: 72, baseType: !92)
!159 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !157, line: 101, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !159, line: 71, baseType: !162)
!162 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !164, line: 77, baseType: !165)
!164 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !159, line: 191, baseType: !162)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !167, line: 7, baseType: !168)
!167 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !159, line: 158, baseType: !162)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !170, line: 79, baseType: !171)
!170 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !159, line: 144, baseType: !55)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !170, line: 64, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !159, line: 145, baseType: !55)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !170, line: 97, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !159, line: 152, baseType: !20)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !164, line: 63, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !159, line: 150, baseType: !162)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!179 = !DIFile(filename: "./lib/dtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!181 = !DIFile(filename: "./lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!183 = !DIFile(filename: "./lib/ldtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !191)
!185 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 41, baseType: !55, size: 32, elements: !189)
!188 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!190}
!190 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!191 = !{!44}
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !208)
!193 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = !{!195}
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !197, file: !196, line: 186, baseType: !55, size: 32, elements: !206)
!196 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = distinct !DISubprogram(name: "x2nrealloc", scope: !196, file: !196, line: 174, type: !198, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !201)
!198 = !DISubroutineType(types: !199)
!199 = !{!44, !44, !200, !90}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!201 = !{!202, !203, !204, !205}
!202 = !DILocalVariable(name: "p", arg: 1, scope: !197, file: !196, line: 174, type: !44)
!203 = !DILocalVariable(name: "pn", arg: 2, scope: !197, file: !196, line: 174, type: !200)
!204 = !DILocalVariable(name: "s", arg: 3, scope: !197, file: !196, line: 174, type: !90)
!205 = !DILocalVariable(name: "n", scope: !197, file: !196, line: 176, type: !90)
!206 = !{!207}
!207 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!208 = !{!90, !45, !44}
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!210 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191)
!212 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !215)
!214 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!215 = !{!90}
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!217 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!219 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !191)
!221 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 41, baseType: !55, size: 32, elements: !225)
!224 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!226 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!227 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!228 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!234 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!264 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!265 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!266 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!267 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!268 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!269 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!270 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!271 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!272 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!273 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!275 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!334 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!421 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!495 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!496 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!497 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!498 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!499 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!500 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!502 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!503 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!504 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!505 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!506 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!507 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!508 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!541 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!542 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!543 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!544 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!545 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!550 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!551 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!552 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!553 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!610 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191)
!612 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191)
!614 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!615 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!616 = !{i32 2, !"Dwarf Version", i32 4}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{i32 1, !"wchar_size", i32 4}
!619 = !{i32 7, !"PIC Level", i32 2}
!620 = !{i32 7, !"PIE Level", i32 2}
!621 = distinct !DISubprogram(name: "usage", scope: !145, file: !145, line: 60, type: !622, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !144, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !20}
!624 = !{!625}
!625 = !DILocalVariable(name: "status", arg: 1, scope: !621, file: !145, line: 60, type: !20)
!626 = !DILocalVariable(name: "infomap", scope: !627, file: !628, line: 632, type: !642)
!627 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !628, file: !628, line: 630, type: !629, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !631)
!628 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!629 = !DISubroutineType(types: !630)
!630 = !{null, !10}
!631 = !{!632, !626, !633, !634, !641}
!632 = !DILocalVariable(name: "program", arg: 1, scope: !627, file: !628, line: 630, type: !10)
!633 = !DILocalVariable(name: "node", scope: !627, file: !628, line: 642, type: !10)
!634 = !DILocalVariable(name: "map_prog", scope: !627, file: !628, line: 643, type: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !627, file: !628, line: 632, size: 128, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !637, file: !628, line: 632, baseType: !10, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !628, line: 632, baseType: !10, size: 64, offset: 64)
!641 = !DILocalVariable(name: "lc_messages", scope: !627, file: !628, line: 655, type: !10)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 896, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 7)
!645 = !DILocation(line: 632, column: 67, scope: !627, inlinedAt: !646)
!646 = distinct !DILocation(line: 76, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !145, line: 65, column: 5)
!648 = distinct !DILexicalBlock(scope: !621, file: !145, line: 62, column: 7)
!649 = !DILocation(line: 60, column: 12, scope: !621)
!650 = !DILocation(line: 62, column: 14, scope: !648)
!651 = !DILocation(line: 62, column: 7, scope: !621)
!652 = !DILocation(line: 63, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !145, line: 63, column: 5)
!654 = !{!655, !655, i64 0}
!655 = !{!"any pointer", !656, i64 0}
!656 = !{!"omnipotent char", !657, i64 0}
!657 = !{!"Simple C/C++ TBAA"}
!658 = !DILocation(line: 66, column: 7, scope: !647)
!659 = !DILocation(line: 70, column: 7, scope: !647)
!660 = !DILocation(line: 74, column: 7, scope: !647)
!661 = !DILocation(line: 75, column: 7, scope: !647)
!662 = !DILocation(line: 632, column: 3, scope: !627, inlinedAt: !646)
!663 = !DILocation(line: 643, column: 36, scope: !627, inlinedAt: !646)
!664 = !DILocation(line: 643, column: 25, scope: !627, inlinedAt: !646)
!665 = !DILocation(line: 645, column: 33, scope: !627, inlinedAt: !646)
!666 = !DILocation(line: 645, column: 3, scope: !627, inlinedAt: !646)
!667 = !DILocation(line: 646, column: 13, scope: !627, inlinedAt: !646)
!668 = !DILocation(line: 645, column: 20, scope: !627, inlinedAt: !646)
!669 = !{!670, !655, i64 0}
!670 = !{!"infomap", !655, i64 0, !655, i64 8}
!671 = !DILocation(line: 645, column: 10, scope: !627, inlinedAt: !646)
!672 = !DILocation(line: 645, column: 28, scope: !627, inlinedAt: !646)
!673 = distinct !{!673, !674, !675}
!674 = !DILocation(line: 645, column: 3, scope: !627)
!675 = !DILocation(line: 646, column: 13, scope: !627)
!676 = !DILocation(line: 648, column: 17, scope: !677, inlinedAt: !646)
!677 = distinct !DILexicalBlock(scope: !627, file: !628, line: 648, column: 7)
!678 = !{!670, !655, i64 8}
!679 = !DILocation(line: 648, column: 7, scope: !677, inlinedAt: !646)
!680 = !DILocation(line: 648, column: 7, scope: !627, inlinedAt: !646)
!681 = !DILocation(line: 642, column: 15, scope: !627, inlinedAt: !646)
!682 = !DILocation(line: 651, column: 3, scope: !627, inlinedAt: !646)
!683 = !DILocation(line: 655, column: 29, scope: !627, inlinedAt: !646)
!684 = !DILocation(line: 655, column: 15, scope: !627, inlinedAt: !646)
!685 = !DILocation(line: 656, column: 7, scope: !686, inlinedAt: !646)
!686 = distinct !DILexicalBlock(scope: !627, file: !628, line: 656, column: 7)
!687 = !DILocation(line: 656, column: 19, scope: !686, inlinedAt: !646)
!688 = !DILocation(line: 656, column: 22, scope: !686, inlinedAt: !646)
!689 = !DILocation(line: 656, column: 7, scope: !627, inlinedAt: !646)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !646)
!691 = distinct !DILexicalBlock(scope: !686, file: !628, line: 657, column: 5)
!692 = !DILocation(line: 664, column: 5, scope: !691, inlinedAt: !646)
!693 = !DILocation(line: 665, column: 3, scope: !627, inlinedAt: !646)
!694 = !DILocation(line: 667, column: 3, scope: !627, inlinedAt: !646)
!695 = !DILocation(line: 669, column: 1, scope: !627, inlinedAt: !646)
!696 = !DILocation(line: 78, column: 3, scope: !621)
!697 = distinct !DISubprogram(name: "main", scope: !145, file: !145, line: 115, type: !698, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !701)
!698 = !DISubroutineType(types: !699)
!699 = !{!20, !20, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!701 = !{!702, !703, !704}
!702 = !DILocalVariable(name: "argc", arg: 1, scope: !697, file: !145, line: 115, type: !20)
!703 = !DILocalVariable(name: "argv", arg: 2, scope: !697, file: !145, line: 115, type: !700)
!704 = !DILocalVariable(name: "limit", scope: !697, file: !145, line: 117, type: !705)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 22)
!708 = !DILocalVariable(name: "buf", scope: !709, file: !145, line: 111, type: !715)
!709 = distinct !DISubprogram(name: "print_DBL", scope: !145, file: !145, line: 111, type: !710, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !713)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!713 = !{!714, !708}
!714 = !DILocalVariable(name: "x", arg: 1, scope: !709, file: !145, line: 111, type: !712)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 40)
!718 = !DILocation(line: 111, column: 1, scope: !709, inlinedAt: !719)
!719 = distinct !DILocation(line: 168, column: 3, scope: !697)
!720 = !DILocation(line: 111, column: 1, scope: !709, inlinedAt: !721)
!721 = distinct !DILocation(line: 168, column: 3, scope: !697)
!722 = !DILocalVariable(name: "buf", scope: !723, file: !145, line: 110, type: !729)
!723 = distinct !DISubprogram(name: "print_FLT", scope: !145, file: !145, line: 110, type: !724, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !727)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !726}
!726 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!727 = !{!728, !722}
!728 = !DILocalVariable(name: "x", arg: 1, scope: !723, file: !145, line: 110, type: !726)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 248, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 31)
!732 = !DILocation(line: 110, column: 1, scope: !723, inlinedAt: !733)
!733 = distinct !DILocation(line: 167, column: 3, scope: !697)
!734 = !DILocation(line: 110, column: 1, scope: !723, inlinedAt: !735)
!735 = distinct !DILocation(line: 167, column: 3, scope: !697)
!736 = !DILocalVariable(name: "buf", scope: !737, file: !145, line: 112, type: !743)
!737 = distinct !DISubprogram(name: "print_LDBL", scope: !145, file: !145, line: 112, type: !738, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !740}
!740 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!741 = !{!742, !736}
!742 = !DILocalVariable(name: "x", arg: 1, scope: !737, file: !145, line: 112, type: !740)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 360, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 45)
!746 = !DILocation(line: 112, column: 1, scope: !737, inlinedAt: !747)
!747 = distinct !DILocation(line: 169, column: 3, scope: !697)
!748 = !DILocation(line: 112, column: 1, scope: !737, inlinedAt: !749)
!749 = distinct !DILocation(line: 169, column: 3, scope: !697)
!750 = !DILocation(line: 115, column: 11, scope: !697)
!751 = !DILocation(line: 115, column: 24, scope: !697)
!752 = !DILocation(line: 117, column: 3, scope: !697)
!753 = !DILocation(line: 117, column: 8, scope: !697)
!754 = !DILocation(line: 121, column: 21, scope: !697)
!755 = !DILocation(line: 121, column: 3, scope: !697)
!756 = !DILocation(line: 122, column: 3, scope: !697)
!757 = !DILocation(line: 123, column: 3, scope: !697)
!758 = !DILocation(line: 124, column: 3, scope: !697)
!759 = !DILocation(line: 127, column: 3, scope: !697)
!760 = !DILocation(line: 129, column: 3, scope: !697)
!761 = !DILocation(line: 148, column: 3, scope: !697)
!762 = !DILocalVariable(name: "buf", arg: 1, scope: !763, file: !145, line: 86, type: !45)
!763 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !145, file: !145, line: 86, type: !764, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!10, !45}
!766 = !{!762, !767, !768, !769, !770}
!767 = !DILocalVariable(name: "negative", scope: !763, file: !145, line: 88, type: !9)
!768 = !DILocalVariable(name: "absnum", scope: !763, file: !145, line: 89, type: !45)
!769 = !DILocalVariable(name: "p", scope: !763, file: !145, line: 90, type: !45)
!770 = !DILocalVariable(name: "result", scope: !763, file: !145, line: 95, type: !45)
!771 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !772)
!772 = distinct !DILocation(line: 148, column: 3, scope: !697)
!773 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !772)
!774 = !{!656, !656, i64 0}
!775 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !772)
!776 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !772)
!777 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !772)
!778 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !772)
!779 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !772)
!780 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !772)
!781 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !772)
!782 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !772)
!783 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !772)
!784 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !772)
!785 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !772)
!786 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !772)
!787 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !772)
!788 = distinct !{!788, !789, !790}
!789 = !DILocation(line: 92, column: 3, scope: !763)
!790 = !DILocation(line: 93, column: 10, scope: !763)
!791 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !772)
!792 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !772)
!793 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !772)
!794 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !772)
!795 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !772)
!796 = distinct !DILexicalBlock(scope: !763, file: !145, line: 96, column: 7)
!797 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !772)
!798 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !772)
!799 = !DILocation(line: 0, scope: !763, inlinedAt: !772)
!800 = !DILocation(line: 148, column: 3, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !145, line: 148, column: 3)
!802 = distinct !DILexicalBlock(scope: !697, file: !145, line: 148, column: 3)
!803 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !804)
!804 = distinct !DILocation(line: 148, column: 3, scope: !801)
!805 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !804)
!806 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !804)
!807 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !804)
!808 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !804)
!809 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !804)
!810 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !804)
!811 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !804)
!812 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !804)
!813 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !804)
!814 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !804)
!815 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !804)
!816 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !804)
!817 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !804)
!818 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !804)
!819 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !804)
!820 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !804)
!821 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !804)
!822 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !804)
!823 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !804)
!824 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !804)
!825 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !804)
!826 = !DILocation(line: 0, scope: !763, inlinedAt: !804)
!827 = !DILocation(line: 149, column: 3, scope: !697)
!828 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !829)
!829 = distinct !DILocation(line: 149, column: 3, scope: !697)
!830 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !829)
!831 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !829)
!832 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !829)
!833 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !829)
!834 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !829)
!835 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !829)
!836 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !829)
!837 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !829)
!838 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !829)
!839 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !829)
!840 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !829)
!841 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !829)
!842 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !829)
!843 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !829)
!844 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !829)
!845 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !829)
!846 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !829)
!847 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !829)
!848 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !829)
!849 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !829)
!850 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !829)
!851 = !DILocation(line: 0, scope: !763, inlinedAt: !829)
!852 = !DILocation(line: 149, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !145, line: 149, column: 3)
!854 = distinct !DILexicalBlock(scope: !697, file: !145, line: 149, column: 3)
!855 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !856)
!856 = distinct !DILocation(line: 149, column: 3, scope: !853)
!857 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !856)
!858 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !856)
!859 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !856)
!860 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !856)
!861 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !856)
!862 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !856)
!863 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !856)
!864 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !856)
!865 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !856)
!866 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !856)
!867 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !856)
!868 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !856)
!869 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !856)
!870 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !856)
!871 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !856)
!872 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !856)
!873 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !856)
!874 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !856)
!875 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !856)
!876 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !856)
!877 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !856)
!878 = !DILocation(line: 0, scope: !763, inlinedAt: !856)
!879 = !DILocation(line: 150, column: 3, scope: !697)
!880 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !881)
!881 = distinct !DILocation(line: 150, column: 3, scope: !697)
!882 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !881)
!883 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !881)
!884 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !881)
!885 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !881)
!886 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !881)
!887 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !881)
!888 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !881)
!889 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !881)
!890 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !881)
!891 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !881)
!892 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !881)
!893 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !881)
!894 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !881)
!895 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !881)
!896 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !881)
!897 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !881)
!898 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !881)
!899 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !881)
!900 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !881)
!901 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !881)
!902 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !881)
!903 = !DILocation(line: 0, scope: !763, inlinedAt: !881)
!904 = !DILocation(line: 151, column: 3, scope: !697)
!905 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !906)
!906 = distinct !DILocation(line: 151, column: 3, scope: !697)
!907 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !906)
!908 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !906)
!909 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !906)
!910 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !906)
!911 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !906)
!912 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !906)
!913 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !906)
!914 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !906)
!915 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !906)
!916 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !906)
!917 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !906)
!918 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !906)
!919 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !906)
!920 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !906)
!921 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !906)
!922 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !906)
!923 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !906)
!924 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !906)
!925 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !906)
!926 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !906)
!927 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !906)
!928 = !DILocation(line: 0, scope: !763, inlinedAt: !906)
!929 = !DILocation(line: 151, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !145, line: 151, column: 3)
!931 = distinct !DILexicalBlock(scope: !697, file: !145, line: 151, column: 3)
!932 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !933)
!933 = distinct !DILocation(line: 151, column: 3, scope: !930)
!934 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !933)
!935 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !933)
!936 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !933)
!937 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !933)
!938 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !933)
!939 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !933)
!940 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !933)
!941 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !933)
!942 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !933)
!943 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !933)
!944 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !933)
!945 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !933)
!946 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !933)
!947 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !933)
!948 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !933)
!949 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !933)
!950 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !933)
!951 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !933)
!952 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !933)
!953 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !933)
!954 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !933)
!955 = !DILocation(line: 0, scope: !763, inlinedAt: !933)
!956 = !DILocation(line: 152, column: 3, scope: !697)
!957 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !958)
!958 = distinct !DILocation(line: 152, column: 3, scope: !697)
!959 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !958)
!960 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !958)
!961 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !958)
!962 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !958)
!963 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !958)
!964 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !958)
!965 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !958)
!966 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !958)
!967 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !958)
!968 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !958)
!969 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !958)
!970 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !958)
!971 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !958)
!972 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !958)
!973 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !958)
!974 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !958)
!975 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !958)
!976 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !958)
!977 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !958)
!978 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !958)
!979 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !958)
!980 = !DILocation(line: 0, scope: !763, inlinedAt: !958)
!981 = !DILocation(line: 152, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !145, line: 152, column: 3)
!983 = distinct !DILexicalBlock(scope: !697, file: !145, line: 152, column: 3)
!984 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !985)
!985 = distinct !DILocation(line: 152, column: 3, scope: !982)
!986 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !985)
!987 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !985)
!988 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !985)
!989 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !985)
!990 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !985)
!991 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !985)
!992 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !985)
!993 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !985)
!994 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !985)
!995 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !985)
!996 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !985)
!997 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !985)
!998 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !985)
!999 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !985)
!1000 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !985)
!1001 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !985)
!1002 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !985)
!1003 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !985)
!1004 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !985)
!1005 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !985)
!1006 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !985)
!1007 = !DILocation(line: 0, scope: !763, inlinedAt: !985)
!1008 = !DILocation(line: 153, column: 3, scope: !697)
!1009 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 153, column: 3, scope: !697)
!1011 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1010)
!1012 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1010)
!1013 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1010)
!1014 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1010)
!1015 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1010)
!1016 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1010)
!1017 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1010)
!1018 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1010)
!1019 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1010)
!1020 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1010)
!1021 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1010)
!1022 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1010)
!1023 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1010)
!1024 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1010)
!1025 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1010)
!1026 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1010)
!1027 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1010)
!1028 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1010)
!1029 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1010)
!1030 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1010)
!1031 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1010)
!1032 = !DILocation(line: 0, scope: !763, inlinedAt: !1010)
!1033 = !DILocation(line: 154, column: 3, scope: !697)
!1034 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 154, column: 3, scope: !697)
!1036 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1035)
!1037 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1035)
!1038 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1035)
!1039 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1035)
!1040 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1035)
!1041 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1035)
!1042 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1035)
!1043 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1035)
!1044 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1035)
!1045 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1035)
!1046 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1035)
!1047 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1035)
!1048 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1035)
!1049 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1035)
!1050 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1035)
!1051 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1035)
!1052 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1035)
!1053 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1035)
!1054 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1035)
!1055 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1035)
!1056 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1035)
!1057 = !DILocation(line: 0, scope: !763, inlinedAt: !1035)
!1058 = !DILocation(line: 154, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !145, line: 154, column: 3)
!1060 = distinct !DILexicalBlock(scope: !697, file: !145, line: 154, column: 3)
!1061 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 154, column: 3, scope: !1059)
!1063 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1062)
!1064 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1062)
!1065 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1062)
!1066 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1062)
!1067 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1062)
!1068 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1062)
!1069 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1062)
!1070 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1062)
!1071 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1062)
!1072 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1062)
!1073 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1062)
!1074 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1062)
!1075 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1062)
!1076 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1062)
!1077 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1062)
!1078 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1062)
!1079 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1062)
!1080 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1062)
!1081 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1062)
!1082 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1062)
!1083 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1062)
!1084 = !DILocation(line: 0, scope: !763, inlinedAt: !1062)
!1085 = !DILocation(line: 155, column: 3, scope: !697)
!1086 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 155, column: 3, scope: !697)
!1088 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1087)
!1089 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1087)
!1090 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1087)
!1091 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1087)
!1092 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1087)
!1093 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1087)
!1094 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1087)
!1095 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1087)
!1096 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1087)
!1097 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1087)
!1098 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1087)
!1099 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1087)
!1100 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1087)
!1101 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1087)
!1102 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1087)
!1103 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1087)
!1104 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1087)
!1105 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1087)
!1106 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1087)
!1107 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1087)
!1108 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1087)
!1109 = !DILocation(line: 0, scope: !763, inlinedAt: !1087)
!1110 = !DILocation(line: 156, column: 3, scope: !697)
!1111 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 156, column: 3, scope: !697)
!1113 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1112)
!1114 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1112)
!1115 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1112)
!1116 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1112)
!1117 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1112)
!1118 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1112)
!1119 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1112)
!1120 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1112)
!1121 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1112)
!1122 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1112)
!1123 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1112)
!1124 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1112)
!1125 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1112)
!1126 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1112)
!1127 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1112)
!1128 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1112)
!1129 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1112)
!1130 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1112)
!1131 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1112)
!1132 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1112)
!1133 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1112)
!1134 = !DILocation(line: 0, scope: !763, inlinedAt: !1112)
!1135 = !DILocation(line: 157, column: 3, scope: !697)
!1136 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 157, column: 3, scope: !697)
!1138 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1137)
!1139 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1137)
!1140 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1137)
!1141 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1137)
!1142 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1137)
!1143 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1137)
!1144 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1137)
!1145 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1137)
!1146 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1137)
!1147 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1137)
!1148 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1137)
!1149 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1137)
!1150 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1137)
!1151 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1137)
!1152 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1137)
!1153 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1137)
!1154 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1137)
!1155 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1137)
!1156 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1137)
!1157 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1137)
!1158 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1137)
!1159 = !DILocation(line: 0, scope: !763, inlinedAt: !1137)
!1160 = !DILocation(line: 157, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !145, line: 157, column: 3)
!1162 = distinct !DILexicalBlock(scope: !697, file: !145, line: 157, column: 3)
!1163 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 157, column: 3, scope: !1161)
!1165 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1164)
!1166 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1164)
!1167 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1164)
!1168 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1164)
!1169 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1164)
!1170 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1164)
!1171 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1164)
!1172 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1164)
!1173 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1164)
!1174 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1164)
!1175 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1164)
!1176 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1164)
!1177 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1164)
!1178 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1164)
!1179 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1164)
!1180 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1164)
!1181 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1164)
!1182 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1164)
!1183 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1164)
!1184 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1164)
!1185 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1164)
!1186 = !DILocation(line: 0, scope: !763, inlinedAt: !1164)
!1187 = !DILocation(line: 158, column: 3, scope: !697)
!1188 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 158, column: 3, scope: !697)
!1190 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1189)
!1191 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1189)
!1192 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1189)
!1193 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1189)
!1194 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1189)
!1195 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1189)
!1196 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1189)
!1197 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1189)
!1198 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1189)
!1199 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1189)
!1200 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1189)
!1201 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1189)
!1202 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1189)
!1203 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1189)
!1204 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1189)
!1205 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1189)
!1206 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1189)
!1207 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1189)
!1208 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1189)
!1209 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1189)
!1210 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1189)
!1211 = !DILocation(line: 0, scope: !763, inlinedAt: !1189)
!1212 = !DILocation(line: 158, column: 3, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !145, line: 158, column: 3)
!1214 = distinct !DILexicalBlock(scope: !697, file: !145, line: 158, column: 3)
!1215 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 158, column: 3, scope: !1213)
!1217 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1216)
!1218 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1216)
!1219 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1216)
!1220 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1216)
!1221 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1216)
!1222 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1216)
!1223 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1216)
!1224 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1216)
!1225 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1216)
!1226 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1216)
!1227 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1216)
!1228 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1216)
!1229 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1216)
!1230 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1216)
!1231 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1216)
!1232 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1216)
!1233 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1216)
!1234 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1216)
!1235 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1216)
!1236 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1216)
!1237 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1216)
!1238 = !DILocation(line: 0, scope: !763, inlinedAt: !1216)
!1239 = !DILocation(line: 159, column: 3, scope: !697)
!1240 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 159, column: 3, scope: !697)
!1242 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1241)
!1243 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1241)
!1244 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1241)
!1245 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1241)
!1246 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1241)
!1247 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1241)
!1248 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1241)
!1249 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1241)
!1250 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1241)
!1251 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1241)
!1252 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1241)
!1253 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1241)
!1254 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1241)
!1255 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1241)
!1256 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1241)
!1257 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1241)
!1258 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1241)
!1259 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1241)
!1260 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1241)
!1261 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1241)
!1262 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1241)
!1263 = !DILocation(line: 0, scope: !763, inlinedAt: !1241)
!1264 = !DILocation(line: 160, column: 3, scope: !697)
!1265 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 160, column: 3, scope: !697)
!1267 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1266)
!1268 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1266)
!1269 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1266)
!1270 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1266)
!1271 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1266)
!1272 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1266)
!1273 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1266)
!1274 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1266)
!1275 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1266)
!1276 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1266)
!1277 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1266)
!1278 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1266)
!1279 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1266)
!1280 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1266)
!1281 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1266)
!1282 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1266)
!1283 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1266)
!1284 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1266)
!1285 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1266)
!1286 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1266)
!1287 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1266)
!1288 = !DILocation(line: 0, scope: !763, inlinedAt: !1266)
!1289 = !DILocation(line: 161, column: 3, scope: !697)
!1290 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 161, column: 3, scope: !697)
!1292 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1291)
!1293 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1291)
!1294 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1291)
!1295 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1291)
!1296 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1291)
!1297 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1291)
!1298 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1291)
!1299 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1291)
!1300 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1291)
!1301 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1291)
!1302 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1291)
!1303 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1291)
!1304 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1291)
!1305 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1291)
!1306 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1291)
!1307 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1291)
!1308 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1291)
!1309 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1291)
!1310 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1291)
!1311 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1291)
!1312 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1291)
!1313 = !DILocation(line: 0, scope: !763, inlinedAt: !1291)
!1314 = !DILocation(line: 161, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !145, line: 161, column: 3)
!1316 = distinct !DILexicalBlock(scope: !697, file: !145, line: 161, column: 3)
!1317 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 161, column: 3, scope: !1315)
!1319 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1318)
!1320 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1318)
!1321 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1318)
!1322 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1318)
!1323 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1318)
!1324 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1318)
!1325 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1318)
!1326 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1318)
!1327 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1318)
!1328 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1318)
!1329 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1318)
!1330 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1318)
!1331 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1318)
!1332 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1318)
!1333 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1318)
!1334 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1318)
!1335 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1318)
!1336 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1318)
!1337 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1318)
!1338 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1318)
!1339 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1318)
!1340 = !DILocation(line: 0, scope: !763, inlinedAt: !1318)
!1341 = !DILocation(line: 162, column: 3, scope: !697)
!1342 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 162, column: 3, scope: !697)
!1344 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1343)
!1345 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1343)
!1346 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1343)
!1347 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1343)
!1348 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1343)
!1349 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1343)
!1350 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1343)
!1351 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1343)
!1352 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1343)
!1353 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1343)
!1354 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1343)
!1355 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1343)
!1356 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1343)
!1357 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1343)
!1358 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1343)
!1359 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1343)
!1360 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1343)
!1361 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1343)
!1362 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1343)
!1363 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1343)
!1364 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1343)
!1365 = !DILocation(line: 0, scope: !763, inlinedAt: !1343)
!1366 = !DILocation(line: 162, column: 3, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !145, line: 162, column: 3)
!1368 = distinct !DILexicalBlock(scope: !697, file: !145, line: 162, column: 3)
!1369 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 162, column: 3, scope: !1367)
!1371 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1370)
!1372 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1370)
!1373 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1370)
!1374 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1370)
!1375 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1370)
!1376 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1370)
!1377 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1370)
!1378 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1370)
!1379 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1370)
!1380 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1370)
!1381 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1370)
!1382 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1370)
!1383 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1370)
!1384 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1370)
!1385 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1370)
!1386 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1370)
!1387 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1370)
!1388 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1370)
!1389 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1370)
!1390 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1370)
!1391 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1370)
!1392 = !DILocation(line: 0, scope: !763, inlinedAt: !1370)
!1393 = !DILocation(line: 163, column: 3, scope: !697)
!1394 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 163, column: 3, scope: !697)
!1396 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1395)
!1397 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1395)
!1398 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1395)
!1399 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1395)
!1400 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1395)
!1401 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1395)
!1402 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1395)
!1403 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1395)
!1404 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1395)
!1405 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1395)
!1406 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1395)
!1407 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1395)
!1408 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1395)
!1409 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1395)
!1410 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1395)
!1411 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1395)
!1412 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1395)
!1413 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1395)
!1414 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1395)
!1415 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1395)
!1416 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1395)
!1417 = !DILocation(line: 0, scope: !763, inlinedAt: !1395)
!1418 = !DILocation(line: 163, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !145, line: 163, column: 3)
!1420 = distinct !DILexicalBlock(scope: !697, file: !145, line: 163, column: 3)
!1421 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 163, column: 3, scope: !1419)
!1423 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1422)
!1424 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1422)
!1425 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1422)
!1426 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1422)
!1427 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1422)
!1428 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1422)
!1429 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1422)
!1430 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1422)
!1431 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1422)
!1432 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1422)
!1433 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1422)
!1434 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1422)
!1435 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1422)
!1436 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1422)
!1437 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1422)
!1438 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1422)
!1439 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1422)
!1440 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1422)
!1441 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1422)
!1442 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1422)
!1443 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1422)
!1444 = !DILocation(line: 0, scope: !763, inlinedAt: !1422)
!1445 = !DILocation(line: 164, column: 3, scope: !697)
!1446 = !DILocation(line: 86, column: 31, scope: !763, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 164, column: 3, scope: !697)
!1448 = !DILocation(line: 88, column: 20, scope: !763, inlinedAt: !1447)
!1449 = !DILocation(line: 88, column: 27, scope: !763, inlinedAt: !1447)
!1450 = !DILocation(line: 89, column: 26, scope: !763, inlinedAt: !1447)
!1451 = !DILocation(line: 89, column: 9, scope: !763, inlinedAt: !1447)
!1452 = !DILocation(line: 90, column: 22, scope: !763, inlinedAt: !1447)
!1453 = !DILocation(line: 90, column: 20, scope: !763, inlinedAt: !1447)
!1454 = !DILocation(line: 90, column: 9, scope: !763, inlinedAt: !1447)
!1455 = !DILocation(line: 91, column: 3, scope: !763, inlinedAt: !1447)
!1456 = !DILocation(line: 91, column: 14, scope: !763, inlinedAt: !1447)
!1457 = !DILocation(line: 92, column: 11, scope: !763, inlinedAt: !1447)
!1458 = !DILocation(line: 92, column: 10, scope: !763, inlinedAt: !1447)
!1459 = !DILocation(line: 92, column: 15, scope: !763, inlinedAt: !1447)
!1460 = !DILocation(line: 92, column: 3, scope: !763, inlinedAt: !1447)
!1461 = !DILocation(line: 93, column: 8, scope: !763, inlinedAt: !1447)
!1462 = !DILocation(line: 94, column: 3, scope: !763, inlinedAt: !1447)
!1463 = !DILocation(line: 95, column: 18, scope: !763, inlinedAt: !1447)
!1464 = !DILocation(line: 95, column: 9, scope: !763, inlinedAt: !1447)
!1465 = !DILocation(line: 96, column: 7, scope: !763, inlinedAt: !1447)
!1466 = !DILocation(line: 97, column: 6, scope: !796, inlinedAt: !1447)
!1467 = !DILocation(line: 97, column: 15, scope: !796, inlinedAt: !1447)
!1468 = !DILocation(line: 97, column: 5, scope: !796, inlinedAt: !1447)
!1469 = !DILocation(line: 0, scope: !763, inlinedAt: !1447)
!1470 = !DILocation(line: 167, column: 3, scope: !697)
!1471 = !DILocation(line: 168, column: 3, scope: !697)
!1472 = !DILocation(line: 169, column: 3, scope: !697)
!1473 = !DILocation(line: 172, column: 1, scope: !697)
!1474 = !DILocation(line: 171, column: 3, scope: !697)
!1475 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !8, file: !8, line: 51, type: !629, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1476)
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "file", arg: 1, scope: !1475, file: !8, line: 51, type: !10)
!1478 = !DILocation(line: 51, column: 41, scope: !1475)
!1479 = !DILocation(line: 53, column: 13, scope: !1475)
!1480 = !DILocation(line: 54, column: 1, scope: !1475)
!1481 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !8, file: !8, line: 88, type: !1482, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !9}
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "ignore", arg: 1, scope: !1481, file: !8, line: 88, type: !9)
!1486 = !DILocation(line: 88, column: 37, scope: !1481)
!1487 = !DILocation(line: 90, column: 16, scope: !1481)
!1488 = !{!1489, !1489, i64 0}
!1489 = !{!"_Bool", !656, i64 0}
!1490 = !DILocation(line: 91, column: 1, scope: !1481)
!1491 = distinct !DISubprogram(name: "close_stdout", scope: !8, file: !8, line: 117, type: !1492, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null}
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "write_error", scope: !1496, file: !8, line: 122, type: !10)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !8, line: 121, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !8, line: 119, column: 7)
!1498 = !DILocation(line: 119, column: 21, scope: !1497)
!1499 = !DILocation(line: 119, column: 7, scope: !1497)
!1500 = !DILocation(line: 119, column: 29, scope: !1497)
!1501 = !DILocation(line: 120, column: 7, scope: !1497)
!1502 = !DILocation(line: 120, column: 12, scope: !1497)
!1503 = !{i8 0, i8 2}
!1504 = !DILocation(line: 120, column: 25, scope: !1497)
!1505 = !DILocation(line: 120, column: 28, scope: !1497)
!1506 = !{!1507, !1507, i64 0}
!1507 = !{!"int", !656, i64 0}
!1508 = !DILocation(line: 120, column: 34, scope: !1497)
!1509 = !DILocation(line: 119, column: 7, scope: !1491)
!1510 = !DILocation(line: 122, column: 33, scope: !1496)
!1511 = !DILocation(line: 122, column: 19, scope: !1496)
!1512 = !DILocation(line: 123, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1496, file: !8, line: 123, column: 11)
!1514 = !DILocation(line: 0, scope: !1513)
!1515 = !DILocation(line: 123, column: 11, scope: !1496)
!1516 = !DILocation(line: 124, column: 36, scope: !1513)
!1517 = !DILocation(line: 124, column: 9, scope: !1513)
!1518 = !DILocation(line: 127, column: 9, scope: !1513)
!1519 = !DILocation(line: 129, column: 14, scope: !1496)
!1520 = !DILocation(line: 129, column: 7, scope: !1496)
!1521 = !DILocation(line: 134, column: 42, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1491, file: !8, line: 134, column: 7)
!1523 = !DILocation(line: 134, column: 28, scope: !1522)
!1524 = !DILocation(line: 134, column: 50, scope: !1522)
!1525 = !DILocation(line: 134, column: 7, scope: !1491)
!1526 = !DILocation(line: 135, column: 12, scope: !1522)
!1527 = !DILocation(line: 135, column: 5, scope: !1522)
!1528 = !DILocation(line: 136, column: 1, scope: !1491)
!1529 = distinct !DISubprogram(name: "dtoastr", scope: !181, file: !181, line: 103, type: !1530, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!20, !45, !90, !20, !20, !712}
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541, !1542, !1543, !1544}
!1533 = !DILocalVariable(name: "buf", arg: 1, scope: !1529, file: !181, line: 103, type: !45)
!1534 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1529, file: !181, line: 103, type: !90)
!1535 = !DILocalVariable(name: "flags", arg: 3, scope: !1529, file: !181, line: 103, type: !20)
!1536 = !DILocalVariable(name: "width", arg: 4, scope: !1529, file: !181, line: 103, type: !20)
!1537 = !DILocalVariable(name: "x", arg: 5, scope: !1529, file: !181, line: 103, type: !712)
!1538 = !DILocalVariable(name: "promoted_x", scope: !1529, file: !181, line: 113, type: !712)
!1539 = !DILocalVariable(name: "format", scope: !1529, file: !181, line: 114, type: !1540)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !133)
!1541 = !DILocalVariable(name: "abs_x", scope: !1529, file: !181, line: 115, type: !712)
!1542 = !DILocalVariable(name: "prec", scope: !1529, file: !181, line: 116, type: !20)
!1543 = !DILocalVariable(name: "p", scope: !1529, file: !181, line: 118, type: !45)
!1544 = !DILocalVariable(name: "n", scope: !1545, file: !181, line: 136, type: !20)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !181, line: 135, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !181, line: 134, column: 3)
!1547 = distinct !DILexicalBlock(scope: !1529, file: !181, line: 134, column: 3)
!1548 = !DILocation(line: 103, column: 16, scope: !1529)
!1549 = !DILocation(line: 103, column: 28, scope: !1529)
!1550 = !DILocation(line: 103, column: 41, scope: !1529)
!1551 = !DILocation(line: 103, column: 52, scope: !1529)
!1552 = !DILocation(line: 103, column: 65, scope: !1529)
!1553 = !DILocation(line: 113, column: 18, scope: !1529)
!1554 = !DILocation(line: 114, column: 3, scope: !1529)
!1555 = !DILocation(line: 114, column: 8, scope: !1529)
!1556 = !DILocation(line: 115, column: 19, scope: !1529)
!1557 = !DILocation(line: 115, column: 25, scope: !1529)
!1558 = !DILocation(line: 115, column: 17, scope: !1529)
!1559 = !DILocation(line: 115, column: 9, scope: !1529)
!1560 = !DILocation(line: 118, column: 9, scope: !1529)
!1561 = !DILocation(line: 119, column: 5, scope: !1529)
!1562 = !DILocation(line: 119, column: 8, scope: !1529)
!1563 = !DILocation(line: 122, column: 6, scope: !1529)
!1564 = !DILocation(line: 122, column: 25, scope: !1529)
!1565 = !DILocation(line: 122, column: 15, scope: !1529)
!1566 = !DILocation(line: 123, column: 6, scope: !1529)
!1567 = !DILocation(line: 123, column: 51, scope: !1529)
!1568 = !DILocation(line: 123, column: 15, scope: !1529)
!1569 = !DILocation(line: 124, column: 6, scope: !1529)
!1570 = !DILocation(line: 124, column: 51, scope: !1529)
!1571 = !DILocation(line: 124, column: 15, scope: !1529)
!1572 = !DILocation(line: 125, column: 6, scope: !1529)
!1573 = !DILocation(line: 125, column: 51, scope: !1529)
!1574 = !DILocation(line: 125, column: 15, scope: !1529)
!1575 = !DILocation(line: 127, column: 5, scope: !1529)
!1576 = !DILocation(line: 127, column: 8, scope: !1529)
!1577 = !DILocation(line: 128, column: 5, scope: !1529)
!1578 = !DILocation(line: 128, column: 8, scope: !1529)
!1579 = !DILocation(line: 129, column: 5, scope: !1529)
!1580 = !DILocation(line: 129, column: 8, scope: !1529)
!1581 = !DILocation(line: 131, column: 16, scope: !1529)
!1582 = !DILocation(line: 131, column: 10, scope: !1529)
!1583 = !DILocation(line: 131, column: 5, scope: !1529)
!1584 = !DILocation(line: 131, column: 8, scope: !1529)
!1585 = !DILocation(line: 132, column: 6, scope: !1529)
!1586 = !DILocation(line: 134, column: 21, scope: !1547)
!1587 = !DILocation(line: 134, column: 15, scope: !1547)
!1588 = !DILocation(line: 116, column: 7, scope: !1529)
!1589 = !DILocation(line: 136, column: 15, scope: !1545)
!1590 = !DILocation(line: 136, column: 11, scope: !1545)
!1591 = !DILocation(line: 137, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1545, file: !181, line: 137, column: 11)
!1593 = !DILocation(line: 138, column: 11, scope: !1592)
!1594 = !DILocation(line: 139, column: 15, scope: !1592)
!1595 = !DILocation(line: 139, column: 17, scope: !1592)
!1596 = !DILocation(line: 139, column: 27, scope: !1592)
!1597 = !DILocation(line: 139, column: 30, scope: !1592)
!1598 = !DILocation(line: 139, column: 49, scope: !1592)
!1599 = !DILocation(line: 137, column: 11, scope: !1545)
!1600 = !DILocation(line: 134, column: 56, scope: !1546)
!1601 = !DILocation(line: 138, column: 31, scope: !1592)
!1602 = distinct !{!1602, !1603, !1604}
!1603 = !DILocation(line: 134, column: 3, scope: !1547)
!1604 = !DILocation(line: 141, column: 5, scope: !1547)
!1605 = !DILocation(line: 142, column: 1, scope: !1529)
!1606 = distinct !DISubprogram(name: "ftoastr", scope: !1607, file: !1607, line: 103, type: !1608, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !180, retainedNodes: !1610)
!1607 = !DIFile(filename: "lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!20, !45, !90, !20, !20, !726}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1611 = !DILocalVariable(name: "buf", arg: 1, scope: !1606, file: !1607, line: 103, type: !45)
!1612 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1606, file: !1607, line: 103, type: !90)
!1613 = !DILocalVariable(name: "flags", arg: 3, scope: !1606, file: !1607, line: 103, type: !20)
!1614 = !DILocalVariable(name: "width", arg: 4, scope: !1606, file: !1607, line: 103, type: !20)
!1615 = !DILocalVariable(name: "x", arg: 5, scope: !1606, file: !1607, line: 103, type: !726)
!1616 = !DILocalVariable(name: "promoted_x", scope: !1606, file: !1607, line: 113, type: !712)
!1617 = !DILocalVariable(name: "format", scope: !1606, file: !1607, line: 114, type: !1540)
!1618 = !DILocalVariable(name: "abs_x", scope: !1606, file: !1607, line: 115, type: !726)
!1619 = !DILocalVariable(name: "prec", scope: !1606, file: !1607, line: 116, type: !20)
!1620 = !DILocalVariable(name: "p", scope: !1606, file: !1607, line: 118, type: !45)
!1621 = !DILocalVariable(name: "n", scope: !1622, file: !1607, line: 136, type: !20)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1607, line: 135, column: 5)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !1607, line: 134, column: 3)
!1624 = distinct !DILexicalBlock(scope: !1606, file: !1607, line: 134, column: 3)
!1625 = !DILocation(line: 103, column: 16, scope: !1606)
!1626 = !DILocation(line: 103, column: 28, scope: !1606)
!1627 = !DILocation(line: 103, column: 41, scope: !1606)
!1628 = !DILocation(line: 103, column: 52, scope: !1606)
!1629 = !DILocation(line: 103, column: 65, scope: !1606)
!1630 = !DILocation(line: 113, column: 31, scope: !1606)
!1631 = !DILocation(line: 113, column: 18, scope: !1606)
!1632 = !DILocation(line: 114, column: 3, scope: !1606)
!1633 = !DILocation(line: 114, column: 8, scope: !1606)
!1634 = !DILocation(line: 115, column: 19, scope: !1606)
!1635 = !DILocation(line: 115, column: 25, scope: !1606)
!1636 = !DILocation(line: 115, column: 17, scope: !1606)
!1637 = !DILocation(line: 115, column: 9, scope: !1606)
!1638 = !DILocation(line: 118, column: 9, scope: !1606)
!1639 = !DILocation(line: 119, column: 5, scope: !1606)
!1640 = !DILocation(line: 119, column: 8, scope: !1606)
!1641 = !DILocation(line: 122, column: 6, scope: !1606)
!1642 = !DILocation(line: 122, column: 25, scope: !1606)
!1643 = !DILocation(line: 122, column: 15, scope: !1606)
!1644 = !DILocation(line: 123, column: 6, scope: !1606)
!1645 = !DILocation(line: 123, column: 51, scope: !1606)
!1646 = !DILocation(line: 123, column: 15, scope: !1606)
!1647 = !DILocation(line: 124, column: 6, scope: !1606)
!1648 = !DILocation(line: 124, column: 51, scope: !1606)
!1649 = !DILocation(line: 124, column: 15, scope: !1606)
!1650 = !DILocation(line: 125, column: 6, scope: !1606)
!1651 = !DILocation(line: 125, column: 51, scope: !1606)
!1652 = !DILocation(line: 125, column: 15, scope: !1606)
!1653 = !DILocation(line: 127, column: 5, scope: !1606)
!1654 = !DILocation(line: 127, column: 8, scope: !1606)
!1655 = !DILocation(line: 128, column: 5, scope: !1606)
!1656 = !DILocation(line: 128, column: 8, scope: !1606)
!1657 = !DILocation(line: 129, column: 5, scope: !1606)
!1658 = !DILocation(line: 129, column: 8, scope: !1606)
!1659 = !DILocation(line: 131, column: 16, scope: !1606)
!1660 = !DILocation(line: 131, column: 10, scope: !1606)
!1661 = !DILocation(line: 131, column: 5, scope: !1606)
!1662 = !DILocation(line: 131, column: 8, scope: !1606)
!1663 = !DILocation(line: 132, column: 6, scope: !1606)
!1664 = !DILocation(line: 134, column: 21, scope: !1624)
!1665 = !DILocation(line: 134, column: 15, scope: !1624)
!1666 = !DILocation(line: 116, column: 7, scope: !1606)
!1667 = !DILocation(line: 136, column: 15, scope: !1622)
!1668 = !DILocation(line: 136, column: 11, scope: !1622)
!1669 = !DILocation(line: 137, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1622, file: !1607, line: 137, column: 11)
!1671 = !DILocation(line: 138, column: 11, scope: !1670)
!1672 = !DILocation(line: 139, column: 15, scope: !1670)
!1673 = !DILocation(line: 139, column: 17, scope: !1670)
!1674 = !DILocation(line: 139, column: 27, scope: !1670)
!1675 = !DILocation(line: 139, column: 30, scope: !1670)
!1676 = !DILocation(line: 139, column: 49, scope: !1670)
!1677 = !DILocation(line: 137, column: 11, scope: !1622)
!1678 = !DILocation(line: 134, column: 56, scope: !1623)
!1679 = !DILocation(line: 138, column: 31, scope: !1670)
!1680 = distinct !{!1680, !1681, !1682}
!1681 = !DILocation(line: 134, column: 3, scope: !1624)
!1682 = !DILocation(line: 141, column: 5, scope: !1624)
!1683 = !DILocation(line: 142, column: 1, scope: !1606)
!1684 = distinct !DISubprogram(name: "ldtoastr", scope: !181, file: !181, line: 103, type: !1685, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !182, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!20, !45, !90, !20, !20, !740}
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1688 = !DILocalVariable(name: "buf", arg: 1, scope: !1684, file: !181, line: 103, type: !45)
!1689 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1684, file: !181, line: 103, type: !90)
!1690 = !DILocalVariable(name: "flags", arg: 3, scope: !1684, file: !181, line: 103, type: !20)
!1691 = !DILocalVariable(name: "width", arg: 4, scope: !1684, file: !181, line: 103, type: !20)
!1692 = !DILocalVariable(name: "x", arg: 5, scope: !1684, file: !181, line: 103, type: !740)
!1693 = !DILocalVariable(name: "promoted_x", scope: !1684, file: !181, line: 113, type: !740)
!1694 = !DILocalVariable(name: "format", scope: !1684, file: !181, line: 114, type: !1540)
!1695 = !DILocalVariable(name: "abs_x", scope: !1684, file: !181, line: 115, type: !740)
!1696 = !DILocalVariable(name: "prec", scope: !1684, file: !181, line: 116, type: !20)
!1697 = !DILocalVariable(name: "p", scope: !1684, file: !181, line: 118, type: !45)
!1698 = !DILocalVariable(name: "n", scope: !1699, file: !181, line: 136, type: !20)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !181, line: 135, column: 5)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !181, line: 134, column: 3)
!1701 = distinct !DILexicalBlock(scope: !1684, file: !181, line: 134, column: 3)
!1702 = !DILocation(line: 103, column: 16, scope: !1684)
!1703 = !DILocation(line: 103, column: 28, scope: !1684)
!1704 = !DILocation(line: 103, column: 41, scope: !1684)
!1705 = !DILocation(line: 103, column: 52, scope: !1684)
!1706 = !DILocation(line: 103, column: 65, scope: !1684)
!1707 = !DILocation(line: 113, column: 18, scope: !1684)
!1708 = !DILocation(line: 114, column: 3, scope: !1684)
!1709 = !DILocation(line: 114, column: 8, scope: !1684)
!1710 = !DILocation(line: 115, column: 19, scope: !1684)
!1711 = !DILocation(line: 115, column: 25, scope: !1684)
!1712 = !DILocation(line: 115, column: 17, scope: !1684)
!1713 = !DILocation(line: 115, column: 9, scope: !1684)
!1714 = !DILocation(line: 118, column: 9, scope: !1684)
!1715 = !DILocation(line: 119, column: 5, scope: !1684)
!1716 = !DILocation(line: 119, column: 8, scope: !1684)
!1717 = !DILocation(line: 122, column: 6, scope: !1684)
!1718 = !DILocation(line: 122, column: 25, scope: !1684)
!1719 = !DILocation(line: 122, column: 15, scope: !1684)
!1720 = !DILocation(line: 123, column: 6, scope: !1684)
!1721 = !DILocation(line: 123, column: 51, scope: !1684)
!1722 = !DILocation(line: 123, column: 15, scope: !1684)
!1723 = !DILocation(line: 124, column: 6, scope: !1684)
!1724 = !DILocation(line: 124, column: 51, scope: !1684)
!1725 = !DILocation(line: 124, column: 15, scope: !1684)
!1726 = !DILocation(line: 125, column: 6, scope: !1684)
!1727 = !DILocation(line: 125, column: 51, scope: !1684)
!1728 = !DILocation(line: 125, column: 15, scope: !1684)
!1729 = !DILocation(line: 127, column: 5, scope: !1684)
!1730 = !DILocation(line: 127, column: 8, scope: !1684)
!1731 = !DILocation(line: 128, column: 5, scope: !1684)
!1732 = !DILocation(line: 128, column: 8, scope: !1684)
!1733 = !DILocation(line: 129, column: 5, scope: !1684)
!1734 = !DILocation(line: 129, column: 8, scope: !1684)
!1735 = !DILocation(line: 130, column: 6, scope: !1684)
!1736 = !DILocation(line: 130, column: 15, scope: !1684)
!1737 = !DILocation(line: 131, column: 16, scope: !1684)
!1738 = !DILocation(line: 131, column: 10, scope: !1684)
!1739 = !DILocation(line: 131, column: 5, scope: !1684)
!1740 = !DILocation(line: 131, column: 8, scope: !1684)
!1741 = !DILocation(line: 132, column: 6, scope: !1684)
!1742 = !DILocation(line: 134, column: 21, scope: !1701)
!1743 = !DILocation(line: 134, column: 15, scope: !1701)
!1744 = !DILocation(line: 116, column: 7, scope: !1684)
!1745 = !DILocation(line: 136, column: 15, scope: !1699)
!1746 = !DILocation(line: 136, column: 11, scope: !1699)
!1747 = !DILocation(line: 137, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1699, file: !181, line: 137, column: 11)
!1749 = !DILocation(line: 138, column: 11, scope: !1748)
!1750 = !DILocation(line: 139, column: 15, scope: !1748)
!1751 = !DILocation(line: 139, column: 17, scope: !1748)
!1752 = !DILocation(line: 139, column: 27, scope: !1748)
!1753 = !DILocation(line: 139, column: 30, scope: !1748)
!1754 = !DILocation(line: 139, column: 49, scope: !1748)
!1755 = !DILocation(line: 137, column: 11, scope: !1699)
!1756 = !DILocation(line: 134, column: 56, scope: !1700)
!1757 = !DILocation(line: 138, column: 31, scope: !1748)
!1758 = distinct !{!1758, !1759, !1760}
!1759 = !DILocation(line: 134, column: 3, scope: !1701)
!1760 = !DILocation(line: 141, column: 5, scope: !1701)
!1761 = !DILocation(line: 142, column: 1, scope: !1684)
!1762 = distinct !DISubprogram(name: "parse_long_options", scope: !26, file: !26, line: 44, type: !1763, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !23, retainedNodes: !1766)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !20, !700, !10, !10, !10, !1765, null}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1767 = !DILocalVariable(name: "argc", arg: 1, scope: !1762, file: !26, line: 44, type: !20)
!1768 = !DILocalVariable(name: "argv", arg: 2, scope: !1762, file: !26, line: 45, type: !700)
!1769 = !DILocalVariable(name: "command_name", arg: 3, scope: !1762, file: !26, line: 46, type: !10)
!1770 = !DILocalVariable(name: "package", arg: 4, scope: !1762, file: !26, line: 47, type: !10)
!1771 = !DILocalVariable(name: "version", arg: 5, scope: !1762, file: !26, line: 48, type: !10)
!1772 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1762, file: !26, line: 49, type: !1765)
!1773 = !DILocalVariable(name: "c", scope: !1762, file: !26, line: 52, type: !20)
!1774 = !DILocalVariable(name: "saved_opterr", scope: !1762, file: !26, line: 53, type: !20)
!1775 = !DILocalVariable(name: "authors", scope: !1776, file: !26, line: 71, type: !1780)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !26, line: 70, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !26, line: 64, column: 9)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !26, line: 62, column: 5)
!1779 = distinct !DILexicalBlock(scope: !1762, file: !26, line: 60, column: 7)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !164, line: 52, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1782, line: 48, baseType: !1783)
!1782 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !24, line: 71, baseType: !1784)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, size: 192, elements: !1791)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !24, line: 71, size: 192, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1785, file: !24, line: 71, baseType: !55, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1785, file: !24, line: 71, baseType: !55, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1785, file: !24, line: 71, baseType: !44, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1785, file: !24, line: 71, baseType: !44, size: 64, offset: 128)
!1791 = !{!1792}
!1792 = !DISubrange(count: 1)
!1793 = !DILocation(line: 44, column: 25, scope: !1762)
!1794 = !DILocation(line: 45, column: 28, scope: !1762)
!1795 = !DILocation(line: 46, column: 33, scope: !1762)
!1796 = !DILocation(line: 47, column: 33, scope: !1762)
!1797 = !DILocation(line: 48, column: 33, scope: !1762)
!1798 = !DILocation(line: 49, column: 28, scope: !1762)
!1799 = !DILocation(line: 55, column: 18, scope: !1762)
!1800 = !DILocation(line: 53, column: 7, scope: !1762)
!1801 = !DILocation(line: 58, column: 10, scope: !1762)
!1802 = !DILocation(line: 60, column: 12, scope: !1779)
!1803 = !DILocation(line: 61, column: 7, scope: !1779)
!1804 = !DILocation(line: 61, column: 15, scope: !1779)
!1805 = !DILocation(line: 52, column: 7, scope: !1762)
!1806 = !DILocation(line: 60, column: 7, scope: !1762)
!1807 = !DILocation(line: 66, column: 11, scope: !1777)
!1808 = !DILocation(line: 67, column: 11, scope: !1777)
!1809 = !DILocation(line: 71, column: 13, scope: !1776)
!1810 = !DILocation(line: 71, column: 21, scope: !1776)
!1811 = !DILocation(line: 72, column: 13, scope: !1776)
!1812 = !DILocation(line: 73, column: 29, scope: !1776)
!1813 = !DILocation(line: 73, column: 13, scope: !1776)
!1814 = !DILocation(line: 74, column: 13, scope: !1776)
!1815 = !DILocation(line: 84, column: 10, scope: !1762)
!1816 = !DILocation(line: 88, column: 10, scope: !1762)
!1817 = !DILocation(line: 89, column: 1, scope: !1762)
!1818 = distinct !DISubprogram(name: "set_program_name", scope: !47, file: !47, line: 39, type: !629, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !41, retainedNodes: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "argv0", arg: 1, scope: !1818, file: !47, line: 39, type: !10)
!1821 = !DILocalVariable(name: "slash", scope: !1818, file: !47, line: 46, type: !10)
!1822 = !DILocalVariable(name: "base", scope: !1818, file: !47, line: 47, type: !10)
!1823 = !DILocation(line: 39, column: 31, scope: !1818)
!1824 = !DILocation(line: 51, column: 13, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !47, line: 51, column: 7)
!1826 = !DILocation(line: 51, column: 7, scope: !1818)
!1827 = !DILocation(line: 55, column: 14, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !47, line: 52, column: 5)
!1829 = !DILocation(line: 54, column: 7, scope: !1828)
!1830 = !DILocation(line: 56, column: 7, scope: !1828)
!1831 = !DILocation(line: 59, column: 11, scope: !1818)
!1832 = !DILocation(line: 46, column: 15, scope: !1818)
!1833 = !DILocation(line: 60, column: 17, scope: !1818)
!1834 = !DILocation(line: 60, column: 33, scope: !1818)
!1835 = !DILocation(line: 60, column: 11, scope: !1818)
!1836 = !DILocation(line: 47, column: 15, scope: !1818)
!1837 = !DILocation(line: 61, column: 12, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1818, file: !47, line: 61, column: 7)
!1839 = !DILocation(line: 61, column: 20, scope: !1838)
!1840 = !DILocation(line: 61, column: 25, scope: !1838)
!1841 = !DILocation(line: 61, column: 42, scope: !1838)
!1842 = !DILocation(line: 61, column: 28, scope: !1838)
!1843 = !DILocation(line: 61, column: 61, scope: !1838)
!1844 = !DILocation(line: 61, column: 7, scope: !1818)
!1845 = !DILocation(line: 64, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !47, line: 64, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !47, line: 62, column: 5)
!1848 = !DILocation(line: 64, column: 36, scope: !1846)
!1849 = !DILocation(line: 64, column: 11, scope: !1847)
!1850 = !DILocation(line: 66, column: 24, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !47, line: 65, column: 9)
!1852 = !DILocation(line: 70, column: 41, scope: !1851)
!1853 = !DILocation(line: 72, column: 9, scope: !1851)
!1854 = !DILocation(line: 84, column: 16, scope: !1818)
!1855 = !DILocation(line: 90, column: 27, scope: !1818)
!1856 = !DILocation(line: 92, column: 1, scope: !1818)
!1857 = distinct !DISubprogram(name: "clone_quoting_options", scope: !96, file: !96, line: 122, type: !1858, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1861)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1857, file: !96, line: 122, type: !1860)
!1863 = !DILocalVariable(name: "e", scope: !1857, file: !96, line: 124, type: !20)
!1864 = !DILocalVariable(name: "p", scope: !1857, file: !96, line: 125, type: !1860)
!1865 = !DILocation(line: 122, column: 48, scope: !1857)
!1866 = !DILocation(line: 124, column: 11, scope: !1857)
!1867 = !DILocation(line: 124, column: 7, scope: !1857)
!1868 = !DILocation(line: 125, column: 40, scope: !1857)
!1869 = !DILocation(line: 125, column: 31, scope: !1857)
!1870 = !DILocation(line: 125, column: 27, scope: !1857)
!1871 = !DILocation(line: 127, column: 9, scope: !1857)
!1872 = !DILocation(line: 128, column: 3, scope: !1857)
!1873 = distinct !DISubprogram(name: "get_quoting_style", scope: !96, file: !96, line: 133, type: !1874, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1878)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!53, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1878 = !{!1879}
!1879 = !DILocalVariable(name: "o", arg: 1, scope: !1873, file: !96, line: 133, type: !1876)
!1880 = !DILocation(line: 133, column: 50, scope: !1873)
!1881 = !DILocation(line: 135, column: 11, scope: !1873)
!1882 = !DILocation(line: 135, column: 46, scope: !1873)
!1883 = !{!1884, !656, i64 0}
!1884 = !{!"quoting_options", !656, i64 0, !1507, i64 4, !656, i64 8, !655, i64 40, !655, i64 48}
!1885 = !DILocation(line: 135, column: 3, scope: !1873)
!1886 = distinct !DISubprogram(name: "set_quoting_style", scope: !96, file: !96, line: 141, type: !1887, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1860, !53}
!1889 = !{!1890, !1891}
!1890 = !DILocalVariable(name: "o", arg: 1, scope: !1886, file: !96, line: 141, type: !1860)
!1891 = !DILocalVariable(name: "s", arg: 2, scope: !1886, file: !96, line: 141, type: !53)
!1892 = !DILocation(line: 141, column: 44, scope: !1886)
!1893 = !DILocation(line: 141, column: 66, scope: !1886)
!1894 = !DILocation(line: 143, column: 4, scope: !1886)
!1895 = !DILocation(line: 143, column: 39, scope: !1886)
!1896 = !DILocation(line: 143, column: 45, scope: !1886)
!1897 = !DILocation(line: 144, column: 1, scope: !1886)
!1898 = distinct !DISubprogram(name: "set_char_quoting", scope: !96, file: !96, line: 152, type: !1899, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!20, !1860, !12, !20}
!1901 = !{!1902, !1903, !1904, !1905, !1907, !1909, !1910}
!1902 = !DILocalVariable(name: "o", arg: 1, scope: !1898, file: !96, line: 152, type: !1860)
!1903 = !DILocalVariable(name: "c", arg: 2, scope: !1898, file: !96, line: 152, type: !12)
!1904 = !DILocalVariable(name: "i", arg: 3, scope: !1898, file: !96, line: 152, type: !20)
!1905 = !DILocalVariable(name: "uc", scope: !1898, file: !96, line: 154, type: !1906)
!1906 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1907 = !DILocalVariable(name: "p", scope: !1898, file: !96, line: 155, type: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1909 = !DILocalVariable(name: "shift", scope: !1898, file: !96, line: 157, type: !20)
!1910 = !DILocalVariable(name: "r", scope: !1898, file: !96, line: 158, type: !20)
!1911 = !DILocation(line: 152, column: 43, scope: !1898)
!1912 = !DILocation(line: 152, column: 51, scope: !1898)
!1913 = !DILocation(line: 152, column: 58, scope: !1898)
!1914 = !DILocation(line: 154, column: 17, scope: !1898)
!1915 = !DILocation(line: 156, column: 6, scope: !1898)
!1916 = !DILocation(line: 156, column: 62, scope: !1898)
!1917 = !DILocation(line: 156, column: 57, scope: !1898)
!1918 = !DILocation(line: 155, column: 17, scope: !1898)
!1919 = !DILocation(line: 157, column: 15, scope: !1898)
!1920 = !DILocation(line: 157, column: 7, scope: !1898)
!1921 = !DILocation(line: 158, column: 12, scope: !1898)
!1922 = !DILocation(line: 158, column: 15, scope: !1898)
!1923 = !DILocation(line: 158, column: 25, scope: !1898)
!1924 = !DILocation(line: 158, column: 7, scope: !1898)
!1925 = !DILocation(line: 159, column: 13, scope: !1898)
!1926 = !DILocation(line: 159, column: 18, scope: !1898)
!1927 = !DILocation(line: 159, column: 23, scope: !1898)
!1928 = !DILocation(line: 159, column: 6, scope: !1898)
!1929 = !DILocation(line: 160, column: 3, scope: !1898)
!1930 = distinct !DISubprogram(name: "set_quoting_flags", scope: !96, file: !96, line: 168, type: !1931, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!20, !1860, !20}
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "o", arg: 1, scope: !1930, file: !96, line: 168, type: !1860)
!1935 = !DILocalVariable(name: "i", arg: 2, scope: !1930, file: !96, line: 168, type: !20)
!1936 = !DILocalVariable(name: "r", scope: !1930, file: !96, line: 170, type: !20)
!1937 = !DILocation(line: 168, column: 44, scope: !1930)
!1938 = !DILocation(line: 168, column: 51, scope: !1930)
!1939 = !DILocation(line: 171, column: 8, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !96, line: 171, column: 7)
!1941 = !DILocation(line: 171, column: 7, scope: !1930)
!1942 = !DILocation(line: 173, column: 10, scope: !1930)
!1943 = !{!1884, !1507, i64 4}
!1944 = !DILocation(line: 170, column: 7, scope: !1930)
!1945 = !DILocation(line: 174, column: 12, scope: !1930)
!1946 = !DILocation(line: 175, column: 3, scope: !1930)
!1947 = distinct !DISubprogram(name: "set_custom_quoting", scope: !96, file: !96, line: 179, type: !1948, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1860, !10, !10}
!1950 = !{!1951, !1952, !1953}
!1951 = !DILocalVariable(name: "o", arg: 1, scope: !1947, file: !96, line: 179, type: !1860)
!1952 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1947, file: !96, line: 180, type: !10)
!1953 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1947, file: !96, line: 180, type: !10)
!1954 = !DILocation(line: 179, column: 45, scope: !1947)
!1955 = !DILocation(line: 180, column: 33, scope: !1947)
!1956 = !DILocation(line: 180, column: 57, scope: !1947)
!1957 = !DILocation(line: 182, column: 8, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1947, file: !96, line: 182, column: 7)
!1959 = !DILocation(line: 182, column: 7, scope: !1947)
!1960 = !DILocation(line: 184, column: 6, scope: !1947)
!1961 = !DILocation(line: 184, column: 12, scope: !1947)
!1962 = !DILocation(line: 185, column: 8, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !96, line: 185, column: 7)
!1964 = !DILocation(line: 185, column: 23, scope: !1963)
!1965 = !DILocation(line: 185, column: 19, scope: !1963)
!1966 = !DILocation(line: 186, column: 5, scope: !1963)
!1967 = !DILocation(line: 187, column: 6, scope: !1947)
!1968 = !DILocation(line: 187, column: 17, scope: !1947)
!1969 = !{!1884, !655, i64 40}
!1970 = !DILocation(line: 188, column: 6, scope: !1947)
!1971 = !DILocation(line: 188, column: 18, scope: !1947)
!1972 = !{!1884, !655, i64 48}
!1973 = !DILocation(line: 189, column: 1, scope: !1947)
!1974 = distinct !DISubprogram(name: "quotearg_buffer", scope: !96, file: !96, line: 784, type: !1975, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!90, !45, !90, !10, !90, !1876}
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1978 = !DILocalVariable(name: "buffer", arg: 1, scope: !1974, file: !96, line: 784, type: !45)
!1979 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1974, file: !96, line: 784, type: !90)
!1980 = !DILocalVariable(name: "arg", arg: 3, scope: !1974, file: !96, line: 785, type: !10)
!1981 = !DILocalVariable(name: "argsize", arg: 4, scope: !1974, file: !96, line: 785, type: !90)
!1982 = !DILocalVariable(name: "o", arg: 5, scope: !1974, file: !96, line: 786, type: !1876)
!1983 = !DILocalVariable(name: "p", scope: !1974, file: !96, line: 788, type: !1876)
!1984 = !DILocalVariable(name: "e", scope: !1974, file: !96, line: 789, type: !20)
!1985 = !DILocalVariable(name: "r", scope: !1974, file: !96, line: 790, type: !90)
!1986 = !DILocation(line: 784, column: 24, scope: !1974)
!1987 = !DILocation(line: 784, column: 39, scope: !1974)
!1988 = !DILocation(line: 785, column: 30, scope: !1974)
!1989 = !DILocation(line: 785, column: 42, scope: !1974)
!1990 = !DILocation(line: 786, column: 48, scope: !1974)
!1991 = !DILocation(line: 788, column: 37, scope: !1974)
!1992 = !DILocation(line: 788, column: 33, scope: !1974)
!1993 = !DILocation(line: 789, column: 11, scope: !1974)
!1994 = !DILocation(line: 789, column: 7, scope: !1974)
!1995 = !DILocation(line: 791, column: 43, scope: !1974)
!1996 = !DILocation(line: 791, column: 53, scope: !1974)
!1997 = !DILocation(line: 791, column: 60, scope: !1974)
!1998 = !DILocation(line: 792, column: 43, scope: !1974)
!1999 = !DILocation(line: 792, column: 58, scope: !1974)
!2000 = !DILocation(line: 790, column: 14, scope: !1974)
!2001 = !DILocation(line: 790, column: 10, scope: !1974)
!2002 = !DILocation(line: 793, column: 9, scope: !1974)
!2003 = !DILocation(line: 794, column: 3, scope: !1974)
!2004 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !96, file: !96, line: 256, type: !2005, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2009)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!90, !45, !90, !10, !90, !53, !20, !2007, !10, !10}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2034, !2035, !2036, !2037, !2038, !2041, !2042, !2060, !2063, !2064, !2071}
!2010 = !DILocalVariable(name: "buffer", arg: 1, scope: !2004, file: !96, line: 256, type: !45)
!2011 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2004, file: !96, line: 256, type: !90)
!2012 = !DILocalVariable(name: "arg", arg: 3, scope: !2004, file: !96, line: 257, type: !10)
!2013 = !DILocalVariable(name: "argsize", arg: 4, scope: !2004, file: !96, line: 257, type: !90)
!2014 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2004, file: !96, line: 258, type: !53)
!2015 = !DILocalVariable(name: "flags", arg: 6, scope: !2004, file: !96, line: 258, type: !20)
!2016 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2004, file: !96, line: 259, type: !2007)
!2017 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2004, file: !96, line: 260, type: !10)
!2018 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2004, file: !96, line: 261, type: !10)
!2019 = !DILocalVariable(name: "i", scope: !2004, file: !96, line: 263, type: !90)
!2020 = !DILocalVariable(name: "len", scope: !2004, file: !96, line: 264, type: !90)
!2021 = !DILocalVariable(name: "orig_buffersize", scope: !2004, file: !96, line: 265, type: !90)
!2022 = !DILocalVariable(name: "quote_string", scope: !2004, file: !96, line: 266, type: !10)
!2023 = !DILocalVariable(name: "quote_string_len", scope: !2004, file: !96, line: 267, type: !90)
!2024 = !DILocalVariable(name: "backslash_escapes", scope: !2004, file: !96, line: 268, type: !9)
!2025 = !DILocalVariable(name: "unibyte_locale", scope: !2004, file: !96, line: 269, type: !9)
!2026 = !DILocalVariable(name: "elide_outer_quotes", scope: !2004, file: !96, line: 270, type: !9)
!2027 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2004, file: !96, line: 271, type: !9)
!2028 = !DILocalVariable(name: "encountered_single_quote", scope: !2004, file: !96, line: 272, type: !9)
!2029 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2004, file: !96, line: 273, type: !9)
!2030 = !DILocalVariable(name: "c", scope: !2031, file: !96, line: 402, type: !1906)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !96, line: 401, column: 5)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !96, line: 400, column: 3)
!2033 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 400, column: 3)
!2034 = !DILocalVariable(name: "esc", scope: !2031, file: !96, line: 403, type: !1906)
!2035 = !DILocalVariable(name: "is_right_quote", scope: !2031, file: !96, line: 404, type: !9)
!2036 = !DILocalVariable(name: "escaping", scope: !2031, file: !96, line: 405, type: !9)
!2037 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2031, file: !96, line: 406, type: !9)
!2038 = !DILocalVariable(name: "m", scope: !2039, file: !96, line: 610, type: !90)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 608, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 426, column: 9)
!2041 = !DILocalVariable(name: "printable", scope: !2039, file: !96, line: 612, type: !9)
!2042 = !DILocalVariable(name: "mbstate", scope: !2043, file: !96, line: 621, type: !2045)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !96, line: 620, column: 15)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !96, line: 614, column: 17)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2046, line: 6, baseType: !2047)
!2046 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2048, line: 21, baseType: !2049)
!2048 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2048, line: 13, size: 64, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2049, file: !2048, line: 15, baseType: !20, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2049, file: !2048, line: 20, baseType: !2053, size: 32, offset: 32)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !2048, line: 16, size: 32, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2053, file: !2048, line: 18, baseType: !55, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2053, file: !2048, line: 19, baseType: !2057, size: 32)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 4)
!2060 = !DILocalVariable(name: "w", scope: !2061, file: !96, line: 631, type: !2062)
!2061 = distinct !DILexicalBlock(scope: !2043, file: !96, line: 630, column: 19)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !91, line: 90, baseType: !20)
!2063 = !DILocalVariable(name: "bytes", scope: !2061, file: !96, line: 632, type: !90)
!2064 = !DILocalVariable(name: "j", scope: !2065, file: !96, line: 657, type: !90)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !96, line: 656, column: 27)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !96, line: 654, column: 29)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !96, line: 649, column: 23)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !96, line: 641, column: 30)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !96, line: 636, column: 30)
!2070 = distinct !DILexicalBlock(scope: !2061, file: !96, line: 634, column: 25)
!2071 = !DILocalVariable(name: "ilim", scope: !2072, file: !96, line: 684, type: !90)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !96, line: 681, column: 15)
!2073 = distinct !DILexicalBlock(scope: !2039, file: !96, line: 680, column: 17)
!2074 = !DILocation(line: 256, column: 33, scope: !2004)
!2075 = !DILocation(line: 256, column: 48, scope: !2004)
!2076 = !DILocation(line: 257, column: 39, scope: !2004)
!2077 = !DILocation(line: 257, column: 51, scope: !2004)
!2078 = !DILocation(line: 258, column: 46, scope: !2004)
!2079 = !DILocation(line: 258, column: 65, scope: !2004)
!2080 = !DILocation(line: 259, column: 47, scope: !2004)
!2081 = !DILocation(line: 260, column: 39, scope: !2004)
!2082 = !DILocation(line: 261, column: 39, scope: !2004)
!2083 = !DILocation(line: 264, column: 10, scope: !2004)
!2084 = !DILocation(line: 265, column: 10, scope: !2004)
!2085 = !DILocation(line: 266, column: 15, scope: !2004)
!2086 = !DILocation(line: 267, column: 10, scope: !2004)
!2087 = !DILocation(line: 268, column: 8, scope: !2004)
!2088 = !DILocation(line: 269, column: 25, scope: !2004)
!2089 = !DILocation(line: 269, column: 36, scope: !2004)
!2090 = !DILocation(line: 270, column: 8, scope: !2004)
!2091 = !DILocation(line: 271, column: 8, scope: !2004)
!2092 = !DILocation(line: 272, column: 8, scope: !2004)
!2093 = !DILocation(line: 273, column: 8, scope: !2004)
!2094 = !DILocation(line: 273, column: 3, scope: !2004)
!2095 = !DILocation(line: 0, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 317, column: 5)
!2097 = !DILocation(line: 316, column: 3, scope: !2004)
!2098 = !DILocation(line: 323, column: 11, scope: !2096)
!2099 = !DILocation(line: 323, column: 12, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !96, line: 323, column: 11)
!2101 = !DILocation(line: 324, column: 9, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !96, line: 324, column: 9)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !96, line: 324, column: 9)
!2104 = !DILocation(line: 324, column: 9, scope: !2103)
!2105 = !DILocation(line: 362, column: 26, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !96, line: 340, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !96, line: 339, column: 13)
!2108 = distinct !DILexicalBlock(scope: !2096, file: !96, line: 338, column: 7)
!2109 = !DILocation(line: 363, column: 27, scope: !2106)
!2110 = !DILocation(line: 364, column: 11, scope: !2106)
!2111 = !DILocation(line: 365, column: 14, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !96, line: 365, column: 13)
!2113 = !DILocation(line: 365, column: 13, scope: !2108)
!2114 = !DILocation(line: 366, column: 43, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !96, line: 366, column: 11)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !96, line: 366, column: 11)
!2117 = !DILocation(line: 366, column: 11, scope: !2116)
!2118 = !DILocation(line: 367, column: 13, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !96, line: 367, column: 13)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !96, line: 367, column: 13)
!2121 = !DILocation(line: 367, column: 13, scope: !2120)
!2122 = !DILocation(line: 366, column: 70, scope: !2115)
!2123 = distinct !{!2123, !2117, !2124}
!2124 = !DILocation(line: 367, column: 13, scope: !2116)
!2125 = !DILocation(line: 370, column: 28, scope: !2108)
!2126 = !DILocation(line: 372, column: 7, scope: !2096)
!2127 = !DILocation(line: 376, column: 7, scope: !2096)
!2128 = !DILocation(line: 379, column: 7, scope: !2096)
!2129 = !DILocation(line: 381, column: 12, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2096, file: !96, line: 381, column: 11)
!2131 = !DILocation(line: 381, column: 11, scope: !2096)
!2132 = !DILocation(line: 0, scope: !2130)
!2133 = !DILocation(line: 386, column: 12, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2096, file: !96, line: 386, column: 11)
!2135 = !DILocation(line: 386, column: 11, scope: !2096)
!2136 = !DILocation(line: 387, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !96, line: 387, column: 9)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !96, line: 387, column: 9)
!2139 = !DILocation(line: 387, column: 9, scope: !2138)
!2140 = !DILocation(line: 394, column: 7, scope: !2096)
!2141 = !DILocation(line: 397, column: 7, scope: !2096)
!2142 = !DILocation(line: 0, scope: !2004)
!2143 = !DILocation(line: 263, column: 10, scope: !2004)
!2144 = !DILocation(line: 400, column: 8, scope: !2033)
!2145 = !DILocation(line: 0, scope: !2032)
!2146 = !DILocation(line: 400, column: 27, scope: !2032)
!2147 = !DILocation(line: 400, column: 19, scope: !2032)
!2148 = !DILocation(line: 400, column: 41, scope: !2032)
!2149 = !DILocation(line: 400, column: 48, scope: !2032)
!2150 = !DILocation(line: 400, column: 3, scope: !2033)
!2151 = !DILocation(line: 400, column: 60, scope: !2032)
!2152 = !DILocation(line: 404, column: 12, scope: !2031)
!2153 = !DILocation(line: 405, column: 12, scope: !2031)
!2154 = !DILocation(line: 406, column: 12, scope: !2031)
!2155 = !DILocation(line: 409, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 408, column: 11)
!2157 = !DILocation(line: 411, column: 17, scope: !2156)
!2158 = !DILocation(line: 412, column: 39, scope: !2156)
!2159 = !DILocation(line: 416, column: 32, scope: !2156)
!2160 = !DILocation(line: 412, column: 19, scope: !2156)
!2161 = !DILocation(line: 412, column: 15, scope: !2156)
!2162 = !DILocation(line: 417, column: 11, scope: !2156)
!2163 = !DILocation(line: 417, column: 26, scope: !2156)
!2164 = !DILocation(line: 417, column: 14, scope: !2156)
!2165 = !DILocation(line: 417, column: 63, scope: !2156)
!2166 = !DILocation(line: 408, column: 11, scope: !2031)
!2167 = !DILocation(line: 0, scope: !2031)
!2168 = !DILocation(line: 424, column: 11, scope: !2031)
!2169 = !DILocation(line: 402, column: 21, scope: !2031)
!2170 = !DILocation(line: 425, column: 7, scope: !2031)
!2171 = !DILocation(line: 428, column: 15, scope: !2040)
!2172 = !DILocation(line: 430, column: 15, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !96, line: 430, column: 15)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !96, line: 429, column: 13)
!2175 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 428, column: 15)
!2176 = !DILocation(line: 430, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !96, line: 430, column: 15)
!2178 = !DILocation(line: 430, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !96, line: 430, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !96, line: 430, column: 15)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !96, line: 430, column: 15)
!2182 = !DILocation(line: 430, column: 15, scope: !2180)
!2183 = !DILocation(line: 430, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !96, line: 430, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !96, line: 430, column: 15)
!2186 = !DILocation(line: 430, column: 15, scope: !2185)
!2187 = !DILocation(line: 430, column: 15, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !96, line: 430, column: 15)
!2189 = distinct !DILexicalBlock(scope: !2181, file: !96, line: 430, column: 15)
!2190 = !DILocation(line: 430, column: 15, scope: !2189)
!2191 = !DILocation(line: 430, column: 15, scope: !2181)
!2192 = !DILocation(line: 430, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !96, line: 430, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2173, file: !96, line: 430, column: 15)
!2195 = !DILocation(line: 430, column: 15, scope: !2194)
!2196 = !DILocation(line: 438, column: 19, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2174, file: !96, line: 437, column: 19)
!2198 = !DILocation(line: 438, column: 24, scope: !2197)
!2199 = !DILocation(line: 438, column: 28, scope: !2197)
!2200 = !DILocation(line: 438, column: 38, scope: !2197)
!2201 = !DILocation(line: 438, column: 48, scope: !2197)
!2202 = !DILocation(line: 438, column: 59, scope: !2197)
!2203 = !DILocation(line: 440, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !96, line: 440, column: 19)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !96, line: 440, column: 19)
!2206 = distinct !DILexicalBlock(scope: !2197, file: !96, line: 439, column: 17)
!2207 = !DILocation(line: 440, column: 19, scope: !2205)
!2208 = !DILocation(line: 441, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !96, line: 441, column: 19)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !96, line: 441, column: 19)
!2211 = !DILocation(line: 441, column: 19, scope: !2210)
!2212 = !DILocation(line: 442, column: 17, scope: !2206)
!2213 = !DILocation(line: 449, column: 20, scope: !2175)
!2214 = !DILocation(line: 454, column: 11, scope: !2040)
!2215 = !DILocation(line: 457, column: 19, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 455, column: 13)
!2217 = !DILocation(line: 463, column: 19, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2216, file: !96, line: 462, column: 19)
!2219 = !DILocation(line: 463, column: 24, scope: !2218)
!2220 = !DILocation(line: 463, column: 28, scope: !2218)
!2221 = !DILocation(line: 463, column: 38, scope: !2218)
!2222 = !DILocation(line: 463, column: 47, scope: !2218)
!2223 = !DILocation(line: 463, column: 41, scope: !2218)
!2224 = !DILocation(line: 463, column: 52, scope: !2218)
!2225 = !DILocation(line: 462, column: 19, scope: !2216)
!2226 = !DILocation(line: 464, column: 25, scope: !2218)
!2227 = !DILocation(line: 464, column: 17, scope: !2218)
!2228 = !DILocation(line: 471, column: 25, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2218, file: !96, line: 465, column: 19)
!2230 = !DILocation(line: 475, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !96, line: 475, column: 21)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !96, line: 475, column: 21)
!2233 = !DILocation(line: 475, column: 21, scope: !2232)
!2234 = !DILocation(line: 476, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !96, line: 476, column: 21)
!2236 = distinct !DILexicalBlock(scope: !2229, file: !96, line: 476, column: 21)
!2237 = !DILocation(line: 476, column: 21, scope: !2236)
!2238 = !DILocation(line: 477, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !96, line: 477, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2229, file: !96, line: 477, column: 21)
!2241 = !DILocation(line: 477, column: 21, scope: !2240)
!2242 = !DILocation(line: 478, column: 21, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 478, column: 21)
!2244 = distinct !DILexicalBlock(scope: !2229, file: !96, line: 478, column: 21)
!2245 = !DILocation(line: 478, column: 21, scope: !2244)
!2246 = !DILocation(line: 479, column: 21, scope: !2229)
!2247 = !DILocation(line: 403, column: 21, scope: !2031)
!2248 = !DILocation(line: 492, column: 31, scope: !2040)
!2249 = !DILocation(line: 493, column: 31, scope: !2040)
!2250 = !DILocation(line: 495, column: 31, scope: !2040)
!2251 = !DILocation(line: 496, column: 31, scope: !2040)
!2252 = !DILocation(line: 497, column: 31, scope: !2040)
!2253 = !DILocation(line: 500, column: 15, scope: !2040)
!2254 = !DILocation(line: 502, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !96, line: 501, column: 13)
!2256 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 500, column: 15)
!2257 = !DILocation(line: 509, column: 33, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 509, column: 15)
!2259 = !DILocation(line: 0, scope: !2040)
!2260 = !DILocation(line: 514, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 513, column: 15)
!2262 = !DILocation(line: 518, column: 15, scope: !2040)
!2263 = !DILocation(line: 526, column: 26, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 526, column: 15)
!2265 = !DILocation(line: 526, column: 15, scope: !2040)
!2266 = !DILocation(line: 526, column: 40, scope: !2264)
!2267 = !DILocation(line: 526, column: 47, scope: !2264)
!2268 = !DILocation(line: 530, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 530, column: 15)
!2270 = !DILocation(line: 526, column: 18, scope: !2264)
!2271 = !DILocation(line: 526, column: 65, scope: !2264)
!2272 = !DILocation(line: 530, column: 15, scope: !2040)
!2273 = !DILocation(line: 535, column: 11, scope: !2040)
!2274 = !DILocation(line: 549, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 548, column: 15)
!2276 = !DILocation(line: 556, column: 15, scope: !2040)
!2277 = !DILocation(line: 558, column: 19, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !96, line: 557, column: 13)
!2279 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 556, column: 15)
!2280 = !DILocation(line: 561, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !96, line: 561, column: 19)
!2282 = !DILocation(line: 561, column: 35, scope: !2281)
!2283 = !DILocation(line: 561, column: 30, scope: !2281)
!2284 = !DILocation(line: 570, column: 15, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !96, line: 570, column: 15)
!2286 = distinct !DILexicalBlock(scope: !2278, file: !96, line: 570, column: 15)
!2287 = !DILocation(line: 570, column: 15, scope: !2286)
!2288 = !DILocation(line: 571, column: 15, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !96, line: 571, column: 15)
!2290 = distinct !DILexicalBlock(scope: !2278, file: !96, line: 571, column: 15)
!2291 = !DILocation(line: 571, column: 15, scope: !2290)
!2292 = !DILocation(line: 572, column: 15, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !96, line: 572, column: 15)
!2294 = distinct !DILexicalBlock(scope: !2278, file: !96, line: 572, column: 15)
!2295 = !DILocation(line: 572, column: 15, scope: !2294)
!2296 = !DILocation(line: 574, column: 13, scope: !2278)
!2297 = !DILocation(line: 614, column: 17, scope: !2039)
!2298 = !DILocation(line: 610, column: 20, scope: !2039)
!2299 = !DILocation(line: 617, column: 29, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2044, file: !96, line: 615, column: 15)
!2301 = !{!2302, !2302, i64 0}
!2302 = !{!"short", !656, i64 0}
!2303 = !DILocation(line: 617, column: 27, scope: !2300)
!2304 = !DILocation(line: 612, column: 18, scope: !2039)
!2305 = !DILocation(line: 618, column: 15, scope: !2300)
!2306 = !DILocation(line: 621, column: 17, scope: !2043)
!2307 = !DILocation(line: 622, column: 17, scope: !2043)
!2308 = !DILocation(line: 626, column: 29, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2043, file: !96, line: 626, column: 21)
!2310 = !DILocation(line: 626, column: 21, scope: !2043)
!2311 = !DILocation(line: 627, column: 29, scope: !2309)
!2312 = !DILocation(line: 627, column: 19, scope: !2309)
!2313 = !DILocation(line: 0, scope: !2156)
!2314 = !DILocation(line: 629, column: 17, scope: !2043)
!2315 = !DILocation(line: 624, column: 19, scope: !2043)
!2316 = !DILocation(line: 625, column: 27, scope: !2043)
!2317 = !DILocation(line: 631, column: 21, scope: !2061)
!2318 = !DILocation(line: 632, column: 56, scope: !2061)
!2319 = !DILocation(line: 632, column: 50, scope: !2061)
!2320 = !DILocation(line: 633, column: 53, scope: !2061)
!2321 = !DILocation(line: 621, column: 27, scope: !2043)
!2322 = !DILocation(line: 631, column: 29, scope: !2061)
!2323 = !DILocation(line: 632, column: 36, scope: !2061)
!2324 = !DILocation(line: 632, column: 28, scope: !2061)
!2325 = !DILocation(line: 634, column: 25, scope: !2061)
!2326 = !DILocation(line: 644, column: 38, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2068, file: !96, line: 642, column: 23)
!2328 = !DILocation(line: 644, column: 48, scope: !2327)
!2329 = !DILocation(line: 644, column: 51, scope: !2327)
!2330 = !DILocation(line: 644, column: 25, scope: !2327)
!2331 = !DILocation(line: 645, column: 28, scope: !2327)
!2332 = !DILocation(line: 644, column: 34, scope: !2327)
!2333 = distinct !{!2333, !2330, !2331}
!2334 = !DILocation(line: 658, column: 43, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !96, line: 658, column: 29)
!2336 = distinct !DILexicalBlock(scope: !2065, file: !96, line: 658, column: 29)
!2337 = !DILocation(line: 655, column: 29, scope: !2066)
!2338 = !DILocation(line: 657, column: 36, scope: !2065)
!2339 = !DILocation(line: 659, column: 49, scope: !2335)
!2340 = !DILocation(line: 659, column: 39, scope: !2335)
!2341 = !DILocation(line: 659, column: 31, scope: !2335)
!2342 = !DILocation(line: 658, column: 53, scope: !2335)
!2343 = !DILocation(line: 658, column: 29, scope: !2336)
!2344 = distinct !{!2344, !2343, !2345}
!2345 = !DILocation(line: 667, column: 33, scope: !2336)
!2346 = !DILocation(line: 674, column: 19, scope: !2043)
!2347 = !DILocation(line: 670, column: 41, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2067, file: !96, line: 670, column: 29)
!2349 = !DILocation(line: 670, column: 31, scope: !2348)
!2350 = !DILocation(line: 670, column: 29, scope: !2067)
!2351 = !DILocation(line: 672, column: 27, scope: !2067)
!2352 = !DILocation(line: 675, column: 26, scope: !2043)
!2353 = !DILocation(line: 675, column: 24, scope: !2043)
!2354 = !DILocation(line: 674, column: 19, scope: !2061)
!2355 = distinct !{!2355, !2314, !2356}
!2356 = !DILocation(line: 675, column: 44, scope: !2043)
!2357 = !DILocation(line: 676, column: 15, scope: !2044)
!2358 = !DILocation(line: 0, scope: !2309)
!2359 = !DILocation(line: 0, scope: !2043)
!2360 = !DILocation(line: 678, column: 40, scope: !2039)
!2361 = !DILocation(line: 680, column: 19, scope: !2073)
!2362 = !DILocation(line: 680, column: 45, scope: !2073)
!2363 = !DILocation(line: 680, column: 23, scope: !2073)
!2364 = !DILocation(line: 684, column: 33, scope: !2072)
!2365 = !DILocation(line: 684, column: 24, scope: !2072)
!2366 = !DILocation(line: 686, column: 17, scope: !2072)
!2367 = !DILocation(line: 0, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !96, line: 687, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !96, line: 686, column: 17)
!2370 = distinct !DILexicalBlock(scope: !2072, file: !96, line: 686, column: 17)
!2371 = !DILocation(line: 0, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !96, line: 703, column: 21)
!2373 = !DILocation(line: 0, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !96, line: 696, column: 23)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !96, line: 695, column: 30)
!2376 = distinct !DILexicalBlock(scope: !2368, file: !96, line: 688, column: 25)
!2377 = !DILocation(line: 688, column: 43, scope: !2376)
!2378 = !DILocation(line: 690, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !96, line: 690, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !96, line: 689, column: 23)
!2381 = !DILocation(line: 690, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !96, line: 690, column: 25)
!2383 = !DILocation(line: 690, column: 25, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !96, line: 690, column: 25)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !96, line: 690, column: 25)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !96, line: 690, column: 25)
!2387 = !DILocation(line: 690, column: 25, scope: !2385)
!2388 = !DILocation(line: 690, column: 25, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !96, line: 690, column: 25)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !96, line: 690, column: 25)
!2391 = !DILocation(line: 690, column: 25, scope: !2390)
!2392 = !DILocation(line: 690, column: 25, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !96, line: 690, column: 25)
!2394 = distinct !DILexicalBlock(scope: !2386, file: !96, line: 690, column: 25)
!2395 = !DILocation(line: 690, column: 25, scope: !2394)
!2396 = !DILocation(line: 690, column: 25, scope: !2386)
!2397 = !DILocation(line: 690, column: 25, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !96, line: 690, column: 25)
!2399 = distinct !DILexicalBlock(scope: !2379, file: !96, line: 690, column: 25)
!2400 = !DILocation(line: 690, column: 25, scope: !2399)
!2401 = !DILocation(line: 691, column: 25, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !96, line: 691, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2380, file: !96, line: 691, column: 25)
!2404 = !DILocation(line: 691, column: 25, scope: !2403)
!2405 = !DILocation(line: 692, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !96, line: 692, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2380, file: !96, line: 692, column: 25)
!2408 = !DILocation(line: 692, column: 25, scope: !2407)
!2409 = !DILocation(line: 693, column: 38, scope: !2380)
!2410 = !DILocation(line: 693, column: 33, scope: !2380)
!2411 = !DILocation(line: 694, column: 23, scope: !2380)
!2412 = !DILocation(line: 695, column: 30, scope: !2375)
!2413 = !DILocation(line: 695, column: 30, scope: !2376)
!2414 = !DILocation(line: 697, column: 25, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !96, line: 697, column: 25)
!2416 = distinct !DILexicalBlock(scope: !2374, file: !96, line: 697, column: 25)
!2417 = !DILocation(line: 697, column: 25, scope: !2416)
!2418 = !DILocation(line: 699, column: 23, scope: !2374)
!2419 = !DILocation(line: 0, scope: !2407)
!2420 = !DILocation(line: 0, scope: !2380)
!2421 = !DILocation(line: 0, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2156, file: !96, line: 418, column: 9)
!2423 = !DILocation(line: 0, scope: !2379)
!2424 = !DILocation(line: 700, column: 35, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2368, file: !96, line: 700, column: 25)
!2426 = !DILocation(line: 700, column: 30, scope: !2425)
!2427 = !DILocation(line: 700, column: 25, scope: !2368)
!2428 = !DILocation(line: 702, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !96, line: 702, column: 21)
!2430 = distinct !DILexicalBlock(scope: !2368, file: !96, line: 702, column: 21)
!2431 = !DILocation(line: 702, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !96, line: 702, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !96, line: 702, column: 21)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !96, line: 702, column: 21)
!2435 = !DILocation(line: 702, column: 21, scope: !2433)
!2436 = !DILocation(line: 702, column: 21, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !96, line: 702, column: 21)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !96, line: 702, column: 21)
!2439 = !DILocation(line: 702, column: 21, scope: !2438)
!2440 = !DILocation(line: 702, column: 21, scope: !2434)
!2441 = !DILocation(line: 0, scope: !2416)
!2442 = !DILocation(line: 703, column: 21, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2372, file: !96, line: 703, column: 21)
!2444 = !DILocation(line: 703, column: 21, scope: !2372)
!2445 = !DILocation(line: 704, column: 25, scope: !2368)
!2446 = !DILocation(line: 686, column: 17, scope: !2369)
!2447 = distinct !{!2447, !2448, !2449}
!2448 = !DILocation(line: 686, column: 17, scope: !2370)
!2449 = !DILocation(line: 705, column: 19, scope: !2370)
!2450 = !DILocation(line: 0, scope: !2033)
!2451 = !DILocation(line: 416, column: 30, scope: !2156)
!2452 = !DILocation(line: 712, column: 34, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 712, column: 11)
!2454 = !DILocation(line: 714, column: 14, scope: !2453)
!2455 = !DILocation(line: 715, column: 14, scope: !2453)
!2456 = !DILocation(line: 715, column: 35, scope: !2453)
!2457 = !DILocation(line: 715, column: 17, scope: !2453)
!2458 = !DILocation(line: 715, column: 47, scope: !2453)
!2459 = !DILocation(line: 715, column: 65, scope: !2453)
!2460 = !DILocation(line: 716, column: 15, scope: !2453)
!2461 = !DILocation(line: 716, column: 11, scope: !2453)
!2462 = !DILocation(line: 712, column: 11, scope: !2031)
!2463 = !DILocation(line: 400, column: 10, scope: !2033)
!2464 = !DILocation(line: 0, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !96, line: 519, column: 13)
!2466 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 518, column: 15)
!2467 = !DILocation(line: 720, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 720, column: 7)
!2469 = !DILocation(line: 720, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !96, line: 720, column: 7)
!2471 = !DILocation(line: 720, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !96, line: 720, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !96, line: 720, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !96, line: 720, column: 7)
!2475 = !DILocation(line: 720, column: 7, scope: !2473)
!2476 = !DILocation(line: 720, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !96, line: 720, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !96, line: 720, column: 7)
!2479 = !DILocation(line: 720, column: 7, scope: !2478)
!2480 = !DILocation(line: 720, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !96, line: 720, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2474, file: !96, line: 720, column: 7)
!2483 = !DILocation(line: 720, column: 7, scope: !2482)
!2484 = !DILocation(line: 720, column: 7, scope: !2474)
!2485 = !DILocation(line: 720, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !96, line: 720, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2468, file: !96, line: 720, column: 7)
!2488 = !DILocation(line: 720, column: 7, scope: !2487)
!2489 = !DILocation(line: 723, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !96, line: 723, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 723, column: 7)
!2492 = !DILocation(line: 424, column: 9, scope: !2031)
!2493 = !DILocation(line: 723, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !96, line: 723, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !96, line: 723, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !96, line: 723, column: 7)
!2497 = !DILocation(line: 723, column: 7, scope: !2495)
!2498 = !DILocation(line: 723, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !96, line: 723, column: 7)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !96, line: 723, column: 7)
!2501 = !DILocation(line: 723, column: 7, scope: !2500)
!2502 = !DILocation(line: 723, column: 7, scope: !2496)
!2503 = !DILocation(line: 724, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !96, line: 724, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 724, column: 7)
!2506 = !DILocation(line: 724, column: 7, scope: !2505)
!2507 = !DILocation(line: 726, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2031, file: !96, line: 726, column: 11)
!2509 = !DILocation(line: 726, column: 11, scope: !2031)
!2510 = !DILocation(line: 728, column: 5, scope: !2032)
!2511 = !DILocation(line: 400, column: 75, scope: !2032)
!2512 = !DILocation(line: 400, column: 3, scope: !2032)
!2513 = distinct !{!2513, !2150, !2514}
!2514 = !DILocation(line: 728, column: 5, scope: !2033)
!2515 = !DILocation(line: 730, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 730, column: 7)
!2517 = !DILocation(line: 730, column: 16, scope: !2516)
!2518 = !DILocation(line: 738, column: 51, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 738, column: 7)
!2520 = !DILocation(line: 739, column: 10, scope: !2519)
!2521 = !DILocation(line: 741, column: 11, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !96, line: 741, column: 11)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !96, line: 740, column: 5)
!2524 = !DILocation(line: 741, column: 11, scope: !2523)
!2525 = !DILocation(line: 742, column: 16, scope: !2522)
!2526 = !DILocation(line: 742, column: 9, scope: !2522)
!2527 = !DILocation(line: 746, column: 18, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !96, line: 746, column: 16)
!2529 = !DILocation(line: 746, column: 32, scope: !2528)
!2530 = !DILocation(line: 746, column: 29, scope: !2528)
!2531 = !DILocation(line: 755, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 755, column: 7)
!2533 = !DILocation(line: 755, column: 20, scope: !2532)
!2534 = !DILocation(line: 756, column: 12, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !96, line: 756, column: 5)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !96, line: 756, column: 5)
!2537 = !DILocation(line: 756, column: 5, scope: !2536)
!2538 = !DILocation(line: 757, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !96, line: 757, column: 7)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !96, line: 757, column: 7)
!2541 = !DILocation(line: 757, column: 7, scope: !2540)
!2542 = !DILocation(line: 756, column: 39, scope: !2535)
!2543 = distinct !{!2543, !2537, !2544}
!2544 = !DILocation(line: 757, column: 7, scope: !2536)
!2545 = !DILocation(line: 759, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 759, column: 7)
!2547 = !DILocation(line: 759, column: 7, scope: !2004)
!2548 = !DILocation(line: 760, column: 5, scope: !2546)
!2549 = !DILocation(line: 760, column: 17, scope: !2546)
!2550 = !DILocation(line: 766, column: 21, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2004, file: !96, line: 766, column: 7)
!2552 = !DILocation(line: 766, column: 54, scope: !2551)
!2553 = !DILocation(line: 766, column: 51, scope: !2551)
!2554 = !DILocation(line: 770, column: 42, scope: !2004)
!2555 = !DILocation(line: 768, column: 10, scope: !2004)
!2556 = !DILocation(line: 768, column: 3, scope: !2004)
!2557 = !DILocation(line: 772, column: 1, scope: !2004)
!2558 = distinct !DISubprogram(name: "gettext_quote", scope: !96, file: !96, line: 207, type: !2559, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!10, !10, !53}
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "msgid", arg: 1, scope: !2558, file: !96, line: 207, type: !10)
!2563 = !DILocalVariable(name: "s", arg: 2, scope: !2558, file: !96, line: 207, type: !53)
!2564 = !DILocalVariable(name: "translation", scope: !2558, file: !96, line: 209, type: !10)
!2565 = !DILocalVariable(name: "locale_code", scope: !2558, file: !96, line: 210, type: !10)
!2566 = !DILocation(line: 207, column: 28, scope: !2558)
!2567 = !DILocation(line: 207, column: 54, scope: !2558)
!2568 = !DILocation(line: 209, column: 29, scope: !2558)
!2569 = !DILocation(line: 209, column: 15, scope: !2558)
!2570 = !DILocation(line: 212, column: 19, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2558, file: !96, line: 212, column: 7)
!2572 = !DILocation(line: 212, column: 7, scope: !2558)
!2573 = !DILocation(line: 233, column: 17, scope: !2558)
!2574 = !DILocation(line: 210, column: 15, scope: !2558)
!2575 = !DILocalVariable(name: "s1", arg: 1, scope: !2576, file: !2577, line: 160, type: !10)
!2576 = distinct !DISubprogram(name: "strcaseeq0", scope: !2577, file: !2577, line: 160, type: !2578, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2580)
!2577 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!2580 = !{!2575, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2581 = !DILocalVariable(name: "s2", arg: 2, scope: !2576, file: !2577, line: 160, type: !10)
!2582 = !DILocalVariable(name: "s20", arg: 3, scope: !2576, file: !2577, line: 160, type: !12)
!2583 = !DILocalVariable(name: "s21", arg: 4, scope: !2576, file: !2577, line: 160, type: !12)
!2584 = !DILocalVariable(name: "s22", arg: 5, scope: !2576, file: !2577, line: 160, type: !12)
!2585 = !DILocalVariable(name: "s23", arg: 6, scope: !2576, file: !2577, line: 160, type: !12)
!2586 = !DILocalVariable(name: "s24", arg: 7, scope: !2576, file: !2577, line: 160, type: !12)
!2587 = !DILocalVariable(name: "s25", arg: 8, scope: !2576, file: !2577, line: 160, type: !12)
!2588 = !DILocalVariable(name: "s26", arg: 9, scope: !2576, file: !2577, line: 160, type: !12)
!2589 = !DILocalVariable(name: "s27", arg: 10, scope: !2576, file: !2577, line: 160, type: !12)
!2590 = !DILocalVariable(name: "s28", arg: 11, scope: !2576, file: !2577, line: 160, type: !12)
!2591 = !DILocation(line: 160, column: 25, scope: !2576, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 234, column: 7, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2558, file: !96, line: 234, column: 7)
!2594 = !DILocation(line: 160, column: 41, scope: !2576, inlinedAt: !2592)
!2595 = !DILocation(line: 160, column: 50, scope: !2576, inlinedAt: !2592)
!2596 = !DILocation(line: 160, column: 60, scope: !2576, inlinedAt: !2592)
!2597 = !DILocation(line: 160, column: 70, scope: !2576, inlinedAt: !2592)
!2598 = !DILocation(line: 160, column: 80, scope: !2576, inlinedAt: !2592)
!2599 = !DILocation(line: 160, column: 90, scope: !2576, inlinedAt: !2592)
!2600 = !DILocation(line: 160, column: 100, scope: !2576, inlinedAt: !2592)
!2601 = !DILocation(line: 160, column: 110, scope: !2576, inlinedAt: !2592)
!2602 = !DILocation(line: 160, column: 120, scope: !2576, inlinedAt: !2592)
!2603 = !DILocation(line: 160, column: 130, scope: !2576, inlinedAt: !2592)
!2604 = !DILocation(line: 162, column: 7, scope: !2605, inlinedAt: !2592)
!2605 = distinct !DILexicalBlock(scope: !2576, file: !2577, line: 162, column: 7)
!2606 = !DILocalVariable(name: "s1", arg: 1, scope: !2607, file: !2577, line: 146, type: !10)
!2607 = distinct !DISubprogram(name: "strcaseeq1", scope: !2577, file: !2577, line: 146, type: !2608, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12}
!2610 = !{!2606, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2611 = !DILocalVariable(name: "s2", arg: 2, scope: !2607, file: !2577, line: 146, type: !10)
!2612 = !DILocalVariable(name: "s21", arg: 3, scope: !2607, file: !2577, line: 146, type: !12)
!2613 = !DILocalVariable(name: "s22", arg: 4, scope: !2607, file: !2577, line: 146, type: !12)
!2614 = !DILocalVariable(name: "s23", arg: 5, scope: !2607, file: !2577, line: 146, type: !12)
!2615 = !DILocalVariable(name: "s24", arg: 6, scope: !2607, file: !2577, line: 146, type: !12)
!2616 = !DILocalVariable(name: "s25", arg: 7, scope: !2607, file: !2577, line: 146, type: !12)
!2617 = !DILocalVariable(name: "s26", arg: 8, scope: !2607, file: !2577, line: 146, type: !12)
!2618 = !DILocalVariable(name: "s27", arg: 9, scope: !2607, file: !2577, line: 146, type: !12)
!2619 = !DILocalVariable(name: "s28", arg: 10, scope: !2607, file: !2577, line: 146, type: !12)
!2620 = !DILocation(line: 146, column: 25, scope: !2607, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 167, column: 16, scope: !2622, inlinedAt: !2592)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !2577, line: 164, column: 11)
!2623 = distinct !DILexicalBlock(scope: !2605, file: !2577, line: 163, column: 5)
!2624 = !DILocation(line: 146, column: 41, scope: !2607, inlinedAt: !2621)
!2625 = !DILocation(line: 146, column: 50, scope: !2607, inlinedAt: !2621)
!2626 = !DILocation(line: 146, column: 60, scope: !2607, inlinedAt: !2621)
!2627 = !DILocation(line: 146, column: 70, scope: !2607, inlinedAt: !2621)
!2628 = !DILocation(line: 146, column: 80, scope: !2607, inlinedAt: !2621)
!2629 = !DILocation(line: 146, column: 90, scope: !2607, inlinedAt: !2621)
!2630 = !DILocation(line: 146, column: 100, scope: !2607, inlinedAt: !2621)
!2631 = !DILocation(line: 146, column: 110, scope: !2607, inlinedAt: !2621)
!2632 = !DILocation(line: 146, column: 120, scope: !2607, inlinedAt: !2621)
!2633 = !DILocation(line: 148, column: 7, scope: !2634, inlinedAt: !2621)
!2634 = distinct !DILexicalBlock(scope: !2607, file: !2577, line: 148, column: 7)
!2635 = !DILocalVariable(name: "s1", arg: 1, scope: !2636, file: !2577, line: 132, type: !10)
!2636 = distinct !DISubprogram(name: "strcaseeq2", scope: !2577, file: !2577, line: 132, type: !2637, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12}
!2639 = !{!2635, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2640 = !DILocalVariable(name: "s2", arg: 2, scope: !2636, file: !2577, line: 132, type: !10)
!2641 = !DILocalVariable(name: "s22", arg: 3, scope: !2636, file: !2577, line: 132, type: !12)
!2642 = !DILocalVariable(name: "s23", arg: 4, scope: !2636, file: !2577, line: 132, type: !12)
!2643 = !DILocalVariable(name: "s24", arg: 5, scope: !2636, file: !2577, line: 132, type: !12)
!2644 = !DILocalVariable(name: "s25", arg: 6, scope: !2636, file: !2577, line: 132, type: !12)
!2645 = !DILocalVariable(name: "s26", arg: 7, scope: !2636, file: !2577, line: 132, type: !12)
!2646 = !DILocalVariable(name: "s27", arg: 8, scope: !2636, file: !2577, line: 132, type: !12)
!2647 = !DILocalVariable(name: "s28", arg: 9, scope: !2636, file: !2577, line: 132, type: !12)
!2648 = !DILocation(line: 132, column: 25, scope: !2636, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 153, column: 16, scope: !2650, inlinedAt: !2621)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !2577, line: 150, column: 11)
!2651 = distinct !DILexicalBlock(scope: !2634, file: !2577, line: 149, column: 5)
!2652 = !DILocation(line: 132, column: 41, scope: !2636, inlinedAt: !2649)
!2653 = !DILocation(line: 132, column: 50, scope: !2636, inlinedAt: !2649)
!2654 = !DILocation(line: 132, column: 60, scope: !2636, inlinedAt: !2649)
!2655 = !DILocation(line: 132, column: 70, scope: !2636, inlinedAt: !2649)
!2656 = !DILocation(line: 132, column: 80, scope: !2636, inlinedAt: !2649)
!2657 = !DILocation(line: 132, column: 90, scope: !2636, inlinedAt: !2649)
!2658 = !DILocation(line: 132, column: 100, scope: !2636, inlinedAt: !2649)
!2659 = !DILocation(line: 132, column: 110, scope: !2636, inlinedAt: !2649)
!2660 = !DILocation(line: 134, column: 7, scope: !2661, inlinedAt: !2649)
!2661 = distinct !DILexicalBlock(scope: !2636, file: !2577, line: 134, column: 7)
!2662 = !DILocalVariable(name: "s1", arg: 1, scope: !2663, file: !2577, line: 118, type: !10)
!2663 = distinct !DISubprogram(name: "strcaseeq3", scope: !2577, file: !2577, line: 118, type: !2664, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12}
!2666 = !{!2662, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2667 = !DILocalVariable(name: "s2", arg: 2, scope: !2663, file: !2577, line: 118, type: !10)
!2668 = !DILocalVariable(name: "s23", arg: 3, scope: !2663, file: !2577, line: 118, type: !12)
!2669 = !DILocalVariable(name: "s24", arg: 4, scope: !2663, file: !2577, line: 118, type: !12)
!2670 = !DILocalVariable(name: "s25", arg: 5, scope: !2663, file: !2577, line: 118, type: !12)
!2671 = !DILocalVariable(name: "s26", arg: 6, scope: !2663, file: !2577, line: 118, type: !12)
!2672 = !DILocalVariable(name: "s27", arg: 7, scope: !2663, file: !2577, line: 118, type: !12)
!2673 = !DILocalVariable(name: "s28", arg: 8, scope: !2663, file: !2577, line: 118, type: !12)
!2674 = !DILocation(line: 118, column: 25, scope: !2663, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 139, column: 16, scope: !2676, inlinedAt: !2649)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !2577, line: 136, column: 11)
!2677 = distinct !DILexicalBlock(scope: !2661, file: !2577, line: 135, column: 5)
!2678 = !DILocation(line: 118, column: 41, scope: !2663, inlinedAt: !2675)
!2679 = !DILocation(line: 118, column: 50, scope: !2663, inlinedAt: !2675)
!2680 = !DILocation(line: 118, column: 60, scope: !2663, inlinedAt: !2675)
!2681 = !DILocation(line: 118, column: 70, scope: !2663, inlinedAt: !2675)
!2682 = !DILocation(line: 118, column: 80, scope: !2663, inlinedAt: !2675)
!2683 = !DILocation(line: 118, column: 90, scope: !2663, inlinedAt: !2675)
!2684 = !DILocation(line: 118, column: 100, scope: !2663, inlinedAt: !2675)
!2685 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2675)
!2686 = distinct !DILexicalBlock(scope: !2663, file: !2577, line: 120, column: 7)
!2687 = !DILocation(line: 120, column: 7, scope: !2663, inlinedAt: !2675)
!2688 = !DILocalVariable(name: "s1", arg: 1, scope: !2689, file: !2577, line: 104, type: !10)
!2689 = distinct !DISubprogram(name: "strcaseeq4", scope: !2577, file: !2577, line: 104, type: !2690, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!20, !10, !10, !12, !12, !12, !12, !12}
!2692 = !{!2688, !2693, !2694, !2695, !2696, !2697, !2698}
!2693 = !DILocalVariable(name: "s2", arg: 2, scope: !2689, file: !2577, line: 104, type: !10)
!2694 = !DILocalVariable(name: "s24", arg: 3, scope: !2689, file: !2577, line: 104, type: !12)
!2695 = !DILocalVariable(name: "s25", arg: 4, scope: !2689, file: !2577, line: 104, type: !12)
!2696 = !DILocalVariable(name: "s26", arg: 5, scope: !2689, file: !2577, line: 104, type: !12)
!2697 = !DILocalVariable(name: "s27", arg: 6, scope: !2689, file: !2577, line: 104, type: !12)
!2698 = !DILocalVariable(name: "s28", arg: 7, scope: !2689, file: !2577, line: 104, type: !12)
!2699 = !DILocation(line: 104, column: 25, scope: !2689, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 125, column: 16, scope: !2701, inlinedAt: !2675)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !2577, line: 122, column: 11)
!2702 = distinct !DILexicalBlock(scope: !2686, file: !2577, line: 121, column: 5)
!2703 = !DILocation(line: 104, column: 41, scope: !2689, inlinedAt: !2700)
!2704 = !DILocation(line: 104, column: 50, scope: !2689, inlinedAt: !2700)
!2705 = !DILocation(line: 104, column: 60, scope: !2689, inlinedAt: !2700)
!2706 = !DILocation(line: 104, column: 70, scope: !2689, inlinedAt: !2700)
!2707 = !DILocation(line: 104, column: 80, scope: !2689, inlinedAt: !2700)
!2708 = !DILocation(line: 104, column: 90, scope: !2689, inlinedAt: !2700)
!2709 = !DILocation(line: 106, column: 7, scope: !2710, inlinedAt: !2700)
!2710 = distinct !DILexicalBlock(scope: !2689, file: !2577, line: 106, column: 7)
!2711 = !DILocation(line: 106, column: 7, scope: !2689, inlinedAt: !2700)
!2712 = !DILocalVariable(name: "s1", arg: 1, scope: !2713, file: !2577, line: 90, type: !10)
!2713 = distinct !DISubprogram(name: "strcaseeq5", scope: !2577, file: !2577, line: 90, type: !2714, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!20, !10, !10, !12, !12, !12, !12}
!2716 = !{!2712, !2717, !2718, !2719, !2720, !2721}
!2717 = !DILocalVariable(name: "s2", arg: 2, scope: !2713, file: !2577, line: 90, type: !10)
!2718 = !DILocalVariable(name: "s25", arg: 3, scope: !2713, file: !2577, line: 90, type: !12)
!2719 = !DILocalVariable(name: "s26", arg: 4, scope: !2713, file: !2577, line: 90, type: !12)
!2720 = !DILocalVariable(name: "s27", arg: 5, scope: !2713, file: !2577, line: 90, type: !12)
!2721 = !DILocalVariable(name: "s28", arg: 6, scope: !2713, file: !2577, line: 90, type: !12)
!2722 = !DILocation(line: 90, column: 25, scope: !2713, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 111, column: 16, scope: !2724, inlinedAt: !2700)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !2577, line: 108, column: 11)
!2725 = distinct !DILexicalBlock(scope: !2710, file: !2577, line: 107, column: 5)
!2726 = !DILocation(line: 90, column: 41, scope: !2713, inlinedAt: !2723)
!2727 = !DILocation(line: 90, column: 50, scope: !2713, inlinedAt: !2723)
!2728 = !DILocation(line: 90, column: 60, scope: !2713, inlinedAt: !2723)
!2729 = !DILocation(line: 90, column: 70, scope: !2713, inlinedAt: !2723)
!2730 = !DILocation(line: 90, column: 80, scope: !2713, inlinedAt: !2723)
!2731 = !DILocation(line: 92, column: 7, scope: !2732, inlinedAt: !2723)
!2732 = distinct !DILexicalBlock(scope: !2713, file: !2577, line: 92, column: 7)
!2733 = !DILocation(line: 92, column: 7, scope: !2713, inlinedAt: !2723)
!2734 = !DILocation(line: 235, column: 12, scope: !2593)
!2735 = !DILocation(line: 235, column: 21, scope: !2593)
!2736 = !DILocation(line: 235, column: 5, scope: !2593)
!2737 = !DILocation(line: 146, column: 25, scope: !2607, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 167, column: 16, scope: !2622, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 236, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2558, file: !96, line: 236, column: 7)
!2741 = !DILocation(line: 146, column: 41, scope: !2607, inlinedAt: !2738)
!2742 = !DILocation(line: 146, column: 50, scope: !2607, inlinedAt: !2738)
!2743 = !DILocation(line: 146, column: 60, scope: !2607, inlinedAt: !2738)
!2744 = !DILocation(line: 146, column: 70, scope: !2607, inlinedAt: !2738)
!2745 = !DILocation(line: 146, column: 80, scope: !2607, inlinedAt: !2738)
!2746 = !DILocation(line: 146, column: 90, scope: !2607, inlinedAt: !2738)
!2747 = !DILocation(line: 146, column: 100, scope: !2607, inlinedAt: !2738)
!2748 = !DILocation(line: 146, column: 110, scope: !2607, inlinedAt: !2738)
!2749 = !DILocation(line: 146, column: 120, scope: !2607, inlinedAt: !2738)
!2750 = !DILocation(line: 148, column: 7, scope: !2634, inlinedAt: !2738)
!2751 = !DILocation(line: 132, column: 25, scope: !2636, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 153, column: 16, scope: !2650, inlinedAt: !2738)
!2753 = !DILocation(line: 132, column: 41, scope: !2636, inlinedAt: !2752)
!2754 = !DILocation(line: 132, column: 50, scope: !2636, inlinedAt: !2752)
!2755 = !DILocation(line: 132, column: 60, scope: !2636, inlinedAt: !2752)
!2756 = !DILocation(line: 132, column: 70, scope: !2636, inlinedAt: !2752)
!2757 = !DILocation(line: 132, column: 80, scope: !2636, inlinedAt: !2752)
!2758 = !DILocation(line: 132, column: 90, scope: !2636, inlinedAt: !2752)
!2759 = !DILocation(line: 132, column: 100, scope: !2636, inlinedAt: !2752)
!2760 = !DILocation(line: 132, column: 110, scope: !2636, inlinedAt: !2752)
!2761 = !DILocation(line: 134, column: 7, scope: !2661, inlinedAt: !2752)
!2762 = !DILocation(line: 134, column: 7, scope: !2636, inlinedAt: !2752)
!2763 = !DILocation(line: 118, column: 25, scope: !2663, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 139, column: 16, scope: !2676, inlinedAt: !2752)
!2765 = !DILocation(line: 118, column: 41, scope: !2663, inlinedAt: !2764)
!2766 = !DILocation(line: 118, column: 50, scope: !2663, inlinedAt: !2764)
!2767 = !DILocation(line: 118, column: 60, scope: !2663, inlinedAt: !2764)
!2768 = !DILocation(line: 118, column: 70, scope: !2663, inlinedAt: !2764)
!2769 = !DILocation(line: 118, column: 80, scope: !2663, inlinedAt: !2764)
!2770 = !DILocation(line: 118, column: 90, scope: !2663, inlinedAt: !2764)
!2771 = !DILocation(line: 118, column: 100, scope: !2663, inlinedAt: !2764)
!2772 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2764)
!2773 = !DILocation(line: 120, column: 7, scope: !2663, inlinedAt: !2764)
!2774 = !DILocation(line: 104, column: 25, scope: !2689, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 125, column: 16, scope: !2701, inlinedAt: !2764)
!2776 = !DILocation(line: 104, column: 41, scope: !2689, inlinedAt: !2775)
!2777 = !DILocation(line: 104, column: 50, scope: !2689, inlinedAt: !2775)
!2778 = !DILocation(line: 104, column: 60, scope: !2689, inlinedAt: !2775)
!2779 = !DILocation(line: 104, column: 70, scope: !2689, inlinedAt: !2775)
!2780 = !DILocation(line: 104, column: 80, scope: !2689, inlinedAt: !2775)
!2781 = !DILocation(line: 104, column: 90, scope: !2689, inlinedAt: !2775)
!2782 = !DILocation(line: 106, column: 7, scope: !2710, inlinedAt: !2775)
!2783 = !DILocation(line: 106, column: 7, scope: !2689, inlinedAt: !2775)
!2784 = !DILocation(line: 90, column: 25, scope: !2713, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 111, column: 16, scope: !2724, inlinedAt: !2775)
!2786 = !DILocation(line: 90, column: 41, scope: !2713, inlinedAt: !2785)
!2787 = !DILocation(line: 90, column: 50, scope: !2713, inlinedAt: !2785)
!2788 = !DILocation(line: 90, column: 60, scope: !2713, inlinedAt: !2785)
!2789 = !DILocation(line: 90, column: 70, scope: !2713, inlinedAt: !2785)
!2790 = !DILocation(line: 90, column: 80, scope: !2713, inlinedAt: !2785)
!2791 = !DILocation(line: 92, column: 7, scope: !2732, inlinedAt: !2785)
!2792 = !DILocation(line: 92, column: 7, scope: !2713, inlinedAt: !2785)
!2793 = !DILocalVariable(name: "s1", arg: 1, scope: !2794, file: !2577, line: 76, type: !10)
!2794 = distinct !DISubprogram(name: "strcaseeq6", scope: !2577, file: !2577, line: 76, type: !2795, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!20, !10, !10, !12, !12, !12}
!2797 = !{!2793, !2798, !2799, !2800, !2801}
!2798 = !DILocalVariable(name: "s2", arg: 2, scope: !2794, file: !2577, line: 76, type: !10)
!2799 = !DILocalVariable(name: "s26", arg: 3, scope: !2794, file: !2577, line: 76, type: !12)
!2800 = !DILocalVariable(name: "s27", arg: 4, scope: !2794, file: !2577, line: 76, type: !12)
!2801 = !DILocalVariable(name: "s28", arg: 5, scope: !2794, file: !2577, line: 76, type: !12)
!2802 = !DILocation(line: 76, column: 25, scope: !2794, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 97, column: 16, scope: !2804, inlinedAt: !2785)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !2577, line: 94, column: 11)
!2805 = distinct !DILexicalBlock(scope: !2732, file: !2577, line: 93, column: 5)
!2806 = !DILocation(line: 76, column: 41, scope: !2794, inlinedAt: !2803)
!2807 = !DILocation(line: 76, column: 50, scope: !2794, inlinedAt: !2803)
!2808 = !DILocation(line: 76, column: 60, scope: !2794, inlinedAt: !2803)
!2809 = !DILocation(line: 76, column: 70, scope: !2794, inlinedAt: !2803)
!2810 = !DILocation(line: 78, column: 7, scope: !2811, inlinedAt: !2803)
!2811 = distinct !DILexicalBlock(scope: !2794, file: !2577, line: 78, column: 7)
!2812 = !DILocation(line: 78, column: 7, scope: !2794, inlinedAt: !2803)
!2813 = !DILocalVariable(name: "s1", arg: 1, scope: !2814, file: !2577, line: 62, type: !10)
!2814 = distinct !DISubprogram(name: "strcaseeq7", scope: !2577, file: !2577, line: 62, type: !2815, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!20, !10, !10, !12, !12}
!2817 = !{!2813, !2818, !2819, !2820}
!2818 = !DILocalVariable(name: "s2", arg: 2, scope: !2814, file: !2577, line: 62, type: !10)
!2819 = !DILocalVariable(name: "s27", arg: 3, scope: !2814, file: !2577, line: 62, type: !12)
!2820 = !DILocalVariable(name: "s28", arg: 4, scope: !2814, file: !2577, line: 62, type: !12)
!2821 = !DILocation(line: 62, column: 25, scope: !2814, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 83, column: 16, scope: !2823, inlinedAt: !2803)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !2577, line: 80, column: 11)
!2824 = distinct !DILexicalBlock(scope: !2811, file: !2577, line: 79, column: 5)
!2825 = !DILocation(line: 62, column: 41, scope: !2814, inlinedAt: !2822)
!2826 = !DILocation(line: 62, column: 50, scope: !2814, inlinedAt: !2822)
!2827 = !DILocation(line: 62, column: 60, scope: !2814, inlinedAt: !2822)
!2828 = !DILocation(line: 64, column: 7, scope: !2829, inlinedAt: !2822)
!2829 = distinct !DILexicalBlock(scope: !2814, file: !2577, line: 64, column: 7)
!2830 = !DILocation(line: 236, column: 7, scope: !2558)
!2831 = !DILocation(line: 237, column: 12, scope: !2740)
!2832 = !DILocation(line: 237, column: 21, scope: !2740)
!2833 = !DILocation(line: 237, column: 5, scope: !2740)
!2834 = !DILocation(line: 239, column: 13, scope: !2558)
!2835 = !DILocation(line: 239, column: 11, scope: !2558)
!2836 = !DILocation(line: 239, column: 3, scope: !2558)
!2837 = !DILocation(line: 0, scope: !2558)
!2838 = !DILocation(line: 240, column: 1, scope: !2558)
!2839 = distinct !DISubprogram(name: "quotearg_alloc", scope: !96, file: !96, line: 799, type: !2840, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!45, !10, !90, !1876}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "arg", arg: 1, scope: !2839, file: !96, line: 799, type: !10)
!2844 = !DILocalVariable(name: "argsize", arg: 2, scope: !2839, file: !96, line: 799, type: !90)
!2845 = !DILocalVariable(name: "o", arg: 3, scope: !2839, file: !96, line: 800, type: !1876)
!2846 = !DILocation(line: 799, column: 29, scope: !2839)
!2847 = !DILocation(line: 799, column: 41, scope: !2839)
!2848 = !DILocation(line: 800, column: 47, scope: !2839)
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !96, line: 812, type: !10)
!2850 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !96, file: !96, line: 812, type: !2851, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!45, !10, !90, !200, !1876}
!2853 = !{!2849, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2854 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !96, line: 812, type: !90)
!2855 = !DILocalVariable(name: "size", arg: 3, scope: !2850, file: !96, line: 812, type: !200)
!2856 = !DILocalVariable(name: "o", arg: 4, scope: !2850, file: !96, line: 813, type: !1876)
!2857 = !DILocalVariable(name: "p", scope: !2850, file: !96, line: 815, type: !1876)
!2858 = !DILocalVariable(name: "e", scope: !2850, file: !96, line: 816, type: !20)
!2859 = !DILocalVariable(name: "flags", scope: !2850, file: !96, line: 818, type: !20)
!2860 = !DILocalVariable(name: "bufsize", scope: !2850, file: !96, line: 819, type: !90)
!2861 = !DILocalVariable(name: "buf", scope: !2850, file: !96, line: 823, type: !45)
!2862 = !DILocation(line: 812, column: 33, scope: !2850, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 802, column: 10, scope: !2839)
!2864 = !DILocation(line: 812, column: 45, scope: !2850, inlinedAt: !2863)
!2865 = !DILocation(line: 812, column: 62, scope: !2850, inlinedAt: !2863)
!2866 = !DILocation(line: 813, column: 51, scope: !2850, inlinedAt: !2863)
!2867 = !DILocation(line: 815, column: 37, scope: !2850, inlinedAt: !2863)
!2868 = !DILocation(line: 815, column: 33, scope: !2850, inlinedAt: !2863)
!2869 = !DILocation(line: 816, column: 11, scope: !2850, inlinedAt: !2863)
!2870 = !DILocation(line: 816, column: 7, scope: !2850, inlinedAt: !2863)
!2871 = !DILocation(line: 818, column: 18, scope: !2850, inlinedAt: !2863)
!2872 = !DILocation(line: 818, column: 24, scope: !2850, inlinedAt: !2863)
!2873 = !DILocation(line: 818, column: 7, scope: !2850, inlinedAt: !2863)
!2874 = !DILocation(line: 819, column: 69, scope: !2850, inlinedAt: !2863)
!2875 = !DILocation(line: 820, column: 53, scope: !2850, inlinedAt: !2863)
!2876 = !DILocation(line: 821, column: 49, scope: !2850, inlinedAt: !2863)
!2877 = !DILocation(line: 822, column: 49, scope: !2850, inlinedAt: !2863)
!2878 = !DILocation(line: 819, column: 20, scope: !2850, inlinedAt: !2863)
!2879 = !DILocation(line: 822, column: 62, scope: !2850, inlinedAt: !2863)
!2880 = !DILocation(line: 819, column: 10, scope: !2850, inlinedAt: !2863)
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !196, line: 216, type: !90)
!2882 = distinct !DISubprogram(name: "xcharalloc", scope: !196, file: !196, line: 216, type: !2883, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!45, !90}
!2885 = !{!2881}
!2886 = !DILocation(line: 216, column: 20, scope: !2882, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 823, column: 15, scope: !2850, inlinedAt: !2863)
!2888 = !DILocation(line: 218, column: 10, scope: !2882, inlinedAt: !2887)
!2889 = !DILocation(line: 823, column: 9, scope: !2850, inlinedAt: !2863)
!2890 = !DILocation(line: 824, column: 60, scope: !2850, inlinedAt: !2863)
!2891 = !DILocation(line: 826, column: 32, scope: !2850, inlinedAt: !2863)
!2892 = !DILocation(line: 826, column: 47, scope: !2850, inlinedAt: !2863)
!2893 = !DILocation(line: 824, column: 3, scope: !2850, inlinedAt: !2863)
!2894 = !DILocation(line: 827, column: 9, scope: !2850, inlinedAt: !2863)
!2895 = !DILocation(line: 802, column: 3, scope: !2839)
!2896 = !DILocation(line: 812, column: 33, scope: !2850)
!2897 = !DILocation(line: 812, column: 45, scope: !2850)
!2898 = !DILocation(line: 812, column: 62, scope: !2850)
!2899 = !DILocation(line: 813, column: 51, scope: !2850)
!2900 = !DILocation(line: 815, column: 37, scope: !2850)
!2901 = !DILocation(line: 815, column: 33, scope: !2850)
!2902 = !DILocation(line: 816, column: 11, scope: !2850)
!2903 = !DILocation(line: 816, column: 7, scope: !2850)
!2904 = !DILocation(line: 818, column: 18, scope: !2850)
!2905 = !DILocation(line: 818, column: 27, scope: !2850)
!2906 = !DILocation(line: 818, column: 24, scope: !2850)
!2907 = !DILocation(line: 818, column: 7, scope: !2850)
!2908 = !DILocation(line: 819, column: 69, scope: !2850)
!2909 = !DILocation(line: 820, column: 53, scope: !2850)
!2910 = !DILocation(line: 821, column: 49, scope: !2850)
!2911 = !DILocation(line: 822, column: 49, scope: !2850)
!2912 = !DILocation(line: 819, column: 20, scope: !2850)
!2913 = !DILocation(line: 822, column: 62, scope: !2850)
!2914 = !DILocation(line: 819, column: 10, scope: !2850)
!2915 = !DILocation(line: 216, column: 20, scope: !2882, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 823, column: 15, scope: !2850)
!2917 = !DILocation(line: 218, column: 10, scope: !2882, inlinedAt: !2916)
!2918 = !DILocation(line: 823, column: 9, scope: !2850)
!2919 = !DILocation(line: 824, column: 60, scope: !2850)
!2920 = !DILocation(line: 826, column: 32, scope: !2850)
!2921 = !DILocation(line: 826, column: 47, scope: !2850)
!2922 = !DILocation(line: 824, column: 3, scope: !2850)
!2923 = !DILocation(line: 827, column: 9, scope: !2850)
!2924 = !DILocation(line: 828, column: 7, scope: !2850)
!2925 = !DILocation(line: 829, column: 11, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2850, file: !96, line: 828, column: 7)
!2927 = !{!2928, !2928, i64 0}
!2928 = !{!"long", !656, i64 0}
!2929 = !DILocation(line: 829, column: 5, scope: !2926)
!2930 = !DILocation(line: 830, column: 3, scope: !2850)
!2931 = distinct !DISubprogram(name: "quotearg_free", scope: !96, file: !96, line: 848, type: !1492, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2932)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "sv", scope: !2931, file: !96, line: 850, type: !122)
!2934 = !DILocalVariable(name: "i", scope: !2931, file: !96, line: 851, type: !20)
!2935 = !DILocation(line: 850, column: 24, scope: !2931)
!2936 = !DILocation(line: 850, column: 19, scope: !2931)
!2937 = !DILocation(line: 851, column: 7, scope: !2931)
!2938 = !DILocation(line: 852, column: 19, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !96, line: 852, column: 3)
!2940 = distinct !DILexicalBlock(scope: !2931, file: !96, line: 852, column: 3)
!2941 = !DILocation(line: 852, column: 17, scope: !2939)
!2942 = !DILocation(line: 852, column: 3, scope: !2940)
!2943 = !DILocation(line: 853, column: 17, scope: !2939)
!2944 = !{!2945, !655, i64 8}
!2945 = !{!"slotvec", !2928, i64 0, !655, i64 8}
!2946 = !DILocation(line: 853, column: 5, scope: !2939)
!2947 = !DILocation(line: 852, column: 28, scope: !2939)
!2948 = distinct !{!2948, !2942, !2949}
!2949 = !DILocation(line: 853, column: 20, scope: !2940)
!2950 = !DILocation(line: 854, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2931, file: !96, line: 854, column: 7)
!2952 = !DILocation(line: 854, column: 17, scope: !2951)
!2953 = !DILocation(line: 854, column: 7, scope: !2931)
!2954 = !DILocation(line: 856, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !96, line: 855, column: 5)
!2956 = !DILocation(line: 857, column: 21, scope: !2955)
!2957 = !{!2945, !2928, i64 0}
!2958 = !DILocation(line: 858, column: 20, scope: !2955)
!2959 = !DILocation(line: 859, column: 5, scope: !2955)
!2960 = !DILocation(line: 860, column: 10, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2931, file: !96, line: 860, column: 7)
!2962 = !DILocation(line: 860, column: 7, scope: !2931)
!2963 = !DILocation(line: 862, column: 13, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !96, line: 861, column: 5)
!2965 = !DILocation(line: 862, column: 7, scope: !2964)
!2966 = !DILocation(line: 863, column: 15, scope: !2964)
!2967 = !DILocation(line: 864, column: 5, scope: !2964)
!2968 = !DILocation(line: 865, column: 10, scope: !2931)
!2969 = !DILocation(line: 866, column: 1, scope: !2931)
!2970 = distinct !DISubprogram(name: "quotearg_n", scope: !96, file: !96, line: 931, type: !2971, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!45, !20, !10}
!2973 = !{!2974, !2975}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2970, file: !96, line: 931, type: !20)
!2975 = !DILocalVariable(name: "arg", arg: 2, scope: !2970, file: !96, line: 931, type: !10)
!2976 = !DILocation(line: 931, column: 17, scope: !2970)
!2977 = !DILocation(line: 931, column: 32, scope: !2970)
!2978 = !DILocation(line: 933, column: 10, scope: !2970)
!2979 = !DILocation(line: 933, column: 3, scope: !2970)
!2980 = distinct !DISubprogram(name: "quotearg_n_options", scope: !96, file: !96, line: 877, type: !2981, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!45, !20, !10, !90, !1876}
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990, !2993, !2994, !2996, !2997, !2998}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !96, line: 877, type: !20)
!2985 = !DILocalVariable(name: "arg", arg: 2, scope: !2980, file: !96, line: 877, type: !10)
!2986 = !DILocalVariable(name: "argsize", arg: 3, scope: !2980, file: !96, line: 877, type: !90)
!2987 = !DILocalVariable(name: "options", arg: 4, scope: !2980, file: !96, line: 878, type: !1876)
!2988 = !DILocalVariable(name: "e", scope: !2980, file: !96, line: 880, type: !20)
!2989 = !DILocalVariable(name: "sv", scope: !2980, file: !96, line: 882, type: !122)
!2990 = !DILocalVariable(name: "preallocated", scope: !2991, file: !96, line: 889, type: !9)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !96, line: 888, column: 5)
!2992 = distinct !DILexicalBlock(scope: !2980, file: !96, line: 887, column: 7)
!2993 = !DILocalVariable(name: "nmax", scope: !2991, file: !96, line: 890, type: !20)
!2994 = !DILocalVariable(name: "size", scope: !2995, file: !96, line: 903, type: !90)
!2995 = distinct !DILexicalBlock(scope: !2980, file: !96, line: 902, column: 3)
!2996 = !DILocalVariable(name: "val", scope: !2995, file: !96, line: 904, type: !45)
!2997 = !DILocalVariable(name: "flags", scope: !2995, file: !96, line: 906, type: !20)
!2998 = !DILocalVariable(name: "qsize", scope: !2995, file: !96, line: 907, type: !90)
!2999 = !DILocation(line: 877, column: 25, scope: !2980)
!3000 = !DILocation(line: 877, column: 40, scope: !2980)
!3001 = !DILocation(line: 877, column: 52, scope: !2980)
!3002 = !DILocation(line: 878, column: 51, scope: !2980)
!3003 = !DILocation(line: 880, column: 11, scope: !2980)
!3004 = !DILocation(line: 880, column: 7, scope: !2980)
!3005 = !DILocation(line: 882, column: 24, scope: !2980)
!3006 = !DILocation(line: 882, column: 19, scope: !2980)
!3007 = !DILocation(line: 884, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2980, file: !96, line: 884, column: 7)
!3009 = !DILocation(line: 884, column: 7, scope: !2980)
!3010 = !DILocation(line: 885, column: 5, scope: !3008)
!3011 = !DILocation(line: 887, column: 7, scope: !2992)
!3012 = !DILocation(line: 887, column: 14, scope: !2992)
!3013 = !DILocation(line: 887, column: 7, scope: !2980)
!3014 = !DILocation(line: 889, column: 31, scope: !2991)
!3015 = !DILocation(line: 890, column: 11, scope: !2991)
!3016 = !DILocation(line: 892, column: 16, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2991, file: !96, line: 892, column: 11)
!3018 = !DILocation(line: 892, column: 11, scope: !2991)
!3019 = !DILocation(line: 893, column: 9, scope: !3017)
!3020 = !DILocation(line: 895, column: 32, scope: !2991)
!3021 = !DILocation(line: 895, column: 61, scope: !2991)
!3022 = !DILocation(line: 895, column: 58, scope: !2991)
!3023 = !DILocation(line: 895, column: 66, scope: !2991)
!3024 = !DILocation(line: 895, column: 22, scope: !2991)
!3025 = !DILocation(line: 895, column: 15, scope: !2991)
!3026 = !DILocation(line: 896, column: 11, scope: !2991)
!3027 = !DILocation(line: 897, column: 15, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2991, file: !96, line: 896, column: 11)
!3029 = !{i64 0, i64 8, !2927, i64 8, i64 8, !654}
!3030 = !DILocation(line: 897, column: 9, scope: !3028)
!3031 = !DILocation(line: 898, column: 20, scope: !2991)
!3032 = !DILocation(line: 898, column: 18, scope: !2991)
!3033 = !DILocation(line: 898, column: 7, scope: !2991)
!3034 = !DILocation(line: 898, column: 38, scope: !2991)
!3035 = !DILocation(line: 898, column: 31, scope: !2991)
!3036 = !DILocation(line: 898, column: 48, scope: !2991)
!3037 = !DILocation(line: 899, column: 14, scope: !2991)
!3038 = !DILocation(line: 900, column: 5, scope: !2991)
!3039 = !DILocation(line: 0, scope: !2980)
!3040 = !DILocation(line: 903, column: 19, scope: !2995)
!3041 = !DILocation(line: 903, column: 25, scope: !2995)
!3042 = !DILocation(line: 903, column: 12, scope: !2995)
!3043 = !DILocation(line: 904, column: 23, scope: !2995)
!3044 = !DILocation(line: 904, column: 11, scope: !2995)
!3045 = !DILocation(line: 906, column: 26, scope: !2995)
!3046 = !DILocation(line: 906, column: 32, scope: !2995)
!3047 = !DILocation(line: 906, column: 9, scope: !2995)
!3048 = !DILocation(line: 908, column: 55, scope: !2995)
!3049 = !DILocation(line: 909, column: 46, scope: !2995)
!3050 = !DILocation(line: 910, column: 55, scope: !2995)
!3051 = !DILocation(line: 911, column: 55, scope: !2995)
!3052 = !DILocation(line: 907, column: 20, scope: !2995)
!3053 = !DILocation(line: 907, column: 12, scope: !2995)
!3054 = !DILocation(line: 913, column: 14, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2995, file: !96, line: 913, column: 9)
!3056 = !DILocation(line: 913, column: 9, scope: !2995)
!3057 = !DILocation(line: 915, column: 35, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !96, line: 914, column: 7)
!3059 = !DILocation(line: 915, column: 20, scope: !3058)
!3060 = !DILocation(line: 916, column: 17, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !96, line: 916, column: 13)
!3062 = !DILocation(line: 916, column: 13, scope: !3058)
!3063 = !DILocation(line: 917, column: 11, scope: !3061)
!3064 = !DILocation(line: 216, column: 20, scope: !2882, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 918, column: 27, scope: !3058)
!3066 = !DILocation(line: 218, column: 10, scope: !2882, inlinedAt: !3065)
!3067 = !DILocation(line: 918, column: 19, scope: !3058)
!3068 = !DILocation(line: 919, column: 69, scope: !3058)
!3069 = !DILocation(line: 921, column: 44, scope: !3058)
!3070 = !DILocation(line: 922, column: 44, scope: !3058)
!3071 = !DILocation(line: 919, column: 9, scope: !3058)
!3072 = !DILocation(line: 923, column: 7, scope: !3058)
!3073 = !DILocation(line: 0, scope: !2995)
!3074 = !DILocation(line: 925, column: 11, scope: !2995)
!3075 = !DILocation(line: 926, column: 5, scope: !2995)
!3076 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !96, file: !96, line: 937, type: !3077, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!45, !20, !10, !90}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !96, line: 937, type: !20)
!3081 = !DILocalVariable(name: "arg", arg: 2, scope: !3076, file: !96, line: 937, type: !10)
!3082 = !DILocalVariable(name: "argsize", arg: 3, scope: !3076, file: !96, line: 937, type: !90)
!3083 = !DILocation(line: 937, column: 21, scope: !3076)
!3084 = !DILocation(line: 937, column: 36, scope: !3076)
!3085 = !DILocation(line: 937, column: 48, scope: !3076)
!3086 = !DILocation(line: 939, column: 10, scope: !3076)
!3087 = !DILocation(line: 939, column: 3, scope: !3076)
!3088 = distinct !DISubprogram(name: "quotearg", scope: !96, file: !96, line: 943, type: !3089, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!45, !10}
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "arg", arg: 1, scope: !3088, file: !96, line: 943, type: !10)
!3093 = !DILocation(line: 943, column: 23, scope: !3088)
!3094 = !DILocation(line: 931, column: 17, scope: !2970, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 945, column: 10, scope: !3088)
!3096 = !DILocation(line: 931, column: 32, scope: !2970, inlinedAt: !3095)
!3097 = !DILocation(line: 933, column: 10, scope: !2970, inlinedAt: !3095)
!3098 = !DILocation(line: 945, column: 3, scope: !3088)
!3099 = distinct !DISubprogram(name: "quotearg_mem", scope: !96, file: !96, line: 949, type: !3100, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!45, !10, !90}
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "arg", arg: 1, scope: !3099, file: !96, line: 949, type: !10)
!3104 = !DILocalVariable(name: "argsize", arg: 2, scope: !3099, file: !96, line: 949, type: !90)
!3105 = !DILocation(line: 949, column: 27, scope: !3099)
!3106 = !DILocation(line: 949, column: 39, scope: !3099)
!3107 = !DILocation(line: 937, column: 21, scope: !3076, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 951, column: 10, scope: !3099)
!3109 = !DILocation(line: 937, column: 36, scope: !3076, inlinedAt: !3108)
!3110 = !DILocation(line: 937, column: 48, scope: !3076, inlinedAt: !3108)
!3111 = !DILocation(line: 939, column: 10, scope: !3076, inlinedAt: !3108)
!3112 = !DILocation(line: 951, column: 3, scope: !3099)
!3113 = distinct !DISubprogram(name: "quotearg_n_style", scope: !96, file: !96, line: 955, type: !3114, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!45, !20, !53, !10}
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !96, line: 955, type: !20)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !96, line: 955, type: !53)
!3119 = !DILocalVariable(name: "arg", arg: 3, scope: !3113, file: !96, line: 955, type: !10)
!3120 = !DILocalVariable(name: "o", scope: !3113, file: !96, line: 957, type: !1877)
!3121 = !DILocation(line: 955, column: 23, scope: !3113)
!3122 = !DILocation(line: 955, column: 45, scope: !3113)
!3123 = !DILocation(line: 955, column: 60, scope: !3113)
!3124 = !DILocation(line: 957, column: 3, scope: !3113)
!3125 = !DILocation(line: 957, column: 32, scope: !3113)
!3126 = !DILocalVariable(name: "style", arg: 1, scope: !3127, file: !96, line: 193, type: !53)
!3127 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !96, file: !96, line: 193, type: !3128, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!103, !53}
!3130 = !{!3126, !3131}
!3131 = !DILocalVariable(name: "o", scope: !3127, file: !96, line: 195, type: !103)
!3132 = !DILocation(line: 193, column: 48, scope: !3127, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 957, column: 36, scope: !3113)
!3134 = !DILocation(line: 195, column: 26, scope: !3127, inlinedAt: !3133)
!3135 = !{!3136}
!3136 = distinct !{!3136, !3137, !"quoting_options_from_style: argument 0"}
!3137 = distinct !{!3137, !"quoting_options_from_style"}
!3138 = !DILocation(line: 196, column: 13, scope: !3139, inlinedAt: !3133)
!3139 = distinct !DILexicalBlock(scope: !3127, file: !96, line: 196, column: 7)
!3140 = !DILocation(line: 196, column: 7, scope: !3127, inlinedAt: !3133)
!3141 = !DILocation(line: 197, column: 5, scope: !3139, inlinedAt: !3133)
!3142 = !DILocation(line: 198, column: 5, scope: !3127, inlinedAt: !3133)
!3143 = !DILocation(line: 198, column: 11, scope: !3127, inlinedAt: !3133)
!3144 = !DILocation(line: 958, column: 10, scope: !3113)
!3145 = !DILocation(line: 959, column: 1, scope: !3113)
!3146 = !DILocation(line: 958, column: 3, scope: !3113)
!3147 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !96, file: !96, line: 962, type: !3148, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!45, !20, !53, !10, !90}
!3150 = !{!3151, !3152, !3153, !3154, !3155}
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3147, file: !96, line: 962, type: !20)
!3152 = !DILocalVariable(name: "s", arg: 2, scope: !3147, file: !96, line: 962, type: !53)
!3153 = !DILocalVariable(name: "arg", arg: 3, scope: !3147, file: !96, line: 963, type: !10)
!3154 = !DILocalVariable(name: "argsize", arg: 4, scope: !3147, file: !96, line: 963, type: !90)
!3155 = !DILocalVariable(name: "o", scope: !3147, file: !96, line: 965, type: !1877)
!3156 = !DILocation(line: 962, column: 27, scope: !3147)
!3157 = !DILocation(line: 962, column: 49, scope: !3147)
!3158 = !DILocation(line: 963, column: 35, scope: !3147)
!3159 = !DILocation(line: 963, column: 47, scope: !3147)
!3160 = !DILocation(line: 965, column: 3, scope: !3147)
!3161 = !DILocation(line: 965, column: 32, scope: !3147)
!3162 = !DILocation(line: 193, column: 48, scope: !3127, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 965, column: 36, scope: !3147)
!3164 = !DILocation(line: 195, column: 26, scope: !3127, inlinedAt: !3163)
!3165 = !{!3166}
!3166 = distinct !{!3166, !3167, !"quoting_options_from_style: argument 0"}
!3167 = distinct !{!3167, !"quoting_options_from_style"}
!3168 = !DILocation(line: 196, column: 13, scope: !3139, inlinedAt: !3163)
!3169 = !DILocation(line: 196, column: 7, scope: !3127, inlinedAt: !3163)
!3170 = !DILocation(line: 197, column: 5, scope: !3139, inlinedAt: !3163)
!3171 = !DILocation(line: 198, column: 5, scope: !3127, inlinedAt: !3163)
!3172 = !DILocation(line: 198, column: 11, scope: !3127, inlinedAt: !3163)
!3173 = !DILocation(line: 966, column: 10, scope: !3147)
!3174 = !DILocation(line: 967, column: 1, scope: !3147)
!3175 = !DILocation(line: 966, column: 3, scope: !3147)
!3176 = distinct !DISubprogram(name: "quotearg_style", scope: !96, file: !96, line: 970, type: !3177, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!45, !53, !10}
!3179 = !{!3180, !3181}
!3180 = !DILocalVariable(name: "s", arg: 1, scope: !3176, file: !96, line: 970, type: !53)
!3181 = !DILocalVariable(name: "arg", arg: 2, scope: !3176, file: !96, line: 970, type: !10)
!3182 = !DILocation(line: 970, column: 36, scope: !3176)
!3183 = !DILocation(line: 970, column: 51, scope: !3176)
!3184 = !DILocation(line: 955, column: 23, scope: !3113, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 972, column: 10, scope: !3176)
!3186 = !DILocation(line: 955, column: 45, scope: !3113, inlinedAt: !3185)
!3187 = !DILocation(line: 955, column: 60, scope: !3113, inlinedAt: !3185)
!3188 = !DILocation(line: 957, column: 3, scope: !3113, inlinedAt: !3185)
!3189 = !DILocation(line: 957, column: 32, scope: !3113, inlinedAt: !3185)
!3190 = !DILocation(line: 193, column: 48, scope: !3127, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 957, column: 36, scope: !3113, inlinedAt: !3185)
!3192 = !DILocation(line: 195, column: 26, scope: !3127, inlinedAt: !3191)
!3193 = !{!3194}
!3194 = distinct !{!3194, !3195, !"quoting_options_from_style: argument 0"}
!3195 = distinct !{!3195, !"quoting_options_from_style"}
!3196 = !DILocation(line: 196, column: 13, scope: !3139, inlinedAt: !3191)
!3197 = !DILocation(line: 196, column: 7, scope: !3127, inlinedAt: !3191)
!3198 = !DILocation(line: 197, column: 5, scope: !3139, inlinedAt: !3191)
!3199 = !DILocation(line: 198, column: 5, scope: !3127, inlinedAt: !3191)
!3200 = !DILocation(line: 198, column: 11, scope: !3127, inlinedAt: !3191)
!3201 = !DILocation(line: 958, column: 10, scope: !3113, inlinedAt: !3185)
!3202 = !DILocation(line: 959, column: 1, scope: !3113, inlinedAt: !3185)
!3203 = !DILocation(line: 972, column: 3, scope: !3176)
!3204 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !96, file: !96, line: 976, type: !3205, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!45, !53, !10, !90}
!3207 = !{!3208, !3209, !3210}
!3208 = !DILocalVariable(name: "s", arg: 1, scope: !3204, file: !96, line: 976, type: !53)
!3209 = !DILocalVariable(name: "arg", arg: 2, scope: !3204, file: !96, line: 976, type: !10)
!3210 = !DILocalVariable(name: "argsize", arg: 3, scope: !3204, file: !96, line: 976, type: !90)
!3211 = !DILocation(line: 976, column: 40, scope: !3204)
!3212 = !DILocation(line: 976, column: 55, scope: !3204)
!3213 = !DILocation(line: 976, column: 67, scope: !3204)
!3214 = !DILocation(line: 962, column: 27, scope: !3147, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 978, column: 10, scope: !3204)
!3216 = !DILocation(line: 962, column: 49, scope: !3147, inlinedAt: !3215)
!3217 = !DILocation(line: 963, column: 35, scope: !3147, inlinedAt: !3215)
!3218 = !DILocation(line: 963, column: 47, scope: !3147, inlinedAt: !3215)
!3219 = !DILocation(line: 965, column: 3, scope: !3147, inlinedAt: !3215)
!3220 = !DILocation(line: 965, column: 32, scope: !3147, inlinedAt: !3215)
!3221 = !DILocation(line: 193, column: 48, scope: !3127, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 965, column: 36, scope: !3147, inlinedAt: !3215)
!3223 = !DILocation(line: 195, column: 26, scope: !3127, inlinedAt: !3222)
!3224 = !{!3225}
!3225 = distinct !{!3225, !3226, !"quoting_options_from_style: argument 0"}
!3226 = distinct !{!3226, !"quoting_options_from_style"}
!3227 = !DILocation(line: 196, column: 13, scope: !3139, inlinedAt: !3222)
!3228 = !DILocation(line: 196, column: 7, scope: !3127, inlinedAt: !3222)
!3229 = !DILocation(line: 197, column: 5, scope: !3139, inlinedAt: !3222)
!3230 = !DILocation(line: 198, column: 5, scope: !3127, inlinedAt: !3222)
!3231 = !DILocation(line: 198, column: 11, scope: !3127, inlinedAt: !3222)
!3232 = !DILocation(line: 966, column: 10, scope: !3147, inlinedAt: !3215)
!3233 = !DILocation(line: 967, column: 1, scope: !3147, inlinedAt: !3215)
!3234 = !DILocation(line: 978, column: 3, scope: !3204)
!3235 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !96, file: !96, line: 982, type: !3236, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!45, !10, !90, !12}
!3238 = !{!3239, !3240, !3241, !3242}
!3239 = !DILocalVariable(name: "arg", arg: 1, scope: !3235, file: !96, line: 982, type: !10)
!3240 = !DILocalVariable(name: "argsize", arg: 2, scope: !3235, file: !96, line: 982, type: !90)
!3241 = !DILocalVariable(name: "ch", arg: 3, scope: !3235, file: !96, line: 982, type: !12)
!3242 = !DILocalVariable(name: "options", scope: !3235, file: !96, line: 984, type: !103)
!3243 = !DILocation(line: 982, column: 32, scope: !3235)
!3244 = !DILocation(line: 982, column: 44, scope: !3235)
!3245 = !DILocation(line: 982, column: 58, scope: !3235)
!3246 = !DILocation(line: 984, column: 3, scope: !3235)
!3247 = !DILocation(line: 985, column: 13, scope: !3235)
!3248 = !{i64 0, i64 4, !774, i64 4, i64 4, !1506, i64 8, i64 32, !774, i64 40, i64 8, !654, i64 48, i64 8, !654}
!3249 = !DILocation(line: 984, column: 26, scope: !3235)
!3250 = !DILocation(line: 152, column: 43, scope: !1898, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 986, column: 3, scope: !3235)
!3252 = !DILocation(line: 152, column: 51, scope: !1898, inlinedAt: !3251)
!3253 = !DILocation(line: 152, column: 58, scope: !1898, inlinedAt: !3251)
!3254 = !DILocation(line: 154, column: 17, scope: !1898, inlinedAt: !3251)
!3255 = !DILocation(line: 156, column: 62, scope: !1898, inlinedAt: !3251)
!3256 = !DILocation(line: 156, column: 57, scope: !1898, inlinedAt: !3251)
!3257 = !DILocation(line: 155, column: 17, scope: !1898, inlinedAt: !3251)
!3258 = !DILocation(line: 157, column: 15, scope: !1898, inlinedAt: !3251)
!3259 = !DILocation(line: 157, column: 7, scope: !1898, inlinedAt: !3251)
!3260 = !DILocation(line: 158, column: 12, scope: !1898, inlinedAt: !3251)
!3261 = !DILocation(line: 158, column: 15, scope: !1898, inlinedAt: !3251)
!3262 = !DILocation(line: 158, column: 25, scope: !1898, inlinedAt: !3251)
!3263 = !DILocation(line: 158, column: 7, scope: !1898, inlinedAt: !3251)
!3264 = !DILocation(line: 159, column: 18, scope: !1898, inlinedAt: !3251)
!3265 = !DILocation(line: 159, column: 23, scope: !1898, inlinedAt: !3251)
!3266 = !DILocation(line: 159, column: 6, scope: !1898, inlinedAt: !3251)
!3267 = !DILocation(line: 987, column: 10, scope: !3235)
!3268 = !DILocation(line: 988, column: 1, scope: !3235)
!3269 = !DILocation(line: 987, column: 3, scope: !3235)
!3270 = distinct !DISubprogram(name: "quotearg_char", scope: !96, file: !96, line: 991, type: !3271, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!45, !10, !12}
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "arg", arg: 1, scope: !3270, file: !96, line: 991, type: !10)
!3275 = !DILocalVariable(name: "ch", arg: 2, scope: !3270, file: !96, line: 991, type: !12)
!3276 = !DILocation(line: 991, column: 28, scope: !3270)
!3277 = !DILocation(line: 991, column: 38, scope: !3270)
!3278 = !DILocation(line: 982, column: 32, scope: !3235, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 993, column: 10, scope: !3270)
!3280 = !DILocation(line: 982, column: 44, scope: !3235, inlinedAt: !3279)
!3281 = !DILocation(line: 982, column: 58, scope: !3235, inlinedAt: !3279)
!3282 = !DILocation(line: 984, column: 3, scope: !3235, inlinedAt: !3279)
!3283 = !DILocation(line: 985, column: 13, scope: !3235, inlinedAt: !3279)
!3284 = !DILocation(line: 984, column: 26, scope: !3235, inlinedAt: !3279)
!3285 = !DILocation(line: 152, column: 43, scope: !1898, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 986, column: 3, scope: !3235, inlinedAt: !3279)
!3287 = !DILocation(line: 152, column: 51, scope: !1898, inlinedAt: !3286)
!3288 = !DILocation(line: 152, column: 58, scope: !1898, inlinedAt: !3286)
!3289 = !DILocation(line: 154, column: 17, scope: !1898, inlinedAt: !3286)
!3290 = !DILocation(line: 156, column: 62, scope: !1898, inlinedAt: !3286)
!3291 = !DILocation(line: 156, column: 57, scope: !1898, inlinedAt: !3286)
!3292 = !DILocation(line: 155, column: 17, scope: !1898, inlinedAt: !3286)
!3293 = !DILocation(line: 157, column: 15, scope: !1898, inlinedAt: !3286)
!3294 = !DILocation(line: 157, column: 7, scope: !1898, inlinedAt: !3286)
!3295 = !DILocation(line: 158, column: 12, scope: !1898, inlinedAt: !3286)
!3296 = !DILocation(line: 158, column: 15, scope: !1898, inlinedAt: !3286)
!3297 = !DILocation(line: 158, column: 25, scope: !1898, inlinedAt: !3286)
!3298 = !DILocation(line: 158, column: 7, scope: !1898, inlinedAt: !3286)
!3299 = !DILocation(line: 159, column: 18, scope: !1898, inlinedAt: !3286)
!3300 = !DILocation(line: 159, column: 23, scope: !1898, inlinedAt: !3286)
!3301 = !DILocation(line: 159, column: 6, scope: !1898, inlinedAt: !3286)
!3302 = !DILocation(line: 987, column: 10, scope: !3235, inlinedAt: !3279)
!3303 = !DILocation(line: 988, column: 1, scope: !3235, inlinedAt: !3279)
!3304 = !DILocation(line: 993, column: 3, scope: !3270)
!3305 = distinct !DISubprogram(name: "quotearg_colon", scope: !96, file: !96, line: 997, type: !3089, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3306)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !96, line: 997, type: !10)
!3308 = !DILocation(line: 997, column: 29, scope: !3305)
!3309 = !DILocation(line: 991, column: 28, scope: !3270, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 999, column: 10, scope: !3305)
!3311 = !DILocation(line: 991, column: 38, scope: !3270, inlinedAt: !3310)
!3312 = !DILocation(line: 982, column: 32, scope: !3235, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 993, column: 10, scope: !3270, inlinedAt: !3310)
!3314 = !DILocation(line: 982, column: 44, scope: !3235, inlinedAt: !3313)
!3315 = !DILocation(line: 982, column: 58, scope: !3235, inlinedAt: !3313)
!3316 = !DILocation(line: 984, column: 3, scope: !3235, inlinedAt: !3313)
!3317 = !DILocation(line: 985, column: 13, scope: !3235, inlinedAt: !3313)
!3318 = !DILocation(line: 984, column: 26, scope: !3235, inlinedAt: !3313)
!3319 = !DILocation(line: 152, column: 43, scope: !1898, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 986, column: 3, scope: !3235, inlinedAt: !3313)
!3321 = !DILocation(line: 152, column: 51, scope: !1898, inlinedAt: !3320)
!3322 = !DILocation(line: 152, column: 58, scope: !1898, inlinedAt: !3320)
!3323 = !DILocation(line: 154, column: 17, scope: !1898, inlinedAt: !3320)
!3324 = !DILocation(line: 156, column: 57, scope: !1898, inlinedAt: !3320)
!3325 = !DILocation(line: 155, column: 17, scope: !1898, inlinedAt: !3320)
!3326 = !DILocation(line: 157, column: 7, scope: !1898, inlinedAt: !3320)
!3327 = !DILocation(line: 158, column: 12, scope: !1898, inlinedAt: !3320)
!3328 = !DILocation(line: 159, column: 6, scope: !1898, inlinedAt: !3320)
!3329 = !DILocation(line: 987, column: 10, scope: !3235, inlinedAt: !3313)
!3330 = !DILocation(line: 988, column: 1, scope: !3235, inlinedAt: !3313)
!3331 = !DILocation(line: 999, column: 3, scope: !3305)
!3332 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !96, file: !96, line: 1003, type: !3100, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "arg", arg: 1, scope: !3332, file: !96, line: 1003, type: !10)
!3335 = !DILocalVariable(name: "argsize", arg: 2, scope: !3332, file: !96, line: 1003, type: !90)
!3336 = !DILocation(line: 1003, column: 33, scope: !3332)
!3337 = !DILocation(line: 1003, column: 45, scope: !3332)
!3338 = !DILocation(line: 982, column: 32, scope: !3235, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1005, column: 10, scope: !3332)
!3340 = !DILocation(line: 982, column: 44, scope: !3235, inlinedAt: !3339)
!3341 = !DILocation(line: 982, column: 58, scope: !3235, inlinedAt: !3339)
!3342 = !DILocation(line: 984, column: 3, scope: !3235, inlinedAt: !3339)
!3343 = !DILocation(line: 985, column: 13, scope: !3235, inlinedAt: !3339)
!3344 = !DILocation(line: 984, column: 26, scope: !3235, inlinedAt: !3339)
!3345 = !DILocation(line: 152, column: 43, scope: !1898, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 986, column: 3, scope: !3235, inlinedAt: !3339)
!3347 = !DILocation(line: 152, column: 51, scope: !1898, inlinedAt: !3346)
!3348 = !DILocation(line: 152, column: 58, scope: !1898, inlinedAt: !3346)
!3349 = !DILocation(line: 154, column: 17, scope: !1898, inlinedAt: !3346)
!3350 = !DILocation(line: 156, column: 57, scope: !1898, inlinedAt: !3346)
!3351 = !DILocation(line: 155, column: 17, scope: !1898, inlinedAt: !3346)
!3352 = !DILocation(line: 157, column: 7, scope: !1898, inlinedAt: !3346)
!3353 = !DILocation(line: 158, column: 12, scope: !1898, inlinedAt: !3346)
!3354 = !DILocation(line: 159, column: 6, scope: !1898, inlinedAt: !3346)
!3355 = !DILocation(line: 987, column: 10, scope: !3235, inlinedAt: !3339)
!3356 = !DILocation(line: 988, column: 1, scope: !3235, inlinedAt: !3339)
!3357 = !DILocation(line: 1005, column: 3, scope: !3332)
!3358 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !96, file: !96, line: 1009, type: !3114, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3359)
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !96, line: 1009, type: !20)
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3358, file: !96, line: 1009, type: !53)
!3362 = !DILocalVariable(name: "arg", arg: 3, scope: !3358, file: !96, line: 1009, type: !10)
!3363 = !DILocalVariable(name: "options", scope: !3358, file: !96, line: 1011, type: !103)
!3364 = !DILocation(line: 195, column: 26, scope: !3127, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1012, column: 13, scope: !3358)
!3366 = !DILocation(line: 1009, column: 29, scope: !3358)
!3367 = !DILocation(line: 1009, column: 51, scope: !3358)
!3368 = !DILocation(line: 1009, column: 66, scope: !3358)
!3369 = !DILocation(line: 1011, column: 3, scope: !3358)
!3370 = !DILocation(line: 1012, column: 13, scope: !3358)
!3371 = !DILocation(line: 193, column: 48, scope: !3127, inlinedAt: !3365)
!3372 = !{!3373}
!3373 = distinct !{!3373, !3374, !"quoting_options_from_style: argument 0"}
!3374 = distinct !{!3374, !"quoting_options_from_style"}
!3375 = !DILocation(line: 196, column: 13, scope: !3139, inlinedAt: !3365)
!3376 = !DILocation(line: 196, column: 7, scope: !3127, inlinedAt: !3365)
!3377 = !DILocation(line: 197, column: 5, scope: !3139, inlinedAt: !3365)
!3378 = !DILocation(line: 1011, column: 26, scope: !3358)
!3379 = !DILocation(line: 152, column: 43, scope: !1898, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1013, column: 3, scope: !3358)
!3381 = !DILocation(line: 152, column: 51, scope: !1898, inlinedAt: !3380)
!3382 = !DILocation(line: 152, column: 58, scope: !1898, inlinedAt: !3380)
!3383 = !DILocation(line: 154, column: 17, scope: !1898, inlinedAt: !3380)
!3384 = !DILocation(line: 156, column: 57, scope: !1898, inlinedAt: !3380)
!3385 = !DILocation(line: 155, column: 17, scope: !1898, inlinedAt: !3380)
!3386 = !DILocation(line: 157, column: 7, scope: !1898, inlinedAt: !3380)
!3387 = !DILocation(line: 158, column: 12, scope: !1898, inlinedAt: !3380)
!3388 = !DILocation(line: 159, column: 6, scope: !1898, inlinedAt: !3380)
!3389 = !DILocation(line: 1014, column: 10, scope: !3358)
!3390 = !DILocation(line: 1015, column: 1, scope: !3358)
!3391 = !DILocation(line: 1014, column: 3, scope: !3358)
!3392 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !96, file: !96, line: 1018, type: !3393, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!45, !20, !10, !10, !10}
!3395 = !{!3396, !3397, !3398, !3399}
!3396 = !DILocalVariable(name: "n", arg: 1, scope: !3392, file: !96, line: 1018, type: !20)
!3397 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3392, file: !96, line: 1018, type: !10)
!3398 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3392, file: !96, line: 1019, type: !10)
!3399 = !DILocalVariable(name: "arg", arg: 4, scope: !3392, file: !96, line: 1019, type: !10)
!3400 = !DILocation(line: 1018, column: 24, scope: !3392)
!3401 = !DILocation(line: 1018, column: 39, scope: !3392)
!3402 = !DILocation(line: 1019, column: 32, scope: !3392)
!3403 = !DILocation(line: 1019, column: 57, scope: !3392)
!3404 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !96, line: 1026, type: !20)
!3405 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !96, file: !96, line: 1026, type: !3406, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!45, !20, !10, !10, !10, !90}
!3408 = !{!3404, !3409, !3410, !3411, !3412, !3413}
!3409 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3405, file: !96, line: 1026, type: !10)
!3410 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3405, file: !96, line: 1027, type: !10)
!3411 = !DILocalVariable(name: "arg", arg: 4, scope: !3405, file: !96, line: 1028, type: !10)
!3412 = !DILocalVariable(name: "argsize", arg: 5, scope: !3405, file: !96, line: 1028, type: !90)
!3413 = !DILocalVariable(name: "o", scope: !3405, file: !96, line: 1030, type: !103)
!3414 = !DILocation(line: 1026, column: 28, scope: !3405, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1021, column: 10, scope: !3392)
!3416 = !DILocation(line: 1026, column: 43, scope: !3405, inlinedAt: !3415)
!3417 = !DILocation(line: 1027, column: 36, scope: !3405, inlinedAt: !3415)
!3418 = !DILocation(line: 1028, column: 36, scope: !3405, inlinedAt: !3415)
!3419 = !DILocation(line: 1028, column: 48, scope: !3405, inlinedAt: !3415)
!3420 = !DILocation(line: 1030, column: 3, scope: !3405, inlinedAt: !3415)
!3421 = !DILocation(line: 1030, column: 30, scope: !3405, inlinedAt: !3415)
!3422 = !DILocation(line: 1030, column: 26, scope: !3405, inlinedAt: !3415)
!3423 = !DILocation(line: 179, column: 45, scope: !1947, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 1031, column: 3, scope: !3405, inlinedAt: !3415)
!3425 = !DILocation(line: 180, column: 33, scope: !1947, inlinedAt: !3424)
!3426 = !DILocation(line: 180, column: 57, scope: !1947, inlinedAt: !3424)
!3427 = !DILocation(line: 184, column: 6, scope: !1947, inlinedAt: !3424)
!3428 = !DILocation(line: 184, column: 12, scope: !1947, inlinedAt: !3424)
!3429 = !DILocation(line: 185, column: 8, scope: !1963, inlinedAt: !3424)
!3430 = !DILocation(line: 185, column: 23, scope: !1963, inlinedAt: !3424)
!3431 = !DILocation(line: 185, column: 19, scope: !1963, inlinedAt: !3424)
!3432 = !DILocation(line: 186, column: 5, scope: !1963, inlinedAt: !3424)
!3433 = !DILocation(line: 187, column: 6, scope: !1947, inlinedAt: !3424)
!3434 = !DILocation(line: 187, column: 17, scope: !1947, inlinedAt: !3424)
!3435 = !DILocation(line: 188, column: 6, scope: !1947, inlinedAt: !3424)
!3436 = !DILocation(line: 188, column: 18, scope: !1947, inlinedAt: !3424)
!3437 = !DILocation(line: 1032, column: 10, scope: !3405, inlinedAt: !3415)
!3438 = !DILocation(line: 1033, column: 1, scope: !3405, inlinedAt: !3415)
!3439 = !DILocation(line: 1021, column: 3, scope: !3392)
!3440 = !DILocation(line: 1026, column: 28, scope: !3405)
!3441 = !DILocation(line: 1026, column: 43, scope: !3405)
!3442 = !DILocation(line: 1027, column: 36, scope: !3405)
!3443 = !DILocation(line: 1028, column: 36, scope: !3405)
!3444 = !DILocation(line: 1028, column: 48, scope: !3405)
!3445 = !DILocation(line: 1030, column: 3, scope: !3405)
!3446 = !DILocation(line: 1030, column: 30, scope: !3405)
!3447 = !DILocation(line: 1030, column: 26, scope: !3405)
!3448 = !DILocation(line: 179, column: 45, scope: !1947, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 1031, column: 3, scope: !3405)
!3450 = !DILocation(line: 180, column: 33, scope: !1947, inlinedAt: !3449)
!3451 = !DILocation(line: 180, column: 57, scope: !1947, inlinedAt: !3449)
!3452 = !DILocation(line: 184, column: 6, scope: !1947, inlinedAt: !3449)
!3453 = !DILocation(line: 184, column: 12, scope: !1947, inlinedAt: !3449)
!3454 = !DILocation(line: 185, column: 8, scope: !1963, inlinedAt: !3449)
!3455 = !DILocation(line: 185, column: 23, scope: !1963, inlinedAt: !3449)
!3456 = !DILocation(line: 185, column: 19, scope: !1963, inlinedAt: !3449)
!3457 = !DILocation(line: 186, column: 5, scope: !1963, inlinedAt: !3449)
!3458 = !DILocation(line: 187, column: 6, scope: !1947, inlinedAt: !3449)
!3459 = !DILocation(line: 187, column: 17, scope: !1947, inlinedAt: !3449)
!3460 = !DILocation(line: 188, column: 6, scope: !1947, inlinedAt: !3449)
!3461 = !DILocation(line: 188, column: 18, scope: !1947, inlinedAt: !3449)
!3462 = !DILocation(line: 1032, column: 10, scope: !3405)
!3463 = !DILocation(line: 1033, column: 1, scope: !3405)
!3464 = !DILocation(line: 1032, column: 3, scope: !3405)
!3465 = distinct !DISubprogram(name: "quotearg_custom", scope: !96, file: !96, line: 1036, type: !3466, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!45, !10, !10, !10}
!3468 = !{!3469, !3470, !3471}
!3469 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3465, file: !96, line: 1036, type: !10)
!3470 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3465, file: !96, line: 1036, type: !10)
!3471 = !DILocalVariable(name: "arg", arg: 3, scope: !3465, file: !96, line: 1037, type: !10)
!3472 = !DILocation(line: 1036, column: 30, scope: !3465)
!3473 = !DILocation(line: 1036, column: 54, scope: !3465)
!3474 = !DILocation(line: 1037, column: 30, scope: !3465)
!3475 = !DILocation(line: 1018, column: 24, scope: !3392, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 1039, column: 10, scope: !3465)
!3477 = !DILocation(line: 1018, column: 39, scope: !3392, inlinedAt: !3476)
!3478 = !DILocation(line: 1019, column: 32, scope: !3392, inlinedAt: !3476)
!3479 = !DILocation(line: 1019, column: 57, scope: !3392, inlinedAt: !3476)
!3480 = !DILocation(line: 1026, column: 28, scope: !3405, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 1021, column: 10, scope: !3392, inlinedAt: !3476)
!3482 = !DILocation(line: 1026, column: 43, scope: !3405, inlinedAt: !3481)
!3483 = !DILocation(line: 1027, column: 36, scope: !3405, inlinedAt: !3481)
!3484 = !DILocation(line: 1028, column: 36, scope: !3405, inlinedAt: !3481)
!3485 = !DILocation(line: 1028, column: 48, scope: !3405, inlinedAt: !3481)
!3486 = !DILocation(line: 1030, column: 3, scope: !3405, inlinedAt: !3481)
!3487 = !DILocation(line: 1030, column: 30, scope: !3405, inlinedAt: !3481)
!3488 = !DILocation(line: 1030, column: 26, scope: !3405, inlinedAt: !3481)
!3489 = !DILocation(line: 179, column: 45, scope: !1947, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 1031, column: 3, scope: !3405, inlinedAt: !3481)
!3491 = !DILocation(line: 180, column: 33, scope: !1947, inlinedAt: !3490)
!3492 = !DILocation(line: 180, column: 57, scope: !1947, inlinedAt: !3490)
!3493 = !DILocation(line: 184, column: 6, scope: !1947, inlinedAt: !3490)
!3494 = !DILocation(line: 184, column: 12, scope: !1947, inlinedAt: !3490)
!3495 = !DILocation(line: 185, column: 8, scope: !1963, inlinedAt: !3490)
!3496 = !DILocation(line: 185, column: 23, scope: !1963, inlinedAt: !3490)
!3497 = !DILocation(line: 185, column: 19, scope: !1963, inlinedAt: !3490)
!3498 = !DILocation(line: 186, column: 5, scope: !1963, inlinedAt: !3490)
!3499 = !DILocation(line: 187, column: 6, scope: !1947, inlinedAt: !3490)
!3500 = !DILocation(line: 187, column: 17, scope: !1947, inlinedAt: !3490)
!3501 = !DILocation(line: 188, column: 6, scope: !1947, inlinedAt: !3490)
!3502 = !DILocation(line: 188, column: 18, scope: !1947, inlinedAt: !3490)
!3503 = !DILocation(line: 1032, column: 10, scope: !3405, inlinedAt: !3481)
!3504 = !DILocation(line: 1033, column: 1, scope: !3405, inlinedAt: !3481)
!3505 = !DILocation(line: 1039, column: 3, scope: !3465)
!3506 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !96, file: !96, line: 1043, type: !3507, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!45, !10, !10, !10, !90}
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3506, file: !96, line: 1043, type: !10)
!3511 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3506, file: !96, line: 1043, type: !10)
!3512 = !DILocalVariable(name: "arg", arg: 3, scope: !3506, file: !96, line: 1044, type: !10)
!3513 = !DILocalVariable(name: "argsize", arg: 4, scope: !3506, file: !96, line: 1044, type: !90)
!3514 = !DILocation(line: 1043, column: 34, scope: !3506)
!3515 = !DILocation(line: 1043, column: 58, scope: !3506)
!3516 = !DILocation(line: 1044, column: 34, scope: !3506)
!3517 = !DILocation(line: 1044, column: 46, scope: !3506)
!3518 = !DILocation(line: 1026, column: 28, scope: !3405, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 1046, column: 10, scope: !3506)
!3520 = !DILocation(line: 1026, column: 43, scope: !3405, inlinedAt: !3519)
!3521 = !DILocation(line: 1027, column: 36, scope: !3405, inlinedAt: !3519)
!3522 = !DILocation(line: 1028, column: 36, scope: !3405, inlinedAt: !3519)
!3523 = !DILocation(line: 1028, column: 48, scope: !3405, inlinedAt: !3519)
!3524 = !DILocation(line: 1030, column: 3, scope: !3405, inlinedAt: !3519)
!3525 = !DILocation(line: 1030, column: 30, scope: !3405, inlinedAt: !3519)
!3526 = !DILocation(line: 1030, column: 26, scope: !3405, inlinedAt: !3519)
!3527 = !DILocation(line: 179, column: 45, scope: !1947, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 1031, column: 3, scope: !3405, inlinedAt: !3519)
!3529 = !DILocation(line: 180, column: 33, scope: !1947, inlinedAt: !3528)
!3530 = !DILocation(line: 180, column: 57, scope: !1947, inlinedAt: !3528)
!3531 = !DILocation(line: 184, column: 6, scope: !1947, inlinedAt: !3528)
!3532 = !DILocation(line: 184, column: 12, scope: !1947, inlinedAt: !3528)
!3533 = !DILocation(line: 185, column: 8, scope: !1963, inlinedAt: !3528)
!3534 = !DILocation(line: 185, column: 23, scope: !1963, inlinedAt: !3528)
!3535 = !DILocation(line: 185, column: 19, scope: !1963, inlinedAt: !3528)
!3536 = !DILocation(line: 186, column: 5, scope: !1963, inlinedAt: !3528)
!3537 = !DILocation(line: 187, column: 6, scope: !1947, inlinedAt: !3528)
!3538 = !DILocation(line: 187, column: 17, scope: !1947, inlinedAt: !3528)
!3539 = !DILocation(line: 188, column: 6, scope: !1947, inlinedAt: !3528)
!3540 = !DILocation(line: 188, column: 18, scope: !1947, inlinedAt: !3528)
!3541 = !DILocation(line: 1032, column: 10, scope: !3405, inlinedAt: !3519)
!3542 = !DILocation(line: 1033, column: 1, scope: !3405, inlinedAt: !3519)
!3543 = !DILocation(line: 1046, column: 3, scope: !3506)
!3544 = distinct !DISubprogram(name: "quote_n_mem", scope: !96, file: !96, line: 1061, type: !3545, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!10, !20, !10, !90}
!3547 = !{!3548, !3549, !3550}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3544, file: !96, line: 1061, type: !20)
!3549 = !DILocalVariable(name: "arg", arg: 2, scope: !3544, file: !96, line: 1061, type: !10)
!3550 = !DILocalVariable(name: "argsize", arg: 3, scope: !3544, file: !96, line: 1061, type: !90)
!3551 = !DILocation(line: 1061, column: 18, scope: !3544)
!3552 = !DILocation(line: 1061, column: 33, scope: !3544)
!3553 = !DILocation(line: 1061, column: 45, scope: !3544)
!3554 = !DILocation(line: 1063, column: 10, scope: !3544)
!3555 = !DILocation(line: 1063, column: 3, scope: !3544)
!3556 = distinct !DISubprogram(name: "quote_mem", scope: !96, file: !96, line: 1067, type: !3557, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!10, !10, !90}
!3559 = !{!3560, !3561}
!3560 = !DILocalVariable(name: "arg", arg: 1, scope: !3556, file: !96, line: 1067, type: !10)
!3561 = !DILocalVariable(name: "argsize", arg: 2, scope: !3556, file: !96, line: 1067, type: !90)
!3562 = !DILocation(line: 1067, column: 24, scope: !3556)
!3563 = !DILocation(line: 1067, column: 36, scope: !3556)
!3564 = !DILocation(line: 1061, column: 18, scope: !3544, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1069, column: 10, scope: !3556)
!3566 = !DILocation(line: 1061, column: 33, scope: !3544, inlinedAt: !3565)
!3567 = !DILocation(line: 1061, column: 45, scope: !3544, inlinedAt: !3565)
!3568 = !DILocation(line: 1063, column: 10, scope: !3544, inlinedAt: !3565)
!3569 = !DILocation(line: 1069, column: 3, scope: !3556)
!3570 = distinct !DISubprogram(name: "quote_n", scope: !96, file: !96, line: 1073, type: !3571, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!10, !20, !10}
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "n", arg: 1, scope: !3570, file: !96, line: 1073, type: !20)
!3575 = !DILocalVariable(name: "arg", arg: 2, scope: !3570, file: !96, line: 1073, type: !10)
!3576 = !DILocation(line: 1073, column: 14, scope: !3570)
!3577 = !DILocation(line: 1073, column: 29, scope: !3570)
!3578 = !DILocation(line: 1061, column: 18, scope: !3544, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 1075, column: 10, scope: !3570)
!3580 = !DILocation(line: 1061, column: 33, scope: !3544, inlinedAt: !3579)
!3581 = !DILocation(line: 1061, column: 45, scope: !3544, inlinedAt: !3579)
!3582 = !DILocation(line: 1063, column: 10, scope: !3544, inlinedAt: !3579)
!3583 = !DILocation(line: 1075, column: 3, scope: !3570)
!3584 = distinct !DISubprogram(name: "quote", scope: !96, file: !96, line: 1079, type: !3585, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !50, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!10, !10}
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "arg", arg: 1, scope: !3584, file: !96, line: 1079, type: !10)
!3589 = !DILocation(line: 1079, column: 20, scope: !3584)
!3590 = !DILocation(line: 1073, column: 14, scope: !3570, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1081, column: 10, scope: !3584)
!3592 = !DILocation(line: 1073, column: 29, scope: !3570, inlinedAt: !3591)
!3593 = !DILocation(line: 1061, column: 18, scope: !3544, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 1075, column: 10, scope: !3570, inlinedAt: !3591)
!3595 = !DILocation(line: 1061, column: 33, scope: !3544, inlinedAt: !3594)
!3596 = !DILocation(line: 1061, column: 45, scope: !3544, inlinedAt: !3594)
!3597 = !DILocation(line: 1063, column: 10, scope: !3544, inlinedAt: !3594)
!3598 = !DILocation(line: 1081, column: 3, scope: !3584)
!3599 = distinct !DISubprogram(name: "version_etc_arn", scope: !188, file: !188, line: 62, type: !3600, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3653)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !3602, !10, !10, !10, !3652, !90}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3604, line: 7, baseType: !3605)
!3604 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3606, line: 49, size: 1728, elements: !3607)
!3606 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3623, !3625, !3626, !3627, !3628, !3629, !3631, !3633, !3636, !3638, !3641, !3644, !3645, !3646, !3647, !3648}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3605, file: !3606, line: 51, baseType: !20, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3605, file: !3606, line: 54, baseType: !45, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3605, file: !3606, line: 55, baseType: !45, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3605, file: !3606, line: 56, baseType: !45, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3605, file: !3606, line: 57, baseType: !45, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3605, file: !3606, line: 58, baseType: !45, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3605, file: !3606, line: 59, baseType: !45, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3605, file: !3606, line: 60, baseType: !45, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3605, file: !3606, line: 61, baseType: !45, size: 64, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3605, file: !3606, line: 64, baseType: !45, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3605, file: !3606, line: 65, baseType: !45, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3605, file: !3606, line: 66, baseType: !45, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3605, file: !3606, line: 68, baseType: !3621, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3606, line: 36, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3605, file: !3606, line: 70, baseType: !3624, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3605, file: !3606, line: 72, baseType: !20, size: 32, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3605, file: !3606, line: 73, baseType: !20, size: 32, offset: 928)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3605, file: !3606, line: 74, baseType: !177, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3605, file: !3606, line: 77, baseType: !89, size: 16, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3605, file: !3606, line: 78, baseType: !3630, size: 8, offset: 1040)
!3630 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3605, file: !3606, line: 79, baseType: !3632, size: 8, offset: 1048)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !1791)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3605, file: !3606, line: 81, baseType: !3634, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3606, line: 43, baseType: null)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3605, file: !3606, line: 89, baseType: !3637, size: 64, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !159, line: 151, baseType: !162)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3605, file: !3606, line: 91, baseType: !3639, size: 64, offset: 1216)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3606, line: 37, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3605, file: !3606, line: 92, baseType: !3642, size: 64, offset: 1280)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3606, line: 38, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3605, file: !3606, line: 93, baseType: !3624, size: 64, offset: 1344)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3605, file: !3606, line: 94, baseType: !44, size: 64, offset: 1408)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3605, file: !3606, line: 95, baseType: !90, size: 64, offset: 1472)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3605, file: !3606, line: 96, baseType: !20, size: 32, offset: 1536)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3605, file: !3606, line: 98, baseType: !3649, size: 160, offset: 1568)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !3650)
!3650 = !{!3651}
!3651 = !DISubrange(count: 20)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659}
!3654 = !DILocalVariable(name: "stream", arg: 1, scope: !3599, file: !188, line: 62, type: !3602)
!3655 = !DILocalVariable(name: "command_name", arg: 2, scope: !3599, file: !188, line: 63, type: !10)
!3656 = !DILocalVariable(name: "package", arg: 3, scope: !3599, file: !188, line: 63, type: !10)
!3657 = !DILocalVariable(name: "version", arg: 4, scope: !3599, file: !188, line: 64, type: !10)
!3658 = !DILocalVariable(name: "authors", arg: 5, scope: !3599, file: !188, line: 65, type: !3652)
!3659 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3599, file: !188, line: 65, type: !90)
!3660 = !DILocation(line: 62, column: 24, scope: !3599)
!3661 = !DILocation(line: 63, column: 30, scope: !3599)
!3662 = !DILocation(line: 63, column: 56, scope: !3599)
!3663 = !DILocation(line: 64, column: 30, scope: !3599)
!3664 = !DILocation(line: 65, column: 39, scope: !3599)
!3665 = !DILocation(line: 65, column: 55, scope: !3599)
!3666 = !DILocation(line: 67, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3599, file: !188, line: 67, column: 7)
!3668 = !DILocation(line: 67, column: 7, scope: !3599)
!3669 = !DILocation(line: 68, column: 5, scope: !3667)
!3670 = !DILocation(line: 70, column: 5, scope: !3667)
!3671 = !DILocation(line: 84, column: 3, scope: !3599)
!3672 = !DILocation(line: 86, column: 3, scope: !3599)
!3673 = !DILocation(line: 95, column: 3, scope: !3599)
!3674 = !DILocation(line: 99, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3599, file: !188, line: 96, column: 5)
!3676 = !DILocation(line: 102, column: 7, scope: !3675)
!3677 = !DILocation(line: 103, column: 7, scope: !3675)
!3678 = !DILocation(line: 106, column: 7, scope: !3675)
!3679 = !DILocation(line: 107, column: 7, scope: !3675)
!3680 = !DILocation(line: 110, column: 7, scope: !3675)
!3681 = !DILocation(line: 112, column: 7, scope: !3675)
!3682 = !DILocation(line: 117, column: 7, scope: !3675)
!3683 = !DILocation(line: 119, column: 7, scope: !3675)
!3684 = !DILocation(line: 124, column: 7, scope: !3675)
!3685 = !DILocation(line: 126, column: 7, scope: !3675)
!3686 = !DILocation(line: 131, column: 7, scope: !3675)
!3687 = !DILocation(line: 134, column: 7, scope: !3675)
!3688 = !DILocation(line: 139, column: 7, scope: !3675)
!3689 = !DILocation(line: 142, column: 7, scope: !3675)
!3690 = !DILocation(line: 147, column: 7, scope: !3675)
!3691 = !DILocation(line: 151, column: 7, scope: !3675)
!3692 = !DILocation(line: 156, column: 7, scope: !3675)
!3693 = !DILocation(line: 160, column: 7, scope: !3675)
!3694 = !DILocation(line: 167, column: 7, scope: !3675)
!3695 = !DILocation(line: 171, column: 7, scope: !3675)
!3696 = !DILocation(line: 173, column: 1, scope: !3599)
!3697 = distinct !DISubprogram(name: "version_etc_ar", scope: !188, file: !188, line: 180, type: !3698, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3602, !10, !10, !10, !3652}
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706}
!3701 = !DILocalVariable(name: "stream", arg: 1, scope: !3697, file: !188, line: 180, type: !3602)
!3702 = !DILocalVariable(name: "command_name", arg: 2, scope: !3697, file: !188, line: 181, type: !10)
!3703 = !DILocalVariable(name: "package", arg: 3, scope: !3697, file: !188, line: 181, type: !10)
!3704 = !DILocalVariable(name: "version", arg: 4, scope: !3697, file: !188, line: 182, type: !10)
!3705 = !DILocalVariable(name: "authors", arg: 5, scope: !3697, file: !188, line: 182, type: !3652)
!3706 = !DILocalVariable(name: "n_authors", scope: !3697, file: !188, line: 184, type: !90)
!3707 = !DILocation(line: 180, column: 23, scope: !3697)
!3708 = !DILocation(line: 181, column: 29, scope: !3697)
!3709 = !DILocation(line: 181, column: 55, scope: !3697)
!3710 = !DILocation(line: 182, column: 29, scope: !3697)
!3711 = !DILocation(line: 182, column: 59, scope: !3697)
!3712 = !DILocation(line: 184, column: 10, scope: !3697)
!3713 = !DILocation(line: 186, column: 8, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3697, file: !188, line: 186, column: 3)
!3715 = !DILocation(line: 0, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3714, file: !188, line: 186, column: 3)
!3717 = !DILocation(line: 186, column: 23, scope: !3716)
!3718 = !DILocation(line: 186, column: 3, scope: !3714)
!3719 = !DILocation(line: 186, column: 52, scope: !3716)
!3720 = distinct !{!3720, !3718, !3721}
!3721 = !DILocation(line: 187, column: 5, scope: !3714)
!3722 = !DILocation(line: 188, column: 3, scope: !3697)
!3723 = !DILocation(line: 189, column: 1, scope: !3697)
!3724 = distinct !DISubprogram(name: "version_etc_va", scope: !188, file: !188, line: 196, type: !3725, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3734)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3602, !10, !10, !10, !3727}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !185, line: 189, size: 192, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3728, file: !185, line: 189, baseType: !55, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3728, file: !185, line: 189, baseType: !55, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3728, file: !185, line: 189, baseType: !44, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3728, file: !185, line: 189, baseType: !44, size: 64, offset: 128)
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3735 = !DILocalVariable(name: "stream", arg: 1, scope: !3724, file: !188, line: 196, type: !3602)
!3736 = !DILocalVariable(name: "command_name", arg: 2, scope: !3724, file: !188, line: 197, type: !10)
!3737 = !DILocalVariable(name: "package", arg: 3, scope: !3724, file: !188, line: 197, type: !10)
!3738 = !DILocalVariable(name: "version", arg: 4, scope: !3724, file: !188, line: 198, type: !10)
!3739 = !DILocalVariable(name: "authors", arg: 5, scope: !3724, file: !188, line: 198, type: !3727)
!3740 = !DILocalVariable(name: "n_authors", scope: !3724, file: !188, line: 200, type: !90)
!3741 = !DILocalVariable(name: "authtab", scope: !3724, file: !188, line: 201, type: !3742)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !99)
!3743 = !DILocation(line: 196, column: 23, scope: !3724)
!3744 = !DILocation(line: 197, column: 29, scope: !3724)
!3745 = !DILocation(line: 197, column: 55, scope: !3724)
!3746 = !DILocation(line: 198, column: 29, scope: !3724)
!3747 = !DILocation(line: 198, column: 46, scope: !3724)
!3748 = !DILocation(line: 201, column: 3, scope: !3724)
!3749 = !DILocation(line: 201, column: 15, scope: !3724)
!3750 = !DILocation(line: 200, column: 10, scope: !3724)
!3751 = !DILocation(line: 205, column: 35, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !188, line: 203, column: 3)
!3753 = distinct !DILexicalBlock(scope: !3724, file: !188, line: 203, column: 3)
!3754 = !DILocation(line: 205, column: 14, scope: !3752)
!3755 = !DILocation(line: 205, column: 33, scope: !3752)
!3756 = !DILocation(line: 205, column: 67, scope: !3752)
!3757 = !DILocation(line: 203, column: 3, scope: !3753)
!3758 = !DILocation(line: 0, scope: !3752)
!3759 = !DILocation(line: 208, column: 3, scope: !3724)
!3760 = !DILocation(line: 210, column: 1, scope: !3724)
!3761 = distinct !DISubprogram(name: "version_etc", scope: !188, file: !188, line: 227, type: !3762, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3602, !10, !10, !10, null}
!3764 = !{!3765, !3766, !3767, !3768, !3769}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3761, file: !188, line: 227, type: !3602)
!3766 = !DILocalVariable(name: "command_name", arg: 2, scope: !3761, file: !188, line: 228, type: !10)
!3767 = !DILocalVariable(name: "package", arg: 3, scope: !3761, file: !188, line: 228, type: !10)
!3768 = !DILocalVariable(name: "version", arg: 4, scope: !3761, file: !188, line: 229, type: !10)
!3769 = !DILocalVariable(name: "authors", scope: !3761, file: !188, line: 231, type: !3770)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !164, line: 52, baseType: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1782, line: 48, baseType: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !185, line: 231, baseType: !3773)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3728, size: 192, elements: !1791)
!3774 = !DILocation(line: 227, column: 20, scope: !3761)
!3775 = !DILocation(line: 228, column: 26, scope: !3761)
!3776 = !DILocation(line: 228, column: 52, scope: !3761)
!3777 = !DILocation(line: 229, column: 26, scope: !3761)
!3778 = !DILocation(line: 231, column: 3, scope: !3761)
!3779 = !DILocation(line: 231, column: 11, scope: !3761)
!3780 = !DILocation(line: 233, column: 3, scope: !3761)
!3781 = !DILocation(line: 234, column: 3, scope: !3761)
!3782 = !DILocation(line: 235, column: 3, scope: !3761)
!3783 = !DILocation(line: 236, column: 1, scope: !3761)
!3784 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !188, file: !188, line: 239, type: !1492, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !4)
!3785 = !DILocation(line: 245, column: 3, scope: !3784)
!3786 = !DILocation(line: 251, column: 3, scope: !3784)
!3787 = !DILocation(line: 256, column: 3, scope: !3784)
!3788 = !DILocation(line: 258, column: 1, scope: !3784)
!3789 = distinct !DISubprogram(name: "xnmalloc", scope: !196, file: !196, line: 99, type: !3790, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!44, !90, !90}
!3792 = !{!3793, !3794}
!3793 = !DILocalVariable(name: "n", arg: 1, scope: !3789, file: !196, line: 99, type: !90)
!3794 = !DILocalVariable(name: "s", arg: 2, scope: !3789, file: !196, line: 99, type: !90)
!3795 = !DILocation(line: 99, column: 18, scope: !3789)
!3796 = !DILocation(line: 99, column: 28, scope: !3789)
!3797 = !DILocation(line: 101, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3789, file: !196, line: 101, column: 7)
!3799 = !DILocation(line: 101, column: 7, scope: !3789)
!3800 = !DILocation(line: 102, column: 5, scope: !3798)
!3801 = !DILocation(line: 103, column: 21, scope: !3789)
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3803, file: !3804, line: 39, type: !90)
!3803 = distinct !DISubprogram(name: "xmalloc", scope: !3804, file: !3804, line: 39, type: !3805, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3807)
!3804 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!44, !90}
!3807 = !{!3802, !3808}
!3808 = !DILocalVariable(name: "p", scope: !3803, file: !3804, line: 41, type: !44)
!3809 = !DILocation(line: 39, column: 17, scope: !3803, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 103, column: 10, scope: !3789)
!3811 = !DILocation(line: 41, column: 13, scope: !3803, inlinedAt: !3810)
!3812 = !DILocation(line: 41, column: 9, scope: !3803, inlinedAt: !3810)
!3813 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3810)
!3814 = distinct !DILexicalBlock(scope: !3803, file: !3804, line: 42, column: 7)
!3815 = !DILocation(line: 42, column: 15, scope: !3814, inlinedAt: !3810)
!3816 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3810)
!3817 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3810)
!3818 = !DILocation(line: 103, column: 3, scope: !3789)
!3819 = !DILocation(line: 39, column: 17, scope: !3803)
!3820 = !DILocation(line: 41, column: 13, scope: !3803)
!3821 = !DILocation(line: 41, column: 9, scope: !3803)
!3822 = !DILocation(line: 42, column: 8, scope: !3814)
!3823 = !DILocation(line: 42, column: 15, scope: !3814)
!3824 = !DILocation(line: 42, column: 10, scope: !3814)
!3825 = !DILocation(line: 43, column: 5, scope: !3814)
!3826 = !DILocation(line: 44, column: 3, scope: !3803)
!3827 = distinct !DISubprogram(name: "xnrealloc", scope: !196, file: !196, line: 112, type: !3828, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!44, !44, !90, !90}
!3830 = !{!3831, !3832, !3833}
!3831 = !DILocalVariable(name: "p", arg: 1, scope: !3827, file: !196, line: 112, type: !44)
!3832 = !DILocalVariable(name: "n", arg: 2, scope: !3827, file: !196, line: 112, type: !90)
!3833 = !DILocalVariable(name: "s", arg: 3, scope: !3827, file: !196, line: 112, type: !90)
!3834 = !DILocation(line: 112, column: 18, scope: !3827)
!3835 = !DILocation(line: 112, column: 28, scope: !3827)
!3836 = !DILocation(line: 112, column: 38, scope: !3827)
!3837 = !DILocation(line: 114, column: 7, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3827, file: !196, line: 114, column: 7)
!3839 = !DILocation(line: 114, column: 7, scope: !3827)
!3840 = !DILocation(line: 115, column: 5, scope: !3838)
!3841 = !DILocation(line: 116, column: 25, scope: !3827)
!3842 = !DILocalVariable(name: "p", arg: 1, scope: !3843, file: !3804, line: 51, type: !44)
!3843 = distinct !DISubprogram(name: "xrealloc", scope: !3804, file: !3804, line: 51, type: !3844, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!44, !44, !90}
!3846 = !{!3842, !3847}
!3847 = !DILocalVariable(name: "n", arg: 2, scope: !3843, file: !3804, line: 51, type: !90)
!3848 = !DILocation(line: 51, column: 17, scope: !3843, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 116, column: 10, scope: !3827)
!3850 = !DILocation(line: 51, column: 27, scope: !3843, inlinedAt: !3849)
!3851 = !DILocation(line: 53, column: 8, scope: !3852, inlinedAt: !3849)
!3852 = distinct !DILexicalBlock(scope: !3843, file: !3804, line: 53, column: 7)
!3853 = !DILocation(line: 53, column: 13, scope: !3852, inlinedAt: !3849)
!3854 = !DILocation(line: 53, column: 10, scope: !3852, inlinedAt: !3849)
!3855 = !DILocation(line: 57, column: 7, scope: !3856, inlinedAt: !3849)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !3804, line: 54, column: 5)
!3857 = !DILocation(line: 58, column: 7, scope: !3856, inlinedAt: !3849)
!3858 = !DILocation(line: 61, column: 7, scope: !3843, inlinedAt: !3849)
!3859 = !DILocation(line: 62, column: 8, scope: !3860, inlinedAt: !3849)
!3860 = distinct !DILexicalBlock(scope: !3843, file: !3804, line: 62, column: 7)
!3861 = !DILocation(line: 62, column: 13, scope: !3860, inlinedAt: !3849)
!3862 = !DILocation(line: 62, column: 10, scope: !3860, inlinedAt: !3849)
!3863 = !DILocation(line: 63, column: 5, scope: !3860, inlinedAt: !3849)
!3864 = !DILocation(line: 0, scope: !3843, inlinedAt: !3849)
!3865 = !DILocation(line: 116, column: 3, scope: !3827)
!3866 = !DILocation(line: 51, column: 17, scope: !3843)
!3867 = !DILocation(line: 51, column: 27, scope: !3843)
!3868 = !DILocation(line: 53, column: 8, scope: !3852)
!3869 = !DILocation(line: 53, column: 13, scope: !3852)
!3870 = !DILocation(line: 53, column: 10, scope: !3852)
!3871 = !DILocation(line: 57, column: 7, scope: !3856)
!3872 = !DILocation(line: 58, column: 7, scope: !3856)
!3873 = !DILocation(line: 61, column: 7, scope: !3843)
!3874 = !DILocation(line: 62, column: 8, scope: !3860)
!3875 = !DILocation(line: 62, column: 13, scope: !3860)
!3876 = !DILocation(line: 62, column: 10, scope: !3860)
!3877 = !DILocation(line: 63, column: 5, scope: !3860)
!3878 = !DILocation(line: 0, scope: !3843)
!3879 = !DILocation(line: 65, column: 1, scope: !3843)
!3880 = !DILocation(line: 174, column: 19, scope: !197)
!3881 = !DILocation(line: 174, column: 30, scope: !197)
!3882 = !DILocation(line: 174, column: 41, scope: !197)
!3883 = !DILocation(line: 176, column: 14, scope: !197)
!3884 = !DILocation(line: 176, column: 10, scope: !197)
!3885 = !DILocation(line: 178, column: 9, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !197, file: !196, line: 178, column: 7)
!3887 = !DILocation(line: 178, column: 7, scope: !197)
!3888 = !DILocation(line: 180, column: 13, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !196, line: 180, column: 11)
!3890 = distinct !DILexicalBlock(scope: !3886, file: !196, line: 179, column: 5)
!3891 = !DILocation(line: 180, column: 11, scope: !3890)
!3892 = !DILocation(line: 188, column: 30, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3889, file: !196, line: 181, column: 9)
!3894 = !DILocation(line: 189, column: 16, scope: !3893)
!3895 = !DILocation(line: 189, column: 13, scope: !3893)
!3896 = !DILocation(line: 190, column: 9, scope: !3893)
!3897 = !DILocation(line: 0, scope: !3893)
!3898 = !DILocation(line: 191, column: 11, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3890, file: !196, line: 191, column: 11)
!3900 = !DILocation(line: 191, column: 11, scope: !3890)
!3901 = !DILocation(line: 206, column: 7, scope: !197)
!3902 = !DILocation(line: 207, column: 25, scope: !197)
!3903 = !DILocation(line: 51, column: 17, scope: !3843, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 207, column: 10, scope: !197)
!3905 = !DILocation(line: 51, column: 27, scope: !3843, inlinedAt: !3904)
!3906 = !DILocation(line: 53, column: 10, scope: !3852, inlinedAt: !3904)
!3907 = !DILocation(line: 192, column: 9, scope: !3899)
!3908 = !DILocation(line: 200, column: 69, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !196, line: 200, column: 11)
!3910 = distinct !DILexicalBlock(scope: !3886, file: !196, line: 195, column: 5)
!3911 = !DILocation(line: 201, column: 11, scope: !3909)
!3912 = !DILocation(line: 200, column: 11, scope: !3910)
!3913 = !DILocation(line: 202, column: 9, scope: !3909)
!3914 = !DILocation(line: 203, column: 14, scope: !3910)
!3915 = !DILocation(line: 203, column: 18, scope: !3910)
!3916 = !DILocation(line: 203, column: 9, scope: !3910)
!3917 = !DILocation(line: 53, column: 8, scope: !3852, inlinedAt: !3904)
!3918 = !DILocation(line: 57, column: 7, scope: !3856, inlinedAt: !3904)
!3919 = !DILocation(line: 58, column: 7, scope: !3856, inlinedAt: !3904)
!3920 = !DILocation(line: 61, column: 7, scope: !3843, inlinedAt: !3904)
!3921 = !DILocation(line: 62, column: 8, scope: !3860, inlinedAt: !3904)
!3922 = !DILocation(line: 62, column: 13, scope: !3860, inlinedAt: !3904)
!3923 = !DILocation(line: 62, column: 10, scope: !3860, inlinedAt: !3904)
!3924 = !DILocation(line: 63, column: 5, scope: !3860, inlinedAt: !3904)
!3925 = !DILocation(line: 0, scope: !3843, inlinedAt: !3904)
!3926 = !DILocation(line: 207, column: 3, scope: !197)
!3927 = distinct !DISubprogram(name: "xcharalloc", scope: !196, file: !196, line: 216, type: !2883, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3928)
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "n", arg: 1, scope: !3927, file: !196, line: 216, type: !90)
!3930 = !DILocation(line: 216, column: 20, scope: !3927)
!3931 = !DILocation(line: 39, column: 17, scope: !3803, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 218, column: 10, scope: !3927)
!3933 = !DILocation(line: 41, column: 13, scope: !3803, inlinedAt: !3932)
!3934 = !DILocation(line: 41, column: 9, scope: !3803, inlinedAt: !3932)
!3935 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3932)
!3936 = !DILocation(line: 42, column: 15, scope: !3814, inlinedAt: !3932)
!3937 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3932)
!3938 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3932)
!3939 = !DILocation(line: 218, column: 3, scope: !3927)
!3940 = distinct !DISubprogram(name: "x2realloc", scope: !3804, file: !3804, line: 74, type: !3941, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!44, !44, !200}
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !3804, line: 74, type: !44)
!3945 = !DILocalVariable(name: "pn", arg: 2, scope: !3940, file: !3804, line: 74, type: !200)
!3946 = !DILocation(line: 74, column: 18, scope: !3940)
!3947 = !DILocation(line: 74, column: 29, scope: !3940)
!3948 = !DILocation(line: 174, column: 19, scope: !197, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 76, column: 10, scope: !3940)
!3950 = !DILocation(line: 174, column: 30, scope: !197, inlinedAt: !3949)
!3951 = !DILocation(line: 174, column: 41, scope: !197, inlinedAt: !3949)
!3952 = !DILocation(line: 176, column: 14, scope: !197, inlinedAt: !3949)
!3953 = !DILocation(line: 176, column: 10, scope: !197, inlinedAt: !3949)
!3954 = !DILocation(line: 178, column: 9, scope: !3886, inlinedAt: !3949)
!3955 = !DILocation(line: 178, column: 7, scope: !197, inlinedAt: !3949)
!3956 = !DILocation(line: 180, column: 13, scope: !3889, inlinedAt: !3949)
!3957 = !DILocation(line: 180, column: 11, scope: !3890, inlinedAt: !3949)
!3958 = !DILocation(line: 191, column: 11, scope: !3899, inlinedAt: !3949)
!3959 = !DILocation(line: 191, column: 11, scope: !3890, inlinedAt: !3949)
!3960 = !DILocation(line: 206, column: 7, scope: !197, inlinedAt: !3949)
!3961 = !DILocation(line: 51, column: 17, scope: !3843, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 207, column: 10, scope: !197, inlinedAt: !3949)
!3963 = !DILocation(line: 51, column: 27, scope: !3843, inlinedAt: !3962)
!3964 = !DILocation(line: 53, column: 10, scope: !3852, inlinedAt: !3962)
!3965 = !DILocation(line: 192, column: 9, scope: !3899, inlinedAt: !3949)
!3966 = !DILocation(line: 201, column: 11, scope: !3909, inlinedAt: !3949)
!3967 = !DILocation(line: 200, column: 11, scope: !3910, inlinedAt: !3949)
!3968 = !DILocation(line: 202, column: 9, scope: !3909, inlinedAt: !3949)
!3969 = !DILocation(line: 203, column: 14, scope: !3910, inlinedAt: !3949)
!3970 = !DILocation(line: 203, column: 18, scope: !3910, inlinedAt: !3949)
!3971 = !DILocation(line: 203, column: 9, scope: !3910, inlinedAt: !3949)
!3972 = !DILocation(line: 53, column: 8, scope: !3852, inlinedAt: !3962)
!3973 = !DILocation(line: 57, column: 7, scope: !3856, inlinedAt: !3962)
!3974 = !DILocation(line: 58, column: 7, scope: !3856, inlinedAt: !3962)
!3975 = !DILocation(line: 61, column: 7, scope: !3843, inlinedAt: !3962)
!3976 = !DILocation(line: 62, column: 8, scope: !3860, inlinedAt: !3962)
!3977 = !DILocation(line: 62, column: 13, scope: !3860, inlinedAt: !3962)
!3978 = !DILocation(line: 62, column: 10, scope: !3860, inlinedAt: !3962)
!3979 = !DILocation(line: 63, column: 5, scope: !3860, inlinedAt: !3962)
!3980 = !DILocation(line: 0, scope: !3843, inlinedAt: !3962)
!3981 = !DILocation(line: 76, column: 3, scope: !3940)
!3982 = distinct !DISubprogram(name: "xzalloc", scope: !3804, file: !3804, line: 84, type: !3805, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3983)
!3983 = !{!3984}
!3984 = !DILocalVariable(name: "s", arg: 1, scope: !3982, file: !3804, line: 84, type: !90)
!3985 = !DILocation(line: 84, column: 17, scope: !3982)
!3986 = !DILocation(line: 39, column: 17, scope: !3803, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 86, column: 18, scope: !3982)
!3988 = !DILocation(line: 41, column: 13, scope: !3803, inlinedAt: !3987)
!3989 = !DILocation(line: 41, column: 9, scope: !3803, inlinedAt: !3987)
!3990 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3987)
!3991 = !DILocation(line: 42, column: 15, scope: !3814, inlinedAt: !3987)
!3992 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3987)
!3993 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3987)
!3994 = !DILocation(line: 86, column: 10, scope: !3982)
!3995 = !DILocation(line: 86, column: 3, scope: !3982)
!3996 = distinct !DISubprogram(name: "xcalloc", scope: !3804, file: !3804, line: 93, type: !3790, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3997)
!3997 = !{!3998, !3999, !4000}
!3998 = !DILocalVariable(name: "n", arg: 1, scope: !3996, file: !3804, line: 93, type: !90)
!3999 = !DILocalVariable(name: "s", arg: 2, scope: !3996, file: !3804, line: 93, type: !90)
!4000 = !DILocalVariable(name: "p", scope: !3996, file: !3804, line: 95, type: !44)
!4001 = !DILocation(line: 93, column: 17, scope: !3996)
!4002 = !DILocation(line: 93, column: 27, scope: !3996)
!4003 = !DILocation(line: 100, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3996, file: !3804, line: 100, column: 7)
!4005 = !DILocation(line: 101, column: 7, scope: !4004)
!4006 = !DILocation(line: 101, column: 18, scope: !4004)
!4007 = !DILocation(line: 95, column: 9, scope: !3996)
!4008 = !DILocation(line: 101, column: 16, scope: !4004)
!4009 = !DILocation(line: 100, column: 7, scope: !3996)
!4010 = !DILocation(line: 102, column: 5, scope: !4004)
!4011 = !DILocation(line: 103, column: 3, scope: !3996)
!4012 = distinct !DISubprogram(name: "xmemdup", scope: !3804, file: !3804, line: 111, type: !4013, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4017)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!44, !4015, !90}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4017 = !{!4018, !4019}
!4018 = !DILocalVariable(name: "p", arg: 1, scope: !4012, file: !3804, line: 111, type: !4015)
!4019 = !DILocalVariable(name: "s", arg: 2, scope: !4012, file: !3804, line: 111, type: !90)
!4020 = !DILocation(line: 111, column: 22, scope: !4012)
!4021 = !DILocation(line: 111, column: 32, scope: !4012)
!4022 = !DILocation(line: 39, column: 17, scope: !3803, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 113, column: 18, scope: !4012)
!4024 = !DILocation(line: 41, column: 13, scope: !3803, inlinedAt: !4023)
!4025 = !DILocation(line: 41, column: 9, scope: !3803, inlinedAt: !4023)
!4026 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !4023)
!4027 = !DILocation(line: 42, column: 15, scope: !3814, inlinedAt: !4023)
!4028 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !4023)
!4029 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !4023)
!4030 = !DILocation(line: 113, column: 10, scope: !4012)
!4031 = !DILocation(line: 113, column: 3, scope: !4012)
!4032 = distinct !DISubprogram(name: "xstrdup", scope: !3804, file: !3804, line: 119, type: !3089, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4033)
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "string", arg: 1, scope: !4032, file: !3804, line: 119, type: !10)
!4035 = !DILocation(line: 119, column: 22, scope: !4032)
!4036 = !DILocation(line: 121, column: 27, scope: !4032)
!4037 = !DILocation(line: 121, column: 43, scope: !4032)
!4038 = !DILocation(line: 111, column: 22, scope: !4012, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 121, column: 10, scope: !4032)
!4040 = !DILocation(line: 111, column: 32, scope: !4012, inlinedAt: !4039)
!4041 = !DILocation(line: 39, column: 17, scope: !3803, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 113, column: 18, scope: !4012, inlinedAt: !4039)
!4043 = !DILocation(line: 41, column: 13, scope: !3803, inlinedAt: !4042)
!4044 = !DILocation(line: 41, column: 9, scope: !3803, inlinedAt: !4042)
!4045 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !4042)
!4046 = !DILocation(line: 42, column: 15, scope: !3814, inlinedAt: !4042)
!4047 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !4042)
!4048 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !4042)
!4049 = !DILocation(line: 113, column: 10, scope: !4012, inlinedAt: !4039)
!4050 = !DILocation(line: 121, column: 3, scope: !4032)
!4051 = distinct !DISubprogram(name: "xalloc_die", scope: !4052, file: !4052, line: 32, type: !1492, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !209, retainedNodes: !4)
!4052 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4053 = !DILocation(line: 34, column: 10, scope: !4051)
!4054 = !DILocation(line: 34, column: 33, scope: !4051)
!4055 = !DILocation(line: 34, column: 3, scope: !4051)
!4056 = !DILocation(line: 40, column: 3, scope: !4051)
!4057 = distinct !DISubprogram(name: "rpl_calloc", scope: !4058, file: !4058, line: 42, type: !3790, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !211, retainedNodes: !4059)
!4058 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4059 = !{!4060, !4061, !4062, !4063}
!4060 = !DILocalVariable(name: "n", arg: 1, scope: !4057, file: !4058, line: 42, type: !90)
!4061 = !DILocalVariable(name: "s", arg: 2, scope: !4057, file: !4058, line: 42, type: !90)
!4062 = !DILocalVariable(name: "result", scope: !4057, file: !4058, line: 44, type: !44)
!4063 = !DILocalVariable(name: "bytes", scope: !4064, file: !4058, line: 56, type: !90)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !4058, line: 53, column: 5)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !4058, line: 47, column: 7)
!4066 = !DILocation(line: 42, column: 20, scope: !4057)
!4067 = !DILocation(line: 42, column: 30, scope: !4057)
!4068 = !DILocation(line: 47, column: 9, scope: !4065)
!4069 = !DILocation(line: 47, column: 19, scope: !4065)
!4070 = !DILocation(line: 47, column: 14, scope: !4065)
!4071 = !DILocation(line: 56, column: 24, scope: !4064)
!4072 = !DILocation(line: 56, column: 14, scope: !4064)
!4073 = !DILocation(line: 57, column: 17, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4064, file: !4058, line: 57, column: 11)
!4075 = !DILocation(line: 57, column: 21, scope: !4074)
!4076 = !DILocation(line: 57, column: 11, scope: !4064)
!4077 = !DILocation(line: 59, column: 11, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4074, file: !4058, line: 58, column: 9)
!4079 = !DILocation(line: 59, column: 17, scope: !4078)
!4080 = !DILocation(line: 65, column: 12, scope: !4057)
!4081 = !DILocation(line: 44, column: 9, scope: !4057)
!4082 = !DILocation(line: 72, column: 3, scope: !4057)
!4083 = !DILocation(line: 0, scope: !4078)
!4084 = !DILocation(line: 73, column: 1, scope: !4057)
!4085 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4086, file: !4086, line: 385, type: !4087, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !213, retainedNodes: !4101)
!4086 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!90, !4089, !10, !90, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2046, line: 6, baseType: !4092)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2048, line: 21, baseType: !4093)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2048, line: 13, size: 64, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4093, file: !2048, line: 15, baseType: !20, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4093, file: !2048, line: 20, baseType: !4097, size: 32, offset: 32)
!4097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4093, file: !2048, line: 16, size: 32, elements: !4098)
!4098 = !{!4099, !4100}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4097, file: !2048, line: 18, baseType: !55, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4097, file: !2048, line: 19, baseType: !2057, size: 32)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4102 = !DILocalVariable(name: "pwc", arg: 1, scope: !4085, file: !4086, line: 385, type: !4089)
!4103 = !DILocalVariable(name: "s", arg: 2, scope: !4085, file: !4086, line: 385, type: !10)
!4104 = !DILocalVariable(name: "n", arg: 3, scope: !4085, file: !4086, line: 385, type: !90)
!4105 = !DILocalVariable(name: "ps", arg: 4, scope: !4085, file: !4086, line: 385, type: !4090)
!4106 = !DILocalVariable(name: "ret", scope: !4085, file: !4086, line: 387, type: !90)
!4107 = !DILocalVariable(name: "wc", scope: !4085, file: !4086, line: 388, type: !2062)
!4108 = !DILocalVariable(name: "uc", scope: !4109, file: !4086, line: 449, type: !1906)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !4086, line: 448, column: 5)
!4110 = distinct !DILexicalBlock(scope: !4085, file: !4086, line: 447, column: 7)
!4111 = !DILocation(line: 385, column: 23, scope: !4085)
!4112 = !DILocation(line: 385, column: 40, scope: !4085)
!4113 = !DILocation(line: 385, column: 50, scope: !4085)
!4114 = !DILocation(line: 385, column: 64, scope: !4085)
!4115 = !DILocation(line: 388, column: 3, scope: !4085)
!4116 = !DILocation(line: 404, column: 9, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4085, file: !4086, line: 404, column: 7)
!4118 = !DILocation(line: 404, column: 7, scope: !4085)
!4119 = !DILocation(line: 439, column: 9, scope: !4085)
!4120 = !DILocation(line: 387, column: 10, scope: !4085)
!4121 = !DILocation(line: 447, column: 19, scope: !4110)
!4122 = !DILocation(line: 447, column: 31, scope: !4110)
!4123 = !DILocation(line: 447, column: 26, scope: !4110)
!4124 = !DILocation(line: 447, column: 41, scope: !4110)
!4125 = !DILocation(line: 447, column: 7, scope: !4085)
!4126 = !DILocation(line: 449, column: 26, scope: !4109)
!4127 = !DILocation(line: 449, column: 21, scope: !4109)
!4128 = !DILocation(line: 450, column: 14, scope: !4109)
!4129 = !DILocation(line: 450, column: 12, scope: !4109)
!4130 = !DILocation(line: 0, scope: !4109)
!4131 = !DILocation(line: 456, column: 1, scope: !4085)
!4132 = distinct !DISubprogram(name: "close_stream", scope: !4133, file: !4133, line: 56, type: !4134, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !4170)
!4133 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!20, !4136}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3604, line: 7, baseType: !4138)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3606, line: 49, size: 1728, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4138, file: !3606, line: 51, baseType: !20, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4138, file: !3606, line: 54, baseType: !45, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4138, file: !3606, line: 55, baseType: !45, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4138, file: !3606, line: 56, baseType: !45, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4138, file: !3606, line: 57, baseType: !45, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4138, file: !3606, line: 58, baseType: !45, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4138, file: !3606, line: 59, baseType: !45, size: 64, offset: 384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4138, file: !3606, line: 60, baseType: !45, size: 64, offset: 448)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4138, file: !3606, line: 61, baseType: !45, size: 64, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4138, file: !3606, line: 64, baseType: !45, size: 64, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4138, file: !3606, line: 65, baseType: !45, size: 64, offset: 640)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4138, file: !3606, line: 66, baseType: !45, size: 64, offset: 704)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4138, file: !3606, line: 68, baseType: !3621, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4138, file: !3606, line: 70, baseType: !4154, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4138, file: !3606, line: 72, baseType: !20, size: 32, offset: 896)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4138, file: !3606, line: 73, baseType: !20, size: 32, offset: 928)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4138, file: !3606, line: 74, baseType: !177, size: 64, offset: 960)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4138, file: !3606, line: 77, baseType: !89, size: 16, offset: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4138, file: !3606, line: 78, baseType: !3630, size: 8, offset: 1040)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4138, file: !3606, line: 79, baseType: !3632, size: 8, offset: 1048)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4138, file: !3606, line: 81, baseType: !3634, size: 64, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4138, file: !3606, line: 89, baseType: !3637, size: 64, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4138, file: !3606, line: 91, baseType: !3639, size: 64, offset: 1216)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4138, file: !3606, line: 92, baseType: !3642, size: 64, offset: 1280)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4138, file: !3606, line: 93, baseType: !4154, size: 64, offset: 1344)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4138, file: !3606, line: 94, baseType: !44, size: 64, offset: 1408)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4138, file: !3606, line: 95, baseType: !90, size: 64, offset: 1472)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4138, file: !3606, line: 96, baseType: !20, size: 32, offset: 1536)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4138, file: !3606, line: 98, baseType: !3649, size: 160, offset: 1568)
!4170 = !{!4171, !4172, !4174, !4175}
!4171 = !DILocalVariable(name: "stream", arg: 1, scope: !4132, file: !4133, line: 56, type: !4136)
!4172 = !DILocalVariable(name: "some_pending", scope: !4132, file: !4133, line: 58, type: !4173)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!4174 = !DILocalVariable(name: "prev_fail", scope: !4132, file: !4133, line: 59, type: !4173)
!4175 = !DILocalVariable(name: "fclose_fail", scope: !4132, file: !4133, line: 60, type: !4173)
!4176 = !DILocation(line: 56, column: 21, scope: !4132)
!4177 = !DILocation(line: 58, column: 30, scope: !4132)
!4178 = !DILocalVariable(name: "__stream", arg: 1, scope: !4179, file: !4180, line: 135, type: !4136)
!4179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4180, file: !4180, line: 135, type: !4134, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !4181)
!4180 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4181 = !{!4178}
!4182 = !DILocation(line: 135, column: 1, scope: !4179, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 59, column: 27, scope: !4132)
!4184 = !DILocation(line: 137, column: 10, scope: !4179, inlinedAt: !4183)
!4185 = !{!4186, !1507, i64 0}
!4186 = !{!"_IO_FILE", !1507, i64 0, !655, i64 8, !655, i64 16, !655, i64 24, !655, i64 32, !655, i64 40, !655, i64 48, !655, i64 56, !655, i64 64, !655, i64 72, !655, i64 80, !655, i64 88, !655, i64 96, !655, i64 104, !1507, i64 112, !1507, i64 116, !2928, i64 120, !2302, i64 128, !656, i64 130, !656, i64 131, !655, i64 136, !2928, i64 144, !655, i64 152, !655, i64 160, !655, i64 168, !655, i64 176, !2928, i64 184, !1507, i64 192, !656, i64 196}
!4187 = !DILocation(line: 59, column: 43, scope: !4132)
!4188 = !DILocation(line: 60, column: 29, scope: !4132)
!4189 = !DILocation(line: 60, column: 45, scope: !4132)
!4190 = !DILocation(line: 70, column: 17, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4132, file: !4133, line: 70, column: 7)
!4192 = !DILocation(line: 58, column: 50, scope: !4132)
!4193 = !DILocation(line: 70, column: 33, scope: !4191)
!4194 = !DILocation(line: 70, column: 53, scope: !4191)
!4195 = !DILocation(line: 70, column: 59, scope: !4191)
!4196 = !DILocation(line: 70, column: 7, scope: !4132)
!4197 = !DILocation(line: 72, column: 11, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4191, file: !4133, line: 71, column: 5)
!4199 = !DILocation(line: 73, column: 9, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4198, file: !4133, line: 72, column: 11)
!4201 = !DILocation(line: 73, column: 15, scope: !4200)
!4202 = !DILocation(line: 0, scope: !4132)
!4203 = !DILocation(line: 78, column: 1, scope: !4132)
!4204 = distinct !DISubprogram(name: "hard_locale", scope: !4205, file: !4205, line: 38, type: !4206, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !4208)
!4205 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!9, !20}
!4208 = !{!4209, !4210, !4211}
!4209 = !DILocalVariable(name: "category", arg: 1, scope: !4204, file: !4205, line: 38, type: !20)
!4210 = !DILocalVariable(name: "hard", scope: !4204, file: !4205, line: 40, type: !9)
!4211 = !DILocalVariable(name: "p", scope: !4204, file: !4205, line: 41, type: !10)
!4212 = !DILocation(line: 38, column: 18, scope: !4204)
!4213 = !DILocation(line: 40, column: 8, scope: !4204)
!4214 = !DILocation(line: 41, column: 19, scope: !4204)
!4215 = !DILocation(line: 41, column: 15, scope: !4204)
!4216 = !DILocation(line: 43, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4204, file: !4205, line: 43, column: 7)
!4218 = !DILocation(line: 43, column: 7, scope: !4204)
!4219 = !DILocation(line: 47, column: 15, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !4205, line: 47, column: 15)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !4205, line: 46, column: 9)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !4205, line: 45, column: 11)
!4223 = distinct !DILexicalBlock(scope: !4217, file: !4205, line: 44, column: 5)
!4224 = !DILocation(line: 47, column: 31, scope: !4220)
!4225 = !DILocation(line: 47, column: 36, scope: !4220)
!4226 = !DILocation(line: 47, column: 39, scope: !4220)
!4227 = !DILocation(line: 47, column: 59, scope: !4220)
!4228 = !DILocation(line: 47, column: 15, scope: !4221)
!4229 = !DILocation(line: 48, column: 13, scope: !4220)
!4230 = !DILocation(line: 71, column: 3, scope: !4204)
!4231 = distinct !DISubprogram(name: "locale_charset", scope: !4232, file: !4232, line: 687, type: !4233, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !4235)
!4232 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!10}
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "codeset", scope: !4231, file: !4232, line: 689, type: !10)
!4237 = !DILocation(line: 696, column: 13, scope: !4231)
!4238 = !DILocation(line: 689, column: 15, scope: !4231)
!4239 = !DILocation(line: 754, column: 15, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4231, file: !4232, line: 754, column: 7)
!4241 = !DILocation(line: 754, column: 7, scope: !4231)
!4242 = !DILocation(line: 907, column: 13, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !4232, line: 907, column: 13)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !4232, line: 897, column: 7)
!4245 = distinct !DILexicalBlock(scope: !4231, file: !4232, line: 856, column: 3)
!4246 = !DILocation(line: 907, column: 24, scope: !4243)
!4247 = !DILocation(line: 907, column: 13, scope: !4244)
!4248 = !DILocation(line: 995, column: 3, scope: !4231)
!4249 = distinct !DISubprogram(name: "rpl_fclose", scope: !4250, file: !4250, line: 58, type: !4251, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !609, retainedNodes: !4287)
!4250 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!20, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3604, line: 7, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3606, line: 49, size: 1728, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4255, file: !3606, line: 51, baseType: !20, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4255, file: !3606, line: 54, baseType: !45, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4255, file: !3606, line: 55, baseType: !45, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4255, file: !3606, line: 56, baseType: !45, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4255, file: !3606, line: 57, baseType: !45, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4255, file: !3606, line: 58, baseType: !45, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4255, file: !3606, line: 59, baseType: !45, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4255, file: !3606, line: 60, baseType: !45, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4255, file: !3606, line: 61, baseType: !45, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4255, file: !3606, line: 64, baseType: !45, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4255, file: !3606, line: 65, baseType: !45, size: 64, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4255, file: !3606, line: 66, baseType: !45, size: 64, offset: 704)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4255, file: !3606, line: 68, baseType: !3621, size: 64, offset: 768)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4255, file: !3606, line: 70, baseType: !4271, size: 64, offset: 832)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4255, file: !3606, line: 72, baseType: !20, size: 32, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4255, file: !3606, line: 73, baseType: !20, size: 32, offset: 928)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4255, file: !3606, line: 74, baseType: !177, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4255, file: !3606, line: 77, baseType: !89, size: 16, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4255, file: !3606, line: 78, baseType: !3630, size: 8, offset: 1040)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4255, file: !3606, line: 79, baseType: !3632, size: 8, offset: 1048)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4255, file: !3606, line: 81, baseType: !3634, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4255, file: !3606, line: 89, baseType: !3637, size: 64, offset: 1152)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4255, file: !3606, line: 91, baseType: !3639, size: 64, offset: 1216)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4255, file: !3606, line: 92, baseType: !3642, size: 64, offset: 1280)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4255, file: !3606, line: 93, baseType: !4271, size: 64, offset: 1344)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4255, file: !3606, line: 94, baseType: !44, size: 64, offset: 1408)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4255, file: !3606, line: 95, baseType: !90, size: 64, offset: 1472)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4255, file: !3606, line: 96, baseType: !20, size: 32, offset: 1536)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4255, file: !3606, line: 98, baseType: !3649, size: 160, offset: 1568)
!4287 = !{!4288, !4289, !4290, !4291}
!4288 = !DILocalVariable(name: "fp", arg: 1, scope: !4249, file: !4250, line: 58, type: !4253)
!4289 = !DILocalVariable(name: "saved_errno", scope: !4249, file: !4250, line: 60, type: !20)
!4290 = !DILocalVariable(name: "fd", scope: !4249, file: !4250, line: 61, type: !20)
!4291 = !DILocalVariable(name: "result", scope: !4249, file: !4250, line: 62, type: !20)
!4292 = !DILocation(line: 58, column: 19, scope: !4249)
!4293 = !DILocation(line: 60, column: 7, scope: !4249)
!4294 = !DILocation(line: 62, column: 7, scope: !4249)
!4295 = !DILocation(line: 65, column: 8, scope: !4249)
!4296 = !DILocation(line: 61, column: 7, scope: !4249)
!4297 = !DILocation(line: 66, column: 10, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4249, file: !4250, line: 66, column: 7)
!4299 = !DILocation(line: 66, column: 7, scope: !4249)
!4300 = !DILocation(line: 67, column: 12, scope: !4298)
!4301 = !DILocation(line: 67, column: 5, scope: !4298)
!4302 = !DILocation(line: 72, column: 9, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4249, file: !4250, line: 72, column: 7)
!4304 = !DILocation(line: 72, column: 23, scope: !4303)
!4305 = !DILocation(line: 72, column: 33, scope: !4303)
!4306 = !DILocation(line: 72, column: 26, scope: !4303)
!4307 = !DILocation(line: 72, column: 59, scope: !4303)
!4308 = !DILocation(line: 73, column: 7, scope: !4303)
!4309 = !DILocation(line: 73, column: 10, scope: !4303)
!4310 = !DILocation(line: 72, column: 7, scope: !4249)
!4311 = !DILocation(line: 100, column: 12, scope: !4249)
!4312 = !DILocation(line: 105, column: 7, scope: !4249)
!4313 = !DILocation(line: 74, column: 19, scope: !4303)
!4314 = !DILocation(line: 105, column: 19, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4249, file: !4250, line: 105, column: 7)
!4316 = !DILocation(line: 107, column: 13, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !4250, line: 106, column: 5)
!4318 = !DILocation(line: 109, column: 5, scope: !4317)
!4319 = !DILocation(line: 0, scope: !4249)
!4320 = !DILocation(line: 112, column: 1, scope: !4249)
!4321 = distinct !DISubprogram(name: "rpl_fflush", scope: !4322, file: !4322, line: 129, type: !4323, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !611, retainedNodes: !4359)
!4322 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!20, !4325}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3604, line: 7, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3606, line: 49, size: 1728, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4327, file: !3606, line: 51, baseType: !20, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4327, file: !3606, line: 54, baseType: !45, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4327, file: !3606, line: 55, baseType: !45, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4327, file: !3606, line: 56, baseType: !45, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4327, file: !3606, line: 57, baseType: !45, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4327, file: !3606, line: 58, baseType: !45, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4327, file: !3606, line: 59, baseType: !45, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4327, file: !3606, line: 60, baseType: !45, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4327, file: !3606, line: 61, baseType: !45, size: 64, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4327, file: !3606, line: 64, baseType: !45, size: 64, offset: 576)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4327, file: !3606, line: 65, baseType: !45, size: 64, offset: 640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4327, file: !3606, line: 66, baseType: !45, size: 64, offset: 704)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4327, file: !3606, line: 68, baseType: !3621, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4327, file: !3606, line: 70, baseType: !4343, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4327, file: !3606, line: 72, baseType: !20, size: 32, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4327, file: !3606, line: 73, baseType: !20, size: 32, offset: 928)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4327, file: !3606, line: 74, baseType: !177, size: 64, offset: 960)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4327, file: !3606, line: 77, baseType: !89, size: 16, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4327, file: !3606, line: 78, baseType: !3630, size: 8, offset: 1040)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4327, file: !3606, line: 79, baseType: !3632, size: 8, offset: 1048)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4327, file: !3606, line: 81, baseType: !3634, size: 64, offset: 1088)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4327, file: !3606, line: 89, baseType: !3637, size: 64, offset: 1152)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4327, file: !3606, line: 91, baseType: !3639, size: 64, offset: 1216)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4327, file: !3606, line: 92, baseType: !3642, size: 64, offset: 1280)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4327, file: !3606, line: 93, baseType: !4343, size: 64, offset: 1344)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4327, file: !3606, line: 94, baseType: !44, size: 64, offset: 1408)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4327, file: !3606, line: 95, baseType: !90, size: 64, offset: 1472)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4327, file: !3606, line: 96, baseType: !20, size: 32, offset: 1536)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4327, file: !3606, line: 98, baseType: !3649, size: 160, offset: 1568)
!4359 = !{!4360}
!4360 = !DILocalVariable(name: "stream", arg: 1, scope: !4321, file: !4322, line: 129, type: !4325)
!4361 = !DILocation(line: 129, column: 19, scope: !4321)
!4362 = !DILocation(line: 150, column: 14, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4321, file: !4322, line: 150, column: 7)
!4364 = !DILocation(line: 150, column: 22, scope: !4363)
!4365 = !DILocation(line: 150, column: 27, scope: !4363)
!4366 = !DILocation(line: 150, column: 7, scope: !4321)
!4367 = !DILocation(line: 151, column: 12, scope: !4363)
!4368 = !DILocation(line: 151, column: 5, scope: !4363)
!4369 = !DILocalVariable(name: "fp", arg: 1, scope: !4370, file: !4322, line: 41, type: !4325)
!4370 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4322, file: !4322, line: 41, type: !4371, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !611, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !4325}
!4373 = !{!4369}
!4374 = !DILocation(line: 41, column: 48, scope: !4370, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 156, column: 3, scope: !4321)
!4376 = !DILocation(line: 43, column: 11, scope: !4377, inlinedAt: !4375)
!4377 = distinct !DILexicalBlock(scope: !4370, file: !4322, line: 43, column: 7)
!4378 = !DILocation(line: 43, column: 18, scope: !4377, inlinedAt: !4375)
!4379 = !DILocation(line: 43, column: 7, scope: !4370, inlinedAt: !4375)
!4380 = !DILocation(line: 45, column: 5, scope: !4377, inlinedAt: !4375)
!4381 = !DILocation(line: 158, column: 10, scope: !4321)
!4382 = !DILocation(line: 158, column: 3, scope: !4321)
!4383 = !DILocation(line: 0, scope: !4321)
!4384 = !DILocation(line: 232, column: 1, scope: !4321)
!4385 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4386, file: !4386, line: 28, type: !4387, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !613, retainedNodes: !4423)
!4386 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!20, !4389, !176, !20}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3604, line: 7, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3606, line: 49, size: 1728, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4391, file: !3606, line: 51, baseType: !20, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4391, file: !3606, line: 54, baseType: !45, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4391, file: !3606, line: 55, baseType: !45, size: 64, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4391, file: !3606, line: 56, baseType: !45, size: 64, offset: 192)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4391, file: !3606, line: 57, baseType: !45, size: 64, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4391, file: !3606, line: 58, baseType: !45, size: 64, offset: 320)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4391, file: !3606, line: 59, baseType: !45, size: 64, offset: 384)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4391, file: !3606, line: 60, baseType: !45, size: 64, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4391, file: !3606, line: 61, baseType: !45, size: 64, offset: 512)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4391, file: !3606, line: 64, baseType: !45, size: 64, offset: 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4391, file: !3606, line: 65, baseType: !45, size: 64, offset: 640)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4391, file: !3606, line: 66, baseType: !45, size: 64, offset: 704)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4391, file: !3606, line: 68, baseType: !3621, size: 64, offset: 768)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4391, file: !3606, line: 70, baseType: !4407, size: 64, offset: 832)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4391, file: !3606, line: 72, baseType: !20, size: 32, offset: 896)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4391, file: !3606, line: 73, baseType: !20, size: 32, offset: 928)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4391, file: !3606, line: 74, baseType: !177, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4391, file: !3606, line: 77, baseType: !89, size: 16, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4391, file: !3606, line: 78, baseType: !3630, size: 8, offset: 1040)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4391, file: !3606, line: 79, baseType: !3632, size: 8, offset: 1048)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4391, file: !3606, line: 81, baseType: !3634, size: 64, offset: 1088)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4391, file: !3606, line: 89, baseType: !3637, size: 64, offset: 1152)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4391, file: !3606, line: 91, baseType: !3639, size: 64, offset: 1216)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4391, file: !3606, line: 92, baseType: !3642, size: 64, offset: 1280)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4391, file: !3606, line: 93, baseType: !4407, size: 64, offset: 1344)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4391, file: !3606, line: 94, baseType: !44, size: 64, offset: 1408)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4391, file: !3606, line: 95, baseType: !90, size: 64, offset: 1472)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4391, file: !3606, line: 96, baseType: !20, size: 32, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4391, file: !3606, line: 98, baseType: !3649, size: 160, offset: 1568)
!4423 = !{!4424, !4425, !4426, !4427}
!4424 = !DILocalVariable(name: "fp", arg: 1, scope: !4385, file: !4386, line: 28, type: !4389)
!4425 = !DILocalVariable(name: "offset", arg: 2, scope: !4385, file: !4386, line: 28, type: !176)
!4426 = !DILocalVariable(name: "whence", arg: 3, scope: !4385, file: !4386, line: 28, type: !20)
!4427 = !DILocalVariable(name: "pos", scope: !4428, file: !4386, line: 117, type: !176)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !4386, line: 113, column: 5)
!4429 = distinct !DILexicalBlock(scope: !4385, file: !4386, line: 52, column: 7)
!4430 = !DILocation(line: 28, column: 15, scope: !4385)
!4431 = !DILocation(line: 28, column: 25, scope: !4385)
!4432 = !DILocation(line: 28, column: 37, scope: !4385)
!4433 = !DILocation(line: 52, column: 11, scope: !4429)
!4434 = !{!4186, !655, i64 16}
!4435 = !DILocation(line: 52, column: 31, scope: !4429)
!4436 = !{!4186, !655, i64 8}
!4437 = !DILocation(line: 52, column: 24, scope: !4429)
!4438 = !DILocation(line: 53, column: 7, scope: !4429)
!4439 = !DILocation(line: 53, column: 14, scope: !4429)
!4440 = !{!4186, !655, i64 40}
!4441 = !DILocation(line: 53, column: 35, scope: !4429)
!4442 = !{!4186, !655, i64 32}
!4443 = !DILocation(line: 53, column: 28, scope: !4429)
!4444 = !DILocation(line: 54, column: 7, scope: !4429)
!4445 = !DILocation(line: 54, column: 14, scope: !4429)
!4446 = !{!4186, !655, i64 72}
!4447 = !DILocation(line: 54, column: 28, scope: !4429)
!4448 = !DILocation(line: 52, column: 7, scope: !4385)
!4449 = !DILocation(line: 117, column: 26, scope: !4428)
!4450 = !DILocation(line: 117, column: 19, scope: !4428)
!4451 = !DILocation(line: 117, column: 13, scope: !4428)
!4452 = !DILocation(line: 118, column: 15, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4428, file: !4386, line: 118, column: 11)
!4454 = !DILocation(line: 118, column: 11, scope: !4428)
!4455 = !DILocation(line: 129, column: 11, scope: !4428)
!4456 = !DILocation(line: 129, column: 18, scope: !4428)
!4457 = !DILocation(line: 130, column: 11, scope: !4428)
!4458 = !DILocation(line: 130, column: 19, scope: !4428)
!4459 = !{!4186, !2928, i64 144}
!4460 = !DILocation(line: 161, column: 7, scope: !4428)
!4461 = !DILocation(line: 163, column: 10, scope: !4385)
!4462 = !DILocation(line: 163, column: 3, scope: !4385)
!4463 = !DILocation(line: 0, scope: !4385)
!4464 = !DILocation(line: 164, column: 1, scope: !4385)
