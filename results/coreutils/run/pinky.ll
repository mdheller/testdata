; ModuleID = 'coreutils-8.30/src/pinky.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [328 x i8] c"\0A  -l              produce long format output for the specified USERs\0A  -b              omit the user's home directory and shell in long format\0A  -h              omit the user's project file in long format\0A  -p              omit the user's plan file in long format\0A  -s              do short format output, this is the default\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [309 x i8] c"  -f              omit the line of column headings in short format\0A  -w              omit the user's full name in short format\0A  -i              omit the user's full name and remote host in short format\0A  -q              omit the user's full name, remote host and idle time\0A                  in short format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"\0AA lightweight 'finger' program;  print user information.\0AThe utmp file will be %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pinky\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sfwiqbhlp\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@do_short_format = internal unnamed_addr global i1 false, align 1, !dbg !177
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !178
@include_fullname = internal unnamed_addr global i1 false, align 1, !dbg !179
@include_where = internal unnamed_addr global i1 false, align 1, !dbg !180
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !181
@include_project = internal unnamed_addr global i1 false, align 1, !dbg !182
@include_plan = internal unnamed_addr global i1 false, align 1, !dbg !183
@include_home_and_shell = internal unnamed_addr global i1 false, align 1, !dbg !184
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [68 x i8] c"no username specified; at least one must be specified when using -l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !67
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !71
@.str.39 = private unnamed_addr constant [6 x i8] c"Login\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" %-19s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" TTY\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"When\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %-*s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Login name: \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%-28s\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"In real life: \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"???\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Directory: \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%-29s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Shell: \00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"/.project\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Project: \00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"/.plan\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Plan:\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%-8.*s\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"        ???\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" %19s\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" %-19.19s\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" %c%-8.*s\00", align 1
@idle_string.now = internal global i64 0, align 8, !dbg !73
@idle_string.buf = internal global [22 x i8] zeroinitializer, align 16, !dbg !92
@.str.59 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !97
@.str.57 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !185
@.str.73 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !191
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !196
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !233
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !238
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !241
@.str.85 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !248
@.str.93 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.99, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.101, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.105, i32 0, i32 0), i8* null], align 16, !dbg !255
@.str.96 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.98 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.99 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.100 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.101 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.102 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.103 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.104 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.105 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !267
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !274
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !286
@.str.11.106 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.108 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.109 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.110 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.111 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.112 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !290
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !297
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !288
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !299
@.str.117 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.119 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.120 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.121 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.122 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.123 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.124 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.125 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.126 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.127 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.128 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.129 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.130 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.133 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.134 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.135 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.136 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.137 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.138 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !305
@.str.1.149 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.168 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !772 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !777, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %0, metadata !776, metadata !DIExpression()), !dbg !800
  %3 = icmp eq i32 %0, 0, !dbg !801
  br i1 %3, label %9, label %4, !dbg !802

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !803, !tbaa !805
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !803
  %7 = load i8*, i8** @program_name, align 8, !dbg !803, !tbaa !805
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !803
  br label %62, !dbg !803

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !809
  %11 = load i8*, i8** @program_name, align 8, !dbg !809, !tbaa !805
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !809
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !810
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !805
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !810
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !811
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !805
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !811
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !812
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !812, !tbaa !805
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !812
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !813
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !805
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !813
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !814
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !814
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #11, !dbg !815
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %27, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !796
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !816
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !785, metadata !DIExpression()) #11, !dbg !817
  br label %29, !dbg !818

; <label>:29:                                     ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !785, metadata !DIExpression()) #11, !dbg !817
  %32 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %30) #14, !dbg !818
  %33 = icmp eq i32 %32, 0, !dbg !818
  br i1 %33, label %39, label %34, !dbg !819

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !820
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !785, metadata !DIExpression()) #11, !dbg !817
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !821
  %37 = load i8*, i8** %36, align 8, !dbg !821, !tbaa !822
  %38 = icmp eq i8* %37, null, !dbg !824
  br i1 %38, label %39, label %29, !dbg !825, !llvm.loop !826

; <label>:39:                                     ; preds = %34, %29
  %40 = phi %struct.infomap* [ %35, %34 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !785, metadata !DIExpression()) #11, !dbg !817
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !785, metadata !DIExpression()) #11, !dbg !817
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !829
  %42 = load i8*, i8** %41, align 8, !dbg !829, !tbaa !831
  %43 = icmp eq i8* %42, null, !dbg !832
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %42, !dbg !833
  call void @llvm.dbg.value(metadata i8* %44, metadata !784, metadata !DIExpression()) #11, !dbg !834
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !835
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !835
  %47 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8* %47, metadata !792, metadata !DIExpression()) #11, !dbg !837
  %48 = icmp eq i8* %47, null, !dbg !838
  br i1 %48, label %55, label %49, !dbg !840

; <label>:49:                                     ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #14, !dbg !841
  %51 = icmp eq i32 %50, 0, !dbg !841
  br i1 %51, label %55, label %52, !dbg !842

; <label>:52:                                     ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !843
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !843
  br label %55, !dbg !845

; <label>:55:                                     ; preds = %39, %49, %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !846
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !846
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !847
  %59 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !847
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !847
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %44, i8* %60) #11, !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #11, !dbg !848
  br label %62

; <label>:62:                                     ; preds = %55, %4
  tail call void @exit(i32 %0) #15, !dbg !849
  unreachable, !dbg !849
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !850 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !859, metadata !DIExpression()), !dbg !952
  %4 = alloca [1024 x i8], align 16
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !943, metadata !DIExpression()), !dbg !967
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !855, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i8** %1, metadata !856, metadata !DIExpression()), !dbg !969
  %7 = load i8*, i8** %1, align 8, !dbg !970, !tbaa !805
  tail call void @set_program_name(i8* %7) #11, !dbg !971
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !972
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !973
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !974
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !975
  br label %12, !dbg !976

; <label>:12:                                     ; preds = %23, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !977
  call void @llvm.dbg.value(metadata i32 %13, metadata !857, metadata !DIExpression()), !dbg !978
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %14
    i32 108, label %15
    i32 102, label %16
    i32 119, label %17
    i32 105, label %18
    i32 113, label %19
    i32 104, label %20
    i32 112, label %21
    i32 98, label %22
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !976

; <label>:14:                                     ; preds = %12
  store i1 false, i1* @do_short_format, align 1
  br label %23, !dbg !979

; <label>:15:                                     ; preds = %12
  store i1 true, i1* @do_short_format, align 1
  br label %23, !dbg !982

; <label>:16:                                     ; preds = %12
  store i1 true, i1* @include_heading, align 1
  br label %23, !dbg !983

; <label>:17:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  br label %23, !dbg !984

; <label>:18:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  br label %23, !dbg !985

; <label>:19:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  store i1 true, i1* @include_idle, align 1
  br label %23, !dbg !986

; <label>:20:                                     ; preds = %12
  store i1 true, i1* @include_project, align 1
  br label %23, !dbg !987

; <label>:21:                                     ; preds = %12
  store i1 true, i1* @include_plan, align 1
  br label %23, !dbg !988

; <label>:22:                                     ; preds = %12
  store i1 true, i1* @include_home_and_shell, align 1
  br label %23, !dbg !989

; <label>:23:                                     ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %12, !dbg !977, !llvm.loop !990

; <label>:24:                                     ; preds = %12
  tail call void @usage(i32 0) #16, !dbg !992
  unreachable, !dbg !992

; <label>:25:                                     ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !993, !tbaa !805
  %27 = load i8*, i8** @Version, align 8, !dbg !993, !tbaa !805
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !993
  tail call void @exit(i32 0) #15, !dbg !993
  unreachable, !dbg !993

; <label>:28:                                     ; preds = %12
  tail call void @usage(i32 1) #16, !dbg !994
  unreachable, !dbg !994

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !995, !tbaa !996
  %31 = sub nsw i32 %0, %30, !dbg !998
  call void @llvm.dbg.value(metadata i32 %31, metadata !858, metadata !DIExpression()), !dbg !999
  %32 = load i1, i1* @do_short_format, align 1
  %33 = icmp eq i32 %31, 0, !dbg !1000
  %34 = and i1 %32, %33, !dbg !1002
  br i1 %34, label %35, label %37, !dbg !1002

; <label>:35:                                     ; preds = %29
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !1003
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #11, !dbg !1005
  tail call void @usage(i32 1) #16, !dbg !1006
  unreachable, !dbg !1006

; <label>:37:                                     ; preds = %29
  %38 = sext i32 %30 to i64, !dbg !1007
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38, !dbg !1007
  br i1 %32, label %122, label %40, !dbg !1008

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i32 %31, metadata !1009, metadata !DIExpression()) #11, !dbg !1019
  call void @llvm.dbg.value(metadata i8** %39, metadata !1015, metadata !DIExpression()) #11, !dbg !1021
  %41 = bitcast i64* %5 to i8*, !dbg !1022
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #11, !dbg !1022
  %42 = bitcast %struct.utmpx** %6 to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #11, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !1017, metadata !DIExpression()) #11, !dbg !1024
  store %struct.utmpx* null, %struct.utmpx** %6, align 8, !dbg !1024, !tbaa !805
  call void @llvm.dbg.value(metadata i64* %5, metadata !1016, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.utmpx** %6, metadata !1017, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1024
  %43 = call i32 @read_utmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %5, %struct.utmpx** nonnull %6, i32 0) #11, !dbg !1026
  %44 = icmp eq i32 %43, 0, !dbg !1028
  br i1 %44, label %49, label %45, !dbg !1029

; <label>:45:                                     ; preds = %40
  %46 = tail call i32* @__errno_location() #17, !dbg !1030
  %47 = load i32, i32* %46, align 4, !dbg !1030, !tbaa !996
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1030
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %48) #11, !dbg !1030
  unreachable, !dbg !1030

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* %5, align 8, !dbg !1031, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 %50, metadata !1016, metadata !DIExpression()) #11, !dbg !1025
  %51 = load %struct.utmpx*, %struct.utmpx** %6, align 8, !dbg !1034, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1017, metadata !DIExpression()) #11, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %50, metadata !1035, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1040, metadata !DIExpression()) #11, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %31, metadata !1041, metadata !DIExpression()) #11, !dbg !1053
  call void @llvm.dbg.value(metadata i8** %39, metadata !1042, metadata !DIExpression()) #11, !dbg !1054
  %52 = call zeroext i1 @hard_locale(i32 2) #11, !dbg !1055
  %53 = select i1 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), !dbg !1057
  %54 = select i1 %52, i32 16, i32 12, !dbg !1057
  store i8* %53, i8** @time_format, align 8, !dbg !1059, !tbaa !805
  store i32 %54, i32* @time_format_width, align 4, !dbg !1061, !tbaa !996
  %55 = load i1, i1* @include_heading, align 1
  br i1 %55, label %89, label %56, !dbg !1062

; <label>:56:                                     ; preds = %49
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1063
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %57) #11, !dbg !1063
  %59 = load i1, i1* @include_fullname, align 1
  br i1 %59, label %63, label %60, !dbg !1069

; <label>:60:                                     ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1070
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %61) #11, !dbg !1070
  br label %63, !dbg !1070

; <label>:63:                                     ; preds = %60, %56
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1072
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* %64) #11, !dbg !1072
  %66 = load i1, i1* @include_idle, align 1
  br i1 %66, label %70, label %67, !dbg !1073

; <label>:67:                                     ; preds = %63
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !1074
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %68) #11, !dbg !1074
  br label %70, !dbg !1074

; <label>:70:                                     ; preds = %67, %63
  %71 = load i32, i32* @time_format_width, align 4, !dbg !1076, !tbaa !996
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 5) #11, !dbg !1076
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %71, i8* %72) #11, !dbg !1076
  %74 = load i1, i1* @include_where, align 1
  br i1 %74, label %78, label %75, !dbg !1077

; <label>:75:                                     ; preds = %70
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 5) #11, !dbg !1078
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %76) #11, !dbg !1078
  br label %78, !dbg !1078

; <label>:78:                                     ; preds = %75, %70
  call void @llvm.dbg.value(metadata i32 10, metadata !1080, metadata !DIExpression()) #11, !dbg !1086
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !805
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5, !dbg !1088
  %81 = load i8*, i8** %80, align 8, !dbg !1088, !tbaa !1089
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6, !dbg !1088
  %83 = load i8*, i8** %82, align 8, !dbg !1088, !tbaa !1092
  %84 = icmp ult i8* %81, %83, !dbg !1088
  br i1 %84, label %87, label %85, !dbg !1088, !prof !1093

; <label>:85:                                     ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* %79, i32 10) #11, !dbg !1088
  br label %89, !dbg !1088

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1088
  store i8* %88, i8** %80, align 8, !dbg !1088, !tbaa !1089
  store i8 10, i8* %81, align 1, !dbg !1088, !tbaa !1094
  br label %89, !dbg !1088

; <label>:89:                                     ; preds = %87, %85, %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !1035, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1040, metadata !DIExpression()) #11, !dbg !1052
  %90 = icmp eq i64 %50, 0, !dbg !1095
  br i1 %90, label %121, label %91, !dbg !1095

; <label>:91:                                     ; preds = %89
  call void @llvm.dbg.value(metadata i64 %50, metadata !1035, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1050
  %92 = icmp sgt i32 %31, 0
  %93 = sext i32 %31 to i64, !dbg !1095
  br label %94, !dbg !1095

; <label>:94:                                     ; preds = %118, %91
  %95 = phi i64 [ %50, %91 ], [ %97, %118 ]
  %96 = phi %struct.utmpx* [ %51, %91 ], [ %119, %118 ]
  %97 = add i64 %95, -1, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.utmpx* %96, metadata !1040, metadata !DIExpression()) #11, !dbg !1052
  %98 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 4, i64 0, !dbg !1097
  %99 = load i8, i8* %98, align 4, !dbg !1097, !tbaa !1094
  %100 = icmp eq i8 %99, 0, !dbg !1097
  br i1 %100, label %118, label %101, !dbg !1097

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 0, !dbg !1097
  %103 = load i16, i16* %102, align 4, !dbg !1097, !tbaa !1098
  %104 = icmp eq i16 %103, 7, !dbg !1097
  br i1 %104, label %105, label %118, !dbg !1102

; <label>:105:                                    ; preds = %101
  br i1 %33, label %117, label %106, !dbg !1103

; <label>:106:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, metadata !1043, metadata !DIExpression()) #11, !dbg !1104
  br i1 %92, label %109, label %118, !dbg !1105

; <label>:107:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i32 undef, metadata !1043, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1104
  %108 = icmp slt i64 %115, %93, !dbg !1106
  br i1 %108, label %109, label %118, !dbg !1105, !llvm.loop !1108

; <label>:109:                                    ; preds = %106, %107
  %110 = phi i64 [ %115, %107 ], [ 0, %106 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1043, metadata !DIExpression()) #11, !dbg !1104
  %111 = getelementptr inbounds i8*, i8** %39, i64 %110, !dbg !1111
  %112 = load i8*, i8** %111, align 8, !dbg !1111, !tbaa !805
  %113 = call i32 @strncmp(i8* nonnull %98, i8* %112, i64 32) #14, !dbg !1111
  %114 = icmp eq i32 %113, 0, !dbg !1111
  %115 = add nuw nsw i64 %110, 1, !dbg !1113
  call void @llvm.dbg.value(metadata i32 undef, metadata !1043, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1104
  br i1 %114, label %116, label %107, !dbg !1114

; <label>:116:                                    ; preds = %109
  call fastcc void @print_entry(%struct.utmpx* %96) #11, !dbg !1115
  br label %118, !dbg !1117

; <label>:117:                                    ; preds = %105
  call fastcc void @print_entry(%struct.utmpx* nonnull %96) #11, !dbg !1118
  br label %118

; <label>:118:                                    ; preds = %107, %117, %116, %106, %101, %94
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 1, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %97, metadata !1035, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.utmpx* %119, metadata !1040, metadata !DIExpression()) #11, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %97, metadata !1035, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1050
  %120 = icmp eq i64 %97, 0, !dbg !1095
  br i1 %120, label %121, label %94, !dbg !1095, !llvm.loop !1120

; <label>:121:                                    ; preds = %118, %89
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #11, !dbg !1123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #11, !dbg !1123
  br label %256, !dbg !1124

; <label>:122:                                    ; preds = %37
  call void @llvm.dbg.value(metadata i32 %31, metadata !962, metadata !DIExpression()) #11, !dbg !1125
  call void @llvm.dbg.value(metadata i8** %39, metadata !963, metadata !DIExpression()) #11, !dbg !1126
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()) #11, !dbg !1127
  %123 = icmp sgt i32 %31, 0, !dbg !1128
  br i1 %123, label %124, label %256, !dbg !1129

; <label>:124:                                    ; preds = %122
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %127 = zext i32 %31 to i64
  br label %128, !dbg !1129

; <label>:128:                                    ; preds = %253, %124
  %129 = phi i64 [ 0, %124 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !964, metadata !DIExpression()) #11, !dbg !1127
  %130 = getelementptr inbounds i8*, i8** %39, i64 %129, !dbg !1130
  %131 = load i8*, i8** %130, align 8, !dbg !1130, !tbaa !805
  call void @llvm.dbg.value(metadata i8* %131, metadata !864, metadata !DIExpression()) #11, !dbg !1131
  %132 = tail call %struct.passwd* @getpwnam(i8* %131) #11, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.passwd* %132, metadata !865, metadata !DIExpression()) #11, !dbg !1133
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i32 5) #11, !dbg !1134
  %134 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %133) #11, !dbg !1134
  %135 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %131) #11, !dbg !1135
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !1136
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %136) #11, !dbg !1136
  %138 = icmp eq %struct.passwd* %132, null, !dbg !1137
  br i1 %138, label %139, label %142, !dbg !1138

; <label>:139:                                    ; preds = %128
  %140 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #11, !dbg !1139
  %141 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %140) #11, !dbg !1139
  br label %253, !dbg !1141

; <label>:142:                                    ; preds = %128
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 4, !dbg !1142
  %144 = load i8*, i8** %143, align 8, !dbg !1142, !tbaa !1143
  %145 = tail call i8* @strchr(i8* %144, i32 44) #14, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %145, metadata !879, metadata !DIExpression()) #11, !dbg !1146
  %146 = icmp eq i8* %145, null, !dbg !1147
  br i1 %146, label %149, label %147, !dbg !1149

; <label>:147:                                    ; preds = %142
  store i8 0, i8* %145, align 1, !dbg !1150, !tbaa !1094
  %148 = load i8*, i8** %143, align 8, !dbg !1151, !tbaa !1143
  br label %149, !dbg !1152

; <label>:149:                                    ; preds = %147, %142
  %150 = phi i8* [ %144, %142 ], [ %148, %147 ], !dbg !1151
  %151 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 0, !dbg !1153
  %152 = load i8*, i8** %151, align 8, !dbg !1153, !tbaa !1154
  %153 = tail call fastcc i8* @create_fullname(i8* %150, i8* %152) #11, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %153, metadata !883, metadata !DIExpression()) #11, !dbg !1156
  %154 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %153) #11, !dbg !1157
  tail call void @free(i8* %153) #11, !dbg !1158
  call void @llvm.dbg.value(metadata i32 10, metadata !1080, metadata !DIExpression()) #11, !dbg !1159
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1161, !tbaa !805
  %156 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 5, !dbg !1161
  %157 = load i8*, i8** %156, align 8, !dbg !1161, !tbaa !1089
  %158 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 6, !dbg !1161
  %159 = load i8*, i8** %158, align 8, !dbg !1161, !tbaa !1092
  %160 = icmp ult i8* %157, %159, !dbg !1161
  br i1 %160, label %163, label %161, !dbg !1161, !prof !1093

; <label>:161:                                    ; preds = %149
  %162 = tail call i32 @__overflow(%struct._IO_FILE* %155, i32 10) #11, !dbg !1161
  br label %165, !dbg !1161

; <label>:163:                                    ; preds = %149
  %164 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1161
  store i8* %164, i8** %156, align 8, !dbg !1161, !tbaa !1089
  store i8 10, i8* %157, align 1, !dbg !1161, !tbaa !1094
  br label %165, !dbg !1161

; <label>:165:                                    ; preds = %163, %161
  %166 = load i1, i1* @include_home_and_shell, align 1
  br i1 %166, label %188, label %167, !dbg !1162

; <label>:167:                                    ; preds = %165
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 5) #11, !dbg !1163
  %169 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %168) #11, !dbg !1163
  %170 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1166
  %171 = load i8*, i8** %170, align 8, !dbg !1166, !tbaa !1167
  %172 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* %171) #11, !dbg !1166
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1168
  %174 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %173) #11, !dbg !1168
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 6, !dbg !1169
  %176 = load i8*, i8** %175, align 8, !dbg !1169, !tbaa !1170
  %177 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %176) #11, !dbg !1169
  call void @llvm.dbg.value(metadata i32 10, metadata !1080, metadata !DIExpression()) #11, !dbg !1171
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !805
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 5, !dbg !1173
  %180 = load i8*, i8** %179, align 8, !dbg !1173, !tbaa !1089
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 6, !dbg !1173
  %182 = load i8*, i8** %181, align 8, !dbg !1173, !tbaa !1092
  %183 = icmp ult i8* %180, %182, !dbg !1173
  br i1 %183, label %186, label %184, !dbg !1173, !prof !1093

; <label>:184:                                    ; preds = %167
  %185 = tail call i32 @__overflow(%struct._IO_FILE* %178, i32 10) #11, !dbg !1173
  br label %188, !dbg !1173

; <label>:186:                                    ; preds = %167
  %187 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !1173
  store i8* %187, i8** %179, align 8, !dbg !1173, !tbaa !1089
  store i8 10, i8* %180, align 1, !dbg !1173, !tbaa !1094
  br label %188, !dbg !1173

; <label>:188:                                    ; preds = %186, %184, %165
  %189 = load i1, i1* @include_project, align 1
  br i1 %189, label %215, label %190, !dbg !1174

; <label>:190:                                    ; preds = %188
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %125) #11, !dbg !1175
  %191 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1176
  %192 = load i8*, i8** %191, align 8, !dbg !1176, !tbaa !1167
  %193 = tail call i64 @strlen(i8* %192) #14, !dbg !1177
  %194 = add i64 %193, 10, !dbg !1178
  %195 = tail call noalias i8* @xmalloc(i64 %194) #11, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %195, metadata !936, metadata !DIExpression()) #11, !dbg !1180
  %196 = load i8*, i8** %191, align 8, !dbg !1181, !tbaa !1167
  call void @llvm.dbg.value(metadata i8* %195, metadata !1182, metadata !DIExpression()) #11, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %196, metadata !1190, metadata !DIExpression()) #11, !dbg !1191
  %197 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %195, i1 false, i1 true) #11, !dbg !1193
  %198 = tail call i8* @__stpcpy_chk(i8* nonnull %195, i8* nonnull %196, i64 %197) #11, !dbg !1194
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %198, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 10, i1 false) #11, !dbg !1195
  %199 = tail call %struct._IO_FILE* @fopen(i8* nonnull %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1196
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %199, metadata !884, metadata !DIExpression()) #11, !dbg !1197
  %200 = icmp eq %struct._IO_FILE* %199, null, !dbg !1198
  br i1 %200, label %214, label %201, !dbg !1199

; <label>:201:                                    ; preds = %190
  %202 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 5) #11, !dbg !1200
  %203 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %202) #11, !dbg !1200
  %204 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %199) #11, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %204, metadata !937, metadata !DIExpression()) #11, !dbg !1202
  %205 = icmp eq i64 %204, 0, !dbg !1203
  br i1 %205, label %212, label %206, !dbg !1204

; <label>:206:                                    ; preds = %201, %206
  %207 = phi i64 [ %210, %206 ], [ %204, %201 ]
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1205, !tbaa !805
  %209 = call i64 @fwrite_unlocked(i8* nonnull %125, i64 1, i64 %207, %struct._IO_FILE* %208) #11, !dbg !1205
  %210 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %199) #11, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %210, metadata !937, metadata !DIExpression()) #11, !dbg !1202
  %211 = icmp eq i64 %210, 0, !dbg !1203
  br i1 %211, label %212, label %206, !dbg !1204, !llvm.loop !1206

; <label>:212:                                    ; preds = %206, %201
  %213 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %199) #11, !dbg !1209
  br label %214, !dbg !1210

; <label>:214:                                    ; preds = %212, %190
  tail call void @free(i8* %195) #11, !dbg !1211
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %125) #11, !dbg !1212
  br label %215, !dbg !1213

; <label>:215:                                    ; preds = %214, %188
  %216 = load i1, i1* @include_plan, align 1
  br i1 %216, label %242, label %217, !dbg !1214

; <label>:217:                                    ; preds = %215
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %126) #11, !dbg !1215
  %218 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1216
  %219 = load i8*, i8** %218, align 8, !dbg !1216, !tbaa !1167
  %220 = tail call i64 @strlen(i8* %219) #14, !dbg !1217
  %221 = add i64 %220, 7, !dbg !1218
  %222 = tail call noalias i8* @xmalloc(i64 %221) #11, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %222, metadata !948, metadata !DIExpression()) #11, !dbg !1220
  %223 = load i8*, i8** %218, align 8, !dbg !1221, !tbaa !1167
  call void @llvm.dbg.value(metadata i8* %222, metadata !1182, metadata !DIExpression()) #11, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %223, metadata !1190, metadata !DIExpression()) #11, !dbg !1222
  %224 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %222, i1 false, i1 true) #11, !dbg !1224
  %225 = tail call i8* @__stpcpy_chk(i8* nonnull %222, i8* nonnull %223, i64 %224) #11, !dbg !1225
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %225, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 7, i1 false) #11, !dbg !1226
  %226 = tail call %struct._IO_FILE* @fopen(i8* nonnull %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1227
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %226, metadata !940, metadata !DIExpression()) #11, !dbg !1228
  %227 = icmp eq %struct._IO_FILE* %226, null, !dbg !1229
  br i1 %227, label %241, label %228, !dbg !1230

; <label>:228:                                    ; preds = %217
  %229 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !1231
  %230 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %229) #11, !dbg !1231
  %231 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %226) #11, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %231, metadata !949, metadata !DIExpression()) #11, !dbg !1233
  %232 = icmp eq i64 %231, 0, !dbg !1234
  br i1 %232, label %239, label %233, !dbg !1235

; <label>:233:                                    ; preds = %228, %233
  %234 = phi i64 [ %237, %233 ], [ %231, %228 ]
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1236, !tbaa !805
  %236 = call i64 @fwrite_unlocked(i8* nonnull %126, i64 1, i64 %234, %struct._IO_FILE* %235) #11, !dbg !1236
  %237 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %226) #11, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %237, metadata !949, metadata !DIExpression()) #11, !dbg !1233
  %238 = icmp eq i64 %237, 0, !dbg !1234
  br i1 %238, label %239, label %233, !dbg !1235, !llvm.loop !1237

; <label>:239:                                    ; preds = %233, %228
  %240 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %226) #11, !dbg !1240
  br label %241, !dbg !1241

; <label>:241:                                    ; preds = %239, %217
  tail call void @free(i8* %222) #11, !dbg !1242
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %126) #11, !dbg !1243
  br label %242, !dbg !1244

; <label>:242:                                    ; preds = %241, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !1080, metadata !DIExpression()) #11, !dbg !1245
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1247, !tbaa !805
  %244 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %243, i64 0, i32 5, !dbg !1247
  %245 = load i8*, i8** %244, align 8, !dbg !1247, !tbaa !1089
  %246 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %243, i64 0, i32 6, !dbg !1247
  %247 = load i8*, i8** %246, align 8, !dbg !1247, !tbaa !1092
  %248 = icmp ult i8* %245, %247, !dbg !1247
  br i1 %248, label %251, label %249, !dbg !1247, !prof !1093

; <label>:249:                                    ; preds = %242
  %250 = tail call i32 @__overflow(%struct._IO_FILE* %243, i32 10) #11, !dbg !1247
  br label %253, !dbg !1247

; <label>:251:                                    ; preds = %242
  %252 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !1247
  store i8* %252, i8** %244, align 8, !dbg !1247, !tbaa !1089
  store i8 10, i8* %245, align 1, !dbg !1247, !tbaa !1094
  br label %253, !dbg !1247

; <label>:253:                                    ; preds = %251, %249, %139
  %254 = add nuw nsw i64 %129, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !964, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1127
  %255 = icmp eq i64 %254, %127, !dbg !1128
  br i1 %255, label %256, label %128, !dbg !1129, !llvm.loop !1249

; <label>:256:                                    ; preds = %253, %122, %121
  ret i32 0, !dbg !1252
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_entry(%struct.utmpx*) unnamed_addr #7 !dbg !1253 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [38 x i8], align 16
  %5 = alloca [33 x i8], align 16
  %6 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !1257, metadata !DIExpression()), !dbg !1313
  %7 = bitcast %struct.stat* %3 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #11, !dbg !1314
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 0, !dbg !1315
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %8) #11, !dbg !1315
  call void @llvm.dbg.declare(metadata [38 x i8]* %4, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %8, metadata !1296, metadata !DIExpression()), !dbg !1317
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 0, !dbg !1318
  %10 = load i8, i8* %9, align 4, !dbg !1318, !tbaa !1094
  %11 = icmp eq i8 %10, 47, !dbg !1318
  br i1 %11, label %14, label %12, !dbg !1320

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 5, !dbg !1321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %8, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6, i1 false), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %13, metadata !1296, metadata !DIExpression()), !dbg !1317
  br label %14, !dbg !1322

; <label>:14:                                     ; preds = %12, %1
  %15 = phi i8* [ %8, %1 ], [ %13, %12 ], !dbg !1323
  call void @llvm.dbg.value(metadata i8* %15, metadata !1296, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %15, metadata !1324, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %9, metadata !1329, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 32, metadata !1330, metadata !DIExpression()), !dbg !1335
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 32, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %16, metadata !1331, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %15, metadata !1324, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %9, metadata !1329, metadata !DIExpression()), !dbg !1334
  %17 = icmp eq i8 %10, 0, !dbg !1338
  br i1 %17, label %28, label %18, !dbg !1339

; <label>:18:                                     ; preds = %14, %25
  %19 = phi i8* [ %22, %25 ], [ %9, %14 ]
  %20 = phi i8* [ %23, %25 ], [ %15, %14 ]
  %21 = phi i8 [ %26, %25 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !1329, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %20, metadata !1324, metadata !DIExpression()), !dbg !1332
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1340
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1341
  store i8 %21, i8* %20, align 1, !dbg !1342, !tbaa !1094, !alias.scope !1343, !noalias !1346
  %24 = icmp ult i8* %22, %16, !dbg !1348
  br i1 %24, label %25, label %28, !dbg !1338, !llvm.loop !1349

; <label>:25:                                     ; preds = %18
  %26 = load i8, i8* %22, align 1, !dbg !1352, !tbaa !1094, !alias.scope !1346, !noalias !1343
  call void @llvm.dbg.value(metadata i8* %23, metadata !1324, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %22, metadata !1329, metadata !DIExpression()), !dbg !1334
  %27 = icmp eq i8 %26, 0, !dbg !1338
  br i1 %27, label %28, label %18, !dbg !1339

; <label>:28:                                     ; preds = %18, %25, %14
  %29 = phi i8* [ %15, %14 ], [ %23, %25 ], [ %23, %18 ]
  call void @llvm.dbg.value(metadata i8* %29, metadata !1324, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %29, metadata !1324, metadata !DIExpression()), !dbg !1332
  store i8 0, i8* %29, align 1, !dbg !1353, !tbaa !1094, !alias.scope !1343, !noalias !1346
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1258, metadata !DIExpression(DW_OP_deref)), !dbg !1354
  call void @llvm.dbg.value(metadata i8* %8, metadata !1355, metadata !DIExpression()) #11, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1362, metadata !DIExpression()) #11, !dbg !1363
  %30 = call i32 @__xstat(i32 1, i8* nonnull %8, %struct.stat* nonnull %3) #11, !dbg !1366
  %31 = icmp eq i32 %30, 0, !dbg !1367
  br i1 %31, label %32, label %40, !dbg !1368

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1369
  %34 = load i32, i32* %33, align 8, !dbg !1369, !tbaa !1371
  %35 = and i32 %34, 16, !dbg !1374
  %36 = icmp eq i32 %35, 0, !dbg !1375
  %37 = select i1 %36, i32 42, i32 32, !dbg !1375
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 11, i32 0, !dbg !1376
  %39 = load i64, i64* %38, align 8, !dbg !1376, !tbaa !1377
  call void @llvm.dbg.value(metadata i64 %39, metadata !1290, metadata !DIExpression()), !dbg !1378
  br label %40, !dbg !1379

; <label>:40:                                     ; preds = %28, %32
  %41 = phi i32 [ %37, %32 ], [ 63, %28 ]
  %42 = phi i64 [ %39, %32 ], [ 0, %28 ], !dbg !1380
  call void @llvm.dbg.value(metadata i64 %42, metadata !1290, metadata !DIExpression()), !dbg !1378
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !1382
  %44 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 32, i8* nonnull %43) #11, !dbg !1382
  %45 = load i1, i1* @include_fullname, align 1
  br i1 %45, label %79, label %46, !dbg !1383

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %47) #11, !dbg !1384
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !1300, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %47, metadata !1324, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %43, metadata !1329, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i64 32, metadata !1330, metadata !DIExpression()), !dbg !1389
  %48 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 32, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %48, metadata !1331, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %47, metadata !1324, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %43, metadata !1329, metadata !DIExpression()), !dbg !1388
  br label %49

; <label>:49:                                     ; preds = %54, %46
  %50 = phi i8* [ %56, %54 ], [ %47, %46 ]
  %51 = phi i8* [ %55, %54 ], [ %43, %46 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1324, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %51, metadata !1329, metadata !DIExpression()), !dbg !1388
  %52 = load i8, i8* %51, align 1, !dbg !1392, !tbaa !1094, !alias.scope !1393, !noalias !1396
  %53 = icmp eq i8 %52, 0, !dbg !1398
  br i1 %53, label %58, label %54, !dbg !1399

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1400
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1401
  store i8 %52, i8* %50, align 1, !dbg !1402, !tbaa !1094, !alias.scope !1396, !noalias !1393
  call void @llvm.dbg.value(metadata i8* %56, metadata !1324, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %55, metadata !1329, metadata !DIExpression()), !dbg !1388
  %57 = icmp ult i8* %55, %48, !dbg !1403
  br i1 %57, label %49, label %58, !dbg !1398, !llvm.loop !1349

; <label>:58:                                     ; preds = %49, %54
  %59 = phi i8* [ %50, %49 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata i8* %59, metadata !1324, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %59, metadata !1324, metadata !DIExpression()), !dbg !1386
  store i8 0, i8* %59, align 1, !dbg !1404, !tbaa !1094, !alias.scope !1396, !noalias !1393
  %60 = call %struct.passwd* @getpwnam(i8* nonnull %47), !dbg !1405
  call void @llvm.dbg.value(metadata %struct.passwd* %60, metadata !1297, metadata !DIExpression()), !dbg !1406
  %61 = icmp eq %struct.passwd* %60, null, !dbg !1407
  br i1 %61, label %62, label %65, !dbg !1408

; <label>:62:                                     ; preds = %58
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1409
  %64 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* %63) #11, !dbg !1409
  br label %78, !dbg !1409

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 4, !dbg !1410
  %67 = load i8*, i8** %66, align 8, !dbg !1410, !tbaa !1143
  %68 = call i8* @strchr(i8* %67, i32 44) #14, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %68, metadata !1301, metadata !DIExpression()), !dbg !1412
  %69 = icmp eq i8* %68, null, !dbg !1413
  br i1 %69, label %72, label %70, !dbg !1415

; <label>:70:                                     ; preds = %65
  store i8 0, i8* %68, align 1, !dbg !1416, !tbaa !1094
  %71 = load i8*, i8** %66, align 8, !dbg !1417, !tbaa !1143
  br label %72, !dbg !1418

; <label>:72:                                     ; preds = %65, %70
  %73 = phi i8* [ %67, %65 ], [ %71, %70 ], !dbg !1417
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 0, !dbg !1419
  %75 = load i8*, i8** %74, align 8, !dbg !1419, !tbaa !1154
  %76 = call fastcc i8* @create_fullname(i8* %73, i8* %75), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %76, metadata !1304, metadata !DIExpression()), !dbg !1421
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %76) #11, !dbg !1422
  call void @free(i8* %76) #11, !dbg !1423
  br label %78

; <label>:78:                                     ; preds = %72, %62
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %47) #11, !dbg !1424
  br label %79, !dbg !1425

; <label>:79:                                     ; preds = %40, %78
  %80 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 %41, i32 32, i8* nonnull %9) #11, !dbg !1426
  %81 = load i1, i1* @include_idle, align 1
  br i1 %81, label %111, label %82, !dbg !1427

; <label>:82:                                     ; preds = %79
  %83 = icmp eq i64 %42, 0, !dbg !1428
  br i1 %83, label %108, label %84, !dbg !1432

; <label>:84:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %42, metadata !84, metadata !DIExpression()) #11, !dbg !1433
  %85 = load i64, i64* @idle_string.now, align 8, !dbg !1435, !tbaa !1032
  %86 = icmp eq i64 %85, 0, !dbg !1437
  br i1 %86, label %87, label %90, !dbg !1438

; <label>:87:                                     ; preds = %84
  %88 = call i64 @time(i64* nonnull @idle_string.now) #11, !dbg !1439
  %89 = load i64, i64* @idle_string.now, align 8, !dbg !1440, !tbaa !1032
  br label %90, !dbg !1439

; <label>:90:                                     ; preds = %87, %84
  %91 = phi i64 [ %89, %87 ], [ %85, %84 ], !dbg !1440
  %92 = sub nsw i64 %91, %42, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %92, metadata !85, metadata !DIExpression()) #11, !dbg !1442
  %93 = icmp slt i64 %92, 60, !dbg !1443
  br i1 %93, label %105, label %94, !dbg !1445

; <label>:94:                                     ; preds = %90
  %95 = icmp slt i64 %92, 86400, !dbg !1446
  br i1 %95, label %96, label %102, !dbg !1447

; <label>:96:                                     ; preds = %94
  %97 = trunc i64 %92 to i32
  %98 = udiv i32 %97, 3600
  call void @llvm.dbg.value(metadata i32 %98, metadata !86, metadata !DIExpression()) #11, !dbg !1448
  %99 = urem i32 %97, 3600
  %100 = udiv i32 %99, 60, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %100, metadata !89, metadata !DIExpression()) #11, !dbg !1450
  %101 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %98, i32 %100) #11, !dbg !1451
  br label %105, !dbg !1452

; <label>:102:                                    ; preds = %94
  %103 = udiv i64 %92, 86400
  call void @llvm.dbg.value(metadata i64 %103, metadata !90, metadata !DIExpression()) #11, !dbg !1453
  %104 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %103) #11, !dbg !1454
  br label %105

; <label>:105:                                    ; preds = %90, %96, %102
  %106 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %90 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %102 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %96 ], !dbg !1455
  %107 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %106) #11, !dbg !1456
  br label %111, !dbg !1456

; <label>:108:                                    ; preds = %82
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 5) #11, !dbg !1457
  %110 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %109) #11, !dbg !1457
  br label %111

; <label>:111:                                    ; preds = %79, %105, %108
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !144, metadata !DIExpression()) #11, !dbg !1458
  %112 = bitcast i64* %2 to i8*, !dbg !1460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !1460
  %113 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 8, i32 0, !dbg !1461
  %114 = load i32, i32* %113, align 4, !dbg !1461, !tbaa !1462
  %115 = sext i32 %114 to i64, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %115, metadata !145, metadata !DIExpression()) #11, !dbg !1463
  store i64 %115, i64* %2, align 8, !dbg !1463, !tbaa !1032
  call void @llvm.dbg.value(metadata i64* %2, metadata !145, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1463
  %116 = call %struct.tm* @localtime(i64* nonnull %2) #11, !dbg !1464
  call void @llvm.dbg.value(metadata %struct.tm* %116, metadata !146, metadata !DIExpression()) #11, !dbg !1465
  %117 = icmp eq %struct.tm* %116, null, !dbg !1466
  br i1 %117, label %121, label %118, !dbg !1468

; <label>:118:                                    ; preds = %111
  %119 = load i8*, i8** @time_format, align 8, !dbg !1469, !tbaa !805
  %120 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %119, %struct.tm* nonnull %116) #11, !dbg !1471
  br label %124, !dbg !1472

; <label>:121:                                    ; preds = %111
  %122 = load i64, i64* %2, align 8, !dbg !1473, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 %122, metadata !145, metadata !DIExpression()) #11, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %122, metadata !1474, metadata !DIExpression()) #11, !dbg !1480
  %123 = call i8* @imaxtostr(i64 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1482
  br label %124, !dbg !1483

; <label>:124:                                    ; preds = %118, %121
  %125 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %118 ], [ %123, %121 ], !dbg !1484
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !1485
  %126 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %125) #11, !dbg !1486
  %127 = load i1, i1* @include_where, align 1
  br i1 %127, label %168, label %128, !dbg !1487

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 0, !dbg !1488
  %130 = load i8, i8* %129, align 4, !dbg !1488, !tbaa !1094
  %131 = icmp eq i8 %130, 0, !dbg !1488
  br i1 %131, label %168, label %132, !dbg !1489

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds [257 x i8], [257 x i8]* %6, i64 0, i64 0, !dbg !1490
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %133) #11, !dbg !1490
  call void @llvm.dbg.declare(metadata [257 x i8]* %6, metadata !1305, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8* null, metadata !1311, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8* null, metadata !1312, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %133, metadata !1324, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %129, metadata !1329, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 256, metadata !1330, metadata !DIExpression()), !dbg !1497
  %134 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 256, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %134, metadata !1331, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i8* %133, metadata !1324, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %129, metadata !1329, metadata !DIExpression()), !dbg !1496
  br label %135, !dbg !1500

; <label>:135:                                    ; preds = %132, %142
  %136 = phi i8* [ %129, %132 ], [ %139, %142 ]
  %137 = phi i8* [ %133, %132 ], [ %140, %142 ]
  %138 = phi i8 [ %130, %132 ], [ %143, %142 ]
  call void @llvm.dbg.value(metadata i8* %136, metadata !1329, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i8* %137, metadata !1324, metadata !DIExpression()), !dbg !1494
  %139 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1501
  %140 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1502
  store i8 %138, i8* %137, align 1, !dbg !1503, !tbaa !1094, !alias.scope !1504, !noalias !1507
  %141 = icmp ult i8* %139, %134, !dbg !1509
  br i1 %141, label %142, label %145, !dbg !1510, !llvm.loop !1349

; <label>:142:                                    ; preds = %135
  %143 = load i8, i8* %139, align 1, !dbg !1511, !tbaa !1094, !alias.scope !1507, !noalias !1504
  call void @llvm.dbg.value(metadata i8* %140, metadata !1324, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %139, metadata !1329, metadata !DIExpression()), !dbg !1496
  %144 = icmp eq i8 %143, 0, !dbg !1510
  br i1 %144, label %145, label %135, !dbg !1500

; <label>:145:                                    ; preds = %135, %142
  call void @llvm.dbg.value(metadata i8* %140, metadata !1324, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %140, metadata !1324, metadata !DIExpression()), !dbg !1494
  store i8 0, i8* %140, align 1, !dbg !1512, !tbaa !1094, !alias.scope !1504, !noalias !1507
  %146 = call i8* @strchr(i8* nonnull %133, i32 58) #14, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %146, metadata !1312, metadata !DIExpression()), !dbg !1493
  %147 = icmp eq i8* %146, null, !dbg !1514
  br i1 %147, label %150, label %148, !dbg !1516

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %149, metadata !1312, metadata !DIExpression()), !dbg !1493
  store i8 0, i8* %146, align 1, !dbg !1518, !tbaa !1094
  br label %150, !dbg !1519

; <label>:150:                                    ; preds = %145, %148
  %151 = phi i8* [ %149, %148 ], [ null, %145 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8* %151, metadata !1312, metadata !DIExpression()), !dbg !1493
  %152 = load i8, i8* %133, align 16, !dbg !1521, !tbaa !1094
  %153 = icmp eq i8 %152, 0, !dbg !1521
  br i1 %153, label %156, label %154, !dbg !1523

; <label>:154:                                    ; preds = %150
  %155 = call noalias i8* @canon_host(i8* nonnull %133) #11, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %155, metadata !1311, metadata !DIExpression()), !dbg !1492
  br label %156, !dbg !1525

; <label>:156:                                    ; preds = %150, %154
  %157 = phi i8* [ %155, %154 ], [ null, %150 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8* %157, metadata !1311, metadata !DIExpression()), !dbg !1492
  %158 = icmp eq i8* %157, null, !dbg !1526
  %159 = select i1 %158, i8* %133, i8* %157, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %159, metadata !1311, metadata !DIExpression()), !dbg !1492
  %160 = icmp eq i8* %151, null, !dbg !1529
  br i1 %160, label %163, label %161, !dbg !1531

; <label>:161:                                    ; preds = %156
  %162 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %159, i8* nonnull %151) #11, !dbg !1532
  br label %165, !dbg !1532

; <label>:163:                                    ; preds = %156
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %159) #11, !dbg !1533
  br label %165

; <label>:165:                                    ; preds = %163, %161
  br i1 %158, label %167, label %166, !dbg !1534

; <label>:166:                                    ; preds = %165
  call void @free(i8* %159) #11, !dbg !1535
  br label %167, !dbg !1535

; <label>:167:                                    ; preds = %165, %166
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %133) #11, !dbg !1537
  br label %168, !dbg !1538

; <label>:168:                                    ; preds = %128, %124, %167
  call void @llvm.dbg.value(metadata i32 10, metadata !1080, metadata !DIExpression()) #11, !dbg !1539
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1541, !tbaa !805
  %170 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %169, i64 0, i32 5, !dbg !1541
  %171 = load i8*, i8** %170, align 8, !dbg !1541, !tbaa !1089
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %169, i64 0, i32 6, !dbg !1541
  %173 = load i8*, i8** %172, align 8, !dbg !1541, !tbaa !1092
  %174 = icmp ult i8* %171, %173, !dbg !1541
  br i1 %174, label %177, label %175, !dbg !1541, !prof !1093

; <label>:175:                                    ; preds = %168
  %176 = call i32 @__overflow(%struct._IO_FILE* %169, i32 10) #11, !dbg !1541
  br label %179, !dbg !1541

; <label>:177:                                    ; preds = %168
  %178 = getelementptr inbounds i8, i8* %171, i64 1, !dbg !1541
  store i8* %178, i8** %170, align 8, !dbg !1541, !tbaa !1089
  store i8 10, i8* %171, align 1, !dbg !1541, !tbaa !1094
  br label %179, !dbg !1541

; <label>:179:                                    ; preds = %175, %177
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %8) #11, !dbg !1542
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #11, !dbg !1542
  ret void, !dbg !1542
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @create_fullname(i8* nocapture readonly, i8* nocapture readonly) unnamed_addr #7 !dbg !1543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1547, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %1, metadata !1548, metadata !DIExpression()), !dbg !1565
  %3 = tail call i64 @strlen(i8* %0) #14, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %14, metadata !1549, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %0, metadata !1568, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1576
  br label %4, !dbg !1577

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %11, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %10, %4 ], !dbg !1578
  call void @llvm.dbg.value(metadata i64 %6, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %5, metadata !1568, metadata !DIExpression()), !dbg !1574
  %7 = load i8, i8* %5, align 1, !dbg !1581, !tbaa !1094
  %8 = icmp eq i8 %7, 38, !dbg !1582
  %9 = zext i1 %8 to i64, !dbg !1583
  %10 = add i64 %6, %9, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %10, metadata !1573, metadata !DIExpression()), !dbg !1576
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %11, metadata !1568, metadata !DIExpression()), !dbg !1574
  %12 = icmp eq i8 %7, 0, !dbg !1585
  br i1 %12, label %13, label %4, !dbg !1585, !llvm.loop !1586

; <label>:13:                                     ; preds = %4
  %14 = add i64 %3, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %10, metadata !1552, metadata !DIExpression()), !dbg !1590
  %15 = icmp eq i64 %10, 0, !dbg !1591
  br i1 %15, label %26, label %16, !dbg !1592

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @strlen(i8* %1) #14, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %17, metadata !1553, metadata !DIExpression()), !dbg !1594
  %18 = mul i64 %17, %10, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %18, metadata !1556, metadata !DIExpression()), !dbg !1596
  %19 = sub i64 %18, %10, !dbg !1597
  %20 = add i64 %19, %14, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %20, metadata !1549, metadata !DIExpression()), !dbg !1567
  %21 = udiv i64 9223372036854775807, %10, !dbg !1599
  %22 = icmp ult i64 %21, %17, !dbg !1599
  %23 = icmp ult i64 %20, %18, !dbg !1601
  %24 = or i1 %22, %23, !dbg !1602
  br i1 %24, label %25, label %26, !dbg !1602

; <label>:25:                                     ; preds = %16
  tail call void @xalloc_die() #15, !dbg !1603
  unreachable, !dbg !1603

; <label>:26:                                     ; preds = %16, %13
  %27 = phi i64 [ %14, %13 ], [ %20, %16 ], !dbg !1604
  call void @llvm.dbg.value(metadata i64 %27, metadata !1549, metadata !DIExpression()), !dbg !1567
  %28 = tail call noalias i8* @xmalloc(i64 %27) #11, !dbg !1605
  call void @llvm.dbg.value(metadata i8* %28, metadata !1550, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %28, metadata !1551, metadata !DIExpression()), !dbg !1607
  %29 = getelementptr inbounds i8, i8* %1, i64 1
  br label %30, !dbg !1608

; <label>:30:                                     ; preds = %66, %26
  %31 = phi i8* [ %28, %26 ], [ %67, %66 ], !dbg !1609
  %32 = phi i8* [ %0, %26 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !1547, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  %33 = load i8, i8* %32, align 1, !dbg !1610, !tbaa !1094
  switch i8 %33, label %64 [
    i8 0, label %69
    i8 38, label %34
  ], !dbg !1608

; <label>:34:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8* %1, metadata !1557, metadata !DIExpression()), !dbg !1611
  %35 = tail call i16** @__ctype_b_loc() #17, !dbg !1612
  %36 = load i16*, i16** %35, align 8, !dbg !1612, !tbaa !805
  %37 = load i8, i8* %1, align 1, !dbg !1612, !tbaa !1094
  %38 = zext i8 %37 to i64, !dbg !1612
  %39 = getelementptr inbounds i16, i16* %36, i64 %38, !dbg !1612
  %40 = load i16, i16* %39, align 2, !dbg !1612, !tbaa !1613
  %41 = and i16 %40, 512, !dbg !1612
  %42 = icmp eq i16 %41, 0, !dbg !1612
  br i1 %42, label %51, label %43, !dbg !1614

; <label>:43:                                     ; preds = %34
  %44 = tail call i32** @__ctype_toupper_loc() #17, !dbg !1615
  %45 = load i32*, i32** %44, align 8, !dbg !1615, !tbaa !805
  call void @llvm.dbg.value(metadata i8* %29, metadata !1557, metadata !DIExpression()), !dbg !1611
  %46 = getelementptr inbounds i32, i32* %45, i64 %38, !dbg !1615
  %47 = load i32, i32* %46, align 4, !dbg !1615, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %47, metadata !1561, metadata !DIExpression()), !dbg !1617
  %48 = trunc i32 %47 to i8, !dbg !1618
  %49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %49, metadata !1551, metadata !DIExpression()), !dbg !1607
  store i8 %48, i8* %31, align 1, !dbg !1620, !tbaa !1094
  %50 = load i8, i8* %29, align 1, !dbg !1621, !tbaa !1094
  br label %51, !dbg !1622

; <label>:51:                                     ; preds = %34, %43
  %52 = phi i8 [ %50, %43 ], [ %37, %34 ], !dbg !1621
  %53 = phi i8* [ %49, %43 ], [ %31, %34 ], !dbg !1604
  %54 = phi i8* [ %29, %43 ], [ %1, %34 ], !dbg !1623
  call void @llvm.dbg.value(metadata i8* %54, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %53, metadata !1551, metadata !DIExpression()), !dbg !1607
  %55 = icmp eq i8 %52, 0, !dbg !1624
  br i1 %55, label %66, label %56, !dbg !1624

; <label>:56:                                     ; preds = %51, %56
  %57 = phi i8 [ %62, %56 ], [ %52, %51 ]
  %58 = phi i8* [ %60, %56 ], [ %54, %51 ]
  %59 = phi i8* [ %61, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata i8* %58, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %59, metadata !1551, metadata !DIExpression()), !dbg !1607
  %60 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1625
  %61 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1626
  store i8 %57, i8* %59, align 1, !dbg !1627, !tbaa !1094
  call void @llvm.dbg.value(metadata i8* %60, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %61, metadata !1551, metadata !DIExpression()), !dbg !1607
  %62 = load i8, i8* %60, align 1, !dbg !1621, !tbaa !1094
  %63 = icmp eq i8 %62, 0, !dbg !1624
  br i1 %63, label %66, label %56, !dbg !1624, !llvm.loop !1628

; <label>:64:                                     ; preds = %30
  %65 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %65, metadata !1551, metadata !DIExpression()), !dbg !1607
  store i8 %33, i8* %31, align 1, !dbg !1631, !tbaa !1094
  br label %66

; <label>:66:                                     ; preds = %56, %51, %64
  %67 = phi i8* [ %65, %64 ], [ %53, %51 ], [ %61, %56 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8* %67, metadata !1551, metadata !DIExpression()), !dbg !1607
  %68 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %68, metadata !1547, metadata !DIExpression()), !dbg !1564
  br label %30, !dbg !1608, !llvm.loop !1634

; <label>:69:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !1551, metadata !DIExpression()), !dbg !1607
  store i8 0, i8* %31, align 1, !dbg !1636, !tbaa !1094
  ret i8* %28, !dbg !1637
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8*) local_unnamed_addr #7 !dbg !1638 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()) #11, !dbg !1644
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !204, metadata !DIExpression()) #11, !dbg !1646
  call void @llvm.dbg.value(metadata i8* null, metadata !205, metadata !DIExpression()) #11, !dbg !1647
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1648
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !206, metadata !DIExpression()) #11, !dbg !1649
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1649, !tbaa !805
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1650, !tbaa !1651
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !206, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1649
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #11, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %4, metadata !232, metadata !DIExpression()) #11, !dbg !1654
  %5 = icmp eq i32 %4, 0, !dbg !1655
  br i1 %5, label %6, label %17, !dbg !1657

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1658, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !206, metadata !DIExpression()) #11, !dbg !1649
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1660
  %9 = load i8*, i8** %8, align 8, !dbg !1660, !tbaa !1661
  %10 = icmp eq i8* %9, null, !dbg !1658
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1658
  %12 = call noalias i8* @strdup(i8* %11) #11, !dbg !1662
  call void @llvm.dbg.value(metadata i8* %12, metadata !205, metadata !DIExpression()) #11, !dbg !1647
  %13 = icmp eq i8* %12, null, !dbg !1663
  br i1 %13, label %14, label %15, !dbg !1665

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1666, !tbaa !996
  br label %15, !dbg !1667

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1668, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, metadata !206, metadata !DIExpression()) #11, !dbg !1649
  call void @freeaddrinfo(%struct.addrinfo* %16) #11, !dbg !1669
  br label %18, !dbg !1670

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1671, !tbaa !996
  br label %18, !dbg !1673

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ], !dbg !1674
  call void @llvm.dbg.value(metadata i8* %19, metadata !205, metadata !DIExpression()) #11, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1675
  ret i8* %19, !dbg !1676
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #7 !dbg !198 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32* %1, metadata !204, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8* null, metadata !205, metadata !DIExpression()), !dbg !1679
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1680
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1680
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !206, metadata !DIExpression()), !dbg !1681
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1681, !tbaa !805
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1682, !tbaa !1651
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !1681
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #11, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %5, metadata !232, metadata !DIExpression()), !dbg !1684
  %6 = icmp eq i32 %5, 0, !dbg !1685
  br i1 %6, label %7, label %20, !dbg !1686

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1687, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !206, metadata !DIExpression()), !dbg !1681
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1688
  %10 = load i8*, i8** %9, align 8, !dbg !1688, !tbaa !1661
  %11 = icmp eq i8* %10, null, !dbg !1687
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1687
  %13 = call noalias i8* @strdup(i8* %12) #11, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %13, metadata !205, metadata !DIExpression()), !dbg !1679
  %14 = icmp eq i8* %13, null, !dbg !1690
  %15 = icmp ne i32* %1, null, !dbg !1691
  %16 = and i1 %15, %14, !dbg !1692
  br i1 %16, label %17, label %18, !dbg !1692

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1693, !tbaa !996
  br label %18, !dbg !1694

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1695, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, metadata !206, metadata !DIExpression()), !dbg !1681
  call void @freeaddrinfo(%struct.addrinfo* %19) #11, !dbg !1696
  br label %23, !dbg !1697

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1698
  br i1 %21, label %23, label %22, !dbg !1699

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1700, !tbaa !996
  br label %23, !dbg !1701

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ], !dbg !1702
  call void @llvm.dbg.value(metadata i8* %24, metadata !205, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1703
  ret i8* %24, !dbg !1704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #7 !dbg !1705 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1708, !tbaa !996
  %2 = tail call i8* @gai_strerror(i32 %1) #11, !dbg !1709
  ret i8* %2, !dbg !1710
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i8* %0, i8** @file_name, align 8, !dbg !1715, !tbaa !805
  ret void, !dbg !1716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1717 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1721, metadata !DIExpression()), !dbg !1722
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1723, !tbaa !1724
  ret void, !dbg !1726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1727 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1732, !tbaa !805
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1733
  %3 = icmp eq i32 %2, 0, !dbg !1734
  br i1 %3, label %22, label %4, !dbg !1735

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1736, !tbaa !1724, !range !1737
  %6 = icmp eq i8 %5, 0, !dbg !1736
  br i1 %6, label %11, label %7, !dbg !1738

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1739
  %9 = load i32, i32* %8, align 4, !dbg !1739, !tbaa !996
  %10 = icmp eq i32 %9, 32, !dbg !1740
  br i1 %10, label %22, label %11, !dbg !1741

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 5) #11, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %12, metadata !1729, metadata !DIExpression()), !dbg !1743
  %13 = load i8*, i8** @file_name, align 8, !dbg !1744, !tbaa !805
  %14 = icmp eq i8* %13, null, !dbg !1744
  %15 = tail call i32* @__errno_location() #17, !dbg !1746
  %16 = load i32, i32* %15, align 4, !dbg !1746, !tbaa !996
  br i1 %14, label %19, label %17, !dbg !1747

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1748
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1749
  br label %20, !dbg !1749

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.80, i64 0, i64 0), i8* %12) #11, !dbg !1750
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1751, !tbaa !996
  tail call void @_exit(i32 %21) #15, !dbg !1752
  unreachable, !dbg !1752

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1753, !tbaa !805
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1755
  %25 = icmp eq i32 %24, 0, !dbg !1756
  br i1 %25, label %28, label %26, !dbg !1757

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1758, !tbaa !996
  tail call void @_exit(i32 %27) #15, !dbg !1759
  unreachable, !dbg !1759

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1760
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !1761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1770
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %2, metadata !1768, metadata !DIExpression()), !dbg !1772
  %3 = icmp eq i8* %2, null, !dbg !1773
  br i1 %3, label %11, label %4, !dbg !1775

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #14, !dbg !1776
  %6 = icmp eq i32 %5, 0, !dbg !1781
  br i1 %6, label %10, label %7, !dbg !1782

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i64 0, i64 0)) #14, !dbg !1783
  %9 = icmp eq i32 %8, 0, !dbg !1784
  br i1 %9, label %10, label %11, !dbg !1785

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1770
  br label %11, !dbg !1786

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @imaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1788 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1793, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* %1, metadata !1794, metadata !DIExpression()), !dbg !1797
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %3, metadata !1795, metadata !DIExpression()), !dbg !1799
  store i8 0, i8* %3, align 1, !dbg !1800, !tbaa !1094
  %4 = icmp slt i64 %0, 0, !dbg !1801
  br i1 %4, label %5, label %17, !dbg !1803

; <label>:5:                                      ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !1804
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %6, metadata !1793, metadata !DIExpression()), !dbg !1796
  %8 = srem i64 %6, 10, !dbg !1806
  %9 = trunc i64 %8 to i8, !dbg !1807
  %10 = sub i8 48, %9, !dbg !1807
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1808
  call void @llvm.dbg.value(metadata i8* %11, metadata !1795, metadata !DIExpression()), !dbg !1799
  store i8 %10, i8* %11, align 1, !dbg !1809, !tbaa !1094
  %12 = sdiv i64 %6, 10, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %12, metadata !1793, metadata !DIExpression()), !dbg !1796
  %13 = add i64 %6, 9, !dbg !1811
  %14 = icmp ugt i64 %13, 18, !dbg !1811
  br i1 %14, label %5, label %15, !dbg !1812, !llvm.loop !1813

; <label>:15:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1799
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %16, metadata !1795, metadata !DIExpression()), !dbg !1799
  store i8 45, i8* %16, align 1, !dbg !1817, !tbaa !1094
  br label %27, !dbg !1818

; <label>:17:                                     ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !1819
  call void @llvm.dbg.value(metadata i8* %19, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %18, metadata !1793, metadata !DIExpression()), !dbg !1796
  %20 = srem i64 %18, 10, !dbg !1821
  %21 = trunc i64 %20 to i8, !dbg !1822
  %22 = add i8 %21, 48, !dbg !1822
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1823
  call void @llvm.dbg.value(metadata i8* %23, metadata !1795, metadata !DIExpression()), !dbg !1799
  store i8 %22, i8* %23, align 1, !dbg !1824, !tbaa !1094
  %24 = sdiv i64 %18, 10, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %24, metadata !1793, metadata !DIExpression()), !dbg !1796
  %25 = add i64 %18, 9, !dbg !1826
  %26 = icmp ugt i64 %25, 18, !dbg !1826
  br i1 %26, label %17, label %27, !dbg !1827, !llvm.loop !1828

; <label>:27:                                     ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !1819
  call void @llvm.dbg.value(metadata i8* %28, metadata !1795, metadata !DIExpression()), !dbg !1799
  ret i8* %28, !dbg !1831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1834, metadata !DIExpression()), !dbg !1837
  %2 = icmp eq i8* %0, null, !dbg !1838
  br i1 %2, label %3, label %6, !dbg !1840

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1841, !tbaa !805
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.93, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1843
  tail call void @abort() #15, !dbg !1844
  unreachable, !dbg !1844

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %7, metadata !1835, metadata !DIExpression()), !dbg !1846
  %8 = icmp eq i8* %7, null, !dbg !1847
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1848
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %10, metadata !1836, metadata !DIExpression()), !dbg !1850
  %11 = ptrtoint i8* %10 to i64, !dbg !1851
  %12 = ptrtoint i8* %0 to i64, !dbg !1851
  %13 = sub i64 %11, %12, !dbg !1851
  %14 = icmp sgt i64 %13, 6, !dbg !1853
  br i1 %14, label %15, label %24, !dbg !1854

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1855
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.94, i64 0, i64 0), i64 7) #14, !dbg !1856
  %18 = icmp eq i32 %17, 0, !dbg !1857
  br i1 %18, label %19, label %24, !dbg !1858

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1834, metadata !DIExpression()), !dbg !1837
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i64 3) #14, !dbg !1859
  %21 = icmp eq i32 %20, 0, !dbg !1862
  br i1 %21, label %22, label %24, !dbg !1863

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1864
  call void @llvm.dbg.value(metadata i8* %23, metadata !1834, metadata !DIExpression()), !dbg !1837
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1866, !tbaa !805
  br label %24, !dbg !1867

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1834, metadata !DIExpression()), !dbg !1837
  store i8* %25, i8** @program_name, align 8, !dbg !1868, !tbaa !805
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1869, !tbaa !805
  ret void, !dbg !1870
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1871 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1876, metadata !DIExpression()), !dbg !1879
  %2 = tail call i32* @__errno_location() #17, !dbg !1880
  %3 = load i32, i32* %2, align 4, !dbg !1880, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %3, metadata !1877, metadata !DIExpression()), !dbg !1881
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1882
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1882
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1882
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1883
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1883
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1878, metadata !DIExpression()), !dbg !1884
  store i32 %3, i32* %2, align 4, !dbg !1885, !tbaa !996
  ret %struct.quoting_options* %8, !dbg !1886
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1887 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1893, metadata !DIExpression()), !dbg !1894
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1895
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1895
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1896
  %5 = load i32, i32* %4, align 8, !dbg !1896, !tbaa !1897
  ret i32 %5, !dbg !1899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1900 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 %1, metadata !1905, metadata !DIExpression()), !dbg !1907
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1908
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1908
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1909
  store i32 %1, i32* %5, align 8, !dbg !1910, !tbaa !1897
  ret void, !dbg !1911
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1912 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1916, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 %1, metadata !1917, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %2, metadata !1918, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 %1, metadata !1919, metadata !DIExpression()), !dbg !1927
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1928
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1928
  %6 = lshr i8 %1, 5, !dbg !1929
  %7 = zext i8 %6 to i64, !dbg !1929
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1930
  call void @llvm.dbg.value(metadata i32* %8, metadata !1920, metadata !DIExpression()), !dbg !1931
  %9 = and i8 %1, 31, !dbg !1932
  %10 = zext i8 %9 to i32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %10, metadata !1922, metadata !DIExpression()), !dbg !1933
  %11 = load i32, i32* %8, align 4, !dbg !1934, !tbaa !996
  %12 = lshr i32 %11, %10, !dbg !1935
  %13 = and i32 %12, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %13, metadata !1923, metadata !DIExpression()), !dbg !1937
  %14 = and i32 %2, 1, !dbg !1938
  %15 = xor i32 %13, %14, !dbg !1939
  %16 = shl i32 %15, %10, !dbg !1940
  %17 = xor i32 %16, %11, !dbg !1941
  store i32 %17, i32* %8, align 4, !dbg !1941, !tbaa !996
  ret i32 %13, !dbg !1942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1943 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1947, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %1, metadata !1948, metadata !DIExpression()), !dbg !1951
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1952
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1947, metadata !DIExpression()), !dbg !1950
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1955
  %6 = load i32, i32* %5, align 4, !dbg !1955, !tbaa !1956
  call void @llvm.dbg.value(metadata i32 %6, metadata !1949, metadata !DIExpression()), !dbg !1957
  store i32 %1, i32* %5, align 4, !dbg !1958, !tbaa !1956
  ret i32 %6, !dbg !1959
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1960 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1964, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %1, metadata !1965, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %2, metadata !1966, metadata !DIExpression()), !dbg !1969
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1970
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()), !dbg !1967
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1973
  store i32 10, i32* %6, align 8, !dbg !1974, !tbaa !1897
  %7 = icmp ne i8* %1, null, !dbg !1975
  %8 = icmp ne i8* %2, null, !dbg !1977
  %9 = and i1 %7, %8, !dbg !1978
  br i1 %9, label %11, label %10, !dbg !1978

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1979
  unreachable, !dbg !1979

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1980
  store i8* %1, i8** %12, align 8, !dbg !1981, !tbaa !1982
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1983
  store i8* %2, i8** %13, align 8, !dbg !1984, !tbaa !1985
  ret void, !dbg !1986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1991, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %1, metadata !1992, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* %2, metadata !1993, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %3, metadata !1994, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1995, metadata !DIExpression()), !dbg !2003
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2004
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1996, metadata !DIExpression()), !dbg !2005
  %8 = tail call i32* @__errno_location() #17, !dbg !2006
  %9 = load i32, i32* %8, align 4, !dbg !2006, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %9, metadata !1997, metadata !DIExpression()), !dbg !2007
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2008
  %11 = load i32, i32* %10, align 8, !dbg !2008, !tbaa !1897
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2009
  %13 = load i32, i32* %12, align 4, !dbg !2009, !tbaa !1956
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2010
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2011
  %16 = load i8*, i8** %15, align 8, !dbg !2011, !tbaa !1982
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2012
  %18 = load i8*, i8** %17, align 8, !dbg !2012, !tbaa !1985
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %19, metadata !1998, metadata !DIExpression()), !dbg !2014
  store i32 %9, i32* %8, align 4, !dbg !2015, !tbaa !996
  ret i64 %19, !dbg !2016
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2017 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2023, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %1, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %2, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %3, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %4, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %5, metadata !2028, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32* %6, metadata !2029, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %7, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %8, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* null, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, metadata !2036, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2097
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2098
  %14 = icmp eq i64 %13, 1, !dbg !2099
  %15 = lshr i32 %5, 1, !dbg !2100
  %16 = trunc i32 %15 to i8, !dbg !2100
  %17 = and i8 %16, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i8 %17, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2042, metadata !DIExpression()), !dbg !2103
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2104

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2094
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2095
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2096
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2097
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2105
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2101
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2102
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2103
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %39, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %38, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %37, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %36, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %35, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %34, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %33, metadata !2036, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %32, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %31, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %30, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %29, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %28, metadata !2027, metadata !DIExpression()), !dbg !2088
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
  ], !dbg !2107

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %36, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, metadata !2027, metadata !DIExpression()), !dbg !2088
  br label %93, !dbg !2108

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, metadata !2027, metadata !DIExpression()), !dbg !2088
  %43 = and i8 %36, 1, !dbg !2109
  %44 = icmp eq i8 %43, 0, !dbg !2109
  br i1 %44, label %45, label %93, !dbg !2108

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2111
  br i1 %46, label %93, label %47, !dbg !2114

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2111, !tbaa !1094
  br label %93, !dbg !2111

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.106, i64 0, i64 0), i32 %28), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %49, metadata !2030, metadata !DIExpression()), !dbg !2091
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), i32 %28), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %50, metadata !2031, metadata !DIExpression()), !dbg !2092
  br label %51, !dbg !2120

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %52, metadata !2030, metadata !DIExpression()), !dbg !2091
  %54 = and i8 %36, 1, !dbg !2121
  %55 = icmp eq i8 %54, 0, !dbg !2121
  br i1 %55, label %56, label %71, !dbg !2123

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2093
  %57 = load i8, i8* %52, align 1, !dbg !2124, !tbaa !1094
  %58 = icmp eq i8 %57, 0, !dbg !2127
  br i1 %58, label %71, label %59, !dbg !2127

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %62, metadata !2033, metadata !DIExpression()), !dbg !2093
  %63 = icmp ult i64 %62, %40, !dbg !2128
  br i1 %63, label %64, label %66, !dbg !2131

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2128
  store i8 %60, i8* %65, align 1, !dbg !2128, !tbaa !1094
  br label %66, !dbg !2128

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2131
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %68, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %67, metadata !2033, metadata !DIExpression()), !dbg !2093
  %69 = load i8, i8* %68, align 1, !dbg !2124, !tbaa !1094
  %70 = icmp eq i8 %69, 0, !dbg !2127
  br i1 %70, label %71, label %59, !dbg !2127, !llvm.loop !2133

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %72, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %53, metadata !2035, metadata !DIExpression()), !dbg !2095
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %73, metadata !2036, metadata !DIExpression()), !dbg !2096
  br label %93, !dbg !2136

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2097
  br label %75, !dbg !2137

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2105
  call void @llvm.dbg.value(metadata i8 %76, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2100
  br label %77, !dbg !2138

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2097
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2105
  call void @llvm.dbg.value(metadata i8 %79, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %78, metadata !2037, metadata !DIExpression()), !dbg !2097
  %80 = and i8 %79, 1, !dbg !2139
  %81 = icmp eq i8 %80, 0, !dbg !2139
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2141
  br label %83, !dbg !2141

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2142
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %85, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %84, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  %86 = and i8 %85, 1, !dbg !2143
  %87 = icmp eq i8 %86, 0, !dbg !2143
  br i1 %87, label %88, label %93, !dbg !2145

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2146
  br i1 %89, label %93, label %90, !dbg !2149

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2146, !tbaa !1094
  br label %93, !dbg !2146

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2100
  br label %93, !dbg !2150

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2151
  unreachable, !dbg !2151

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2093
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %41 ], !dbg !2105
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2105
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2105
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %101, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %99, metadata !2036, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %97, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2153
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
  br label %121, !dbg !2154

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2155
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2093
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2094
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2101
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2102
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2103
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %122, metadata !2032, metadata !DIExpression()), !dbg !2153
  %130 = icmp eq i64 %125, -1, !dbg !2156
  br i1 %130, label %131, label %135, !dbg !2157

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2158
  %133 = load i8, i8* %132, align 1, !dbg !2158, !tbaa !1094
  %134 = icmp eq i8 %133, 0, !dbg !2159
  br i1 %134, label %617, label %137, !dbg !2160

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2161
  br i1 %136, label %617, label %137, !dbg !2160

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2164
  br i1 %107, label %138, label %153, !dbg !2165

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2167
  %140 = and i1 %108, %130, !dbg !2168
  br i1 %140, label %141, label %143, !dbg !2168

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %142, metadata !2026, metadata !DIExpression()), !dbg !2087
  br label %143, !dbg !2170

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2026, metadata !DIExpression()), !dbg !2087
  %145 = icmp ugt i64 %139, %144, !dbg !2171
  br i1 %145, label %153, label %146, !dbg !2172

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2173
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2174
  %149 = icmp ne i32 %148, 0, !dbg !2175
  %150 = or i1 %149, %110, !dbg !2176
  %151 = xor i1 %149, true, !dbg !2176
  %152 = zext i1 %151 to i8, !dbg !2176
  br i1 %150, label %153, label %661, !dbg !2176

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2177
  call void @llvm.dbg.value(metadata i8 %155, metadata !2048, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %154, metadata !2026, metadata !DIExpression()), !dbg !2087
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2178
  %157 = load i8, i8* %156, align 1, !dbg !2178, !tbaa !1094
  call void @llvm.dbg.value(metadata i8 %157, metadata !2043, metadata !DIExpression()), !dbg !2179
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
  ], !dbg !2180

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2181

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2182

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2163
  %161 = and i8 %126, 1, !dbg !2186
  %162 = icmp eq i8 %161, 0, !dbg !2186
  %163 = and i1 %114, %162, !dbg !2186
  br i1 %163, label %164, label %180, !dbg !2186

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2188
  br i1 %165, label %166, label %168, !dbg !2192

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2188
  store i8 39, i8* %167, align 1, !dbg !2188, !tbaa !1094
  br label %168, !dbg !2188

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %169, metadata !2033, metadata !DIExpression()), !dbg !2093
  %170 = icmp ult i64 %169, %129, !dbg !2193
  br i1 %170, label %171, label %173, !dbg !2196

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2193
  store i8 36, i8* %172, align 1, !dbg !2193, !tbaa !1094
  br label %173, !dbg !2193

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %174, metadata !2033, metadata !DIExpression()), !dbg !2093
  %175 = icmp ult i64 %174, %129, !dbg !2197
  br i1 %175, label %176, label %178, !dbg !2200

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2197
  store i8 39, i8* %177, align 1, !dbg !2197, !tbaa !1094
  br label %178, !dbg !2197

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %179, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %180, !dbg !2201

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2152
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %182, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %181, metadata !2033, metadata !DIExpression()), !dbg !2093
  %183 = icmp ult i64 %181, %129, !dbg !2202
  br i1 %183, label %184, label %186, !dbg !2205

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2202
  store i8 92, i8* %185, align 1, !dbg !2202, !tbaa !1094
  br label %186, !dbg !2202

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %187, metadata !2033, metadata !DIExpression()), !dbg !2093
  br i1 %104, label %188, label %478, !dbg !2206

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2208
  %190 = icmp ult i64 %189, %154, !dbg !2209
  br i1 %190, label %191, label %467, !dbg !2210

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2211
  %193 = load i8, i8* %192, align 1, !dbg !2211, !tbaa !1094
  %194 = add i8 %193, -48, !dbg !2212
  %195 = icmp ult i8 %194, 10, !dbg !2212
  br i1 %195, label %196, label %467, !dbg !2212

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2213
  br i1 %197, label %198, label %200, !dbg !2217

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2213
  store i8 48, i8* %199, align 1, !dbg !2213, !tbaa !1094
  br label %200, !dbg !2213

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %201, metadata !2033, metadata !DIExpression()), !dbg !2093
  %202 = icmp ult i64 %201, %129, !dbg !2218
  br i1 %202, label %203, label %205, !dbg !2221

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2218
  store i8 48, i8* %204, align 1, !dbg !2218, !tbaa !1094
  br label %205, !dbg !2218

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %206, metadata !2033, metadata !DIExpression()), !dbg !2093
  br label %467, !dbg !2222

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2223

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2224

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2225

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2227

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2229
  %213 = icmp ult i64 %212, %154, !dbg !2230
  br i1 %213, label %214, label %467, !dbg !2231

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2232
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2233
  %217 = load i8, i8* %216, align 1, !dbg !2233, !tbaa !1094
  %218 = icmp eq i8 %217, 63, !dbg !2234
  br i1 %218, label %219, label %467, !dbg !2235

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2236
  %221 = load i8, i8* %220, align 1, !dbg !2236, !tbaa !1094
  %222 = sext i8 %221 to i32, !dbg !2236
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
  ], !dbg !2237

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2238

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %212, metadata !2032, metadata !DIExpression()), !dbg !2153
  %225 = icmp ult i64 %123, %129, !dbg !2240
  br i1 %225, label %226, label %228, !dbg !2243

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2240
  store i8 63, i8* %227, align 1, !dbg !2240, !tbaa !1094
  br label %228, !dbg !2240

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %229, metadata !2033, metadata !DIExpression()), !dbg !2093
  %230 = icmp ult i64 %229, %129, !dbg !2244
  br i1 %230, label %231, label %233, !dbg !2247

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2244
  store i8 34, i8* %232, align 1, !dbg !2244, !tbaa !1094
  br label %233, !dbg !2244

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %234, metadata !2033, metadata !DIExpression()), !dbg !2093
  %235 = icmp ult i64 %234, %129, !dbg !2248
  br i1 %235, label %236, label %238, !dbg !2251

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2248
  store i8 34, i8* %237, align 1, !dbg !2248, !tbaa !1094
  br label %238, !dbg !2248

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %239, metadata !2033, metadata !DIExpression()), !dbg !2093
  %240 = icmp ult i64 %239, %129, !dbg !2252
  br i1 %240, label %241, label %243, !dbg !2255

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2252
  store i8 63, i8* %242, align 1, !dbg !2252, !tbaa !1094
  br label %243, !dbg !2252

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %244, metadata !2033, metadata !DIExpression()), !dbg !2093
  br label %467, !dbg !2256

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2047, metadata !DIExpression()), !dbg !2257
  br label %255, !dbg !2258

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2047, metadata !DIExpression()), !dbg !2257
  br label %255, !dbg !2259

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2047, metadata !DIExpression()), !dbg !2257
  br label %253, !dbg !2260

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2047, metadata !DIExpression()), !dbg !2257
  br label %253, !dbg !2261

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2047, metadata !DIExpression()), !dbg !2257
  br label %255, !dbg !2262

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2047, metadata !DIExpression()), !dbg !2257
  br i1 %114, label %251, label %252, !dbg !2263

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2264

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2267

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2269
  call void @llvm.dbg.value(metadata i8 %254, metadata !2047, metadata !DIExpression()), !dbg !2257
  br i1 %113, label %255, label %661, !dbg !2270

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2269
  call void @llvm.dbg.value(metadata i8 %256, metadata !2047, metadata !DIExpression()), !dbg !2257
  br i1 %103, label %524, label %478, !dbg !2272

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2273
  br i1 %258, label %259, label %264, !dbg !2275

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2276, !tbaa !1094
  %261 = icmp ne i8 %260, 0, !dbg !2277
  %262 = icmp ne i64 %122, 0, !dbg !2278
  %263 = or i1 %262, %261, !dbg !2280
  br i1 %263, label %467, label %270, !dbg !2280

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2281
  %266 = icmp ne i64 %122, 0, !dbg !2278
  %267 = or i1 %266, %265, !dbg !2275
  br i1 %267, label %467, label %270, !dbg !2275

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2278
  br i1 %269, label %270, label %467, !dbg !2282

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2164
  br label %271, !dbg !2283

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2269
  call void @llvm.dbg.value(metadata i8 %272, metadata !2050, metadata !DIExpression()), !dbg !2164
  br i1 %113, label %467, label %661, !dbg !2284

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2164
  br i1 %114, label %274, label %467, !dbg !2286

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2287

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2290
  %277 = icmp ne i64 %124, 0, !dbg !2292
  %278 = or i1 %277, %276, !dbg !2293
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2293
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %280, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %279, metadata !2034, metadata !DIExpression()), !dbg !2094
  %281 = icmp ult i64 %123, %280, !dbg !2294
  br i1 %281, label %282, label %284, !dbg !2297

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2294
  store i8 39, i8* %283, align 1, !dbg !2294, !tbaa !1094
  br label %284, !dbg !2294

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %285, metadata !2033, metadata !DIExpression()), !dbg !2093
  %286 = icmp ult i64 %285, %280, !dbg !2298
  br i1 %286, label %287, label %289, !dbg !2301

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2298
  store i8 92, i8* %288, align 1, !dbg !2298, !tbaa !1094
  br label %289, !dbg !2298

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %290, metadata !2033, metadata !DIExpression()), !dbg !2093
  %291 = icmp ult i64 %290, %280, !dbg !2302
  br i1 %291, label %292, label %294, !dbg !2305

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2302
  store i8 39, i8* %293, align 1, !dbg !2302, !tbaa !1094
  br label %294, !dbg !2302

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %295, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %467, !dbg !2306

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2307

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2051, metadata !DIExpression()), !dbg !2308
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2309
  %299 = load i16*, i16** %298, align 8, !dbg !2309, !tbaa !805
  %300 = zext i8 %157 to i64, !dbg !2309
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2309
  %302 = load i16, i16* %301, align 2, !dbg !2309, !tbaa !1613
  %303 = lshr i16 %302, 14, !dbg !2311
  %304 = trunc i16 %303 to i8, !dbg !2311
  %305 = and i8 %304, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i8 %305, metadata !2054, metadata !DIExpression()), !dbg !2312
  br label %359, !dbg !2313

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2314
  store i64 0, i64* %10, align 8, !dbg !2315
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2312
  %307 = icmp eq i64 %154, -1, !dbg !2316
  br i1 %307, label %308, label %310, !dbg !2318

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %309, metadata !2026, metadata !DIExpression()), !dbg !2087
  br label %310, !dbg !2320

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2321
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  br label %312, !dbg !2322

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2323
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %314, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2325
  %315 = add i64 %313, %122, !dbg !2326
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2327
  %317 = sub i64 %311, %315, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2055, metadata !DIExpression(DW_OP_deref)), !dbg !2329
  call void @llvm.dbg.value(metadata i32* %12, metadata !2070, metadata !DIExpression(DW_OP_deref)), !dbg !2330
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %318, metadata !2073, metadata !DIExpression()), !dbg !2332
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2333

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  %320 = icmp ugt i64 %311, %315, !dbg !2334
  br i1 %320, label %321, label %344, !dbg !2336

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2051, metadata !DIExpression()), !dbg !2308
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2337
  %325 = load i8, i8* %324, align 1, !dbg !2337, !tbaa !1094
  %326 = icmp eq i8 %325, 0, !dbg !2336
  br i1 %326, label %344, label %327, !dbg !2338

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %328, metadata !2051, metadata !DIExpression()), !dbg !2308
  %329 = add i64 %328, %122, !dbg !2340
  %330 = icmp ult i64 %329, %311, !dbg !2334
  br i1 %330, label %321, label %344, !dbg !2336, !llvm.loop !2341

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2342
  %333 = and i1 %116, %332, !dbg !2345
  call void @llvm.dbg.value(metadata i64 1, metadata !2074, metadata !DIExpression()), !dbg !2346
  br i1 %333, label %334, label %347, !dbg !2345

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2074, metadata !DIExpression()), !dbg !2346
  %336 = add i64 %335, %315, !dbg !2347
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2348
  %338 = load i8, i8* %337, align 1, !dbg !2348, !tbaa !1094
  %339 = sext i8 %338 to i32, !dbg !2348
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2349

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %341, metadata !2074, metadata !DIExpression()), !dbg !2346
  %342 = icmp ult i64 %341, %318, !dbg !2342
  br i1 %342, label %334, label %347, !dbg !2351, !llvm.loop !2352

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %314, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %314, metadata !2054, metadata !DIExpression()), !dbg !2312
  br label %344, !dbg !2354

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2354
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2355, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %348, metadata !2070, metadata !DIExpression()), !dbg !2330
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2357
  %350 = icmp eq i32 %349, 0, !dbg !2357
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2358
  call void @llvm.dbg.value(metadata i8 %351, metadata !2054, metadata !DIExpression()), !dbg !2312
  %352 = add i64 %318, %313, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %352, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %351, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2055, metadata !DIExpression(DW_OP_deref)), !dbg !2329
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2360
  %354 = icmp eq i32 %353, 0, !dbg !2361
  br i1 %354, label %312, label %355, !dbg !2362, !llvm.loop !2363

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2365
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 2, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %94, metadata !2027, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 %100, metadata !2037, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %311, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %351, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2365
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2366
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2367
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2367
  call void @llvm.dbg.value(metadata i8 %362, metadata !2054, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %361, metadata !2051, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %360, metadata !2026, metadata !DIExpression()), !dbg !2087
  %363 = and i8 %362, 1, !dbg !2368
  %364 = icmp ne i8 %363, 0, !dbg !2368
  call void @llvm.dbg.value(metadata i8 %363, metadata !2050, metadata !DIExpression()), !dbg !2164
  %365 = icmp ult i64 %361, 2, !dbg !2369
  %366 = or i1 %364, %115, !dbg !2370
  %367 = and i1 %365, %366, !dbg !2371
  br i1 %367, label %467, label %368, !dbg !2371

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %369, metadata !2081, metadata !DIExpression()), !dbg !2373
  br label %370, !dbg !2374

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2375
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2379
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2101
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2375
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2381
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2163
  call void @llvm.dbg.value(metadata i8 %376, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %375, metadata !2048, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %374, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %373, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %372, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %371, metadata !2032, metadata !DIExpression()), !dbg !2153
  br i1 %366, label %423, label %377, !dbg !2385

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2386

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2163
  %379 = and i8 %373, 1, !dbg !2389
  %380 = icmp eq i8 %379, 0, !dbg !2389
  %381 = and i1 %114, %380, !dbg !2389
  br i1 %381, label %382, label %398, !dbg !2389

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2391
  br i1 %383, label %384, label %386, !dbg !2395

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2391
  store i8 39, i8* %385, align 1, !dbg !2391, !tbaa !1094
  br label %386, !dbg !2391

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %387, metadata !2033, metadata !DIExpression()), !dbg !2093
  %388 = icmp ult i64 %387, %129, !dbg !2396
  br i1 %388, label %389, label %391, !dbg !2399

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2396
  store i8 36, i8* %390, align 1, !dbg !2396, !tbaa !1094
  br label %391, !dbg !2396

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %392, metadata !2033, metadata !DIExpression()), !dbg !2093
  %393 = icmp ult i64 %392, %129, !dbg !2400
  br i1 %393, label %394, label %396, !dbg !2403

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2400
  store i8 39, i8* %395, align 1, !dbg !2400, !tbaa !1094
  br label %396, !dbg !2400

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %397, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %398, !dbg !2404

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2152
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %400, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %399, metadata !2033, metadata !DIExpression()), !dbg !2093
  %401 = icmp ult i64 %399, %129, !dbg !2405
  br i1 %401, label %402, label %404, !dbg !2408

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2405
  store i8 92, i8* %403, align 1, !dbg !2405, !tbaa !1094
  br label %404, !dbg !2405

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %405, metadata !2033, metadata !DIExpression()), !dbg !2093
  %406 = icmp ult i64 %405, %129, !dbg !2409
  br i1 %406, label %407, label %411, !dbg !2412

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2409
  %409 = or i8 %408, 48, !dbg !2409
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2409
  store i8 %409, i8* %410, align 1, !dbg !2409, !tbaa !1094
  br label %411, !dbg !2409

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %412, metadata !2033, metadata !DIExpression()), !dbg !2093
  %413 = icmp ult i64 %412, %129, !dbg !2413
  br i1 %413, label %414, label %419, !dbg !2416

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2413
  %416 = and i8 %415, 7, !dbg !2413
  %417 = or i8 %416, 48, !dbg !2413
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2413
  store i8 %417, i8* %418, align 1, !dbg !2413, !tbaa !1094
  br label %419, !dbg !2413

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %420, metadata !2033, metadata !DIExpression()), !dbg !2093
  %421 = and i8 %374, 7, !dbg !2417
  %422 = or i8 %421, 48, !dbg !2418
  call void @llvm.dbg.value(metadata i8 %422, metadata !2043, metadata !DIExpression()), !dbg !2179
  br label %432, !dbg !2419

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2420
  %425 = icmp eq i8 %424, 0, !dbg !2420
  br i1 %425, label %432, label %426, !dbg !2421

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2422
  br i1 %427, label %428, label %430, !dbg !2425

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2422
  store i8 92, i8* %429, align 1, !dbg !2422, !tbaa !1094
  br label %430, !dbg !2422

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %431, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2162
  br label %432, !dbg !2426

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2427
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2101
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2428
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2429
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2431
  call void @llvm.dbg.value(metadata i8 %437, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %436, metadata !2048, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %435, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %434, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %433, metadata !2033, metadata !DIExpression()), !dbg !2093
  %438 = add i64 %371, 1, !dbg !2432
  %439 = icmp ugt i64 %369, %438, !dbg !2434
  br i1 %439, label %440, label %562, !dbg !2435

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2436
  %442 = icmp ne i8 %441, 0, !dbg !2436
  %443 = and i8 %437, 1, !dbg !2436
  %444 = icmp eq i8 %443, 0, !dbg !2436
  %445 = and i1 %442, %444, !dbg !2436
  br i1 %445, label %446, label %457, !dbg !2436

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2439
  br i1 %447, label %448, label %450, !dbg !2443

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2439
  store i8 39, i8* %449, align 1, !dbg !2439, !tbaa !1094
  br label %450, !dbg !2439

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %451, metadata !2033, metadata !DIExpression()), !dbg !2093
  %452 = icmp ult i64 %451, %129, !dbg !2444
  br i1 %452, label %453, label %455, !dbg !2447

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2444
  store i8 39, i8* %454, align 1, !dbg !2444, !tbaa !1094
  br label %455, !dbg !2444

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %456, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %457, !dbg !2448

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2449
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %459, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %458, metadata !2033, metadata !DIExpression()), !dbg !2093
  %460 = icmp ult i64 %458, %129, !dbg !2450
  br i1 %460, label %461, label %463, !dbg !2452

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2450
  store i8 %435, i8* %462, align 1, !dbg !2450, !tbaa !1094
  br label %463, !dbg !2450

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %464, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %438, metadata !2032, metadata !DIExpression()), !dbg !2153
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2453
  %466 = load i8, i8* %465, align 1, !dbg !2453, !tbaa !1094
  call void @llvm.dbg.value(metadata i8 %466, metadata !2043, metadata !DIExpression()), !dbg !2179
  br label %370, !dbg !2454, !llvm.loop !2455

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2458
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2152
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2094
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2459
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2152
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2152
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2177
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2177
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2177
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %476, metadata !2050, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 %475, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %155, metadata !2048, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %474, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %473, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %472, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %471, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %470, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %469, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %468, metadata !2032, metadata !DIExpression()), !dbg !2153
  br i1 %105, label %489, label %478, !dbg !2460

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
  br i1 %112, label %490, label %512, !dbg !2462

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2463

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
  %501 = lshr i8 %494, 5, !dbg !2464
  %502 = zext i8 %501 to i64, !dbg !2464
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2465
  %504 = load i32, i32* %503, align 4, !dbg !2465, !tbaa !996
  %505 = and i8 %494, 31, !dbg !2466
  %506 = zext i8 %505 to i32, !dbg !2466
  %507 = shl i32 1, %506, !dbg !2467
  %508 = and i32 %504, %507, !dbg !2467
  %509 = icmp eq i32 %508, 0, !dbg !2467
  %510 = icmp eq i8 %155, 0, !dbg !2468
  %511 = and i1 %510, %509, !dbg !2469
  br i1 %511, label %562, label %524, !dbg !2469

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
  %523 = icmp eq i8 %155, 0, !dbg !2468
  br i1 %523, label %562, label %524, !dbg !2470

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2471
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2152
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2094
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2459
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2101
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2102
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2472
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2177
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %532, metadata !2050, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 %531, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %530, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %529, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %528, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %527, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %526, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %525, metadata !2032, metadata !DIExpression()), !dbg !2153
  br i1 %110, label %534, label %661, !dbg !2475

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2163
  %535 = and i8 %529, 1, !dbg !2477
  %536 = icmp eq i8 %535, 0, !dbg !2477
  %537 = and i1 %114, %536, !dbg !2477
  br i1 %537, label %538, label %554, !dbg !2477

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2479
  br i1 %539, label %540, label %542, !dbg !2483

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2479
  store i8 39, i8* %541, align 1, !dbg !2479, !tbaa !1094
  br label %542, !dbg !2479

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %543, metadata !2033, metadata !DIExpression()), !dbg !2093
  %544 = icmp ult i64 %543, %533, !dbg !2484
  br i1 %544, label %545, label %547, !dbg !2487

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2484
  store i8 36, i8* %546, align 1, !dbg !2484, !tbaa !1094
  br label %547, !dbg !2484

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %548, metadata !2033, metadata !DIExpression()), !dbg !2093
  %549 = icmp ult i64 %548, %533, !dbg !2488
  br i1 %549, label %550, label %552, !dbg !2491

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2488
  store i8 39, i8* %551, align 1, !dbg !2488, !tbaa !1094
  br label %552, !dbg !2488

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %553, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %554, !dbg !2492

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2449
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %556, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %555, metadata !2033, metadata !DIExpression()), !dbg !2093
  %557 = icmp ult i64 %555, %533, !dbg !2493
  br i1 %557, label %558, label %560, !dbg !2496

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2493
  store i8 92, i8* %559, align 1, !dbg !2493, !tbaa !1094
  br label %560, !dbg !2493

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %561, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %572, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %571, metadata !2050, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 %570, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %569, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %568, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %567, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %566, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %565, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %564, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %563, metadata !2032, metadata !DIExpression()), !dbg !2153
  br label %589, !dbg !2497

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2471
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2152
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2094
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2459
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2101
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2102
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2500
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2177
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2177
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %571, metadata !2050, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 %570, metadata !2049, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %569, metadata !2043, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %568, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %567, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %566, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %565, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %564, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %563, metadata !2032, metadata !DIExpression()), !dbg !2153
  %573 = and i8 %567, 1, !dbg !2497
  %574 = icmp ne i8 %573, 0, !dbg !2497
  %575 = and i8 %570, 1, !dbg !2497
  %576 = icmp eq i8 %575, 0, !dbg !2497
  %577 = and i1 %574, %576, !dbg !2497
  br i1 %577, label %578, label %589, !dbg !2497

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2501
  br i1 %579, label %580, label %582, !dbg !2505

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2501
  store i8 39, i8* %581, align 1, !dbg !2501, !tbaa !1094
  br label %582, !dbg !2501

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %583, metadata !2033, metadata !DIExpression()), !dbg !2093
  %584 = icmp ult i64 %583, %572, !dbg !2506
  br i1 %584, label %585, label %587, !dbg !2509

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2506
  store i8 39, i8* %586, align 1, !dbg !2506, !tbaa !1094
  br label %587, !dbg !2506

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %588, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %589, !dbg !2510

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2449
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %598, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %597, metadata !2033, metadata !DIExpression()), !dbg !2093
  %599 = icmp ult i64 %597, %590, !dbg !2511
  br i1 %599, label %600, label %602, !dbg !2514

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2511
  store i8 %592, i8* %601, align 1, !dbg !2511, !tbaa !1094
  br label %602, !dbg !2511

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %603, metadata !2033, metadata !DIExpression()), !dbg !2093
  %604 = and i8 %591, 1, !dbg !2515
  %605 = icmp eq i8 %604, 0, !dbg !2515
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2517
  call void @llvm.dbg.value(metadata i8 %606, metadata !2042, metadata !DIExpression()), !dbg !2103
  br label %607, !dbg !2518

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2471
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2152
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2094
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2459
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2101
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2152
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2103
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %614, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %613, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %612, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %611, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %610, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %609, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %608, metadata !2032, metadata !DIExpression()), !dbg !2153
  %616 = add i64 %608, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %616, metadata !2032, metadata !DIExpression()), !dbg !2153
  br label %121, !dbg !2520, !llvm.loop !2521

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %125, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %125, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %128, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  %619 = icmp eq i64 %123, 0, !dbg !2523
  %620 = and i1 %114, %619, !dbg !2525
  %621 = xor i1 %620, true, !dbg !2525
  %622 = or i1 %110, %621, !dbg !2525
  br i1 %622, label %623, label %661, !dbg !2525

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2526
  %625 = xor i1 %624, true, !dbg !2526
  %626 = and i8 %127, 1, !dbg !2528
  %627 = icmp eq i8 %626, 0, !dbg !2528
  %628 = or i1 %627, %625, !dbg !2526
  br i1 %628, label %638, label %629, !dbg !2526

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2529
  %631 = icmp eq i8 %630, 0, !dbg !2529
  br i1 %631, label %634, label %632, !dbg !2532

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %618, metadata !2026, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2030, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2034, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %125, metadata !2026, metadata !DIExpression()), !dbg !2087
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2533
  br label %671, !dbg !2534

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2535
  %636 = icmp ne i64 %124, 0, !dbg !2537
  %637 = and i1 %636, %635, !dbg !2538
  br i1 %637, label %27, label %638, !dbg !2538

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %129, metadata !2024, metadata !DIExpression()), !dbg !2085
  %639 = icmp ne i8* %98, null, !dbg !2539
  %640 = and i1 %639, %110, !dbg !2541
  br i1 %640, label %641, label %656, !dbg !2541

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2093
  %642 = load i8, i8* %98, align 1, !dbg !2542, !tbaa !1094
  %643 = icmp eq i8 %642, 0, !dbg !2545
  br i1 %643, label %656, label %644, !dbg !2545

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %647, metadata !2033, metadata !DIExpression()), !dbg !2093
  %648 = icmp ult i64 %647, %129, !dbg !2546
  br i1 %648, label %649, label %651, !dbg !2549

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2546
  store i8 %645, i8* %650, align 1, !dbg !2546, !tbaa !1094
  br label %651, !dbg !2546

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2549
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %653, metadata !2035, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %652, metadata !2033, metadata !DIExpression()), !dbg !2093
  %654 = load i8, i8* %653, align 1, !dbg !2542, !tbaa !1094
  %655 = icmp eq i8 %654, 0, !dbg !2545
  br i1 %655, label %656, label %644, !dbg !2545, !llvm.loop !2551

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %657, metadata !2033, metadata !DIExpression()), !dbg !2093
  %658 = icmp ult i64 %657, %129, !dbg !2553
  br i1 %658, label %659, label %671, !dbg !2555

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2556
  store i8 0, i8* %660, align 1, !dbg !2557, !tbaa !1094
  br label %671, !dbg !2556

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2024, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %663, metadata !2026, metadata !DIExpression()), !dbg !2087
  %665 = icmp ne i32 %662, 2, !dbg !2558
  %666 = icmp eq i8 %102, 0, !dbg !2560
  %667 = or i1 %665, %666, !dbg !2561
  call void @llvm.dbg.value(metadata i32 4, metadata !2027, metadata !DIExpression()), !dbg !2088
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %668, metadata !2027, metadata !DIExpression()), !dbg !2088
  %669 = and i32 %5, -3, !dbg !2562
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2563
  br label %671, !dbg !2564

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2565
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2571, metadata !DIExpression()), !dbg !2575
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %3, metadata !2572, metadata !DIExpression()), !dbg !2577
  %4 = icmp eq i8* %3, %0, !dbg !2578
  br i1 %4, label %5, label %71, !dbg !2580

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %6, metadata !2573, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %6, metadata !2583, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* null, metadata !2589, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 85, metadata !2590, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 84, metadata !2591, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 70, metadata !2592, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 45, metadata !2593, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 56, metadata !2594, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2611
  %7 = load i8, i8* %6, align 1, !dbg !2612, !tbaa !1094
  %8 = and i8 %7, -33, !dbg !2612
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2612

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* null, metadata !2619, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 84, metadata !2620, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 70, metadata !2621, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 45, metadata !2622, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 56, metadata !2623, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2640
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2641
  %11 = load i8, i8* %10, align 1, !dbg !2641, !tbaa !1094
  %12 = and i8 %11, -33, !dbg !2641
  %13 = icmp eq i8 %12, 84, !dbg !2641
  br i1 %13, label %14, label %68, !dbg !2641

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2643, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* null, metadata !2648, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 70, metadata !2649, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 45, metadata !2650, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 56, metadata !2651, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2654, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2667
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2668
  %16 = load i8, i8* %15, align 1, !dbg !2668, !tbaa !1094
  %17 = and i8 %16, -33, !dbg !2668
  %18 = icmp eq i8 %17, 70, !dbg !2668
  br i1 %18, label %19, label %68, !dbg !2668

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2670, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* null, metadata !2675, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 45, metadata !2676, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8 56, metadata !2677, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2692
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2693
  %21 = load i8, i8* %20, align 1, !dbg !2693, !tbaa !1094
  %22 = icmp eq i8 %21, 45, !dbg !2693
  br i1 %22, label %23, label %68, !dbg !2695

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2696, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* null, metadata !2701, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8 56, metadata !2702, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 0, metadata !2703, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2716
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2717
  %25 = load i8, i8* %24, align 1, !dbg !2717, !tbaa !1094
  %26 = icmp eq i8 %25, 56, !dbg !2717
  br i1 %26, label %27, label %68, !dbg !2719

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2720, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8* null, metadata !2725, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2726, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2738
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2739
  %29 = load i8, i8* %28, align 1, !dbg !2739, !tbaa !1094
  %30 = icmp eq i8 %29, 0, !dbg !2739
  br i1 %30, label %31, label %68, !dbg !2741

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2742, !tbaa !1094
  %33 = icmp eq i8 %32, 96, !dbg !2743
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.109, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.110, i64 0, i64 0), !dbg !2742
  br label %71, !dbg !2744

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* null, metadata !2619, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 66, metadata !2620, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 49, metadata !2621, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 56, metadata !2622, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 51, metadata !2624, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 48, metadata !2625, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2757
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2758
  %37 = load i8, i8* %36, align 1, !dbg !2758, !tbaa !1094
  %38 = and i8 %37, -33, !dbg !2758
  %39 = icmp eq i8 %38, 66, !dbg !2758
  br i1 %39, label %40, label %68, !dbg !2758

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2643, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* null, metadata !2648, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 49, metadata !2649, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 56, metadata !2650, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 48, metadata !2651, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 51, metadata !2652, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 48, metadata !2653, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 0, metadata !2654, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2768
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2769
  %42 = load i8, i8* %41, align 1, !dbg !2769, !tbaa !1094
  %43 = icmp eq i8 %42, 49, !dbg !2769
  br i1 %43, label %44, label %68, !dbg !2770

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2670, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* null, metadata !2675, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 56, metadata !2676, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 48, metadata !2677, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 51, metadata !2678, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 48, metadata !2679, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2779
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2780
  %46 = load i8, i8* %45, align 1, !dbg !2780, !tbaa !1094
  %47 = icmp eq i8 %46, 56, !dbg !2780
  br i1 %47, label %48, label %68, !dbg !2781

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2696, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* null, metadata !2701, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 48, metadata !2702, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 51, metadata !2703, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 48, metadata !2704, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2789
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2790
  %50 = load i8, i8* %49, align 1, !dbg !2790, !tbaa !1094
  %51 = icmp eq i8 %50, 48, !dbg !2790
  br i1 %51, label %52, label %68, !dbg !2791

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2720, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* null, metadata !2725, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8 51, metadata !2726, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 48, metadata !2727, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2798
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2799
  %54 = load i8, i8* %53, align 1, !dbg !2799, !tbaa !1094
  %55 = icmp eq i8 %54, 51, !dbg !2799
  br i1 %55, label %56, label %68, !dbg !2800

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2801, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* null, metadata !2806, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 48, metadata !2807, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2809, metadata !DIExpression()), !dbg !2817
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2818
  %58 = load i8, i8* %57, align 1, !dbg !2818, !tbaa !1094
  %59 = icmp eq i8 %58, 48, !dbg !2818
  br i1 %59, label %60, label %68, !dbg !2820

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* null, metadata !2826, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 0, metadata !2828, metadata !DIExpression()), !dbg !2835
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2836
  %62 = load i8, i8* %61, align 1, !dbg !2836, !tbaa !1094
  %63 = icmp eq i8 %62, 0, !dbg !2836
  br i1 %63, label %64, label %68, !dbg !2838

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2839, !tbaa !1094
  %66 = icmp eq i8 %65, 96, !dbg !2840
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.111, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.112, i64 0, i64 0), !dbg !2839
  br label %71, !dbg !2841

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2842
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), !dbg !2843
  br label %71, !dbg !2844

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2845
  ret i8* %72, !dbg !2846
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #11, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()) #11, !dbg !2872
  call void @llvm.dbg.value(metadata i64* null, metadata !2863, metadata !DIExpression()) #11, !dbg !2873
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2864, metadata !DIExpression()) #11, !dbg !2874
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2875
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2865, metadata !DIExpression()) #11, !dbg !2876
  %6 = tail call i32* @__errno_location() #17, !dbg !2877
  %7 = load i32, i32* %6, align 4, !dbg !2877, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %7, metadata !2866, metadata !DIExpression()) #11, !dbg !2878
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2879
  %9 = load i32, i32* %8, align 4, !dbg !2879, !tbaa !1956
  %10 = or i32 %9, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %10, metadata !2867, metadata !DIExpression()) #11, !dbg !2881
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2882
  %12 = load i32, i32* %11, align 8, !dbg !2882, !tbaa !1897
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2883
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2884
  %15 = load i8*, i8** %14, align 8, !dbg !2884, !tbaa !1982
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2885
  %17 = load i8*, i8** %16, align 8, !dbg !2885, !tbaa !1985
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2886
  %19 = add i64 %18, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %19, metadata !2868, metadata !DIExpression()) #11, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %19, metadata !2889, metadata !DIExpression()) #11, !dbg !2894
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %20, metadata !2869, metadata !DIExpression()) #11, !dbg !2897
  %21 = load i32, i32* %11, align 8, !dbg !2898, !tbaa !1897
  %22 = load i8*, i8** %14, align 8, !dbg !2899, !tbaa !1982
  %23 = load i8*, i8** %16, align 8, !dbg !2900, !tbaa !1985
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2901
  store i32 %7, i32* %6, align 4, !dbg !2902, !tbaa !996
  ret i8* %20, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64* %2, metadata !2863, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2864, metadata !DIExpression()), !dbg !2907
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2908
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2865, metadata !DIExpression()), !dbg !2909
  %7 = tail call i32* @__errno_location() #17, !dbg !2910
  %8 = load i32, i32* %7, align 4, !dbg !2910, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %8, metadata !2866, metadata !DIExpression()), !dbg !2911
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2912
  %10 = load i32, i32* %9, align 4, !dbg !2912, !tbaa !1956
  %11 = icmp ne i64* %2, null, !dbg !2913
  %12 = xor i1 %11, true, !dbg !2913
  %13 = zext i1 %12 to i32, !dbg !2913
  %14 = or i32 %10, %13, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %14, metadata !2867, metadata !DIExpression()), !dbg !2915
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2916
  %16 = load i32, i32* %15, align 8, !dbg !2916, !tbaa !1897
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2917
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2918
  %19 = load i8*, i8** %18, align 8, !dbg !2918, !tbaa !1982
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2919
  %21 = load i8*, i8** %20, align 8, !dbg !2919, !tbaa !1985
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2920
  %23 = add i64 %22, 1, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %23, metadata !2868, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %23, metadata !2889, metadata !DIExpression()) #11, !dbg !2923
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %24, metadata !2869, metadata !DIExpression()), !dbg !2926
  %25 = load i32, i32* %15, align 8, !dbg !2927, !tbaa !1897
  %26 = load i8*, i8** %18, align 8, !dbg !2928, !tbaa !1982
  %27 = load i8*, i8** %20, align 8, !dbg !2929, !tbaa !1985
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2930
  store i32 %8, i32* %7, align 4, !dbg !2931, !tbaa !996
  br i1 %11, label %29, label %30, !dbg !2932

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2933, !tbaa !1032
  br label %30, !dbg !2935

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2937 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2941, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 1, metadata !2940, metadata !DIExpression()), !dbg !2943
  %2 = load i32, i32* @nslots, align 4, !dbg !2944, !tbaa !996
  %3 = icmp sgt i32 %2, 1, !dbg !2947
  br i1 %3, label %4, label %12, !dbg !2948

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2940, metadata !DIExpression()), !dbg !2943
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2949
  %7 = load i8*, i8** %6, align 8, !dbg !2949, !tbaa !2950
  tail call void @free(i8* %7) #11, !dbg !2952
  %8 = add nuw nsw i64 %5, 1, !dbg !2953
  call void @llvm.dbg.value(metadata i32 undef, metadata !2940, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2943
  %9 = load i32, i32* @nslots, align 4, !dbg !2944, !tbaa !996
  %10 = sext i32 %9 to i64, !dbg !2947
  %11 = icmp slt i64 %8, %10, !dbg !2947
  br i1 %11, label %4, label %12, !dbg !2948, !llvm.loop !2954

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2956
  %14 = load i8*, i8** %13, align 8, !dbg !2956, !tbaa !2950
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2958
  br i1 %15, label %17, label %16, !dbg !2959

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2960
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2962, !tbaa !2963
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2964, !tbaa !2950
  br label %17, !dbg !2965

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2966
  br i1 %18, label %21, label %19, !dbg !2968

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2969
  tail call void @free(i8* %20) #11, !dbg !2971
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2972, !tbaa !805
  br label %21, !dbg !2973

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2974, !tbaa !996
  ret void, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2976 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2984
  ret i8* %3, !dbg !2985
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %1, metadata !2991, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %2, metadata !2992, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2993, metadata !DIExpression()), !dbg !3008
  %5 = tail call i32* @__errno_location() #17, !dbg !3009
  %6 = load i32, i32* %5, align 4, !dbg !3009, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %6, metadata !2994, metadata !DIExpression()), !dbg !3010
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3011, !tbaa !805
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2995, metadata !DIExpression()), !dbg !3012
  %8 = icmp slt i32 %0, 0, !dbg !3013
  br i1 %8, label %9, label %10, !dbg !3015

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3016
  unreachable, !dbg !3016

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3017, !tbaa !996
  %12 = icmp sgt i32 %11, %0, !dbg !3018
  br i1 %12, label %34, label %13, !dbg !3019

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3020
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2999, metadata !DIExpression()), !dbg !3021
  %15 = icmp eq i32 %0, 2147483647, !dbg !3022
  br i1 %15, label %16, label %17, !dbg !3024

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3025
  unreachable, !dbg !3025

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3026
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3026
  %20 = add nsw i32 %0, 1, !dbg !3027
  %21 = sext i32 %20 to i64, !dbg !3028
  %22 = shl nsw i64 %21, 4, !dbg !3029
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3030
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3030
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2995, metadata !DIExpression()), !dbg !3012
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3031, !tbaa !805
  br i1 %14, label %25, label %26, !dbg !3032

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3033, !tbaa.struct !3035
  br label %26, !dbg !3036

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3037, !tbaa !996
  %28 = sext i32 %27 to i64, !dbg !3038
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3038
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3039
  %31 = sub nsw i32 %20, %27, !dbg !3040
  %32 = sext i32 %31 to i64, !dbg !3041
  %33 = shl nsw i64 %32, 4, !dbg !3042
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3039
  store i32 %20, i32* @nslots, align 4, !dbg !3043, !tbaa !996
  br label %34, !dbg !3044

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3045
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2995, metadata !DIExpression()), !dbg !3012
  %36 = sext i32 %0 to i64, !dbg !3046
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3047
  %38 = load i64, i64* %37, align 8, !dbg !3047, !tbaa !2963
  call void @llvm.dbg.value(metadata i64 %38, metadata !3000, metadata !DIExpression()), !dbg !3048
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3049
  %40 = load i8*, i8** %39, align 8, !dbg !3049, !tbaa !2950
  call void @llvm.dbg.value(metadata i8* %40, metadata !3002, metadata !DIExpression()), !dbg !3050
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3051
  %42 = load i32, i32* %41, align 4, !dbg !3051, !tbaa !1956
  %43 = or i32 %42, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %43, metadata !3003, metadata !DIExpression()), !dbg !3053
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3054
  %45 = load i32, i32* %44, align 8, !dbg !3054, !tbaa !1897
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3055
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3056
  %48 = load i8*, i8** %47, align 8, !dbg !3056, !tbaa !1982
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3057
  %50 = load i8*, i8** %49, align 8, !dbg !3057, !tbaa !1985
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %51, metadata !3004, metadata !DIExpression()), !dbg !3059
  %52 = icmp ugt i64 %38, %51, !dbg !3060
  br i1 %52, label %63, label %53, !dbg !3062

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %54, metadata !3000, metadata !DIExpression()), !dbg !3048
  store i64 %54, i64* %37, align 8, !dbg !3065, !tbaa !2963
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3066
  br i1 %55, label %57, label %56, !dbg !3068

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3069
  br label %57, !dbg !3069

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2889, metadata !DIExpression()) #11, !dbg !3070
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %58, metadata !3002, metadata !DIExpression()), !dbg !3050
  store i8* %58, i8** %39, align 8, !dbg !3073, !tbaa !2950
  %59 = load i32, i32* %44, align 8, !dbg !3074, !tbaa !1897
  %60 = load i8*, i8** %47, align 8, !dbg !3075, !tbaa !1982
  %61 = load i8*, i8** %49, align 8, !dbg !3076, !tbaa !1985
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3077
  br label %63, !dbg !3078

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3079
  call void @llvm.dbg.value(metadata i8* %64, metadata !3002, metadata !DIExpression()), !dbg !3050
  store i32 %6, i32* %5, align 4, !dbg !3080, !tbaa !996
  ret i8* %64, !dbg !3081
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i8* %1, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !3088, metadata !DIExpression()), !dbg !3091
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3092
  ret i8* %4, !dbg !3093
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3094 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()) #11, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()) #11, !dbg !3100
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3101
  ret i8* %2, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 0, metadata !3086, metadata !DIExpression()) #11, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()) #11, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()) #11, !dbg !3114
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3115
  ret i8* %3, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3117 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %1, metadata !3122, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %2, metadata !3123, metadata !DIExpression()), !dbg !3127
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #11, !dbg !3136
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3138, !alias.scope !3139
  %6 = icmp eq i32 %1, 10, !dbg !3142
  br i1 %6, label %7, label %8, !dbg !3144

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3145, !noalias !3139
  unreachable, !dbg !3145

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3146
  store i32 %1, i32* %9, align 8, !dbg !3147, !tbaa !1897, !alias.scope !3139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3138
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3148
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3149
  ret i8* %10, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3151 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %3, metadata !3158, metadata !DIExpression()), !dbg !3163
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #11, !dbg !3166
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3168, !alias.scope !3169
  %7 = icmp eq i32 %1, 10, !dbg !3172
  br i1 %7, label %8, label %9, !dbg !3173

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3174, !noalias !3169
  unreachable, !dbg !3174

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3175
  store i32 %1, i32* %10, align 8, !dbg !3176, !tbaa !1897, !alias.scope !3169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3178
  ret i8* %11, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3180 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression()) #11, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %0, metadata !3122, metadata !DIExpression()) #11, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %1, metadata !3123, metadata !DIExpression()) #11, !dbg !3191
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3124, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()) #11, !dbg !3194
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3196, !alias.scope !3197
  %5 = icmp eq i32 %0, 10, !dbg !3200
  br i1 %5, label %6, label %7, !dbg !3201

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3202, !noalias !3197
  unreachable, !dbg !3202

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3203
  store i32 %0, i32* %8, align 8, !dbg !3204, !tbaa !1897, !alias.scope !3197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3124, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3135, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3196
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3205
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3206
  ret i8* %9, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3208 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3212, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !3213, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %2, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 0, metadata !3155, metadata !DIExpression()) #11, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %0, metadata !3156, metadata !DIExpression()) #11, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()) #11, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %2, metadata !3158, metadata !DIExpression()) #11, !dbg !3222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3159, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()) #11, !dbg !3225
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3227, !alias.scope !3228
  %6 = icmp eq i32 %0, 10, !dbg !3231
  br i1 %6, label %7, label %8, !dbg !3232

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3233, !noalias !3228
  unreachable, !dbg !3233

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3234
  store i32 %0, i32* %9, align 8, !dbg !3235, !tbaa !1897, !alias.scope !3228
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3159, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3135, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3227
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3236
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3237
  ret i8* %10, !dbg !3238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3239 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 %2, metadata !3245, metadata !DIExpression()), !dbg !3249
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3251, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3246, metadata !DIExpression(DW_OP_deref)), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1916, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 %2, metadata !1917, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %2, metadata !1919, metadata !DIExpression()), !dbg !3258
  %6 = lshr i8 %2, 5, !dbg !3259
  %7 = zext i8 %6 to i64, !dbg !3259
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3260
  call void @llvm.dbg.value(metadata i32* %8, metadata !1920, metadata !DIExpression()), !dbg !3261
  %9 = and i8 %2, 31, !dbg !3262
  %10 = zext i8 %9 to i32, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %10, metadata !1922, metadata !DIExpression()), !dbg !3263
  %11 = load i32, i32* %8, align 4, !dbg !3264, !tbaa !996
  %12 = lshr i32 %11, %10, !dbg !3265
  %13 = and i32 %12, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %13, metadata !1923, metadata !DIExpression()), !dbg !3267
  %14 = xor i32 %13, 1, !dbg !3268
  %15 = shl i32 %14, %10, !dbg !3269
  %16 = xor i32 %15, %11, !dbg !3270
  store i32 %16, i32* %8, align 4, !dbg !3270, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3246, metadata !DIExpression(DW_OP_deref)), !dbg !3253
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3272
  ret i8* %17, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3274 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %1, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()) #11, !dbg !3282
  call void @llvm.dbg.value(metadata i64 -1, metadata !3244, metadata !DIExpression()) #11, !dbg !3284
  call void @llvm.dbg.value(metadata i8 %1, metadata !3245, metadata !DIExpression()) #11, !dbg !3285
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3287, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1916, metadata !DIExpression()) #11, !dbg !3289
  call void @llvm.dbg.value(metadata i8 %1, metadata !1917, metadata !DIExpression()) #11, !dbg !3291
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()) #11, !dbg !3292
  call void @llvm.dbg.value(metadata i8 %1, metadata !1919, metadata !DIExpression()) #11, !dbg !3293
  %5 = lshr i8 %1, 5, !dbg !3294
  %6 = zext i8 %5 to i64, !dbg !3294
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3295
  call void @llvm.dbg.value(metadata i32* %7, metadata !1920, metadata !DIExpression()) #11, !dbg !3296
  %8 = and i8 %1, 31, !dbg !3297
  %9 = zext i8 %8 to i32, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %9, metadata !1922, metadata !DIExpression()) #11, !dbg !3298
  %10 = load i32, i32* %7, align 4, !dbg !3299, !tbaa !996
  %11 = lshr i32 %10, %9, !dbg !3300
  %12 = and i32 %11, 1, !dbg !3301
  call void @llvm.dbg.value(metadata i32 %12, metadata !1923, metadata !DIExpression()) #11, !dbg !3302
  %13 = xor i32 %12, 1, !dbg !3303
  %14 = shl i32 %13, %9, !dbg !3304
  %15 = xor i32 %14, %10, !dbg !3305
  store i32 %15, i32* %7, align 4, !dbg !3305, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3288
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3306
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3307
  ret i8* %16, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3309 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3278, metadata !DIExpression()) #11, !dbg !3313
  call void @llvm.dbg.value(metadata i8 58, metadata !3279, metadata !DIExpression()) #11, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()) #11, !dbg !3316
  call void @llvm.dbg.value(metadata i64 -1, metadata !3244, metadata !DIExpression()) #11, !dbg !3318
  call void @llvm.dbg.value(metadata i8 58, metadata !3245, metadata !DIExpression()) #11, !dbg !3319
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3321, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3322
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1916, metadata !DIExpression()) #11, !dbg !3323
  call void @llvm.dbg.value(metadata i8 58, metadata !1917, metadata !DIExpression()) #11, !dbg !3325
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()) #11, !dbg !3326
  call void @llvm.dbg.value(metadata i8 58, metadata !1919, metadata !DIExpression()) #11, !dbg !3327
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3328
  call void @llvm.dbg.value(metadata i32* %4, metadata !1920, metadata !DIExpression()) #11, !dbg !3329
  call void @llvm.dbg.value(metadata i32 26, metadata !1922, metadata !DIExpression()) #11, !dbg !3330
  %5 = load i32, i32* %4, align 4, !dbg !3331, !tbaa !996
  %6 = or i32 %5, 67108864, !dbg !3332
  store i32 %6, i32* %4, align 4, !dbg !3332, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3322
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3333
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3334
  ret i8* %7, !dbg !3335
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3336 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %1, metadata !3339, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()) #11, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()) #11, !dbg !3344
  call void @llvm.dbg.value(metadata i8 58, metadata !3245, metadata !DIExpression()) #11, !dbg !3345
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3347, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1916, metadata !DIExpression()) #11, !dbg !3349
  call void @llvm.dbg.value(metadata i8 58, metadata !1917, metadata !DIExpression()) #11, !dbg !3351
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()) #11, !dbg !3352
  call void @llvm.dbg.value(metadata i8 58, metadata !1919, metadata !DIExpression()) #11, !dbg !3353
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3354
  call void @llvm.dbg.value(metadata i32* %5, metadata !1920, metadata !DIExpression()) #11, !dbg !3355
  call void @llvm.dbg.value(metadata i32 26, metadata !1922, metadata !DIExpression()) #11, !dbg !3356
  %6 = load i32, i32* %5, align 4, !dbg !3357, !tbaa !996
  %7 = or i32 %6, 67108864, !dbg !3358
  store i32 %7, i32* %5, align 4, !dbg !3358, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3246, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3348
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3359
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3360
  ret i8* %8, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3362 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %1, metadata !3365, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %2, metadata !3366, metadata !DIExpression()), !dbg !3372
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3373
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3373
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3374
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #11, !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3368
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3368, !alias.scope !3376
  %8 = icmp eq i32 %1, 10, !dbg !3379
  br i1 %8, label %9, label %10, !dbg !3380

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3381, !noalias !3376
  unreachable, !dbg !3381

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3368
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3374
  store i32 %1, i32* %11, align 8, !dbg !3374
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3374
  %13 = bitcast i32* %12 to i8*, !dbg !3374
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3367, metadata !DIExpression(DW_OP_deref)), !dbg !3382
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1916, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !1917, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !1919, metadata !DIExpression()), !dbg !3387
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32* %14, metadata !1920, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 26, metadata !1922, metadata !DIExpression()), !dbg !3390
  %15 = load i32, i32* %14, align 4, !dbg !3391, !tbaa !996
  %16 = or i32 %15, 67108864, !dbg !3392
  store i32 %16, i32* %14, align 4, !dbg !3392, !tbaa !996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3367, metadata !DIExpression(DW_OP_deref)), !dbg !3382
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3393
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3394
  ret i8* %17, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3396 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3401, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %2, metadata !3402, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i8* %3, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()) #11, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %1, metadata !3413, metadata !DIExpression()) #11, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3414, metadata !DIExpression()) #11, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %3, metadata !3415, metadata !DIExpression()) #11, !dbg !3422
  call void @llvm.dbg.value(metadata i64 -1, metadata !3416, metadata !DIExpression()) #11, !dbg !3423
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3424
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3425, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()) #11, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %1, metadata !1965, metadata !DIExpression()) #11, !dbg !3429
  call void @llvm.dbg.value(metadata i8* %2, metadata !1966, metadata !DIExpression()) #11, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()) #11, !dbg !3427
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3431
  store i32 10, i32* %7, align 8, !dbg !3432, !tbaa !1897
  %8 = icmp ne i8* %1, null, !dbg !3433
  %9 = icmp ne i8* %2, null, !dbg !3434
  %10 = and i1 %8, %9, !dbg !3435
  br i1 %10, label %12, label %11, !dbg !3435

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3436
  unreachable, !dbg !3436

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3437
  store i8* %1, i8** %13, align 8, !dbg !3438, !tbaa !1982
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3439
  store i8* %2, i8** %14, align 8, !dbg !3440, !tbaa !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3426
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3442
  ret i8* %15, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3409 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !3413, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %2, metadata !3414, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8* %3, metadata !3415, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %4, metadata !3416, metadata !DIExpression()), !dbg !3448
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3450, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3417, metadata !DIExpression(DW_OP_deref)), !dbg !3451
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1964, metadata !DIExpression()) #11, !dbg !3452
  call void @llvm.dbg.value(metadata i8* %1, metadata !1965, metadata !DIExpression()) #11, !dbg !3454
  call void @llvm.dbg.value(metadata i8* %2, metadata !1966, metadata !DIExpression()) #11, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1964, metadata !DIExpression()) #11, !dbg !3452
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3456
  store i32 10, i32* %8, align 8, !dbg !3457, !tbaa !1897
  %9 = icmp ne i8* %1, null, !dbg !3458
  %10 = icmp ne i8* %2, null, !dbg !3459
  %11 = and i1 %9, %10, !dbg !3460
  br i1 %11, label %13, label %12, !dbg !3460

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3461
  unreachable, !dbg !3461

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3462
  store i8* %1, i8** %14, align 8, !dbg !3463, !tbaa !1982
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3464
  store i8* %2, i8** %15, align 8, !dbg !3465, !tbaa !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3417, metadata !DIExpression(DW_OP_deref)), !dbg !3451
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3466
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3467
  ret i8* %16, !dbg !3468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3469 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %1, metadata !3474, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8* %2, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3400, metadata !DIExpression()) #11, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %0, metadata !3401, metadata !DIExpression()) #11, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %1, metadata !3402, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %2, metadata !3403, metadata !DIExpression()) #11, !dbg !3483
  call void @llvm.dbg.value(metadata i32 0, metadata !3408, metadata !DIExpression()) #11, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %0, metadata !3413, metadata !DIExpression()) #11, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()) #11, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %2, metadata !3415, metadata !DIExpression()) #11, !dbg !3488
  call void @llvm.dbg.value(metadata i64 -1, metadata !3416, metadata !DIExpression()) #11, !dbg !3489
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3491, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1964, metadata !DIExpression()) #11, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !1965, metadata !DIExpression()) #11, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %1, metadata !1966, metadata !DIExpression()) #11, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1964, metadata !DIExpression()) #11, !dbg !3493
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3497
  store i32 10, i32* %6, align 8, !dbg !3498, !tbaa !1897
  %7 = icmp ne i8* %0, null, !dbg !3499
  %8 = icmp ne i8* %1, null, !dbg !3500
  %9 = and i1 %7, %8, !dbg !3501
  br i1 %9, label %11, label %10, !dbg !3501

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3502
  unreachable, !dbg !3502

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3503
  store i8* %0, i8** %12, align 8, !dbg !3504, !tbaa !1982
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3505
  store i8* %1, i8** %13, align 8, !dbg !3506, !tbaa !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3492
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3508
  ret i8* %14, !dbg !3509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3510 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %3, metadata !3517, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i32 0, metadata !3408, metadata !DIExpression()) #11, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %0, metadata !3413, metadata !DIExpression()) #11, !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()) #11, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %2, metadata !3415, metadata !DIExpression()) #11, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %3, metadata !3416, metadata !DIExpression()) #11, !dbg !3527
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3528
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3529, !tbaa.struct !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()) #11, !dbg !3531
  call void @llvm.dbg.value(metadata i8* %0, metadata !1965, metadata !DIExpression()) #11, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %1, metadata !1966, metadata !DIExpression()) #11, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()) #11, !dbg !3531
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3535
  store i32 10, i32* %7, align 8, !dbg !3536, !tbaa !1897
  %8 = icmp ne i8* %0, null, !dbg !3537
  %9 = icmp ne i8* %1, null, !dbg !3538
  %10 = and i1 %8, %9, !dbg !3539
  br i1 %10, label %12, label %11, !dbg !3539

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3540
  unreachable, !dbg !3540

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3541
  store i8* %0, i8** %13, align 8, !dbg !3542, !tbaa !1982
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3543
  store i8* %1, i8** %14, align 8, !dbg !3544, !tbaa !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3530
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3546
  ret i8* %15, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3552, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3553, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %2, metadata !3554, metadata !DIExpression()), !dbg !3557
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3558
  ret i8* %4, !dbg !3559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 0, metadata !3552, metadata !DIExpression()) #11, !dbg !3568
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()) #11, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()) #11, !dbg !3571
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3572
  ret i8* %3, !dbg !3573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !3579, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 %0, metadata !3552, metadata !DIExpression()) #11, !dbg !3582
  call void @llvm.dbg.value(metadata i8* %1, metadata !3553, metadata !DIExpression()) #11, !dbg !3584
  call void @llvm.dbg.value(metadata i64 -1, metadata !3554, metadata !DIExpression()) #11, !dbg !3585
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3586
  ret i8* %3, !dbg !3587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 0, metadata !3578, metadata !DIExpression()) #11, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()) #11, !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3552, metadata !DIExpression()) #11, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()) #11, !dbg !3599
  call void @llvm.dbg.value(metadata i64 -1, metadata !3554, metadata !DIExpression()) #11, !dbg !3600
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3601
  ret i8* %2, !dbg !3602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3603 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3642, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !3643, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %2, metadata !3644, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %3, metadata !3645, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8** %4, metadata !3646, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %5, metadata !3647, metadata !DIExpression()), !dbg !3653
  %7 = icmp eq i8* %1, null, !dbg !3654
  br i1 %7, label %10, label %8, !dbg !3656

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3657
  br label %12, !dbg !3657

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3658
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.119, i64 0, i64 0), i32 5) #11, !dbg !3659
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3659
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.120, i64 0, i64 0), i32 5) #11, !dbg !3660
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3660
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
  ], !dbg !3661

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3662
  unreachable, !dbg !3662

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.121, i64 0, i64 0), i32 5) #11, !dbg !3664
  %20 = load i8*, i8** %4, align 8, !dbg !3664, !tbaa !805
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3664
  br label %146, !dbg !3665

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.122, i64 0, i64 0), i32 5) #11, !dbg !3666
  %24 = load i8*, i8** %4, align 8, !dbg !3666, !tbaa !805
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3666
  %26 = load i8*, i8** %25, align 8, !dbg !3666, !tbaa !805
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3666
  br label %146, !dbg !3667

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.123, i64 0, i64 0), i32 5) #11, !dbg !3668
  %30 = load i8*, i8** %4, align 8, !dbg !3668, !tbaa !805
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3668
  %32 = load i8*, i8** %31, align 8, !dbg !3668, !tbaa !805
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3668
  %34 = load i8*, i8** %33, align 8, !dbg !3668, !tbaa !805
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3668
  br label %146, !dbg !3669

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.124, i64 0, i64 0), i32 5) #11, !dbg !3670
  %38 = load i8*, i8** %4, align 8, !dbg !3670, !tbaa !805
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3670
  %40 = load i8*, i8** %39, align 8, !dbg !3670, !tbaa !805
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3670
  %42 = load i8*, i8** %41, align 8, !dbg !3670, !tbaa !805
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3670
  %44 = load i8*, i8** %43, align 8, !dbg !3670, !tbaa !805
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3670
  br label %146, !dbg !3671

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.125, i64 0, i64 0), i32 5) #11, !dbg !3672
  %48 = load i8*, i8** %4, align 8, !dbg !3672, !tbaa !805
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3672
  %50 = load i8*, i8** %49, align 8, !dbg !3672, !tbaa !805
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3672
  %52 = load i8*, i8** %51, align 8, !dbg !3672, !tbaa !805
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3672
  %54 = load i8*, i8** %53, align 8, !dbg !3672, !tbaa !805
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3672
  %56 = load i8*, i8** %55, align 8, !dbg !3672, !tbaa !805
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3672
  br label %146, !dbg !3673

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.126, i64 0, i64 0), i32 5) #11, !dbg !3674
  %60 = load i8*, i8** %4, align 8, !dbg !3674, !tbaa !805
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3674
  %62 = load i8*, i8** %61, align 8, !dbg !3674, !tbaa !805
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3674
  %64 = load i8*, i8** %63, align 8, !dbg !3674, !tbaa !805
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3674
  %66 = load i8*, i8** %65, align 8, !dbg !3674, !tbaa !805
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3674
  %68 = load i8*, i8** %67, align 8, !dbg !3674, !tbaa !805
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3674
  %70 = load i8*, i8** %69, align 8, !dbg !3674, !tbaa !805
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3674
  br label %146, !dbg !3675

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.127, i64 0, i64 0), i32 5) #11, !dbg !3676
  %74 = load i8*, i8** %4, align 8, !dbg !3676, !tbaa !805
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3676
  %76 = load i8*, i8** %75, align 8, !dbg !3676, !tbaa !805
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3676
  %78 = load i8*, i8** %77, align 8, !dbg !3676, !tbaa !805
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3676
  %80 = load i8*, i8** %79, align 8, !dbg !3676, !tbaa !805
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3676
  %82 = load i8*, i8** %81, align 8, !dbg !3676, !tbaa !805
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3676
  %84 = load i8*, i8** %83, align 8, !dbg !3676, !tbaa !805
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3676
  %86 = load i8*, i8** %85, align 8, !dbg !3676, !tbaa !805
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3676
  br label %146, !dbg !3677

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.128, i64 0, i64 0), i32 5) #11, !dbg !3678
  %90 = load i8*, i8** %4, align 8, !dbg !3678, !tbaa !805
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3678
  %92 = load i8*, i8** %91, align 8, !dbg !3678, !tbaa !805
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3678
  %94 = load i8*, i8** %93, align 8, !dbg !3678, !tbaa !805
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3678
  %96 = load i8*, i8** %95, align 8, !dbg !3678, !tbaa !805
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3678
  %98 = load i8*, i8** %97, align 8, !dbg !3678, !tbaa !805
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3678
  %100 = load i8*, i8** %99, align 8, !dbg !3678, !tbaa !805
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3678
  %102 = load i8*, i8** %101, align 8, !dbg !3678, !tbaa !805
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3678
  %104 = load i8*, i8** %103, align 8, !dbg !3678, !tbaa !805
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3678
  br label %146, !dbg !3679

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.129, i64 0, i64 0), i32 5) #11, !dbg !3680
  %108 = load i8*, i8** %4, align 8, !dbg !3680, !tbaa !805
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3680
  %110 = load i8*, i8** %109, align 8, !dbg !3680, !tbaa !805
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3680
  %112 = load i8*, i8** %111, align 8, !dbg !3680, !tbaa !805
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3680
  %114 = load i8*, i8** %113, align 8, !dbg !3680, !tbaa !805
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3680
  %116 = load i8*, i8** %115, align 8, !dbg !3680, !tbaa !805
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3680
  %118 = load i8*, i8** %117, align 8, !dbg !3680, !tbaa !805
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3680
  %120 = load i8*, i8** %119, align 8, !dbg !3680, !tbaa !805
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3680
  %122 = load i8*, i8** %121, align 8, !dbg !3680, !tbaa !805
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3680
  %124 = load i8*, i8** %123, align 8, !dbg !3680, !tbaa !805
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3680
  br label %146, !dbg !3681

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.130, i64 0, i64 0), i32 5) #11, !dbg !3682
  %128 = load i8*, i8** %4, align 8, !dbg !3682, !tbaa !805
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3682
  %130 = load i8*, i8** %129, align 8, !dbg !3682, !tbaa !805
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3682
  %132 = load i8*, i8** %131, align 8, !dbg !3682, !tbaa !805
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3682
  %134 = load i8*, i8** %133, align 8, !dbg !3682, !tbaa !805
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3682
  %136 = load i8*, i8** %135, align 8, !dbg !3682, !tbaa !805
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3682
  %138 = load i8*, i8** %137, align 8, !dbg !3682, !tbaa !805
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3682
  %140 = load i8*, i8** %139, align 8, !dbg !3682, !tbaa !805
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3682
  %142 = load i8*, i8** %141, align 8, !dbg !3682, !tbaa !805
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3682
  %144 = load i8*, i8** %143, align 8, !dbg !3682, !tbaa !805
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3682
  br label %146, !dbg !3683

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3685 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3689, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i8* %1, metadata !3690, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i8* %2, metadata !3691, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8* %3, metadata !3692, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8** %4, metadata !3693, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 0, metadata !3694, metadata !DIExpression()), !dbg !3700
  br label %6, !dbg !3701

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3705
  %9 = load i8*, i8** %8, align 8, !dbg !3705, !tbaa !805
  %10 = icmp eq i8* %9, null, !dbg !3706
  %11 = add i64 %7, 1, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %11, metadata !3694, metadata !DIExpression()), !dbg !3700
  br i1 %10, label %12, label %6, !dbg !3706, !llvm.loop !3708

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %7, metadata !3694, metadata !DIExpression()), !dbg !3700
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3710
  ret void, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3712 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3723, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3724, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3725, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %3, metadata !3726, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3727, metadata !DIExpression()), !dbg !3735
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3736
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3736
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3729, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 0, metadata !3728, metadata !DIExpression()), !dbg !3738
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3728, metadata !DIExpression()), !dbg !3738
  %11 = load i32, i32* %8, align 8, !dbg !3739
  %12 = icmp ult i32 %11, 41, !dbg !3739
  br i1 %12, label %13, label %18, !dbg !3739

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3739
  %15 = sext i32 %11 to i64, !dbg !3739
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3739
  %17 = add i32 %11, 8, !dbg !3739
  store i32 %17, i32* %8, align 8, !dbg !3739
  br label %21, !dbg !3739

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3739
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3739
  store i8* %20, i8** %10, align 8, !dbg !3739
  br label %21, !dbg !3739

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3739
  %25 = load i8*, i8** %24, align 8, !dbg !3739
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3742
  store i8* %25, i8** %26, align 16, !dbg !3743, !tbaa !805
  %27 = icmp eq i8* %25, null, !dbg !3744
  br i1 %27, label %30, label %28, !dbg !3745

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 1, metadata !3728, metadata !DIExpression()), !dbg !3738
  %29 = icmp ult i32 %22, 41, !dbg !3739
  br i1 %29, label %35, label %32, !dbg !3739

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3746
  call void @llvm.dbg.value(metadata i64 %31, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %31, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3747
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3748
  ret void, !dbg !3748

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3739
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3739
  store i8* %34, i8** %10, align 8, !dbg !3739
  br label %40, !dbg !3739

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3739
  %37 = sext i32 %22 to i64, !dbg !3739
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3739
  %39 = add i32 %22, 8, !dbg !3739
  store i32 %39, i32* %8, align 8, !dbg !3739
  br label %40, !dbg !3739

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3739
  %44 = load i8*, i8** %43, align 8, !dbg !3739
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3742
  store i8* %44, i8** %45, align 8, !dbg !3743, !tbaa !805
  %46 = icmp eq i8* %44, null, !dbg !3744
  br i1 %46, label %30, label %47, !dbg !3745

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 2, metadata !3728, metadata !DIExpression()), !dbg !3738
  %48 = icmp ult i32 %41, 41, !dbg !3739
  br i1 %48, label %52, label %49, !dbg !3739

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3739
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3739
  store i8* %51, i8** %10, align 8, !dbg !3739
  br label %57, !dbg !3739

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3739
  %54 = sext i32 %41 to i64, !dbg !3739
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3739
  %56 = add i32 %41, 8, !dbg !3739
  store i32 %56, i32* %8, align 8, !dbg !3739
  br label %57, !dbg !3739

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3739
  %61 = load i8*, i8** %60, align 8, !dbg !3739
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3742
  store i8* %61, i8** %62, align 16, !dbg !3743, !tbaa !805
  %63 = icmp eq i8* %61, null, !dbg !3744
  br i1 %63, label %30, label %64, !dbg !3745

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 3, metadata !3728, metadata !DIExpression()), !dbg !3738
  %65 = icmp ult i32 %58, 41, !dbg !3739
  br i1 %65, label %69, label %66, !dbg !3739

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3739
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3739
  store i8* %68, i8** %10, align 8, !dbg !3739
  br label %74, !dbg !3739

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3739
  %71 = sext i32 %58 to i64, !dbg !3739
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3739
  %73 = add i32 %58, 8, !dbg !3739
  store i32 %73, i32* %8, align 8, !dbg !3739
  br label %74, !dbg !3739

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3739
  %78 = load i8*, i8** %77, align 8, !dbg !3739
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3742
  store i8* %78, i8** %79, align 8, !dbg !3743, !tbaa !805
  %80 = icmp eq i8* %78, null, !dbg !3744
  br i1 %80, label %30, label %81, !dbg !3745

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 4, metadata !3728, metadata !DIExpression()), !dbg !3738
  %82 = icmp ult i32 %75, 41, !dbg !3739
  br i1 %82, label %86, label %83, !dbg !3739

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3739
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3739
  store i8* %85, i8** %10, align 8, !dbg !3739
  br label %91, !dbg !3739

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3739
  %88 = sext i32 %75 to i64, !dbg !3739
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3739
  %90 = add i32 %75, 8, !dbg !3739
  store i32 %90, i32* %8, align 8, !dbg !3739
  br label %91, !dbg !3739

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3739
  %95 = load i8*, i8** %94, align 8, !dbg !3739
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3742
  store i8* %95, i8** %96, align 16, !dbg !3743, !tbaa !805
  %97 = icmp eq i8* %95, null, !dbg !3744
  br i1 %97, label %30, label %98, !dbg !3745

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 5, metadata !3728, metadata !DIExpression()), !dbg !3738
  %99 = icmp ult i32 %92, 41, !dbg !3739
  br i1 %99, label %103, label %100, !dbg !3739

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3739
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3739
  store i8* %102, i8** %10, align 8, !dbg !3739
  br label %108, !dbg !3739

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3739
  %105 = sext i32 %92 to i64, !dbg !3739
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3739
  %107 = add i32 %92, 8, !dbg !3739
  store i32 %107, i32* %8, align 8, !dbg !3739
  br label %108, !dbg !3739

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3739
  %111 = load i8*, i8** %110, align 8, !dbg !3739
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3742
  store i8* %111, i8** %112, align 8, !dbg !3743, !tbaa !805
  %113 = icmp eq i8* %111, null, !dbg !3744
  br i1 %113, label %30, label %114, !dbg !3745

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 6, metadata !3728, metadata !DIExpression()), !dbg !3738
  %115 = load i8*, i8** %10, align 8, !dbg !3739
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3739
  store i8* %116, i8** %10, align 8, !dbg !3739
  %117 = bitcast i8* %115 to i8**, !dbg !3739
  %118 = load i8*, i8** %117, align 8, !dbg !3739
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3742
  store i8* %118, i8** %119, align 16, !dbg !3743, !tbaa !805
  %120 = icmp eq i8* %118, null, !dbg !3744
  br i1 %120, label %30, label %121, !dbg !3745

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 7, metadata !3728, metadata !DIExpression()), !dbg !3738
  %122 = load i8*, i8** %10, align 8, !dbg !3739
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3739
  store i8* %123, i8** %10, align 8, !dbg !3739
  %124 = bitcast i8* %122 to i8**, !dbg !3739
  %125 = load i8*, i8** %124, align 8, !dbg !3739
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3742
  store i8* %125, i8** %126, align 8, !dbg !3743, !tbaa !805
  %127 = icmp eq i8* %125, null, !dbg !3744
  br i1 %127, label %30, label %128, !dbg !3745

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 8, metadata !3728, metadata !DIExpression()), !dbg !3738
  %129 = load i8*, i8** %10, align 8, !dbg !3739
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3739
  store i8* %130, i8** %10, align 8, !dbg !3739
  %131 = bitcast i8* %129 to i8**, !dbg !3739
  %132 = load i8*, i8** %131, align 8, !dbg !3739
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3742
  store i8* %132, i8** %133, align 16, !dbg !3743, !tbaa !805
  %134 = icmp eq i8* %132, null, !dbg !3744
  br i1 %134, label %30, label %135, !dbg !3745

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3728, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 9, metadata !3728, metadata !DIExpression()), !dbg !3738
  %136 = load i8*, i8** %10, align 8, !dbg !3739
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3739
  store i8* %137, i8** %10, align 8, !dbg !3739
  %138 = bitcast i8* %136 to i8**, !dbg !3739
  %139 = load i8*, i8** %138, align 8, !dbg !3739
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3742
  store i8* %139, i8** %140, align 8, !dbg !3743, !tbaa !805
  %141 = icmp eq i8* %139, null, !dbg !3744
  %142 = select i1 %141, i64 9, i64 10, !dbg !3745
  br label %30, !dbg !3745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3749 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3753, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %2, metadata !3755, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8* %3, metadata !3756, metadata !DIExpression()), !dbg !3767
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3768
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3768
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3757, metadata !DIExpression()), !dbg !3769
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3770
  call void @llvm.va_start(i8* nonnull %6), !dbg !3770
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3771
  call void @llvm.va_end(i8* nonnull %6), !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3773
  ret void, !dbg !3773
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3774 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.133, i64 0, i64 0), i32 5) #11, !dbg !3775
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.134, i64 0, i64 0)) #11, !dbg !3775
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.135, i64 0, i64 0), i32 5) #11, !dbg !3776
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.136, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.137, i64 0, i64 0)) #11, !dbg !3776
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.138, i64 0, i64 0), i32 5) #11, !dbg !3777
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3777, !tbaa !805
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3777
  ret void, !dbg !3778
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3779 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3786
  %3 = udiv i64 9223372036854775807, %1, !dbg !3787
  %4 = icmp ult i64 %3, %0, !dbg !3787
  br i1 %4, label %5, label %6, !dbg !3789

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3790
  unreachable, !dbg !3790

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()) #11, !dbg !3799
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %8, metadata !3798, metadata !DIExpression()) #11, !dbg !3802
  %9 = icmp eq i8* %8, null, !dbg !3803
  %10 = icmp ne i64 %7, 0, !dbg !3805
  %11 = and i1 %10, %9, !dbg !3806
  br i1 %11, label %12, label %13, !dbg !3806

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3807
  unreachable, !dbg !3807

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3808
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3793 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()), !dbg !3809
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %2, metadata !3798, metadata !DIExpression()), !dbg !3811
  %3 = icmp eq i8* %2, null, !dbg !3812
  %4 = icmp ne i64 %0, 0, !dbg !3813
  %5 = and i1 %4, %3, !dbg !3814
  br i1 %5, label %6, label %7, !dbg !3814

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3815
  unreachable, !dbg !3815

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3816
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3822, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %2, metadata !3823, metadata !DIExpression()), !dbg !3826
  %4 = udiv i64 9223372036854775807, %2, !dbg !3827
  %5 = icmp ult i64 %4, %1, !dbg !3827
  br i1 %5, label %6, label %7, !dbg !3829

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3830
  unreachable, !dbg !3830

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %8, metadata !3837, metadata !DIExpression()) #11, !dbg !3840
  %9 = icmp eq i64 %8, 0, !dbg !3841
  %10 = icmp ne i8* %0, null, !dbg !3843
  %11 = and i1 %10, %9, !dbg !3844
  br i1 %11, label %12, label %13, !dbg !3844

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3845
  br label %19, !dbg !3847

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %14, metadata !3832, metadata !DIExpression()) #11, !dbg !3838
  %15 = icmp eq i8* %14, null, !dbg !3849
  %16 = icmp ne i64 %8, 0, !dbg !3851
  %17 = and i1 %16, %15, !dbg !3852
  br i1 %17, label %18, label %19, !dbg !3852

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3853
  unreachable, !dbg !3853

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3854
  ret i8* %20, !dbg !3855
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %1, metadata !3837, metadata !DIExpression()), !dbg !3857
  %3 = icmp eq i64 %1, 0, !dbg !3858
  %4 = icmp ne i8* %0, null, !dbg !3859
  %5 = and i1 %4, %3, !dbg !3860
  br i1 %5, label %6, label %7, !dbg !3860

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3861
  br label %13, !dbg !3862

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %8, metadata !3832, metadata !DIExpression()), !dbg !3856
  %9 = icmp eq i8* %8, null, !dbg !3864
  %10 = icmp ne i64 %1, 0, !dbg !3865
  %11 = and i1 %10, %9, !dbg !3866
  br i1 %11, label %12, label %13, !dbg !3866

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3867
  unreachable, !dbg !3867

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3868
  ret i8* %14, !dbg !3869
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !340, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i64* %1, metadata !341, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 %2, metadata !342, metadata !DIExpression()), !dbg !3872
  %4 = load i64, i64* %1, align 8, !dbg !3873, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 %4, metadata !343, metadata !DIExpression()), !dbg !3874
  %5 = icmp eq i8* %0, null, !dbg !3875
  br i1 %5, label %6, label %20, !dbg !3877

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3878
  br i1 %7, label %8, label %13, !dbg !3881

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %9, metadata !343, metadata !DIExpression()), !dbg !3874
  %10 = icmp ugt i64 %2, 128, !dbg !3884
  %11 = zext i1 %10 to i64, !dbg !3884
  %12 = add nuw nsw i64 %9, %11, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %12, metadata !343, metadata !DIExpression()), !dbg !3874
  br label %13, !dbg !3886

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3887
  call void @llvm.dbg.value(metadata i64 %14, metadata !343, metadata !DIExpression()), !dbg !3874
  %15 = udiv i64 9223372036854775807, %2, !dbg !3888
  %16 = icmp ult i64 %15, %14, !dbg !3888
  br i1 %16, label %19, label %17, !dbg !3890

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !343, metadata !DIExpression()), !dbg !3874
  store i64 %14, i64* %1, align 8, !dbg !3891, !tbaa !1032
  %18 = mul i64 %14, %2, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %28, metadata !3837, metadata !DIExpression()) #11, !dbg !3895
  br label %31, !dbg !3896

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3897
  unreachable, !dbg !3897

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3898
  %22 = icmp ugt i64 %21, %4, !dbg !3901
  br i1 %22, label %24, label %23, !dbg !3902

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3903
  unreachable, !dbg !3903

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3904
  %26 = add i64 %4, 1, !dbg !3905
  %27 = add i64 %26, %25, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %27, metadata !343, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %27, metadata !343, metadata !DIExpression()), !dbg !3874
  store i64 %27, i64* %1, align 8, !dbg !3891, !tbaa !1032
  %28 = mul i64 %27, %2, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %28, metadata !3837, metadata !DIExpression()) #11, !dbg !3895
  %29 = icmp eq i64 %28, 0, !dbg !3907
  br i1 %29, label %30, label %31, !dbg !3896

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3908
  br label %38, !dbg !3909

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %33, metadata !3832, metadata !DIExpression()) #11, !dbg !3893
  %34 = icmp eq i8* %33, null, !dbg !3911
  %35 = icmp ne i64 %32, 0, !dbg !3912
  %36 = and i1 %35, %34, !dbg !3913
  br i1 %36, label %37, label %38, !dbg !3913

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3914
  unreachable, !dbg !3914

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3915
  ret i8* %39, !dbg !3916
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()) #11, !dbg !3921
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %2, metadata !3798, metadata !DIExpression()) #11, !dbg !3924
  %3 = icmp eq i8* %2, null, !dbg !3925
  %4 = icmp ne i64 %0, 0, !dbg !3926
  %5 = and i1 %4, %3, !dbg !3927
  br i1 %5, label %6, label %7, !dbg !3927

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3928
  unreachable, !dbg !3928

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64* %1, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8* %0, metadata !340, metadata !DIExpression()) #11, !dbg !3938
  call void @llvm.dbg.value(metadata i64* %1, metadata !341, metadata !DIExpression()) #11, !dbg !3940
  call void @llvm.dbg.value(metadata i64 1, metadata !342, metadata !DIExpression()) #11, !dbg !3941
  %3 = load i64, i64* %1, align 8, !dbg !3942, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 %3, metadata !343, metadata !DIExpression()) #11, !dbg !3943
  %4 = icmp eq i8* %0, null, !dbg !3944
  br i1 %4, label %5, label %12, !dbg !3945

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3946
  br i1 %6, label %9, label %7, !dbg !3947

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !343, metadata !DIExpression()) #11, !dbg !3943
  %8 = icmp slt i64 %3, 0, !dbg !3948
  br i1 %8, label %11, label %9, !dbg !3949

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !343, metadata !DIExpression()) #11, !dbg !3943
  store i64 %10, i64* %1, align 8, !dbg !3950, !tbaa !1032
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %18, metadata !3837, metadata !DIExpression()) #11, !dbg !3953
  br label %21, !dbg !3954

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3955
  unreachable, !dbg !3955

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3956
  br i1 %13, label %15, label %14, !dbg !3957

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3958
  unreachable, !dbg !3958

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3959
  %17 = add i64 %3, 1, !dbg !3960
  %18 = add i64 %17, %16, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %18, metadata !343, metadata !DIExpression()) #11, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %18, metadata !343, metadata !DIExpression()) #11, !dbg !3943
  store i64 %18, i64* %1, align 8, !dbg !3950, !tbaa !1032
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %18, metadata !3837, metadata !DIExpression()) #11, !dbg !3953
  %19 = icmp eq i64 %18, 0, !dbg !3962
  br i1 %19, label %20, label %21, !dbg !3954

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3963
  br label %28, !dbg !3964

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %23, metadata !3832, metadata !DIExpression()) #11, !dbg !3951
  %24 = icmp eq i8* %23, null, !dbg !3966
  %25 = icmp ne i64 %22, 0, !dbg !3967
  %26 = and i1 %25, %24, !dbg !3968
  br i1 %26, label %27, label %28, !dbg !3968

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3969
  unreachable, !dbg !3969

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3970
  ret i8* %29, !dbg !3971
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()) #11, !dbg !3976
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %2, metadata !3798, metadata !DIExpression()) #11, !dbg !3979
  %3 = icmp eq i8* %2, null, !dbg !3980
  %4 = icmp ne i64 %0, 0, !dbg !3981
  %5 = and i1 %4, %3, !dbg !3982
  br i1 %5, label %6, label %7, !dbg !3982

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3983
  unreachable, !dbg !3983

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3984
  ret i8* %2, !dbg !3985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !3992
  %3 = udiv i64 9223372036854775807, %1, !dbg !3993
  %4 = icmp ult i64 %3, %0, !dbg !3993
  br i1 %4, label %8, label %5, !dbg !3995

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %6, metadata !3990, metadata !DIExpression()), !dbg !3997
  %7 = icmp eq i8* %6, null, !dbg !3998
  br i1 %7, label %8, label %9, !dbg !3999

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4000
  unreachable, !dbg !4000

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4001
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4002 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3792, metadata !DIExpression()) #11, !dbg !4012
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %3, metadata !3798, metadata !DIExpression()) #11, !dbg !4015
  %4 = icmp eq i8* %3, null, !dbg !4016
  %5 = icmp ne i64 %1, 0, !dbg !4017
  %6 = and i1 %5, %4, !dbg !4018
  br i1 %6, label %7, label %8, !dbg !4018

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4019
  unreachable, !dbg !4019

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4020
  ret i8* %3, !dbg !4021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4022 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4024, metadata !DIExpression()), !dbg !4025
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4026
  %3 = add i64 %2, 1, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %0, metadata !4008, metadata !DIExpression()) #11, !dbg !4028
  call void @llvm.dbg.value(metadata i64 %3, metadata !4009, metadata !DIExpression()) #11, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %3, metadata !3792, metadata !DIExpression()) #11, !dbg !4031
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4033
  call void @llvm.dbg.value(metadata i8* %4, metadata !3798, metadata !DIExpression()) #11, !dbg !4034
  %5 = icmp eq i8* %4, null, !dbg !4035
  %6 = icmp ne i64 %3, 0, !dbg !4036
  %7 = and i1 %6, %5, !dbg !4037
  br i1 %7, label %8, label %9, !dbg !4037

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4038
  unreachable, !dbg !4038

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4039
  ret i8* %4, !dbg !4040
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4041 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4043, !tbaa !996
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.149, i64 0, i64 0), i32 5) #11, !dbg !4044
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* %2) #11, !dbg !4045
  tail call void @abort() #15, !dbg !4046
  unreachable, !dbg !4046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4047 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4050, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4057
  %3 = icmp eq i64 %0, 0, !dbg !4058
  %4 = icmp eq i64 %1, 0, !dbg !4059
  %5 = or i1 %3, %4, !dbg !4060
  br i1 %5, label %12, label %6, !dbg !4060

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %7, metadata !4053, metadata !DIExpression()), !dbg !4062
  %8 = udiv i64 %7, %1, !dbg !4063
  %9 = icmp eq i64 %8, %0, !dbg !4065
  br i1 %9, label %12, label %10, !dbg !4066

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4067
  store i32 12, i32* %11, align 4, !dbg !4069, !tbaa !996
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4050, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %13, metadata !4051, metadata !DIExpression()), !dbg !4057
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %15, metadata !4052, metadata !DIExpression()), !dbg !4071
  br label %16, !dbg !4072

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4073
  ret i8* %17, !dbg !4074
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4075 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4114, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4115, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 0, metadata !4117, metadata !DIExpression()), !dbg !4120
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %2, metadata !4116, metadata !DIExpression()), !dbg !4122
  %3 = icmp slt i32 %2, 0, !dbg !4123
  br i1 %3, label %4, label %6, !dbg !4125

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4126
  br label %24, !dbg !4127

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4128
  %8 = icmp eq i32 %7, 0, !dbg !4128
  br i1 %8, label %13, label %9, !dbg !4130

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4131
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4132
  %12 = icmp eq i64 %11, -1, !dbg !4133
  br i1 %12, label %16, label %13, !dbg !4134

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4135
  %15 = icmp eq i32 %14, 0, !dbg !4135
  br i1 %15, label %16, label %18, !dbg !4136

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4115, metadata !DIExpression()), !dbg !4119
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %21, metadata !4117, metadata !DIExpression()), !dbg !4120
  br label %24, !dbg !4138

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4139
  %20 = load i32, i32* %19, align 4, !dbg !4139, !tbaa !996
  call void @llvm.dbg.value(metadata i32 %20, metadata !4115, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 %20, metadata !4115, metadata !DIExpression()), !dbg !4119
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %21, metadata !4117, metadata !DIExpression()), !dbg !4120
  %22 = icmp eq i32 %20, 0, !dbg !4140
  br i1 %22, label %24, label %23, !dbg !4138

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4142, !tbaa !996
  call void @llvm.dbg.value(metadata i32 -1, metadata !4117, metadata !DIExpression()), !dbg !4120
  br label %24, !dbg !4144

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4145
  ret i32 %25, !dbg !4146
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4147 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4186, metadata !DIExpression()), !dbg !4187
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4188
  br i1 %2, label %6, label %3, !dbg !4190

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4191
  %5 = icmp eq i32 %4, 0, !dbg !4191
  br i1 %5, label %6, label %8, !dbg !4192

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4193
  br label %17, !dbg !4194

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4195, metadata !DIExpression()) #11, !dbg !4200
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4202
  %10 = load i32, i32* %9, align 8, !dbg !4202, !tbaa !4204
  %11 = and i32 %10, 256, !dbg !4205
  %12 = icmp eq i32 %11, 0, !dbg !4205
  br i1 %12, label %15, label %13, !dbg !4206

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4207
  br label %15, !dbg !4207

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4208
  br label %17, !dbg !4209

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4210
  ret i32 %18, !dbg !4211
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4212 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4252, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4253, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i32 %2, metadata !4254, metadata !DIExpression()), !dbg !4260
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4261
  %5 = load i8*, i8** %4, align 8, !dbg !4261, !tbaa !4262
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4263
  %7 = load i8*, i8** %6, align 8, !dbg !4263, !tbaa !4264
  %8 = icmp eq i8* %5, %7, !dbg !4265
  br i1 %8, label %9, label %28, !dbg !4266

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4267
  %11 = load i8*, i8** %10, align 8, !dbg !4267, !tbaa !1089
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4268
  %13 = load i8*, i8** %12, align 8, !dbg !4268, !tbaa !4269
  %14 = icmp eq i8* %11, %13, !dbg !4270
  br i1 %14, label %15, label %28, !dbg !4271

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4272
  %17 = load i8*, i8** %16, align 8, !dbg !4272, !tbaa !4273
  %18 = icmp eq i8* %17, null, !dbg !4274
  br i1 %18, label %19, label %28, !dbg !4275

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4276
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4277
  call void @llvm.dbg.value(metadata i64 %21, metadata !4255, metadata !DIExpression()), !dbg !4278
  %22 = icmp eq i64 %21, -1, !dbg !4279
  br i1 %22, label %30, label %23, !dbg !4281

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4282
  %25 = load i32, i32* %24, align 8, !dbg !4283, !tbaa !4204
  %26 = and i32 %25, -17, !dbg !4283
  store i32 %26, i32* %24, align 8, !dbg !4283, !tbaa !4204
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4284
  store i64 %21, i64* %27, align 8, !dbg !4285, !tbaa !4286
  br label %30, !dbg !4287

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4288
  br label %30, !dbg !4289

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4290
  ret i32 %31, !dbg !4291
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4292 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4309, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i8* %1, metadata !4310, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %2, metadata !4311, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4312, metadata !DIExpression()), !dbg !4321
  %6 = bitcast i32* %5 to i8*, !dbg !4322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4322
  %7 = icmp eq i32* %0, null, !dbg !4323
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4325
  call void @llvm.dbg.value(metadata i32* %8, metadata !4309, metadata !DIExpression()), !dbg !4318
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %9, metadata !4313, metadata !DIExpression()), !dbg !4327
  %10 = icmp ugt i64 %9, -3, !dbg !4328
  %11 = icmp ne i64 %2, 0, !dbg !4329
  %12 = and i1 %11, %10, !dbg !4330
  br i1 %12, label %13, label %18, !dbg !4330

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4331
  br i1 %14, label %18, label %15, !dbg !4332

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4333, !tbaa !1094
  call void @llvm.dbg.value(metadata i8 %16, metadata !4315, metadata !DIExpression()), !dbg !4334
  %17 = zext i8 %16 to i32, !dbg !4335
  store i32 %17, i32* %8, align 4, !dbg !4336, !tbaa !996
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4337
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4338
  ret i64 %19, !dbg !4338
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #7 !dbg !4339 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4368, metadata !DIExpression()), !dbg !4371
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %2, metadata !4370, metadata !DIExpression()), !dbg !4373
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %2, metadata !4375, metadata !DIExpression()) #11, !dbg !4380
  call void @llvm.dbg.value(metadata i8* %3, metadata !4378, metadata !DIExpression()) #11, !dbg !4380
  call void @llvm.dbg.value(metadata i64 32, metadata !4379, metadata !DIExpression()) #11, !dbg !4380
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !4382
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !4383
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4384
  store i8 0, i8* %6, align 1, !dbg !4385, !tbaa !1094
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !4386
  %8 = icmp sgt i64 %7, 0, !dbg !4388
  br i1 %8, label %9, label %18, !dbg !4390

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %10, metadata !4369, metadata !DIExpression()), !dbg !4392
  br label %11, !dbg !4393

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %12, metadata !4369, metadata !DIExpression()), !dbg !4392
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4393
  %14 = load i8, i8* %13, align 1, !dbg !4393, !tbaa !1094
  %15 = icmp eq i8 %14, 32, !dbg !4394
  br i1 %15, label %16, label %18, !dbg !4395

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %13, align 1, !dbg !4396, !tbaa !1094
  call void @llvm.dbg.value(metadata i8* %13, metadata !4369, metadata !DIExpression()), !dbg !4392
  %17 = icmp ult i8* %2, %13, !dbg !4388
  br i1 %17, label %11, label %18, !dbg !4390, !llvm.loop !4397

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !4399
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #7 !dbg !4400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4406, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64* %1, metadata !4407, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %3, metadata !4409, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 0, metadata !4410, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 0, metadata !4411, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4412, metadata !DIExpression()), !dbg !4420
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !4421
  tail call void @setutxent() #11, !dbg !4422
  call void @llvm.dbg.value(metadata i64 0, metadata !4410, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4412, metadata !DIExpression()), !dbg !4420
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !4423
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4413, metadata !DIExpression()), !dbg !4424
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4425
  br i1 %7, label %79, label %8, !dbg !4426

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4426

; <label>:13:                                     ; preds = %8, %72
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %77, %72 ]
  %15 = phi i64 [ 0, %8 ], [ %76, %72 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %75, %72 ]
  %17 = phi i8* [ null, %8 ], [ %74, %72 ]
  %18 = phi i64 [ 0, %8 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4410, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4412, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4427, metadata !DIExpression()) #11, !dbg !4434
  call void @llvm.dbg.value(metadata i32 %3, metadata !4432, metadata !DIExpression()) #11, !dbg !4437
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4438
  %20 = load i8, i8* %19, align 4, !dbg !4438, !tbaa !1094
  %21 = icmp eq i8 %20, 0, !dbg !4438
  br i1 %21, label %26, label %22, !dbg !4438

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4438
  %24 = load i16, i16* %23, align 4, !dbg !4438, !tbaa !1098
  %25 = icmp eq i16 %24, 7, !dbg !4438
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ], !dbg !4439
  %28 = or i1 %10, %27, !dbg !4440
  br i1 %28, label %29, label %72, !dbg !4440

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !4442
  %31 = or i1 %12, %30, !dbg !4442
  br i1 %31, label %43, label %32, !dbg !4442

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4444
  %34 = load i32, i32* %33, align 4, !dbg !4444, !tbaa !4445
  %35 = icmp sgt i32 %34, 0, !dbg !4446
  br i1 %35, label %36, label %43, !dbg !4447

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !4448
  %38 = icmp slt i32 %37, 0, !dbg !4449
  br i1 %38, label %39, label %43, !dbg !4450

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !4451
  %41 = load i32, i32* %40, align 4, !dbg !4451, !tbaa !996
  %42 = icmp eq i32 %41, 3, !dbg !4452
  br i1 %42, label %72, label %43, !dbg !4453

; <label>:43:                                     ; preds = %39, %36, %32, %29
  call void @llvm.dbg.value(metadata i64 %18, metadata !4411, metadata !DIExpression()), !dbg !4419
  %44 = icmp eq i64 %15, %18, !dbg !4454
  br i1 %44, label %45, label %64, !dbg !4457

; <label>:45:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %17, metadata !370, metadata !DIExpression()) #11, !dbg !4458
  call void @llvm.dbg.value(metadata i64 384, metadata !372, metadata !DIExpression()) #11, !dbg !4460
  call void @llvm.dbg.value(metadata i64 undef, metadata !373, metadata !DIExpression()) #11, !dbg !4461
  %46 = icmp eq i8* %17, null, !dbg !4462
  br i1 %46, label %47, label %52, !dbg !4464

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !4465
  br i1 %48, label %59, label %49, !dbg !4468

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %18, metadata !373, metadata !DIExpression()) #11, !dbg !4461
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !4469
  br i1 %50, label %51, label %59, !dbg !4471

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !4472
  unreachable, !dbg !4472

; <label>:52:                                     ; preds = %45
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !4473
  br i1 %53, label %55, label %54, !dbg !4476

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !4477
  unreachable, !dbg !4477

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !4478
  %57 = add i64 %15, 1, !dbg !4479
  %58 = add i64 %57, %56, !dbg !4480
  call void @llvm.dbg.value(metadata i64 %58, metadata !373, metadata !DIExpression()) #11, !dbg !4461
  br label %59

; <label>:59:                                     ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !4481
  call void @llvm.dbg.value(metadata i64 %60, metadata !373, metadata !DIExpression()) #11, !dbg !4461
  %61 = mul i64 %60, 384, !dbg !4482
  %62 = tail call i8* @xrealloc(i8* %17, i64 %61) #11, !dbg !4483
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !4484
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !4412, metadata !DIExpression()), !dbg !4420
  br label %64, !dbg !4485

; <label>:64:                                     ; preds = %59, %43
  %65 = phi i64 [ %60, %59 ], [ %18, %43 ], !dbg !4486
  %66 = phi i8* [ %62, %59 ], [ %17, %43 ], !dbg !4486
  %67 = phi %struct.utmpx* [ %63, %59 ], [ %16, %43 ], !dbg !4486
  call void @llvm.dbg.value(metadata %struct.utmpx* %67, metadata !4412, metadata !DIExpression()), !dbg !4420
  %68 = add i64 %15, 1, !dbg !4487
  call void @llvm.dbg.value(metadata i64 %68, metadata !4410, metadata !DIExpression()), !dbg !4418
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %67, i64 %15, !dbg !4488
  %70 = bitcast %struct.utmpx* %69 to i8*, !dbg !4489
  %71 = bitcast %struct.utmpx* %14 to i8*, !dbg !4489
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 384, i1 false), !dbg !4489, !tbaa.struct !4490
  br label %72, !dbg !4491

; <label>:72:                                     ; preds = %39, %26, %64
  %73 = phi i64 [ %65, %64 ], [ %18, %26 ], [ %18, %39 ], !dbg !4486
  %74 = phi i8* [ %66, %64 ], [ %17, %26 ], [ %17, %39 ], !dbg !4486
  %75 = phi %struct.utmpx* [ %67, %64 ], [ %16, %26 ], [ %16, %39 ], !dbg !4486
  %76 = phi i64 [ %68, %64 ], [ %15, %26 ], [ %15, %39 ], !dbg !4486
  call void @llvm.dbg.value(metadata i64 %76, metadata !4410, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !4412, metadata !DIExpression()), !dbg !4420
  %77 = tail call %struct.utmpx* @getutxent() #11, !dbg !4423
  call void @llvm.dbg.value(metadata %struct.utmpx* %77, metadata !4413, metadata !DIExpression()), !dbg !4424
  %78 = icmp eq %struct.utmpx* %77, null, !dbg !4425
  br i1 %78, label %79, label %13, !dbg !4426, !llvm.loop !4492

; <label>:79:                                     ; preds = %72, %4
  %80 = phi i8* [ null, %4 ], [ %74, %72 ], !dbg !4494
  %81 = phi i64 [ 0, %4 ], [ %76, %72 ], !dbg !4495
  call void @llvm.dbg.value(metadata i64 %81, metadata !4410, metadata !DIExpression()), !dbg !4418
  tail call void @endutxent() #11, !dbg !4496
  store i64 %81, i64* %1, align 8, !dbg !4497, !tbaa !1032
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !4498
  store i8* %80, i8** %82, align 8, !dbg !4498, !tbaa !805
  ret i32 0, !dbg !4499
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4500 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4539, metadata !DIExpression()), !dbg !4544
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4545
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4546, metadata !DIExpression()), !dbg !4549
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4551
  %4 = load i32, i32* %3, align 8, !dbg !4551, !tbaa !4204
  %5 = and i32 %4, 32, !dbg !4551
  %6 = icmp eq i32 %5, 0, !dbg !4552
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4553
  %8 = icmp ne i32 %7, 0, !dbg !4554
  br i1 %6, label %9, label %19, !dbg !4555

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4557
  %11 = xor i1 %8, true, !dbg !4558
  %12 = or i1 %10, %11, !dbg !4558
  %13 = sext i1 %8 to i32, !dbg !4558
  br i1 %12, label %22, label %14, !dbg !4558

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4559
  %16 = load i32, i32* %15, align 4, !dbg !4559, !tbaa !996
  %17 = icmp ne i32 %16, 9, !dbg !4560
  %18 = sext i1 %17 to i32, !dbg !4561
  br label %22, !dbg !4561

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4562

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4564
  store i32 0, i32* %21, align 4, !dbg !4566, !tbaa !996
  br label %22, !dbg !4564

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4567
  ret i32 %23, !dbg !4568
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4569 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4573
  call void @llvm.dbg.value(metadata i8* %1, metadata !4572, metadata !DIExpression()), !dbg !4574
  %2 = icmp eq i8* %1, null, !dbg !4575
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8* %1, !dbg !4577
  call void @llvm.dbg.value(metadata i8* %3, metadata !4572, metadata !DIExpression()), !dbg !4574
  %4 = load i8, i8* %3, align 1, !dbg !4578, !tbaa !1094
  %5 = icmp eq i8 %4, 0, !dbg !4582
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.168, i64 0, i64 0), i8* %3, !dbg !4583
  call void @llvm.dbg.value(metadata i8* %6, metadata !4572, metadata !DIExpression()), !dbg !4574
  ret i8* %6, !dbg !4584
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !187, !193, !235, !243, !314, !316, !250, !257, !322, !307, !330, !347, !349, !351, !353, !355, !357, !360, !375, !377}
!llvm.ident = !{!766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766, !766}
!llvm.module.flags = !{!767, !768, !769, !770, !771}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !49)
!3 = !DIFile(filename: "src/pinky.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !24}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 148, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23}
!23 = !DIEnumerator(name: "UT_USER_SIZE", value: 32, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 46, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!27 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!39 = !{!40, !42, !43, !44, !45, !48}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 62, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !{!0, !50, !53, !55, !57, !59, !61, !63, !65, !67, !71, !73, !92, !97}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "do_short_format", scope: !2, file: !3, line: 63, type: !52, isLocal: true, isDefinition: true)
!52 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 47, type: !52, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "include_fullname", scope: !2, file: !3, line: 50, type: !52, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "include_where", scope: !2, file: !3, line: 67, type: !52, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 44, type: !52, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "include_project", scope: !2, file: !3, line: 53, type: !52, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "include_plan", scope: !2, file: !3, line: 56, type: !52, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "include_home_and_shell", scope: !2, file: !3, line: 60, type: !52, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 72, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 73, type: !44, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "now", scope: !75, file: !3, line: 149, type: !78, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 147, type: !76, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !83)
!76 = !DISubroutineType(types: !77)
!77 = !{!69, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 158, baseType: !82)
!81 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!82 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!83 = !{!84, !85, !86, !89, !90}
!84 = !DILocalVariable(name: "when", arg: 1, scope: !75, file: !3, line: 147, type: !78)
!85 = !DILocalVariable(name: "seconds_idle", scope: !75, file: !3, line: 151, type: !78)
!86 = !DILocalVariable(name: "hours", scope: !87, file: !3, line: 161, type: !44)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 160, column: 5)
!88 = distinct !DILexicalBlock(scope: !75, file: !3, line: 159, column: 7)
!89 = !DILocalVariable(name: "minutes", scope: !87, file: !3, line: 162, type: !44)
!90 = !DILocalVariable(name: "days", scope: !91, file: !3, line: 167, type: !47)
!91 = distinct !DILexicalBlock(scope: !88, file: !3, line: 166, column: 5)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "buf", scope: !75, file: !3, line: 150, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 176, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 22)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "buf", scope: !99, file: !3, line: 177, type: !162, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 175, type: !100, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !143)
!100 = !DISubroutineType(types: !101)
!101 = !{!69, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !106, line: 55, size: 3072, elements: !107)
!106 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !110, !112, !116, !120, !121, !125, !130, !132, !137, !139}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !105, file: !106, line: 57, baseType: !109, size: 16)
!109 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !105, file: !106, line: 58, baseType: !111, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !81, line: 152, baseType: !44)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !105, file: !106, line: 59, baseType: !113, size: 256, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !105, file: !106, line: 60, baseType: !117, size: 32, offset: 320)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !105, file: !106, line: 61, baseType: !113, size: 256, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !105, file: !106, line: 62, baseType: !122, size: 2048, offset: 608)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !105, file: !106, line: 63, baseType: !126, size: 32, offset: 2656)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !106, line: 42, size: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !126, file: !106, line: 45, baseType: !109, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !126, file: !106, line: 46, baseType: !109, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !105, file: !106, line: 70, baseType: !131, size: 32, offset: 2688)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !81, line: 40, baseType: !44)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !105, file: !106, line: 75, baseType: !133, size: 64, offset: 2720)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !106, line: 71, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !133, file: !106, line: 73, baseType: !131, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !133, file: !106, line: 74, baseType: !131, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !105, file: !106, line: 80, baseType: !138, size: 128, offset: 2784)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !118)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !105, file: !106, line: 81, baseType: !140, size: 160, offset: 2912)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !99, file: !3, line: 175, type: !102)
!145 = !DILocalVariable(name: "t", scope: !99, file: !3, line: 185, type: !78)
!146 = !DILocalVariable(name: "tmp", scope: !99, file: !3, line: 186, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !149, line: 7, size: 448, elements: !150)
!149 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !148, file: !149, line: 9, baseType: !44, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !148, file: !149, line: 10, baseType: !44, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !148, file: !149, line: 11, baseType: !44, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !148, file: !149, line: 12, baseType: !44, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !148, file: !149, line: 13, baseType: !44, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !148, file: !149, line: 14, baseType: !44, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !148, file: !149, line: 15, baseType: !44, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !148, file: !149, line: 16, baseType: !44, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !148, file: !149, line: 17, baseType: !44, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !148, file: !149, line: 20, baseType: !82, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !148, file: !149, line: 21, baseType: !69, size: 64, offset: 384)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 264, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 33)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 768, elements: !175)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !168, line: 50, size: 256, elements: !169)
!168 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{!170, !171, !172, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 52, baseType: !69, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !167, file: !168, line: 55, baseType: !44, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !167, file: !168, line: 56, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !168, line: 57, baseType: !44, size: 32, offset: 192)
!175 = !{!176}
!176 = !DISubrange(count: 3)
!177 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!178 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!179 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!180 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!181 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!182 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!183 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!184 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !69, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "last_cherror", scope: !193, file: !199, line: 28, type: !44, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !195)
!194 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = !{!196, !191}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "hints", scope: !198, file: !199, line: 63, type: !208, isLocal: true, isDefinition: true)
!198 = distinct !DISubprogram(name: "canon_host_r", scope: !199, file: !199, line: 60, type: !200, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !202)
!199 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = !DISubroutineType(types: !201)
!201 = !{!40, !69, !173}
!202 = !{!203, !204, !205, !206, !232}
!203 = !DILocalVariable(name: "host", arg: 1, scope: !198, file: !199, line: 60, type: !69)
!204 = !DILocalVariable(name: "cherror", arg: 2, scope: !198, file: !199, line: 60, type: !173)
!205 = !DILocalVariable(name: "retval", scope: !198, file: !199, line: 62, type: !40)
!206 = !DILocalVariable(name: "res", scope: !198, file: !199, line: 64, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !209, line: 565, size: 384, elements: !210)
!209 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = !{!211, !212, !213, !214, !215, !219, !230, !231}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !208, file: !209, line: 567, baseType: !44, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !208, file: !209, line: 568, baseType: !44, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !208, file: !209, line: 569, baseType: !44, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !208, file: !209, line: 570, baseType: !44, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !208, file: !209, line: 571, baseType: !216, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !217, line: 33, baseType: !218)
!217 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !81, line: 207, baseType: !7)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !208, file: !209, line: 572, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !217, line: 175, size: 128, elements: !222)
!222 = !{!223, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !221, file: !217, line: 177, baseType: !224, size: 16)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !225, line: 28, baseType: !48)
!225 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !221, file: !217, line: 178, baseType: !227, size: 112, offset: 16)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 112, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 14)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !208, file: !209, line: 573, baseType: !40, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !208, file: !209, line: 574, baseType: !207, size: 64, offset: 320)
!232 = !DILocalVariable(name: "status", scope: !198, file: !199, line: 65, type: !44)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "file_name", scope: !235, file: !240, line: 46, type: !69, isLocal: true, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !237)
!236 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!237 = !{!233, !238}
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !235, file: !240, line: 56, type: !52, isLocal: true, isDefinition: true)
!240 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "exit_failure", scope: !243, file: !246, line: 24, type: !247, isLocal: false, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !245)
!244 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = !{!241}
!246 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "program_name", scope: !250, file: !254, line: 33, type: !69, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !252, globals: !253)
!251 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !{!42, !40}
!253 = !{!248}
!254 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !257, file: !269, line: 85, type: !301, isLocal: false, isDefinition: true)
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !265, globals: !266)
!258 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!259 = !{!5, !260, !24}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!263 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!264 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!265 = !{!44, !48, !45, !40}
!266 = !{!255, !267, !274, !286, !288, !290, !297, !299}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !257, file: !269, line: 101, type: !270, isLocal: false, isDefinition: true)
!269 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 320, elements: !272)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!272 = !{!273}
!273 = !DISubrange(count: 10)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !257, file: !269, line: 1052, type: !276, isLocal: false, isDefinition: true)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !269, line: 65, size: 448, elements: !277)
!277 = !{!278, !279, !280, !284, !285}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !276, file: !269, line: 68, baseType: !5, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !269, line: 71, baseType: !44, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !276, file: !269, line: 75, baseType: !281, size: 256, offset: 64)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !276, file: !269, line: 78, baseType: !69, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !276, file: !269, line: 81, baseType: !69, size: 64, offset: 384)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !257, file: !269, line: 116, type: !276, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "slot0", scope: !257, file: !269, line: 842, type: !122, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "slotvec", scope: !257, file: !269, line: 845, type: !292, isLocal: true, isDefinition: true)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !269, line: 834, size: 128, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !269, line: 836, baseType: !45, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !293, file: !269, line: 837, baseType: !40, size: 64, offset: 64)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "nslots", scope: !257, file: !269, line: 843, type: !44, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "slotvec0", scope: !257, file: !269, line: 844, type: !293, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 704, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!303 = !{!304}
!304 = !DISubrange(count: 11)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !307, file: !310, line: 26, type: !311, isLocal: false, isDefinition: true)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !309)
!308 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!309 = !{!305}
!310 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 376, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 47)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!315 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !318)
!317 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !320, line: 101, baseType: !321)
!320 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !81, line: 71, baseType: !82)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !324, retainedTypes: !329)
!323 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!324 = !{!325}
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 41, baseType: !7, size: 32, elements: !327)
!326 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!327 = !{!328}
!328 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!329 = !{!42}
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !332, retainedTypes: !346)
!331 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!332 = !{!333}
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !335, file: !334, line: 186, baseType: !7, size: 32, elements: !344)
!334 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!335 = distinct !DISubprogram(name: "x2nrealloc", scope: !334, file: !334, line: 174, type: !336, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !339)
!336 = !DISubroutineType(types: !337)
!337 = !{!42, !42, !338, !45}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!339 = !{!340, !341, !342, !343}
!340 = !DILocalVariable(name: "p", arg: 1, scope: !335, file: !334, line: 174, type: !42)
!341 = !DILocalVariable(name: "pn", arg: 2, scope: !335, file: !334, line: 174, type: !338)
!342 = !DILocalVariable(name: "s", arg: 3, scope: !335, file: !334, line: 174, type: !45)
!343 = !DILocalVariable(name: "n", scope: !335, file: !334, line: 176, type: !45)
!344 = !{!345}
!345 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!346 = !{!45, !40, !42}
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!348 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !329)
!350 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!352 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !329)
!354 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !329)
!356 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !359)
!358 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!359 = !{!45}
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !374)
!361 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!362 = !{!363, !367}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 208, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366}
!365 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!366 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !368, file: !334, line: 186, baseType: !7, size: 32, elements: !344)
!368 = distinct !DISubprogram(name: "x2nrealloc", scope: !334, file: !334, line: 174, type: !336, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !369)
!369 = !{!370, !371, !372, !373}
!370 = !DILocalVariable(name: "p", arg: 1, scope: !368, file: !334, line: 174, type: !42)
!371 = !DILocalVariable(name: "pn", arg: 2, scope: !368, file: !334, line: 174, type: !338)
!372 = !DILocalVariable(name: "s", arg: 3, scope: !368, file: !334, line: 174, type: !45)
!373 = !DILocalVariable(name: "n", scope: !368, file: !334, line: 176, type: !45)
!374 = !{!40, !42, !45}
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!376 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !379, retainedTypes: !329)
!378 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!379 = !{!380}
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !381, line: 41, baseType: !7, size: 32, elements: !382)
!381 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!383 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!384 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!385 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!386 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!387 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!388 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!389 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!390 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!391 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!392 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!393 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!394 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!395 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!396 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!397 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!398 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!399 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!400 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!401 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!402 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!403 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!404 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!405 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!406 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!407 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!408 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!409 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!410 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!411 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!412 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!413 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!414 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!415 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!416 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!417 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!418 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!419 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!420 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!421 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!422 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!423 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!424 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!425 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!426 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!427 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!428 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!429 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!430 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!431 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!432 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!491 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!494 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!495 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!496 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!497 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!498 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!499 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!500 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!501 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!502 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!503 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!504 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!505 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!651 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!652 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!653 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!654 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!655 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!656 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!657 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!658 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!659 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!660 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!661 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!662 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!663 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!664 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!665 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!667 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!668 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!669 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!670 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!671 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!672 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!698 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!699 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!700 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!701 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!702 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!707 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!708 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!709 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!710 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!766 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!767 = !{i32 2, !"Dwarf Version", i32 4}
!768 = !{i32 2, !"Debug Info Version", i32 3}
!769 = !{i32 1, !"wchar_size", i32 4}
!770 = !{i32 7, !"PIC Level", i32 2}
!771 = !{i32 7, !"PIE Level", i32 2}
!772 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 483, type: !773, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !44}
!775 = !{!776}
!776 = !DILocalVariable(name: "status", arg: 1, scope: !772, file: !3, line: 483, type: !44)
!777 = !DILocalVariable(name: "infomap", scope: !778, file: !779, line: 632, type: !793)
!778 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !779, file: !779, line: 630, type: !780, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !782)
!779 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!780 = !DISubroutineType(types: !781)
!781 = !{null, !69}
!782 = !{!783, !777, !784, !785, !792}
!783 = !DILocalVariable(name: "program", arg: 1, scope: !778, file: !779, line: 630, type: !69)
!784 = !DILocalVariable(name: "node", scope: !778, file: !779, line: 642, type: !69)
!785 = !DILocalVariable(name: "map_prog", scope: !778, file: !779, line: 643, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !778, file: !779, line: 632, size: 128, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !788, file: !779, line: 632, baseType: !69, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !788, file: !779, line: 632, baseType: !69, size: 64, offset: 64)
!792 = !DILocalVariable(name: "lc_messages", scope: !778, file: !779, line: 655, type: !69)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 896, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 7)
!796 = !DILocation(line: 632, column: 67, scope: !778, inlinedAt: !797)
!797 = distinct !DILocation(line: 512, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 488, column: 5)
!799 = distinct !DILexicalBlock(scope: !772, file: !3, line: 485, column: 7)
!800 = !DILocation(line: 483, column: 12, scope: !772)
!801 = !DILocation(line: 485, column: 14, scope: !799)
!802 = !DILocation(line: 485, column: 7, scope: !772)
!803 = !DILocation(line: 486, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !3, line: 486, column: 5)
!805 = !{!806, !806, i64 0}
!806 = !{!"any pointer", !807, i64 0}
!807 = !{!"omnipotent char", !808, i64 0}
!808 = !{!"Simple C/C++ TBAA"}
!809 = !DILocation(line: 489, column: 7, scope: !798)
!810 = !DILocation(line: 490, column: 7, scope: !798)
!811 = !DILocation(line: 498, column: 7, scope: !798)
!812 = !DILocation(line: 505, column: 7, scope: !798)
!813 = !DILocation(line: 506, column: 7, scope: !798)
!814 = !DILocation(line: 507, column: 7, scope: !798)
!815 = !DILocation(line: 632, column: 3, scope: !778, inlinedAt: !797)
!816 = !DILocation(line: 643, column: 36, scope: !778, inlinedAt: !797)
!817 = !DILocation(line: 643, column: 25, scope: !778, inlinedAt: !797)
!818 = !DILocation(line: 645, column: 33, scope: !778, inlinedAt: !797)
!819 = !DILocation(line: 645, column: 3, scope: !778, inlinedAt: !797)
!820 = !DILocation(line: 646, column: 13, scope: !778, inlinedAt: !797)
!821 = !DILocation(line: 645, column: 20, scope: !778, inlinedAt: !797)
!822 = !{!823, !806, i64 0}
!823 = !{!"infomap", !806, i64 0, !806, i64 8}
!824 = !DILocation(line: 645, column: 10, scope: !778, inlinedAt: !797)
!825 = !DILocation(line: 645, column: 28, scope: !778, inlinedAt: !797)
!826 = distinct !{!826, !827, !828}
!827 = !DILocation(line: 645, column: 3, scope: !778)
!828 = !DILocation(line: 646, column: 13, scope: !778)
!829 = !DILocation(line: 648, column: 17, scope: !830, inlinedAt: !797)
!830 = distinct !DILexicalBlock(scope: !778, file: !779, line: 648, column: 7)
!831 = !{!823, !806, i64 8}
!832 = !DILocation(line: 648, column: 7, scope: !830, inlinedAt: !797)
!833 = !DILocation(line: 648, column: 7, scope: !778, inlinedAt: !797)
!834 = !DILocation(line: 642, column: 15, scope: !778, inlinedAt: !797)
!835 = !DILocation(line: 651, column: 3, scope: !778, inlinedAt: !797)
!836 = !DILocation(line: 655, column: 29, scope: !778, inlinedAt: !797)
!837 = !DILocation(line: 655, column: 15, scope: !778, inlinedAt: !797)
!838 = !DILocation(line: 656, column: 7, scope: !839, inlinedAt: !797)
!839 = distinct !DILexicalBlock(scope: !778, file: !779, line: 656, column: 7)
!840 = !DILocation(line: 656, column: 19, scope: !839, inlinedAt: !797)
!841 = !DILocation(line: 656, column: 22, scope: !839, inlinedAt: !797)
!842 = !DILocation(line: 656, column: 7, scope: !778, inlinedAt: !797)
!843 = !DILocation(line: 662, column: 7, scope: !844, inlinedAt: !797)
!844 = distinct !DILexicalBlock(scope: !839, file: !779, line: 657, column: 5)
!845 = !DILocation(line: 664, column: 5, scope: !844, inlinedAt: !797)
!846 = !DILocation(line: 665, column: 3, scope: !778, inlinedAt: !797)
!847 = !DILocation(line: 667, column: 3, scope: !778, inlinedAt: !797)
!848 = !DILocation(line: 669, column: 1, scope: !778, inlinedAt: !797)
!849 = !DILocation(line: 514, column: 3, scope: !772)
!850 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 518, type: !851, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !854)
!851 = !DISubroutineType(types: !852)
!852 = !{!44, !44, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!854 = !{!855, !856, !857, !858}
!855 = !DILocalVariable(name: "argc", arg: 1, scope: !850, file: !3, line: 518, type: !44)
!856 = !DILocalVariable(name: "argv", arg: 2, scope: !850, file: !3, line: 518, type: !853)
!857 = !DILocalVariable(name: "optc", scope: !850, file: !3, line: 520, type: !44)
!858 = !DILocalVariable(name: "n_users", scope: !850, file: !3, line: 521, type: !44)
!859 = !DILocalVariable(name: "buf", scope: !860, file: !3, line: 350, type: !944)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 348, column: 5)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 347, column: 7)
!862 = distinct !DISubprogram(name: "print_long_entry", scope: !3, file: !3, line: 307, type: !780, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !863)
!863 = !{!864, !865, !879, !883, !884, !859, !935, !936, !937, !940, !943, !947, !948, !949}
!864 = !DILocalVariable(name: "name", arg: 1, scope: !862, file: !3, line: 307, type: !69)
!865 = !DILocalVariable(name: "pw", scope: !862, file: !3, line: 309, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !868, line: 49, size: 384, elements: !869)
!868 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!869 = !{!870, !871, !872, !874, !876, !877, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !867, file: !868, line: 51, baseType: !40, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !867, file: !868, line: 52, baseType: !40, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !867, file: !868, line: 54, baseType: !873, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !81, line: 144, baseType: !7)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !867, file: !868, line: 55, baseType: !875, size: 32, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !81, line: 145, baseType: !7)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !867, file: !868, line: 56, baseType: !40, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !867, file: !868, line: 57, baseType: !40, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !867, file: !868, line: 58, baseType: !40, size: 64, offset: 320)
!879 = !DILocalVariable(name: "comma", scope: !880, file: !3, line: 325, type: !882)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 324, column: 5)
!881 = distinct !DILexicalBlock(scope: !862, file: !3, line: 317, column: 7)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!883 = !DILocalVariable(name: "result", scope: !880, file: !3, line: 326, type: !40)
!884 = !DILocalVariable(name: "stream", scope: !860, file: !3, line: 349, type: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !888)
!887 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !890)
!889 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !906, !908, !909, !910, !912, !913, !915, !919, !922, !924, !927, !930, !931, !932, !933, !934}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !888, file: !889, line: 51, baseType: !44, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !888, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !888, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !888, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !888, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !888, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !888, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !888, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !888, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !888, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !888, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !888, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !888, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !889, line: 36, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !888, file: !889, line: 70, baseType: !907, size: 64, offset: 832)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !888, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !888, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !888, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 150, baseType: !82)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !888, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !888, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!914 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !888, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 1)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !888, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !889, line: 43, baseType: null)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !888, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 151, baseType: !82)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !888, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !889, line: 37, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !888, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !889, line: 38, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !888, file: !889, line: 93, baseType: !907, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !888, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !888, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !888, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !888, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!935 = !DILocalVariable(name: "baseproject", scope: !860, file: !3, line: 351, type: !302)
!936 = !DILocalVariable(name: "project", scope: !860, file: !3, line: 352, type: !882)
!937 = !DILocalVariable(name: "bytes", scope: !938, file: !3, line: 359, type: !45)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 358, column: 9)
!939 = distinct !DILexicalBlock(scope: !860, file: !3, line: 357, column: 11)
!940 = !DILocalVariable(name: "stream", scope: !941, file: !3, line: 373, type: !885)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 372, column: 5)
!942 = distinct !DILexicalBlock(scope: !862, file: !3, line: 371, column: 7)
!943 = !DILocalVariable(name: "buf", scope: !941, file: !3, line: 374, type: !944)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 1024)
!947 = !DILocalVariable(name: "baseplan", scope: !941, file: !3, line: 375, type: !302)
!948 = !DILocalVariable(name: "plan", scope: !941, file: !3, line: 376, type: !882)
!949 = !DILocalVariable(name: "bytes", scope: !950, file: !3, line: 383, type: !45)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 382, column: 9)
!951 = distinct !DILexicalBlock(scope: !941, file: !3, line: 381, column: 11)
!952 = !DILocation(line: 350, column: 12, scope: !860, inlinedAt: !953)
!953 = distinct !DILocation(line: 479, column: 5, scope: !954, inlinedAt: !965)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 478, column: 3)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 478, column: 3)
!956 = distinct !DISubprogram(name: "long_pinky", scope: !3, file: !3, line: 476, type: !957, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !961)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !959, !960}
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "argc_names", arg: 1, scope: !956, file: !3, line: 476, type: !959)
!963 = !DILocalVariable(name: "argv_names", arg: 2, scope: !956, file: !3, line: 476, type: !960)
!964 = !DILocalVariable(name: "i", scope: !955, file: !3, line: 478, type: !44)
!965 = distinct !DILocation(line: 599, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !850, file: !3, line: 596, column: 7)
!967 = !DILocation(line: 374, column: 12, scope: !941, inlinedAt: !953)
!968 = !DILocation(line: 518, column: 11, scope: !850)
!969 = !DILocation(line: 518, column: 24, scope: !850)
!970 = !DILocation(line: 524, column: 21, scope: !850)
!971 = !DILocation(line: 524, column: 3, scope: !850)
!972 = !DILocation(line: 525, column: 3, scope: !850)
!973 = !DILocation(line: 526, column: 3, scope: !850)
!974 = !DILocation(line: 527, column: 3, scope: !850)
!975 = !DILocation(line: 529, column: 3, scope: !850)
!976 = !DILocation(line: 531, column: 3, scope: !850)
!977 = !DILocation(line: 531, column: 18, scope: !850)
!978 = !DILocation(line: 520, column: 7, scope: !850)
!979 = !DILocation(line: 537, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 534, column: 9)
!981 = distinct !DILexicalBlock(scope: !850, file: !3, line: 532, column: 5)
!982 = !DILocation(line: 541, column: 11, scope: !980)
!983 = !DILocation(line: 545, column: 11, scope: !980)
!984 = !DILocation(line: 549, column: 11, scope: !980)
!985 = !DILocation(line: 556, column: 11, scope: !980)
!986 = !DILocation(line: 564, column: 11, scope: !980)
!987 = !DILocation(line: 568, column: 11, scope: !980)
!988 = !DILocation(line: 572, column: 11, scope: !980)
!989 = !DILocation(line: 576, column: 11, scope: !980)
!990 = distinct !{!990, !976, !991}
!991 = !DILocation(line: 585, column: 5, scope: !850)
!992 = !DILocation(line: 578, column: 9, scope: !980)
!993 = !DILocation(line: 580, column: 9, scope: !980)
!994 = !DILocation(line: 583, column: 11, scope: !980)
!995 = !DILocation(line: 587, column: 20, scope: !850)
!996 = !{!997, !997, i64 0}
!997 = !{!"int", !807, i64 0}
!998 = !DILocation(line: 587, column: 18, scope: !850)
!999 = !DILocation(line: 521, column: 7, scope: !850)
!1000 = !DILocation(line: 589, column: 35, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !850, file: !3, line: 589, column: 7)
!1002 = !DILocation(line: 589, column: 24, scope: !1001)
!1003 = !DILocation(line: 591, column: 20, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 590, column: 5)
!1005 = !DILocation(line: 591, column: 7, scope: !1004)
!1006 = !DILocation(line: 593, column: 7, scope: !1004)
!1007 = !DILocation(line: 0, scope: !966)
!1008 = !DILocation(line: 596, column: 7, scope: !850)
!1009 = !DILocalVariable(name: "argc_names", arg: 2, scope: !1010, file: !3, line: 462, type: !959)
!1010 = distinct !DISubprogram(name: "short_pinky", scope: !3, file: !3, line: 461, type: !1011, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !69, !959, !960}
!1013 = !{!1014, !1009, !1015, !1016, !1017}
!1014 = !DILocalVariable(name: "filename", arg: 1, scope: !1010, file: !3, line: 461, type: !69)
!1015 = !DILocalVariable(name: "argv_names", arg: 3, scope: !1010, file: !3, line: 462, type: !960)
!1016 = !DILocalVariable(name: "n_users", scope: !1010, file: !3, line: 464, type: !45)
!1017 = !DILocalVariable(name: "utmp_buf", scope: !1010, file: !3, line: 465, type: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!1019 = !DILocation(line: 462, column: 24, scope: !1010, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 597, column: 5, scope: !966)
!1021 = !DILocation(line: 462, column: 48, scope: !1010, inlinedAt: !1020)
!1022 = !DILocation(line: 464, column: 3, scope: !1010, inlinedAt: !1020)
!1023 = !DILocation(line: 465, column: 3, scope: !1010, inlinedAt: !1020)
!1024 = !DILocation(line: 465, column: 16, scope: !1010, inlinedAt: !1020)
!1025 = !DILocation(line: 464, column: 10, scope: !1010, inlinedAt: !1020)
!1026 = !DILocation(line: 467, column: 7, scope: !1027, inlinedAt: !1020)
!1027 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 467, column: 7)
!1028 = !DILocation(line: 467, column: 52, scope: !1027, inlinedAt: !1020)
!1029 = !DILocation(line: 467, column: 7, scope: !1010, inlinedAt: !1020)
!1030 = !DILocation(line: 468, column: 5, scope: !1027, inlinedAt: !1020)
!1031 = !DILocation(line: 470, column: 17, scope: !1010, inlinedAt: !1020)
!1032 = !{!1033, !1033, i64 0}
!1033 = !{!"long", !807, i64 0}
!1034 = !DILocation(line: 470, column: 26, scope: !1010, inlinedAt: !1020)
!1035 = !DILocalVariable(name: "n", arg: 1, scope: !1036, file: !3, line: 421, type: !45)
!1036 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 421, type: !1037, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !45, !102, !959, !960}
!1039 = !{!1035, !1040, !1041, !1042, !1043}
!1040 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1036, file: !3, line: 421, type: !102)
!1041 = !DILocalVariable(name: "argc_names", arg: 3, scope: !1036, file: !3, line: 422, type: !959)
!1042 = !DILocalVariable(name: "argv_names", arg: 4, scope: !1036, file: !3, line: 422, type: !960)
!1043 = !DILocalVariable(name: "i", scope: !1044, file: !3, line: 444, type: !44)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 444, column: 15)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 443, column: 13)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 442, column: 15)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 441, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 440, column: 11)
!1049 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 439, column: 5)
!1050 = !DILocation(line: 421, column: 22, scope: !1036, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 470, column: 3, scope: !1010, inlinedAt: !1020)
!1052 = !DILocation(line: 421, column: 44, scope: !1036, inlinedAt: !1051)
!1053 = !DILocation(line: 422, column: 25, scope: !1036, inlinedAt: !1051)
!1054 = !DILocation(line: 422, column: 49, scope: !1036, inlinedAt: !1051)
!1055 = !DILocation(line: 424, column: 7, scope: !1056, inlinedAt: !1051)
!1056 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 424, column: 7)
!1057 = !DILocation(line: 428, column: 5, scope: !1058, inlinedAt: !1051)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 425, column: 5)
!1059 = !DILocation(line: 0, scope: !1060, inlinedAt: !1051)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 430, column: 5)
!1061 = !DILocation(line: 0, scope: !1058, inlinedAt: !1051)
!1062 = !DILocation(line: 435, column: 7, scope: !1036, inlinedAt: !1051)
!1063 = !DILocation(line: 404, column: 3, scope: !1064, inlinedAt: !1067)
!1064 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 402, type: !1065, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !189)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null}
!1067 = distinct !DILocation(line: 436, column: 5, scope: !1068, inlinedAt: !1051)
!1068 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 435, column: 7)
!1069 = !DILocation(line: 405, column: 7, scope: !1064, inlinedAt: !1067)
!1070 = !DILocation(line: 406, column: 5, scope: !1071, inlinedAt: !1067)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 405, column: 7)
!1072 = !DILocation(line: 407, column: 3, scope: !1064, inlinedAt: !1067)
!1073 = !DILocation(line: 408, column: 7, scope: !1064, inlinedAt: !1067)
!1074 = !DILocation(line: 409, column: 5, scope: !1075, inlinedAt: !1067)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 408, column: 7)
!1076 = !DILocation(line: 410, column: 3, scope: !1064, inlinedAt: !1067)
!1077 = !DILocation(line: 412, column: 7, scope: !1064, inlinedAt: !1067)
!1078 = !DILocation(line: 413, column: 5, scope: !1079, inlinedAt: !1067)
!1079 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 412, column: 7)
!1080 = !DILocalVariable(name: "__c", arg: 1, scope: !1081, file: !1082, line: 108, type: !44)
!1081 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1082, file: !1082, line: 108, type: !1083, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1085)
!1082 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!44, !44}
!1085 = !{!1080}
!1086 = !DILocation(line: 108, column: 23, scope: !1081, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 415, column: 3, scope: !1064, inlinedAt: !1067)
!1088 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1087)
!1089 = !{!1090, !806, i64 40}
!1090 = !{!"_IO_FILE", !997, i64 0, !806, i64 8, !806, i64 16, !806, i64 24, !806, i64 32, !806, i64 40, !806, i64 48, !806, i64 56, !806, i64 64, !806, i64 72, !806, i64 80, !806, i64 88, !806, i64 96, !806, i64 104, !997, i64 112, !997, i64 116, !1033, i64 120, !1091, i64 128, !807, i64 130, !807, i64 131, !806, i64 136, !1033, i64 144, !806, i64 152, !806, i64 160, !806, i64 168, !806, i64 176, !1033, i64 184, !997, i64 192, !807, i64 196}
!1091 = !{!"short", !807, i64 0}
!1092 = !{!1090, !806, i64 48}
!1093 = !{!"branch_weights", i32 2000, i32 1}
!1094 = !{!807, !807, i64 0}
!1095 = !DILocation(line: 438, column: 3, scope: !1036, inlinedAt: !1051)
!1096 = !DILocation(line: 438, column: 11, scope: !1036, inlinedAt: !1051)
!1097 = !DILocation(line: 440, column: 11, scope: !1048, inlinedAt: !1051)
!1098 = !{!1099, !1091, i64 0}
!1099 = !{!"utmpx", !1091, i64 0, !997, i64 4, !807, i64 8, !807, i64 40, !807, i64 44, !807, i64 76, !1100, i64 332, !997, i64 336, !1101, i64 340, !807, i64 348, !807, i64 364}
!1100 = !{!"__exit_status", !1091, i64 0, !1091, i64 2}
!1101 = !{!"", !997, i64 0, !997, i64 4}
!1102 = !DILocation(line: 440, column: 11, scope: !1049, inlinedAt: !1051)
!1103 = !DILocation(line: 442, column: 15, scope: !1047, inlinedAt: !1051)
!1104 = !DILocation(line: 444, column: 24, scope: !1044, inlinedAt: !1051)
!1105 = !DILocation(line: 444, column: 15, scope: !1044, inlinedAt: !1051)
!1106 = !DILocation(line: 444, column: 33, scope: !1107, inlinedAt: !1051)
!1107 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 444, column: 15)
!1108 = distinct !{!1108, !1109, !1110}
!1109 = !DILocation(line: 444, column: 15, scope: !1044)
!1110 = !DILocation(line: 449, column: 19, scope: !1044)
!1111 = !DILocation(line: 445, column: 21, scope: !1112, inlinedAt: !1051)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 445, column: 21)
!1113 = !DILocation(line: 444, column: 48, scope: !1107, inlinedAt: !1051)
!1114 = !DILocation(line: 445, column: 21, scope: !1107, inlinedAt: !1051)
!1115 = !DILocation(line: 447, column: 21, scope: !1116, inlinedAt: !1051)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 446, column: 19)
!1117 = !DILocation(line: 448, column: 21, scope: !1116, inlinedAt: !1051)
!1118 = !DILocation(line: 452, column: 13, scope: !1046, inlinedAt: !1051)
!1119 = !DILocation(line: 454, column: 15, scope: !1049, inlinedAt: !1051)
!1120 = distinct !{!1120, !1121, !1122}
!1121 = !DILocation(line: 438, column: 3, scope: !1036)
!1122 = !DILocation(line: 455, column: 5, scope: !1036)
!1123 = !DILocation(line: 473, column: 1, scope: !1010, inlinedAt: !1020)
!1124 = !DILocation(line: 597, column: 5, scope: !966)
!1125 = !DILocation(line: 476, column: 23, scope: !956, inlinedAt: !965)
!1126 = !DILocation(line: 476, column: 47, scope: !956, inlinedAt: !965)
!1127 = !DILocation(line: 478, column: 12, scope: !955, inlinedAt: !965)
!1128 = !DILocation(line: 478, column: 21, scope: !954, inlinedAt: !965)
!1129 = !DILocation(line: 478, column: 3, scope: !955, inlinedAt: !965)
!1130 = !DILocation(line: 479, column: 23, scope: !954, inlinedAt: !965)
!1131 = !DILocation(line: 307, column: 30, scope: !862, inlinedAt: !953)
!1132 = !DILocation(line: 311, column: 8, scope: !862, inlinedAt: !953)
!1133 = !DILocation(line: 309, column: 18, scope: !862, inlinedAt: !953)
!1134 = !DILocation(line: 313, column: 3, scope: !862, inlinedAt: !953)
!1135 = !DILocation(line: 314, column: 3, scope: !862, inlinedAt: !953)
!1136 = !DILocation(line: 316, column: 3, scope: !862, inlinedAt: !953)
!1137 = !DILocation(line: 317, column: 10, scope: !881, inlinedAt: !953)
!1138 = !DILocation(line: 317, column: 7, scope: !862, inlinedAt: !953)
!1139 = !DILocation(line: 320, column: 7, scope: !1140, inlinedAt: !953)
!1140 = distinct !DILexicalBlock(scope: !881, file: !3, line: 318, column: 5)
!1141 = !DILocation(line: 321, column: 7, scope: !1140, inlinedAt: !953)
!1142 = !DILocation(line: 325, column: 39, scope: !880, inlinedAt: !953)
!1143 = !{!1144, !806, i64 24}
!1144 = !{!"passwd", !806, i64 0, !806, i64 8, !997, i64 16, !997, i64 20, !806, i64 24, !806, i64 32, !806, i64 40}
!1145 = !DILocation(line: 325, column: 27, scope: !880, inlinedAt: !953)
!1146 = !DILocation(line: 325, column: 19, scope: !880, inlinedAt: !953)
!1147 = !DILocation(line: 328, column: 11, scope: !1148, inlinedAt: !953)
!1148 = distinct !DILexicalBlock(scope: !880, file: !3, line: 328, column: 11)
!1149 = !DILocation(line: 328, column: 11, scope: !880, inlinedAt: !953)
!1150 = !DILocation(line: 329, column: 16, scope: !1148, inlinedAt: !953)
!1151 = !DILocation(line: 331, column: 37, scope: !880, inlinedAt: !953)
!1152 = !DILocation(line: 329, column: 9, scope: !1148, inlinedAt: !953)
!1153 = !DILocation(line: 331, column: 51, scope: !880, inlinedAt: !953)
!1154 = !{!1144, !806, i64 0}
!1155 = !DILocation(line: 331, column: 16, scope: !880, inlinedAt: !953)
!1156 = !DILocation(line: 326, column: 13, scope: !880, inlinedAt: !953)
!1157 = !DILocation(line: 332, column: 7, scope: !880, inlinedAt: !953)
!1158 = !DILocation(line: 333, column: 7, scope: !880, inlinedAt: !953)
!1159 = !DILocation(line: 108, column: 23, scope: !1081, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 336, column: 3, scope: !862, inlinedAt: !953)
!1161 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1160)
!1162 = !DILocation(line: 338, column: 7, scope: !862, inlinedAt: !953)
!1163 = !DILocation(line: 340, column: 7, scope: !1164, inlinedAt: !953)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 339, column: 5)
!1165 = distinct !DILexicalBlock(scope: !862, file: !3, line: 338, column: 7)
!1166 = !DILocation(line: 341, column: 7, scope: !1164, inlinedAt: !953)
!1167 = !{!1144, !806, i64 32}
!1168 = !DILocation(line: 342, column: 7, scope: !1164, inlinedAt: !953)
!1169 = !DILocation(line: 343, column: 7, scope: !1164, inlinedAt: !953)
!1170 = !{!1144, !806, i64 40}
!1171 = !DILocation(line: 108, column: 23, scope: !1081, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 344, column: 7, scope: !1164, inlinedAt: !953)
!1173 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1172)
!1174 = !DILocation(line: 347, column: 7, scope: !862, inlinedAt: !953)
!1175 = !DILocation(line: 350, column: 7, scope: !860, inlinedAt: !953)
!1176 = !DILocation(line: 353, column: 30, scope: !860, inlinedAt: !953)
!1177 = !DILocation(line: 353, column: 18, scope: !860, inlinedAt: !953)
!1178 = !DILocation(line: 353, column: 61, scope: !860, inlinedAt: !953)
!1179 = !DILocation(line: 353, column: 9, scope: !860, inlinedAt: !953)
!1180 = !DILocation(line: 352, column: 19, scope: !860, inlinedAt: !953)
!1181 = !DILocation(line: 354, column: 36, scope: !860, inlinedAt: !953)
!1182 = !DILocalVariable(name: "__dest", arg: 1, scope: !1183, file: !1184, line: 95, type: !1187)
!1183 = distinct !DISubprogram(name: "stpcpy", scope: !1184, file: !1184, line: 95, type: !1185, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1189)
!1184 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!40, !1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!1189 = !{!1182, !1190}
!1190 = !DILocalVariable(name: "__src", arg: 2, scope: !1183, file: !1184, line: 95, type: !1188)
!1191 = !DILocation(line: 95, column: 1, scope: !1183, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 354, column: 15, scope: !860, inlinedAt: !953)
!1193 = !DILocation(line: 97, column: 49, scope: !1183, inlinedAt: !1192)
!1194 = !DILocation(line: 97, column: 10, scope: !1183, inlinedAt: !1192)
!1195 = !DILocation(line: 354, column: 7, scope: !860, inlinedAt: !953)
!1196 = !DILocation(line: 356, column: 16, scope: !860, inlinedAt: !953)
!1197 = !DILocation(line: 349, column: 13, scope: !860, inlinedAt: !953)
!1198 = !DILocation(line: 357, column: 11, scope: !939, inlinedAt: !953)
!1199 = !DILocation(line: 357, column: 11, scope: !860, inlinedAt: !953)
!1200 = !DILocation(line: 361, column: 11, scope: !938, inlinedAt: !953)
!1201 = !DILocation(line: 363, column: 27, scope: !938, inlinedAt: !953)
!1202 = !DILocation(line: 359, column: 18, scope: !938, inlinedAt: !953)
!1203 = !DILocation(line: 363, column: 65, scope: !938, inlinedAt: !953)
!1204 = !DILocation(line: 363, column: 11, scope: !938, inlinedAt: !953)
!1205 = !DILocation(line: 364, column: 13, scope: !938, inlinedAt: !953)
!1206 = distinct !{!1206, !1207, !1208}
!1207 = !DILocation(line: 363, column: 11, scope: !938)
!1208 = !DILocation(line: 364, column: 13, scope: !938)
!1209 = !DILocation(line: 365, column: 11, scope: !938, inlinedAt: !953)
!1210 = !DILocation(line: 366, column: 9, scope: !938, inlinedAt: !953)
!1211 = !DILocation(line: 368, column: 7, scope: !860, inlinedAt: !953)
!1212 = !DILocation(line: 369, column: 5, scope: !861, inlinedAt: !953)
!1213 = !DILocation(line: 369, column: 5, scope: !860, inlinedAt: !953)
!1214 = !DILocation(line: 371, column: 7, scope: !862, inlinedAt: !953)
!1215 = !DILocation(line: 374, column: 7, scope: !941, inlinedAt: !953)
!1216 = !DILocation(line: 377, column: 30, scope: !941, inlinedAt: !953)
!1217 = !DILocation(line: 377, column: 18, scope: !941, inlinedAt: !953)
!1218 = !DILocation(line: 377, column: 58, scope: !941, inlinedAt: !953)
!1219 = !DILocation(line: 377, column: 9, scope: !941, inlinedAt: !953)
!1220 = !DILocation(line: 376, column: 19, scope: !941, inlinedAt: !953)
!1221 = !DILocation(line: 378, column: 33, scope: !941, inlinedAt: !953)
!1222 = !DILocation(line: 95, column: 1, scope: !1183, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 378, column: 15, scope: !941, inlinedAt: !953)
!1224 = !DILocation(line: 97, column: 49, scope: !1183, inlinedAt: !1223)
!1225 = !DILocation(line: 97, column: 10, scope: !1183, inlinedAt: !1223)
!1226 = !DILocation(line: 378, column: 7, scope: !941, inlinedAt: !953)
!1227 = !DILocation(line: 380, column: 16, scope: !941, inlinedAt: !953)
!1228 = !DILocation(line: 373, column: 13, scope: !941, inlinedAt: !953)
!1229 = !DILocation(line: 381, column: 11, scope: !951, inlinedAt: !953)
!1230 = !DILocation(line: 381, column: 11, scope: !941, inlinedAt: !953)
!1231 = !DILocation(line: 385, column: 11, scope: !950, inlinedAt: !953)
!1232 = !DILocation(line: 387, column: 27, scope: !950, inlinedAt: !953)
!1233 = !DILocation(line: 383, column: 18, scope: !950, inlinedAt: !953)
!1234 = !DILocation(line: 387, column: 65, scope: !950, inlinedAt: !953)
!1235 = !DILocation(line: 387, column: 11, scope: !950, inlinedAt: !953)
!1236 = !DILocation(line: 388, column: 13, scope: !950, inlinedAt: !953)
!1237 = distinct !{!1237, !1238, !1239}
!1238 = !DILocation(line: 387, column: 11, scope: !950)
!1239 = !DILocation(line: 388, column: 13, scope: !950)
!1240 = !DILocation(line: 389, column: 11, scope: !950, inlinedAt: !953)
!1241 = !DILocation(line: 390, column: 9, scope: !950, inlinedAt: !953)
!1242 = !DILocation(line: 392, column: 7, scope: !941, inlinedAt: !953)
!1243 = !DILocation(line: 393, column: 5, scope: !942, inlinedAt: !953)
!1244 = !DILocation(line: 393, column: 5, scope: !941, inlinedAt: !953)
!1245 = !DILocation(line: 108, column: 23, scope: !1081, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 395, column: 3, scope: !862, inlinedAt: !953)
!1247 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1246)
!1248 = !DILocation(line: 478, column: 36, scope: !954, inlinedAt: !965)
!1249 = distinct !{!1249, !1250, !1251}
!1250 = !DILocation(line: 478, column: 3, scope: !955)
!1251 = !DILocation(line: 479, column: 36, scope: !955)
!1252 = !DILocation(line: 601, column: 3, scope: !850)
!1253 = distinct !DISubprogram(name: "print_entry", scope: !3, file: !3, line: 200, type: !1254, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !102}
!1256 = !{!1257, !1258, !1290, !1291, !1292, !1296, !1297, !1300, !1301, !1304, !1305, !1311, !1312}
!1257 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1253, file: !3, line: 200, type: !102)
!1258 = !DILocalVariable(name: "stats", scope: !1253, file: !3, line: 202, type: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1260, line: 46, size: 1152, elements: !1261)
!1260 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1261 = !{!1262, !1264, !1266, !1268, !1270, !1271, !1272, !1273, !1274, !1275, !1277, !1279, !1286, !1287, !1288}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1259, file: !1260, line: 48, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !81, line: 143, baseType: !47)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1259, file: !1260, line: 53, baseType: !1265, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !81, line: 146, baseType: !47)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1259, file: !1260, line: 61, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !81, line: 149, baseType: !47)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1259, file: !1260, line: 62, baseType: !1269, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !81, line: 148, baseType: !7)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1259, file: !1260, line: 64, baseType: !873, size: 32, offset: 224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1259, file: !1260, line: 65, baseType: !875, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1259, file: !1260, line: 67, baseType: !44, size: 32, offset: 288)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1259, file: !1260, line: 69, baseType: !1263, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1259, file: !1260, line: 74, baseType: !911, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1259, file: !1260, line: 78, baseType: !1276, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !81, line: 172, baseType: !82)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1259, file: !1260, line: 80, baseType: !1278, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !81, line: 177, baseType: !82)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1259, file: !1260, line: 91, baseType: !1280, size: 128, offset: 576)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1281, line: 9, size: 128, elements: !1282)
!1281 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1280, file: !1281, line: 11, baseType: !80, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1280, file: !1281, line: 12, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 194, baseType: !82)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1259, file: !1260, line: 92, baseType: !1280, size: 128, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1259, file: !1260, line: 93, baseType: !1280, size: 128, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1259, file: !1260, line: 106, baseType: !1289, size: 192, offset: 960)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 192, elements: !175)
!1290 = !DILocalVariable(name: "last_change", scope: !1253, file: !3, line: 203, type: !78)
!1291 = !DILocalVariable(name: "mesg", scope: !1253, file: !3, line: 204, type: !41)
!1292 = !DILocalVariable(name: "line", scope: !1253, file: !3, line: 209, type: !1293)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 304, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 38)
!1296 = !DILocalVariable(name: "p", scope: !1253, file: !3, line: 210, type: !40)
!1297 = !DILocalVariable(name: "pw", scope: !1298, file: !3, line: 234, type: !866)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 233, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 232, column: 7)
!1300 = !DILocalVariable(name: "name", scope: !1298, file: !3, line: 235, type: !162)
!1301 = !DILocalVariable(name: "comma", scope: !1302, file: !3, line: 244, type: !882)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 243, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 239, column: 11)
!1304 = !DILocalVariable(name: "result", scope: !1302, file: !3, line: 245, type: !40)
!1305 = !DILocalVariable(name: "ut_host", scope: !1306, file: !3, line: 273, type: !1308)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 272, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 271, column: 7)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2056, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 257)
!1311 = !DILocalVariable(name: "host", scope: !1306, file: !3, line: 274, type: !40)
!1312 = !DILocalVariable(name: "display", scope: !1306, file: !3, line: 275, type: !40)
!1313 = !DILocation(line: 200, column: 33, scope: !1253)
!1314 = !DILocation(line: 202, column: 3, scope: !1253)
!1315 = !DILocation(line: 209, column: 3, scope: !1253)
!1316 = !DILocation(line: 209, column: 8, scope: !1253)
!1317 = !DILocation(line: 210, column: 9, scope: !1253)
!1318 = !DILocation(line: 215, column: 10, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 215, column: 8)
!1320 = !DILocation(line: 215, column: 8, scope: !1253)
!1321 = !DILocation(line: 216, column: 9, scope: !1319)
!1322 = !DILocation(line: 216, column: 5, scope: !1319)
!1323 = !DILocation(line: 0, scope: !1319)
!1324 = !DILocalVariable(name: "dest", arg: 1, scope: !1325, file: !779, line: 737, type: !1187)
!1325 = distinct !DISubprogram(name: "stzncpy", scope: !779, file: !779, line: 737, type: !1326, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!40, !1187, !1188, !45}
!1328 = !{!1324, !1329, !1330, !1331}
!1329 = !DILocalVariable(name: "src", arg: 2, scope: !1325, file: !779, line: 737, type: !1188)
!1330 = !DILocalVariable(name: "len", arg: 3, scope: !1325, file: !779, line: 737, type: !45)
!1331 = !DILocalVariable(name: "src_end", scope: !1325, file: !779, line: 739, type: !69)
!1332 = !DILocation(line: 737, column: 25, scope: !1325, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 217, column: 3, scope: !1253)
!1334 = !DILocation(line: 737, column: 52, scope: !1325, inlinedAt: !1333)
!1335 = !DILocation(line: 737, column: 64, scope: !1325, inlinedAt: !1333)
!1336 = !DILocation(line: 739, column: 29, scope: !1325, inlinedAt: !1333)
!1337 = !DILocation(line: 739, column: 15, scope: !1325, inlinedAt: !1333)
!1338 = !DILocation(line: 740, column: 24, scope: !1325, inlinedAt: !1333)
!1339 = !DILocation(line: 740, column: 3, scope: !1325, inlinedAt: !1333)
!1340 = !DILocation(line: 741, column: 19, scope: !1325, inlinedAt: !1333)
!1341 = !DILocation(line: 741, column: 10, scope: !1325, inlinedAt: !1333)
!1342 = !DILocation(line: 741, column: 13, scope: !1325, inlinedAt: !1333)
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"stzncpy: argument 0"}
!1345 = distinct !{!1345, !"stzncpy"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"stzncpy: argument 1"}
!1348 = !DILocation(line: 740, column: 14, scope: !1325, inlinedAt: !1333)
!1349 = distinct !{!1349, !1350, !1351}
!1350 = !DILocation(line: 740, column: 3, scope: !1325)
!1351 = !DILocation(line: 741, column: 19, scope: !1325)
!1352 = !DILocation(line: 740, column: 27, scope: !1325, inlinedAt: !1333)
!1353 = !DILocation(line: 742, column: 9, scope: !1325, inlinedAt: !1333)
!1354 = !DILocation(line: 202, column: 15, scope: !1253)
!1355 = !DILocalVariable(name: "__path", arg: 1, scope: !1356, file: !1357, line: 453, type: !69)
!1356 = distinct !DISubprogram(name: "stat", scope: !1357, file: !1357, line: 453, type: !1358, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1361)
!1357 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!44, !69, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1361 = !{!1355, !1362}
!1362 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1356, file: !1357, line: 453, type: !1360)
!1363 = !DILocation(line: 453, column: 1, scope: !1356, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 219, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 219, column: 7)
!1366 = !DILocation(line: 455, column: 10, scope: !1356, inlinedAt: !1364)
!1367 = !DILocation(line: 219, column: 27, scope: !1365)
!1368 = !DILocation(line: 219, column: 7, scope: !1253)
!1369 = !DILocation(line: 221, column: 21, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 220, column: 5)
!1371 = !{!1372, !997, i64 24}
!1372 = !{!"stat", !1033, i64 0, !1033, i64 8, !1033, i64 16, !997, i64 24, !997, i64 28, !997, i64 32, !997, i64 36, !1033, i64 40, !1033, i64 48, !1033, i64 56, !1033, i64 64, !1373, i64 72, !1373, i64 88, !1373, i64 104, !807, i64 120}
!1373 = !{!"timespec", !1033, i64 0, !1033, i64 8}
!1374 = !DILocation(line: 221, column: 29, scope: !1370)
!1375 = !DILocation(line: 221, column: 14, scope: !1370)
!1376 = !DILocation(line: 222, column: 27, scope: !1370)
!1377 = !{!1372, !1033, i64 72}
!1378 = !DILocation(line: 203, column: 10, scope: !1253)
!1379 = !DILocation(line: 223, column: 5, scope: !1370)
!1380 = !DILocation(line: 0, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 225, column: 5)
!1382 = !DILocation(line: 230, column: 3, scope: !1253)
!1383 = !DILocation(line: 232, column: 7, scope: !1253)
!1384 = !DILocation(line: 235, column: 7, scope: !1298)
!1385 = !DILocation(line: 235, column: 12, scope: !1298)
!1386 = !DILocation(line: 737, column: 25, scope: !1325, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 237, column: 7, scope: !1298)
!1388 = !DILocation(line: 737, column: 52, scope: !1325, inlinedAt: !1387)
!1389 = !DILocation(line: 737, column: 64, scope: !1325, inlinedAt: !1387)
!1390 = !DILocation(line: 739, column: 29, scope: !1325, inlinedAt: !1387)
!1391 = !DILocation(line: 739, column: 15, scope: !1325, inlinedAt: !1387)
!1392 = !DILocation(line: 740, column: 27, scope: !1325, inlinedAt: !1387)
!1393 = !{!1394}
!1394 = distinct !{!1394, !1395, !"stzncpy: argument 1"}
!1395 = distinct !{!1395, !"stzncpy"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1395, !"stzncpy: argument 0"}
!1398 = !DILocation(line: 740, column: 24, scope: !1325, inlinedAt: !1387)
!1399 = !DILocation(line: 740, column: 3, scope: !1325, inlinedAt: !1387)
!1400 = !DILocation(line: 741, column: 19, scope: !1325, inlinedAt: !1387)
!1401 = !DILocation(line: 741, column: 10, scope: !1325, inlinedAt: !1387)
!1402 = !DILocation(line: 741, column: 13, scope: !1325, inlinedAt: !1387)
!1403 = !DILocation(line: 740, column: 14, scope: !1325, inlinedAt: !1387)
!1404 = !DILocation(line: 742, column: 9, scope: !1325, inlinedAt: !1387)
!1405 = !DILocation(line: 238, column: 12, scope: !1298)
!1406 = !DILocation(line: 234, column: 22, scope: !1298)
!1407 = !DILocation(line: 239, column: 14, scope: !1303)
!1408 = !DILocation(line: 239, column: 11, scope: !1298)
!1409 = !DILocation(line: 241, column: 9, scope: !1303)
!1410 = !DILocation(line: 244, column: 43, scope: !1302)
!1411 = !DILocation(line: 244, column: 31, scope: !1302)
!1412 = !DILocation(line: 244, column: 23, scope: !1302)
!1413 = !DILocation(line: 247, column: 15, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 247, column: 15)
!1415 = !DILocation(line: 247, column: 15, scope: !1302)
!1416 = !DILocation(line: 248, column: 20, scope: !1414)
!1417 = !DILocation(line: 250, column: 41, scope: !1302)
!1418 = !DILocation(line: 248, column: 13, scope: !1414)
!1419 = !DILocation(line: 250, column: 55, scope: !1302)
!1420 = !DILocation(line: 250, column: 20, scope: !1302)
!1421 = !DILocation(line: 245, column: 17, scope: !1302)
!1422 = !DILocation(line: 251, column: 11, scope: !1302)
!1423 = !DILocation(line: 252, column: 11, scope: !1302)
!1424 = !DILocation(line: 254, column: 5, scope: !1299)
!1425 = !DILocation(line: 254, column: 5, scope: !1298)
!1426 = !DILocation(line: 256, column: 3, scope: !1253)
!1427 = !DILocation(line: 259, column: 7, scope: !1253)
!1428 = !DILocation(line: 261, column: 11, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 261, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 260, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 259, column: 7)
!1432 = !DILocation(line: 261, column: 11, scope: !1430)
!1433 = !DILocation(line: 147, column: 21, scope: !75, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 262, column: 9, scope: !1429)
!1435 = !DILocation(line: 153, column: 7, scope: !1436, inlinedAt: !1434)
!1436 = distinct !DILexicalBlock(scope: !75, file: !3, line: 153, column: 7)
!1437 = !DILocation(line: 153, column: 11, scope: !1436, inlinedAt: !1434)
!1438 = !DILocation(line: 153, column: 7, scope: !75, inlinedAt: !1434)
!1439 = !DILocation(line: 154, column: 5, scope: !1436, inlinedAt: !1434)
!1440 = !DILocation(line: 156, column: 18, scope: !75, inlinedAt: !1434)
!1441 = !DILocation(line: 156, column: 22, scope: !75, inlinedAt: !1434)
!1442 = !DILocation(line: 151, column: 10, scope: !75, inlinedAt: !1434)
!1443 = !DILocation(line: 157, column: 20, scope: !1444, inlinedAt: !1434)
!1444 = distinct !DILexicalBlock(scope: !75, file: !3, line: 157, column: 7)
!1445 = !DILocation(line: 157, column: 7, scope: !75, inlinedAt: !1434)
!1446 = !DILocation(line: 159, column: 20, scope: !88, inlinedAt: !1434)
!1447 = !DILocation(line: 159, column: 7, scope: !75, inlinedAt: !1434)
!1448 = !DILocation(line: 161, column: 11, scope: !87, inlinedAt: !1434)
!1449 = !DILocation(line: 162, column: 48, scope: !87, inlinedAt: !1434)
!1450 = !DILocation(line: 162, column: 11, scope: !87, inlinedAt: !1434)
!1451 = !DILocation(line: 163, column: 7, scope: !87, inlinedAt: !1434)
!1452 = !DILocation(line: 164, column: 5, scope: !87, inlinedAt: !1434)
!1453 = !DILocation(line: 167, column: 25, scope: !91, inlinedAt: !1434)
!1454 = !DILocation(line: 168, column: 7, scope: !91, inlinedAt: !1434)
!1455 = !DILocation(line: 0, scope: !75, inlinedAt: !1434)
!1456 = !DILocation(line: 262, column: 9, scope: !1429)
!1457 = !DILocation(line: 265, column: 9, scope: !1429)
!1458 = !DILocation(line: 175, column: 33, scope: !99, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 268, column: 3, scope: !1253)
!1460 = !DILocation(line: 185, column: 3, scope: !99, inlinedAt: !1459)
!1461 = !DILocation(line: 185, column: 14, scope: !99, inlinedAt: !1459)
!1462 = !{!1099, !997, i64 340}
!1463 = !DILocation(line: 185, column: 10, scope: !99, inlinedAt: !1459)
!1464 = !DILocation(line: 186, column: 20, scope: !99, inlinedAt: !1459)
!1465 = !DILocation(line: 186, column: 14, scope: !99, inlinedAt: !1459)
!1466 = !DILocation(line: 188, column: 7, scope: !1467, inlinedAt: !1459)
!1467 = distinct !DILexicalBlock(scope: !99, file: !3, line: 188, column: 7)
!1468 = !DILocation(line: 188, column: 7, scope: !99, inlinedAt: !1459)
!1469 = !DILocation(line: 190, column: 34, scope: !1470, inlinedAt: !1459)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 189, column: 5)
!1471 = !DILocation(line: 190, column: 7, scope: !1470, inlinedAt: !1459)
!1472 = !DILocation(line: 191, column: 7, scope: !1470, inlinedAt: !1459)
!1473 = !DILocation(line: 194, column: 23, scope: !1467, inlinedAt: !1459)
!1474 = !DILocalVariable(name: "t", arg: 1, scope: !1475, file: !779, line: 686, type: !78)
!1475 = distinct !DISubprogram(name: "timetostr", scope: !779, file: !779, line: 686, type: !1476, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!40, !78, !40}
!1478 = !{!1474, !1479}
!1479 = !DILocalVariable(name: "buf", arg: 2, scope: !1475, file: !779, line: 686, type: !40)
!1480 = !DILocation(line: 686, column: 19, scope: !1475, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 194, column: 12, scope: !1467, inlinedAt: !1459)
!1482 = !DILocation(line: 689, column: 13, scope: !1475, inlinedAt: !1481)
!1483 = !DILocation(line: 194, column: 5, scope: !1467, inlinedAt: !1459)
!1484 = !DILocation(line: 0, scope: !1467, inlinedAt: !1459)
!1485 = !DILocation(line: 195, column: 1, scope: !99, inlinedAt: !1459)
!1486 = !DILocation(line: 268, column: 3, scope: !1253)
!1487 = !DILocation(line: 271, column: 21, scope: !1307)
!1488 = !DILocation(line: 271, column: 24, scope: !1307)
!1489 = !DILocation(line: 271, column: 7, scope: !1253)
!1490 = !DILocation(line: 273, column: 7, scope: !1306)
!1491 = !DILocation(line: 273, column: 12, scope: !1306)
!1492 = !DILocation(line: 274, column: 13, scope: !1306)
!1493 = !DILocation(line: 275, column: 13, scope: !1306)
!1494 = !DILocation(line: 737, column: 25, scope: !1325, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 278, column: 7, scope: !1306)
!1496 = !DILocation(line: 737, column: 52, scope: !1325, inlinedAt: !1495)
!1497 = !DILocation(line: 737, column: 64, scope: !1325, inlinedAt: !1495)
!1498 = !DILocation(line: 739, column: 29, scope: !1325, inlinedAt: !1495)
!1499 = !DILocation(line: 739, column: 15, scope: !1325, inlinedAt: !1495)
!1500 = !DILocation(line: 740, column: 3, scope: !1325, inlinedAt: !1495)
!1501 = !DILocation(line: 741, column: 19, scope: !1325, inlinedAt: !1495)
!1502 = !DILocation(line: 741, column: 10, scope: !1325, inlinedAt: !1495)
!1503 = !DILocation(line: 741, column: 13, scope: !1325, inlinedAt: !1495)
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"stzncpy: argument 0"}
!1506 = distinct !{!1506, !"stzncpy"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1506, !"stzncpy: argument 1"}
!1509 = !DILocation(line: 740, column: 14, scope: !1325, inlinedAt: !1495)
!1510 = !DILocation(line: 740, column: 24, scope: !1325, inlinedAt: !1495)
!1511 = !DILocation(line: 740, column: 27, scope: !1325, inlinedAt: !1495)
!1512 = !DILocation(line: 742, column: 9, scope: !1325, inlinedAt: !1495)
!1513 = !DILocation(line: 281, column: 17, scope: !1306)
!1514 = !DILocation(line: 282, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 282, column: 11)
!1516 = !DILocation(line: 282, column: 11, scope: !1306)
!1517 = !DILocation(line: 283, column: 17, scope: !1515)
!1518 = !DILocation(line: 283, column: 20, scope: !1515)
!1519 = !DILocation(line: 283, column: 9, scope: !1515)
!1520 = !DILocation(line: 0, scope: !1306)
!1521 = !DILocation(line: 285, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 285, column: 11)
!1523 = !DILocation(line: 285, column: 11, scope: !1306)
!1524 = !DILocation(line: 287, column: 16, scope: !1522)
!1525 = !DILocation(line: 287, column: 9, scope: !1522)
!1526 = !DILocation(line: 288, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 288, column: 12)
!1528 = !DILocation(line: 288, column: 12, scope: !1306)
!1529 = !DILocation(line: 291, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 291, column: 11)
!1531 = !DILocation(line: 291, column: 11, scope: !1306)
!1532 = !DILocation(line: 292, column: 9, scope: !1530)
!1533 = !DILocation(line: 294, column: 9, scope: !1530)
!1534 = !DILocation(line: 296, column: 11, scope: !1306)
!1535 = !DILocation(line: 297, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 296, column: 11)
!1537 = !DILocation(line: 298, column: 5, scope: !1307)
!1538 = !DILocation(line: 298, column: 5, scope: !1306)
!1539 = !DILocation(line: 108, column: 23, scope: !1081, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 301, column: 3, scope: !1253)
!1541 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1540)
!1542 = !DILocation(line: 302, column: 1, scope: !1253)
!1543 = distinct !DISubprogram(name: "create_fullname", scope: !3, file: !3, line: 103, type: !1544, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!40, !69, !69}
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1556, !1557, !1561}
!1547 = !DILocalVariable(name: "gecos_name", arg: 1, scope: !1543, file: !3, line: 103, type: !69)
!1548 = !DILocalVariable(name: "user_name", arg: 2, scope: !1543, file: !3, line: 103, type: !69)
!1549 = !DILocalVariable(name: "rsize", scope: !1543, file: !3, line: 105, type: !45)
!1550 = !DILocalVariable(name: "result", scope: !1543, file: !3, line: 106, type: !40)
!1551 = !DILocalVariable(name: "r", scope: !1543, file: !3, line: 107, type: !40)
!1552 = !DILocalVariable(name: "ampersands", scope: !1543, file: !3, line: 108, type: !45)
!1553 = !DILocalVariable(name: "ulen", scope: !1554, file: !3, line: 112, type: !45)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 111, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 110, column: 7)
!1556 = !DILocalVariable(name: "product", scope: !1554, file: !3, line: 113, type: !45)
!1557 = !DILocalVariable(name: "uname", scope: !1558, file: !3, line: 125, type: !69)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 124, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 123, column: 11)
!1560 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 122, column: 5)
!1561 = !DILocalVariable(name: "__res", scope: !1562, file: !3, line: 127, type: !44)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 127, column: 20)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 126, column: 15)
!1564 = !DILocation(line: 103, column: 30, scope: !1543)
!1565 = !DILocation(line: 103, column: 54, scope: !1543)
!1566 = !DILocation(line: 105, column: 18, scope: !1543)
!1567 = !DILocation(line: 105, column: 10, scope: !1543)
!1568 = !DILocalVariable(name: "str", arg: 1, scope: !1569, file: !3, line: 85, type: !69)
!1569 = distinct !DISubprogram(name: "count_ampersands", scope: !3, file: !3, line: 85, type: !1570, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!45, !69}
!1572 = !{!1568, !1573}
!1573 = !DILocalVariable(name: "count", scope: !1569, file: !3, line: 87, type: !45)
!1574 = !DILocation(line: 85, column: 31, scope: !1569, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 108, column: 23, scope: !1543)
!1576 = !DILocation(line: 87, column: 10, scope: !1569, inlinedAt: !1575)
!1577 = !DILocation(line: 88, column: 3, scope: !1569, inlinedAt: !1575)
!1578 = !DILocation(line: 0, scope: !1579, inlinedAt: !1575)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 90, column: 11)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 89, column: 5)
!1581 = !DILocation(line: 90, column: 11, scope: !1579, inlinedAt: !1575)
!1582 = !DILocation(line: 90, column: 16, scope: !1579, inlinedAt: !1575)
!1583 = !DILocation(line: 90, column: 11, scope: !1580, inlinedAt: !1575)
!1584 = !DILocation(line: 92, column: 18, scope: !1569, inlinedAt: !1575)
!1585 = !DILocation(line: 92, column: 5, scope: !1580, inlinedAt: !1575)
!1586 = distinct !{!1586, !1587, !1588}
!1587 = !DILocation(line: 88, column: 3, scope: !1569)
!1588 = !DILocation(line: 92, column: 20, scope: !1569)
!1589 = !DILocation(line: 105, column: 38, scope: !1543)
!1590 = !DILocation(line: 108, column: 10, scope: !1543)
!1591 = !DILocation(line: 110, column: 18, scope: !1555)
!1592 = !DILocation(line: 110, column: 7, scope: !1543)
!1593 = !DILocation(line: 112, column: 21, scope: !1554)
!1594 = !DILocation(line: 112, column: 14, scope: !1554)
!1595 = !DILocation(line: 113, column: 35, scope: !1554)
!1596 = !DILocation(line: 113, column: 14, scope: !1554)
!1597 = !DILocation(line: 114, column: 24, scope: !1554)
!1598 = !DILocation(line: 114, column: 13, scope: !1554)
!1599 = !DILocation(line: 115, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 115, column: 11)
!1601 = !DILocation(line: 115, column: 56, scope: !1600)
!1602 = !DILocation(line: 115, column: 47, scope: !1600)
!1603 = !DILocation(line: 116, column: 9, scope: !1600)
!1604 = !DILocation(line: 0, scope: !1543)
!1605 = !DILocation(line: 119, column: 16, scope: !1543)
!1606 = !DILocation(line: 106, column: 9, scope: !1543)
!1607 = !DILocation(line: 107, column: 9, scope: !1543)
!1608 = !DILocation(line: 121, column: 3, scope: !1543)
!1609 = !DILocation(line: 0, scope: !1563)
!1610 = !DILocation(line: 121, column: 10, scope: !1543)
!1611 = !DILocation(line: 125, column: 23, scope: !1558)
!1612 = !DILocation(line: 126, column: 15, scope: !1563)
!1613 = !{!1091, !1091, i64 0}
!1614 = !DILocation(line: 126, column: 15, scope: !1558)
!1615 = !DILocation(line: 127, column: 20, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 127, column: 20)
!1617 = !DILocation(line: 127, column: 20, scope: !1562)
!1618 = !DILocation(line: 127, column: 20, scope: !1563)
!1619 = !DILocation(line: 127, column: 15, scope: !1563)
!1620 = !DILocation(line: 127, column: 18, scope: !1563)
!1621 = !DILocation(line: 128, column: 18, scope: !1558)
!1622 = !DILocation(line: 127, column: 13, scope: !1563)
!1623 = !DILocation(line: 0, scope: !1558)
!1624 = !DILocation(line: 128, column: 11, scope: !1558)
!1625 = !DILocation(line: 129, column: 26, scope: !1558)
!1626 = !DILocation(line: 129, column: 15, scope: !1558)
!1627 = !DILocation(line: 129, column: 18, scope: !1558)
!1628 = distinct !{!1628, !1624, !1625}
!1629 = !DILocation(line: 133, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 132, column: 9)
!1631 = !DILocation(line: 133, column: 16, scope: !1630)
!1632 = !DILocation(line: 0, scope: !1630)
!1633 = !DILocation(line: 136, column: 17, scope: !1560)
!1634 = distinct !{!1634, !1608, !1635}
!1635 = !DILocation(line: 137, column: 5, scope: !1543)
!1636 = !DILocation(line: 138, column: 6, scope: !1543)
!1637 = !DILocation(line: 140, column: 3, scope: !1543)
!1638 = distinct !DISubprogram(name: "canon_host", scope: !199, file: !199, line: 33, type: !1639, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!40, !69}
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "host", arg: 1, scope: !1638, file: !199, line: 33, type: !69)
!1643 = !DILocation(line: 33, column: 25, scope: !1638)
!1644 = !DILocation(line: 60, column: 27, scope: !198, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 35, column: 10, scope: !1638)
!1646 = !DILocation(line: 60, column: 38, scope: !198, inlinedAt: !1645)
!1647 = !DILocation(line: 62, column: 9, scope: !198, inlinedAt: !1645)
!1648 = !DILocation(line: 64, column: 3, scope: !198, inlinedAt: !1645)
!1649 = !DILocation(line: 64, column: 20, scope: !198, inlinedAt: !1645)
!1650 = !DILocation(line: 67, column: 18, scope: !198, inlinedAt: !1645)
!1651 = !{!1652, !997, i64 0}
!1652 = !{!"addrinfo", !997, i64 0, !997, i64 4, !997, i64 8, !997, i64 12, !997, i64 16, !806, i64 24, !806, i64 32, !806, i64 40}
!1653 = !DILocation(line: 68, column: 12, scope: !198, inlinedAt: !1645)
!1654 = !DILocation(line: 65, column: 7, scope: !198, inlinedAt: !1645)
!1655 = !DILocation(line: 69, column: 8, scope: !1656, inlinedAt: !1645)
!1656 = distinct !DILexicalBlock(scope: !198, file: !199, line: 69, column: 7)
!1657 = !DILocation(line: 69, column: 7, scope: !198, inlinedAt: !1645)
!1658 = !DILocation(line: 74, column: 24, scope: !1659, inlinedAt: !1645)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !199, line: 70, column: 5)
!1660 = !DILocation(line: 74, column: 29, scope: !1659, inlinedAt: !1645)
!1661 = !{!1652, !806, i64 32}
!1662 = !DILocation(line: 74, column: 16, scope: !1659, inlinedAt: !1645)
!1663 = !DILocation(line: 75, column: 12, scope: !1664, inlinedAt: !1645)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !199, line: 75, column: 11)
!1665 = !DILocation(line: 75, column: 19, scope: !1664, inlinedAt: !1645)
!1666 = !DILocation(line: 76, column: 18, scope: !1664, inlinedAt: !1645)
!1667 = !DILocation(line: 76, column: 9, scope: !1664, inlinedAt: !1645)
!1668 = !DILocation(line: 77, column: 21, scope: !1659, inlinedAt: !1645)
!1669 = !DILocation(line: 77, column: 7, scope: !1659, inlinedAt: !1645)
!1670 = !DILocation(line: 78, column: 5, scope: !1659, inlinedAt: !1645)
!1671 = !DILocation(line: 80, column: 14, scope: !1672, inlinedAt: !1645)
!1672 = distinct !DILexicalBlock(scope: !1656, file: !199, line: 79, column: 12)
!1673 = !DILocation(line: 80, column: 5, scope: !1672, inlinedAt: !1645)
!1674 = !DILocation(line: 0, scope: !1659, inlinedAt: !1645)
!1675 = !DILocation(line: 83, column: 1, scope: !198, inlinedAt: !1645)
!1676 = !DILocation(line: 35, column: 3, scope: !1638)
!1677 = !DILocation(line: 60, column: 27, scope: !198)
!1678 = !DILocation(line: 60, column: 38, scope: !198)
!1679 = !DILocation(line: 62, column: 9, scope: !198)
!1680 = !DILocation(line: 64, column: 3, scope: !198)
!1681 = !DILocation(line: 64, column: 20, scope: !198)
!1682 = !DILocation(line: 67, column: 18, scope: !198)
!1683 = !DILocation(line: 68, column: 12, scope: !198)
!1684 = !DILocation(line: 65, column: 7, scope: !198)
!1685 = !DILocation(line: 69, column: 8, scope: !1656)
!1686 = !DILocation(line: 69, column: 7, scope: !198)
!1687 = !DILocation(line: 74, column: 24, scope: !1659)
!1688 = !DILocation(line: 74, column: 29, scope: !1659)
!1689 = !DILocation(line: 74, column: 16, scope: !1659)
!1690 = !DILocation(line: 75, column: 12, scope: !1664)
!1691 = !DILocation(line: 75, column: 22, scope: !1664)
!1692 = !DILocation(line: 75, column: 19, scope: !1664)
!1693 = !DILocation(line: 76, column: 18, scope: !1664)
!1694 = !DILocation(line: 76, column: 9, scope: !1664)
!1695 = !DILocation(line: 77, column: 21, scope: !1659)
!1696 = !DILocation(line: 77, column: 7, scope: !1659)
!1697 = !DILocation(line: 78, column: 5, scope: !1659)
!1698 = !DILocation(line: 79, column: 12, scope: !1672)
!1699 = !DILocation(line: 79, column: 12, scope: !1656)
!1700 = !DILocation(line: 80, column: 14, scope: !1672)
!1701 = !DILocation(line: 80, column: 5, scope: !1672)
!1702 = !DILocation(line: 0, scope: !1659)
!1703 = !DILocation(line: 83, column: 1, scope: !198)
!1704 = !DILocation(line: 82, column: 3, scope: !198)
!1705 = distinct !DISubprogram(name: "ch_strerror", scope: !199, file: !199, line: 87, type: !1706, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !189)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!69}
!1708 = !DILocation(line: 89, column: 24, scope: !1705)
!1709 = !DILocation(line: 89, column: 10, scope: !1705)
!1710 = !DILocation(line: 89, column: 3, scope: !1705)
!1711 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !240, file: !240, line: 51, type: !780, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1712)
!1712 = !{!1713}
!1713 = !DILocalVariable(name: "file", arg: 1, scope: !1711, file: !240, line: 51, type: !69)
!1714 = !DILocation(line: 51, column: 41, scope: !1711)
!1715 = !DILocation(line: 53, column: 13, scope: !1711)
!1716 = !DILocation(line: 54, column: 1, scope: !1711)
!1717 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !240, file: !240, line: 88, type: !1718, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !52}
!1720 = !{!1721}
!1721 = !DILocalVariable(name: "ignore", arg: 1, scope: !1717, file: !240, line: 88, type: !52)
!1722 = !DILocation(line: 88, column: 37, scope: !1717)
!1723 = !DILocation(line: 90, column: 16, scope: !1717)
!1724 = !{!1725, !1725, i64 0}
!1725 = !{!"_Bool", !807, i64 0}
!1726 = !DILocation(line: 91, column: 1, scope: !1717)
!1727 = distinct !DISubprogram(name: "close_stdout", scope: !240, file: !240, line: 117, type: !1065, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1728)
!1728 = !{!1729}
!1729 = !DILocalVariable(name: "write_error", scope: !1730, file: !240, line: 122, type: !69)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !240, line: 121, column: 5)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !240, line: 119, column: 7)
!1732 = !DILocation(line: 119, column: 21, scope: !1731)
!1733 = !DILocation(line: 119, column: 7, scope: !1731)
!1734 = !DILocation(line: 119, column: 29, scope: !1731)
!1735 = !DILocation(line: 120, column: 7, scope: !1731)
!1736 = !DILocation(line: 120, column: 12, scope: !1731)
!1737 = !{i8 0, i8 2}
!1738 = !DILocation(line: 120, column: 25, scope: !1731)
!1739 = !DILocation(line: 120, column: 28, scope: !1731)
!1740 = !DILocation(line: 120, column: 34, scope: !1731)
!1741 = !DILocation(line: 119, column: 7, scope: !1727)
!1742 = !DILocation(line: 122, column: 33, scope: !1730)
!1743 = !DILocation(line: 122, column: 19, scope: !1730)
!1744 = !DILocation(line: 123, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1730, file: !240, line: 123, column: 11)
!1746 = !DILocation(line: 0, scope: !1745)
!1747 = !DILocation(line: 123, column: 11, scope: !1730)
!1748 = !DILocation(line: 124, column: 36, scope: !1745)
!1749 = !DILocation(line: 124, column: 9, scope: !1745)
!1750 = !DILocation(line: 127, column: 9, scope: !1745)
!1751 = !DILocation(line: 129, column: 14, scope: !1730)
!1752 = !DILocation(line: 129, column: 7, scope: !1730)
!1753 = !DILocation(line: 134, column: 42, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1727, file: !240, line: 134, column: 7)
!1755 = !DILocation(line: 134, column: 28, scope: !1754)
!1756 = !DILocation(line: 134, column: 50, scope: !1754)
!1757 = !DILocation(line: 134, column: 7, scope: !1727)
!1758 = !DILocation(line: 135, column: 12, scope: !1754)
!1759 = !DILocation(line: 135, column: 5, scope: !1754)
!1760 = !DILocation(line: 136, column: 1, scope: !1727)
!1761 = distinct !DISubprogram(name: "hard_locale", scope: !1762, file: !1762, line: 38, type: !1763, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !1765)
!1762 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!52, !44}
!1765 = !{!1766, !1767, !1768}
!1766 = !DILocalVariable(name: "category", arg: 1, scope: !1761, file: !1762, line: 38, type: !44)
!1767 = !DILocalVariable(name: "hard", scope: !1761, file: !1762, line: 40, type: !52)
!1768 = !DILocalVariable(name: "p", scope: !1761, file: !1762, line: 41, type: !69)
!1769 = !DILocation(line: 38, column: 18, scope: !1761)
!1770 = !DILocation(line: 40, column: 8, scope: !1761)
!1771 = !DILocation(line: 41, column: 19, scope: !1761)
!1772 = !DILocation(line: 41, column: 15, scope: !1761)
!1773 = !DILocation(line: 43, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1761, file: !1762, line: 43, column: 7)
!1775 = !DILocation(line: 43, column: 7, scope: !1761)
!1776 = !DILocation(line: 47, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1762, line: 47, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !1762, line: 46, column: 9)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !1762, line: 45, column: 11)
!1780 = distinct !DILexicalBlock(scope: !1774, file: !1762, line: 44, column: 5)
!1781 = !DILocation(line: 47, column: 31, scope: !1777)
!1782 = !DILocation(line: 47, column: 36, scope: !1777)
!1783 = !DILocation(line: 47, column: 39, scope: !1777)
!1784 = !DILocation(line: 47, column: 59, scope: !1777)
!1785 = !DILocation(line: 47, column: 15, scope: !1778)
!1786 = !DILocation(line: 48, column: 13, scope: !1777)
!1787 = !DILocation(line: 71, column: 3, scope: !1761)
!1788 = distinct !DISubprogram(name: "imaxtostr", scope: !1789, file: !1789, line: 36, type: !1790, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !316, retainedNodes: !1792)
!1789 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!40, !319, !40}
!1792 = !{!1793, !1794, !1795}
!1793 = !DILocalVariable(name: "i", arg: 1, scope: !1788, file: !1789, line: 36, type: !319)
!1794 = !DILocalVariable(name: "buf", arg: 2, scope: !1788, file: !1789, line: 36, type: !40)
!1795 = !DILocalVariable(name: "p", scope: !1788, file: !1789, line: 38, type: !40)
!1796 = !DILocation(line: 36, column: 19, scope: !1788)
!1797 = !DILocation(line: 36, column: 28, scope: !1788)
!1798 = !DILocation(line: 38, column: 17, scope: !1788)
!1799 = !DILocation(line: 38, column: 9, scope: !1788)
!1800 = !DILocation(line: 39, column: 6, scope: !1788)
!1801 = !DILocation(line: 41, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1788, file: !1789, line: 41, column: 7)
!1803 = !DILocation(line: 41, column: 7, scope: !1788)
!1804 = !DILocation(line: 0, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !1789, line: 42, column: 5)
!1806 = !DILocation(line: 44, column: 24, scope: !1805)
!1807 = !DILocation(line: 44, column: 16, scope: !1805)
!1808 = !DILocation(line: 44, column: 10, scope: !1805)
!1809 = !DILocation(line: 44, column: 14, scope: !1805)
!1810 = !DILocation(line: 45, column: 17, scope: !1805)
!1811 = !DILocation(line: 45, column: 24, scope: !1805)
!1812 = !DILocation(line: 44, column: 9, scope: !1805)
!1813 = distinct !{!1813, !1814, !1815}
!1814 = !DILocation(line: 43, column: 7, scope: !1805)
!1815 = !DILocation(line: 45, column: 28, scope: !1805)
!1816 = !DILocation(line: 47, column: 8, scope: !1805)
!1817 = !DILocation(line: 47, column: 12, scope: !1805)
!1818 = !DILocation(line: 48, column: 5, scope: !1805)
!1819 = !DILocation(line: 0, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1802, file: !1789, line: 50, column: 5)
!1821 = !DILocation(line: 52, column: 24, scope: !1820)
!1822 = !DILocation(line: 52, column: 16, scope: !1820)
!1823 = !DILocation(line: 52, column: 10, scope: !1820)
!1824 = !DILocation(line: 52, column: 14, scope: !1820)
!1825 = !DILocation(line: 53, column: 17, scope: !1820)
!1826 = !DILocation(line: 53, column: 24, scope: !1820)
!1827 = !DILocation(line: 52, column: 9, scope: !1820)
!1828 = distinct !{!1828, !1829, !1830}
!1829 = !DILocation(line: 51, column: 7, scope: !1820)
!1830 = !DILocation(line: 53, column: 28, scope: !1820)
!1831 = !DILocation(line: 56, column: 3, scope: !1788)
!1832 = distinct !DISubprogram(name: "set_program_name", scope: !254, file: !254, line: 39, type: !780, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !1833)
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "argv0", arg: 1, scope: !1832, file: !254, line: 39, type: !69)
!1835 = !DILocalVariable(name: "slash", scope: !1832, file: !254, line: 46, type: !69)
!1836 = !DILocalVariable(name: "base", scope: !1832, file: !254, line: 47, type: !69)
!1837 = !DILocation(line: 39, column: 31, scope: !1832)
!1838 = !DILocation(line: 51, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !254, line: 51, column: 7)
!1840 = !DILocation(line: 51, column: 7, scope: !1832)
!1841 = !DILocation(line: 55, column: 14, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !254, line: 52, column: 5)
!1843 = !DILocation(line: 54, column: 7, scope: !1842)
!1844 = !DILocation(line: 56, column: 7, scope: !1842)
!1845 = !DILocation(line: 59, column: 11, scope: !1832)
!1846 = !DILocation(line: 46, column: 15, scope: !1832)
!1847 = !DILocation(line: 60, column: 17, scope: !1832)
!1848 = !DILocation(line: 60, column: 33, scope: !1832)
!1849 = !DILocation(line: 60, column: 11, scope: !1832)
!1850 = !DILocation(line: 47, column: 15, scope: !1832)
!1851 = !DILocation(line: 61, column: 12, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1832, file: !254, line: 61, column: 7)
!1853 = !DILocation(line: 61, column: 20, scope: !1852)
!1854 = !DILocation(line: 61, column: 25, scope: !1852)
!1855 = !DILocation(line: 61, column: 42, scope: !1852)
!1856 = !DILocation(line: 61, column: 28, scope: !1852)
!1857 = !DILocation(line: 61, column: 61, scope: !1852)
!1858 = !DILocation(line: 61, column: 7, scope: !1832)
!1859 = !DILocation(line: 64, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !254, line: 64, column: 11)
!1861 = distinct !DILexicalBlock(scope: !1852, file: !254, line: 62, column: 5)
!1862 = !DILocation(line: 64, column: 36, scope: !1860)
!1863 = !DILocation(line: 64, column: 11, scope: !1861)
!1864 = !DILocation(line: 66, column: 24, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !254, line: 65, column: 9)
!1866 = !DILocation(line: 70, column: 41, scope: !1865)
!1867 = !DILocation(line: 72, column: 9, scope: !1865)
!1868 = !DILocation(line: 84, column: 16, scope: !1832)
!1869 = !DILocation(line: 90, column: 27, scope: !1832)
!1870 = !DILocation(line: 92, column: 1, scope: !1832)
!1871 = distinct !DISubprogram(name: "clone_quoting_options", scope: !269, file: !269, line: 122, type: !1872, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1875)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1874, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1875 = !{!1876, !1877, !1878}
!1876 = !DILocalVariable(name: "o", arg: 1, scope: !1871, file: !269, line: 122, type: !1874)
!1877 = !DILocalVariable(name: "e", scope: !1871, file: !269, line: 124, type: !44)
!1878 = !DILocalVariable(name: "p", scope: !1871, file: !269, line: 125, type: !1874)
!1879 = !DILocation(line: 122, column: 48, scope: !1871)
!1880 = !DILocation(line: 124, column: 11, scope: !1871)
!1881 = !DILocation(line: 124, column: 7, scope: !1871)
!1882 = !DILocation(line: 125, column: 40, scope: !1871)
!1883 = !DILocation(line: 125, column: 31, scope: !1871)
!1884 = !DILocation(line: 125, column: 27, scope: !1871)
!1885 = !DILocation(line: 127, column: 9, scope: !1871)
!1886 = !DILocation(line: 128, column: 3, scope: !1871)
!1887 = distinct !DISubprogram(name: "get_quoting_style", scope: !269, file: !269, line: 133, type: !1888, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1892)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!5, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "o", arg: 1, scope: !1887, file: !269, line: 133, type: !1890)
!1894 = !DILocation(line: 133, column: 50, scope: !1887)
!1895 = !DILocation(line: 135, column: 11, scope: !1887)
!1896 = !DILocation(line: 135, column: 46, scope: !1887)
!1897 = !{!1898, !807, i64 0}
!1898 = !{!"quoting_options", !807, i64 0, !997, i64 4, !807, i64 8, !806, i64 40, !806, i64 48}
!1899 = !DILocation(line: 135, column: 3, scope: !1887)
!1900 = distinct !DISubprogram(name: "set_quoting_style", scope: !269, file: !269, line: 141, type: !1901, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1874, !5}
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "o", arg: 1, scope: !1900, file: !269, line: 141, type: !1874)
!1905 = !DILocalVariable(name: "s", arg: 2, scope: !1900, file: !269, line: 141, type: !5)
!1906 = !DILocation(line: 141, column: 44, scope: !1900)
!1907 = !DILocation(line: 141, column: 66, scope: !1900)
!1908 = !DILocation(line: 143, column: 4, scope: !1900)
!1909 = !DILocation(line: 143, column: 39, scope: !1900)
!1910 = !DILocation(line: 143, column: 45, scope: !1900)
!1911 = !DILocation(line: 144, column: 1, scope: !1900)
!1912 = distinct !DISubprogram(name: "set_char_quoting", scope: !269, file: !269, line: 152, type: !1913, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!44, !1874, !41, !44}
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1922, !1923}
!1916 = !DILocalVariable(name: "o", arg: 1, scope: !1912, file: !269, line: 152, type: !1874)
!1917 = !DILocalVariable(name: "c", arg: 2, scope: !1912, file: !269, line: 152, type: !41)
!1918 = !DILocalVariable(name: "i", arg: 3, scope: !1912, file: !269, line: 152, type: !44)
!1919 = !DILocalVariable(name: "uc", scope: !1912, file: !269, line: 154, type: !43)
!1920 = !DILocalVariable(name: "p", scope: !1912, file: !269, line: 155, type: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1922 = !DILocalVariable(name: "shift", scope: !1912, file: !269, line: 157, type: !44)
!1923 = !DILocalVariable(name: "r", scope: !1912, file: !269, line: 158, type: !44)
!1924 = !DILocation(line: 152, column: 43, scope: !1912)
!1925 = !DILocation(line: 152, column: 51, scope: !1912)
!1926 = !DILocation(line: 152, column: 58, scope: !1912)
!1927 = !DILocation(line: 154, column: 17, scope: !1912)
!1928 = !DILocation(line: 156, column: 6, scope: !1912)
!1929 = !DILocation(line: 156, column: 62, scope: !1912)
!1930 = !DILocation(line: 156, column: 57, scope: !1912)
!1931 = !DILocation(line: 155, column: 17, scope: !1912)
!1932 = !DILocation(line: 157, column: 15, scope: !1912)
!1933 = !DILocation(line: 157, column: 7, scope: !1912)
!1934 = !DILocation(line: 158, column: 12, scope: !1912)
!1935 = !DILocation(line: 158, column: 15, scope: !1912)
!1936 = !DILocation(line: 158, column: 25, scope: !1912)
!1937 = !DILocation(line: 158, column: 7, scope: !1912)
!1938 = !DILocation(line: 159, column: 13, scope: !1912)
!1939 = !DILocation(line: 159, column: 18, scope: !1912)
!1940 = !DILocation(line: 159, column: 23, scope: !1912)
!1941 = !DILocation(line: 159, column: 6, scope: !1912)
!1942 = !DILocation(line: 160, column: 3, scope: !1912)
!1943 = distinct !DISubprogram(name: "set_quoting_flags", scope: !269, file: !269, line: 168, type: !1944, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!44, !1874, !44}
!1946 = !{!1947, !1948, !1949}
!1947 = !DILocalVariable(name: "o", arg: 1, scope: !1943, file: !269, line: 168, type: !1874)
!1948 = !DILocalVariable(name: "i", arg: 2, scope: !1943, file: !269, line: 168, type: !44)
!1949 = !DILocalVariable(name: "r", scope: !1943, file: !269, line: 170, type: !44)
!1950 = !DILocation(line: 168, column: 44, scope: !1943)
!1951 = !DILocation(line: 168, column: 51, scope: !1943)
!1952 = !DILocation(line: 171, column: 8, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1943, file: !269, line: 171, column: 7)
!1954 = !DILocation(line: 171, column: 7, scope: !1943)
!1955 = !DILocation(line: 173, column: 10, scope: !1943)
!1956 = !{!1898, !997, i64 4}
!1957 = !DILocation(line: 170, column: 7, scope: !1943)
!1958 = !DILocation(line: 174, column: 12, scope: !1943)
!1959 = !DILocation(line: 175, column: 3, scope: !1943)
!1960 = distinct !DISubprogram(name: "set_custom_quoting", scope: !269, file: !269, line: 179, type: !1961, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1874, !69, !69}
!1963 = !{!1964, !1965, !1966}
!1964 = !DILocalVariable(name: "o", arg: 1, scope: !1960, file: !269, line: 179, type: !1874)
!1965 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1960, file: !269, line: 180, type: !69)
!1966 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1960, file: !269, line: 180, type: !69)
!1967 = !DILocation(line: 179, column: 45, scope: !1960)
!1968 = !DILocation(line: 180, column: 33, scope: !1960)
!1969 = !DILocation(line: 180, column: 57, scope: !1960)
!1970 = !DILocation(line: 182, column: 8, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1960, file: !269, line: 182, column: 7)
!1972 = !DILocation(line: 182, column: 7, scope: !1960)
!1973 = !DILocation(line: 184, column: 6, scope: !1960)
!1974 = !DILocation(line: 184, column: 12, scope: !1960)
!1975 = !DILocation(line: 185, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1960, file: !269, line: 185, column: 7)
!1977 = !DILocation(line: 185, column: 23, scope: !1976)
!1978 = !DILocation(line: 185, column: 19, scope: !1976)
!1979 = !DILocation(line: 186, column: 5, scope: !1976)
!1980 = !DILocation(line: 187, column: 6, scope: !1960)
!1981 = !DILocation(line: 187, column: 17, scope: !1960)
!1982 = !{!1898, !806, i64 40}
!1983 = !DILocation(line: 188, column: 6, scope: !1960)
!1984 = !DILocation(line: 188, column: 18, scope: !1960)
!1985 = !{!1898, !806, i64 48}
!1986 = !DILocation(line: 189, column: 1, scope: !1960)
!1987 = distinct !DISubprogram(name: "quotearg_buffer", scope: !269, file: !269, line: 784, type: !1988, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!45, !40, !45, !69, !45, !1890}
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1991 = !DILocalVariable(name: "buffer", arg: 1, scope: !1987, file: !269, line: 784, type: !40)
!1992 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1987, file: !269, line: 784, type: !45)
!1993 = !DILocalVariable(name: "arg", arg: 3, scope: !1987, file: !269, line: 785, type: !69)
!1994 = !DILocalVariable(name: "argsize", arg: 4, scope: !1987, file: !269, line: 785, type: !45)
!1995 = !DILocalVariable(name: "o", arg: 5, scope: !1987, file: !269, line: 786, type: !1890)
!1996 = !DILocalVariable(name: "p", scope: !1987, file: !269, line: 788, type: !1890)
!1997 = !DILocalVariable(name: "e", scope: !1987, file: !269, line: 789, type: !44)
!1998 = !DILocalVariable(name: "r", scope: !1987, file: !269, line: 790, type: !45)
!1999 = !DILocation(line: 784, column: 24, scope: !1987)
!2000 = !DILocation(line: 784, column: 39, scope: !1987)
!2001 = !DILocation(line: 785, column: 30, scope: !1987)
!2002 = !DILocation(line: 785, column: 42, scope: !1987)
!2003 = !DILocation(line: 786, column: 48, scope: !1987)
!2004 = !DILocation(line: 788, column: 37, scope: !1987)
!2005 = !DILocation(line: 788, column: 33, scope: !1987)
!2006 = !DILocation(line: 789, column: 11, scope: !1987)
!2007 = !DILocation(line: 789, column: 7, scope: !1987)
!2008 = !DILocation(line: 791, column: 43, scope: !1987)
!2009 = !DILocation(line: 791, column: 53, scope: !1987)
!2010 = !DILocation(line: 791, column: 60, scope: !1987)
!2011 = !DILocation(line: 792, column: 43, scope: !1987)
!2012 = !DILocation(line: 792, column: 58, scope: !1987)
!2013 = !DILocation(line: 790, column: 14, scope: !1987)
!2014 = !DILocation(line: 790, column: 10, scope: !1987)
!2015 = !DILocation(line: 793, column: 9, scope: !1987)
!2016 = !DILocation(line: 794, column: 3, scope: !1987)
!2017 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !269, file: !269, line: 256, type: !2018, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2022)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!45, !40, !45, !69, !45, !5, !44, !2020, !69, !69}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2047, !2048, !2049, !2050, !2051, !2054, !2055, !2070, !2073, !2074, !2081}
!2023 = !DILocalVariable(name: "buffer", arg: 1, scope: !2017, file: !269, line: 256, type: !40)
!2024 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2017, file: !269, line: 256, type: !45)
!2025 = !DILocalVariable(name: "arg", arg: 3, scope: !2017, file: !269, line: 257, type: !69)
!2026 = !DILocalVariable(name: "argsize", arg: 4, scope: !2017, file: !269, line: 257, type: !45)
!2027 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2017, file: !269, line: 258, type: !5)
!2028 = !DILocalVariable(name: "flags", arg: 6, scope: !2017, file: !269, line: 258, type: !44)
!2029 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2017, file: !269, line: 259, type: !2020)
!2030 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2017, file: !269, line: 260, type: !69)
!2031 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2017, file: !269, line: 261, type: !69)
!2032 = !DILocalVariable(name: "i", scope: !2017, file: !269, line: 263, type: !45)
!2033 = !DILocalVariable(name: "len", scope: !2017, file: !269, line: 264, type: !45)
!2034 = !DILocalVariable(name: "orig_buffersize", scope: !2017, file: !269, line: 265, type: !45)
!2035 = !DILocalVariable(name: "quote_string", scope: !2017, file: !269, line: 266, type: !69)
!2036 = !DILocalVariable(name: "quote_string_len", scope: !2017, file: !269, line: 267, type: !45)
!2037 = !DILocalVariable(name: "backslash_escapes", scope: !2017, file: !269, line: 268, type: !52)
!2038 = !DILocalVariable(name: "unibyte_locale", scope: !2017, file: !269, line: 269, type: !52)
!2039 = !DILocalVariable(name: "elide_outer_quotes", scope: !2017, file: !269, line: 270, type: !52)
!2040 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2017, file: !269, line: 271, type: !52)
!2041 = !DILocalVariable(name: "encountered_single_quote", scope: !2017, file: !269, line: 272, type: !52)
!2042 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2017, file: !269, line: 273, type: !52)
!2043 = !DILocalVariable(name: "c", scope: !2044, file: !269, line: 402, type: !43)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !269, line: 401, column: 5)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !269, line: 400, column: 3)
!2046 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 400, column: 3)
!2047 = !DILocalVariable(name: "esc", scope: !2044, file: !269, line: 403, type: !43)
!2048 = !DILocalVariable(name: "is_right_quote", scope: !2044, file: !269, line: 404, type: !52)
!2049 = !DILocalVariable(name: "escaping", scope: !2044, file: !269, line: 405, type: !52)
!2050 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2044, file: !269, line: 406, type: !52)
!2051 = !DILocalVariable(name: "m", scope: !2052, file: !269, line: 610, type: !45)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 608, column: 11)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 426, column: 9)
!2054 = !DILocalVariable(name: "printable", scope: !2052, file: !269, line: 612, type: !52)
!2055 = !DILocalVariable(name: "mbstate", scope: !2056, file: !269, line: 621, type: !2058)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !269, line: 620, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !269, line: 614, column: 17)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2059, line: 6, baseType: !2060)
!2059 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2061, line: 21, baseType: !2062)
!2061 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2061, line: 13, size: 64, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2062, file: !2061, line: 15, baseType: !44, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2062, file: !2061, line: 20, baseType: !2066, size: 32, offset: 32)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2062, file: !2061, line: 16, size: 32, elements: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2066, file: !2061, line: 18, baseType: !7, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2066, file: !2061, line: 19, baseType: !117, size: 32)
!2070 = !DILocalVariable(name: "w", scope: !2071, file: !269, line: 631, type: !2072)
!2071 = distinct !DILexicalBlock(scope: !2056, file: !269, line: 630, column: 19)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !46, line: 90, baseType: !44)
!2073 = !DILocalVariable(name: "bytes", scope: !2071, file: !269, line: 632, type: !45)
!2074 = !DILocalVariable(name: "j", scope: !2075, file: !269, line: 657, type: !45)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !269, line: 656, column: 27)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !269, line: 654, column: 29)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !269, line: 649, column: 23)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !269, line: 641, column: 30)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !269, line: 636, column: 30)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !269, line: 634, column: 25)
!2081 = !DILocalVariable(name: "ilim", scope: !2082, file: !269, line: 684, type: !45)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !269, line: 681, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2052, file: !269, line: 680, column: 17)
!2084 = !DILocation(line: 256, column: 33, scope: !2017)
!2085 = !DILocation(line: 256, column: 48, scope: !2017)
!2086 = !DILocation(line: 257, column: 39, scope: !2017)
!2087 = !DILocation(line: 257, column: 51, scope: !2017)
!2088 = !DILocation(line: 258, column: 46, scope: !2017)
!2089 = !DILocation(line: 258, column: 65, scope: !2017)
!2090 = !DILocation(line: 259, column: 47, scope: !2017)
!2091 = !DILocation(line: 260, column: 39, scope: !2017)
!2092 = !DILocation(line: 261, column: 39, scope: !2017)
!2093 = !DILocation(line: 264, column: 10, scope: !2017)
!2094 = !DILocation(line: 265, column: 10, scope: !2017)
!2095 = !DILocation(line: 266, column: 15, scope: !2017)
!2096 = !DILocation(line: 267, column: 10, scope: !2017)
!2097 = !DILocation(line: 268, column: 8, scope: !2017)
!2098 = !DILocation(line: 269, column: 25, scope: !2017)
!2099 = !DILocation(line: 269, column: 36, scope: !2017)
!2100 = !DILocation(line: 270, column: 8, scope: !2017)
!2101 = !DILocation(line: 271, column: 8, scope: !2017)
!2102 = !DILocation(line: 272, column: 8, scope: !2017)
!2103 = !DILocation(line: 273, column: 8, scope: !2017)
!2104 = !DILocation(line: 273, column: 3, scope: !2017)
!2105 = !DILocation(line: 0, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 317, column: 5)
!2107 = !DILocation(line: 316, column: 3, scope: !2017)
!2108 = !DILocation(line: 323, column: 11, scope: !2106)
!2109 = !DILocation(line: 323, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !269, line: 323, column: 11)
!2111 = !DILocation(line: 324, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !269, line: 324, column: 9)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !269, line: 324, column: 9)
!2114 = !DILocation(line: 324, column: 9, scope: !2113)
!2115 = !DILocation(line: 362, column: 26, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !269, line: 340, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !269, line: 339, column: 13)
!2118 = distinct !DILexicalBlock(scope: !2106, file: !269, line: 338, column: 7)
!2119 = !DILocation(line: 363, column: 27, scope: !2116)
!2120 = !DILocation(line: 364, column: 11, scope: !2116)
!2121 = !DILocation(line: 365, column: 14, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !269, line: 365, column: 13)
!2123 = !DILocation(line: 365, column: 13, scope: !2118)
!2124 = !DILocation(line: 366, column: 43, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !269, line: 366, column: 11)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !269, line: 366, column: 11)
!2127 = !DILocation(line: 366, column: 11, scope: !2126)
!2128 = !DILocation(line: 367, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !269, line: 367, column: 13)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !269, line: 367, column: 13)
!2131 = !DILocation(line: 367, column: 13, scope: !2130)
!2132 = !DILocation(line: 366, column: 70, scope: !2125)
!2133 = distinct !{!2133, !2127, !2134}
!2134 = !DILocation(line: 367, column: 13, scope: !2126)
!2135 = !DILocation(line: 370, column: 28, scope: !2118)
!2136 = !DILocation(line: 372, column: 7, scope: !2106)
!2137 = !DILocation(line: 376, column: 7, scope: !2106)
!2138 = !DILocation(line: 379, column: 7, scope: !2106)
!2139 = !DILocation(line: 381, column: 12, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2106, file: !269, line: 381, column: 11)
!2141 = !DILocation(line: 381, column: 11, scope: !2106)
!2142 = !DILocation(line: 0, scope: !2140)
!2143 = !DILocation(line: 386, column: 12, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2106, file: !269, line: 386, column: 11)
!2145 = !DILocation(line: 386, column: 11, scope: !2106)
!2146 = !DILocation(line: 387, column: 9, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !269, line: 387, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !269, line: 387, column: 9)
!2149 = !DILocation(line: 387, column: 9, scope: !2148)
!2150 = !DILocation(line: 394, column: 7, scope: !2106)
!2151 = !DILocation(line: 397, column: 7, scope: !2106)
!2152 = !DILocation(line: 0, scope: !2017)
!2153 = !DILocation(line: 263, column: 10, scope: !2017)
!2154 = !DILocation(line: 400, column: 8, scope: !2046)
!2155 = !DILocation(line: 0, scope: !2045)
!2156 = !DILocation(line: 400, column: 27, scope: !2045)
!2157 = !DILocation(line: 400, column: 19, scope: !2045)
!2158 = !DILocation(line: 400, column: 41, scope: !2045)
!2159 = !DILocation(line: 400, column: 48, scope: !2045)
!2160 = !DILocation(line: 400, column: 3, scope: !2046)
!2161 = !DILocation(line: 400, column: 60, scope: !2045)
!2162 = !DILocation(line: 404, column: 12, scope: !2044)
!2163 = !DILocation(line: 405, column: 12, scope: !2044)
!2164 = !DILocation(line: 406, column: 12, scope: !2044)
!2165 = !DILocation(line: 409, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 408, column: 11)
!2167 = !DILocation(line: 411, column: 17, scope: !2166)
!2168 = !DILocation(line: 412, column: 39, scope: !2166)
!2169 = !DILocation(line: 416, column: 32, scope: !2166)
!2170 = !DILocation(line: 412, column: 19, scope: !2166)
!2171 = !DILocation(line: 412, column: 15, scope: !2166)
!2172 = !DILocation(line: 417, column: 11, scope: !2166)
!2173 = !DILocation(line: 417, column: 26, scope: !2166)
!2174 = !DILocation(line: 417, column: 14, scope: !2166)
!2175 = !DILocation(line: 417, column: 63, scope: !2166)
!2176 = !DILocation(line: 408, column: 11, scope: !2044)
!2177 = !DILocation(line: 0, scope: !2044)
!2178 = !DILocation(line: 424, column: 11, scope: !2044)
!2179 = !DILocation(line: 402, column: 21, scope: !2044)
!2180 = !DILocation(line: 425, column: 7, scope: !2044)
!2181 = !DILocation(line: 428, column: 15, scope: !2053)
!2182 = !DILocation(line: 430, column: 15, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !269, line: 430, column: 15)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !269, line: 429, column: 13)
!2185 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 428, column: 15)
!2186 = !DILocation(line: 430, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !269, line: 430, column: 15)
!2188 = !DILocation(line: 430, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !269, line: 430, column: 15)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !269, line: 430, column: 15)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !269, line: 430, column: 15)
!2192 = !DILocation(line: 430, column: 15, scope: !2190)
!2193 = !DILocation(line: 430, column: 15, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !269, line: 430, column: 15)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !269, line: 430, column: 15)
!2196 = !DILocation(line: 430, column: 15, scope: !2195)
!2197 = !DILocation(line: 430, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !269, line: 430, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2191, file: !269, line: 430, column: 15)
!2200 = !DILocation(line: 430, column: 15, scope: !2199)
!2201 = !DILocation(line: 430, column: 15, scope: !2191)
!2202 = !DILocation(line: 430, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !269, line: 430, column: 15)
!2204 = distinct !DILexicalBlock(scope: !2183, file: !269, line: 430, column: 15)
!2205 = !DILocation(line: 430, column: 15, scope: !2204)
!2206 = !DILocation(line: 438, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2184, file: !269, line: 437, column: 19)
!2208 = !DILocation(line: 438, column: 24, scope: !2207)
!2209 = !DILocation(line: 438, column: 28, scope: !2207)
!2210 = !DILocation(line: 438, column: 38, scope: !2207)
!2211 = !DILocation(line: 438, column: 48, scope: !2207)
!2212 = !DILocation(line: 438, column: 59, scope: !2207)
!2213 = !DILocation(line: 440, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !269, line: 440, column: 19)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !269, line: 440, column: 19)
!2216 = distinct !DILexicalBlock(scope: !2207, file: !269, line: 439, column: 17)
!2217 = !DILocation(line: 440, column: 19, scope: !2215)
!2218 = !DILocation(line: 441, column: 19, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !269, line: 441, column: 19)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !269, line: 441, column: 19)
!2221 = !DILocation(line: 441, column: 19, scope: !2220)
!2222 = !DILocation(line: 442, column: 17, scope: !2216)
!2223 = !DILocation(line: 449, column: 20, scope: !2185)
!2224 = !DILocation(line: 454, column: 11, scope: !2053)
!2225 = !DILocation(line: 457, column: 19, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 455, column: 13)
!2227 = !DILocation(line: 463, column: 19, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2226, file: !269, line: 462, column: 19)
!2229 = !DILocation(line: 463, column: 24, scope: !2228)
!2230 = !DILocation(line: 463, column: 28, scope: !2228)
!2231 = !DILocation(line: 463, column: 38, scope: !2228)
!2232 = !DILocation(line: 463, column: 47, scope: !2228)
!2233 = !DILocation(line: 463, column: 41, scope: !2228)
!2234 = !DILocation(line: 463, column: 52, scope: !2228)
!2235 = !DILocation(line: 462, column: 19, scope: !2226)
!2236 = !DILocation(line: 464, column: 25, scope: !2228)
!2237 = !DILocation(line: 464, column: 17, scope: !2228)
!2238 = !DILocation(line: 471, column: 25, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2228, file: !269, line: 465, column: 19)
!2240 = !DILocation(line: 475, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !269, line: 475, column: 21)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !269, line: 475, column: 21)
!2243 = !DILocation(line: 475, column: 21, scope: !2242)
!2244 = !DILocation(line: 476, column: 21, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !269, line: 476, column: 21)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !269, line: 476, column: 21)
!2247 = !DILocation(line: 476, column: 21, scope: !2246)
!2248 = !DILocation(line: 477, column: 21, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !269, line: 477, column: 21)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !269, line: 477, column: 21)
!2251 = !DILocation(line: 477, column: 21, scope: !2250)
!2252 = !DILocation(line: 478, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !269, line: 478, column: 21)
!2254 = distinct !DILexicalBlock(scope: !2239, file: !269, line: 478, column: 21)
!2255 = !DILocation(line: 478, column: 21, scope: !2254)
!2256 = !DILocation(line: 479, column: 21, scope: !2239)
!2257 = !DILocation(line: 403, column: 21, scope: !2044)
!2258 = !DILocation(line: 492, column: 31, scope: !2053)
!2259 = !DILocation(line: 493, column: 31, scope: !2053)
!2260 = !DILocation(line: 495, column: 31, scope: !2053)
!2261 = !DILocation(line: 496, column: 31, scope: !2053)
!2262 = !DILocation(line: 497, column: 31, scope: !2053)
!2263 = !DILocation(line: 500, column: 15, scope: !2053)
!2264 = !DILocation(line: 502, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !269, line: 501, column: 13)
!2266 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 500, column: 15)
!2267 = !DILocation(line: 509, column: 33, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 509, column: 15)
!2269 = !DILocation(line: 0, scope: !2053)
!2270 = !DILocation(line: 514, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 513, column: 15)
!2272 = !DILocation(line: 518, column: 15, scope: !2053)
!2273 = !DILocation(line: 526, column: 26, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 526, column: 15)
!2275 = !DILocation(line: 526, column: 15, scope: !2053)
!2276 = !DILocation(line: 526, column: 40, scope: !2274)
!2277 = !DILocation(line: 526, column: 47, scope: !2274)
!2278 = !DILocation(line: 530, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 530, column: 15)
!2280 = !DILocation(line: 526, column: 18, scope: !2274)
!2281 = !DILocation(line: 526, column: 65, scope: !2274)
!2282 = !DILocation(line: 530, column: 15, scope: !2053)
!2283 = !DILocation(line: 535, column: 11, scope: !2053)
!2284 = !DILocation(line: 549, column: 15, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 548, column: 15)
!2286 = !DILocation(line: 556, column: 15, scope: !2053)
!2287 = !DILocation(line: 558, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !269, line: 557, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 556, column: 15)
!2290 = !DILocation(line: 561, column: 19, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !269, line: 561, column: 19)
!2292 = !DILocation(line: 561, column: 35, scope: !2291)
!2293 = !DILocation(line: 561, column: 30, scope: !2291)
!2294 = !DILocation(line: 570, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !269, line: 570, column: 15)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !269, line: 570, column: 15)
!2297 = !DILocation(line: 570, column: 15, scope: !2296)
!2298 = !DILocation(line: 571, column: 15, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !269, line: 571, column: 15)
!2300 = distinct !DILexicalBlock(scope: !2288, file: !269, line: 571, column: 15)
!2301 = !DILocation(line: 571, column: 15, scope: !2300)
!2302 = !DILocation(line: 572, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !269, line: 572, column: 15)
!2304 = distinct !DILexicalBlock(scope: !2288, file: !269, line: 572, column: 15)
!2305 = !DILocation(line: 572, column: 15, scope: !2304)
!2306 = !DILocation(line: 574, column: 13, scope: !2288)
!2307 = !DILocation(line: 614, column: 17, scope: !2052)
!2308 = !DILocation(line: 610, column: 20, scope: !2052)
!2309 = !DILocation(line: 617, column: 29, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2057, file: !269, line: 615, column: 15)
!2311 = !DILocation(line: 617, column: 27, scope: !2310)
!2312 = !DILocation(line: 612, column: 18, scope: !2052)
!2313 = !DILocation(line: 618, column: 15, scope: !2310)
!2314 = !DILocation(line: 621, column: 17, scope: !2056)
!2315 = !DILocation(line: 622, column: 17, scope: !2056)
!2316 = !DILocation(line: 626, column: 29, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2056, file: !269, line: 626, column: 21)
!2318 = !DILocation(line: 626, column: 21, scope: !2056)
!2319 = !DILocation(line: 627, column: 29, scope: !2317)
!2320 = !DILocation(line: 627, column: 19, scope: !2317)
!2321 = !DILocation(line: 0, scope: !2166)
!2322 = !DILocation(line: 629, column: 17, scope: !2056)
!2323 = !DILocation(line: 624, column: 19, scope: !2056)
!2324 = !DILocation(line: 625, column: 27, scope: !2056)
!2325 = !DILocation(line: 631, column: 21, scope: !2071)
!2326 = !DILocation(line: 632, column: 56, scope: !2071)
!2327 = !DILocation(line: 632, column: 50, scope: !2071)
!2328 = !DILocation(line: 633, column: 53, scope: !2071)
!2329 = !DILocation(line: 621, column: 27, scope: !2056)
!2330 = !DILocation(line: 631, column: 29, scope: !2071)
!2331 = !DILocation(line: 632, column: 36, scope: !2071)
!2332 = !DILocation(line: 632, column: 28, scope: !2071)
!2333 = !DILocation(line: 634, column: 25, scope: !2071)
!2334 = !DILocation(line: 644, column: 38, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2078, file: !269, line: 642, column: 23)
!2336 = !DILocation(line: 644, column: 48, scope: !2335)
!2337 = !DILocation(line: 644, column: 51, scope: !2335)
!2338 = !DILocation(line: 644, column: 25, scope: !2335)
!2339 = !DILocation(line: 645, column: 28, scope: !2335)
!2340 = !DILocation(line: 644, column: 34, scope: !2335)
!2341 = distinct !{!2341, !2338, !2339}
!2342 = !DILocation(line: 658, column: 43, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !269, line: 658, column: 29)
!2344 = distinct !DILexicalBlock(scope: !2075, file: !269, line: 658, column: 29)
!2345 = !DILocation(line: 655, column: 29, scope: !2076)
!2346 = !DILocation(line: 657, column: 36, scope: !2075)
!2347 = !DILocation(line: 659, column: 49, scope: !2343)
!2348 = !DILocation(line: 659, column: 39, scope: !2343)
!2349 = !DILocation(line: 659, column: 31, scope: !2343)
!2350 = !DILocation(line: 658, column: 53, scope: !2343)
!2351 = !DILocation(line: 658, column: 29, scope: !2344)
!2352 = distinct !{!2352, !2351, !2353}
!2353 = !DILocation(line: 667, column: 33, scope: !2344)
!2354 = !DILocation(line: 674, column: 19, scope: !2056)
!2355 = !DILocation(line: 670, column: 41, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2077, file: !269, line: 670, column: 29)
!2357 = !DILocation(line: 670, column: 31, scope: !2356)
!2358 = !DILocation(line: 670, column: 29, scope: !2077)
!2359 = !DILocation(line: 672, column: 27, scope: !2077)
!2360 = !DILocation(line: 675, column: 26, scope: !2056)
!2361 = !DILocation(line: 675, column: 24, scope: !2056)
!2362 = !DILocation(line: 674, column: 19, scope: !2071)
!2363 = distinct !{!2363, !2322, !2364}
!2364 = !DILocation(line: 675, column: 44, scope: !2056)
!2365 = !DILocation(line: 676, column: 15, scope: !2057)
!2366 = !DILocation(line: 0, scope: !2317)
!2367 = !DILocation(line: 0, scope: !2056)
!2368 = !DILocation(line: 678, column: 40, scope: !2052)
!2369 = !DILocation(line: 680, column: 19, scope: !2083)
!2370 = !DILocation(line: 680, column: 45, scope: !2083)
!2371 = !DILocation(line: 680, column: 23, scope: !2083)
!2372 = !DILocation(line: 684, column: 33, scope: !2082)
!2373 = !DILocation(line: 684, column: 24, scope: !2082)
!2374 = !DILocation(line: 686, column: 17, scope: !2082)
!2375 = !DILocation(line: 0, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !269, line: 687, column: 19)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !269, line: 686, column: 17)
!2378 = distinct !DILexicalBlock(scope: !2082, file: !269, line: 686, column: 17)
!2379 = !DILocation(line: 0, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !269, line: 703, column: 21)
!2381 = !DILocation(line: 0, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !269, line: 696, column: 23)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !269, line: 695, column: 30)
!2384 = distinct !DILexicalBlock(scope: !2376, file: !269, line: 688, column: 25)
!2385 = !DILocation(line: 688, column: 43, scope: !2384)
!2386 = !DILocation(line: 690, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !269, line: 690, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !269, line: 689, column: 23)
!2389 = !DILocation(line: 690, column: 25, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !269, line: 690, column: 25)
!2391 = !DILocation(line: 690, column: 25, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !269, line: 690, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !269, line: 690, column: 25)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !269, line: 690, column: 25)
!2395 = !DILocation(line: 690, column: 25, scope: !2393)
!2396 = !DILocation(line: 690, column: 25, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !269, line: 690, column: 25)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !269, line: 690, column: 25)
!2399 = !DILocation(line: 690, column: 25, scope: !2398)
!2400 = !DILocation(line: 690, column: 25, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !269, line: 690, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2394, file: !269, line: 690, column: 25)
!2403 = !DILocation(line: 690, column: 25, scope: !2402)
!2404 = !DILocation(line: 690, column: 25, scope: !2394)
!2405 = !DILocation(line: 690, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !269, line: 690, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2387, file: !269, line: 690, column: 25)
!2408 = !DILocation(line: 690, column: 25, scope: !2407)
!2409 = !DILocation(line: 691, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !269, line: 691, column: 25)
!2411 = distinct !DILexicalBlock(scope: !2388, file: !269, line: 691, column: 25)
!2412 = !DILocation(line: 691, column: 25, scope: !2411)
!2413 = !DILocation(line: 692, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !269, line: 692, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2388, file: !269, line: 692, column: 25)
!2416 = !DILocation(line: 692, column: 25, scope: !2415)
!2417 = !DILocation(line: 693, column: 38, scope: !2388)
!2418 = !DILocation(line: 693, column: 33, scope: !2388)
!2419 = !DILocation(line: 694, column: 23, scope: !2388)
!2420 = !DILocation(line: 695, column: 30, scope: !2383)
!2421 = !DILocation(line: 695, column: 30, scope: !2384)
!2422 = !DILocation(line: 697, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !269, line: 697, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2382, file: !269, line: 697, column: 25)
!2425 = !DILocation(line: 697, column: 25, scope: !2424)
!2426 = !DILocation(line: 699, column: 23, scope: !2382)
!2427 = !DILocation(line: 0, scope: !2415)
!2428 = !DILocation(line: 0, scope: !2388)
!2429 = !DILocation(line: 0, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2166, file: !269, line: 418, column: 9)
!2431 = !DILocation(line: 0, scope: !2387)
!2432 = !DILocation(line: 700, column: 35, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2376, file: !269, line: 700, column: 25)
!2434 = !DILocation(line: 700, column: 30, scope: !2433)
!2435 = !DILocation(line: 700, column: 25, scope: !2376)
!2436 = !DILocation(line: 702, column: 21, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !269, line: 702, column: 21)
!2438 = distinct !DILexicalBlock(scope: !2376, file: !269, line: 702, column: 21)
!2439 = !DILocation(line: 702, column: 21, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !269, line: 702, column: 21)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !269, line: 702, column: 21)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !269, line: 702, column: 21)
!2443 = !DILocation(line: 702, column: 21, scope: !2441)
!2444 = !DILocation(line: 702, column: 21, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !269, line: 702, column: 21)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !269, line: 702, column: 21)
!2447 = !DILocation(line: 702, column: 21, scope: !2446)
!2448 = !DILocation(line: 702, column: 21, scope: !2442)
!2449 = !DILocation(line: 0, scope: !2424)
!2450 = !DILocation(line: 703, column: 21, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2380, file: !269, line: 703, column: 21)
!2452 = !DILocation(line: 703, column: 21, scope: !2380)
!2453 = !DILocation(line: 704, column: 25, scope: !2376)
!2454 = !DILocation(line: 686, column: 17, scope: !2377)
!2455 = distinct !{!2455, !2456, !2457}
!2456 = !DILocation(line: 686, column: 17, scope: !2378)
!2457 = !DILocation(line: 705, column: 19, scope: !2378)
!2458 = !DILocation(line: 0, scope: !2046)
!2459 = !DILocation(line: 416, column: 30, scope: !2166)
!2460 = !DILocation(line: 712, column: 34, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 712, column: 11)
!2462 = !DILocation(line: 714, column: 14, scope: !2461)
!2463 = !DILocation(line: 715, column: 14, scope: !2461)
!2464 = !DILocation(line: 715, column: 35, scope: !2461)
!2465 = !DILocation(line: 715, column: 17, scope: !2461)
!2466 = !DILocation(line: 715, column: 47, scope: !2461)
!2467 = !DILocation(line: 715, column: 65, scope: !2461)
!2468 = !DILocation(line: 716, column: 15, scope: !2461)
!2469 = !DILocation(line: 716, column: 11, scope: !2461)
!2470 = !DILocation(line: 712, column: 11, scope: !2044)
!2471 = !DILocation(line: 400, column: 10, scope: !2046)
!2472 = !DILocation(line: 0, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !269, line: 519, column: 13)
!2474 = distinct !DILexicalBlock(scope: !2053, file: !269, line: 518, column: 15)
!2475 = !DILocation(line: 720, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 720, column: 7)
!2477 = !DILocation(line: 720, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !269, line: 720, column: 7)
!2479 = !DILocation(line: 720, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !269, line: 720, column: 7)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !269, line: 720, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !269, line: 720, column: 7)
!2483 = !DILocation(line: 720, column: 7, scope: !2481)
!2484 = !DILocation(line: 720, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !269, line: 720, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !269, line: 720, column: 7)
!2487 = !DILocation(line: 720, column: 7, scope: !2486)
!2488 = !DILocation(line: 720, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !269, line: 720, column: 7)
!2490 = distinct !DILexicalBlock(scope: !2482, file: !269, line: 720, column: 7)
!2491 = !DILocation(line: 720, column: 7, scope: !2490)
!2492 = !DILocation(line: 720, column: 7, scope: !2482)
!2493 = !DILocation(line: 720, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !269, line: 720, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2476, file: !269, line: 720, column: 7)
!2496 = !DILocation(line: 720, column: 7, scope: !2495)
!2497 = !DILocation(line: 723, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !269, line: 723, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 723, column: 7)
!2500 = !DILocation(line: 424, column: 9, scope: !2044)
!2501 = !DILocation(line: 723, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !269, line: 723, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !269, line: 723, column: 7)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !269, line: 723, column: 7)
!2505 = !DILocation(line: 723, column: 7, scope: !2503)
!2506 = !DILocation(line: 723, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !269, line: 723, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !269, line: 723, column: 7)
!2509 = !DILocation(line: 723, column: 7, scope: !2508)
!2510 = !DILocation(line: 723, column: 7, scope: !2504)
!2511 = !DILocation(line: 724, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !269, line: 724, column: 7)
!2513 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 724, column: 7)
!2514 = !DILocation(line: 724, column: 7, scope: !2513)
!2515 = !DILocation(line: 726, column: 13, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2044, file: !269, line: 726, column: 11)
!2517 = !DILocation(line: 726, column: 11, scope: !2044)
!2518 = !DILocation(line: 728, column: 5, scope: !2045)
!2519 = !DILocation(line: 400, column: 75, scope: !2045)
!2520 = !DILocation(line: 400, column: 3, scope: !2045)
!2521 = distinct !{!2521, !2160, !2522}
!2522 = !DILocation(line: 728, column: 5, scope: !2046)
!2523 = !DILocation(line: 730, column: 11, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 730, column: 7)
!2525 = !DILocation(line: 730, column: 16, scope: !2524)
!2526 = !DILocation(line: 738, column: 51, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 738, column: 7)
!2528 = !DILocation(line: 739, column: 10, scope: !2527)
!2529 = !DILocation(line: 741, column: 11, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !269, line: 741, column: 11)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !269, line: 740, column: 5)
!2532 = !DILocation(line: 741, column: 11, scope: !2531)
!2533 = !DILocation(line: 742, column: 16, scope: !2530)
!2534 = !DILocation(line: 742, column: 9, scope: !2530)
!2535 = !DILocation(line: 746, column: 18, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !269, line: 746, column: 16)
!2537 = !DILocation(line: 746, column: 32, scope: !2536)
!2538 = !DILocation(line: 746, column: 29, scope: !2536)
!2539 = !DILocation(line: 755, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 755, column: 7)
!2541 = !DILocation(line: 755, column: 20, scope: !2540)
!2542 = !DILocation(line: 756, column: 12, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !269, line: 756, column: 5)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !269, line: 756, column: 5)
!2545 = !DILocation(line: 756, column: 5, scope: !2544)
!2546 = !DILocation(line: 757, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !269, line: 757, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !269, line: 757, column: 7)
!2549 = !DILocation(line: 757, column: 7, scope: !2548)
!2550 = !DILocation(line: 756, column: 39, scope: !2543)
!2551 = distinct !{!2551, !2545, !2552}
!2552 = !DILocation(line: 757, column: 7, scope: !2544)
!2553 = !DILocation(line: 759, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 759, column: 7)
!2555 = !DILocation(line: 759, column: 7, scope: !2017)
!2556 = !DILocation(line: 760, column: 5, scope: !2554)
!2557 = !DILocation(line: 760, column: 17, scope: !2554)
!2558 = !DILocation(line: 766, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2017, file: !269, line: 766, column: 7)
!2560 = !DILocation(line: 766, column: 54, scope: !2559)
!2561 = !DILocation(line: 766, column: 51, scope: !2559)
!2562 = !DILocation(line: 770, column: 42, scope: !2017)
!2563 = !DILocation(line: 768, column: 10, scope: !2017)
!2564 = !DILocation(line: 768, column: 3, scope: !2017)
!2565 = !DILocation(line: 772, column: 1, scope: !2017)
!2566 = distinct !DISubprogram(name: "gettext_quote", scope: !269, file: !269, line: 207, type: !2567, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!69, !69, !5}
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DILocalVariable(name: "msgid", arg: 1, scope: !2566, file: !269, line: 207, type: !69)
!2571 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !269, line: 207, type: !5)
!2572 = !DILocalVariable(name: "translation", scope: !2566, file: !269, line: 209, type: !69)
!2573 = !DILocalVariable(name: "locale_code", scope: !2566, file: !269, line: 210, type: !69)
!2574 = !DILocation(line: 207, column: 28, scope: !2566)
!2575 = !DILocation(line: 207, column: 54, scope: !2566)
!2576 = !DILocation(line: 209, column: 29, scope: !2566)
!2577 = !DILocation(line: 209, column: 15, scope: !2566)
!2578 = !DILocation(line: 212, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2566, file: !269, line: 212, column: 7)
!2580 = !DILocation(line: 212, column: 7, scope: !2566)
!2581 = !DILocation(line: 233, column: 17, scope: !2566)
!2582 = !DILocation(line: 210, column: 15, scope: !2566)
!2583 = !DILocalVariable(name: "s1", arg: 1, scope: !2584, file: !2585, line: 160, type: !69)
!2584 = distinct !DISubprogram(name: "strcaseeq0", scope: !2585, file: !2585, line: 160, type: !2586, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2588)
!2585 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!44, !69, !69, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2588 = !{!2583, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2589 = !DILocalVariable(name: "s2", arg: 2, scope: !2584, file: !2585, line: 160, type: !69)
!2590 = !DILocalVariable(name: "s20", arg: 3, scope: !2584, file: !2585, line: 160, type: !41)
!2591 = !DILocalVariable(name: "s21", arg: 4, scope: !2584, file: !2585, line: 160, type: !41)
!2592 = !DILocalVariable(name: "s22", arg: 5, scope: !2584, file: !2585, line: 160, type: !41)
!2593 = !DILocalVariable(name: "s23", arg: 6, scope: !2584, file: !2585, line: 160, type: !41)
!2594 = !DILocalVariable(name: "s24", arg: 7, scope: !2584, file: !2585, line: 160, type: !41)
!2595 = !DILocalVariable(name: "s25", arg: 8, scope: !2584, file: !2585, line: 160, type: !41)
!2596 = !DILocalVariable(name: "s26", arg: 9, scope: !2584, file: !2585, line: 160, type: !41)
!2597 = !DILocalVariable(name: "s27", arg: 10, scope: !2584, file: !2585, line: 160, type: !41)
!2598 = !DILocalVariable(name: "s28", arg: 11, scope: !2584, file: !2585, line: 160, type: !41)
!2599 = !DILocation(line: 160, column: 25, scope: !2584, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 234, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2566, file: !269, line: 234, column: 7)
!2602 = !DILocation(line: 160, column: 41, scope: !2584, inlinedAt: !2600)
!2603 = !DILocation(line: 160, column: 50, scope: !2584, inlinedAt: !2600)
!2604 = !DILocation(line: 160, column: 60, scope: !2584, inlinedAt: !2600)
!2605 = !DILocation(line: 160, column: 70, scope: !2584, inlinedAt: !2600)
!2606 = !DILocation(line: 160, column: 80, scope: !2584, inlinedAt: !2600)
!2607 = !DILocation(line: 160, column: 90, scope: !2584, inlinedAt: !2600)
!2608 = !DILocation(line: 160, column: 100, scope: !2584, inlinedAt: !2600)
!2609 = !DILocation(line: 160, column: 110, scope: !2584, inlinedAt: !2600)
!2610 = !DILocation(line: 160, column: 120, scope: !2584, inlinedAt: !2600)
!2611 = !DILocation(line: 160, column: 130, scope: !2584, inlinedAt: !2600)
!2612 = !DILocation(line: 162, column: 7, scope: !2613, inlinedAt: !2600)
!2613 = distinct !DILexicalBlock(scope: !2584, file: !2585, line: 162, column: 7)
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2615, file: !2585, line: 146, type: !69)
!2615 = distinct !DISubprogram(name: "strcaseeq1", scope: !2585, file: !2585, line: 146, type: !2616, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!44, !69, !69, !41, !41, !41, !41, !41, !41, !41, !41}
!2618 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2619 = !DILocalVariable(name: "s2", arg: 2, scope: !2615, file: !2585, line: 146, type: !69)
!2620 = !DILocalVariable(name: "s21", arg: 3, scope: !2615, file: !2585, line: 146, type: !41)
!2621 = !DILocalVariable(name: "s22", arg: 4, scope: !2615, file: !2585, line: 146, type: !41)
!2622 = !DILocalVariable(name: "s23", arg: 5, scope: !2615, file: !2585, line: 146, type: !41)
!2623 = !DILocalVariable(name: "s24", arg: 6, scope: !2615, file: !2585, line: 146, type: !41)
!2624 = !DILocalVariable(name: "s25", arg: 7, scope: !2615, file: !2585, line: 146, type: !41)
!2625 = !DILocalVariable(name: "s26", arg: 8, scope: !2615, file: !2585, line: 146, type: !41)
!2626 = !DILocalVariable(name: "s27", arg: 9, scope: !2615, file: !2585, line: 146, type: !41)
!2627 = !DILocalVariable(name: "s28", arg: 10, scope: !2615, file: !2585, line: 146, type: !41)
!2628 = !DILocation(line: 146, column: 25, scope: !2615, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2600)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !2585, line: 164, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2613, file: !2585, line: 163, column: 5)
!2632 = !DILocation(line: 146, column: 41, scope: !2615, inlinedAt: !2629)
!2633 = !DILocation(line: 146, column: 50, scope: !2615, inlinedAt: !2629)
!2634 = !DILocation(line: 146, column: 60, scope: !2615, inlinedAt: !2629)
!2635 = !DILocation(line: 146, column: 70, scope: !2615, inlinedAt: !2629)
!2636 = !DILocation(line: 146, column: 80, scope: !2615, inlinedAt: !2629)
!2637 = !DILocation(line: 146, column: 90, scope: !2615, inlinedAt: !2629)
!2638 = !DILocation(line: 146, column: 100, scope: !2615, inlinedAt: !2629)
!2639 = !DILocation(line: 146, column: 110, scope: !2615, inlinedAt: !2629)
!2640 = !DILocation(line: 146, column: 120, scope: !2615, inlinedAt: !2629)
!2641 = !DILocation(line: 148, column: 7, scope: !2642, inlinedAt: !2629)
!2642 = distinct !DILexicalBlock(scope: !2615, file: !2585, line: 148, column: 7)
!2643 = !DILocalVariable(name: "s1", arg: 1, scope: !2644, file: !2585, line: 132, type: !69)
!2644 = distinct !DISubprogram(name: "strcaseeq2", scope: !2585, file: !2585, line: 132, type: !2645, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!44, !69, !69, !41, !41, !41, !41, !41, !41, !41}
!2647 = !{!2643, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2648 = !DILocalVariable(name: "s2", arg: 2, scope: !2644, file: !2585, line: 132, type: !69)
!2649 = !DILocalVariable(name: "s22", arg: 3, scope: !2644, file: !2585, line: 132, type: !41)
!2650 = !DILocalVariable(name: "s23", arg: 4, scope: !2644, file: !2585, line: 132, type: !41)
!2651 = !DILocalVariable(name: "s24", arg: 5, scope: !2644, file: !2585, line: 132, type: !41)
!2652 = !DILocalVariable(name: "s25", arg: 6, scope: !2644, file: !2585, line: 132, type: !41)
!2653 = !DILocalVariable(name: "s26", arg: 7, scope: !2644, file: !2585, line: 132, type: !41)
!2654 = !DILocalVariable(name: "s27", arg: 8, scope: !2644, file: !2585, line: 132, type: !41)
!2655 = !DILocalVariable(name: "s28", arg: 9, scope: !2644, file: !2585, line: 132, type: !41)
!2656 = !DILocation(line: 132, column: 25, scope: !2644, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 153, column: 16, scope: !2658, inlinedAt: !2629)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !2585, line: 150, column: 11)
!2659 = distinct !DILexicalBlock(scope: !2642, file: !2585, line: 149, column: 5)
!2660 = !DILocation(line: 132, column: 41, scope: !2644, inlinedAt: !2657)
!2661 = !DILocation(line: 132, column: 50, scope: !2644, inlinedAt: !2657)
!2662 = !DILocation(line: 132, column: 60, scope: !2644, inlinedAt: !2657)
!2663 = !DILocation(line: 132, column: 70, scope: !2644, inlinedAt: !2657)
!2664 = !DILocation(line: 132, column: 80, scope: !2644, inlinedAt: !2657)
!2665 = !DILocation(line: 132, column: 90, scope: !2644, inlinedAt: !2657)
!2666 = !DILocation(line: 132, column: 100, scope: !2644, inlinedAt: !2657)
!2667 = !DILocation(line: 132, column: 110, scope: !2644, inlinedAt: !2657)
!2668 = !DILocation(line: 134, column: 7, scope: !2669, inlinedAt: !2657)
!2669 = distinct !DILexicalBlock(scope: !2644, file: !2585, line: 134, column: 7)
!2670 = !DILocalVariable(name: "s1", arg: 1, scope: !2671, file: !2585, line: 118, type: !69)
!2671 = distinct !DISubprogram(name: "strcaseeq3", scope: !2585, file: !2585, line: 118, type: !2672, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!44, !69, !69, !41, !41, !41, !41, !41, !41}
!2674 = !{!2670, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2675 = !DILocalVariable(name: "s2", arg: 2, scope: !2671, file: !2585, line: 118, type: !69)
!2676 = !DILocalVariable(name: "s23", arg: 3, scope: !2671, file: !2585, line: 118, type: !41)
!2677 = !DILocalVariable(name: "s24", arg: 4, scope: !2671, file: !2585, line: 118, type: !41)
!2678 = !DILocalVariable(name: "s25", arg: 5, scope: !2671, file: !2585, line: 118, type: !41)
!2679 = !DILocalVariable(name: "s26", arg: 6, scope: !2671, file: !2585, line: 118, type: !41)
!2680 = !DILocalVariable(name: "s27", arg: 7, scope: !2671, file: !2585, line: 118, type: !41)
!2681 = !DILocalVariable(name: "s28", arg: 8, scope: !2671, file: !2585, line: 118, type: !41)
!2682 = !DILocation(line: 118, column: 25, scope: !2671, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 139, column: 16, scope: !2684, inlinedAt: !2657)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !2585, line: 136, column: 11)
!2685 = distinct !DILexicalBlock(scope: !2669, file: !2585, line: 135, column: 5)
!2686 = !DILocation(line: 118, column: 41, scope: !2671, inlinedAt: !2683)
!2687 = !DILocation(line: 118, column: 50, scope: !2671, inlinedAt: !2683)
!2688 = !DILocation(line: 118, column: 60, scope: !2671, inlinedAt: !2683)
!2689 = !DILocation(line: 118, column: 70, scope: !2671, inlinedAt: !2683)
!2690 = !DILocation(line: 118, column: 80, scope: !2671, inlinedAt: !2683)
!2691 = !DILocation(line: 118, column: 90, scope: !2671, inlinedAt: !2683)
!2692 = !DILocation(line: 118, column: 100, scope: !2671, inlinedAt: !2683)
!2693 = !DILocation(line: 120, column: 7, scope: !2694, inlinedAt: !2683)
!2694 = distinct !DILexicalBlock(scope: !2671, file: !2585, line: 120, column: 7)
!2695 = !DILocation(line: 120, column: 7, scope: !2671, inlinedAt: !2683)
!2696 = !DILocalVariable(name: "s1", arg: 1, scope: !2697, file: !2585, line: 104, type: !69)
!2697 = distinct !DISubprogram(name: "strcaseeq4", scope: !2585, file: !2585, line: 104, type: !2698, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!44, !69, !69, !41, !41, !41, !41, !41}
!2700 = !{!2696, !2701, !2702, !2703, !2704, !2705, !2706}
!2701 = !DILocalVariable(name: "s2", arg: 2, scope: !2697, file: !2585, line: 104, type: !69)
!2702 = !DILocalVariable(name: "s24", arg: 3, scope: !2697, file: !2585, line: 104, type: !41)
!2703 = !DILocalVariable(name: "s25", arg: 4, scope: !2697, file: !2585, line: 104, type: !41)
!2704 = !DILocalVariable(name: "s26", arg: 5, scope: !2697, file: !2585, line: 104, type: !41)
!2705 = !DILocalVariable(name: "s27", arg: 6, scope: !2697, file: !2585, line: 104, type: !41)
!2706 = !DILocalVariable(name: "s28", arg: 7, scope: !2697, file: !2585, line: 104, type: !41)
!2707 = !DILocation(line: 104, column: 25, scope: !2697, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 125, column: 16, scope: !2709, inlinedAt: !2683)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2585, line: 122, column: 11)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !2585, line: 121, column: 5)
!2711 = !DILocation(line: 104, column: 41, scope: !2697, inlinedAt: !2708)
!2712 = !DILocation(line: 104, column: 50, scope: !2697, inlinedAt: !2708)
!2713 = !DILocation(line: 104, column: 60, scope: !2697, inlinedAt: !2708)
!2714 = !DILocation(line: 104, column: 70, scope: !2697, inlinedAt: !2708)
!2715 = !DILocation(line: 104, column: 80, scope: !2697, inlinedAt: !2708)
!2716 = !DILocation(line: 104, column: 90, scope: !2697, inlinedAt: !2708)
!2717 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2708)
!2718 = distinct !DILexicalBlock(scope: !2697, file: !2585, line: 106, column: 7)
!2719 = !DILocation(line: 106, column: 7, scope: !2697, inlinedAt: !2708)
!2720 = !DILocalVariable(name: "s1", arg: 1, scope: !2721, file: !2585, line: 90, type: !69)
!2721 = distinct !DISubprogram(name: "strcaseeq5", scope: !2585, file: !2585, line: 90, type: !2722, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!44, !69, !69, !41, !41, !41, !41}
!2724 = !{!2720, !2725, !2726, !2727, !2728, !2729}
!2725 = !DILocalVariable(name: "s2", arg: 2, scope: !2721, file: !2585, line: 90, type: !69)
!2726 = !DILocalVariable(name: "s25", arg: 3, scope: !2721, file: !2585, line: 90, type: !41)
!2727 = !DILocalVariable(name: "s26", arg: 4, scope: !2721, file: !2585, line: 90, type: !41)
!2728 = !DILocalVariable(name: "s27", arg: 5, scope: !2721, file: !2585, line: 90, type: !41)
!2729 = !DILocalVariable(name: "s28", arg: 6, scope: !2721, file: !2585, line: 90, type: !41)
!2730 = !DILocation(line: 90, column: 25, scope: !2721, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 111, column: 16, scope: !2732, inlinedAt: !2708)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !2585, line: 108, column: 11)
!2733 = distinct !DILexicalBlock(scope: !2718, file: !2585, line: 107, column: 5)
!2734 = !DILocation(line: 90, column: 41, scope: !2721, inlinedAt: !2731)
!2735 = !DILocation(line: 90, column: 50, scope: !2721, inlinedAt: !2731)
!2736 = !DILocation(line: 90, column: 60, scope: !2721, inlinedAt: !2731)
!2737 = !DILocation(line: 90, column: 70, scope: !2721, inlinedAt: !2731)
!2738 = !DILocation(line: 90, column: 80, scope: !2721, inlinedAt: !2731)
!2739 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2731)
!2740 = distinct !DILexicalBlock(scope: !2721, file: !2585, line: 92, column: 7)
!2741 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2731)
!2742 = !DILocation(line: 235, column: 12, scope: !2601)
!2743 = !DILocation(line: 235, column: 21, scope: !2601)
!2744 = !DILocation(line: 235, column: 5, scope: !2601)
!2745 = !DILocation(line: 146, column: 25, scope: !2615, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 236, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2566, file: !269, line: 236, column: 7)
!2749 = !DILocation(line: 146, column: 41, scope: !2615, inlinedAt: !2746)
!2750 = !DILocation(line: 146, column: 50, scope: !2615, inlinedAt: !2746)
!2751 = !DILocation(line: 146, column: 60, scope: !2615, inlinedAt: !2746)
!2752 = !DILocation(line: 146, column: 70, scope: !2615, inlinedAt: !2746)
!2753 = !DILocation(line: 146, column: 80, scope: !2615, inlinedAt: !2746)
!2754 = !DILocation(line: 146, column: 90, scope: !2615, inlinedAt: !2746)
!2755 = !DILocation(line: 146, column: 100, scope: !2615, inlinedAt: !2746)
!2756 = !DILocation(line: 146, column: 110, scope: !2615, inlinedAt: !2746)
!2757 = !DILocation(line: 146, column: 120, scope: !2615, inlinedAt: !2746)
!2758 = !DILocation(line: 148, column: 7, scope: !2642, inlinedAt: !2746)
!2759 = !DILocation(line: 132, column: 25, scope: !2644, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 153, column: 16, scope: !2658, inlinedAt: !2746)
!2761 = !DILocation(line: 132, column: 41, scope: !2644, inlinedAt: !2760)
!2762 = !DILocation(line: 132, column: 50, scope: !2644, inlinedAt: !2760)
!2763 = !DILocation(line: 132, column: 60, scope: !2644, inlinedAt: !2760)
!2764 = !DILocation(line: 132, column: 70, scope: !2644, inlinedAt: !2760)
!2765 = !DILocation(line: 132, column: 80, scope: !2644, inlinedAt: !2760)
!2766 = !DILocation(line: 132, column: 90, scope: !2644, inlinedAt: !2760)
!2767 = !DILocation(line: 132, column: 100, scope: !2644, inlinedAt: !2760)
!2768 = !DILocation(line: 132, column: 110, scope: !2644, inlinedAt: !2760)
!2769 = !DILocation(line: 134, column: 7, scope: !2669, inlinedAt: !2760)
!2770 = !DILocation(line: 134, column: 7, scope: !2644, inlinedAt: !2760)
!2771 = !DILocation(line: 118, column: 25, scope: !2671, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 139, column: 16, scope: !2684, inlinedAt: !2760)
!2773 = !DILocation(line: 118, column: 41, scope: !2671, inlinedAt: !2772)
!2774 = !DILocation(line: 118, column: 50, scope: !2671, inlinedAt: !2772)
!2775 = !DILocation(line: 118, column: 60, scope: !2671, inlinedAt: !2772)
!2776 = !DILocation(line: 118, column: 70, scope: !2671, inlinedAt: !2772)
!2777 = !DILocation(line: 118, column: 80, scope: !2671, inlinedAt: !2772)
!2778 = !DILocation(line: 118, column: 90, scope: !2671, inlinedAt: !2772)
!2779 = !DILocation(line: 118, column: 100, scope: !2671, inlinedAt: !2772)
!2780 = !DILocation(line: 120, column: 7, scope: !2694, inlinedAt: !2772)
!2781 = !DILocation(line: 120, column: 7, scope: !2671, inlinedAt: !2772)
!2782 = !DILocation(line: 104, column: 25, scope: !2697, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 125, column: 16, scope: !2709, inlinedAt: !2772)
!2784 = !DILocation(line: 104, column: 41, scope: !2697, inlinedAt: !2783)
!2785 = !DILocation(line: 104, column: 50, scope: !2697, inlinedAt: !2783)
!2786 = !DILocation(line: 104, column: 60, scope: !2697, inlinedAt: !2783)
!2787 = !DILocation(line: 104, column: 70, scope: !2697, inlinedAt: !2783)
!2788 = !DILocation(line: 104, column: 80, scope: !2697, inlinedAt: !2783)
!2789 = !DILocation(line: 104, column: 90, scope: !2697, inlinedAt: !2783)
!2790 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2783)
!2791 = !DILocation(line: 106, column: 7, scope: !2697, inlinedAt: !2783)
!2792 = !DILocation(line: 90, column: 25, scope: !2721, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 111, column: 16, scope: !2732, inlinedAt: !2783)
!2794 = !DILocation(line: 90, column: 41, scope: !2721, inlinedAt: !2793)
!2795 = !DILocation(line: 90, column: 50, scope: !2721, inlinedAt: !2793)
!2796 = !DILocation(line: 90, column: 60, scope: !2721, inlinedAt: !2793)
!2797 = !DILocation(line: 90, column: 70, scope: !2721, inlinedAt: !2793)
!2798 = !DILocation(line: 90, column: 80, scope: !2721, inlinedAt: !2793)
!2799 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2793)
!2800 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2793)
!2801 = !DILocalVariable(name: "s1", arg: 1, scope: !2802, file: !2585, line: 76, type: !69)
!2802 = distinct !DISubprogram(name: "strcaseeq6", scope: !2585, file: !2585, line: 76, type: !2803, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!44, !69, !69, !41, !41, !41}
!2805 = !{!2801, !2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "s2", arg: 2, scope: !2802, file: !2585, line: 76, type: !69)
!2807 = !DILocalVariable(name: "s26", arg: 3, scope: !2802, file: !2585, line: 76, type: !41)
!2808 = !DILocalVariable(name: "s27", arg: 4, scope: !2802, file: !2585, line: 76, type: !41)
!2809 = !DILocalVariable(name: "s28", arg: 5, scope: !2802, file: !2585, line: 76, type: !41)
!2810 = !DILocation(line: 76, column: 25, scope: !2802, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 97, column: 16, scope: !2812, inlinedAt: !2793)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !2585, line: 94, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2740, file: !2585, line: 93, column: 5)
!2814 = !DILocation(line: 76, column: 41, scope: !2802, inlinedAt: !2811)
!2815 = !DILocation(line: 76, column: 50, scope: !2802, inlinedAt: !2811)
!2816 = !DILocation(line: 76, column: 60, scope: !2802, inlinedAt: !2811)
!2817 = !DILocation(line: 76, column: 70, scope: !2802, inlinedAt: !2811)
!2818 = !DILocation(line: 78, column: 7, scope: !2819, inlinedAt: !2811)
!2819 = distinct !DILexicalBlock(scope: !2802, file: !2585, line: 78, column: 7)
!2820 = !DILocation(line: 78, column: 7, scope: !2802, inlinedAt: !2811)
!2821 = !DILocalVariable(name: "s1", arg: 1, scope: !2822, file: !2585, line: 62, type: !69)
!2822 = distinct !DISubprogram(name: "strcaseeq7", scope: !2585, file: !2585, line: 62, type: !2823, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!44, !69, !69, !41, !41}
!2825 = !{!2821, !2826, !2827, !2828}
!2826 = !DILocalVariable(name: "s2", arg: 2, scope: !2822, file: !2585, line: 62, type: !69)
!2827 = !DILocalVariable(name: "s27", arg: 3, scope: !2822, file: !2585, line: 62, type: !41)
!2828 = !DILocalVariable(name: "s28", arg: 4, scope: !2822, file: !2585, line: 62, type: !41)
!2829 = !DILocation(line: 62, column: 25, scope: !2822, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 83, column: 16, scope: !2831, inlinedAt: !2811)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2585, line: 80, column: 11)
!2832 = distinct !DILexicalBlock(scope: !2819, file: !2585, line: 79, column: 5)
!2833 = !DILocation(line: 62, column: 41, scope: !2822, inlinedAt: !2830)
!2834 = !DILocation(line: 62, column: 50, scope: !2822, inlinedAt: !2830)
!2835 = !DILocation(line: 62, column: 60, scope: !2822, inlinedAt: !2830)
!2836 = !DILocation(line: 64, column: 7, scope: !2837, inlinedAt: !2830)
!2837 = distinct !DILexicalBlock(scope: !2822, file: !2585, line: 64, column: 7)
!2838 = !DILocation(line: 236, column: 7, scope: !2566)
!2839 = !DILocation(line: 237, column: 12, scope: !2748)
!2840 = !DILocation(line: 237, column: 21, scope: !2748)
!2841 = !DILocation(line: 237, column: 5, scope: !2748)
!2842 = !DILocation(line: 239, column: 13, scope: !2566)
!2843 = !DILocation(line: 239, column: 11, scope: !2566)
!2844 = !DILocation(line: 239, column: 3, scope: !2566)
!2845 = !DILocation(line: 0, scope: !2566)
!2846 = !DILocation(line: 240, column: 1, scope: !2566)
!2847 = distinct !DISubprogram(name: "quotearg_alloc", scope: !269, file: !269, line: 799, type: !2848, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!40, !69, !45, !1890}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !269, line: 799, type: !69)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !269, line: 799, type: !45)
!2853 = !DILocalVariable(name: "o", arg: 3, scope: !2847, file: !269, line: 800, type: !1890)
!2854 = !DILocation(line: 799, column: 29, scope: !2847)
!2855 = !DILocation(line: 799, column: 41, scope: !2847)
!2856 = !DILocation(line: 800, column: 47, scope: !2847)
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !269, line: 812, type: !69)
!2858 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !269, file: !269, line: 812, type: !2859, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!40, !69, !45, !338, !1890}
!2861 = !{!2857, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2862 = !DILocalVariable(name: "argsize", arg: 2, scope: !2858, file: !269, line: 812, type: !45)
!2863 = !DILocalVariable(name: "size", arg: 3, scope: !2858, file: !269, line: 812, type: !338)
!2864 = !DILocalVariable(name: "o", arg: 4, scope: !2858, file: !269, line: 813, type: !1890)
!2865 = !DILocalVariable(name: "p", scope: !2858, file: !269, line: 815, type: !1890)
!2866 = !DILocalVariable(name: "e", scope: !2858, file: !269, line: 816, type: !44)
!2867 = !DILocalVariable(name: "flags", scope: !2858, file: !269, line: 818, type: !44)
!2868 = !DILocalVariable(name: "bufsize", scope: !2858, file: !269, line: 819, type: !45)
!2869 = !DILocalVariable(name: "buf", scope: !2858, file: !269, line: 823, type: !40)
!2870 = !DILocation(line: 812, column: 33, scope: !2858, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 802, column: 10, scope: !2847)
!2872 = !DILocation(line: 812, column: 45, scope: !2858, inlinedAt: !2871)
!2873 = !DILocation(line: 812, column: 62, scope: !2858, inlinedAt: !2871)
!2874 = !DILocation(line: 813, column: 51, scope: !2858, inlinedAt: !2871)
!2875 = !DILocation(line: 815, column: 37, scope: !2858, inlinedAt: !2871)
!2876 = !DILocation(line: 815, column: 33, scope: !2858, inlinedAt: !2871)
!2877 = !DILocation(line: 816, column: 11, scope: !2858, inlinedAt: !2871)
!2878 = !DILocation(line: 816, column: 7, scope: !2858, inlinedAt: !2871)
!2879 = !DILocation(line: 818, column: 18, scope: !2858, inlinedAt: !2871)
!2880 = !DILocation(line: 818, column: 24, scope: !2858, inlinedAt: !2871)
!2881 = !DILocation(line: 818, column: 7, scope: !2858, inlinedAt: !2871)
!2882 = !DILocation(line: 819, column: 69, scope: !2858, inlinedAt: !2871)
!2883 = !DILocation(line: 820, column: 53, scope: !2858, inlinedAt: !2871)
!2884 = !DILocation(line: 821, column: 49, scope: !2858, inlinedAt: !2871)
!2885 = !DILocation(line: 822, column: 49, scope: !2858, inlinedAt: !2871)
!2886 = !DILocation(line: 819, column: 20, scope: !2858, inlinedAt: !2871)
!2887 = !DILocation(line: 822, column: 62, scope: !2858, inlinedAt: !2871)
!2888 = !DILocation(line: 819, column: 10, scope: !2858, inlinedAt: !2871)
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !334, line: 216, type: !45)
!2890 = distinct !DISubprogram(name: "xcharalloc", scope: !334, file: !334, line: 216, type: !2891, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!40, !45}
!2893 = !{!2889}
!2894 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 823, column: 15, scope: !2858, inlinedAt: !2871)
!2896 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !2895)
!2897 = !DILocation(line: 823, column: 9, scope: !2858, inlinedAt: !2871)
!2898 = !DILocation(line: 824, column: 60, scope: !2858, inlinedAt: !2871)
!2899 = !DILocation(line: 826, column: 32, scope: !2858, inlinedAt: !2871)
!2900 = !DILocation(line: 826, column: 47, scope: !2858, inlinedAt: !2871)
!2901 = !DILocation(line: 824, column: 3, scope: !2858, inlinedAt: !2871)
!2902 = !DILocation(line: 827, column: 9, scope: !2858, inlinedAt: !2871)
!2903 = !DILocation(line: 802, column: 3, scope: !2847)
!2904 = !DILocation(line: 812, column: 33, scope: !2858)
!2905 = !DILocation(line: 812, column: 45, scope: !2858)
!2906 = !DILocation(line: 812, column: 62, scope: !2858)
!2907 = !DILocation(line: 813, column: 51, scope: !2858)
!2908 = !DILocation(line: 815, column: 37, scope: !2858)
!2909 = !DILocation(line: 815, column: 33, scope: !2858)
!2910 = !DILocation(line: 816, column: 11, scope: !2858)
!2911 = !DILocation(line: 816, column: 7, scope: !2858)
!2912 = !DILocation(line: 818, column: 18, scope: !2858)
!2913 = !DILocation(line: 818, column: 27, scope: !2858)
!2914 = !DILocation(line: 818, column: 24, scope: !2858)
!2915 = !DILocation(line: 818, column: 7, scope: !2858)
!2916 = !DILocation(line: 819, column: 69, scope: !2858)
!2917 = !DILocation(line: 820, column: 53, scope: !2858)
!2918 = !DILocation(line: 821, column: 49, scope: !2858)
!2919 = !DILocation(line: 822, column: 49, scope: !2858)
!2920 = !DILocation(line: 819, column: 20, scope: !2858)
!2921 = !DILocation(line: 822, column: 62, scope: !2858)
!2922 = !DILocation(line: 819, column: 10, scope: !2858)
!2923 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 823, column: 15, scope: !2858)
!2925 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !2924)
!2926 = !DILocation(line: 823, column: 9, scope: !2858)
!2927 = !DILocation(line: 824, column: 60, scope: !2858)
!2928 = !DILocation(line: 826, column: 32, scope: !2858)
!2929 = !DILocation(line: 826, column: 47, scope: !2858)
!2930 = !DILocation(line: 824, column: 3, scope: !2858)
!2931 = !DILocation(line: 827, column: 9, scope: !2858)
!2932 = !DILocation(line: 828, column: 7, scope: !2858)
!2933 = !DILocation(line: 829, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2858, file: !269, line: 828, column: 7)
!2935 = !DILocation(line: 829, column: 5, scope: !2934)
!2936 = !DILocation(line: 830, column: 3, scope: !2858)
!2937 = distinct !DISubprogram(name: "quotearg_free", scope: !269, file: !269, line: 848, type: !1065, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2938)
!2938 = !{!2939, !2940}
!2939 = !DILocalVariable(name: "sv", scope: !2937, file: !269, line: 850, type: !292)
!2940 = !DILocalVariable(name: "i", scope: !2937, file: !269, line: 851, type: !44)
!2941 = !DILocation(line: 850, column: 24, scope: !2937)
!2942 = !DILocation(line: 850, column: 19, scope: !2937)
!2943 = !DILocation(line: 851, column: 7, scope: !2937)
!2944 = !DILocation(line: 852, column: 19, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !269, line: 852, column: 3)
!2946 = distinct !DILexicalBlock(scope: !2937, file: !269, line: 852, column: 3)
!2947 = !DILocation(line: 852, column: 17, scope: !2945)
!2948 = !DILocation(line: 852, column: 3, scope: !2946)
!2949 = !DILocation(line: 853, column: 17, scope: !2945)
!2950 = !{!2951, !806, i64 8}
!2951 = !{!"slotvec", !1033, i64 0, !806, i64 8}
!2952 = !DILocation(line: 853, column: 5, scope: !2945)
!2953 = !DILocation(line: 852, column: 28, scope: !2945)
!2954 = distinct !{!2954, !2948, !2955}
!2955 = !DILocation(line: 853, column: 20, scope: !2946)
!2956 = !DILocation(line: 854, column: 13, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2937, file: !269, line: 854, column: 7)
!2958 = !DILocation(line: 854, column: 17, scope: !2957)
!2959 = !DILocation(line: 854, column: 7, scope: !2937)
!2960 = !DILocation(line: 856, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !269, line: 855, column: 5)
!2962 = !DILocation(line: 857, column: 21, scope: !2961)
!2963 = !{!2951, !1033, i64 0}
!2964 = !DILocation(line: 858, column: 20, scope: !2961)
!2965 = !DILocation(line: 859, column: 5, scope: !2961)
!2966 = !DILocation(line: 860, column: 10, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2937, file: !269, line: 860, column: 7)
!2968 = !DILocation(line: 860, column: 7, scope: !2937)
!2969 = !DILocation(line: 862, column: 13, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !269, line: 861, column: 5)
!2971 = !DILocation(line: 862, column: 7, scope: !2970)
!2972 = !DILocation(line: 863, column: 15, scope: !2970)
!2973 = !DILocation(line: 864, column: 5, scope: !2970)
!2974 = !DILocation(line: 865, column: 10, scope: !2937)
!2975 = !DILocation(line: 866, column: 1, scope: !2937)
!2976 = distinct !DISubprogram(name: "quotearg_n", scope: !269, file: !269, line: 931, type: !2977, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!40, !44, !69}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !269, line: 931, type: !44)
!2981 = !DILocalVariable(name: "arg", arg: 2, scope: !2976, file: !269, line: 931, type: !69)
!2982 = !DILocation(line: 931, column: 17, scope: !2976)
!2983 = !DILocation(line: 931, column: 32, scope: !2976)
!2984 = !DILocation(line: 933, column: 10, scope: !2976)
!2985 = !DILocation(line: 933, column: 3, scope: !2976)
!2986 = distinct !DISubprogram(name: "quotearg_n_options", scope: !269, file: !269, line: 877, type: !2987, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!40, !44, !69, !45, !1890}
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996, !2999, !3000, !3002, !3003, !3004}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !269, line: 877, type: !44)
!2991 = !DILocalVariable(name: "arg", arg: 2, scope: !2986, file: !269, line: 877, type: !69)
!2992 = !DILocalVariable(name: "argsize", arg: 3, scope: !2986, file: !269, line: 877, type: !45)
!2993 = !DILocalVariable(name: "options", arg: 4, scope: !2986, file: !269, line: 878, type: !1890)
!2994 = !DILocalVariable(name: "e", scope: !2986, file: !269, line: 880, type: !44)
!2995 = !DILocalVariable(name: "sv", scope: !2986, file: !269, line: 882, type: !292)
!2996 = !DILocalVariable(name: "preallocated", scope: !2997, file: !269, line: 889, type: !52)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !269, line: 888, column: 5)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !269, line: 887, column: 7)
!2999 = !DILocalVariable(name: "nmax", scope: !2997, file: !269, line: 890, type: !44)
!3000 = !DILocalVariable(name: "size", scope: !3001, file: !269, line: 903, type: !45)
!3001 = distinct !DILexicalBlock(scope: !2986, file: !269, line: 902, column: 3)
!3002 = !DILocalVariable(name: "val", scope: !3001, file: !269, line: 904, type: !40)
!3003 = !DILocalVariable(name: "flags", scope: !3001, file: !269, line: 906, type: !44)
!3004 = !DILocalVariable(name: "qsize", scope: !3001, file: !269, line: 907, type: !45)
!3005 = !DILocation(line: 877, column: 25, scope: !2986)
!3006 = !DILocation(line: 877, column: 40, scope: !2986)
!3007 = !DILocation(line: 877, column: 52, scope: !2986)
!3008 = !DILocation(line: 878, column: 51, scope: !2986)
!3009 = !DILocation(line: 880, column: 11, scope: !2986)
!3010 = !DILocation(line: 880, column: 7, scope: !2986)
!3011 = !DILocation(line: 882, column: 24, scope: !2986)
!3012 = !DILocation(line: 882, column: 19, scope: !2986)
!3013 = !DILocation(line: 884, column: 9, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2986, file: !269, line: 884, column: 7)
!3015 = !DILocation(line: 884, column: 7, scope: !2986)
!3016 = !DILocation(line: 885, column: 5, scope: !3014)
!3017 = !DILocation(line: 887, column: 7, scope: !2998)
!3018 = !DILocation(line: 887, column: 14, scope: !2998)
!3019 = !DILocation(line: 887, column: 7, scope: !2986)
!3020 = !DILocation(line: 889, column: 31, scope: !2997)
!3021 = !DILocation(line: 890, column: 11, scope: !2997)
!3022 = !DILocation(line: 892, column: 16, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2997, file: !269, line: 892, column: 11)
!3024 = !DILocation(line: 892, column: 11, scope: !2997)
!3025 = !DILocation(line: 893, column: 9, scope: !3023)
!3026 = !DILocation(line: 895, column: 32, scope: !2997)
!3027 = !DILocation(line: 895, column: 61, scope: !2997)
!3028 = !DILocation(line: 895, column: 58, scope: !2997)
!3029 = !DILocation(line: 895, column: 66, scope: !2997)
!3030 = !DILocation(line: 895, column: 22, scope: !2997)
!3031 = !DILocation(line: 895, column: 15, scope: !2997)
!3032 = !DILocation(line: 896, column: 11, scope: !2997)
!3033 = !DILocation(line: 897, column: 15, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2997, file: !269, line: 896, column: 11)
!3035 = !{i64 0, i64 8, !1032, i64 8, i64 8, !805}
!3036 = !DILocation(line: 897, column: 9, scope: !3034)
!3037 = !DILocation(line: 898, column: 20, scope: !2997)
!3038 = !DILocation(line: 898, column: 18, scope: !2997)
!3039 = !DILocation(line: 898, column: 7, scope: !2997)
!3040 = !DILocation(line: 898, column: 38, scope: !2997)
!3041 = !DILocation(line: 898, column: 31, scope: !2997)
!3042 = !DILocation(line: 898, column: 48, scope: !2997)
!3043 = !DILocation(line: 899, column: 14, scope: !2997)
!3044 = !DILocation(line: 900, column: 5, scope: !2997)
!3045 = !DILocation(line: 0, scope: !2986)
!3046 = !DILocation(line: 903, column: 19, scope: !3001)
!3047 = !DILocation(line: 903, column: 25, scope: !3001)
!3048 = !DILocation(line: 903, column: 12, scope: !3001)
!3049 = !DILocation(line: 904, column: 23, scope: !3001)
!3050 = !DILocation(line: 904, column: 11, scope: !3001)
!3051 = !DILocation(line: 906, column: 26, scope: !3001)
!3052 = !DILocation(line: 906, column: 32, scope: !3001)
!3053 = !DILocation(line: 906, column: 9, scope: !3001)
!3054 = !DILocation(line: 908, column: 55, scope: !3001)
!3055 = !DILocation(line: 909, column: 46, scope: !3001)
!3056 = !DILocation(line: 910, column: 55, scope: !3001)
!3057 = !DILocation(line: 911, column: 55, scope: !3001)
!3058 = !DILocation(line: 907, column: 20, scope: !3001)
!3059 = !DILocation(line: 907, column: 12, scope: !3001)
!3060 = !DILocation(line: 913, column: 14, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3001, file: !269, line: 913, column: 9)
!3062 = !DILocation(line: 913, column: 9, scope: !3001)
!3063 = !DILocation(line: 915, column: 35, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !269, line: 914, column: 7)
!3065 = !DILocation(line: 915, column: 20, scope: !3064)
!3066 = !DILocation(line: 916, column: 17, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !269, line: 916, column: 13)
!3068 = !DILocation(line: 916, column: 13, scope: !3064)
!3069 = !DILocation(line: 917, column: 11, scope: !3067)
!3070 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 918, column: 27, scope: !3064)
!3072 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !3071)
!3073 = !DILocation(line: 918, column: 19, scope: !3064)
!3074 = !DILocation(line: 919, column: 69, scope: !3064)
!3075 = !DILocation(line: 921, column: 44, scope: !3064)
!3076 = !DILocation(line: 922, column: 44, scope: !3064)
!3077 = !DILocation(line: 919, column: 9, scope: !3064)
!3078 = !DILocation(line: 923, column: 7, scope: !3064)
!3079 = !DILocation(line: 0, scope: !3001)
!3080 = !DILocation(line: 925, column: 11, scope: !3001)
!3081 = !DILocation(line: 926, column: 5, scope: !3001)
!3082 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !269, file: !269, line: 937, type: !3083, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!40, !44, !69, !45}
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3082, file: !269, line: 937, type: !44)
!3087 = !DILocalVariable(name: "arg", arg: 2, scope: !3082, file: !269, line: 937, type: !69)
!3088 = !DILocalVariable(name: "argsize", arg: 3, scope: !3082, file: !269, line: 937, type: !45)
!3089 = !DILocation(line: 937, column: 21, scope: !3082)
!3090 = !DILocation(line: 937, column: 36, scope: !3082)
!3091 = !DILocation(line: 937, column: 48, scope: !3082)
!3092 = !DILocation(line: 939, column: 10, scope: !3082)
!3093 = !DILocation(line: 939, column: 3, scope: !3082)
!3094 = distinct !DISubprogram(name: "quotearg", scope: !269, file: !269, line: 943, type: !1639, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3095)
!3095 = !{!3096}
!3096 = !DILocalVariable(name: "arg", arg: 1, scope: !3094, file: !269, line: 943, type: !69)
!3097 = !DILocation(line: 943, column: 23, scope: !3094)
!3098 = !DILocation(line: 931, column: 17, scope: !2976, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 945, column: 10, scope: !3094)
!3100 = !DILocation(line: 931, column: 32, scope: !2976, inlinedAt: !3099)
!3101 = !DILocation(line: 933, column: 10, scope: !2976, inlinedAt: !3099)
!3102 = !DILocation(line: 945, column: 3, scope: !3094)
!3103 = distinct !DISubprogram(name: "quotearg_mem", scope: !269, file: !269, line: 949, type: !3104, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!40, !69, !45}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "arg", arg: 1, scope: !3103, file: !269, line: 949, type: !69)
!3108 = !DILocalVariable(name: "argsize", arg: 2, scope: !3103, file: !269, line: 949, type: !45)
!3109 = !DILocation(line: 949, column: 27, scope: !3103)
!3110 = !DILocation(line: 949, column: 39, scope: !3103)
!3111 = !DILocation(line: 937, column: 21, scope: !3082, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 951, column: 10, scope: !3103)
!3113 = !DILocation(line: 937, column: 36, scope: !3082, inlinedAt: !3112)
!3114 = !DILocation(line: 937, column: 48, scope: !3082, inlinedAt: !3112)
!3115 = !DILocation(line: 939, column: 10, scope: !3082, inlinedAt: !3112)
!3116 = !DILocation(line: 951, column: 3, scope: !3103)
!3117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !269, file: !269, line: 955, type: !3118, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!40, !44, !5, !69}
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DILocalVariable(name: "n", arg: 1, scope: !3117, file: !269, line: 955, type: !44)
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3117, file: !269, line: 955, type: !5)
!3123 = !DILocalVariable(name: "arg", arg: 3, scope: !3117, file: !269, line: 955, type: !69)
!3124 = !DILocalVariable(name: "o", scope: !3117, file: !269, line: 957, type: !1891)
!3125 = !DILocation(line: 955, column: 23, scope: !3117)
!3126 = !DILocation(line: 955, column: 45, scope: !3117)
!3127 = !DILocation(line: 955, column: 60, scope: !3117)
!3128 = !DILocation(line: 957, column: 3, scope: !3117)
!3129 = !DILocation(line: 957, column: 32, scope: !3117)
!3130 = !DILocalVariable(name: "style", arg: 1, scope: !3131, file: !269, line: 193, type: !5)
!3131 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !269, file: !269, line: 193, type: !3132, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!276, !5}
!3134 = !{!3130, !3135}
!3135 = !DILocalVariable(name: "o", scope: !3131, file: !269, line: 195, type: !276)
!3136 = !DILocation(line: 193, column: 48, scope: !3131, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 957, column: 36, scope: !3117)
!3138 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3137)
!3139 = !{!3140}
!3140 = distinct !{!3140, !3141, !"quoting_options_from_style: argument 0"}
!3141 = distinct !{!3141, !"quoting_options_from_style"}
!3142 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3137)
!3143 = distinct !DILexicalBlock(scope: !3131, file: !269, line: 196, column: 7)
!3144 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3137)
!3145 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3137)
!3146 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3137)
!3147 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3137)
!3148 = !DILocation(line: 958, column: 10, scope: !3117)
!3149 = !DILocation(line: 959, column: 1, scope: !3117)
!3150 = !DILocation(line: 958, column: 3, scope: !3117)
!3151 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !269, file: !269, line: 962, type: !3152, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!40, !44, !5, !69, !45}
!3154 = !{!3155, !3156, !3157, !3158, !3159}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !269, line: 962, type: !44)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !269, line: 962, type: !5)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !269, line: 963, type: !69)
!3158 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !269, line: 963, type: !45)
!3159 = !DILocalVariable(name: "o", scope: !3151, file: !269, line: 965, type: !1891)
!3160 = !DILocation(line: 962, column: 27, scope: !3151)
!3161 = !DILocation(line: 962, column: 49, scope: !3151)
!3162 = !DILocation(line: 963, column: 35, scope: !3151)
!3163 = !DILocation(line: 963, column: 47, scope: !3151)
!3164 = !DILocation(line: 965, column: 3, scope: !3151)
!3165 = !DILocation(line: 965, column: 32, scope: !3151)
!3166 = !DILocation(line: 193, column: 48, scope: !3131, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 965, column: 36, scope: !3151)
!3168 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3167)
!3169 = !{!3170}
!3170 = distinct !{!3170, !3171, !"quoting_options_from_style: argument 0"}
!3171 = distinct !{!3171, !"quoting_options_from_style"}
!3172 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3167)
!3173 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3167)
!3174 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3167)
!3175 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3167)
!3176 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3167)
!3177 = !DILocation(line: 966, column: 10, scope: !3151)
!3178 = !DILocation(line: 967, column: 1, scope: !3151)
!3179 = !DILocation(line: 966, column: 3, scope: !3151)
!3180 = distinct !DISubprogram(name: "quotearg_style", scope: !269, file: !269, line: 970, type: !3181, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!40, !5, !69}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !269, line: 970, type: !5)
!3185 = !DILocalVariable(name: "arg", arg: 2, scope: !3180, file: !269, line: 970, type: !69)
!3186 = !DILocation(line: 970, column: 36, scope: !3180)
!3187 = !DILocation(line: 970, column: 51, scope: !3180)
!3188 = !DILocation(line: 955, column: 23, scope: !3117, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 972, column: 10, scope: !3180)
!3190 = !DILocation(line: 955, column: 45, scope: !3117, inlinedAt: !3189)
!3191 = !DILocation(line: 955, column: 60, scope: !3117, inlinedAt: !3189)
!3192 = !DILocation(line: 957, column: 3, scope: !3117, inlinedAt: !3189)
!3193 = !DILocation(line: 957, column: 32, scope: !3117, inlinedAt: !3189)
!3194 = !DILocation(line: 193, column: 48, scope: !3131, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 957, column: 36, scope: !3117, inlinedAt: !3189)
!3196 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3195)
!3197 = !{!3198}
!3198 = distinct !{!3198, !3199, !"quoting_options_from_style: argument 0"}
!3199 = distinct !{!3199, !"quoting_options_from_style"}
!3200 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3195)
!3201 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3195)
!3202 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3195)
!3203 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3195)
!3204 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3195)
!3205 = !DILocation(line: 958, column: 10, scope: !3117, inlinedAt: !3189)
!3206 = !DILocation(line: 959, column: 1, scope: !3117, inlinedAt: !3189)
!3207 = !DILocation(line: 972, column: 3, scope: !3180)
!3208 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !269, file: !269, line: 976, type: !3209, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!40, !5, !69, !45}
!3211 = !{!3212, !3213, !3214}
!3212 = !DILocalVariable(name: "s", arg: 1, scope: !3208, file: !269, line: 976, type: !5)
!3213 = !DILocalVariable(name: "arg", arg: 2, scope: !3208, file: !269, line: 976, type: !69)
!3214 = !DILocalVariable(name: "argsize", arg: 3, scope: !3208, file: !269, line: 976, type: !45)
!3215 = !DILocation(line: 976, column: 40, scope: !3208)
!3216 = !DILocation(line: 976, column: 55, scope: !3208)
!3217 = !DILocation(line: 976, column: 67, scope: !3208)
!3218 = !DILocation(line: 962, column: 27, scope: !3151, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 978, column: 10, scope: !3208)
!3220 = !DILocation(line: 962, column: 49, scope: !3151, inlinedAt: !3219)
!3221 = !DILocation(line: 963, column: 35, scope: !3151, inlinedAt: !3219)
!3222 = !DILocation(line: 963, column: 47, scope: !3151, inlinedAt: !3219)
!3223 = !DILocation(line: 965, column: 3, scope: !3151, inlinedAt: !3219)
!3224 = !DILocation(line: 965, column: 32, scope: !3151, inlinedAt: !3219)
!3225 = !DILocation(line: 193, column: 48, scope: !3131, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 965, column: 36, scope: !3151, inlinedAt: !3219)
!3227 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3226)
!3228 = !{!3229}
!3229 = distinct !{!3229, !3230, !"quoting_options_from_style: argument 0"}
!3230 = distinct !{!3230, !"quoting_options_from_style"}
!3231 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3226)
!3232 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3226)
!3233 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3226)
!3234 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3226)
!3235 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3226)
!3236 = !DILocation(line: 966, column: 10, scope: !3151, inlinedAt: !3219)
!3237 = !DILocation(line: 967, column: 1, scope: !3151, inlinedAt: !3219)
!3238 = !DILocation(line: 978, column: 3, scope: !3208)
!3239 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !269, file: !269, line: 982, type: !3240, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!40, !69, !45, !41}
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DILocalVariable(name: "arg", arg: 1, scope: !3239, file: !269, line: 982, type: !69)
!3244 = !DILocalVariable(name: "argsize", arg: 2, scope: !3239, file: !269, line: 982, type: !45)
!3245 = !DILocalVariable(name: "ch", arg: 3, scope: !3239, file: !269, line: 982, type: !41)
!3246 = !DILocalVariable(name: "options", scope: !3239, file: !269, line: 984, type: !276)
!3247 = !DILocation(line: 982, column: 32, scope: !3239)
!3248 = !DILocation(line: 982, column: 44, scope: !3239)
!3249 = !DILocation(line: 982, column: 58, scope: !3239)
!3250 = !DILocation(line: 984, column: 3, scope: !3239)
!3251 = !DILocation(line: 985, column: 13, scope: !3239)
!3252 = !{i64 0, i64 4, !1094, i64 4, i64 4, !996, i64 8, i64 32, !1094, i64 40, i64 8, !805, i64 48, i64 8, !805}
!3253 = !DILocation(line: 984, column: 26, scope: !3239)
!3254 = !DILocation(line: 152, column: 43, scope: !1912, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 986, column: 3, scope: !3239)
!3256 = !DILocation(line: 152, column: 51, scope: !1912, inlinedAt: !3255)
!3257 = !DILocation(line: 152, column: 58, scope: !1912, inlinedAt: !3255)
!3258 = !DILocation(line: 154, column: 17, scope: !1912, inlinedAt: !3255)
!3259 = !DILocation(line: 156, column: 62, scope: !1912, inlinedAt: !3255)
!3260 = !DILocation(line: 156, column: 57, scope: !1912, inlinedAt: !3255)
!3261 = !DILocation(line: 155, column: 17, scope: !1912, inlinedAt: !3255)
!3262 = !DILocation(line: 157, column: 15, scope: !1912, inlinedAt: !3255)
!3263 = !DILocation(line: 157, column: 7, scope: !1912, inlinedAt: !3255)
!3264 = !DILocation(line: 158, column: 12, scope: !1912, inlinedAt: !3255)
!3265 = !DILocation(line: 158, column: 15, scope: !1912, inlinedAt: !3255)
!3266 = !DILocation(line: 158, column: 25, scope: !1912, inlinedAt: !3255)
!3267 = !DILocation(line: 158, column: 7, scope: !1912, inlinedAt: !3255)
!3268 = !DILocation(line: 159, column: 18, scope: !1912, inlinedAt: !3255)
!3269 = !DILocation(line: 159, column: 23, scope: !1912, inlinedAt: !3255)
!3270 = !DILocation(line: 159, column: 6, scope: !1912, inlinedAt: !3255)
!3271 = !DILocation(line: 987, column: 10, scope: !3239)
!3272 = !DILocation(line: 988, column: 1, scope: !3239)
!3273 = !DILocation(line: 987, column: 3, scope: !3239)
!3274 = distinct !DISubprogram(name: "quotearg_char", scope: !269, file: !269, line: 991, type: !3275, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!40, !69, !41}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "arg", arg: 1, scope: !3274, file: !269, line: 991, type: !69)
!3279 = !DILocalVariable(name: "ch", arg: 2, scope: !3274, file: !269, line: 991, type: !41)
!3280 = !DILocation(line: 991, column: 28, scope: !3274)
!3281 = !DILocation(line: 991, column: 38, scope: !3274)
!3282 = !DILocation(line: 982, column: 32, scope: !3239, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 993, column: 10, scope: !3274)
!3284 = !DILocation(line: 982, column: 44, scope: !3239, inlinedAt: !3283)
!3285 = !DILocation(line: 982, column: 58, scope: !3239, inlinedAt: !3283)
!3286 = !DILocation(line: 984, column: 3, scope: !3239, inlinedAt: !3283)
!3287 = !DILocation(line: 985, column: 13, scope: !3239, inlinedAt: !3283)
!3288 = !DILocation(line: 984, column: 26, scope: !3239, inlinedAt: !3283)
!3289 = !DILocation(line: 152, column: 43, scope: !1912, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 986, column: 3, scope: !3239, inlinedAt: !3283)
!3291 = !DILocation(line: 152, column: 51, scope: !1912, inlinedAt: !3290)
!3292 = !DILocation(line: 152, column: 58, scope: !1912, inlinedAt: !3290)
!3293 = !DILocation(line: 154, column: 17, scope: !1912, inlinedAt: !3290)
!3294 = !DILocation(line: 156, column: 62, scope: !1912, inlinedAt: !3290)
!3295 = !DILocation(line: 156, column: 57, scope: !1912, inlinedAt: !3290)
!3296 = !DILocation(line: 155, column: 17, scope: !1912, inlinedAt: !3290)
!3297 = !DILocation(line: 157, column: 15, scope: !1912, inlinedAt: !3290)
!3298 = !DILocation(line: 157, column: 7, scope: !1912, inlinedAt: !3290)
!3299 = !DILocation(line: 158, column: 12, scope: !1912, inlinedAt: !3290)
!3300 = !DILocation(line: 158, column: 15, scope: !1912, inlinedAt: !3290)
!3301 = !DILocation(line: 158, column: 25, scope: !1912, inlinedAt: !3290)
!3302 = !DILocation(line: 158, column: 7, scope: !1912, inlinedAt: !3290)
!3303 = !DILocation(line: 159, column: 18, scope: !1912, inlinedAt: !3290)
!3304 = !DILocation(line: 159, column: 23, scope: !1912, inlinedAt: !3290)
!3305 = !DILocation(line: 159, column: 6, scope: !1912, inlinedAt: !3290)
!3306 = !DILocation(line: 987, column: 10, scope: !3239, inlinedAt: !3283)
!3307 = !DILocation(line: 988, column: 1, scope: !3239, inlinedAt: !3283)
!3308 = !DILocation(line: 993, column: 3, scope: !3274)
!3309 = distinct !DISubprogram(name: "quotearg_colon", scope: !269, file: !269, line: 997, type: !1639, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3310)
!3310 = !{!3311}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3309, file: !269, line: 997, type: !69)
!3312 = !DILocation(line: 997, column: 29, scope: !3309)
!3313 = !DILocation(line: 991, column: 28, scope: !3274, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 999, column: 10, scope: !3309)
!3315 = !DILocation(line: 991, column: 38, scope: !3274, inlinedAt: !3314)
!3316 = !DILocation(line: 982, column: 32, scope: !3239, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 993, column: 10, scope: !3274, inlinedAt: !3314)
!3318 = !DILocation(line: 982, column: 44, scope: !3239, inlinedAt: !3317)
!3319 = !DILocation(line: 982, column: 58, scope: !3239, inlinedAt: !3317)
!3320 = !DILocation(line: 984, column: 3, scope: !3239, inlinedAt: !3317)
!3321 = !DILocation(line: 985, column: 13, scope: !3239, inlinedAt: !3317)
!3322 = !DILocation(line: 984, column: 26, scope: !3239, inlinedAt: !3317)
!3323 = !DILocation(line: 152, column: 43, scope: !1912, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 986, column: 3, scope: !3239, inlinedAt: !3317)
!3325 = !DILocation(line: 152, column: 51, scope: !1912, inlinedAt: !3324)
!3326 = !DILocation(line: 152, column: 58, scope: !1912, inlinedAt: !3324)
!3327 = !DILocation(line: 154, column: 17, scope: !1912, inlinedAt: !3324)
!3328 = !DILocation(line: 156, column: 57, scope: !1912, inlinedAt: !3324)
!3329 = !DILocation(line: 155, column: 17, scope: !1912, inlinedAt: !3324)
!3330 = !DILocation(line: 157, column: 7, scope: !1912, inlinedAt: !3324)
!3331 = !DILocation(line: 158, column: 12, scope: !1912, inlinedAt: !3324)
!3332 = !DILocation(line: 159, column: 6, scope: !1912, inlinedAt: !3324)
!3333 = !DILocation(line: 987, column: 10, scope: !3239, inlinedAt: !3317)
!3334 = !DILocation(line: 988, column: 1, scope: !3239, inlinedAt: !3317)
!3335 = !DILocation(line: 999, column: 3, scope: !3309)
!3336 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !269, file: !269, line: 1003, type: !3104, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3337)
!3337 = !{!3338, !3339}
!3338 = !DILocalVariable(name: "arg", arg: 1, scope: !3336, file: !269, line: 1003, type: !69)
!3339 = !DILocalVariable(name: "argsize", arg: 2, scope: !3336, file: !269, line: 1003, type: !45)
!3340 = !DILocation(line: 1003, column: 33, scope: !3336)
!3341 = !DILocation(line: 1003, column: 45, scope: !3336)
!3342 = !DILocation(line: 982, column: 32, scope: !3239, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1005, column: 10, scope: !3336)
!3344 = !DILocation(line: 982, column: 44, scope: !3239, inlinedAt: !3343)
!3345 = !DILocation(line: 982, column: 58, scope: !3239, inlinedAt: !3343)
!3346 = !DILocation(line: 984, column: 3, scope: !3239, inlinedAt: !3343)
!3347 = !DILocation(line: 985, column: 13, scope: !3239, inlinedAt: !3343)
!3348 = !DILocation(line: 984, column: 26, scope: !3239, inlinedAt: !3343)
!3349 = !DILocation(line: 152, column: 43, scope: !1912, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 986, column: 3, scope: !3239, inlinedAt: !3343)
!3351 = !DILocation(line: 152, column: 51, scope: !1912, inlinedAt: !3350)
!3352 = !DILocation(line: 152, column: 58, scope: !1912, inlinedAt: !3350)
!3353 = !DILocation(line: 154, column: 17, scope: !1912, inlinedAt: !3350)
!3354 = !DILocation(line: 156, column: 57, scope: !1912, inlinedAt: !3350)
!3355 = !DILocation(line: 155, column: 17, scope: !1912, inlinedAt: !3350)
!3356 = !DILocation(line: 157, column: 7, scope: !1912, inlinedAt: !3350)
!3357 = !DILocation(line: 158, column: 12, scope: !1912, inlinedAt: !3350)
!3358 = !DILocation(line: 159, column: 6, scope: !1912, inlinedAt: !3350)
!3359 = !DILocation(line: 987, column: 10, scope: !3239, inlinedAt: !3343)
!3360 = !DILocation(line: 988, column: 1, scope: !3239, inlinedAt: !3343)
!3361 = !DILocation(line: 1005, column: 3, scope: !3336)
!3362 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !269, file: !269, line: 1009, type: !3118, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3363)
!3363 = !{!3364, !3365, !3366, !3367}
!3364 = !DILocalVariable(name: "n", arg: 1, scope: !3362, file: !269, line: 1009, type: !44)
!3365 = !DILocalVariable(name: "s", arg: 2, scope: !3362, file: !269, line: 1009, type: !5)
!3366 = !DILocalVariable(name: "arg", arg: 3, scope: !3362, file: !269, line: 1009, type: !69)
!3367 = !DILocalVariable(name: "options", scope: !3362, file: !269, line: 1011, type: !276)
!3368 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 1012, column: 13, scope: !3362)
!3370 = !DILocation(line: 1009, column: 29, scope: !3362)
!3371 = !DILocation(line: 1009, column: 51, scope: !3362)
!3372 = !DILocation(line: 1009, column: 66, scope: !3362)
!3373 = !DILocation(line: 1011, column: 3, scope: !3362)
!3374 = !DILocation(line: 1012, column: 13, scope: !3362)
!3375 = !DILocation(line: 193, column: 48, scope: !3131, inlinedAt: !3369)
!3376 = !{!3377}
!3377 = distinct !{!3377, !3378, !"quoting_options_from_style: argument 0"}
!3378 = distinct !{!3378, !"quoting_options_from_style"}
!3379 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3369)
!3380 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3369)
!3381 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3369)
!3382 = !DILocation(line: 1011, column: 26, scope: !3362)
!3383 = !DILocation(line: 152, column: 43, scope: !1912, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1013, column: 3, scope: !3362)
!3385 = !DILocation(line: 152, column: 51, scope: !1912, inlinedAt: !3384)
!3386 = !DILocation(line: 152, column: 58, scope: !1912, inlinedAt: !3384)
!3387 = !DILocation(line: 154, column: 17, scope: !1912, inlinedAt: !3384)
!3388 = !DILocation(line: 156, column: 57, scope: !1912, inlinedAt: !3384)
!3389 = !DILocation(line: 155, column: 17, scope: !1912, inlinedAt: !3384)
!3390 = !DILocation(line: 157, column: 7, scope: !1912, inlinedAt: !3384)
!3391 = !DILocation(line: 158, column: 12, scope: !1912, inlinedAt: !3384)
!3392 = !DILocation(line: 159, column: 6, scope: !1912, inlinedAt: !3384)
!3393 = !DILocation(line: 1014, column: 10, scope: !3362)
!3394 = !DILocation(line: 1015, column: 1, scope: !3362)
!3395 = !DILocation(line: 1014, column: 3, scope: !3362)
!3396 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !269, file: !269, line: 1018, type: !3397, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!40, !44, !69, !69, !69}
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3396, file: !269, line: 1018, type: !44)
!3401 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3396, file: !269, line: 1018, type: !69)
!3402 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3396, file: !269, line: 1019, type: !69)
!3403 = !DILocalVariable(name: "arg", arg: 4, scope: !3396, file: !269, line: 1019, type: !69)
!3404 = !DILocation(line: 1018, column: 24, scope: !3396)
!3405 = !DILocation(line: 1018, column: 39, scope: !3396)
!3406 = !DILocation(line: 1019, column: 32, scope: !3396)
!3407 = !DILocation(line: 1019, column: 57, scope: !3396)
!3408 = !DILocalVariable(name: "n", arg: 1, scope: !3409, file: !269, line: 1026, type: !44)
!3409 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !269, file: !269, line: 1026, type: !3410, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!40, !44, !69, !69, !69, !45}
!3412 = !{!3408, !3413, !3414, !3415, !3416, !3417}
!3413 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3409, file: !269, line: 1026, type: !69)
!3414 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3409, file: !269, line: 1027, type: !69)
!3415 = !DILocalVariable(name: "arg", arg: 4, scope: !3409, file: !269, line: 1028, type: !69)
!3416 = !DILocalVariable(name: "argsize", arg: 5, scope: !3409, file: !269, line: 1028, type: !45)
!3417 = !DILocalVariable(name: "o", scope: !3409, file: !269, line: 1030, type: !276)
!3418 = !DILocation(line: 1026, column: 28, scope: !3409, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1021, column: 10, scope: !3396)
!3420 = !DILocation(line: 1026, column: 43, scope: !3409, inlinedAt: !3419)
!3421 = !DILocation(line: 1027, column: 36, scope: !3409, inlinedAt: !3419)
!3422 = !DILocation(line: 1028, column: 36, scope: !3409, inlinedAt: !3419)
!3423 = !DILocation(line: 1028, column: 48, scope: !3409, inlinedAt: !3419)
!3424 = !DILocation(line: 1030, column: 3, scope: !3409, inlinedAt: !3419)
!3425 = !DILocation(line: 1030, column: 30, scope: !3409, inlinedAt: !3419)
!3426 = !DILocation(line: 1030, column: 26, scope: !3409, inlinedAt: !3419)
!3427 = !DILocation(line: 179, column: 45, scope: !1960, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 1031, column: 3, scope: !3409, inlinedAt: !3419)
!3429 = !DILocation(line: 180, column: 33, scope: !1960, inlinedAt: !3428)
!3430 = !DILocation(line: 180, column: 57, scope: !1960, inlinedAt: !3428)
!3431 = !DILocation(line: 184, column: 6, scope: !1960, inlinedAt: !3428)
!3432 = !DILocation(line: 184, column: 12, scope: !1960, inlinedAt: !3428)
!3433 = !DILocation(line: 185, column: 8, scope: !1976, inlinedAt: !3428)
!3434 = !DILocation(line: 185, column: 23, scope: !1976, inlinedAt: !3428)
!3435 = !DILocation(line: 185, column: 19, scope: !1976, inlinedAt: !3428)
!3436 = !DILocation(line: 186, column: 5, scope: !1976, inlinedAt: !3428)
!3437 = !DILocation(line: 187, column: 6, scope: !1960, inlinedAt: !3428)
!3438 = !DILocation(line: 187, column: 17, scope: !1960, inlinedAt: !3428)
!3439 = !DILocation(line: 188, column: 6, scope: !1960, inlinedAt: !3428)
!3440 = !DILocation(line: 188, column: 18, scope: !1960, inlinedAt: !3428)
!3441 = !DILocation(line: 1032, column: 10, scope: !3409, inlinedAt: !3419)
!3442 = !DILocation(line: 1033, column: 1, scope: !3409, inlinedAt: !3419)
!3443 = !DILocation(line: 1021, column: 3, scope: !3396)
!3444 = !DILocation(line: 1026, column: 28, scope: !3409)
!3445 = !DILocation(line: 1026, column: 43, scope: !3409)
!3446 = !DILocation(line: 1027, column: 36, scope: !3409)
!3447 = !DILocation(line: 1028, column: 36, scope: !3409)
!3448 = !DILocation(line: 1028, column: 48, scope: !3409)
!3449 = !DILocation(line: 1030, column: 3, scope: !3409)
!3450 = !DILocation(line: 1030, column: 30, scope: !3409)
!3451 = !DILocation(line: 1030, column: 26, scope: !3409)
!3452 = !DILocation(line: 179, column: 45, scope: !1960, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 1031, column: 3, scope: !3409)
!3454 = !DILocation(line: 180, column: 33, scope: !1960, inlinedAt: !3453)
!3455 = !DILocation(line: 180, column: 57, scope: !1960, inlinedAt: !3453)
!3456 = !DILocation(line: 184, column: 6, scope: !1960, inlinedAt: !3453)
!3457 = !DILocation(line: 184, column: 12, scope: !1960, inlinedAt: !3453)
!3458 = !DILocation(line: 185, column: 8, scope: !1976, inlinedAt: !3453)
!3459 = !DILocation(line: 185, column: 23, scope: !1976, inlinedAt: !3453)
!3460 = !DILocation(line: 185, column: 19, scope: !1976, inlinedAt: !3453)
!3461 = !DILocation(line: 186, column: 5, scope: !1976, inlinedAt: !3453)
!3462 = !DILocation(line: 187, column: 6, scope: !1960, inlinedAt: !3453)
!3463 = !DILocation(line: 187, column: 17, scope: !1960, inlinedAt: !3453)
!3464 = !DILocation(line: 188, column: 6, scope: !1960, inlinedAt: !3453)
!3465 = !DILocation(line: 188, column: 18, scope: !1960, inlinedAt: !3453)
!3466 = !DILocation(line: 1032, column: 10, scope: !3409)
!3467 = !DILocation(line: 1033, column: 1, scope: !3409)
!3468 = !DILocation(line: 1032, column: 3, scope: !3409)
!3469 = distinct !DISubprogram(name: "quotearg_custom", scope: !269, file: !269, line: 1036, type: !3470, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!40, !69, !69, !69}
!3472 = !{!3473, !3474, !3475}
!3473 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3469, file: !269, line: 1036, type: !69)
!3474 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3469, file: !269, line: 1036, type: !69)
!3475 = !DILocalVariable(name: "arg", arg: 3, scope: !3469, file: !269, line: 1037, type: !69)
!3476 = !DILocation(line: 1036, column: 30, scope: !3469)
!3477 = !DILocation(line: 1036, column: 54, scope: !3469)
!3478 = !DILocation(line: 1037, column: 30, scope: !3469)
!3479 = !DILocation(line: 1018, column: 24, scope: !3396, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1039, column: 10, scope: !3469)
!3481 = !DILocation(line: 1018, column: 39, scope: !3396, inlinedAt: !3480)
!3482 = !DILocation(line: 1019, column: 32, scope: !3396, inlinedAt: !3480)
!3483 = !DILocation(line: 1019, column: 57, scope: !3396, inlinedAt: !3480)
!3484 = !DILocation(line: 1026, column: 28, scope: !3409, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 1021, column: 10, scope: !3396, inlinedAt: !3480)
!3486 = !DILocation(line: 1026, column: 43, scope: !3409, inlinedAt: !3485)
!3487 = !DILocation(line: 1027, column: 36, scope: !3409, inlinedAt: !3485)
!3488 = !DILocation(line: 1028, column: 36, scope: !3409, inlinedAt: !3485)
!3489 = !DILocation(line: 1028, column: 48, scope: !3409, inlinedAt: !3485)
!3490 = !DILocation(line: 1030, column: 3, scope: !3409, inlinedAt: !3485)
!3491 = !DILocation(line: 1030, column: 30, scope: !3409, inlinedAt: !3485)
!3492 = !DILocation(line: 1030, column: 26, scope: !3409, inlinedAt: !3485)
!3493 = !DILocation(line: 179, column: 45, scope: !1960, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 1031, column: 3, scope: !3409, inlinedAt: !3485)
!3495 = !DILocation(line: 180, column: 33, scope: !1960, inlinedAt: !3494)
!3496 = !DILocation(line: 180, column: 57, scope: !1960, inlinedAt: !3494)
!3497 = !DILocation(line: 184, column: 6, scope: !1960, inlinedAt: !3494)
!3498 = !DILocation(line: 184, column: 12, scope: !1960, inlinedAt: !3494)
!3499 = !DILocation(line: 185, column: 8, scope: !1976, inlinedAt: !3494)
!3500 = !DILocation(line: 185, column: 23, scope: !1976, inlinedAt: !3494)
!3501 = !DILocation(line: 185, column: 19, scope: !1976, inlinedAt: !3494)
!3502 = !DILocation(line: 186, column: 5, scope: !1976, inlinedAt: !3494)
!3503 = !DILocation(line: 187, column: 6, scope: !1960, inlinedAt: !3494)
!3504 = !DILocation(line: 187, column: 17, scope: !1960, inlinedAt: !3494)
!3505 = !DILocation(line: 188, column: 6, scope: !1960, inlinedAt: !3494)
!3506 = !DILocation(line: 188, column: 18, scope: !1960, inlinedAt: !3494)
!3507 = !DILocation(line: 1032, column: 10, scope: !3409, inlinedAt: !3485)
!3508 = !DILocation(line: 1033, column: 1, scope: !3409, inlinedAt: !3485)
!3509 = !DILocation(line: 1039, column: 3, scope: !3469)
!3510 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !269, file: !269, line: 1043, type: !3511, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!40, !69, !69, !69, !45}
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3510, file: !269, line: 1043, type: !69)
!3515 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3510, file: !269, line: 1043, type: !69)
!3516 = !DILocalVariable(name: "arg", arg: 3, scope: !3510, file: !269, line: 1044, type: !69)
!3517 = !DILocalVariable(name: "argsize", arg: 4, scope: !3510, file: !269, line: 1044, type: !45)
!3518 = !DILocation(line: 1043, column: 34, scope: !3510)
!3519 = !DILocation(line: 1043, column: 58, scope: !3510)
!3520 = !DILocation(line: 1044, column: 34, scope: !3510)
!3521 = !DILocation(line: 1044, column: 46, scope: !3510)
!3522 = !DILocation(line: 1026, column: 28, scope: !3409, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 1046, column: 10, scope: !3510)
!3524 = !DILocation(line: 1026, column: 43, scope: !3409, inlinedAt: !3523)
!3525 = !DILocation(line: 1027, column: 36, scope: !3409, inlinedAt: !3523)
!3526 = !DILocation(line: 1028, column: 36, scope: !3409, inlinedAt: !3523)
!3527 = !DILocation(line: 1028, column: 48, scope: !3409, inlinedAt: !3523)
!3528 = !DILocation(line: 1030, column: 3, scope: !3409, inlinedAt: !3523)
!3529 = !DILocation(line: 1030, column: 30, scope: !3409, inlinedAt: !3523)
!3530 = !DILocation(line: 1030, column: 26, scope: !3409, inlinedAt: !3523)
!3531 = !DILocation(line: 179, column: 45, scope: !1960, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 1031, column: 3, scope: !3409, inlinedAt: !3523)
!3533 = !DILocation(line: 180, column: 33, scope: !1960, inlinedAt: !3532)
!3534 = !DILocation(line: 180, column: 57, scope: !1960, inlinedAt: !3532)
!3535 = !DILocation(line: 184, column: 6, scope: !1960, inlinedAt: !3532)
!3536 = !DILocation(line: 184, column: 12, scope: !1960, inlinedAt: !3532)
!3537 = !DILocation(line: 185, column: 8, scope: !1976, inlinedAt: !3532)
!3538 = !DILocation(line: 185, column: 23, scope: !1976, inlinedAt: !3532)
!3539 = !DILocation(line: 185, column: 19, scope: !1976, inlinedAt: !3532)
!3540 = !DILocation(line: 186, column: 5, scope: !1976, inlinedAt: !3532)
!3541 = !DILocation(line: 187, column: 6, scope: !1960, inlinedAt: !3532)
!3542 = !DILocation(line: 187, column: 17, scope: !1960, inlinedAt: !3532)
!3543 = !DILocation(line: 188, column: 6, scope: !1960, inlinedAt: !3532)
!3544 = !DILocation(line: 188, column: 18, scope: !1960, inlinedAt: !3532)
!3545 = !DILocation(line: 1032, column: 10, scope: !3409, inlinedAt: !3523)
!3546 = !DILocation(line: 1033, column: 1, scope: !3409, inlinedAt: !3523)
!3547 = !DILocation(line: 1046, column: 3, scope: !3510)
!3548 = distinct !DISubprogram(name: "quote_n_mem", scope: !269, file: !269, line: 1061, type: !3549, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!69, !44, !69, !45}
!3551 = !{!3552, !3553, !3554}
!3552 = !DILocalVariable(name: "n", arg: 1, scope: !3548, file: !269, line: 1061, type: !44)
!3553 = !DILocalVariable(name: "arg", arg: 2, scope: !3548, file: !269, line: 1061, type: !69)
!3554 = !DILocalVariable(name: "argsize", arg: 3, scope: !3548, file: !269, line: 1061, type: !45)
!3555 = !DILocation(line: 1061, column: 18, scope: !3548)
!3556 = !DILocation(line: 1061, column: 33, scope: !3548)
!3557 = !DILocation(line: 1061, column: 45, scope: !3548)
!3558 = !DILocation(line: 1063, column: 10, scope: !3548)
!3559 = !DILocation(line: 1063, column: 3, scope: !3548)
!3560 = distinct !DISubprogram(name: "quote_mem", scope: !269, file: !269, line: 1067, type: !3561, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!69, !69, !45}
!3563 = !{!3564, !3565}
!3564 = !DILocalVariable(name: "arg", arg: 1, scope: !3560, file: !269, line: 1067, type: !69)
!3565 = !DILocalVariable(name: "argsize", arg: 2, scope: !3560, file: !269, line: 1067, type: !45)
!3566 = !DILocation(line: 1067, column: 24, scope: !3560)
!3567 = !DILocation(line: 1067, column: 36, scope: !3560)
!3568 = !DILocation(line: 1061, column: 18, scope: !3548, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 1069, column: 10, scope: !3560)
!3570 = !DILocation(line: 1061, column: 33, scope: !3548, inlinedAt: !3569)
!3571 = !DILocation(line: 1061, column: 45, scope: !3548, inlinedAt: !3569)
!3572 = !DILocation(line: 1063, column: 10, scope: !3548, inlinedAt: !3569)
!3573 = !DILocation(line: 1069, column: 3, scope: !3560)
!3574 = distinct !DISubprogram(name: "quote_n", scope: !269, file: !269, line: 1073, type: !3575, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!69, !44, !69}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !269, line: 1073, type: !44)
!3579 = !DILocalVariable(name: "arg", arg: 2, scope: !3574, file: !269, line: 1073, type: !69)
!3580 = !DILocation(line: 1073, column: 14, scope: !3574)
!3581 = !DILocation(line: 1073, column: 29, scope: !3574)
!3582 = !DILocation(line: 1061, column: 18, scope: !3548, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1075, column: 10, scope: !3574)
!3584 = !DILocation(line: 1061, column: 33, scope: !3548, inlinedAt: !3583)
!3585 = !DILocation(line: 1061, column: 45, scope: !3548, inlinedAt: !3583)
!3586 = !DILocation(line: 1063, column: 10, scope: !3548, inlinedAt: !3583)
!3587 = !DILocation(line: 1075, column: 3, scope: !3574)
!3588 = distinct !DISubprogram(name: "quote", scope: !269, file: !269, line: 1079, type: !3589, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!69, !69}
!3591 = !{!3592}
!3592 = !DILocalVariable(name: "arg", arg: 1, scope: !3588, file: !269, line: 1079, type: !69)
!3593 = !DILocation(line: 1079, column: 20, scope: !3588)
!3594 = !DILocation(line: 1073, column: 14, scope: !3574, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 1081, column: 10, scope: !3588)
!3596 = !DILocation(line: 1073, column: 29, scope: !3574, inlinedAt: !3595)
!3597 = !DILocation(line: 1061, column: 18, scope: !3548, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1075, column: 10, scope: !3574, inlinedAt: !3595)
!3599 = !DILocation(line: 1061, column: 33, scope: !3548, inlinedAt: !3598)
!3600 = !DILocation(line: 1061, column: 45, scope: !3548, inlinedAt: !3598)
!3601 = !DILocation(line: 1063, column: 10, scope: !3548, inlinedAt: !3598)
!3602 = !DILocation(line: 1081, column: 3, scope: !3588)
!3603 = distinct !DISubprogram(name: "version_etc_arn", scope: !326, file: !326, line: 62, type: !3604, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !3641)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !3606, !69, !69, !69, !3640, !45}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !3608)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3608, file: !889, line: 51, baseType: !44, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3608, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3608, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3608, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3608, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3608, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3608, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3608, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3608, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3608, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3608, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3608, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3608, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3608, file: !889, line: 70, baseType: !3624, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3608, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3608, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3608, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3608, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3608, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3608, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3608, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3608, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3608, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3608, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3608, file: !889, line: 93, baseType: !3624, size: 64, offset: 1344)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3608, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3608, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3608, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3608, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3603, file: !326, line: 62, type: !3606)
!3643 = !DILocalVariable(name: "command_name", arg: 2, scope: !3603, file: !326, line: 63, type: !69)
!3644 = !DILocalVariable(name: "package", arg: 3, scope: !3603, file: !326, line: 63, type: !69)
!3645 = !DILocalVariable(name: "version", arg: 4, scope: !3603, file: !326, line: 64, type: !69)
!3646 = !DILocalVariable(name: "authors", arg: 5, scope: !3603, file: !326, line: 65, type: !3640)
!3647 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3603, file: !326, line: 65, type: !45)
!3648 = !DILocation(line: 62, column: 24, scope: !3603)
!3649 = !DILocation(line: 63, column: 30, scope: !3603)
!3650 = !DILocation(line: 63, column: 56, scope: !3603)
!3651 = !DILocation(line: 64, column: 30, scope: !3603)
!3652 = !DILocation(line: 65, column: 39, scope: !3603)
!3653 = !DILocation(line: 65, column: 55, scope: !3603)
!3654 = !DILocation(line: 67, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3603, file: !326, line: 67, column: 7)
!3656 = !DILocation(line: 67, column: 7, scope: !3603)
!3657 = !DILocation(line: 68, column: 5, scope: !3655)
!3658 = !DILocation(line: 70, column: 5, scope: !3655)
!3659 = !DILocation(line: 84, column: 3, scope: !3603)
!3660 = !DILocation(line: 86, column: 3, scope: !3603)
!3661 = !DILocation(line: 95, column: 3, scope: !3603)
!3662 = !DILocation(line: 99, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3603, file: !326, line: 96, column: 5)
!3664 = !DILocation(line: 102, column: 7, scope: !3663)
!3665 = !DILocation(line: 103, column: 7, scope: !3663)
!3666 = !DILocation(line: 106, column: 7, scope: !3663)
!3667 = !DILocation(line: 107, column: 7, scope: !3663)
!3668 = !DILocation(line: 110, column: 7, scope: !3663)
!3669 = !DILocation(line: 112, column: 7, scope: !3663)
!3670 = !DILocation(line: 117, column: 7, scope: !3663)
!3671 = !DILocation(line: 119, column: 7, scope: !3663)
!3672 = !DILocation(line: 124, column: 7, scope: !3663)
!3673 = !DILocation(line: 126, column: 7, scope: !3663)
!3674 = !DILocation(line: 131, column: 7, scope: !3663)
!3675 = !DILocation(line: 134, column: 7, scope: !3663)
!3676 = !DILocation(line: 139, column: 7, scope: !3663)
!3677 = !DILocation(line: 142, column: 7, scope: !3663)
!3678 = !DILocation(line: 147, column: 7, scope: !3663)
!3679 = !DILocation(line: 151, column: 7, scope: !3663)
!3680 = !DILocation(line: 156, column: 7, scope: !3663)
!3681 = !DILocation(line: 160, column: 7, scope: !3663)
!3682 = !DILocation(line: 167, column: 7, scope: !3663)
!3683 = !DILocation(line: 171, column: 7, scope: !3663)
!3684 = !DILocation(line: 173, column: 1, scope: !3603)
!3685 = distinct !DISubprogram(name: "version_etc_ar", scope: !326, file: !326, line: 180, type: !3686, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3606, !69, !69, !69, !3640}
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694}
!3689 = !DILocalVariable(name: "stream", arg: 1, scope: !3685, file: !326, line: 180, type: !3606)
!3690 = !DILocalVariable(name: "command_name", arg: 2, scope: !3685, file: !326, line: 181, type: !69)
!3691 = !DILocalVariable(name: "package", arg: 3, scope: !3685, file: !326, line: 181, type: !69)
!3692 = !DILocalVariable(name: "version", arg: 4, scope: !3685, file: !326, line: 182, type: !69)
!3693 = !DILocalVariable(name: "authors", arg: 5, scope: !3685, file: !326, line: 182, type: !3640)
!3694 = !DILocalVariable(name: "n_authors", scope: !3685, file: !326, line: 184, type: !45)
!3695 = !DILocation(line: 180, column: 23, scope: !3685)
!3696 = !DILocation(line: 181, column: 29, scope: !3685)
!3697 = !DILocation(line: 181, column: 55, scope: !3685)
!3698 = !DILocation(line: 182, column: 29, scope: !3685)
!3699 = !DILocation(line: 182, column: 59, scope: !3685)
!3700 = !DILocation(line: 184, column: 10, scope: !3685)
!3701 = !DILocation(line: 186, column: 8, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3685, file: !326, line: 186, column: 3)
!3703 = !DILocation(line: 0, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3702, file: !326, line: 186, column: 3)
!3705 = !DILocation(line: 186, column: 23, scope: !3704)
!3706 = !DILocation(line: 186, column: 3, scope: !3702)
!3707 = !DILocation(line: 186, column: 52, scope: !3704)
!3708 = distinct !{!3708, !3706, !3709}
!3709 = !DILocation(line: 187, column: 5, scope: !3702)
!3710 = !DILocation(line: 188, column: 3, scope: !3685)
!3711 = !DILocation(line: 189, column: 1, scope: !3685)
!3712 = distinct !DISubprogram(name: "version_etc_va", scope: !326, file: !326, line: 196, type: !3713, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !3722)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !3606, !69, !69, !69, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !323, line: 189, size: 192, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3716, file: !323, line: 189, baseType: !7, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3716, file: !323, line: 189, baseType: !7, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3716, file: !323, line: 189, baseType: !42, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3716, file: !323, line: 189, baseType: !42, size: 64, offset: 128)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3723 = !DILocalVariable(name: "stream", arg: 1, scope: !3712, file: !326, line: 196, type: !3606)
!3724 = !DILocalVariable(name: "command_name", arg: 2, scope: !3712, file: !326, line: 197, type: !69)
!3725 = !DILocalVariable(name: "package", arg: 3, scope: !3712, file: !326, line: 197, type: !69)
!3726 = !DILocalVariable(name: "version", arg: 4, scope: !3712, file: !326, line: 198, type: !69)
!3727 = !DILocalVariable(name: "authors", arg: 5, scope: !3712, file: !326, line: 198, type: !3715)
!3728 = !DILocalVariable(name: "n_authors", scope: !3712, file: !326, line: 200, type: !45)
!3729 = !DILocalVariable(name: "authtab", scope: !3712, file: !326, line: 201, type: !3730)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 640, elements: !272)
!3731 = !DILocation(line: 196, column: 23, scope: !3712)
!3732 = !DILocation(line: 197, column: 29, scope: !3712)
!3733 = !DILocation(line: 197, column: 55, scope: !3712)
!3734 = !DILocation(line: 198, column: 29, scope: !3712)
!3735 = !DILocation(line: 198, column: 46, scope: !3712)
!3736 = !DILocation(line: 201, column: 3, scope: !3712)
!3737 = !DILocation(line: 201, column: 15, scope: !3712)
!3738 = !DILocation(line: 200, column: 10, scope: !3712)
!3739 = !DILocation(line: 205, column: 35, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !326, line: 203, column: 3)
!3741 = distinct !DILexicalBlock(scope: !3712, file: !326, line: 203, column: 3)
!3742 = !DILocation(line: 205, column: 14, scope: !3740)
!3743 = !DILocation(line: 205, column: 33, scope: !3740)
!3744 = !DILocation(line: 205, column: 67, scope: !3740)
!3745 = !DILocation(line: 203, column: 3, scope: !3741)
!3746 = !DILocation(line: 0, scope: !3740)
!3747 = !DILocation(line: 208, column: 3, scope: !3712)
!3748 = !DILocation(line: 210, column: 1, scope: !3712)
!3749 = distinct !DISubprogram(name: "version_etc", scope: !326, file: !326, line: 227, type: !3750, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3606, !69, !69, !69, null}
!3752 = !{!3753, !3754, !3755, !3756, !3757}
!3753 = !DILocalVariable(name: "stream", arg: 1, scope: !3749, file: !326, line: 227, type: !3606)
!3754 = !DILocalVariable(name: "command_name", arg: 2, scope: !3749, file: !326, line: 228, type: !69)
!3755 = !DILocalVariable(name: "package", arg: 3, scope: !3749, file: !326, line: 228, type: !69)
!3756 = !DILocalVariable(name: "version", arg: 4, scope: !3749, file: !326, line: 229, type: !69)
!3757 = !DILocalVariable(name: "authors", scope: !3749, file: !326, line: 231, type: !3758)
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3759, line: 52, baseType: !3760)
!3759 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3761, line: 48, baseType: !3762)
!3761 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !323, line: 231, baseType: !3763)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3716, size: 192, elements: !917)
!3764 = !DILocation(line: 227, column: 20, scope: !3749)
!3765 = !DILocation(line: 228, column: 26, scope: !3749)
!3766 = !DILocation(line: 228, column: 52, scope: !3749)
!3767 = !DILocation(line: 229, column: 26, scope: !3749)
!3768 = !DILocation(line: 231, column: 3, scope: !3749)
!3769 = !DILocation(line: 231, column: 11, scope: !3749)
!3770 = !DILocation(line: 233, column: 3, scope: !3749)
!3771 = !DILocation(line: 234, column: 3, scope: !3749)
!3772 = !DILocation(line: 235, column: 3, scope: !3749)
!3773 = !DILocation(line: 236, column: 1, scope: !3749)
!3774 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !326, file: !326, line: 239, type: !1065, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !189)
!3775 = !DILocation(line: 245, column: 3, scope: !3774)
!3776 = !DILocation(line: 251, column: 3, scope: !3774)
!3777 = !DILocation(line: 256, column: 3, scope: !3774)
!3778 = !DILocation(line: 258, column: 1, scope: !3774)
!3779 = distinct !DISubprogram(name: "xnmalloc", scope: !334, file: !334, line: 99, type: !3780, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3782)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!42, !45, !45}
!3782 = !{!3783, !3784}
!3783 = !DILocalVariable(name: "n", arg: 1, scope: !3779, file: !334, line: 99, type: !45)
!3784 = !DILocalVariable(name: "s", arg: 2, scope: !3779, file: !334, line: 99, type: !45)
!3785 = !DILocation(line: 99, column: 18, scope: !3779)
!3786 = !DILocation(line: 99, column: 28, scope: !3779)
!3787 = !DILocation(line: 101, column: 7, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3779, file: !334, line: 101, column: 7)
!3789 = !DILocation(line: 101, column: 7, scope: !3779)
!3790 = !DILocation(line: 102, column: 5, scope: !3788)
!3791 = !DILocation(line: 103, column: 21, scope: !3779)
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3793, file: !3794, line: 39, type: !45)
!3793 = distinct !DISubprogram(name: "xmalloc", scope: !3794, file: !3794, line: 39, type: !3795, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3797)
!3794 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!42, !45}
!3797 = !{!3792, !3798}
!3798 = !DILocalVariable(name: "p", scope: !3793, file: !3794, line: 41, type: !42)
!3799 = !DILocation(line: 39, column: 17, scope: !3793, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 103, column: 10, scope: !3779)
!3801 = !DILocation(line: 41, column: 13, scope: !3793, inlinedAt: !3800)
!3802 = !DILocation(line: 41, column: 9, scope: !3793, inlinedAt: !3800)
!3803 = !DILocation(line: 42, column: 8, scope: !3804, inlinedAt: !3800)
!3804 = distinct !DILexicalBlock(scope: !3793, file: !3794, line: 42, column: 7)
!3805 = !DILocation(line: 42, column: 15, scope: !3804, inlinedAt: !3800)
!3806 = !DILocation(line: 42, column: 10, scope: !3804, inlinedAt: !3800)
!3807 = !DILocation(line: 43, column: 5, scope: !3804, inlinedAt: !3800)
!3808 = !DILocation(line: 103, column: 3, scope: !3779)
!3809 = !DILocation(line: 39, column: 17, scope: !3793)
!3810 = !DILocation(line: 41, column: 13, scope: !3793)
!3811 = !DILocation(line: 41, column: 9, scope: !3793)
!3812 = !DILocation(line: 42, column: 8, scope: !3804)
!3813 = !DILocation(line: 42, column: 15, scope: !3804)
!3814 = !DILocation(line: 42, column: 10, scope: !3804)
!3815 = !DILocation(line: 43, column: 5, scope: !3804)
!3816 = !DILocation(line: 44, column: 3, scope: !3793)
!3817 = distinct !DISubprogram(name: "xnrealloc", scope: !334, file: !334, line: 112, type: !3818, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!42, !42, !45, !45}
!3820 = !{!3821, !3822, !3823}
!3821 = !DILocalVariable(name: "p", arg: 1, scope: !3817, file: !334, line: 112, type: !42)
!3822 = !DILocalVariable(name: "n", arg: 2, scope: !3817, file: !334, line: 112, type: !45)
!3823 = !DILocalVariable(name: "s", arg: 3, scope: !3817, file: !334, line: 112, type: !45)
!3824 = !DILocation(line: 112, column: 18, scope: !3817)
!3825 = !DILocation(line: 112, column: 28, scope: !3817)
!3826 = !DILocation(line: 112, column: 38, scope: !3817)
!3827 = !DILocation(line: 114, column: 7, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3817, file: !334, line: 114, column: 7)
!3829 = !DILocation(line: 114, column: 7, scope: !3817)
!3830 = !DILocation(line: 115, column: 5, scope: !3828)
!3831 = !DILocation(line: 116, column: 25, scope: !3817)
!3832 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !3794, line: 51, type: !42)
!3833 = distinct !DISubprogram(name: "xrealloc", scope: !3794, file: !3794, line: 51, type: !3834, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!42, !42, !45}
!3836 = !{!3832, !3837}
!3837 = !DILocalVariable(name: "n", arg: 2, scope: !3833, file: !3794, line: 51, type: !45)
!3838 = !DILocation(line: 51, column: 17, scope: !3833, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 116, column: 10, scope: !3817)
!3840 = !DILocation(line: 51, column: 27, scope: !3833, inlinedAt: !3839)
!3841 = !DILocation(line: 53, column: 8, scope: !3842, inlinedAt: !3839)
!3842 = distinct !DILexicalBlock(scope: !3833, file: !3794, line: 53, column: 7)
!3843 = !DILocation(line: 53, column: 13, scope: !3842, inlinedAt: !3839)
!3844 = !DILocation(line: 53, column: 10, scope: !3842, inlinedAt: !3839)
!3845 = !DILocation(line: 57, column: 7, scope: !3846, inlinedAt: !3839)
!3846 = distinct !DILexicalBlock(scope: !3842, file: !3794, line: 54, column: 5)
!3847 = !DILocation(line: 58, column: 7, scope: !3846, inlinedAt: !3839)
!3848 = !DILocation(line: 61, column: 7, scope: !3833, inlinedAt: !3839)
!3849 = !DILocation(line: 62, column: 8, scope: !3850, inlinedAt: !3839)
!3850 = distinct !DILexicalBlock(scope: !3833, file: !3794, line: 62, column: 7)
!3851 = !DILocation(line: 62, column: 13, scope: !3850, inlinedAt: !3839)
!3852 = !DILocation(line: 62, column: 10, scope: !3850, inlinedAt: !3839)
!3853 = !DILocation(line: 63, column: 5, scope: !3850, inlinedAt: !3839)
!3854 = !DILocation(line: 0, scope: !3833, inlinedAt: !3839)
!3855 = !DILocation(line: 116, column: 3, scope: !3817)
!3856 = !DILocation(line: 51, column: 17, scope: !3833)
!3857 = !DILocation(line: 51, column: 27, scope: !3833)
!3858 = !DILocation(line: 53, column: 8, scope: !3842)
!3859 = !DILocation(line: 53, column: 13, scope: !3842)
!3860 = !DILocation(line: 53, column: 10, scope: !3842)
!3861 = !DILocation(line: 57, column: 7, scope: !3846)
!3862 = !DILocation(line: 58, column: 7, scope: !3846)
!3863 = !DILocation(line: 61, column: 7, scope: !3833)
!3864 = !DILocation(line: 62, column: 8, scope: !3850)
!3865 = !DILocation(line: 62, column: 13, scope: !3850)
!3866 = !DILocation(line: 62, column: 10, scope: !3850)
!3867 = !DILocation(line: 63, column: 5, scope: !3850)
!3868 = !DILocation(line: 0, scope: !3833)
!3869 = !DILocation(line: 65, column: 1, scope: !3833)
!3870 = !DILocation(line: 174, column: 19, scope: !335)
!3871 = !DILocation(line: 174, column: 30, scope: !335)
!3872 = !DILocation(line: 174, column: 41, scope: !335)
!3873 = !DILocation(line: 176, column: 14, scope: !335)
!3874 = !DILocation(line: 176, column: 10, scope: !335)
!3875 = !DILocation(line: 178, column: 9, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !335, file: !334, line: 178, column: 7)
!3877 = !DILocation(line: 178, column: 7, scope: !335)
!3878 = !DILocation(line: 180, column: 13, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !334, line: 180, column: 11)
!3880 = distinct !DILexicalBlock(scope: !3876, file: !334, line: 179, column: 5)
!3881 = !DILocation(line: 180, column: 11, scope: !3880)
!3882 = !DILocation(line: 188, column: 30, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !334, line: 181, column: 9)
!3884 = !DILocation(line: 189, column: 16, scope: !3883)
!3885 = !DILocation(line: 189, column: 13, scope: !3883)
!3886 = !DILocation(line: 190, column: 9, scope: !3883)
!3887 = !DILocation(line: 0, scope: !3883)
!3888 = !DILocation(line: 191, column: 11, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3880, file: !334, line: 191, column: 11)
!3890 = !DILocation(line: 191, column: 11, scope: !3880)
!3891 = !DILocation(line: 206, column: 7, scope: !335)
!3892 = !DILocation(line: 207, column: 25, scope: !335)
!3893 = !DILocation(line: 51, column: 17, scope: !3833, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 207, column: 10, scope: !335)
!3895 = !DILocation(line: 51, column: 27, scope: !3833, inlinedAt: !3894)
!3896 = !DILocation(line: 53, column: 10, scope: !3842, inlinedAt: !3894)
!3897 = !DILocation(line: 192, column: 9, scope: !3889)
!3898 = !DILocation(line: 200, column: 69, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !334, line: 200, column: 11)
!3900 = distinct !DILexicalBlock(scope: !3876, file: !334, line: 195, column: 5)
!3901 = !DILocation(line: 201, column: 11, scope: !3899)
!3902 = !DILocation(line: 200, column: 11, scope: !3900)
!3903 = !DILocation(line: 202, column: 9, scope: !3899)
!3904 = !DILocation(line: 203, column: 14, scope: !3900)
!3905 = !DILocation(line: 203, column: 18, scope: !3900)
!3906 = !DILocation(line: 203, column: 9, scope: !3900)
!3907 = !DILocation(line: 53, column: 8, scope: !3842, inlinedAt: !3894)
!3908 = !DILocation(line: 57, column: 7, scope: !3846, inlinedAt: !3894)
!3909 = !DILocation(line: 58, column: 7, scope: !3846, inlinedAt: !3894)
!3910 = !DILocation(line: 61, column: 7, scope: !3833, inlinedAt: !3894)
!3911 = !DILocation(line: 62, column: 8, scope: !3850, inlinedAt: !3894)
!3912 = !DILocation(line: 62, column: 13, scope: !3850, inlinedAt: !3894)
!3913 = !DILocation(line: 62, column: 10, scope: !3850, inlinedAt: !3894)
!3914 = !DILocation(line: 63, column: 5, scope: !3850, inlinedAt: !3894)
!3915 = !DILocation(line: 0, scope: !3833, inlinedAt: !3894)
!3916 = !DILocation(line: 207, column: 3, scope: !335)
!3917 = distinct !DISubprogram(name: "xcharalloc", scope: !334, file: !334, line: 216, type: !2891, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3918)
!3918 = !{!3919}
!3919 = !DILocalVariable(name: "n", arg: 1, scope: !3917, file: !334, line: 216, type: !45)
!3920 = !DILocation(line: 216, column: 20, scope: !3917)
!3921 = !DILocation(line: 39, column: 17, scope: !3793, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 218, column: 10, scope: !3917)
!3923 = !DILocation(line: 41, column: 13, scope: !3793, inlinedAt: !3922)
!3924 = !DILocation(line: 41, column: 9, scope: !3793, inlinedAt: !3922)
!3925 = !DILocation(line: 42, column: 8, scope: !3804, inlinedAt: !3922)
!3926 = !DILocation(line: 42, column: 15, scope: !3804, inlinedAt: !3922)
!3927 = !DILocation(line: 42, column: 10, scope: !3804, inlinedAt: !3922)
!3928 = !DILocation(line: 43, column: 5, scope: !3804, inlinedAt: !3922)
!3929 = !DILocation(line: 218, column: 3, scope: !3917)
!3930 = distinct !DISubprogram(name: "x2realloc", scope: !3794, file: !3794, line: 74, type: !3931, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!42, !42, !338}
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "p", arg: 1, scope: !3930, file: !3794, line: 74, type: !42)
!3935 = !DILocalVariable(name: "pn", arg: 2, scope: !3930, file: !3794, line: 74, type: !338)
!3936 = !DILocation(line: 74, column: 18, scope: !3930)
!3937 = !DILocation(line: 74, column: 29, scope: !3930)
!3938 = !DILocation(line: 174, column: 19, scope: !335, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 76, column: 10, scope: !3930)
!3940 = !DILocation(line: 174, column: 30, scope: !335, inlinedAt: !3939)
!3941 = !DILocation(line: 174, column: 41, scope: !335, inlinedAt: !3939)
!3942 = !DILocation(line: 176, column: 14, scope: !335, inlinedAt: !3939)
!3943 = !DILocation(line: 176, column: 10, scope: !335, inlinedAt: !3939)
!3944 = !DILocation(line: 178, column: 9, scope: !3876, inlinedAt: !3939)
!3945 = !DILocation(line: 178, column: 7, scope: !335, inlinedAt: !3939)
!3946 = !DILocation(line: 180, column: 13, scope: !3879, inlinedAt: !3939)
!3947 = !DILocation(line: 180, column: 11, scope: !3880, inlinedAt: !3939)
!3948 = !DILocation(line: 191, column: 11, scope: !3889, inlinedAt: !3939)
!3949 = !DILocation(line: 191, column: 11, scope: !3880, inlinedAt: !3939)
!3950 = !DILocation(line: 206, column: 7, scope: !335, inlinedAt: !3939)
!3951 = !DILocation(line: 51, column: 17, scope: !3833, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 207, column: 10, scope: !335, inlinedAt: !3939)
!3953 = !DILocation(line: 51, column: 27, scope: !3833, inlinedAt: !3952)
!3954 = !DILocation(line: 53, column: 10, scope: !3842, inlinedAt: !3952)
!3955 = !DILocation(line: 192, column: 9, scope: !3889, inlinedAt: !3939)
!3956 = !DILocation(line: 201, column: 11, scope: !3899, inlinedAt: !3939)
!3957 = !DILocation(line: 200, column: 11, scope: !3900, inlinedAt: !3939)
!3958 = !DILocation(line: 202, column: 9, scope: !3899, inlinedAt: !3939)
!3959 = !DILocation(line: 203, column: 14, scope: !3900, inlinedAt: !3939)
!3960 = !DILocation(line: 203, column: 18, scope: !3900, inlinedAt: !3939)
!3961 = !DILocation(line: 203, column: 9, scope: !3900, inlinedAt: !3939)
!3962 = !DILocation(line: 53, column: 8, scope: !3842, inlinedAt: !3952)
!3963 = !DILocation(line: 57, column: 7, scope: !3846, inlinedAt: !3952)
!3964 = !DILocation(line: 58, column: 7, scope: !3846, inlinedAt: !3952)
!3965 = !DILocation(line: 61, column: 7, scope: !3833, inlinedAt: !3952)
!3966 = !DILocation(line: 62, column: 8, scope: !3850, inlinedAt: !3952)
!3967 = !DILocation(line: 62, column: 13, scope: !3850, inlinedAt: !3952)
!3968 = !DILocation(line: 62, column: 10, scope: !3850, inlinedAt: !3952)
!3969 = !DILocation(line: 63, column: 5, scope: !3850, inlinedAt: !3952)
!3970 = !DILocation(line: 0, scope: !3833, inlinedAt: !3952)
!3971 = !DILocation(line: 76, column: 3, scope: !3930)
!3972 = distinct !DISubprogram(name: "xzalloc", scope: !3794, file: !3794, line: 84, type: !3795, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3973)
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "s", arg: 1, scope: !3972, file: !3794, line: 84, type: !45)
!3975 = !DILocation(line: 84, column: 17, scope: !3972)
!3976 = !DILocation(line: 39, column: 17, scope: !3793, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 86, column: 18, scope: !3972)
!3978 = !DILocation(line: 41, column: 13, scope: !3793, inlinedAt: !3977)
!3979 = !DILocation(line: 41, column: 9, scope: !3793, inlinedAt: !3977)
!3980 = !DILocation(line: 42, column: 8, scope: !3804, inlinedAt: !3977)
!3981 = !DILocation(line: 42, column: 15, scope: !3804, inlinedAt: !3977)
!3982 = !DILocation(line: 42, column: 10, scope: !3804, inlinedAt: !3977)
!3983 = !DILocation(line: 43, column: 5, scope: !3804, inlinedAt: !3977)
!3984 = !DILocation(line: 86, column: 10, scope: !3972)
!3985 = !DILocation(line: 86, column: 3, scope: !3972)
!3986 = distinct !DISubprogram(name: "xcalloc", scope: !3794, file: !3794, line: 93, type: !3780, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !3987)
!3987 = !{!3988, !3989, !3990}
!3988 = !DILocalVariable(name: "n", arg: 1, scope: !3986, file: !3794, line: 93, type: !45)
!3989 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !3794, line: 93, type: !45)
!3990 = !DILocalVariable(name: "p", scope: !3986, file: !3794, line: 95, type: !42)
!3991 = !DILocation(line: 93, column: 17, scope: !3986)
!3992 = !DILocation(line: 93, column: 27, scope: !3986)
!3993 = !DILocation(line: 100, column: 7, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3986, file: !3794, line: 100, column: 7)
!3995 = !DILocation(line: 101, column: 7, scope: !3994)
!3996 = !DILocation(line: 101, column: 18, scope: !3994)
!3997 = !DILocation(line: 95, column: 9, scope: !3986)
!3998 = !DILocation(line: 101, column: 16, scope: !3994)
!3999 = !DILocation(line: 100, column: 7, scope: !3986)
!4000 = !DILocation(line: 102, column: 5, scope: !3994)
!4001 = !DILocation(line: 103, column: 3, scope: !3986)
!4002 = distinct !DISubprogram(name: "xmemdup", scope: !3794, file: !3794, line: 111, type: !4003, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !4007)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!42, !4005, !45}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4007 = !{!4008, !4009}
!4008 = !DILocalVariable(name: "p", arg: 1, scope: !4002, file: !3794, line: 111, type: !4005)
!4009 = !DILocalVariable(name: "s", arg: 2, scope: !4002, file: !3794, line: 111, type: !45)
!4010 = !DILocation(line: 111, column: 22, scope: !4002)
!4011 = !DILocation(line: 111, column: 32, scope: !4002)
!4012 = !DILocation(line: 39, column: 17, scope: !3793, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 113, column: 18, scope: !4002)
!4014 = !DILocation(line: 41, column: 13, scope: !3793, inlinedAt: !4013)
!4015 = !DILocation(line: 41, column: 9, scope: !3793, inlinedAt: !4013)
!4016 = !DILocation(line: 42, column: 8, scope: !3804, inlinedAt: !4013)
!4017 = !DILocation(line: 42, column: 15, scope: !3804, inlinedAt: !4013)
!4018 = !DILocation(line: 42, column: 10, scope: !3804, inlinedAt: !4013)
!4019 = !DILocation(line: 43, column: 5, scope: !3804, inlinedAt: !4013)
!4020 = !DILocation(line: 113, column: 10, scope: !4002)
!4021 = !DILocation(line: 113, column: 3, scope: !4002)
!4022 = distinct !DISubprogram(name: "xstrdup", scope: !3794, file: !3794, line: 119, type: !1639, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !4023)
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "string", arg: 1, scope: !4022, file: !3794, line: 119, type: !69)
!4025 = !DILocation(line: 119, column: 22, scope: !4022)
!4026 = !DILocation(line: 121, column: 27, scope: !4022)
!4027 = !DILocation(line: 121, column: 43, scope: !4022)
!4028 = !DILocation(line: 111, column: 22, scope: !4002, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 121, column: 10, scope: !4022)
!4030 = !DILocation(line: 111, column: 32, scope: !4002, inlinedAt: !4029)
!4031 = !DILocation(line: 39, column: 17, scope: !3793, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 113, column: 18, scope: !4002, inlinedAt: !4029)
!4033 = !DILocation(line: 41, column: 13, scope: !3793, inlinedAt: !4032)
!4034 = !DILocation(line: 41, column: 9, scope: !3793, inlinedAt: !4032)
!4035 = !DILocation(line: 42, column: 8, scope: !3804, inlinedAt: !4032)
!4036 = !DILocation(line: 42, column: 15, scope: !3804, inlinedAt: !4032)
!4037 = !DILocation(line: 42, column: 10, scope: !3804, inlinedAt: !4032)
!4038 = !DILocation(line: 43, column: 5, scope: !3804, inlinedAt: !4032)
!4039 = !DILocation(line: 113, column: 10, scope: !4002, inlinedAt: !4029)
!4040 = !DILocation(line: 121, column: 3, scope: !4022)
!4041 = distinct !DISubprogram(name: "xalloc_die", scope: !4042, file: !4042, line: 32, type: !1065, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !347, retainedNodes: !189)
!4042 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4043 = !DILocation(line: 34, column: 10, scope: !4041)
!4044 = !DILocation(line: 34, column: 33, scope: !4041)
!4045 = !DILocation(line: 34, column: 3, scope: !4041)
!4046 = !DILocation(line: 40, column: 3, scope: !4041)
!4047 = distinct !DISubprogram(name: "rpl_calloc", scope: !4048, file: !4048, line: 42, type: !3780, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !349, retainedNodes: !4049)
!4048 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4049 = !{!4050, !4051, !4052, !4053}
!4050 = !DILocalVariable(name: "n", arg: 1, scope: !4047, file: !4048, line: 42, type: !45)
!4051 = !DILocalVariable(name: "s", arg: 2, scope: !4047, file: !4048, line: 42, type: !45)
!4052 = !DILocalVariable(name: "result", scope: !4047, file: !4048, line: 44, type: !42)
!4053 = !DILocalVariable(name: "bytes", scope: !4054, file: !4048, line: 56, type: !45)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !4048, line: 53, column: 5)
!4055 = distinct !DILexicalBlock(scope: !4047, file: !4048, line: 47, column: 7)
!4056 = !DILocation(line: 42, column: 20, scope: !4047)
!4057 = !DILocation(line: 42, column: 30, scope: !4047)
!4058 = !DILocation(line: 47, column: 9, scope: !4055)
!4059 = !DILocation(line: 47, column: 19, scope: !4055)
!4060 = !DILocation(line: 47, column: 14, scope: !4055)
!4061 = !DILocation(line: 56, column: 24, scope: !4054)
!4062 = !DILocation(line: 56, column: 14, scope: !4054)
!4063 = !DILocation(line: 57, column: 17, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4054, file: !4048, line: 57, column: 11)
!4065 = !DILocation(line: 57, column: 21, scope: !4064)
!4066 = !DILocation(line: 57, column: 11, scope: !4054)
!4067 = !DILocation(line: 59, column: 11, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4064, file: !4048, line: 58, column: 9)
!4069 = !DILocation(line: 59, column: 17, scope: !4068)
!4070 = !DILocation(line: 65, column: 12, scope: !4047)
!4071 = !DILocation(line: 44, column: 9, scope: !4047)
!4072 = !DILocation(line: 72, column: 3, scope: !4047)
!4073 = !DILocation(line: 0, scope: !4068)
!4074 = !DILocation(line: 73, column: 1, scope: !4047)
!4075 = distinct !DISubprogram(name: "rpl_fclose", scope: !4076, file: !4076, line: 58, type: !4077, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !351, retainedNodes: !4113)
!4076 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!44, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !4081)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4081, file: !889, line: 51, baseType: !44, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4081, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4081, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4081, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4081, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4081, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4081, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4081, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4081, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4081, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4081, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4081, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4081, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4081, file: !889, line: 70, baseType: !4097, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4081, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4081, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4081, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4081, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4081, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4081, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4081, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4081, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4081, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4081, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4081, file: !889, line: 93, baseType: !4097, size: 64, offset: 1344)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4081, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4081, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4081, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4081, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!4113 = !{!4114, !4115, !4116, !4117}
!4114 = !DILocalVariable(name: "fp", arg: 1, scope: !4075, file: !4076, line: 58, type: !4079)
!4115 = !DILocalVariable(name: "saved_errno", scope: !4075, file: !4076, line: 60, type: !44)
!4116 = !DILocalVariable(name: "fd", scope: !4075, file: !4076, line: 61, type: !44)
!4117 = !DILocalVariable(name: "result", scope: !4075, file: !4076, line: 62, type: !44)
!4118 = !DILocation(line: 58, column: 19, scope: !4075)
!4119 = !DILocation(line: 60, column: 7, scope: !4075)
!4120 = !DILocation(line: 62, column: 7, scope: !4075)
!4121 = !DILocation(line: 65, column: 8, scope: !4075)
!4122 = !DILocation(line: 61, column: 7, scope: !4075)
!4123 = !DILocation(line: 66, column: 10, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4075, file: !4076, line: 66, column: 7)
!4125 = !DILocation(line: 66, column: 7, scope: !4075)
!4126 = !DILocation(line: 67, column: 12, scope: !4124)
!4127 = !DILocation(line: 67, column: 5, scope: !4124)
!4128 = !DILocation(line: 72, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4075, file: !4076, line: 72, column: 7)
!4130 = !DILocation(line: 72, column: 23, scope: !4129)
!4131 = !DILocation(line: 72, column: 33, scope: !4129)
!4132 = !DILocation(line: 72, column: 26, scope: !4129)
!4133 = !DILocation(line: 72, column: 59, scope: !4129)
!4134 = !DILocation(line: 73, column: 7, scope: !4129)
!4135 = !DILocation(line: 73, column: 10, scope: !4129)
!4136 = !DILocation(line: 72, column: 7, scope: !4075)
!4137 = !DILocation(line: 100, column: 12, scope: !4075)
!4138 = !DILocation(line: 105, column: 7, scope: !4075)
!4139 = !DILocation(line: 74, column: 19, scope: !4129)
!4140 = !DILocation(line: 105, column: 19, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4075, file: !4076, line: 105, column: 7)
!4142 = !DILocation(line: 107, column: 13, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !4076, line: 106, column: 5)
!4144 = !DILocation(line: 109, column: 5, scope: !4143)
!4145 = !DILocation(line: 0, scope: !4075)
!4146 = !DILocation(line: 112, column: 1, scope: !4075)
!4147 = distinct !DISubprogram(name: "rpl_fflush", scope: !4148, file: !4148, line: 129, type: !4149, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !353, retainedNodes: !4185)
!4148 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!44, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !4153)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4153, file: !889, line: 51, baseType: !44, size: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4153, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4153, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4153, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4153, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4153, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4153, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4153, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4153, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4153, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4153, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4153, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4153, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4153, file: !889, line: 70, baseType: !4169, size: 64, offset: 832)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4153, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4153, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4153, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4153, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4153, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4153, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4153, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4153, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4153, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4153, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4153, file: !889, line: 93, baseType: !4169, size: 64, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4153, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4153, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4153, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4153, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!4185 = !{!4186}
!4186 = !DILocalVariable(name: "stream", arg: 1, scope: !4147, file: !4148, line: 129, type: !4151)
!4187 = !DILocation(line: 129, column: 19, scope: !4147)
!4188 = !DILocation(line: 150, column: 14, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4147, file: !4148, line: 150, column: 7)
!4190 = !DILocation(line: 150, column: 22, scope: !4189)
!4191 = !DILocation(line: 150, column: 27, scope: !4189)
!4192 = !DILocation(line: 150, column: 7, scope: !4147)
!4193 = !DILocation(line: 151, column: 12, scope: !4189)
!4194 = !DILocation(line: 151, column: 5, scope: !4189)
!4195 = !DILocalVariable(name: "fp", arg: 1, scope: !4196, file: !4148, line: 41, type: !4151)
!4196 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4148, file: !4148, line: 41, type: !4197, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !353, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4151}
!4199 = !{!4195}
!4200 = !DILocation(line: 41, column: 48, scope: !4196, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 156, column: 3, scope: !4147)
!4202 = !DILocation(line: 43, column: 11, scope: !4203, inlinedAt: !4201)
!4203 = distinct !DILexicalBlock(scope: !4196, file: !4148, line: 43, column: 7)
!4204 = !{!1090, !997, i64 0}
!4205 = !DILocation(line: 43, column: 18, scope: !4203, inlinedAt: !4201)
!4206 = !DILocation(line: 43, column: 7, scope: !4196, inlinedAt: !4201)
!4207 = !DILocation(line: 45, column: 5, scope: !4203, inlinedAt: !4201)
!4208 = !DILocation(line: 158, column: 10, scope: !4147)
!4209 = !DILocation(line: 158, column: 3, scope: !4147)
!4210 = !DILocation(line: 0, scope: !4147)
!4211 = !DILocation(line: 232, column: 1, scope: !4147)
!4212 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4213, file: !4213, line: 28, type: !4214, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !355, retainedNodes: !4251)
!4213 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!44, !4216, !4250, !44}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !4219)
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4218, file: !889, line: 51, baseType: !44, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4218, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4218, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4218, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4218, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4218, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4218, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4218, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4218, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4218, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4218, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4218, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4218, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4218, file: !889, line: 70, baseType: !4234, size: 64, offset: 832)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4218, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4218, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4218, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4218, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4218, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4218, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4218, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4218, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4218, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4218, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4218, file: !889, line: 93, baseType: !4234, size: 64, offset: 1344)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4218, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4218, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4218, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4218, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3759, line: 63, baseType: !911)
!4251 = !{!4252, !4253, !4254, !4255}
!4252 = !DILocalVariable(name: "fp", arg: 1, scope: !4212, file: !4213, line: 28, type: !4216)
!4253 = !DILocalVariable(name: "offset", arg: 2, scope: !4212, file: !4213, line: 28, type: !4250)
!4254 = !DILocalVariable(name: "whence", arg: 3, scope: !4212, file: !4213, line: 28, type: !44)
!4255 = !DILocalVariable(name: "pos", scope: !4256, file: !4213, line: 117, type: !4250)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !4213, line: 113, column: 5)
!4257 = distinct !DILexicalBlock(scope: !4212, file: !4213, line: 52, column: 7)
!4258 = !DILocation(line: 28, column: 15, scope: !4212)
!4259 = !DILocation(line: 28, column: 25, scope: !4212)
!4260 = !DILocation(line: 28, column: 37, scope: !4212)
!4261 = !DILocation(line: 52, column: 11, scope: !4257)
!4262 = !{!1090, !806, i64 16}
!4263 = !DILocation(line: 52, column: 31, scope: !4257)
!4264 = !{!1090, !806, i64 8}
!4265 = !DILocation(line: 52, column: 24, scope: !4257)
!4266 = !DILocation(line: 53, column: 7, scope: !4257)
!4267 = !DILocation(line: 53, column: 14, scope: !4257)
!4268 = !DILocation(line: 53, column: 35, scope: !4257)
!4269 = !{!1090, !806, i64 32}
!4270 = !DILocation(line: 53, column: 28, scope: !4257)
!4271 = !DILocation(line: 54, column: 7, scope: !4257)
!4272 = !DILocation(line: 54, column: 14, scope: !4257)
!4273 = !{!1090, !806, i64 72}
!4274 = !DILocation(line: 54, column: 28, scope: !4257)
!4275 = !DILocation(line: 52, column: 7, scope: !4212)
!4276 = !DILocation(line: 117, column: 26, scope: !4256)
!4277 = !DILocation(line: 117, column: 19, scope: !4256)
!4278 = !DILocation(line: 117, column: 13, scope: !4256)
!4279 = !DILocation(line: 118, column: 15, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4256, file: !4213, line: 118, column: 11)
!4281 = !DILocation(line: 118, column: 11, scope: !4256)
!4282 = !DILocation(line: 129, column: 11, scope: !4256)
!4283 = !DILocation(line: 129, column: 18, scope: !4256)
!4284 = !DILocation(line: 130, column: 11, scope: !4256)
!4285 = !DILocation(line: 130, column: 19, scope: !4256)
!4286 = !{!1090, !1033, i64 144}
!4287 = !DILocation(line: 161, column: 7, scope: !4256)
!4288 = !DILocation(line: 163, column: 10, scope: !4212)
!4289 = !DILocation(line: 163, column: 3, scope: !4212)
!4290 = !DILocation(line: 0, scope: !4212)
!4291 = !DILocation(line: 164, column: 1, scope: !4212)
!4292 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4293, file: !4293, line: 385, type: !4294, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !4308)
!4293 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!45, !4296, !69, !45, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2059, line: 6, baseType: !4299)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2061, line: 21, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2061, line: 13, size: 64, elements: !4301)
!4301 = !{!4302, !4303}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4300, file: !2061, line: 15, baseType: !44, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4300, file: !2061, line: 20, baseType: !4304, size: 32, offset: 32)
!4304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4300, file: !2061, line: 16, size: 32, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4304, file: !2061, line: 18, baseType: !7, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4304, file: !2061, line: 19, baseType: !117, size: 32)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4309 = !DILocalVariable(name: "pwc", arg: 1, scope: !4292, file: !4293, line: 385, type: !4296)
!4310 = !DILocalVariable(name: "s", arg: 2, scope: !4292, file: !4293, line: 385, type: !69)
!4311 = !DILocalVariable(name: "n", arg: 3, scope: !4292, file: !4293, line: 385, type: !45)
!4312 = !DILocalVariable(name: "ps", arg: 4, scope: !4292, file: !4293, line: 385, type: !4297)
!4313 = !DILocalVariable(name: "ret", scope: !4292, file: !4293, line: 387, type: !45)
!4314 = !DILocalVariable(name: "wc", scope: !4292, file: !4293, line: 388, type: !2072)
!4315 = !DILocalVariable(name: "uc", scope: !4316, file: !4293, line: 449, type: !43)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !4293, line: 448, column: 5)
!4317 = distinct !DILexicalBlock(scope: !4292, file: !4293, line: 447, column: 7)
!4318 = !DILocation(line: 385, column: 23, scope: !4292)
!4319 = !DILocation(line: 385, column: 40, scope: !4292)
!4320 = !DILocation(line: 385, column: 50, scope: !4292)
!4321 = !DILocation(line: 385, column: 64, scope: !4292)
!4322 = !DILocation(line: 388, column: 3, scope: !4292)
!4323 = !DILocation(line: 404, column: 9, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4292, file: !4293, line: 404, column: 7)
!4325 = !DILocation(line: 404, column: 7, scope: !4292)
!4326 = !DILocation(line: 439, column: 9, scope: !4292)
!4327 = !DILocation(line: 387, column: 10, scope: !4292)
!4328 = !DILocation(line: 447, column: 19, scope: !4317)
!4329 = !DILocation(line: 447, column: 31, scope: !4317)
!4330 = !DILocation(line: 447, column: 26, scope: !4317)
!4331 = !DILocation(line: 447, column: 41, scope: !4317)
!4332 = !DILocation(line: 447, column: 7, scope: !4292)
!4333 = !DILocation(line: 449, column: 26, scope: !4316)
!4334 = !DILocation(line: 449, column: 21, scope: !4316)
!4335 = !DILocation(line: 450, column: 14, scope: !4316)
!4336 = !DILocation(line: 450, column: 12, scope: !4316)
!4337 = !DILocation(line: 0, scope: !4316)
!4338 = !DILocation(line: 456, column: 1, scope: !4292)
!4339 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4340, file: !4340, line: 49, type: !4341, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4367)
!4340 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!40, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4345)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !106, line: 55, size: 3072, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352, !4353, !4354, !4359, !4360, !4365, !4366}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4346, file: !106, line: 57, baseType: !109, size: 16)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4346, file: !106, line: 58, baseType: !111, size: 32, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4346, file: !106, line: 59, baseType: !113, size: 256, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4346, file: !106, line: 60, baseType: !117, size: 32, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4346, file: !106, line: 61, baseType: !113, size: 256, offset: 352)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4346, file: !106, line: 62, baseType: !122, size: 2048, offset: 608)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4346, file: !106, line: 63, baseType: !4355, size: 32, offset: 2656)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !106, line: 42, size: 32, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4355, file: !106, line: 45, baseType: !109, size: 16)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4355, file: !106, line: 46, baseType: !109, size: 16, offset: 16)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4346, file: !106, line: 70, baseType: !131, size: 32, offset: 2688)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4346, file: !106, line: 75, baseType: !4361, size: 64, offset: 2720)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4346, file: !106, line: 71, size: 64, elements: !4362)
!4362 = !{!4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4361, file: !106, line: 73, baseType: !131, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4361, file: !106, line: 74, baseType: !131, size: 32, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4346, file: !106, line: 80, baseType: !138, size: 128, offset: 2784)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4346, file: !106, line: 81, baseType: !140, size: 160, offset: 2912)
!4367 = !{!4368, !4369, !4370}
!4368 = !DILocalVariable(name: "ut", arg: 1, scope: !4339, file: !4340, line: 49, type: !4343)
!4369 = !DILocalVariable(name: "p", scope: !4339, file: !4340, line: 51, type: !40)
!4370 = !DILocalVariable(name: "trimmed_name", scope: !4339, file: !4340, line: 51, type: !40)
!4371 = !DILocation(line: 49, column: 42, scope: !4339)
!4372 = !DILocation(line: 53, column: 18, scope: !4339)
!4373 = !DILocation(line: 51, column: 13, scope: !4339)
!4374 = !DILocation(line: 54, column: 26, scope: !4339)
!4375 = !DILocalVariable(name: "__dest", arg: 1, scope: !4376, file: !1184, line: 103, type: !1187)
!4376 = distinct !DISubprogram(name: "strncpy", scope: !1184, file: !1184, line: 103, type: !1326, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4377)
!4377 = !{!4375, !4378, !4379}
!4378 = !DILocalVariable(name: "__src", arg: 2, scope: !4376, file: !1184, line: 103, type: !1188)
!4379 = !DILocalVariable(name: "__len", arg: 3, scope: !4376, file: !1184, line: 103, type: !45)
!4380 = !DILocation(line: 103, column: 1, scope: !4376, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 54, column: 3, scope: !4339)
!4382 = !DILocation(line: 106, column: 57, scope: !4376, inlinedAt: !4381)
!4383 = !DILocation(line: 106, column: 10, scope: !4376, inlinedAt: !4381)
!4384 = !DILocation(line: 58, column: 3, scope: !4339)
!4385 = !DILocation(line: 58, column: 39, scope: !4339)
!4386 = !DILocation(line: 59, column: 27, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4339, file: !4340, line: 59, column: 3)
!4388 = !DILocation(line: 60, column: 21, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4387, file: !4340, line: 59, column: 3)
!4390 = !DILocation(line: 60, column: 25, scope: !4389)
!4391 = !DILocation(line: 59, column: 25, scope: !4387)
!4392 = !DILocation(line: 51, column: 9, scope: !4339)
!4393 = !DILocation(line: 60, column: 28, scope: !4389)
!4394 = !DILocation(line: 60, column: 34, scope: !4389)
!4395 = !DILocation(line: 59, column: 3, scope: !4387)
!4396 = !DILocation(line: 61, column: 13, scope: !4389)
!4397 = distinct !{!4397, !4395, !4398}
!4398 = !DILocation(line: 62, column: 5, scope: !4387)
!4399 = !DILocation(line: 63, column: 3, scope: !4339)
!4400 = distinct !DISubprogram(name: "read_utmp", scope: !4340, file: !4340, line: 92, type: !4401, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4405)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!44, !69, !338, !4403, !44}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4406 = !DILocalVariable(name: "file", arg: 1, scope: !4400, file: !4340, line: 92, type: !69)
!4407 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4400, file: !4340, line: 92, type: !338)
!4408 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4400, file: !4340, line: 92, type: !4403)
!4409 = !DILocalVariable(name: "options", arg: 4, scope: !4400, file: !4340, line: 93, type: !44)
!4410 = !DILocalVariable(name: "n_read", scope: !4400, file: !4340, line: 95, type: !45)
!4411 = !DILocalVariable(name: "n_alloc", scope: !4400, file: !4340, line: 96, type: !45)
!4412 = !DILocalVariable(name: "utmp", scope: !4400, file: !4340, line: 97, type: !4404)
!4413 = !DILocalVariable(name: "u", scope: !4400, file: !4340, line: 98, type: !4404)
!4414 = !DILocation(line: 92, column: 24, scope: !4400)
!4415 = !DILocation(line: 92, column: 38, scope: !4400)
!4416 = !DILocation(line: 92, column: 63, scope: !4400)
!4417 = !DILocation(line: 93, column: 16, scope: !4400)
!4418 = !DILocation(line: 95, column: 10, scope: !4400)
!4419 = !DILocation(line: 96, column: 10, scope: !4400)
!4420 = !DILocation(line: 97, column: 16, scope: !4400)
!4421 = !DILocation(line: 104, column: 3, scope: !4400)
!4422 = !DILocation(line: 106, column: 3, scope: !4400)
!4423 = !DILocation(line: 108, column: 15, scope: !4400)
!4424 = !DILocation(line: 98, column: 16, scope: !4400)
!4425 = !DILocation(line: 108, column: 32, scope: !4400)
!4426 = !DILocation(line: 108, column: 3, scope: !4400)
!4427 = !DILocalVariable(name: "u", arg: 1, scope: !4428, file: !4340, line: 69, type: !4343)
!4428 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4340, file: !4340, line: 69, type: !4429, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !360, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!52, !4343, !44}
!4431 = !{!4427, !4432, !4433}
!4432 = !DILocalVariable(name: "options", arg: 2, scope: !4428, file: !4340, line: 69, type: !44)
!4433 = !DILocalVariable(name: "user_proc", scope: !4428, file: !4340, line: 71, type: !52)
!4434 = !DILocation(line: 69, column: 42, scope: !4428, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 109, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4400, file: !4340, line: 109, column: 9)
!4437 = !DILocation(line: 69, column: 49, scope: !4428, inlinedAt: !4435)
!4438 = !DILocation(line: 71, column: 20, scope: !4428, inlinedAt: !4435)
!4439 = !DILocation(line: 0, scope: !4428, inlinedAt: !4435)
!4440 = !DILocation(line: 72, column: 42, scope: !4441, inlinedAt: !4435)
!4441 = distinct !DILexicalBlock(scope: !4428, file: !4340, line: 72, column: 7)
!4442 = !DILocation(line: 75, column: 7, scope: !4443, inlinedAt: !4435)
!4443 = distinct !DILexicalBlock(scope: !4428, file: !4340, line: 74, column: 7)
!4444 = !DILocation(line: 76, column: 14, scope: !4443, inlinedAt: !4435)
!4445 = !{!1099, !997, i64 4}
!4446 = !DILocation(line: 76, column: 12, scope: !4443, inlinedAt: !4435)
!4447 = !DILocation(line: 77, column: 7, scope: !4443, inlinedAt: !4435)
!4448 = !DILocation(line: 77, column: 11, scope: !4443, inlinedAt: !4435)
!4449 = !DILocation(line: 77, column: 32, scope: !4443, inlinedAt: !4435)
!4450 = !DILocation(line: 77, column: 36, scope: !4443, inlinedAt: !4435)
!4451 = !DILocation(line: 77, column: 39, scope: !4443, inlinedAt: !4435)
!4452 = !DILocation(line: 77, column: 45, scope: !4443, inlinedAt: !4435)
!4453 = !DILocation(line: 74, column: 7, scope: !4428, inlinedAt: !4435)
!4454 = !DILocation(line: 111, column: 20, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !4340, line: 111, column: 13)
!4456 = distinct !DILexicalBlock(scope: !4436, file: !4340, line: 110, column: 7)
!4457 = !DILocation(line: 111, column: 13, scope: !4456)
!4458 = !DILocation(line: 174, column: 19, scope: !368, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 112, column: 18, scope: !4455)
!4460 = !DILocation(line: 174, column: 41, scope: !368, inlinedAt: !4459)
!4461 = !DILocation(line: 176, column: 10, scope: !368, inlinedAt: !4459)
!4462 = !DILocation(line: 178, column: 9, scope: !4463, inlinedAt: !4459)
!4463 = distinct !DILexicalBlock(scope: !368, file: !334, line: 178, column: 7)
!4464 = !DILocation(line: 178, column: 7, scope: !368, inlinedAt: !4459)
!4465 = !DILocation(line: 180, column: 13, scope: !4466, inlinedAt: !4459)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !334, line: 180, column: 11)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !334, line: 179, column: 5)
!4468 = !DILocation(line: 180, column: 11, scope: !4467, inlinedAt: !4459)
!4469 = !DILocation(line: 191, column: 11, scope: !4470, inlinedAt: !4459)
!4470 = distinct !DILexicalBlock(scope: !4467, file: !334, line: 191, column: 11)
!4471 = !DILocation(line: 191, column: 11, scope: !4467, inlinedAt: !4459)
!4472 = !DILocation(line: 192, column: 9, scope: !4470, inlinedAt: !4459)
!4473 = !DILocation(line: 201, column: 11, scope: !4474, inlinedAt: !4459)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !334, line: 200, column: 11)
!4475 = distinct !DILexicalBlock(scope: !4463, file: !334, line: 195, column: 5)
!4476 = !DILocation(line: 200, column: 11, scope: !4475, inlinedAt: !4459)
!4477 = !DILocation(line: 202, column: 9, scope: !4474, inlinedAt: !4459)
!4478 = !DILocation(line: 203, column: 14, scope: !4475, inlinedAt: !4459)
!4479 = !DILocation(line: 203, column: 18, scope: !4475, inlinedAt: !4459)
!4480 = !DILocation(line: 203, column: 9, scope: !4475, inlinedAt: !4459)
!4481 = !DILocation(line: 0, scope: !368, inlinedAt: !4459)
!4482 = !DILocation(line: 207, column: 25, scope: !368, inlinedAt: !4459)
!4483 = !DILocation(line: 207, column: 10, scope: !368, inlinedAt: !4459)
!4484 = !DILocation(line: 112, column: 18, scope: !4455)
!4485 = !DILocation(line: 112, column: 11, scope: !4455)
!4486 = !DILocation(line: 0, scope: !4400)
!4487 = !DILocation(line: 114, column: 20, scope: !4456)
!4488 = !DILocation(line: 114, column: 9, scope: !4456)
!4489 = !DILocation(line: 114, column: 26, scope: !4456)
!4490 = !{i64 0, i64 2, !1613, i64 4, i64 4, !996, i64 8, i64 32, !1094, i64 40, i64 4, !1094, i64 44, i64 32, !1094, i64 76, i64 256, !1094, i64 332, i64 2, !1613, i64 334, i64 2, !1613, i64 336, i64 4, !996, i64 340, i64 4, !996, i64 344, i64 4, !996, i64 348, i64 16, !1094, i64 364, i64 20, !1094}
!4491 = !DILocation(line: 115, column: 7, scope: !4456)
!4492 = distinct !{!4492, !4426, !4493}
!4493 = !DILocation(line: 115, column: 7, scope: !4400)
!4494 = !DILocation(line: 0, scope: !4455)
!4495 = !DILocation(line: 0, scope: !4456)
!4496 = !DILocation(line: 117, column: 3, scope: !4400)
!4497 = !DILocation(line: 119, column: 14, scope: !4400)
!4498 = !DILocation(line: 120, column: 13, scope: !4400)
!4499 = !DILocation(line: 122, column: 3, scope: !4400)
!4500 = distinct !DISubprogram(name: "close_stream", scope: !4501, file: !4501, line: 56, type: !4502, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !375, retainedNodes: !4538)
!4501 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!44, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !887, line: 7, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !889, line: 49, size: 1728, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4506, file: !889, line: 51, baseType: !44, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4506, file: !889, line: 54, baseType: !40, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4506, file: !889, line: 55, baseType: !40, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4506, file: !889, line: 56, baseType: !40, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4506, file: !889, line: 57, baseType: !40, size: 64, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4506, file: !889, line: 58, baseType: !40, size: 64, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4506, file: !889, line: 59, baseType: !40, size: 64, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4506, file: !889, line: 60, baseType: !40, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4506, file: !889, line: 61, baseType: !40, size: 64, offset: 512)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4506, file: !889, line: 64, baseType: !40, size: 64, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4506, file: !889, line: 65, baseType: !40, size: 64, offset: 640)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4506, file: !889, line: 66, baseType: !40, size: 64, offset: 704)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4506, file: !889, line: 68, baseType: !904, size: 64, offset: 768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4506, file: !889, line: 70, baseType: !4522, size: 64, offset: 832)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4506, file: !889, line: 72, baseType: !44, size: 32, offset: 896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4506, file: !889, line: 73, baseType: !44, size: 32, offset: 928)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4506, file: !889, line: 74, baseType: !911, size: 64, offset: 960)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4506, file: !889, line: 77, baseType: !48, size: 16, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4506, file: !889, line: 78, baseType: !914, size: 8, offset: 1040)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4506, file: !889, line: 79, baseType: !916, size: 8, offset: 1048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4506, file: !889, line: 81, baseType: !920, size: 64, offset: 1088)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4506, file: !889, line: 89, baseType: !923, size: 64, offset: 1152)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4506, file: !889, line: 91, baseType: !925, size: 64, offset: 1216)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4506, file: !889, line: 92, baseType: !928, size: 64, offset: 1280)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4506, file: !889, line: 93, baseType: !4522, size: 64, offset: 1344)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4506, file: !889, line: 94, baseType: !42, size: 64, offset: 1408)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4506, file: !889, line: 95, baseType: !45, size: 64, offset: 1472)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4506, file: !889, line: 96, baseType: !44, size: 32, offset: 1536)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4506, file: !889, line: 98, baseType: !140, size: 160, offset: 1568)
!4538 = !{!4539, !4540, !4542, !4543}
!4539 = !DILocalVariable(name: "stream", arg: 1, scope: !4500, file: !4501, line: 56, type: !4504)
!4540 = !DILocalVariable(name: "some_pending", scope: !4500, file: !4501, line: 58, type: !4541)
!4541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4542 = !DILocalVariable(name: "prev_fail", scope: !4500, file: !4501, line: 59, type: !4541)
!4543 = !DILocalVariable(name: "fclose_fail", scope: !4500, file: !4501, line: 60, type: !4541)
!4544 = !DILocation(line: 56, column: 21, scope: !4500)
!4545 = !DILocation(line: 58, column: 30, scope: !4500)
!4546 = !DILocalVariable(name: "__stream", arg: 1, scope: !4547, file: !1082, line: 135, type: !4504)
!4547 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1082, file: !1082, line: 135, type: !4502, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !375, retainedNodes: !4548)
!4548 = !{!4546}
!4549 = !DILocation(line: 135, column: 1, scope: !4547, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 59, column: 27, scope: !4500)
!4551 = !DILocation(line: 137, column: 10, scope: !4547, inlinedAt: !4550)
!4552 = !DILocation(line: 59, column: 43, scope: !4500)
!4553 = !DILocation(line: 60, column: 29, scope: !4500)
!4554 = !DILocation(line: 60, column: 45, scope: !4500)
!4555 = !DILocation(line: 70, column: 17, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4500, file: !4501, line: 70, column: 7)
!4557 = !DILocation(line: 58, column: 50, scope: !4500)
!4558 = !DILocation(line: 70, column: 33, scope: !4556)
!4559 = !DILocation(line: 70, column: 53, scope: !4556)
!4560 = !DILocation(line: 70, column: 59, scope: !4556)
!4561 = !DILocation(line: 70, column: 7, scope: !4500)
!4562 = !DILocation(line: 72, column: 11, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4556, file: !4501, line: 71, column: 5)
!4564 = !DILocation(line: 73, column: 9, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4563, file: !4501, line: 72, column: 11)
!4566 = !DILocation(line: 73, column: 15, scope: !4565)
!4567 = !DILocation(line: 0, scope: !4500)
!4568 = !DILocation(line: 78, column: 1, scope: !4500)
!4569 = distinct !DISubprogram(name: "locale_charset", scope: !4570, file: !4570, line: 687, type: !1706, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !377, retainedNodes: !4571)
!4570 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4571 = !{!4572}
!4572 = !DILocalVariable(name: "codeset", scope: !4569, file: !4570, line: 689, type: !69)
!4573 = !DILocation(line: 696, column: 13, scope: !4569)
!4574 = !DILocation(line: 689, column: 15, scope: !4569)
!4575 = !DILocation(line: 754, column: 15, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4569, file: !4570, line: 754, column: 7)
!4577 = !DILocation(line: 754, column: 7, scope: !4569)
!4578 = !DILocation(line: 907, column: 13, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !4570, line: 907, column: 13)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !4570, line: 897, column: 7)
!4581 = distinct !DILexicalBlock(scope: !4569, file: !4570, line: 856, column: 3)
!4582 = !DILocation(line: 907, column: 24, scope: !4579)
!4583 = !DILocation(line: 907, column: 13, scope: !4580)
!4584 = !DILocation(line: 995, column: 3, scope: !4569)
