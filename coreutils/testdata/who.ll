; ModuleID = 'coreutils-8.30/src/who.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print information about users who are currently logged in.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [195 x i8] c"\0A  -a, --all         same as -b -d --login -p -r -t -T -u\0A  -b, --boot        time of last system boot\0A  -d, --dead        print dead processes\0A  -H, --heading     print line of column headings\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -l, --login       print system login processes\0A\00", align 1
@.str.5 = private unnamed_addr constant [187 x i8] c"      --lookup      attempt to canonicalize hostnames via DNS\0A  -m                only hostname and user associated with stdin\0A  -p, --process     print active processes spawned by init\0A\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"  -q, --count       all login names and number of users logged on\0A  -r, --runlevel    print current runlevel\0A  -s, --short       print only name, line, and time (default)\0A  -t, --time        print last system clock change\0A\00", align 1
@.str.7 = private unnamed_addr constant [163 x i8] c"  -T, -w, --mesg    add user's message status as +, - or ?\0A  -u, --users       list users logged in\0A      --message     same as -T\0A      --writable    same as -T\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [125 x i8] c"\0AIf FILE is not specified, use %s.  %s as FILE is common.\0AIf ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"abdlmpqrstuwHT\00", align 1
@longopts = internal constant [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@need_boottime = internal unnamed_addr global i1 false, align 1, !dbg !291
@need_deadprocs = internal unnamed_addr global i1 false, align 1, !dbg !292
@need_login = internal unnamed_addr global i1 false, align 1, !dbg !293
@need_initspawn = internal unnamed_addr global i1 false, align 1, !dbg !294
@need_runlevel = internal unnamed_addr global i1 false, align 1, !dbg !295
@need_clockchange = internal unnamed_addr global i1 false, align 1, !dbg !296
@need_users = internal unnamed_addr global i1 false, align 1, !dbg !297
@include_mesg = internal unnamed_addr global i1 false, align 1, !dbg !298
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !299
@.str.19 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@do_lookup = internal unnamed_addr global i1 false, align 1, !dbg !300
@short_output = internal unnamed_addr global i1 false, align 1, !dbg !301
@short_list = internal unnamed_addr global i1 false, align 1, !dbg !302
@my_line_only = internal unnamed_addr global i1 false, align 1, !dbg !303
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !304
@include_exit = internal unnamed_addr global i1 false, align 1, !dbg !305
@.str.22 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !67
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !71
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\0A# users=%lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@idle_string.now = internal global i64 -9223372036854775808, align 8, !dbg !217
@.str.80 = private unnamed_addr constant [30 x i8] c"seconds_idle / (60 * 60) < 24\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"src/who.c\00", align 1
@__PRETTY_FUNCTION__.idle_string = private unnamed_addr constant [40 x i8] c"const char *idle_string(time_t, time_t)\00", align 1
@idle_string.idle_hhmm = internal global [6 x i8] zeroinitializer, align 1, !dbg !228
@.str.82 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" old \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"  .  \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  ?\00", align 1
@print_user.hostlen = internal unnamed_addr global i64 0, align 8, !dbg !213
@print_user.hoststr = internal unnamed_addr global i8* null, align 8, !dbg !106
@.str.77 = private unnamed_addr constant [8 x i8] c"(%s:%s)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !233
@print_runlevel.runlevline = internal unnamed_addr global i8* null, align 8, !dbg !260
@.str.84 = private unnamed_addr constant [10 x i8] c"run-level\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@print_runlevel.comment = internal unnamed_addr global i8* null, align 8, !dbg !270
@.str.86 = private unnamed_addr constant [6 x i8] c"last=\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"system boot\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"clock change\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@print_deadprocs.exitstr = internal unnamed_addr global i8* null, align 8, !dbg !272
@.str.92 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"exit=\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%s%d %s%d\00", align 1
@print_line.mesg = internal global [3 x i8] c" x\00", align 1, !dbg !74
@.str.69 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" %10s\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"   .\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"%-8.*s%s %-12.*s %-*s%s%s %-8s%s\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"heading\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), align 8, !dbg !306
@.str.95 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !312
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !317
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !355
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !360
@.str.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !363
@.str.107 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !370
@.str.115 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.121, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.122, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.126, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.127, i32 0, i32 0), i8* null], align 16, !dbg !377
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !404
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !411
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !421
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.129 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.131 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.132 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.133 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.134 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !425
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !432
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !423
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !434
@.str.141 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.142 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.144 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.145 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.146 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.147 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.148 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.149 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.150 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.151 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.152 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.153 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.154 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.157 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.158 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.159 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.160 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.161 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.162 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !440
@.str.1.173 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.188 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !903 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !908, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %0, metadata !907, metadata !DIExpression()), !dbg !929
  %3 = icmp eq i32 %0, 0, !dbg !930
  br i1 %3, label %9, label %4, !dbg !931

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !932, !tbaa !934
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !932
  %7 = load i8*, i8** @program_name, align 8, !dbg !932, !tbaa !934
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !932
  br label %74, !dbg !932

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !938
  %11 = load i8*, i8** @program_name, align 8, !dbg !938, !tbaa !934
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !938
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !939
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !934
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !939
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !940
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !940, !tbaa !934
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !940
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !941
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !941, !tbaa !934
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !941
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !942
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !942, !tbaa !934
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !942
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !943
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !943, !tbaa !934
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !943
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !944
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !944, !tbaa !934
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !944
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !945
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !945, !tbaa !934
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !945
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !946
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !946, !tbaa !934
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !946
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !947
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !947
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #11, !dbg !948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %39, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !925
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !949
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !916, metadata !DIExpression()) #11, !dbg !950
  br label %41, !dbg !951

; <label>:41:                                     ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !916, metadata !DIExpression()) #11, !dbg !950
  %44 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %42) #14, !dbg !951
  %45 = icmp eq i32 %44, 0, !dbg !951
  br i1 %45, label %51, label %46, !dbg !952

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !953
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !916, metadata !DIExpression()) #11, !dbg !950
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !954
  %49 = load i8*, i8** %48, align 8, !dbg !954, !tbaa !955
  %50 = icmp eq i8* %49, null, !dbg !957
  br i1 %50, label %51, label %41, !dbg !958, !llvm.loop !959

; <label>:51:                                     ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !916, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !916, metadata !DIExpression()) #11, !dbg !950
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !962
  %54 = load i8*, i8** %53, align 8, !dbg !962, !tbaa !964
  %55 = icmp eq i8* %54, null, !dbg !965
  %56 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %54, !dbg !966
  call void @llvm.dbg.value(metadata i8* %56, metadata !915, metadata !DIExpression()) #11, !dbg !967
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !968
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !968
  %59 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !969
  call void @llvm.dbg.value(metadata i8* %59, metadata !923, metadata !DIExpression()) #11, !dbg !970
  %60 = icmp eq i8* %59, null, !dbg !971
  br i1 %60, label %67, label %61, !dbg !973

; <label>:61:                                     ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #14, !dbg !974
  %63 = icmp eq i32 %62, 0, !dbg !974
  br i1 %63, label %67, label %64, !dbg !975

; <label>:64:                                     ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !976
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !976
  br label %67, !dbg !978

; <label>:67:                                     ; preds = %51, %61, %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !979
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !979
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !980
  %71 = icmp eq i8* %56, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !980
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !980
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* %56, i8* %72) #11, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #11, !dbg !981
  br label %74

; <label>:74:                                     ; preds = %67, %4
  tail call void @exit(i32 %0) #15, !dbg !982
  unreachable, !dbg !982
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !988, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8** %1, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8 1, metadata !991, metadata !DIExpression()), !dbg !994
  %3 = load i8*, i8** %1, align 8, !dbg !995, !tbaa !934
  tail call void @set_program_name(i8* %3) #11, !dbg !996
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !997
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !998
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !999
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !1000
  br label %8, !dbg !1001

; <label>:8:                                      ; preds = %29, %2
  %9 = phi i8 [ 1, %2 ], [ %31, %29 ], !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %10, metadata !990, metadata !DIExpression()), !dbg !1003
  switch i32 %10, label %28 [
    i32 -1, label %32
    i32 97, label %11
    i32 98, label %29
    i32 100, label %12
    i32 72, label %13
    i32 108, label %14
    i32 109, label %15
    i32 112, label %16
    i32 113, label %17
    i32 114, label %18
    i32 115, label %19
    i32 116, label %20
    i32 84, label %21
    i32 119, label %21
    i32 117, label %22
    i32 128, label %23
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !1001

; <label>:11:                                     ; preds = %8
  store i1 true, i1* @need_boottime, align 1
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @need_login, align 1
  store i1 true, i1* @need_initspawn, align 1
  store i1 true, i1* @need_runlevel, align 1
  store i1 true, i1* @need_clockchange, align 1
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @include_mesg, align 1
  store i1 true, i1* @include_idle, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1004

; <label>:12:                                     ; preds = %8
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @include_idle, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1007

; <label>:13:                                     ; preds = %8
  br label %29, !dbg !1008

; <label>:14:                                     ; preds = %8
  store i1 true, i1* @need_login, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1009

; <label>:15:                                     ; preds = %8
  br label %29, !dbg !1010

; <label>:16:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1011

; <label>:17:                                     ; preds = %8
  br label %29, !dbg !1012

; <label>:18:                                     ; preds = %8
  store i1 true, i1* @need_runlevel, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1013

; <label>:19:                                     ; preds = %8
  br label %29, !dbg !1014

; <label>:20:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1015

; <label>:21:                                     ; preds = %8, %8
  br label %29, !dbg !1016

; <label>:22:                                     ; preds = %8
  store i1 true, i1* @need_users, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !991, metadata !DIExpression()), !dbg !994
  br label %29, !dbg !1017

; <label>:23:                                     ; preds = %8
  br label %29, !dbg !1018

; <label>:24:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !1019
  unreachable, !dbg !1019

; <label>:25:                                     ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020, !tbaa !934
  %27 = load i8*, i8** @Version, align 8, !dbg !1020, !tbaa !934
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #11, !dbg !1020
  tail call void @exit(i32 0) #15, !dbg !1020
  unreachable, !dbg !1020

; <label>:28:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !1021
  unreachable, !dbg !1021

; <label>:29:                                     ; preds = %8, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %30 = phi i1* [ @do_lookup, %23 ], [ @include_idle, %22 ], [ @include_mesg, %21 ], [ @need_clockchange, %20 ], [ @short_output, %19 ], [ @include_idle, %18 ], [ @short_list, %17 ], [ @need_initspawn, %16 ], [ @my_line_only, %15 ], [ @include_idle, %14 ], [ @include_heading, %13 ], [ @include_exit, %12 ], [ @include_exit, %11 ], [ @need_boottime, %8 ]
  %31 = phi i8 [ %9, %23 ], [ 0, %22 ], [ %9, %21 ], [ 0, %20 ], [ %9, %19 ], [ 0, %18 ], [ %9, %17 ], [ 0, %16 ], [ %9, %15 ], [ 0, %14 ], [ %9, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %8 ], !dbg !1022
  store i1 true, i1* %30, align 1
  call void @llvm.dbg.value(metadata i8 %31, metadata !991, metadata !DIExpression()), !dbg !994
  br label %8, !dbg !1001, !llvm.loop !1023

; <label>:32:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i8 %9, metadata !991, metadata !DIExpression()), !dbg !994
  %33 = and i8 %9, 1, !dbg !1025
  %34 = icmp eq i8 %33, 0, !dbg !1025
  br i1 %34, label %36, label %35, !dbg !1027

; <label>:35:                                     ; preds = %32
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @short_output, align 1
  br label %36, !dbg !1028

; <label>:36:                                     ; preds = %32, %35
  %37 = load i1, i1* @include_exit, align 1
  br i1 %37, label %38, label %39, !dbg !1030

; <label>:38:                                     ; preds = %36
  store i1 false, i1* @short_output, align 1
  br label %39, !dbg !1031

; <label>:39:                                     ; preds = %38, %36
  %40 = tail call zeroext i1 @hard_locale(i32 2) #11, !dbg !1034
  %41 = select i1 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), !dbg !1036
  %42 = select i1 %40, i32 16, i32 12, !dbg !1036
  store i8* %41, i8** @time_format, align 8, !dbg !1038, !tbaa !934
  store i32 %42, i32* @time_format_width, align 4, !dbg !1040, !tbaa !1041
  %43 = load i32, i32* @optind, align 4, !dbg !1043, !tbaa !1041
  %44 = sub nsw i32 %0, %43, !dbg !1044
  switch i32 %44, label %51 [
    i32 2, label %45
    i32 -1, label %46
    i32 0, label %46
    i32 1, label %47
  ], !dbg !1045

; <label>:45:                                     ; preds = %39
  store i1 true, i1* @my_line_only, align 1
  br label %46, !dbg !1046

; <label>:46:                                     ; preds = %39, %39, %45
  tail call fastcc void @who(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 1), !dbg !1048
  br label %59, !dbg !1049

; <label>:47:                                     ; preds = %39
  %48 = sext i32 %43 to i64, !dbg !1050
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !1050
  %50 = load i8*, i8** %49, align 8, !dbg !1050, !tbaa !934
  tail call fastcc void @who(i8* %50, i32 0), !dbg !1051
  br label %59, !dbg !1052

; <label>:51:                                     ; preds = %39
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !1053
  %53 = load i32, i32* @optind, align 4, !dbg !1054, !tbaa !1041
  %54 = add nsw i32 %53, 2, !dbg !1055
  %55 = sext i32 %54 to i64, !dbg !1056
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1056
  %57 = load i8*, i8** %56, align 8, !dbg !1056, !tbaa !934
  %58 = tail call i8* @quote(i8* %57) #11, !dbg !1057
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %58) #11, !dbg !1058
  tail call void @usage(i32 1) #16, !dbg !1059
  unreachable, !dbg !1059

; <label>:59:                                     ; preds = %47, %46
  ret i32 0, !dbg !1060
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @who(i8*, i32) unnamed_addr #7 !dbg !1061 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %11, metadata !192, metadata !DIExpression()), !dbg !1070
  %12 = alloca [38 x i8], align 16
  call void @llvm.dbg.declare(metadata [38 x i8]* %12, metadata !196, metadata !DIExpression()), !dbg !1086
  %13 = alloca [12 x i8], align 1
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !201, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1088, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1099, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !278, metadata !DIExpression()), !dbg !1107
  %14 = alloca [257 x i8], align 16
  call void @llvm.dbg.declare(metadata [257 x i8]* %14, metadata !205, metadata !DIExpression()), !dbg !1110
  %15 = alloca i64, align 8
  %16 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1065, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %1, metadata !1066, metadata !DIExpression()), !dbg !1112
  %17 = bitcast i64* %15 to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #11, !dbg !1113
  %18 = bitcast %struct.utmpx** %16 to i8*, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1114
  call void @llvm.dbg.value(metadata i64* %15, metadata !1067, metadata !DIExpression(DW_OP_deref)), !dbg !1115
  call void @llvm.dbg.value(metadata %struct.utmpx** %16, metadata !1068, metadata !DIExpression(DW_OP_deref)), !dbg !1116
  %19 = call i32 @read_utmp(i8* %0, i64* nonnull %15, %struct.utmpx** nonnull %16, i32 %1) #11, !dbg !1117
  %20 = icmp eq i32 %19, 0, !dbg !1119
  br i1 %20, label %25, label %21, !dbg !1120

; <label>:21:                                     ; preds = %2
  %22 = tail call i32* @__errno_location() #17, !dbg !1121
  %23 = load i32, i32* %22, align 4, !dbg !1121, !tbaa !1041
  %24 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1121
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* %24) #11, !dbg !1121
  unreachable, !dbg !1121

; <label>:25:                                     ; preds = %2
  %26 = load i1, i1* @short_list, align 1
  %27 = load i64, i64* %15, align 8, !dbg !1122, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %27, metadata !1067, metadata !DIExpression()), !dbg !1115
  %28 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !dbg !1122, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1068, metadata !DIExpression()), !dbg !1116
  br i1 %26, label %29, label %57, !dbg !1125

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, metadata !1126, metadata !DIExpression()) #11, !dbg !1136
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1129, metadata !DIExpression()) #11, !dbg !1138
  call void @llvm.dbg.value(metadata i64 0, metadata !1130, metadata !DIExpression()) #11, !dbg !1139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), metadata !1131, metadata !DIExpression()) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %27, metadata !1126, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1136
  %30 = icmp eq i64 %27, 0, !dbg !1141
  br i1 %30, label %53, label %31, !dbg !1141

; <label>:31:                                     ; preds = %29, %48
  %32 = phi i64 [ %36, %48 ], [ %27, %29 ]
  %33 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %29 ]
  %34 = phi i64 [ %49, %48 ], [ 0, %29 ]
  %35 = phi %struct.utmpx* [ %51, %48 ], [ %28, %29 ]
  %36 = add i64 %32, -1, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %33, metadata !1131, metadata !DIExpression()) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %34, metadata !1130, metadata !DIExpression()) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.utmpx* %35, metadata !1129, metadata !DIExpression()) #11, !dbg !1138
  %37 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 0, i32 4, i64 0, !dbg !1143
  %38 = load i8, i8* %37, align 4, !dbg !1143, !tbaa !1144
  %39 = icmp eq i8 %38, 0, !dbg !1143
  br i1 %39, label %48, label %40, !dbg !1143

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 0, i32 0, !dbg !1143
  %42 = load i16, i16* %41, align 4, !dbg !1143, !tbaa !1145
  %43 = icmp eq i16 %42, 7, !dbg !1143
  br i1 %43, label %44, label %48, !dbg !1150

; <label>:44:                                     ; preds = %40
  %45 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %35) #11, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %45, metadata !1132, metadata !DIExpression()) #11, !dbg !1152
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %33, i8* %45) #11, !dbg !1153
  call void @free(i8* %45) #11, !dbg !1154
  %47 = add i64 %34, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %47, metadata !1130, metadata !DIExpression()) #11, !dbg !1139
  br label %48, !dbg !1156

; <label>:48:                                     ; preds = %44, %40, %31
  %49 = phi i64 [ %47, %44 ], [ %34, %40 ], [ %34, %31 ], !dbg !1157
  %50 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %44 ], [ %33, %40 ], [ %33, %31 ], !dbg !1157
  %51 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %36, metadata !1126, metadata !DIExpression()) #11, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %50, metadata !1131, metadata !DIExpression()) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %49, metadata !1130, metadata !DIExpression()) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1129, metadata !DIExpression()) #11, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %36, metadata !1126, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1136
  %52 = icmp eq i64 %36, 0, !dbg !1141
  br i1 %52, label %53, label %31, !dbg !1141, !llvm.loop !1159

; <label>:53:                                     ; preds = %48, %29
  %54 = phi i64 [ 0, %29 ], [ %49, %48 ], !dbg !1162
  call void @llvm.dbg.value(metadata i64 %54, metadata !1130, metadata !DIExpression()) #11, !dbg !1139
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 5) #11, !dbg !1163
  %56 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i64 %54) #11, !dbg !1163
  br label %515, !dbg !1164

; <label>:57:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, metadata !1080, metadata !DIExpression()) #11, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1081, metadata !DIExpression()) #11, !dbg !1166
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1083, metadata !DIExpression()) #11, !dbg !1167
  %58 = load i1, i1* @include_heading, align 1
  br i1 %58, label %59, label %67, !dbg !1168

; <label>:59:                                     ; preds = %57
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 5) #11, !dbg !1169
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !1175
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #11, !dbg !1176
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 5) #11, !dbg !1177
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1178
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1179
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 5) #11, !dbg !1180
  call fastcc void @print_line(i32 -1, i8* %60, i8 signext 32, i32 -1, i8* %61, i8* %62, i8* %63, i8* %64, i8* %65, i8* %66) #11, !dbg !1181
  br label %67, !dbg !1182

; <label>:67:                                     ; preds = %59, %57
  %68 = load i1, i1* @my_line_only, align 1
  br i1 %68, label %69, label %77, !dbg !1183

; <label>:69:                                     ; preds = %67
  %70 = call i8* @ttyname(i32 0) #11, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %70, metadata !1082, metadata !DIExpression()) #11, !dbg !1187
  %71 = icmp eq i8* %70, null, !dbg !1188
  br i1 %71, label %515, label %72, !dbg !1190

; <label>:72:                                     ; preds = %69
  %73 = call i32 @strncmp(i8* nonnull %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 5) #14, !dbg !1191
  %74 = icmp eq i32 %73, 0, !dbg !1193
  %75 = getelementptr inbounds i8, i8* %70, i64 5, !dbg !1194
  %76 = select i1 %74, i8* %75, i8* %70, !dbg !1195
  br label %77, !dbg !1195

; <label>:77:                                     ; preds = %72, %67
  %78 = phi i8* [ undef, %67 ], [ %76, %72 ]
  call void @llvm.dbg.value(metadata i8* %78, metadata !1082, metadata !DIExpression()) #11, !dbg !1187
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1083, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1081, metadata !DIExpression()) #11, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %27, metadata !1080, metadata !DIExpression()) #11, !dbg !1165
  %79 = icmp eq i64 %27, 0, !dbg !1196
  br i1 %79, label %515, label %80, !dbg !1196

; <label>:80:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i64 %27, metadata !1080, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1165
  %81 = bitcast %struct.stat* %10 to i8*
  %82 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %83 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0
  %84 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %85 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 5
  %86 = bitcast i64* %7 to i8*
  %87 = bitcast i64* %8 to i8*
  %88 = bitcast i64* %6 to i8*
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 11, i32 0
  %91 = bitcast i64* %5 to i8*
  %92 = bitcast i64* %9 to i8*
  %93 = getelementptr inbounds [257 x i8], [257 x i8]* %14, i64 0, i64 0
  %94 = bitcast i64* %4 to i8*
  %95 = bitcast i64* %3 to i8*
  br label %96, !dbg !1196

; <label>:96:                                     ; preds = %511, %80
  %97 = phi i64 [ %27, %80 ], [ %100, %511 ]
  %98 = phi i64 [ -9223372036854775808, %80 ], [ %512, %511 ]
  %99 = phi %struct.utmpx* [ %28, %80 ], [ %513, %511 ]
  %100 = add i64 %97, -1, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %98, metadata !1083, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1081, metadata !DIExpression()) #11, !dbg !1166
  %101 = load i1, i1* @my_line_only, align 1
  br i1 %101, label %102, label %106, !dbg !1198

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1199
  %104 = call i32 @strncmp(i8* %78, i8* nonnull %103, i64 32) #14, !dbg !1199
  %105 = icmp eq i32 %104, 0, !dbg !1199
  br i1 %105, label %106, label %503, !dbg !1200

; <label>:106:                                    ; preds = %102, %96
  %107 = load i1, i1* @need_users, align 1
  br i1 %107, label %108, label %279, !dbg !1201

; <label>:108:                                    ; preds = %106
  %109 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 4, i64 0, !dbg !1202
  %110 = load i8, i8* %109, align 4, !dbg !1202, !tbaa !1144
  %111 = icmp eq i8 %110, 0, !dbg !1202
  br i1 %111, label %279, label %112, !dbg !1202

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1202
  %114 = load i16, i16* %113, align 4, !dbg !1202, !tbaa !1145
  %115 = icmp eq i16 %114, 7, !dbg !1202
  br i1 %115, label %116, label %279, !dbg !1203

; <label>:116:                                    ; preds = %112
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !152, metadata !DIExpression()) #11, !dbg !1204
  call void @llvm.dbg.value(metadata i64 undef, metadata !153, metadata !DIExpression()) #11, !dbg !1205
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %81) #11, !dbg !1206
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %82) #11, !dbg !1207
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %83) #11, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %83, metadata !200, metadata !DIExpression()) #11, !dbg !1209
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1087
  %117 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1087
  %118 = load i32, i32* %117, align 4, !dbg !1087, !tbaa !1210
  %119 = sext i32 %118 to i64, !dbg !1087
  %120 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %119) #11, !dbg !1087
  %121 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1211
  %122 = load i8, i8* %121, align 4, !dbg !1211, !tbaa !1144
  %123 = icmp eq i8 %122, 47, !dbg !1211
  br i1 %123, label %126, label %124, !dbg !1213

; <label>:124:                                    ; preds = %116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %83, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 6, i1 false) #11, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %85, metadata !200, metadata !DIExpression()) #11, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %85, metadata !200, metadata !DIExpression()) #11, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %85, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %121, metadata !1222, metadata !DIExpression()) #11, !dbg !1227
  call void @llvm.dbg.value(metadata i64 32, metadata !1223, metadata !DIExpression()) #11, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1224, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)) #11, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %85, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %121, metadata !1222, metadata !DIExpression()) #11, !dbg !1227
  %125 = icmp eq i8 %122, 0, !dbg !1230
  br i1 %125, label %139, label %126, !dbg !1231

; <label>:126:                                    ; preds = %116, %124
  %127 = phi i8* [ %85, %124 ], [ %83, %116 ]
  %128 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 32, !dbg !1232
  br label %129, !dbg !1233

; <label>:129:                                    ; preds = %136, %126
  %130 = phi i8* [ %133, %136 ], [ %121, %126 ]
  %131 = phi i8* [ %134, %136 ], [ %127, %126 ]
  %132 = phi i8 [ %137, %136 ], [ %122, %126 ]
  call void @llvm.dbg.value(metadata i8* %130, metadata !1222, metadata !DIExpression()) #11, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %131, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  %133 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1233
  %134 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !1234
  store i8 %132, i8* %131, align 1, !dbg !1235, !tbaa !1144, !alias.scope !1236, !noalias !1239
  %135 = icmp ult i8* %133, %128, !dbg !1241
  br i1 %135, label %136, label %139, !dbg !1230, !llvm.loop !1242

; <label>:136:                                    ; preds = %129
  %137 = load i8, i8* %133, align 1, !dbg !1245, !tbaa !1144, !alias.scope !1239, !noalias !1236
  call void @llvm.dbg.value(metadata i8* %134, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %133, metadata !1222, metadata !DIExpression()) #11, !dbg !1227
  %138 = icmp eq i8 %137, 0, !dbg !1230
  br i1 %138, label %139, label %129, !dbg !1231

; <label>:139:                                    ; preds = %136, %129, %124
  %140 = phi i8* [ %85, %124 ], [ %134, %129 ], [ %134, %136 ]
  call void @llvm.dbg.value(metadata i8* %140, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %140, metadata !1215, metadata !DIExpression()) #11, !dbg !1225
  store i8 0, i8* %140, align 1, !dbg !1246, !tbaa !1144, !alias.scope !1236, !noalias !1239
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !154, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %83, metadata !1248, metadata !DIExpression()) #11, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !1255, metadata !DIExpression()) #11, !dbg !1256
  %141 = call i32 @__xstat(i32 1, i8* nonnull %83, %struct.stat* nonnull %10) #11, !dbg !1259
  %142 = icmp eq i32 %141, 0, !dbg !1260
  br i1 %142, label %143, label %180, !dbg !1261

; <label>:143:                                    ; preds = %139
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !154, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !1262, metadata !DIExpression()) #11, !dbg !1269
  %144 = load i32, i32* %89, align 8, !dbg !1272, !tbaa !1273
  %145 = and i32 %144, 16, !dbg !1276
  %146 = icmp eq i32 %145, 0, !dbg !1277
  %147 = select i1 %146, i8 45, i8 43, !dbg !1278
  call void @llvm.dbg.value(metadata i8 %147, metadata !191, metadata !DIExpression()) #11, !dbg !1279
  %148 = load i64, i64* %90, align 8, !dbg !1280, !tbaa !1281
  call void @llvm.dbg.value(metadata i64 %148, metadata !190, metadata !DIExpression()) #11, !dbg !1282
  call void @llvm.dbg.value(metadata i8 %147, metadata !191, metadata !DIExpression()) #11, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %148, metadata !190, metadata !DIExpression()) #11, !dbg !1282
  %149 = icmp eq i64 %148, 0, !dbg !1283
  br i1 %149, label %180, label %150, !dbg !1285

; <label>:150:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i64 %148, metadata !223, metadata !DIExpression()) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i64 undef, metadata !224, metadata !DIExpression()) #11, !dbg !1288
  %151 = load i64, i64* @idle_string.now, align 8, !dbg !1289, !tbaa !1123
  %152 = icmp eq i64 %151, -9223372036854775808, !dbg !1291
  br i1 %152, label %153, label %155, !dbg !1292

; <label>:153:                                    ; preds = %150
  %154 = call i64 @time(i64* nonnull @idle_string.now) #11, !dbg !1293
  br label %155, !dbg !1293

; <label>:155:                                    ; preds = %153, %150
  %156 = icmp sgt i64 %148, %98, !dbg !1294
  br i1 %156, label %157, label %175, !dbg !1295

; <label>:157:                                    ; preds = %155
  %158 = load i64, i64* @idle_string.now, align 8, !dbg !1296, !tbaa !1123
  %159 = add nsw i64 %158, -86400, !dbg !1297
  %160 = icmp sge i64 %159, %148, !dbg !1298
  %161 = icmp slt i64 %158, %148, !dbg !1299
  %162 = or i1 %161, %160, !dbg !1300
  br i1 %162, label %175, label %163, !dbg !1300

; <label>:163:                                    ; preds = %157
  %164 = sub nsw i64 %158, %148, !dbg !1301
  %165 = trunc i64 %164 to i32, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %165, metadata !225, metadata !DIExpression()) #11, !dbg !1303
  %166 = icmp slt i32 %165, 60, !dbg !1304
  br i1 %166, label %177, label %167, !dbg !1306

; <label>:167:                                    ; preds = %163
  %168 = icmp slt i32 %165, 86400, !dbg !1307
  br i1 %168, label %170, label %169, !dbg !1311

; <label>:169:                                    ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.idle_string, i64 0, i64 0)) #15, !dbg !1307
  unreachable, !dbg !1307

; <label>:170:                                    ; preds = %167
  %171 = udiv i32 %165, 3600
  %172 = urem i32 %165, 3600
  %173 = udiv i32 %172, 60, !dbg !1312
  %174 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), i32 1, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 %171, i32 %173) #11, !dbg !1312
  br label %177, !dbg !1313

; <label>:175:                                    ; preds = %157, %155
  %176 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 5) #11, !dbg !1314
  br label %177, !dbg !1315

; <label>:177:                                    ; preds = %175, %170, %163
  %178 = phi i8* [ %176, %175 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), %170 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), %163 ], !dbg !1316
  %179 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %82, i32 1, i64 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 6, i8* %178) #11, !dbg !1317
  br label %183, !dbg !1317

; <label>:180:                                    ; preds = %143, %139
  %181 = phi i8 [ %147, %143 ], [ 63, %139 ]
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %82, i32 1, i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #11, !dbg !1318
  br label %183

; <label>:183:                                    ; preds = %180, %177
  %184 = phi i8 [ %181, %180 ], [ %147, %177 ]
  %185 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 5, i64 0, !dbg !1319
  %186 = load i8, i8* %185, align 4, !dbg !1319, !tbaa !1144
  %187 = icmp eq i8 %186, 0, !dbg !1319
  br i1 %187, label %251, label %188, !dbg !1320

; <label>:188:                                    ; preds = %183
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %93) #11, !dbg !1321
  call void @llvm.dbg.value(metadata i8* null, metadata !211, metadata !DIExpression()) #11, !dbg !1322
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #11, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %93, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %185, metadata !1222, metadata !DIExpression()) #11, !dbg !1326
  call void @llvm.dbg.value(metadata i64 256, metadata !1223, metadata !DIExpression()) #11, !dbg !1327
  %189 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 5, i64 256, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %189, metadata !1224, metadata !DIExpression()) #11, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %93, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %185, metadata !1222, metadata !DIExpression()) #11, !dbg !1326
  br label %190, !dbg !1330

; <label>:190:                                    ; preds = %197, %188
  %191 = phi i8* [ %185, %188 ], [ %194, %197 ]
  %192 = phi i8* [ %93, %188 ], [ %195, %197 ]
  %193 = phi i8 [ %186, %188 ], [ %198, %197 ]
  call void @llvm.dbg.value(metadata i8* %191, metadata !1222, metadata !DIExpression()) #11, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %192, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  %194 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1331
  %195 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1332
  store i8 %193, i8* %192, align 1, !dbg !1333, !tbaa !1144, !alias.scope !1334, !noalias !1337
  %196 = icmp ult i8* %194, %189, !dbg !1339
  br i1 %196, label %197, label %200, !dbg !1340, !llvm.loop !1242

; <label>:197:                                    ; preds = %190
  %198 = load i8, i8* %194, align 1, !dbg !1341, !tbaa !1144, !alias.scope !1337, !noalias !1334
  call void @llvm.dbg.value(metadata i8* %195, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %194, metadata !1222, metadata !DIExpression()) #11, !dbg !1326
  %199 = icmp eq i8 %198, 0, !dbg !1340
  br i1 %199, label %200, label %190, !dbg !1330

; <label>:200:                                    ; preds = %197, %190
  call void @llvm.dbg.value(metadata i8* %195, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %195, metadata !1215, metadata !DIExpression()) #11, !dbg !1324
  store i8 0, i8* %195, align 1, !dbg !1342, !tbaa !1144, !alias.scope !1334, !noalias !1337
  %201 = call i8* @strchr(i8* nonnull %93, i32 58) #14, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %201, metadata !212, metadata !DIExpression()) #11, !dbg !1323
  %202 = icmp eq i8* %201, null, !dbg !1344
  br i1 %202, label %205, label %203, !dbg !1346

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %201, i64 1, !dbg !1347
  call void @llvm.dbg.value(metadata i8* %204, metadata !212, metadata !DIExpression()) #11, !dbg !1323
  store i8 0, i8* %201, align 1, !dbg !1348, !tbaa !1144
  br label %205, !dbg !1349

; <label>:205:                                    ; preds = %203, %200
  %206 = phi i8* [ %204, %203 ], [ null, %200 ], !dbg !1350
  call void @llvm.dbg.value(metadata i8* %206, metadata !212, metadata !DIExpression()) #11, !dbg !1323
  %207 = load i8, i8* %93, align 16, !dbg !1351, !tbaa !1144
  %208 = icmp eq i8 %207, 0, !dbg !1351
  br i1 %208, label %213, label %209, !dbg !1353

; <label>:209:                                    ; preds = %205
  %210 = load i1, i1* @do_lookup, align 1
  br i1 %210, label %211, label %213, !dbg !1354

; <label>:211:                                    ; preds = %209
  %212 = call noalias i8* @canon_host(i8* nonnull %93) #11, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %212, metadata !211, metadata !DIExpression()) #11, !dbg !1322
  br label %213, !dbg !1357

; <label>:213:                                    ; preds = %211, %209, %205
  %214 = phi i8* [ %212, %211 ], [ null, %209 ], [ null, %205 ], !dbg !1350
  call void @llvm.dbg.value(metadata i8* %214, metadata !211, metadata !DIExpression()) #11, !dbg !1322
  %215 = icmp eq i8* %214, null, !dbg !1358
  %216 = select i1 %215, i8* %93, i8* %214, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %216, metadata !211, metadata !DIExpression()) #11, !dbg !1322
  %217 = icmp eq i8* %206, null, !dbg !1361
  %218 = load i64, i64* @print_user.hostlen, align 8, !dbg !1363, !tbaa !1123
  %219 = call i64 @strlen(i8* %216) #14, !dbg !1363
  br i1 %217, label %235, label %220, !dbg !1366

; <label>:220:                                    ; preds = %213
  %221 = call i64 @strlen(i8* nonnull %206) #14, !dbg !1367
  %222 = add i64 %219, 4, !dbg !1370
  %223 = add i64 %222, %221, !dbg !1371
  %224 = icmp ult i64 %218, %223, !dbg !1372
  br i1 %224, label %227, label %225, !dbg !1373

; <label>:225:                                    ; preds = %220
  %226 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1374, !tbaa !934
  br label %231, !dbg !1373

; <label>:227:                                    ; preds = %220
  store i64 %223, i64* @print_user.hostlen, align 8, !dbg !1375, !tbaa !1123
  %228 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1377, !tbaa !934
  call void @free(i8* %228) #11, !dbg !1378
  %229 = load i64, i64* @print_user.hostlen, align 8, !dbg !1379, !tbaa !1123
  %230 = call noalias i8* @xmalloc(i64 %229) #11, !dbg !1380
  store i8* %230, i8** @print_user.hoststr, align 8, !dbg !1381, !tbaa !934
  br label %231, !dbg !1382

; <label>:231:                                    ; preds = %227, %225
  %232 = phi i8* [ %226, %225 ], [ %230, %227 ], !dbg !1374
  %233 = call i64 @llvm.objectsize.i64.p0i8(i8* %232, i1 false, i1 true) #11, !dbg !1374
  %234 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %232, i32 1, i64 %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8* %216, i8* nonnull %206) #11, !dbg !1374
  br label %248, !dbg !1383

; <label>:235:                                    ; preds = %213
  %236 = add i64 %219, 3, !dbg !1384
  %237 = icmp ult i64 %218, %236, !dbg !1385
  br i1 %237, label %240, label %238, !dbg !1386

; <label>:238:                                    ; preds = %235
  %239 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1387, !tbaa !934
  br label %244, !dbg !1386

; <label>:240:                                    ; preds = %235
  store i64 %236, i64* @print_user.hostlen, align 8, !dbg !1388, !tbaa !1123
  %241 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1390, !tbaa !934
  call void @free(i8* %241) #11, !dbg !1391
  %242 = load i64, i64* @print_user.hostlen, align 8, !dbg !1392, !tbaa !1123
  %243 = call noalias i8* @xmalloc(i64 %242) #11, !dbg !1393
  store i8* %243, i8** @print_user.hoststr, align 8, !dbg !1394, !tbaa !934
  br label %244, !dbg !1395

; <label>:244:                                    ; preds = %240, %238
  %245 = phi i8* [ %239, %238 ], [ %243, %240 ], !dbg !1387
  %246 = call i64 @llvm.objectsize.i64.p0i8(i8* %245, i1 false, i1 true) #11, !dbg !1387
  %247 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %245, i32 1, i64 %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* %216) #11, !dbg !1387
  br label %248

; <label>:248:                                    ; preds = %244, %231
  br i1 %215, label %250, label %249, !dbg !1396

; <label>:249:                                    ; preds = %248
  call void @free(i8* %216) #11, !dbg !1397
  br label %250, !dbg !1397

; <label>:250:                                    ; preds = %249, %248
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %93) #11, !dbg !1399
  br label %262, !dbg !1400

; <label>:251:                                    ; preds = %183
  %252 = load i64, i64* @print_user.hostlen, align 8, !dbg !1401, !tbaa !1123
  %253 = icmp eq i64 %252, 0, !dbg !1404
  br i1 %253, label %256, label %254, !dbg !1405

; <label>:254:                                    ; preds = %251
  %255 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1406, !tbaa !934
  br label %260, !dbg !1405

; <label>:256:                                    ; preds = %251
  store i64 1, i64* @print_user.hostlen, align 8, !dbg !1407, !tbaa !1123
  %257 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1409, !tbaa !934
  call void @free(i8* %257) #11, !dbg !1410
  %258 = load i64, i64* @print_user.hostlen, align 8, !dbg !1411, !tbaa !1123
  %259 = call noalias i8* @xmalloc(i64 %258) #11, !dbg !1412
  store i8* %259, i8** @print_user.hoststr, align 8, !dbg !1413, !tbaa !934
  br label %260, !dbg !1414

; <label>:260:                                    ; preds = %256, %254
  %261 = phi i8* [ %255, %254 ], [ %259, %256 ], !dbg !1406
  store i8 0, i8* %261, align 1, !dbg !1415, !tbaa !1144
  br label %262

; <label>:262:                                    ; preds = %260, %250
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #11, !dbg !1418
  %263 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1419
  %264 = load i32, i32* %263, align 4, !dbg !1419, !tbaa !1420
  %265 = sext i32 %264 to i64, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %265, metadata !240, metadata !DIExpression()) #11, !dbg !1421
  store i64 %265, i64* %9, align 8, !dbg !1421, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %9, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1421
  %266 = call %struct.tm* @localtime(i64* nonnull %9) #11, !dbg !1422
  call void @llvm.dbg.value(metadata %struct.tm* %266, metadata !241, metadata !DIExpression()) #11, !dbg !1423
  %267 = icmp eq %struct.tm* %266, null, !dbg !1424
  br i1 %267, label %271, label %268, !dbg !1426

; <label>:268:                                    ; preds = %262
  %269 = load i8*, i8** @time_format, align 8, !dbg !1427, !tbaa !934
  %270 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %269, %struct.tm* nonnull %266) #11, !dbg !1429
  br label %274, !dbg !1430

; <label>:271:                                    ; preds = %262
  %272 = load i64, i64* %9, align 8, !dbg !1431, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %272, metadata !240, metadata !DIExpression()) #11, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %272, metadata !1432, metadata !DIExpression()) #11, !dbg !1438
  %273 = call i8* @imaxtostr(i64 %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1440
  br label %274, !dbg !1441

; <label>:274:                                    ; preds = %271, %268
  %275 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %268 ], [ %273, %271 ], !dbg !1442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #11, !dbg !1443
  %276 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1444, !tbaa !934
  %277 = icmp eq i8* %276, null, !dbg !1444
  %278 = select i1 %277, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %276, !dbg !1444
  call fastcc void @print_line(i32 32, i8* nonnull %109, i8 signext %184, i32 32, i8* nonnull %121, i8* %275, i8* nonnull %82, i8* nonnull %84, i8* %278, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1445
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %83) #11, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %82) #11, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %81) #11, !dbg !1446
  br label %503, !dbg !1447

; <label>:279:                                    ; preds = %112, %108, %106
  %280 = load i1, i1* @need_runlevel, align 1
  br i1 %280, label %281, label %335, !dbg !1448

; <label>:281:                                    ; preds = %279
  %282 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1449
  %283 = load i16, i16* %282, align 4, !dbg !1449, !tbaa !1145
  %284 = icmp eq i16 %283, 1, !dbg !1449
  br i1 %284, label %285, label %335, !dbg !1450

; <label>:285:                                    ; preds = %281
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !266, metadata !DIExpression()) #11, !dbg !1451
  %286 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1453
  %287 = load i32, i32* %286, align 4, !dbg !1453, !tbaa !1210
  %288 = sdiv i32 %287, 256, !dbg !1454
  %289 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1455, !tbaa !934
  %290 = icmp eq i8* %289, null, !dbg !1455
  br i1 %290, label %291, label %296, !dbg !1457

; <label>:291:                                    ; preds = %285
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #11, !dbg !1458
  %293 = call i64 @strlen(i8* %292) #14, !dbg !1459
  %294 = add i64 %293, 3, !dbg !1460
  %295 = call noalias i8* @xmalloc(i64 %294) #11, !dbg !1461
  store i8* %295, i8** @print_runlevel.runlevline, align 8, !dbg !1462, !tbaa !934
  br label %296, !dbg !1463

; <label>:296:                                    ; preds = %291, %285
  %297 = phi i8* [ %289, %285 ], [ %295, %291 ], !dbg !1464
  %298 = call i64 @llvm.objectsize.i64.p0i8(i8* %297, i1 false, i1 true) #11, !dbg !1464
  %299 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #11, !dbg !1464
  %300 = and i32 %287, 255, !dbg !1464
  %301 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %297, i32 1, i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* %299, i32 %300) #11, !dbg !1464
  %302 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1465, !tbaa !934
  %303 = icmp eq i8* %302, null, !dbg !1465
  br i1 %303, label %304, label %309, !dbg !1467

; <label>:304:                                    ; preds = %296
  %305 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !1468
  %306 = call i64 @strlen(i8* %305) #14, !dbg !1469
  %307 = add i64 %306, 2, !dbg !1470
  %308 = call noalias i8* @xmalloc(i64 %307) #11, !dbg !1471
  store i8* %308, i8** @print_runlevel.comment, align 8, !dbg !1472, !tbaa !934
  br label %309, !dbg !1473

; <label>:309:                                    ; preds = %304, %296
  %310 = phi i8* [ %302, %296 ], [ %308, %304 ], !dbg !1474
  %311 = call i64 @llvm.objectsize.i64.p0i8(i8* %310, i1 false, i1 true) #11, !dbg !1474
  %312 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !1474
  %313 = and i32 %288, 255, !dbg !1474
  %314 = icmp eq i32 %313, 78, !dbg !1474
  %315 = select i1 %314, i32 83, i32 %313, !dbg !1474
  %316 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %310, i32 1, i64 %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %312, i32 %315) #11, !dbg !1474
  %317 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1475, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1476
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #11, !dbg !1478
  %318 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1479
  %319 = load i32, i32* %318, align 4, !dbg !1479, !tbaa !1420
  %320 = sext i32 %319 to i64, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %320, metadata !240, metadata !DIExpression()) #11, !dbg !1480
  store i64 %320, i64* %8, align 8, !dbg !1480, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %8, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1480
  %321 = call %struct.tm* @localtime(i64* nonnull %8) #11, !dbg !1481
  call void @llvm.dbg.value(metadata %struct.tm* %321, metadata !241, metadata !DIExpression()) #11, !dbg !1482
  %322 = icmp eq %struct.tm* %321, null, !dbg !1483
  br i1 %322, label %326, label %323, !dbg !1484

; <label>:323:                                    ; preds = %309
  %324 = load i8*, i8** @time_format, align 8, !dbg !1485, !tbaa !934
  %325 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %324, %struct.tm* nonnull %321) #11, !dbg !1486
  br label %329, !dbg !1487

; <label>:326:                                    ; preds = %309
  %327 = load i64, i64* %8, align 8, !dbg !1488, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %327, metadata !240, metadata !DIExpression()) #11, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %327, metadata !1432, metadata !DIExpression()) #11, !dbg !1489
  %328 = call i8* @imaxtostr(i64 %327, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1491
  br label %329, !dbg !1492

; <label>:329:                                    ; preds = %326, %323
  %330 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %323 ], [ %328, %326 ], !dbg !1493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #11, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %313, metadata !1495, metadata !DIExpression()) #11, !dbg !1501
  %331 = add nsw i32 %313, -32, !dbg !1503
  %332 = icmp ult i32 %331, 95, !dbg !1503
  %333 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1504
  %334 = select i1 %332, i8* %333, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1505
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %317, i8* %330, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %334, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1506
  br label %503, !dbg !1507

; <label>:335:                                    ; preds = %281, %279
  %336 = load i1, i1* @need_boottime, align 1
  br i1 %336, label %337, label %356, !dbg !1508

; <label>:337:                                    ; preds = %335
  %338 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1509
  %339 = load i16, i16* %338, align 4, !dbg !1509, !tbaa !1145
  %340 = icmp eq i16 %339, 2, !dbg !1509
  br i1 %340, label %341, label %356, !dbg !1510

; <label>:341:                                    ; preds = %337
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1511, metadata !DIExpression()) #11, !dbg !1514
  %342 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #11, !dbg !1516
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1517
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #11, !dbg !1519
  %343 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1520
  %344 = load i32, i32* %343, align 4, !dbg !1520, !tbaa !1420
  %345 = sext i32 %344 to i64, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %345, metadata !240, metadata !DIExpression()) #11, !dbg !1521
  store i64 %345, i64* %7, align 8, !dbg !1521, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %7, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1521
  %346 = call %struct.tm* @localtime(i64* nonnull %7) #11, !dbg !1522
  call void @llvm.dbg.value(metadata %struct.tm* %346, metadata !241, metadata !DIExpression()) #11, !dbg !1523
  %347 = icmp eq %struct.tm* %346, null, !dbg !1524
  br i1 %347, label %351, label %348, !dbg !1525

; <label>:348:                                    ; preds = %341
  %349 = load i8*, i8** @time_format, align 8, !dbg !1526, !tbaa !934
  %350 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %349, %struct.tm* nonnull %346) #11, !dbg !1527
  br label %354, !dbg !1528

; <label>:351:                                    ; preds = %341
  %352 = load i64, i64* %7, align 8, !dbg !1529, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %352, metadata !240, metadata !DIExpression()) #11, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %352, metadata !1432, metadata !DIExpression()) #11, !dbg !1530
  %353 = call i8* @imaxtostr(i64 %352, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1532
  br label %354, !dbg !1533

; <label>:354:                                    ; preds = %351, %348
  %355 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %348 ], [ %353, %351 ], !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #11, !dbg !1535
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %342, i8* %355, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1536
  br label %503, !dbg !1537

; <label>:356:                                    ; preds = %337, %335
  %357 = load i1, i1* @need_clockchange, align 1
  br i1 %357, label %358, label %377, !dbg !1538

; <label>:358:                                    ; preds = %356
  %359 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1539
  %360 = load i16, i16* %359, align 4, !dbg !1539, !tbaa !1145
  %361 = icmp eq i16 %360, 3, !dbg !1539
  br i1 %361, label %362, label %377, !dbg !1540

; <label>:362:                                    ; preds = %358
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1541, metadata !DIExpression()) #11, !dbg !1544
  %363 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 5) #11, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1547
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #11, !dbg !1549
  %364 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1550
  %365 = load i32, i32* %364, align 4, !dbg !1550, !tbaa !1420
  %366 = sext i32 %365 to i64, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %366, metadata !240, metadata !DIExpression()) #11, !dbg !1551
  store i64 %366, i64* %6, align 8, !dbg !1551, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %6, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1551
  %367 = call %struct.tm* @localtime(i64* nonnull %6) #11, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.tm* %367, metadata !241, metadata !DIExpression()) #11, !dbg !1553
  %368 = icmp eq %struct.tm* %367, null, !dbg !1554
  br i1 %368, label %372, label %369, !dbg !1555

; <label>:369:                                    ; preds = %362
  %370 = load i8*, i8** @time_format, align 8, !dbg !1556, !tbaa !934
  %371 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %370, %struct.tm* nonnull %367) #11, !dbg !1557
  br label %375, !dbg !1558

; <label>:372:                                    ; preds = %362
  %373 = load i64, i64* %6, align 8, !dbg !1559, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %373, metadata !240, metadata !DIExpression()) #11, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %373, metadata !1432, metadata !DIExpression()) #11, !dbg !1560
  %374 = call i8* @imaxtostr(i64 %373, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1562
  br label %375, !dbg !1563

; <label>:375:                                    ; preds = %372, %369
  %376 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %369 ], [ %374, %372 ], !dbg !1564
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #11, !dbg !1565
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %363, i8* %376, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1566
  br label %503, !dbg !1567

; <label>:377:                                    ; preds = %358, %356
  %378 = load i1, i1* @need_initspawn, align 1
  br i1 %378, label %379, label %411, !dbg !1568

; <label>:379:                                    ; preds = %377
  %380 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1569
  %381 = load i16, i16* %380, align 4, !dbg !1569, !tbaa !1145
  %382 = icmp eq i16 %381, 5, !dbg !1569
  br i1 %382, label %383, label %411, !dbg !1570

; <label>:383:                                    ; preds = %379
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1091, metadata !DIExpression()) #11, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1572, metadata !DIExpression()) #11, !dbg !1579
  call void @llvm.dbg.value(metadata i64 4, metadata !1577, metadata !DIExpression()) #11, !dbg !1581
  %384 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1582
  %385 = call i64 @strlen(i8* %384) #14, !dbg !1583
  %386 = add i64 %385, 5, !dbg !1584
  %387 = call noalias i8* @xmalloc(i64 %386) #11, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %387, metadata !1578, metadata !DIExpression()) #11, !dbg !1586
  %388 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %387, metadata !1588, metadata !DIExpression()) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %388, metadata !1594, metadata !DIExpression()) #11, !dbg !1595
  %389 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %387, i1 false, i1 true) #11, !dbg !1597
  %390 = call i8* @__strcpy_chk(i8* nonnull %387, i8* nonnull %388, i64 %389) #11, !dbg !1598
  %391 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %387, metadata !1600, metadata !DIExpression()) #11, !dbg !1605
  call void @llvm.dbg.value(metadata i8* %391, metadata !1603, metadata !DIExpression()) #11, !dbg !1605
  call void @llvm.dbg.value(metadata i64 4, metadata !1604, metadata !DIExpression()) #11, !dbg !1605
  %392 = call i8* @__strncat_chk(i8* nonnull %387, i8* nonnull %391, i64 4, i64 %389) #11, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %387, metadata !1092, metadata !DIExpression()) #11, !dbg !1608
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1093
  %393 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1093
  %394 = load i32, i32* %393, align 4, !dbg !1093, !tbaa !1210
  %395 = sext i32 %394 to i64, !dbg !1093
  %396 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %395) #11, !dbg !1093
  %397 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1609
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #11, !dbg !1612
  %398 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1613
  %399 = load i32, i32* %398, align 4, !dbg !1613, !tbaa !1420
  %400 = sext i32 %399 to i64, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %400, metadata !240, metadata !DIExpression()) #11, !dbg !1614
  store i64 %400, i64* %5, align 8, !dbg !1614, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %5, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1614
  %401 = call %struct.tm* @localtime(i64* nonnull %5) #11, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.tm* %401, metadata !241, metadata !DIExpression()) #11, !dbg !1616
  %402 = icmp eq %struct.tm* %401, null, !dbg !1617
  br i1 %402, label %406, label %403, !dbg !1618

; <label>:403:                                    ; preds = %383
  %404 = load i8*, i8** @time_format, align 8, !dbg !1619, !tbaa !934
  %405 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %404, %struct.tm* nonnull %401) #11, !dbg !1620
  br label %409, !dbg !1621

; <label>:406:                                    ; preds = %383
  %407 = load i64, i64* %5, align 8, !dbg !1622, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %407, metadata !240, metadata !DIExpression()) #11, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %407, metadata !1432, metadata !DIExpression()) #11, !dbg !1623
  %408 = call i8* @imaxtostr(i64 %407, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1625
  br label %409, !dbg !1626

; <label>:409:                                    ; preds = %406, %403
  %410 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %403 ], [ %408, %406 ], !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #11, !dbg !1628
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %397, i8* %410, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %387, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1629
  call void @free(i8* %387) #11, !dbg !1630
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1631
  br label %503, !dbg !1632

; <label>:411:                                    ; preds = %379, %377
  %412 = load i1, i1* @need_login, align 1
  br i1 %412, label %413, label %446, !dbg !1633

; <label>:413:                                    ; preds = %411
  %414 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1634
  %415 = load i16, i16* %414, align 4, !dbg !1634, !tbaa !1145
  %416 = icmp eq i16 %415, 6, !dbg !1634
  br i1 %416, label %417, label %446, !dbg !1635

; <label>:417:                                    ; preds = %413
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1102, metadata !DIExpression()) #11, !dbg !1636
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1572, metadata !DIExpression()) #11, !dbg !1637
  call void @llvm.dbg.value(metadata i64 4, metadata !1577, metadata !DIExpression()) #11, !dbg !1639
  %418 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1640
  %419 = call i64 @strlen(i8* %418) #14, !dbg !1641
  %420 = add i64 %419, 5, !dbg !1642
  %421 = call noalias i8* @xmalloc(i64 %420) #11, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %421, metadata !1578, metadata !DIExpression()) #11, !dbg !1644
  %422 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %421, metadata !1588, metadata !DIExpression()) #11, !dbg !1646
  call void @llvm.dbg.value(metadata i8* %422, metadata !1594, metadata !DIExpression()) #11, !dbg !1646
  %423 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %421, i1 false, i1 true) #11, !dbg !1648
  %424 = call i8* @__strcpy_chk(i8* nonnull %421, i8* nonnull %422, i64 %423) #11, !dbg !1649
  %425 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !1650
  call void @llvm.dbg.value(metadata i8* %421, metadata !1600, metadata !DIExpression()) #11, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %425, metadata !1603, metadata !DIExpression()) #11, !dbg !1651
  call void @llvm.dbg.value(metadata i64 4, metadata !1604, metadata !DIExpression()) #11, !dbg !1651
  %426 = call i8* @__strncat_chk(i8* nonnull %421, i8* nonnull %425, i64 4, i64 %423) #11, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %421, metadata !1103, metadata !DIExpression()) #11, !dbg !1654
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1104
  %427 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1104
  %428 = load i32, i32* %427, align 4, !dbg !1104, !tbaa !1210
  %429 = sext i32 %428 to i64, !dbg !1104
  %430 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %429) #11, !dbg !1104
  %431 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 5) #11, !dbg !1655
  %432 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1657
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #11, !dbg !1659
  %433 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1660
  %434 = load i32, i32* %433, align 4, !dbg !1660, !tbaa !1420
  %435 = sext i32 %434 to i64, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %435, metadata !240, metadata !DIExpression()) #11, !dbg !1661
  store i64 %435, i64* %4, align 8, !dbg !1661, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %4, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1661
  %436 = call %struct.tm* @localtime(i64* nonnull %4) #11, !dbg !1662
  call void @llvm.dbg.value(metadata %struct.tm* %436, metadata !241, metadata !DIExpression()) #11, !dbg !1663
  %437 = icmp eq %struct.tm* %436, null, !dbg !1664
  br i1 %437, label %441, label %438, !dbg !1665

; <label>:438:                                    ; preds = %417
  %439 = load i8*, i8** @time_format, align 8, !dbg !1666, !tbaa !934
  %440 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %439, %struct.tm* nonnull %436) #11, !dbg !1667
  br label %444, !dbg !1668

; <label>:441:                                    ; preds = %417
  %442 = load i64, i64* %4, align 8, !dbg !1669, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %442, metadata !240, metadata !DIExpression()) #11, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %442, metadata !1432, metadata !DIExpression()) #11, !dbg !1670
  %443 = call i8* @imaxtostr(i64 %442, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1672
  br label %444, !dbg !1673

; <label>:444:                                    ; preds = %441, %438
  %445 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %438 ], [ %443, %441 ], !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #11, !dbg !1675
  call fastcc void @print_line(i32 -1, i8* %431, i8 signext 32, i32 32, i8* nonnull %432, i8* %445, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %421, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1676
  call void @free(i8* %421) #11, !dbg !1677
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1678
  br label %503, !dbg !1679

; <label>:446:                                    ; preds = %413, %411
  %447 = load i1, i1* @need_deadprocs, align 1
  br i1 %447, label %448, label %503, !dbg !1680

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1681
  %450 = load i16, i16* %449, align 4, !dbg !1681, !tbaa !1145
  %451 = icmp eq i16 %450, 8, !dbg !1681
  br i1 %451, label %452, label %503, !dbg !1682

; <label>:452:                                    ; preds = %448
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !276, metadata !DIExpression()) #11, !dbg !1683
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1572, metadata !DIExpression()) #11, !dbg !1684
  call void @llvm.dbg.value(metadata i64 4, metadata !1577, metadata !DIExpression()) #11, !dbg !1686
  %453 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1687
  %454 = call i64 @strlen(i8* %453) #14, !dbg !1688
  %455 = add i64 %454, 5, !dbg !1689
  %456 = call noalias i8* @xmalloc(i64 %455) #11, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %456, metadata !1578, metadata !DIExpression()) #11, !dbg !1691
  %457 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #11, !dbg !1692
  call void @llvm.dbg.value(metadata i8* %456, metadata !1588, metadata !DIExpression()) #11, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %457, metadata !1594, metadata !DIExpression()) #11, !dbg !1693
  %458 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %456, i1 false, i1 true) #11, !dbg !1695
  %459 = call i8* @__strcpy_chk(i8* nonnull %456, i8* nonnull %457, i64 %458) #11, !dbg !1696
  %460 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !1697
  call void @llvm.dbg.value(metadata i8* %456, metadata !1600, metadata !DIExpression()) #11, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %460, metadata !1603, metadata !DIExpression()) #11, !dbg !1698
  call void @llvm.dbg.value(metadata i64 4, metadata !1604, metadata !DIExpression()) #11, !dbg !1698
  %461 = call i8* @__strncat_chk(i8* nonnull %456, i8* nonnull %460, i64 4, i64 %458) #11, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %456, metadata !277, metadata !DIExpression()) #11, !dbg !1701
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1107
  %462 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1107
  %463 = load i32, i32* %462, align 4, !dbg !1107, !tbaa !1210
  %464 = sext i32 %463 to i64, !dbg !1107
  %465 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %464) #11, !dbg !1107
  %466 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1702, !tbaa !934
  %467 = icmp eq i8* %466, null, !dbg !1702
  br i1 %467, label %468, label %476, !dbg !1704

; <label>:468:                                    ; preds = %452
  %469 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #11, !dbg !1705
  %470 = call i64 @strlen(i8* %469) #14, !dbg !1706
  %471 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #11, !dbg !1707
  %472 = call i64 @strlen(i8* %471) #14, !dbg !1708
  %473 = add i64 %470, 14, !dbg !1709
  %474 = add i64 %473, %472, !dbg !1710
  %475 = call noalias i8* @xmalloc(i64 %474) #11, !dbg !1711
  store i8* %475, i8** @print_deadprocs.exitstr, align 8, !dbg !1712, !tbaa !934
  br label %476, !dbg !1713

; <label>:476:                                    ; preds = %468, %452
  %477 = phi i8* [ %466, %452 ], [ %475, %468 ], !dbg !1714
  %478 = call i64 @llvm.objectsize.i64.p0i8(i8* %477, i1 false, i1 true) #11, !dbg !1714
  %479 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #11, !dbg !1714
  %480 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 6, i32 0, !dbg !1714
  %481 = load i16, i16* %480, align 4, !dbg !1714, !tbaa !1715
  %482 = sext i16 %481 to i32, !dbg !1714
  %483 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #11, !dbg !1714
  %484 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 6, i32 1, !dbg !1714
  %485 = load i16, i16* %484, align 2, !dbg !1714, !tbaa !1716
  %486 = sext i16 %485 to i32, !dbg !1714
  %487 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %477, i32 1, i64 %478, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i8* %479, i32 %482, i8* %483, i32 %486) #11, !dbg !1714
  %488 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !239, metadata !DIExpression()) #11, !dbg !1718
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %95) #11, !dbg !1720
  %489 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1721
  %490 = load i32, i32* %489, align 4, !dbg !1721, !tbaa !1420
  %491 = sext i32 %490 to i64, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %491, metadata !240, metadata !DIExpression()) #11, !dbg !1722
  store i64 %491, i64* %3, align 8, !dbg !1722, !tbaa !1123
  call void @llvm.dbg.value(metadata i64* %3, metadata !240, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1722
  %492 = call %struct.tm* @localtime(i64* nonnull %3) #11, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.tm* %492, metadata !241, metadata !DIExpression()) #11, !dbg !1724
  %493 = icmp eq %struct.tm* %492, null, !dbg !1725
  br i1 %493, label %497, label %494, !dbg !1726

; <label>:494:                                    ; preds = %476
  %495 = load i8*, i8** @time_format, align 8, !dbg !1727, !tbaa !934
  %496 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %495, %struct.tm* nonnull %492) #11, !dbg !1728
  br label %500, !dbg !1729

; <label>:497:                                    ; preds = %476
  %498 = load i64, i64* %3, align 8, !dbg !1730, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %498, metadata !240, metadata !DIExpression()) #11, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %498, metadata !1432, metadata !DIExpression()) #11, !dbg !1731
  %499 = call i8* @imaxtostr(i64 %498, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1733
  br label %500, !dbg !1734

; <label>:500:                                    ; preds = %497, %494
  %501 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %494 ], [ %499, %497 ], !dbg !1735
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %95) #11, !dbg !1736
  %502 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1737, !tbaa !934
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %488, i8* %501, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %456, i8* %502) #11, !dbg !1738
  call void @free(i8* %456) #11, !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #11, !dbg !1740
  br label %503, !dbg !1741

; <label>:503:                                    ; preds = %500, %448, %446, %444, %409, %375, %354, %329, %274, %102
  %504 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1742
  %505 = load i16, i16* %504, align 4, !dbg !1742, !tbaa !1145
  %506 = icmp eq i16 %505, 2, !dbg !1742
  br i1 %506, label %507, label %511, !dbg !1744

; <label>:507:                                    ; preds = %503
  %508 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1745
  %509 = load i32, i32* %508, align 4, !dbg !1745, !tbaa !1420
  %510 = sext i32 %509 to i64, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %510, metadata !1083, metadata !DIExpression()) #11, !dbg !1167
  br label %511, !dbg !1746

; <label>:511:                                    ; preds = %507, %503
  %512 = phi i64 [ %510, %507 ], [ %98, %503 ], !dbg !1747
  %513 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %512, metadata !1083, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata %struct.utmpx* %513, metadata !1081, metadata !DIExpression()) #11, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %100, metadata !1080, metadata !DIExpression()) #11, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %100, metadata !1080, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !1165
  %514 = icmp eq i64 %100, 0, !dbg !1196
  br i1 %514, label %515, label %96, !dbg !1196, !llvm.loop !1749

; <label>:515:                                    ; preds = %511, %77, %69, %53
  %516 = bitcast %struct.utmpx** %16 to i8**, !dbg !1752
  %517 = load i8*, i8** %516, align 8, !dbg !1752, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.utmpx** %16, metadata !1068, metadata !DIExpression(DW_OP_deref)), !dbg !1116
  call void @free(i8* %517) #11, !dbg !1753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #11, !dbg !1754
  ret void, !dbg !1754
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_line(i32, i8*, i8 signext, i32, i8*, i8*, i8*, i8*, i8*, i8*) unnamed_addr #7 !dbg !76 {
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [13 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !80, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %1, metadata !81, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %2, metadata !82, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %3, metadata !83, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %4, metadata !84, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* %5, metadata !85, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8* %6, metadata !86, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8* %7, metadata !87, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8* %8, metadata !88, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* %9, metadata !89, metadata !DIExpression()), !dbg !1764
  %14 = bitcast i8** %11 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1765
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !1766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #11, !dbg !1766
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !91, metadata !DIExpression()), !dbg !1767
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0, !dbg !1768
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %16) #11, !dbg !1768
  call void @llvm.dbg.declare(metadata [13 x i8]* %13, metadata !95, metadata !DIExpression()), !dbg !1769
  store i8 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 1), align 1, !dbg !1770, !tbaa !1144
  %17 = load i1, i1* @include_idle, align 1
  br i1 %17, label %18, label %25, !dbg !1771

; <label>:18:                                     ; preds = %10
  %19 = load i1, i1* @short_output, align 1
  br i1 %19, label %25, label %20, !dbg !1773

; <label>:20:                                     ; preds = %18
  %21 = tail call i64 @strlen(i8* %6) #14, !dbg !1774
  %22 = icmp ult i64 %21, 7, !dbg !1775
  br i1 %22, label %23, label %25, !dbg !1776

; <label>:23:                                     ; preds = %20
  %24 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %15, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i8* %6) #11, !dbg !1777
  br label %26, !dbg !1777

; <label>:25:                                     ; preds = %20, %18, %10
  store i8 0, i8* %15, align 1, !dbg !1778, !tbaa !1144
  br label %26

; <label>:26:                                     ; preds = %25, %23
  %27 = load i1, i1* @short_output, align 1
  br i1 %27, label %33, label %28, !dbg !1779

; <label>:28:                                     ; preds = %26
  %29 = call i64 @strlen(i8* %7) #14, !dbg !1781
  %30 = icmp ult i64 %29, 12, !dbg !1782
  br i1 %30, label %31, label %33, !dbg !1783

; <label>:31:                                     ; preds = %28
  %32 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %16, i32 1, i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %7) #11, !dbg !1784
  br label %34, !dbg !1784

; <label>:33:                                     ; preds = %28, %26
  store i8 0, i8* %16, align 1, !dbg !1785, !tbaa !1144
  br label %34

; <label>:34:                                     ; preds = %33, %31
  %35 = load i1, i1* @include_exit, align 1
  br i1 %35, label %36, label %41, !dbg !1786

; <label>:36:                                     ; preds = %34
  %37 = call i64 @strlen(i8* %9) #14, !dbg !1787
  %38 = icmp ult i64 %37, 12, !dbg !1787
  %39 = add i64 %37, 2, !dbg !1787
  %40 = select i1 %38, i64 14, i64 %39, !dbg !1787
  br label %41, !dbg !1786

; <label>:41:                                     ; preds = %34, %36
  %42 = phi i64 [ %40, %36 ], [ 1, %34 ], !dbg !1786
  %43 = call noalias i8* @xmalloc(i64 %42) #11, !dbg !1788
  call void @llvm.dbg.value(metadata i8* %43, metadata !99, metadata !DIExpression()), !dbg !1789
  %44 = load i1, i1* @include_exit, align 1
  br i1 %44, label %45, label %48, !dbg !1790

; <label>:45:                                     ; preds = %41
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false, i1 true), !dbg !1791
  %47 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %43, i32 1, i64 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* %9) #11, !dbg !1791
  br label %49, !dbg !1791

; <label>:48:                                     ; preds = %41
  store i8 0, i8* %43, align 1, !dbg !1793, !tbaa !1144
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = icmp eq i8* %1, null, !dbg !1794
  %51 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* %1, !dbg !1794
  %52 = load i1, i1* @include_mesg, align 1
  %53 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1794
  %54 = load i32, i32* @time_format_width, align 4, !dbg !1794, !tbaa !1041
  call void @llvm.dbg.value(metadata i8** %11, metadata !90, metadata !DIExpression(DW_OP_deref)), !dbg !1795
  %55 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %0, i8* %51, i8* %53, i32 %3, i8* %4, i32 %54, i8* %5, i8* nonnull %15, i8* nonnull %16, i8* %8, i8* %43) #11, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !1796
  %56 = icmp eq i32 %55, -1, !dbg !1797
  br i1 %56, label %57, label %58, !dbg !1799

; <label>:57:                                     ; preds = %49
  call void @xalloc_die() #15, !dbg !1800
  unreachable, !dbg !1800

; <label>:58:                                     ; preds = %49
  %59 = load i8*, i8** %11, align 8, !dbg !1801, !tbaa !934
  call void @llvm.dbg.value(metadata i8* %59, metadata !90, metadata !DIExpression()), !dbg !1795
  %60 = call i64 @strlen(i8* %59) #14, !dbg !1802
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1803
  call void @llvm.dbg.value(metadata i8* %61, metadata !101, metadata !DIExpression()), !dbg !1804
  br label %62, !dbg !1805

; <label>:62:                                     ; preds = %62, %58
  %63 = phi i8* [ %61, %58 ], [ %64, %62 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  %64 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %64, metadata !101, metadata !DIExpression()), !dbg !1804
  %65 = load i8, i8* %64, align 1, !dbg !1808, !tbaa !1144
  %66 = icmp eq i8 %65, 32, !dbg !1809
  br i1 %66, label %62, label %67, !dbg !1805, !llvm.loop !1810

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1804
  store i8 0, i8* %63, align 1, !dbg !1812, !tbaa !1144
  %68 = load i8*, i8** %11, align 8, !dbg !1813, !tbaa !934
  call void @llvm.dbg.value(metadata i8* %68, metadata !90, metadata !DIExpression()), !dbg !1795
  %69 = call i32 @puts(i8* %68), !dbg !1814
  %70 = load i8*, i8** %11, align 8, !dbg !1815, !tbaa !934
  call void @llvm.dbg.value(metadata i8* %70, metadata !90, metadata !DIExpression()), !dbg !1795
  call void @free(i8* %70) #11, !dbg !1816
  call void @free(i8* %43) #11, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %16) #11, !dbg !1818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #11, !dbg !1818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1818
  ret void, !dbg !1818
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8*) local_unnamed_addr #7 !dbg !1819 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1823, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %0, metadata !324, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !325, metadata !DIExpression()) #11, !dbg !1827
  call void @llvm.dbg.value(metadata i8* null, metadata !326, metadata !DIExpression()) #11, !dbg !1828
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !327, metadata !DIExpression()) #11, !dbg !1830
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1830, !tbaa !934
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1831, !tbaa !1832
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !327, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1830
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #11, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %4, metadata !354, metadata !DIExpression()) #11, !dbg !1835
  %5 = icmp eq i32 %4, 0, !dbg !1836
  br i1 %5, label %6, label %17, !dbg !1838

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1839, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !327, metadata !DIExpression()) #11, !dbg !1830
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1841
  %9 = load i8*, i8** %8, align 8, !dbg !1841, !tbaa !1842
  %10 = icmp eq i8* %9, null, !dbg !1839
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1839
  %12 = call noalias i8* @strdup(i8* %11) #11, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %12, metadata !326, metadata !DIExpression()) #11, !dbg !1828
  %13 = icmp eq i8* %12, null, !dbg !1844
  br i1 %13, label %14, label %15, !dbg !1846

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1847, !tbaa !1041
  br label %15, !dbg !1848

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1849, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, metadata !327, metadata !DIExpression()) #11, !dbg !1830
  call void @freeaddrinfo(%struct.addrinfo* %16) #11, !dbg !1850
  br label %18, !dbg !1851

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1852, !tbaa !1041
  br label %18, !dbg !1854

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8* %19, metadata !326, metadata !DIExpression()) #11, !dbg !1828
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1856
  ret i8* %19, !dbg !1857
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #7 !dbg !319 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !324, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32* %1, metadata !325, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* null, metadata !326, metadata !DIExpression()), !dbg !1860
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1861
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1861
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !327, metadata !DIExpression()), !dbg !1862
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1862, !tbaa !934
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1863, !tbaa !1832
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !327, metadata !DIExpression(DW_OP_deref)), !dbg !1862
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #11, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %5, metadata !354, metadata !DIExpression()), !dbg !1865
  %6 = icmp eq i32 %5, 0, !dbg !1866
  br i1 %6, label %7, label %20, !dbg !1867

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1868, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !327, metadata !DIExpression()), !dbg !1862
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1869
  %10 = load i8*, i8** %9, align 8, !dbg !1869, !tbaa !1842
  %11 = icmp eq i8* %10, null, !dbg !1868
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1868
  %13 = call noalias i8* @strdup(i8* %12) #11, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %13, metadata !326, metadata !DIExpression()), !dbg !1860
  %14 = icmp eq i8* %13, null, !dbg !1871
  %15 = icmp ne i32* %1, null, !dbg !1872
  %16 = and i1 %15, %14, !dbg !1873
  br i1 %16, label %17, label %18, !dbg !1873

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1874, !tbaa !1041
  br label %18, !dbg !1875

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1876, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, metadata !327, metadata !DIExpression()), !dbg !1862
  call void @freeaddrinfo(%struct.addrinfo* %19) #11, !dbg !1877
  br label %23, !dbg !1878

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1879
  br i1 %21, label %23, label %22, !dbg !1880

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1881, !tbaa !1041
  br label %23, !dbg !1882

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8* %24, metadata !326, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1884
  ret i8* %24, !dbg !1885
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #7 !dbg !1886 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1889, !tbaa !1041
  %2 = tail call i8* @gai_strerror(i32 %1) #11, !dbg !1890
  ret i8* %2, !dbg !1891
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1894, metadata !DIExpression()), !dbg !1895
  store i8* %0, i8** @file_name, align 8, !dbg !1896, !tbaa !934
  ret void, !dbg !1897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1898 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1904, !tbaa !1905
  ret void, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1908 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1913, !tbaa !934
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1914
  %3 = icmp eq i32 %2, 0, !dbg !1915
  br i1 %3, label %22, label %4, !dbg !1916

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1917, !tbaa !1905, !range !1918
  %6 = icmp eq i8 %5, 0, !dbg !1917
  br i1 %6, label %11, label %7, !dbg !1919

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1920
  %9 = load i32, i32* %8, align 4, !dbg !1920, !tbaa !1041
  %10 = icmp eq i32 %9, 32, !dbg !1921
  br i1 %10, label %22, label %11, !dbg !1922

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i32 5) #11, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %12, metadata !1910, metadata !DIExpression()), !dbg !1924
  %13 = load i8*, i8** @file_name, align 8, !dbg !1925, !tbaa !934
  %14 = icmp eq i8* %13, null, !dbg !1925
  %15 = tail call i32* @__errno_location() #17, !dbg !1927
  %16 = load i32, i32* %15, align 4, !dbg !1927, !tbaa !1041
  br i1 %14, label %19, label %17, !dbg !1928

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1929
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1930
  br label %20, !dbg !1930

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.102, i64 0, i64 0), i8* %12) #11, !dbg !1931
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1932, !tbaa !1041
  tail call void @_exit(i32 %21) #15, !dbg !1933
  unreachable, !dbg !1933

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1934, !tbaa !934
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1936
  %25 = icmp eq i32 %24, 0, !dbg !1937
  br i1 %25, label %28, label %26, !dbg !1938

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1939, !tbaa !1041
  tail call void @_exit(i32 %27) #15, !dbg !1940
  unreachable, !dbg !1940

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1941
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !1942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 1, metadata !1946, metadata !DIExpression()), !dbg !1949
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %2, metadata !1947, metadata !DIExpression()), !dbg !1951
  %3 = icmp eq i8* %2, null, !dbg !1952
  br i1 %3, label %11, label %4, !dbg !1954

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #14, !dbg !1955
  %6 = icmp eq i32 %5, 0, !dbg !1960
  br i1 %6, label %10, label %7, !dbg !1961

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #14, !dbg !1962
  %9 = icmp eq i32 %8, 0, !dbg !1963
  br i1 %9, label %10, label %11, !dbg !1964

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1949
  br label %11, !dbg !1965

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @imaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1967 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1972, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8* %1, metadata !1973, metadata !DIExpression()), !dbg !1976
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %3, metadata !1974, metadata !DIExpression()), !dbg !1978
  store i8 0, i8* %3, align 1, !dbg !1979, !tbaa !1144
  %4 = icmp slt i64 %0, 0, !dbg !1980
  br i1 %4, label %5, label %17, !dbg !1982

; <label>:5:                                      ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !1983
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i64 %6, metadata !1972, metadata !DIExpression()), !dbg !1975
  %8 = srem i64 %6, 10, !dbg !1985
  %9 = trunc i64 %8 to i8, !dbg !1986
  %10 = sub i8 48, %9, !dbg !1986
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %11, metadata !1974, metadata !DIExpression()), !dbg !1978
  store i8 %10, i8* %11, align 1, !dbg !1988, !tbaa !1144
  %12 = sdiv i64 %6, 10, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %12, metadata !1972, metadata !DIExpression()), !dbg !1975
  %13 = add i64 %6, 9, !dbg !1990
  %14 = icmp ugt i64 %13, 18, !dbg !1990
  br i1 %14, label %5, label %15, !dbg !1991, !llvm.loop !1992

; <label>:15:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %7, metadata !1974, metadata !DIExpression()), !dbg !1978
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %16, metadata !1974, metadata !DIExpression()), !dbg !1978
  store i8 45, i8* %16, align 1, !dbg !1996, !tbaa !1144
  br label %27, !dbg !1997

; <label>:17:                                     ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !1998
  call void @llvm.dbg.value(metadata i8* %19, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i64 %18, metadata !1972, metadata !DIExpression()), !dbg !1975
  %20 = srem i64 %18, 10, !dbg !2000
  %21 = trunc i64 %20 to i8, !dbg !2001
  %22 = add i8 %21, 48, !dbg !2001
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %23, metadata !1974, metadata !DIExpression()), !dbg !1978
  store i8 %22, i8* %23, align 1, !dbg !2003, !tbaa !1144
  %24 = sdiv i64 %18, 10, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %24, metadata !1972, metadata !DIExpression()), !dbg !1975
  %25 = add i64 %18, 9, !dbg !2005
  %26 = icmp ugt i64 %25, 18, !dbg !2005
  br i1 %26, label %17, label %27, !dbg !2006, !llvm.loop !2007

; <label>:27:                                     ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !1998
  call void @llvm.dbg.value(metadata i8* %28, metadata !1974, metadata !DIExpression()), !dbg !1978
  ret i8* %28, !dbg !2010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2013, metadata !DIExpression()), !dbg !2016
  %2 = icmp eq i8* %0, null, !dbg !2017
  br i1 %2, label %3, label %6, !dbg !2019

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2020, !tbaa !934
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.115, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2022
  tail call void @abort() #15, !dbg !2023
  unreachable, !dbg !2023

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %7, metadata !2014, metadata !DIExpression()), !dbg !2025
  %8 = icmp eq i8* %7, null, !dbg !2026
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2027
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2028
  call void @llvm.dbg.value(metadata i8* %10, metadata !2015, metadata !DIExpression()), !dbg !2029
  %11 = ptrtoint i8* %10 to i64, !dbg !2030
  %12 = ptrtoint i8* %0 to i64, !dbg !2030
  %13 = sub i64 %11, %12, !dbg !2030
  %14 = icmp sgt i64 %13, 6, !dbg !2032
  br i1 %14, label %15, label %24, !dbg !2033

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2034
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.116, i64 0, i64 0), i64 7) #14, !dbg !2035
  %18 = icmp eq i32 %17, 0, !dbg !2036
  br i1 %18, label %19, label %24, !dbg !2037

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2013, metadata !DIExpression()), !dbg !2016
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.117, i64 0, i64 0), i64 3) #14, !dbg !2038
  %21 = icmp eq i32 %20, 0, !dbg !2041
  br i1 %21, label %22, label %24, !dbg !2042

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %23, metadata !2013, metadata !DIExpression()), !dbg !2016
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2045, !tbaa !934
  br label %24, !dbg !2046

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2013, metadata !DIExpression()), !dbg !2016
  store i8* %25, i8** @program_name, align 8, !dbg !2047, !tbaa !934
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2048, !tbaa !934
  ret void, !dbg !2049
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2050 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2055, metadata !DIExpression()), !dbg !2058
  %2 = tail call i32* @__errno_location() #17, !dbg !2059
  %3 = load i32, i32* %2, align 4, !dbg !2059, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %3, metadata !2056, metadata !DIExpression()), !dbg !2060
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2061
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2061
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2061
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2062
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2057, metadata !DIExpression()), !dbg !2063
  store i32 %3, i32* %2, align 4, !dbg !2064, !tbaa !1041
  ret %struct.quoting_options* %8, !dbg !2065
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !2066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2072, metadata !DIExpression()), !dbg !2073
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2074
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2074
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2075
  %5 = load i32, i32* %4, align 8, !dbg !2075, !tbaa !2076
  ret i32 %5, !dbg !2078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2079 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2083, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %1, metadata !2084, metadata !DIExpression()), !dbg !2086
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2087
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2087
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2088
  store i32 %1, i32* %5, align 8, !dbg !2089, !tbaa !2076
  ret void, !dbg !2090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2091 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2095, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %1, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 %2, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %1, metadata !2098, metadata !DIExpression()), !dbg !2106
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2107
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2107
  %6 = lshr i8 %1, 5, !dbg !2108
  %7 = zext i8 %6 to i64, !dbg !2108
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2109
  call void @llvm.dbg.value(metadata i32* %8, metadata !2099, metadata !DIExpression()), !dbg !2110
  %9 = and i8 %1, 31, !dbg !2111
  %10 = zext i8 %9 to i32, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %10, metadata !2101, metadata !DIExpression()), !dbg !2112
  %11 = load i32, i32* %8, align 4, !dbg !2113, !tbaa !1041
  %12 = lshr i32 %11, %10, !dbg !2114
  %13 = and i32 %12, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %13, metadata !2102, metadata !DIExpression()), !dbg !2116
  %14 = and i32 %2, 1, !dbg !2117
  %15 = xor i32 %13, %14, !dbg !2118
  %16 = shl i32 %15, %10, !dbg !2119
  %17 = xor i32 %16, %11, !dbg !2120
  store i32 %17, i32* %8, align 4, !dbg !2120, !tbaa !1041
  ret i32 %13, !dbg !2121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2122 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2130
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2131
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2126, metadata !DIExpression()), !dbg !2129
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2134
  %6 = load i32, i32* %5, align 4, !dbg !2134, !tbaa !2135
  call void @llvm.dbg.value(metadata i32 %6, metadata !2128, metadata !DIExpression()), !dbg !2136
  store i32 %1, i32* %5, align 4, !dbg !2137, !tbaa !2135
  ret i32 %6, !dbg !2138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2139 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %1, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* %2, metadata !2145, metadata !DIExpression()), !dbg !2148
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2149
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()), !dbg !2146
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2152
  store i32 10, i32* %6, align 8, !dbg !2153, !tbaa !2076
  %7 = icmp ne i8* %1, null, !dbg !2154
  %8 = icmp ne i8* %2, null, !dbg !2156
  %9 = and i1 %7, %8, !dbg !2157
  br i1 %9, label %11, label %10, !dbg !2157

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2158
  unreachable, !dbg !2158

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2159
  store i8* %1, i8** %12, align 8, !dbg !2160, !tbaa !2161
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2162
  store i8* %2, i8** %13, align 8, !dbg !2163, !tbaa !2164
  ret void, !dbg !2165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !2172, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %3, metadata !2173, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2174, metadata !DIExpression()), !dbg !2182
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2183
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2175, metadata !DIExpression()), !dbg !2184
  %8 = tail call i32* @__errno_location() #17, !dbg !2185
  %9 = load i32, i32* %8, align 4, !dbg !2185, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %9, metadata !2176, metadata !DIExpression()), !dbg !2186
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2187
  %11 = load i32, i32* %10, align 8, !dbg !2187, !tbaa !2076
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2188
  %13 = load i32, i32* %12, align 4, !dbg !2188, !tbaa !2135
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2189
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2190
  %16 = load i8*, i8** %15, align 8, !dbg !2190, !tbaa !2161
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2191
  %18 = load i8*, i8** %17, align 8, !dbg !2191, !tbaa !2164
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %19, metadata !2177, metadata !DIExpression()), !dbg !2193
  store i32 %9, i32* %8, align 4, !dbg !2194, !tbaa !1041
  ret i64 %19, !dbg !2195
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2196 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2202, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %2, metadata !2204, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %3, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %4, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %5, metadata !2207, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i32* %6, metadata !2208, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8* %7, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %8, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* null, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2276
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2277
  %14 = icmp eq i64 %13, 1, !dbg !2278
  %15 = lshr i32 %5, 1, !dbg !2279
  %16 = trunc i32 %15 to i8, !dbg !2279
  %17 = and i8 %16, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i8 %17, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 1, metadata !2221, metadata !DIExpression()), !dbg !2282
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2283

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2273
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2274
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2275
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2276
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2284
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2280
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2281
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2282
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %39, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %38, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %37, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %36, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %35, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %34, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %33, metadata !2215, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %32, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %31, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %30, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %29, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %28, metadata !2206, metadata !DIExpression()), !dbg !2267
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
  ], !dbg !2286

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 1, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %36, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 5, metadata !2206, metadata !DIExpression()), !dbg !2267
  br label %93, !dbg !2287

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 5, metadata !2206, metadata !DIExpression()), !dbg !2267
  %43 = and i8 %36, 1, !dbg !2288
  %44 = icmp eq i8 %43, 0, !dbg !2288
  br i1 %44, label %45, label %93, !dbg !2287

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2290
  br i1 %46, label %93, label %47, !dbg !2293

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2290, !tbaa !1144
  br label %93, !dbg !2290

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.128, i64 0, i64 0), i32 %28), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %49, metadata !2209, metadata !DIExpression()), !dbg !2270
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), i32 %28), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %50, metadata !2210, metadata !DIExpression()), !dbg !2271
  br label %51, !dbg !2299

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %52, metadata !2209, metadata !DIExpression()), !dbg !2270
  %54 = and i8 %36, 1, !dbg !2300
  %55 = icmp eq i8 %54, 0, !dbg !2300
  br i1 %55, label %56, label %71, !dbg !2302

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2272
  %57 = load i8, i8* %52, align 1, !dbg !2303, !tbaa !1144
  %58 = icmp eq i8 %57, 0, !dbg !2306
  br i1 %58, label %71, label %59, !dbg !2306

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %62, metadata !2212, metadata !DIExpression()), !dbg !2272
  %63 = icmp ult i64 %62, %40, !dbg !2307
  br i1 %63, label %64, label %66, !dbg !2310

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2307
  store i8 %60, i8* %65, align 1, !dbg !2307, !tbaa !1144
  br label %66, !dbg !2307

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2310
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %68, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %67, metadata !2212, metadata !DIExpression()), !dbg !2272
  %69 = load i8, i8* %68, align 1, !dbg !2303, !tbaa !1144
  %70 = icmp eq i8 %69, 0, !dbg !2306
  br i1 %70, label %71, label %59, !dbg !2306, !llvm.loop !2312

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %72, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %53, metadata !2214, metadata !DIExpression()), !dbg !2274
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %73, metadata !2215, metadata !DIExpression()), !dbg !2275
  br label %93, !dbg !2315

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2276
  br label %75, !dbg !2316

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2284
  call void @llvm.dbg.value(metadata i8 %76, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 1, metadata !2218, metadata !DIExpression()), !dbg !2279
  br label %77, !dbg !2317

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2276
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2284
  call void @llvm.dbg.value(metadata i8 %79, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %78, metadata !2216, metadata !DIExpression()), !dbg !2276
  %80 = and i8 %79, 1, !dbg !2318
  %81 = icmp eq i8 %80, 0, !dbg !2318
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2320
  br label %83, !dbg !2320

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2321
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2279
  call void @llvm.dbg.value(metadata i8 %85, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %84, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  %86 = and i8 %85, 1, !dbg !2322
  %87 = icmp eq i8 %86, 0, !dbg !2322
  br i1 %87, label %88, label %93, !dbg !2324

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2325
  br i1 %89, label %93, label %90, !dbg !2328

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2325, !tbaa !1144
  br label %93, !dbg !2325

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2279
  br label %93, !dbg !2329

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2330
  unreachable, !dbg !2330

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2272
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %41 ], !dbg !2284
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2284
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2284
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %101, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %99, metadata !2215, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %97, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2332
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
  br label %121, !dbg !2333

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2334
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2272
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2273
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2280
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2281
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2282
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %125, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %122, metadata !2211, metadata !DIExpression()), !dbg !2332
  %130 = icmp eq i64 %125, -1, !dbg !2335
  br i1 %130, label %131, label %135, !dbg !2336

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2337
  %133 = load i8, i8* %132, align 1, !dbg !2337, !tbaa !1144
  %134 = icmp eq i8 %133, 0, !dbg !2338
  br i1 %134, label %617, label %137, !dbg !2339

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2340
  br i1 %136, label %617, label %137, !dbg !2339

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 0, metadata !2229, metadata !DIExpression()), !dbg !2343
  br i1 %107, label %138, label %153, !dbg !2344

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2346
  %140 = and i1 %108, %130, !dbg !2347
  br i1 %140, label %141, label %143, !dbg !2347

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %142, metadata !2205, metadata !DIExpression()), !dbg !2266
  br label %143, !dbg !2349

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2205, metadata !DIExpression()), !dbg !2266
  %145 = icmp ugt i64 %139, %144, !dbg !2350
  br i1 %145, label %153, label %146, !dbg !2351

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2352
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2353
  %149 = icmp ne i32 %148, 0, !dbg !2354
  %150 = or i1 %149, %110, !dbg !2355
  %151 = xor i1 %149, true, !dbg !2355
  %152 = zext i1 %151 to i8, !dbg !2355
  br i1 %150, label %153, label %661, !dbg !2355

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %155, metadata !2227, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %154, metadata !2205, metadata !DIExpression()), !dbg !2266
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2357
  %157 = load i8, i8* %156, align 1, !dbg !2357, !tbaa !1144
  call void @llvm.dbg.value(metadata i8 %157, metadata !2222, metadata !DIExpression()), !dbg !2358
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
  ], !dbg !2359

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2360

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2361

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2228, metadata !DIExpression()), !dbg !2342
  %161 = and i8 %126, 1, !dbg !2365
  %162 = icmp eq i8 %161, 0, !dbg !2365
  %163 = and i1 %114, %162, !dbg !2365
  br i1 %163, label %164, label %180, !dbg !2365

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2367
  br i1 %165, label %166, label %168, !dbg !2371

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2367
  store i8 39, i8* %167, align 1, !dbg !2367, !tbaa !1144
  br label %168, !dbg !2367

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %169, metadata !2212, metadata !DIExpression()), !dbg !2272
  %170 = icmp ult i64 %169, %129, !dbg !2372
  br i1 %170, label %171, label %173, !dbg !2375

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2372
  store i8 36, i8* %172, align 1, !dbg !2372, !tbaa !1144
  br label %173, !dbg !2372

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %174, metadata !2212, metadata !DIExpression()), !dbg !2272
  %175 = icmp ult i64 %174, %129, !dbg !2376
  br i1 %175, label %176, label %178, !dbg !2379

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2376
  store i8 39, i8* %177, align 1, !dbg !2376, !tbaa !1144
  br label %178, !dbg !2376

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %179, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %180, !dbg !2380

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2331
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %182, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %181, metadata !2212, metadata !DIExpression()), !dbg !2272
  %183 = icmp ult i64 %181, %129, !dbg !2381
  br i1 %183, label %184, label %186, !dbg !2384

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2381
  store i8 92, i8* %185, align 1, !dbg !2381, !tbaa !1144
  br label %186, !dbg !2381

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %187, metadata !2212, metadata !DIExpression()), !dbg !2272
  br i1 %104, label %188, label %478, !dbg !2385

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2387
  %190 = icmp ult i64 %189, %154, !dbg !2388
  br i1 %190, label %191, label %467, !dbg !2389

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2390
  %193 = load i8, i8* %192, align 1, !dbg !2390, !tbaa !1144
  %194 = add i8 %193, -48, !dbg !2391
  %195 = icmp ult i8 %194, 10, !dbg !2391
  br i1 %195, label %196, label %467, !dbg !2391

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2392
  br i1 %197, label %198, label %200, !dbg !2396

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2392
  store i8 48, i8* %199, align 1, !dbg !2392, !tbaa !1144
  br label %200, !dbg !2392

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %201, metadata !2212, metadata !DIExpression()), !dbg !2272
  %202 = icmp ult i64 %201, %129, !dbg !2397
  br i1 %202, label %203, label %205, !dbg !2400

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2397
  store i8 48, i8* %204, align 1, !dbg !2397, !tbaa !1144
  br label %205, !dbg !2397

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %206, metadata !2212, metadata !DIExpression()), !dbg !2272
  br label %467, !dbg !2401

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2402

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2403

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2404

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2406

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2408
  %213 = icmp ult i64 %212, %154, !dbg !2409
  br i1 %213, label %214, label %467, !dbg !2410

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2411
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2412
  %217 = load i8, i8* %216, align 1, !dbg !2412, !tbaa !1144
  %218 = icmp eq i8 %217, 63, !dbg !2413
  br i1 %218, label %219, label %467, !dbg !2414

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2415
  %221 = load i8, i8* %220, align 1, !dbg !2415, !tbaa !1144
  %222 = sext i8 %221 to i32, !dbg !2415
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
  ], !dbg !2416

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2417

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %212, metadata !2211, metadata !DIExpression()), !dbg !2332
  %225 = icmp ult i64 %123, %129, !dbg !2419
  br i1 %225, label %226, label %228, !dbg !2422

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2419
  store i8 63, i8* %227, align 1, !dbg !2419, !tbaa !1144
  br label %228, !dbg !2419

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %229, metadata !2212, metadata !DIExpression()), !dbg !2272
  %230 = icmp ult i64 %229, %129, !dbg !2423
  br i1 %230, label %231, label %233, !dbg !2426

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2423
  store i8 34, i8* %232, align 1, !dbg !2423, !tbaa !1144
  br label %233, !dbg !2423

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %234, metadata !2212, metadata !DIExpression()), !dbg !2272
  %235 = icmp ult i64 %234, %129, !dbg !2427
  br i1 %235, label %236, label %238, !dbg !2430

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2427
  store i8 34, i8* %237, align 1, !dbg !2427, !tbaa !1144
  br label %238, !dbg !2427

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %239, metadata !2212, metadata !DIExpression()), !dbg !2272
  %240 = icmp ult i64 %239, %129, !dbg !2431
  br i1 %240, label %241, label %243, !dbg !2434

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2431
  store i8 63, i8* %242, align 1, !dbg !2431, !tbaa !1144
  br label %243, !dbg !2431

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %244, metadata !2212, metadata !DIExpression()), !dbg !2272
  br label %467, !dbg !2435

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2226, metadata !DIExpression()), !dbg !2436
  br label %255, !dbg !2437

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2226, metadata !DIExpression()), !dbg !2436
  br label %255, !dbg !2438

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2226, metadata !DIExpression()), !dbg !2436
  br label %253, !dbg !2439

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2226, metadata !DIExpression()), !dbg !2436
  br label %253, !dbg !2440

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2226, metadata !DIExpression()), !dbg !2436
  br label %255, !dbg !2441

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2226, metadata !DIExpression()), !dbg !2436
  br i1 %114, label %251, label %252, !dbg !2442

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2443

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2446

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %254, metadata !2226, metadata !DIExpression()), !dbg !2436
  br i1 %113, label %255, label %661, !dbg !2449

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %256, metadata !2226, metadata !DIExpression()), !dbg !2436
  br i1 %103, label %524, label %478, !dbg !2451

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2452
  br i1 %258, label %259, label %264, !dbg !2454

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2455, !tbaa !1144
  %261 = icmp ne i8 %260, 0, !dbg !2456
  %262 = icmp ne i64 %122, 0, !dbg !2457
  %263 = or i1 %262, %261, !dbg !2459
  br i1 %263, label %467, label %270, !dbg !2459

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2460
  %266 = icmp ne i64 %122, 0, !dbg !2457
  %267 = or i1 %266, %265, !dbg !2454
  br i1 %267, label %467, label %270, !dbg !2454

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2457
  br i1 %269, label %270, label %467, !dbg !2461

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2229, metadata !DIExpression()), !dbg !2343
  br label %271, !dbg !2462

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %272, metadata !2229, metadata !DIExpression()), !dbg !2343
  br i1 %113, label %467, label %661, !dbg !2463

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 1, metadata !2229, metadata !DIExpression()), !dbg !2343
  br i1 %114, label %274, label %467, !dbg !2465

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2466

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2469
  %277 = icmp ne i64 %124, 0, !dbg !2471
  %278 = or i1 %277, %276, !dbg !2472
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2472
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %280, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %279, metadata !2213, metadata !DIExpression()), !dbg !2273
  %281 = icmp ult i64 %123, %280, !dbg !2473
  br i1 %281, label %282, label %284, !dbg !2476

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2473
  store i8 39, i8* %283, align 1, !dbg !2473, !tbaa !1144
  br label %284, !dbg !2473

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %285, metadata !2212, metadata !DIExpression()), !dbg !2272
  %286 = icmp ult i64 %285, %280, !dbg !2477
  br i1 %286, label %287, label %289, !dbg !2480

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2477
  store i8 92, i8* %288, align 1, !dbg !2477, !tbaa !1144
  br label %289, !dbg !2477

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %290, metadata !2212, metadata !DIExpression()), !dbg !2272
  %291 = icmp ult i64 %290, %280, !dbg !2481
  br i1 %291, label %292, label %294, !dbg !2484

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2481
  store i8 39, i8* %293, align 1, !dbg !2481, !tbaa !1144
  br label %294, !dbg !2481

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %295, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %467, !dbg !2485

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2486

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2230, metadata !DIExpression()), !dbg !2487
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2488
  %299 = load i16*, i16** %298, align 8, !dbg !2488, !tbaa !934
  %300 = zext i8 %157 to i64, !dbg !2488
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2488
  %302 = load i16, i16* %301, align 2, !dbg !2488, !tbaa !2490
  %303 = lshr i16 %302, 14, !dbg !2491
  %304 = trunc i16 %303 to i8, !dbg !2491
  %305 = and i8 %304, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i8 %305, metadata !2233, metadata !DIExpression()), !dbg !2492
  br label %359, !dbg !2493

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2494
  store i64 0, i64* %10, align 8, !dbg !2495
  call void @llvm.dbg.value(metadata i64 0, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 1, metadata !2233, metadata !DIExpression()), !dbg !2492
  %307 = icmp eq i64 %154, -1, !dbg !2496
  br i1 %307, label %308, label %310, !dbg !2498

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %309, metadata !2205, metadata !DIExpression()), !dbg !2266
  br label %310, !dbg !2500

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2501
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  br label %312, !dbg !2502

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2503
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2504
  call void @llvm.dbg.value(metadata i8 %314, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2505
  %315 = add i64 %313, %122, !dbg !2506
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2507
  %317 = sub i64 %311, %315, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2234, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  call void @llvm.dbg.value(metadata i32* %12, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2510
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %318, metadata !2252, metadata !DIExpression()), !dbg !2512
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2513

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  %320 = icmp ugt i64 %311, %315, !dbg !2514
  br i1 %320, label %321, label %344, !dbg !2516

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2230, metadata !DIExpression()), !dbg !2487
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2517
  %325 = load i8, i8* %324, align 1, !dbg !2517, !tbaa !1144
  %326 = icmp eq i8 %325, 0, !dbg !2516
  br i1 %326, label %344, label %327, !dbg !2518

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %328, metadata !2230, metadata !DIExpression()), !dbg !2487
  %329 = add i64 %328, %122, !dbg !2520
  %330 = icmp ult i64 %329, %311, !dbg !2514
  br i1 %330, label %321, label %344, !dbg !2516, !llvm.loop !2521

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2522
  %333 = and i1 %116, %332, !dbg !2525
  call void @llvm.dbg.value(metadata i64 1, metadata !2253, metadata !DIExpression()), !dbg !2526
  br i1 %333, label %334, label %347, !dbg !2525

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2253, metadata !DIExpression()), !dbg !2526
  %336 = add i64 %335, %315, !dbg !2527
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2528
  %338 = load i8, i8* %337, align 1, !dbg !2528, !tbaa !1144
  %339 = sext i8 %338 to i32, !dbg !2528
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2529

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %341, metadata !2253, metadata !DIExpression()), !dbg !2526
  %342 = icmp ult i64 %341, %318, !dbg !2522
  br i1 %342, label %334, label %347, !dbg !2531, !llvm.loop !2532

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %314, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %313, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %314, metadata !2233, metadata !DIExpression()), !dbg !2492
  br label %344, !dbg !2534

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %352, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2534
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2535, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %348, metadata !2249, metadata !DIExpression()), !dbg !2510
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2537
  %350 = icmp eq i32 %349, 0, !dbg !2537
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2538
  call void @llvm.dbg.value(metadata i8 %351, metadata !2233, metadata !DIExpression()), !dbg !2492
  %352 = add i64 %318, %313, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %352, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %351, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %352, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2234, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2540
  %354 = icmp eq i32 %353, 0, !dbg !2541
  br i1 %354, label %312, label %355, !dbg !2542, !llvm.loop !2543

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2545
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %94, metadata !2206, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %100, metadata !2216, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %311, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %351, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %352, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2534
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2545
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2546
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2547
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2547
  call void @llvm.dbg.value(metadata i8 %362, metadata !2233, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %361, metadata !2230, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %360, metadata !2205, metadata !DIExpression()), !dbg !2266
  %363 = and i8 %362, 1, !dbg !2548
  %364 = icmp ne i8 %363, 0, !dbg !2548
  call void @llvm.dbg.value(metadata i8 %363, metadata !2229, metadata !DIExpression()), !dbg !2343
  %365 = icmp ult i64 %361, 2, !dbg !2549
  %366 = or i1 %364, %115, !dbg !2550
  %367 = and i1 %365, %366, !dbg !2551
  br i1 %367, label %467, label %368, !dbg !2551

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %369, metadata !2260, metadata !DIExpression()), !dbg !2553
  br label %370, !dbg !2554

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2555
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2559
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2280
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2555
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2561
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2342
  call void @llvm.dbg.value(metadata i8 %376, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %375, metadata !2227, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %374, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %373, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %372, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %371, metadata !2211, metadata !DIExpression()), !dbg !2332
  br i1 %366, label %423, label %377, !dbg !2565

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2566

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2228, metadata !DIExpression()), !dbg !2342
  %379 = and i8 %373, 1, !dbg !2569
  %380 = icmp eq i8 %379, 0, !dbg !2569
  %381 = and i1 %114, %380, !dbg !2569
  br i1 %381, label %382, label %398, !dbg !2569

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2571
  br i1 %383, label %384, label %386, !dbg !2575

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2571
  store i8 39, i8* %385, align 1, !dbg !2571, !tbaa !1144
  br label %386, !dbg !2571

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %387, metadata !2212, metadata !DIExpression()), !dbg !2272
  %388 = icmp ult i64 %387, %129, !dbg !2576
  br i1 %388, label %389, label %391, !dbg !2579

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2576
  store i8 36, i8* %390, align 1, !dbg !2576, !tbaa !1144
  br label %391, !dbg !2576

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %392, metadata !2212, metadata !DIExpression()), !dbg !2272
  %393 = icmp ult i64 %392, %129, !dbg !2580
  br i1 %393, label %394, label %396, !dbg !2583

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2580
  store i8 39, i8* %395, align 1, !dbg !2580, !tbaa !1144
  br label %396, !dbg !2580

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %397, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %398, !dbg !2584

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2331
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %400, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %399, metadata !2212, metadata !DIExpression()), !dbg !2272
  %401 = icmp ult i64 %399, %129, !dbg !2585
  br i1 %401, label %402, label %404, !dbg !2588

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2585
  store i8 92, i8* %403, align 1, !dbg !2585, !tbaa !1144
  br label %404, !dbg !2585

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %405, metadata !2212, metadata !DIExpression()), !dbg !2272
  %406 = icmp ult i64 %405, %129, !dbg !2589
  br i1 %406, label %407, label %411, !dbg !2592

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2589
  %409 = or i8 %408, 48, !dbg !2589
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2589
  store i8 %409, i8* %410, align 1, !dbg !2589, !tbaa !1144
  br label %411, !dbg !2589

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %412, metadata !2212, metadata !DIExpression()), !dbg !2272
  %413 = icmp ult i64 %412, %129, !dbg !2593
  br i1 %413, label %414, label %419, !dbg !2596

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2593
  %416 = and i8 %415, 7, !dbg !2593
  %417 = or i8 %416, 48, !dbg !2593
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2593
  store i8 %417, i8* %418, align 1, !dbg !2593, !tbaa !1144
  br label %419, !dbg !2593

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %420, metadata !2212, metadata !DIExpression()), !dbg !2272
  %421 = and i8 %374, 7, !dbg !2597
  %422 = or i8 %421, 48, !dbg !2598
  call void @llvm.dbg.value(metadata i8 %422, metadata !2222, metadata !DIExpression()), !dbg !2358
  br label %432, !dbg !2599

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2600
  %425 = icmp eq i8 %424, 0, !dbg !2600
  br i1 %425, label %432, label %426, !dbg !2601

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2602
  br i1 %427, label %428, label %430, !dbg !2605

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2602
  store i8 92, i8* %429, align 1, !dbg !2602, !tbaa !1144
  br label %430, !dbg !2602

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %431, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2341
  br label %432, !dbg !2606

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2607
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2280
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2608
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2609
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2611
  call void @llvm.dbg.value(metadata i8 %437, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %436, metadata !2227, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %435, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %434, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %433, metadata !2212, metadata !DIExpression()), !dbg !2272
  %438 = add i64 %371, 1, !dbg !2612
  %439 = icmp ugt i64 %369, %438, !dbg !2614
  br i1 %439, label %440, label %562, !dbg !2615

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2616
  %442 = icmp ne i8 %441, 0, !dbg !2616
  %443 = and i8 %437, 1, !dbg !2616
  %444 = icmp eq i8 %443, 0, !dbg !2616
  %445 = and i1 %442, %444, !dbg !2616
  br i1 %445, label %446, label %457, !dbg !2616

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2619
  br i1 %447, label %448, label %450, !dbg !2623

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2619
  store i8 39, i8* %449, align 1, !dbg !2619, !tbaa !1144
  br label %450, !dbg !2619

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %451, metadata !2212, metadata !DIExpression()), !dbg !2272
  %452 = icmp ult i64 %451, %129, !dbg !2624
  br i1 %452, label %453, label %455, !dbg !2627

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2624
  store i8 39, i8* %454, align 1, !dbg !2624, !tbaa !1144
  br label %455, !dbg !2624

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %456, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %457, !dbg !2628

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2629
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %459, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %458, metadata !2212, metadata !DIExpression()), !dbg !2272
  %460 = icmp ult i64 %458, %129, !dbg !2630
  br i1 %460, label %461, label %463, !dbg !2632

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2630
  store i8 %435, i8* %462, align 1, !dbg !2630, !tbaa !1144
  br label %463, !dbg !2630

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %464, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %438, metadata !2211, metadata !DIExpression()), !dbg !2332
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2633
  %466 = load i8, i8* %465, align 1, !dbg !2633, !tbaa !1144
  call void @llvm.dbg.value(metadata i8 %466, metadata !2222, metadata !DIExpression()), !dbg !2358
  br label %370, !dbg !2634, !llvm.loop !2635

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2638
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2331
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2273
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2639
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2331
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2331
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2356
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2356
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2356
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %476, metadata !2229, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %475, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %155, metadata !2227, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %474, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %473, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %472, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %471, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %470, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %469, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %468, metadata !2211, metadata !DIExpression()), !dbg !2332
  br i1 %105, label %489, label %478, !dbg !2640

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
  br i1 %112, label %490, label %512, !dbg !2642

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2643

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
  %501 = lshr i8 %494, 5, !dbg !2644
  %502 = zext i8 %501 to i64, !dbg !2644
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2645
  %504 = load i32, i32* %503, align 4, !dbg !2645, !tbaa !1041
  %505 = and i8 %494, 31, !dbg !2646
  %506 = zext i8 %505 to i32, !dbg !2646
  %507 = shl i32 1, %506, !dbg !2647
  %508 = and i32 %504, %507, !dbg !2647
  %509 = icmp eq i32 %508, 0, !dbg !2647
  %510 = icmp eq i8 %155, 0, !dbg !2648
  %511 = and i1 %510, %509, !dbg !2649
  br i1 %511, label %562, label %524, !dbg !2649

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
  %523 = icmp eq i8 %155, 0, !dbg !2648
  br i1 %523, label %562, label %524, !dbg !2650

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2651
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2331
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2273
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2639
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2280
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2281
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2652
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2356
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %532, metadata !2229, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %531, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %530, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %529, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %528, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %527, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %526, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %525, metadata !2211, metadata !DIExpression()), !dbg !2332
  br i1 %110, label %534, label %661, !dbg !2655

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2228, metadata !DIExpression()), !dbg !2342
  %535 = and i8 %529, 1, !dbg !2657
  %536 = icmp eq i8 %535, 0, !dbg !2657
  %537 = and i1 %114, %536, !dbg !2657
  br i1 %537, label %538, label %554, !dbg !2657

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2659
  br i1 %539, label %540, label %542, !dbg !2663

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2659
  store i8 39, i8* %541, align 1, !dbg !2659, !tbaa !1144
  br label %542, !dbg !2659

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %543, metadata !2212, metadata !DIExpression()), !dbg !2272
  %544 = icmp ult i64 %543, %533, !dbg !2664
  br i1 %544, label %545, label %547, !dbg !2667

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2664
  store i8 36, i8* %546, align 1, !dbg !2664, !tbaa !1144
  br label %547, !dbg !2664

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %548, metadata !2212, metadata !DIExpression()), !dbg !2272
  %549 = icmp ult i64 %548, %533, !dbg !2668
  br i1 %549, label %550, label %552, !dbg !2671

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2668
  store i8 39, i8* %551, align 1, !dbg !2668, !tbaa !1144
  br label %552, !dbg !2668

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %553, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %554, !dbg !2672

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2629
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %556, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %555, metadata !2212, metadata !DIExpression()), !dbg !2272
  %557 = icmp ult i64 %555, %533, !dbg !2673
  br i1 %557, label %558, label %560, !dbg !2676

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2673
  store i8 92, i8* %559, align 1, !dbg !2673, !tbaa !1144
  br label %560, !dbg !2673

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %561, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %572, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %571, metadata !2229, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %570, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %569, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %568, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %567, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %566, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %565, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %564, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %563, metadata !2211, metadata !DIExpression()), !dbg !2332
  br label %589, !dbg !2677

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2651
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2331
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2273
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2639
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2280
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2281
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2680
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2356
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2356
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %571, metadata !2229, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %570, metadata !2228, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %569, metadata !2222, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 %568, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %567, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %566, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %565, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %564, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %563, metadata !2211, metadata !DIExpression()), !dbg !2332
  %573 = and i8 %567, 1, !dbg !2677
  %574 = icmp ne i8 %573, 0, !dbg !2677
  %575 = and i8 %570, 1, !dbg !2677
  %576 = icmp eq i8 %575, 0, !dbg !2677
  %577 = and i1 %574, %576, !dbg !2677
  br i1 %577, label %578, label %589, !dbg !2677

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2681
  br i1 %579, label %580, label %582, !dbg !2685

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2681
  store i8 39, i8* %581, align 1, !dbg !2681, !tbaa !1144
  br label %582, !dbg !2681

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %583, metadata !2212, metadata !DIExpression()), !dbg !2272
  %584 = icmp ult i64 %583, %572, !dbg !2686
  br i1 %584, label %585, label %587, !dbg !2689

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2686
  store i8 39, i8* %586, align 1, !dbg !2686, !tbaa !1144
  br label %587, !dbg !2686

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %588, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %589, !dbg !2690

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2629
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %598, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %597, metadata !2212, metadata !DIExpression()), !dbg !2272
  %599 = icmp ult i64 %597, %590, !dbg !2691
  br i1 %599, label %600, label %602, !dbg !2694

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2691
  store i8 %592, i8* %601, align 1, !dbg !2691, !tbaa !1144
  br label %602, !dbg !2691

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %603, metadata !2212, metadata !DIExpression()), !dbg !2272
  %604 = and i8 %591, 1, !dbg !2695
  %605 = icmp eq i8 %604, 0, !dbg !2695
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2697
  call void @llvm.dbg.value(metadata i8 %606, metadata !2221, metadata !DIExpression()), !dbg !2282
  br label %607, !dbg !2698

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2651
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2331
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2273
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2639
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2280
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2331
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2282
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %614, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %613, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %612, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %611, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %610, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %609, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %608, metadata !2211, metadata !DIExpression()), !dbg !2332
  %616 = add i64 %608, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %616, metadata !2211, metadata !DIExpression()), !dbg !2332
  br label %121, !dbg !2700, !llvm.loop !2701

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %125, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %125, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %127, metadata !2220, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %128, metadata !2221, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  %619 = icmp eq i64 %123, 0, !dbg !2703
  %620 = and i1 %114, %619, !dbg !2705
  %621 = xor i1 %620, true, !dbg !2705
  %622 = or i1 %110, %621, !dbg !2705
  br i1 %622, label %623, label %661, !dbg !2705

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2706
  %625 = xor i1 %624, true, !dbg !2706
  %626 = and i8 %127, 1, !dbg !2708
  %627 = icmp eq i8 %626, 0, !dbg !2708
  %628 = or i1 %627, %625, !dbg !2706
  br i1 %628, label %638, label %629, !dbg !2706

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2709
  %631 = icmp eq i8 %630, 0, !dbg !2709
  br i1 %631, label %634, label %632, !dbg !2712

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %618, metadata !2205, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %95, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %96, metadata !2210, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %125, metadata !2205, metadata !DIExpression()), !dbg !2266
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2713
  br label %671, !dbg !2714

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2715
  %636 = icmp ne i64 %124, 0, !dbg !2717
  %637 = and i1 %636, %635, !dbg !2718
  br i1 %637, label %27, label %638, !dbg !2718

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %129, metadata !2203, metadata !DIExpression()), !dbg !2264
  %639 = icmp ne i8* %98, null, !dbg !2719
  %640 = and i1 %639, %110, !dbg !2721
  br i1 %640, label %641, label %656, !dbg !2721

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %123, metadata !2212, metadata !DIExpression()), !dbg !2272
  %642 = load i8, i8* %98, align 1, !dbg !2722, !tbaa !1144
  %643 = icmp eq i8 %642, 0, !dbg !2725
  br i1 %643, label %656, label %644, !dbg !2725

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %647, metadata !2212, metadata !DIExpression()), !dbg !2272
  %648 = icmp ult i64 %647, %129, !dbg !2726
  br i1 %648, label %649, label %651, !dbg !2729

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2726
  store i8 %645, i8* %650, align 1, !dbg !2726, !tbaa !1144
  br label %651, !dbg !2726

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2729
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %653, metadata !2214, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %652, metadata !2212, metadata !DIExpression()), !dbg !2272
  %654 = load i8, i8* %653, align 1, !dbg !2722, !tbaa !1144
  %655 = icmp eq i8 %654, 0, !dbg !2725
  br i1 %655, label %656, label %644, !dbg !2725, !llvm.loop !2731

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %657, metadata !2212, metadata !DIExpression()), !dbg !2272
  %658 = icmp ult i64 %657, %129, !dbg !2733
  br i1 %658, label %659, label %671, !dbg !2735

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2736
  store i8 0, i8* %660, align 1, !dbg !2737, !tbaa !1144
  br label %671, !dbg !2736

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2203, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %663, metadata !2205, metadata !DIExpression()), !dbg !2266
  %665 = icmp ne i32 %662, 2, !dbg !2738
  %666 = icmp eq i8 %102, 0, !dbg !2740
  %667 = or i1 %665, %666, !dbg !2741
  call void @llvm.dbg.value(metadata i32 4, metadata !2206, metadata !DIExpression()), !dbg !2267
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %668, metadata !2206, metadata !DIExpression()), !dbg !2267
  %669 = and i32 %5, -3, !dbg !2742
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2743
  br label %671, !dbg !2744

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2745
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2746 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %1, metadata !2751, metadata !DIExpression()), !dbg !2755
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %3, metadata !2752, metadata !DIExpression()), !dbg !2757
  %4 = icmp eq i8* %3, %0, !dbg !2758
  br i1 %4, label %5, label %71, !dbg !2760

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %6, metadata !2753, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %6, metadata !2763, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8* null, metadata !2769, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 85, metadata !2770, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8 84, metadata !2771, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 70, metadata !2772, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 45, metadata !2773, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 56, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2775, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2776, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 0, metadata !2777, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2778, metadata !DIExpression()), !dbg !2791
  %7 = load i8, i8* %6, align 1, !dbg !2792, !tbaa !1144
  %8 = and i8 %7, -33, !dbg !2792
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2792

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2794, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* null, metadata !2799, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 84, metadata !2800, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 70, metadata !2801, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 45, metadata !2802, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 56, metadata !2803, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2804, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2805, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8 0, metadata !2806, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2820
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2821
  %11 = load i8, i8* %10, align 1, !dbg !2821, !tbaa !1144
  %12 = and i8 %11, -33, !dbg !2821
  %13 = icmp eq i8 %12, 84, !dbg !2821
  br i1 %13, label %14, label %68, !dbg !2821

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2823, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* null, metadata !2828, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 70, metadata !2829, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8 45, metadata !2830, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 56, metadata !2831, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 0, metadata !2832, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2833, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2834, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2847
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2848
  %16 = load i8, i8* %15, align 1, !dbg !2848, !tbaa !1144
  %17 = and i8 %16, -33, !dbg !2848
  %18 = icmp eq i8 %17, 70, !dbg !2848
  br i1 %18, label %19, label %68, !dbg !2848

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2850, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* null, metadata !2855, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 45, metadata !2856, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8 56, metadata !2857, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 0, metadata !2859, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 0, metadata !2860, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2872
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2873
  %21 = load i8, i8* %20, align 1, !dbg !2873, !tbaa !1144
  %22 = icmp eq i8 %21, 45, !dbg !2873
  br i1 %22, label %23, label %68, !dbg !2875

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2876, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* null, metadata !2881, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 56, metadata !2882, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 0, metadata !2885, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2896
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2897
  %25 = load i8, i8* %24, align 1, !dbg !2897, !tbaa !1144
  %26 = icmp eq i8 %25, 56, !dbg !2897
  br i1 %26, label %27, label %68, !dbg !2899

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* null, metadata !2905, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 0, metadata !2907, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 0, metadata !2908, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2918
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2919
  %29 = load i8, i8* %28, align 1, !dbg !2919, !tbaa !1144
  %30 = icmp eq i8 %29, 0, !dbg !2919
  br i1 %30, label %31, label %68, !dbg !2921

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2922, !tbaa !1144
  %33 = icmp eq i8 %32, 96, !dbg !2923
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.131, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.132, i64 0, i64 0), !dbg !2922
  br label %71, !dbg !2924

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2794, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* null, metadata !2799, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 66, metadata !2800, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 49, metadata !2801, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 56, metadata !2802, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 48, metadata !2803, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 51, metadata !2804, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 48, metadata !2805, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2806, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2937
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2938
  %37 = load i8, i8* %36, align 1, !dbg !2938, !tbaa !1144
  %38 = and i8 %37, -33, !dbg !2938
  %39 = icmp eq i8 %38, 66, !dbg !2938
  br i1 %39, label %40, label %68, !dbg !2938

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2823, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8* null, metadata !2828, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 49, metadata !2829, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 56, metadata !2830, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8 48, metadata !2831, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 51, metadata !2832, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 48, metadata !2833, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2834, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2948
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2949
  %42 = load i8, i8* %41, align 1, !dbg !2949, !tbaa !1144
  %43 = icmp eq i8 %42, 49, !dbg !2949
  br i1 %43, label %44, label %68, !dbg !2950

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2850, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* null, metadata !2855, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 56, metadata !2856, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 48, metadata !2857, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 51, metadata !2858, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 48, metadata !2859, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 0, metadata !2860, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2959
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2960
  %46 = load i8, i8* %45, align 1, !dbg !2960, !tbaa !1144
  %47 = icmp eq i8 %46, 56, !dbg !2960
  br i1 %47, label %48, label %68, !dbg !2961

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2876, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* null, metadata !2881, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 48, metadata !2882, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 51, metadata !2883, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 48, metadata !2884, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 0, metadata !2885, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2969
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2970
  %50 = load i8, i8* %49, align 1, !dbg !2970, !tbaa !1144
  %51 = icmp eq i8 %50, 48, !dbg !2970
  br i1 %51, label %52, label %68, !dbg !2971

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* null, metadata !2905, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 51, metadata !2906, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 48, metadata !2907, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2908, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2978
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2979
  %54 = load i8, i8* %53, align 1, !dbg !2979, !tbaa !1144
  %55 = icmp eq i8 %54, 51, !dbg !2979
  br i1 %55, label %56, label %68, !dbg !2980

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2981, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* null, metadata !2986, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 48, metadata !2987, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !2997
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2998
  %58 = load i8, i8* %57, align 1, !dbg !2998, !tbaa !1144
  %59 = icmp eq i8 %58, 48, !dbg !2998
  br i1 %59, label %60, label %68, !dbg !3000

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3001, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* null, metadata !3006, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 0, metadata !3008, metadata !DIExpression()), !dbg !3015
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3016
  %62 = load i8, i8* %61, align 1, !dbg !3016, !tbaa !1144
  %63 = icmp eq i8 %62, 0, !dbg !3016
  br i1 %63, label %64, label %68, !dbg !3018

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3019, !tbaa !1144
  %66 = icmp eq i8 %65, 96, !dbg !3020
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.133, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.134, i64 0, i64 0), !dbg !3019
  br label %71, !dbg !3021

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3022
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), !dbg !3023
  br label %71, !dbg !3024

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3025
  ret i8* %72, !dbg !3026
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3033, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %0, metadata !3037, metadata !DIExpression()) #11, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()) #11, !dbg !3052
  call void @llvm.dbg.value(metadata i64* null, metadata !3043, metadata !DIExpression()) #11, !dbg !3053
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3044, metadata !DIExpression()) #11, !dbg !3054
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3055
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3045, metadata !DIExpression()) #11, !dbg !3056
  %6 = tail call i32* @__errno_location() #17, !dbg !3057
  %7 = load i32, i32* %6, align 4, !dbg !3057, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %7, metadata !3046, metadata !DIExpression()) #11, !dbg !3058
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3059
  %9 = load i32, i32* %8, align 4, !dbg !3059, !tbaa !2135
  %10 = or i32 %9, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %10, metadata !3047, metadata !DIExpression()) #11, !dbg !3061
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3062
  %12 = load i32, i32* %11, align 8, !dbg !3062, !tbaa !2076
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3064
  %15 = load i8*, i8** %14, align 8, !dbg !3064, !tbaa !2161
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3065
  %17 = load i8*, i8** %16, align 8, !dbg !3065, !tbaa !2164
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !3066
  %19 = add i64 %18, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %19, metadata !3048, metadata !DIExpression()) #11, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %19, metadata !3069, metadata !DIExpression()) #11, !dbg !3074
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %20, metadata !3049, metadata !DIExpression()) #11, !dbg !3077
  %21 = load i32, i32* %11, align 8, !dbg !3078, !tbaa !2076
  %22 = load i8*, i8** %14, align 8, !dbg !3079, !tbaa !2161
  %23 = load i8*, i8** %16, align 8, !dbg !3080, !tbaa !2164
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !3081
  store i32 %7, i32* %6, align 4, !dbg !3082, !tbaa !1041
  ret i8* %20, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3037, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64* %2, metadata !3043, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3044, metadata !DIExpression()), !dbg !3087
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3088
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3045, metadata !DIExpression()), !dbg !3089
  %7 = tail call i32* @__errno_location() #17, !dbg !3090
  %8 = load i32, i32* %7, align 4, !dbg !3090, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %8, metadata !3046, metadata !DIExpression()), !dbg !3091
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3092
  %10 = load i32, i32* %9, align 4, !dbg !3092, !tbaa !2135
  %11 = icmp ne i64* %2, null, !dbg !3093
  %12 = xor i1 %11, true, !dbg !3093
  %13 = zext i1 %12 to i32, !dbg !3093
  %14 = or i32 %10, %13, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %14, metadata !3047, metadata !DIExpression()), !dbg !3095
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3096
  %16 = load i32, i32* %15, align 8, !dbg !3096, !tbaa !2076
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3097
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3098
  %19 = load i8*, i8** %18, align 8, !dbg !3098, !tbaa !2161
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3099
  %21 = load i8*, i8** %20, align 8, !dbg !3099, !tbaa !2164
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3100
  %23 = add i64 %22, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %23, metadata !3048, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %23, metadata !3069, metadata !DIExpression()) #11, !dbg !3103
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3105
  call void @llvm.dbg.value(metadata i8* %24, metadata !3049, metadata !DIExpression()), !dbg !3106
  %25 = load i32, i32* %15, align 8, !dbg !3107, !tbaa !2076
  %26 = load i8*, i8** %18, align 8, !dbg !3108, !tbaa !2161
  %27 = load i8*, i8** %20, align 8, !dbg !3109, !tbaa !2164
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3110
  store i32 %8, i32* %7, align 4, !dbg !3111, !tbaa !1041
  br i1 %11, label %29, label %30, !dbg !3112

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3113, !tbaa !1123
  br label %30, !dbg !3115

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3117 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3121, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 1, metadata !3120, metadata !DIExpression()), !dbg !3123
  %2 = load i32, i32* @nslots, align 4, !dbg !3124, !tbaa !1041
  %3 = icmp sgt i32 %2, 1, !dbg !3127
  br i1 %3, label %4, label %12, !dbg !3128

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3120, metadata !DIExpression()), !dbg !3123
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3129
  %7 = load i8*, i8** %6, align 8, !dbg !3129, !tbaa !3130
  tail call void @free(i8* %7) #11, !dbg !3132
  %8 = add nuw nsw i64 %5, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i32 undef, metadata !3120, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3123
  %9 = load i32, i32* @nslots, align 4, !dbg !3124, !tbaa !1041
  %10 = sext i32 %9 to i64, !dbg !3127
  %11 = icmp slt i64 %8, %10, !dbg !3127
  br i1 %11, label %4, label %12, !dbg !3128, !llvm.loop !3134

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3136
  %14 = load i8*, i8** %13, align 8, !dbg !3136, !tbaa !3130
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3138
  br i1 %15, label %17, label %16, !dbg !3139

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !3140
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3142, !tbaa !3143
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3144, !tbaa !3130
  br label %17, !dbg !3145

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3146
  br i1 %18, label %21, label %19, !dbg !3148

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3149
  tail call void @free(i8* %20) #11, !dbg !3151
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3152, !tbaa !934
  br label %21, !dbg !3153

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3154, !tbaa !1041
  ret void, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3160, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8* %1, metadata !3161, metadata !DIExpression()), !dbg !3163
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3164
  ret i8* %3, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !3171, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %2, metadata !3172, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3173, metadata !DIExpression()), !dbg !3188
  %5 = tail call i32* @__errno_location() #17, !dbg !3189
  %6 = load i32, i32* %5, align 4, !dbg !3189, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %6, metadata !3174, metadata !DIExpression()), !dbg !3190
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3191, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3175, metadata !DIExpression()), !dbg !3192
  %8 = icmp slt i32 %0, 0, !dbg !3193
  br i1 %8, label %9, label %10, !dbg !3195

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3196
  unreachable, !dbg !3196

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3197, !tbaa !1041
  %12 = icmp sgt i32 %11, %0, !dbg !3198
  br i1 %12, label %34, label %13, !dbg !3199

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3200
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3179, metadata !DIExpression()), !dbg !3201
  %15 = icmp eq i32 %0, 2147483647, !dbg !3202
  br i1 %15, label %16, label %17, !dbg !3204

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3205
  unreachable, !dbg !3205

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3206
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3206
  %20 = add nsw i32 %0, 1, !dbg !3207
  %21 = sext i32 %20 to i64, !dbg !3208
  %22 = shl nsw i64 %21, 4, !dbg !3209
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3210
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3175, metadata !DIExpression()), !dbg !3192
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3211, !tbaa !934
  br i1 %14, label %25, label %26, !dbg !3212

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3213, !tbaa.struct !3215
  br label %26, !dbg !3216

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3217, !tbaa !1041
  %28 = sext i32 %27 to i64, !dbg !3218
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3218
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3219
  %31 = sub nsw i32 %20, %27, !dbg !3220
  %32 = sext i32 %31 to i64, !dbg !3221
  %33 = shl nsw i64 %32, 4, !dbg !3222
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3219
  store i32 %20, i32* @nslots, align 4, !dbg !3223, !tbaa !1041
  br label %34, !dbg !3224

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3225
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3175, metadata !DIExpression()), !dbg !3192
  %36 = sext i32 %0 to i64, !dbg !3226
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3227
  %38 = load i64, i64* %37, align 8, !dbg !3227, !tbaa !3143
  call void @llvm.dbg.value(metadata i64 %38, metadata !3180, metadata !DIExpression()), !dbg !3228
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3229
  %40 = load i8*, i8** %39, align 8, !dbg !3229, !tbaa !3130
  call void @llvm.dbg.value(metadata i8* %40, metadata !3182, metadata !DIExpression()), !dbg !3230
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3231
  %42 = load i32, i32* %41, align 4, !dbg !3231, !tbaa !2135
  %43 = or i32 %42, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i32 %43, metadata !3183, metadata !DIExpression()), !dbg !3233
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3234
  %45 = load i32, i32* %44, align 8, !dbg !3234, !tbaa !2076
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3235
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3236
  %48 = load i8*, i8** %47, align 8, !dbg !3236, !tbaa !2161
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3237
  %50 = load i8*, i8** %49, align 8, !dbg !3237, !tbaa !2164
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %51, metadata !3184, metadata !DIExpression()), !dbg !3239
  %52 = icmp ugt i64 %38, %51, !dbg !3240
  br i1 %52, label %63, label %53, !dbg !3242

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %54, metadata !3180, metadata !DIExpression()), !dbg !3228
  store i64 %54, i64* %37, align 8, !dbg !3245, !tbaa !3143
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3246
  br i1 %55, label %57, label %56, !dbg !3248

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3249
  br label %57, !dbg !3249

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3069, metadata !DIExpression()) #11, !dbg !3250
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %58, metadata !3182, metadata !DIExpression()), !dbg !3230
  store i8* %58, i8** %39, align 8, !dbg !3253, !tbaa !3130
  %59 = load i32, i32* %44, align 8, !dbg !3254, !tbaa !2076
  %60 = load i8*, i8** %47, align 8, !dbg !3255, !tbaa !2161
  %61 = load i8*, i8** %49, align 8, !dbg !3256, !tbaa !2164
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3257
  br label %63, !dbg !3258

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3259
  call void @llvm.dbg.value(metadata i8* %64, metadata !3182, metadata !DIExpression()), !dbg !3230
  store i32 %6, i32* %5, align 4, !dbg !3260, !tbaa !1041
  ret i8* %64, !dbg !3261
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8* %1, metadata !3267, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !3268, metadata !DIExpression()), !dbg !3271
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3272
  ret i8* %4, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 0, metadata !3160, metadata !DIExpression()) #11, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %0, metadata !3161, metadata !DIExpression()) #11, !dbg !3280
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3281
  ret i8* %2, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3266, metadata !DIExpression()) #11, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3267, metadata !DIExpression()) #11, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3268, metadata !DIExpression()) #11, !dbg !3294
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3295
  ret i8* %3, !dbg !3296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3297 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %1, metadata !3302, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8* %2, metadata !3303, metadata !DIExpression()), !dbg !3307
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3308
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3304, metadata !DIExpression(DW_OP_deref)), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %1, metadata !3310, metadata !DIExpression()) #11, !dbg !3316
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3318, !alias.scope !3319
  %6 = icmp eq i32 %1, 10, !dbg !3322
  br i1 %6, label %7, label %8, !dbg !3324

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3325, !noalias !3319
  unreachable, !dbg !3325

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3326
  store i32 %1, i32* %9, align 8, !dbg !3327, !tbaa !2076, !alias.scope !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3304, metadata !DIExpression(DW_OP_deref)), !dbg !3309
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3315, metadata !DIExpression(DW_OP_deref)), !dbg !3318
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3329
  ret i8* %10, !dbg !3330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3331 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %1, metadata !3336, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %2, metadata !3337, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !3338, metadata !DIExpression()), !dbg !3343
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3339, metadata !DIExpression(DW_OP_deref)), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %1, metadata !3310, metadata !DIExpression()) #11, !dbg !3346
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3348, !alias.scope !3349
  %7 = icmp eq i32 %1, 10, !dbg !3352
  br i1 %7, label %8, label %9, !dbg !3353

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3354, !noalias !3349
  unreachable, !dbg !3354

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3355
  store i32 %1, i32* %10, align 8, !dbg !3356, !tbaa !2076, !alias.scope !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3339, metadata !DIExpression(DW_OP_deref)), !dbg !3345
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3315, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3358
  ret i8* %11, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3360 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 0, metadata !3301, metadata !DIExpression()) #11, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %0, metadata !3302, metadata !DIExpression()) #11, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %1, metadata !3303, metadata !DIExpression()) #11, !dbg !3371
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3372
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3304, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %0, metadata !3310, metadata !DIExpression()) #11, !dbg !3374
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3376, !alias.scope !3377
  %5 = icmp eq i32 %0, 10, !dbg !3380
  br i1 %5, label %6, label %7, !dbg !3381

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3382, !noalias !3377
  unreachable, !dbg !3382

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3383
  store i32 %0, i32* %8, align 8, !dbg !3384, !tbaa !2076, !alias.scope !3377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3304, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3315, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3376
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3385
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3386
  ret i8* %9, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3388 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %1, metadata !3393, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %2, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()) #11, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()) #11, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %1, metadata !3337, metadata !DIExpression()) #11, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %2, metadata !3338, metadata !DIExpression()) #11, !dbg !3402
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3403
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3339, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %0, metadata !3310, metadata !DIExpression()) #11, !dbg !3405
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3407, !alias.scope !3408
  %6 = icmp eq i32 %0, 10, !dbg !3411
  br i1 %6, label %7, label %8, !dbg !3412

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3413, !noalias !3408
  unreachable, !dbg !3413

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3414
  store i32 %0, i32* %9, align 8, !dbg !3415, !tbaa !2076, !alias.scope !3408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3339, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3315, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3407
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3417
  ret i8* %10, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3419 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8 %2, metadata !3425, metadata !DIExpression()), !dbg !3429
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3431, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3426, metadata !DIExpression(DW_OP_deref)), !dbg !3433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2095, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8 %2, metadata !2096, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 1, metadata !2097, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 %2, metadata !2098, metadata !DIExpression()), !dbg !3438
  %6 = lshr i8 %2, 5, !dbg !3439
  %7 = zext i8 %6 to i64, !dbg !3439
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3440
  call void @llvm.dbg.value(metadata i32* %8, metadata !2099, metadata !DIExpression()), !dbg !3441
  %9 = and i8 %2, 31, !dbg !3442
  %10 = zext i8 %9 to i32, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %10, metadata !2101, metadata !DIExpression()), !dbg !3443
  %11 = load i32, i32* %8, align 4, !dbg !3444, !tbaa !1041
  %12 = lshr i32 %11, %10, !dbg !3445
  %13 = and i32 %12, 1, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %13, metadata !2102, metadata !DIExpression()), !dbg !3447
  %14 = xor i32 %13, 1, !dbg !3448
  %15 = shl i32 %14, %10, !dbg !3449
  %16 = xor i32 %15, %11, !dbg !3450
  store i32 %16, i32* %8, align 4, !dbg !3450, !tbaa !1041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3426, metadata !DIExpression(DW_OP_deref)), !dbg !3433
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3451
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3452
  ret i8* %17, !dbg !3453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3454 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8 %1, metadata !3459, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()) #11, !dbg !3462
  call void @llvm.dbg.value(metadata i64 -1, metadata !3424, metadata !DIExpression()) #11, !dbg !3464
  call void @llvm.dbg.value(metadata i8 %1, metadata !3425, metadata !DIExpression()) #11, !dbg !3465
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3467, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2095, metadata !DIExpression()) #11, !dbg !3469
  call void @llvm.dbg.value(metadata i8 %1, metadata !2096, metadata !DIExpression()) #11, !dbg !3471
  call void @llvm.dbg.value(metadata i32 1, metadata !2097, metadata !DIExpression()) #11, !dbg !3472
  call void @llvm.dbg.value(metadata i8 %1, metadata !2098, metadata !DIExpression()) #11, !dbg !3473
  %5 = lshr i8 %1, 5, !dbg !3474
  %6 = zext i8 %5 to i64, !dbg !3474
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3475
  call void @llvm.dbg.value(metadata i32* %7, metadata !2099, metadata !DIExpression()) #11, !dbg !3476
  %8 = and i8 %1, 31, !dbg !3477
  %9 = zext i8 %8 to i32, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %9, metadata !2101, metadata !DIExpression()) #11, !dbg !3478
  %10 = load i32, i32* %7, align 4, !dbg !3479, !tbaa !1041
  %11 = lshr i32 %10, %9, !dbg !3480
  %12 = and i32 %11, 1, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %12, metadata !2102, metadata !DIExpression()) #11, !dbg !3482
  %13 = xor i32 %12, 1, !dbg !3483
  %14 = shl i32 %13, %9, !dbg !3484
  %15 = xor i32 %14, %10, !dbg !3485
  store i32 %15, i32* %7, align 4, !dbg !3485, !tbaa !1041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3468
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3486
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3487
  ret i8* %16, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3489 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %0, metadata !3458, metadata !DIExpression()) #11, !dbg !3493
  call void @llvm.dbg.value(metadata i8 58, metadata !3459, metadata !DIExpression()) #11, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()) #11, !dbg !3496
  call void @llvm.dbg.value(metadata i64 -1, metadata !3424, metadata !DIExpression()) #11, !dbg !3498
  call void @llvm.dbg.value(metadata i8 58, metadata !3425, metadata !DIExpression()) #11, !dbg !3499
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3500
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3501, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2095, metadata !DIExpression()) #11, !dbg !3503
  call void @llvm.dbg.value(metadata i8 58, metadata !2096, metadata !DIExpression()) #11, !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !2097, metadata !DIExpression()) #11, !dbg !3506
  call void @llvm.dbg.value(metadata i8 58, metadata !2098, metadata !DIExpression()) #11, !dbg !3507
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3508
  call void @llvm.dbg.value(metadata i32* %4, metadata !2099, metadata !DIExpression()) #11, !dbg !3509
  call void @llvm.dbg.value(metadata i32 26, metadata !2101, metadata !DIExpression()) #11, !dbg !3510
  %5 = load i32, i32* %4, align 4, !dbg !3511, !tbaa !1041
  %6 = or i32 %5, 67108864, !dbg !3512
  store i32 %6, i32* %4, align 4, !dbg !3512, !tbaa !1041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3502
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3513
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3514
  ret i8* %7, !dbg !3515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3516 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()) #11, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()) #11, !dbg !3524
  call void @llvm.dbg.value(metadata i8 58, metadata !3425, metadata !DIExpression()) #11, !dbg !3525
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3527, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2095, metadata !DIExpression()) #11, !dbg !3529
  call void @llvm.dbg.value(metadata i8 58, metadata !2096, metadata !DIExpression()) #11, !dbg !3531
  call void @llvm.dbg.value(metadata i32 1, metadata !2097, metadata !DIExpression()) #11, !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2098, metadata !DIExpression()) #11, !dbg !3533
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3534
  call void @llvm.dbg.value(metadata i32* %5, metadata !2099, metadata !DIExpression()) #11, !dbg !3535
  call void @llvm.dbg.value(metadata i32 26, metadata !2101, metadata !DIExpression()) #11, !dbg !3536
  %6 = load i32, i32* %5, align 4, !dbg !3537, !tbaa !1041
  %7 = or i32 %6, 67108864, !dbg !3538
  store i32 %7, i32* %5, align 4, !dbg !3538, !tbaa !1041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3426, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3528
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3539
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3540
  ret i8* %8, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3542 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3315, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3548
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 %1, metadata !3545, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8* %2, metadata !3546, metadata !DIExpression()), !dbg !3552
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3553
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3553
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3554
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %1, metadata !3310, metadata !DIExpression()) #11, !dbg !3555
  call void @llvm.dbg.value(metadata i32 0, metadata !3315, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3548
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3548, !alias.scope !3556
  %8 = icmp eq i32 %1, 10, !dbg !3559
  br i1 %8, label %9, label %10, !dbg !3560

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3561, !noalias !3556
  unreachable, !dbg !3561

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3315, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3548
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3554
  store i32 %1, i32* %11, align 8, !dbg !3554
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3554
  %13 = bitcast i32* %12 to i8*, !dbg !3554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3554
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3547, metadata !DIExpression(DW_OP_deref)), !dbg !3562
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2095, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8 58, metadata !2096, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 1, metadata !2097, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 58, metadata !2098, metadata !DIExpression()), !dbg !3567
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3568
  call void @llvm.dbg.value(metadata i32* %14, metadata !2099, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 26, metadata !2101, metadata !DIExpression()), !dbg !3570
  %15 = load i32, i32* %14, align 4, !dbg !3571, !tbaa !1041
  %16 = or i32 %15, 67108864, !dbg !3572
  store i32 %16, i32* %14, align 4, !dbg !3572, !tbaa !1041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3547, metadata !DIExpression(DW_OP_deref)), !dbg !3562
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3574
  ret i8* %17, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3576 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %2, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %3, metadata !3583, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %0, metadata !3588, metadata !DIExpression()) #11, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #11, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()) #11, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %3, metadata !3595, metadata !DIExpression()) #11, !dbg !3602
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #11, !dbg !3603
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3604
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3605, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()) #11, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2144, metadata !DIExpression()) #11, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %2, metadata !2145, metadata !DIExpression()) #11, !dbg !3610
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()) #11, !dbg !3607
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3611
  store i32 10, i32* %7, align 8, !dbg !3612, !tbaa !2076
  %8 = icmp ne i8* %1, null, !dbg !3613
  %9 = icmp ne i8* %2, null, !dbg !3614
  %10 = and i1 %8, %9, !dbg !3615
  br i1 %10, label %12, label %11, !dbg !3615

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3616
  unreachable, !dbg !3616

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3617
  store i8* %1, i8** %13, align 8, !dbg !3618, !tbaa !2161
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3619
  store i8* %2, i8** %14, align 8, !dbg !3620, !tbaa !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3606
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3622
  ret i8* %15, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3589 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3588, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i8* %3, metadata !3595, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %4, metadata !3596, metadata !DIExpression()), !dbg !3628
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3629
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3630, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3597, metadata !DIExpression(DW_OP_deref)), !dbg !3631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2143, metadata !DIExpression()) #11, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %1, metadata !2144, metadata !DIExpression()) #11, !dbg !3634
  call void @llvm.dbg.value(metadata i8* %2, metadata !2145, metadata !DIExpression()) #11, !dbg !3635
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2143, metadata !DIExpression()) #11, !dbg !3632
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3636
  store i32 10, i32* %8, align 8, !dbg !3637, !tbaa !2076
  %9 = icmp ne i8* %1, null, !dbg !3638
  %10 = icmp ne i8* %2, null, !dbg !3639
  %11 = and i1 %9, %10, !dbg !3640
  br i1 %11, label %13, label %12, !dbg !3640

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3641
  unreachable, !dbg !3641

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3642
  store i8* %1, i8** %14, align 8, !dbg !3643, !tbaa !2161
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3644
  store i8* %2, i8** %15, align 8, !dbg !3645, !tbaa !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3597, metadata !DIExpression(DW_OP_deref)), !dbg !3631
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3647
  ret i8* %16, !dbg !3648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3649 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %2, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()) #11, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %0, metadata !3581, metadata !DIExpression()) #11, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %1, metadata !3582, metadata !DIExpression()) #11, !dbg !3662
  call void @llvm.dbg.value(metadata i8* %2, metadata !3583, metadata !DIExpression()) #11, !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()) #11, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #11, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #11, !dbg !3667
  call void @llvm.dbg.value(metadata i8* %2, metadata !3595, metadata !DIExpression()) #11, !dbg !3668
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #11, !dbg !3669
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3671, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3672
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression()) #11, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %0, metadata !2144, metadata !DIExpression()) #11, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2145, metadata !DIExpression()) #11, !dbg !3676
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression()) #11, !dbg !3673
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3677
  store i32 10, i32* %6, align 8, !dbg !3678, !tbaa !2076
  %7 = icmp ne i8* %0, null, !dbg !3679
  %8 = icmp ne i8* %1, null, !dbg !3680
  %9 = and i1 %7, %8, !dbg !3681
  br i1 %9, label %11, label %10, !dbg !3681

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3682
  unreachable, !dbg !3682

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3683
  store i8* %0, i8** %12, align 8, !dbg !3684, !tbaa !2161
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3685
  store i8* %1, i8** %13, align 8, !dbg !3686, !tbaa !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3672
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3688
  ret i8* %14, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3690 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3694, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !3695, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %3, metadata !3697, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()) #11, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #11, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #11, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %2, metadata !3595, metadata !DIExpression()) #11, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %3, metadata !3596, metadata !DIExpression()) #11, !dbg !3707
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3708
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3709, !tbaa.struct !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()) #11, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %0, metadata !2144, metadata !DIExpression()) #11, !dbg !3713
  call void @llvm.dbg.value(metadata i8* %1, metadata !2145, metadata !DIExpression()) #11, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()) #11, !dbg !3711
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3715
  store i32 10, i32* %7, align 8, !dbg !3716, !tbaa !2076
  %8 = icmp ne i8* %0, null, !dbg !3717
  %9 = icmp ne i8* %1, null, !dbg !3718
  %10 = and i1 %8, %9, !dbg !3719
  br i1 %10, label %12, label %11, !dbg !3719

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3720
  unreachable, !dbg !3720

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3721
  store i8* %0, i8** %13, align 8, !dbg !3722, !tbaa !2161
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3723
  store i8* %1, i8** %14, align 8, !dbg !3724, !tbaa !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3710
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3725
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3726
  ret i8* %15, !dbg !3727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %2, metadata !3734, metadata !DIExpression()), !dbg !3737
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3738
  ret i8* %4, !dbg !3739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i64 %1, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32 0, metadata !3732, metadata !DIExpression()) #11, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3733, metadata !DIExpression()) #11, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()) #11, !dbg !3751
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3752
  ret i8* %3, !dbg !3753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %1, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()) #11, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()) #11, !dbg !3764
  call void @llvm.dbg.value(metadata i64 -1, metadata !3734, metadata !DIExpression()) #11, !dbg !3765
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3766
  ret i8* %3, !dbg !3767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()) #11, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()) #11, !dbg !3776
  call void @llvm.dbg.value(metadata i32 0, metadata !3732, metadata !DIExpression()) #11, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !3733, metadata !DIExpression()) #11, !dbg !3779
  call void @llvm.dbg.value(metadata i64 -1, metadata !3734, metadata !DIExpression()) #11, !dbg !3780
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3781
  ret i8* %2, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3783 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3837, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i8* %1, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8* %2, metadata !3839, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8* %3, metadata !3840, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i8** %4, metadata !3841, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %5, metadata !3842, metadata !DIExpression()), !dbg !3848
  %7 = icmp eq i8* %1, null, !dbg !3849
  br i1 %7, label %10, label %8, !dbg !3851

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3852
  br label %12, !dbg !3852

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.142, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3853
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.143, i64 0, i64 0), i32 5) #11, !dbg !3854
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3854
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.144, i64 0, i64 0), i32 5) #11, !dbg !3855
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3855
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
  ], !dbg !3856

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3857
  unreachable, !dbg !3857

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.145, i64 0, i64 0), i32 5) #11, !dbg !3859
  %20 = load i8*, i8** %4, align 8, !dbg !3859, !tbaa !934
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3859
  br label %146, !dbg !3860

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.146, i64 0, i64 0), i32 5) #11, !dbg !3861
  %24 = load i8*, i8** %4, align 8, !dbg !3861, !tbaa !934
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3861
  %26 = load i8*, i8** %25, align 8, !dbg !3861, !tbaa !934
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3861
  br label %146, !dbg !3862

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.147, i64 0, i64 0), i32 5) #11, !dbg !3863
  %30 = load i8*, i8** %4, align 8, !dbg !3863, !tbaa !934
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3863
  %32 = load i8*, i8** %31, align 8, !dbg !3863, !tbaa !934
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3863
  %34 = load i8*, i8** %33, align 8, !dbg !3863, !tbaa !934
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3863
  br label %146, !dbg !3864

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.148, i64 0, i64 0), i32 5) #11, !dbg !3865
  %38 = load i8*, i8** %4, align 8, !dbg !3865, !tbaa !934
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3865
  %40 = load i8*, i8** %39, align 8, !dbg !3865, !tbaa !934
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3865
  %42 = load i8*, i8** %41, align 8, !dbg !3865, !tbaa !934
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3865
  %44 = load i8*, i8** %43, align 8, !dbg !3865, !tbaa !934
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3865
  br label %146, !dbg !3866

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.149, i64 0, i64 0), i32 5) #11, !dbg !3867
  %48 = load i8*, i8** %4, align 8, !dbg !3867, !tbaa !934
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3867
  %50 = load i8*, i8** %49, align 8, !dbg !3867, !tbaa !934
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3867
  %52 = load i8*, i8** %51, align 8, !dbg !3867, !tbaa !934
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3867
  %54 = load i8*, i8** %53, align 8, !dbg !3867, !tbaa !934
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3867
  %56 = load i8*, i8** %55, align 8, !dbg !3867, !tbaa !934
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3867
  br label %146, !dbg !3868

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.150, i64 0, i64 0), i32 5) #11, !dbg !3869
  %60 = load i8*, i8** %4, align 8, !dbg !3869, !tbaa !934
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3869
  %62 = load i8*, i8** %61, align 8, !dbg !3869, !tbaa !934
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3869
  %64 = load i8*, i8** %63, align 8, !dbg !3869, !tbaa !934
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3869
  %66 = load i8*, i8** %65, align 8, !dbg !3869, !tbaa !934
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3869
  %68 = load i8*, i8** %67, align 8, !dbg !3869, !tbaa !934
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3869
  %70 = load i8*, i8** %69, align 8, !dbg !3869, !tbaa !934
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3869
  br label %146, !dbg !3870

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.151, i64 0, i64 0), i32 5) #11, !dbg !3871
  %74 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !934
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3871
  %76 = load i8*, i8** %75, align 8, !dbg !3871, !tbaa !934
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3871
  %78 = load i8*, i8** %77, align 8, !dbg !3871, !tbaa !934
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3871
  %80 = load i8*, i8** %79, align 8, !dbg !3871, !tbaa !934
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3871
  %82 = load i8*, i8** %81, align 8, !dbg !3871, !tbaa !934
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3871
  %84 = load i8*, i8** %83, align 8, !dbg !3871, !tbaa !934
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3871
  %86 = load i8*, i8** %85, align 8, !dbg !3871, !tbaa !934
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3871
  br label %146, !dbg !3872

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.152, i64 0, i64 0), i32 5) #11, !dbg !3873
  %90 = load i8*, i8** %4, align 8, !dbg !3873, !tbaa !934
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3873
  %92 = load i8*, i8** %91, align 8, !dbg !3873, !tbaa !934
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3873
  %94 = load i8*, i8** %93, align 8, !dbg !3873, !tbaa !934
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3873
  %96 = load i8*, i8** %95, align 8, !dbg !3873, !tbaa !934
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3873
  %98 = load i8*, i8** %97, align 8, !dbg !3873, !tbaa !934
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3873
  %100 = load i8*, i8** %99, align 8, !dbg !3873, !tbaa !934
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3873
  %102 = load i8*, i8** %101, align 8, !dbg !3873, !tbaa !934
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3873
  %104 = load i8*, i8** %103, align 8, !dbg !3873, !tbaa !934
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3873
  br label %146, !dbg !3874

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.153, i64 0, i64 0), i32 5) #11, !dbg !3875
  %108 = load i8*, i8** %4, align 8, !dbg !3875, !tbaa !934
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3875
  %110 = load i8*, i8** %109, align 8, !dbg !3875, !tbaa !934
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3875
  %112 = load i8*, i8** %111, align 8, !dbg !3875, !tbaa !934
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3875
  %114 = load i8*, i8** %113, align 8, !dbg !3875, !tbaa !934
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3875
  %116 = load i8*, i8** %115, align 8, !dbg !3875, !tbaa !934
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3875
  %118 = load i8*, i8** %117, align 8, !dbg !3875, !tbaa !934
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3875
  %120 = load i8*, i8** %119, align 8, !dbg !3875, !tbaa !934
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3875
  %122 = load i8*, i8** %121, align 8, !dbg !3875, !tbaa !934
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3875
  %124 = load i8*, i8** %123, align 8, !dbg !3875, !tbaa !934
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3875
  br label %146, !dbg !3876

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.154, i64 0, i64 0), i32 5) #11, !dbg !3877
  %128 = load i8*, i8** %4, align 8, !dbg !3877, !tbaa !934
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3877
  %130 = load i8*, i8** %129, align 8, !dbg !3877, !tbaa !934
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3877
  %132 = load i8*, i8** %131, align 8, !dbg !3877, !tbaa !934
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3877
  %134 = load i8*, i8** %133, align 8, !dbg !3877, !tbaa !934
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3877
  %136 = load i8*, i8** %135, align 8, !dbg !3877, !tbaa !934
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3877
  %138 = load i8*, i8** %137, align 8, !dbg !3877, !tbaa !934
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3877
  %140 = load i8*, i8** %139, align 8, !dbg !3877, !tbaa !934
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3877
  %142 = load i8*, i8** %141, align 8, !dbg !3877, !tbaa !934
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3877
  %144 = load i8*, i8** %143, align 8, !dbg !3877, !tbaa !934
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3877
  br label %146, !dbg !3878

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3880 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3884, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8* %1, metadata !3885, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8* %2, metadata !3886, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %3, metadata !3887, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8** %4, metadata !3888, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 0, metadata !3889, metadata !DIExpression()), !dbg !3895
  br label %6, !dbg !3896

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3900
  %9 = load i8*, i8** %8, align 8, !dbg !3900, !tbaa !934
  %10 = icmp eq i8* %9, null, !dbg !3901
  %11 = add i64 %7, 1, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %11, metadata !3889, metadata !DIExpression()), !dbg !3895
  br i1 %10, label %12, label %6, !dbg !3901, !llvm.loop !3903

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %7, metadata !3889, metadata !DIExpression()), !dbg !3895
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3905
  ret void, !dbg !3906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3907 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3918, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i8* %1, metadata !3919, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %2, metadata !3920, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %3, metadata !3921, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3922, metadata !DIExpression()), !dbg !3930
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3931
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3924, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 0, metadata !3923, metadata !DIExpression()), !dbg !3933
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3923, metadata !DIExpression()), !dbg !3933
  %11 = load i32, i32* %8, align 8, !dbg !3934
  %12 = icmp ult i32 %11, 41, !dbg !3934
  br i1 %12, label %13, label %18, !dbg !3934

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3934
  %15 = sext i32 %11 to i64, !dbg !3934
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3934
  %17 = add i32 %11, 8, !dbg !3934
  store i32 %17, i32* %8, align 8, !dbg !3934
  br label %21, !dbg !3934

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3934
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3934
  store i8* %20, i8** %10, align 8, !dbg !3934
  br label %21, !dbg !3934

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3934
  %25 = load i8*, i8** %24, align 8, !dbg !3934
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3937
  store i8* %25, i8** %26, align 16, !dbg !3938, !tbaa !934
  %27 = icmp eq i8* %25, null, !dbg !3939
  br i1 %27, label %30, label %28, !dbg !3940

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 1, metadata !3923, metadata !DIExpression()), !dbg !3933
  %29 = icmp ult i32 %22, 41, !dbg !3934
  br i1 %29, label %35, label %32, !dbg !3934

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3941
  call void @llvm.dbg.value(metadata i64 %31, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %31, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3942
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3943
  ret void, !dbg !3943

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3934
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3934
  store i8* %34, i8** %10, align 8, !dbg !3934
  br label %40, !dbg !3934

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3934
  %37 = sext i32 %22 to i64, !dbg !3934
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3934
  %39 = add i32 %22, 8, !dbg !3934
  store i32 %39, i32* %8, align 8, !dbg !3934
  br label %40, !dbg !3934

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3934
  %44 = load i8*, i8** %43, align 8, !dbg !3934
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3937
  store i8* %44, i8** %45, align 8, !dbg !3938, !tbaa !934
  %46 = icmp eq i8* %44, null, !dbg !3939
  br i1 %46, label %30, label %47, !dbg !3940

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 2, metadata !3923, metadata !DIExpression()), !dbg !3933
  %48 = icmp ult i32 %41, 41, !dbg !3934
  br i1 %48, label %52, label %49, !dbg !3934

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3934
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3934
  store i8* %51, i8** %10, align 8, !dbg !3934
  br label %57, !dbg !3934

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3934
  %54 = sext i32 %41 to i64, !dbg !3934
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3934
  %56 = add i32 %41, 8, !dbg !3934
  store i32 %56, i32* %8, align 8, !dbg !3934
  br label %57, !dbg !3934

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3934
  %61 = load i8*, i8** %60, align 8, !dbg !3934
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3937
  store i8* %61, i8** %62, align 16, !dbg !3938, !tbaa !934
  %63 = icmp eq i8* %61, null, !dbg !3939
  br i1 %63, label %30, label %64, !dbg !3940

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 3, metadata !3923, metadata !DIExpression()), !dbg !3933
  %65 = icmp ult i32 %58, 41, !dbg !3934
  br i1 %65, label %69, label %66, !dbg !3934

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3934
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3934
  store i8* %68, i8** %10, align 8, !dbg !3934
  br label %74, !dbg !3934

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3934
  %71 = sext i32 %58 to i64, !dbg !3934
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3934
  %73 = add i32 %58, 8, !dbg !3934
  store i32 %73, i32* %8, align 8, !dbg !3934
  br label %74, !dbg !3934

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3934
  %78 = load i8*, i8** %77, align 8, !dbg !3934
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3937
  store i8* %78, i8** %79, align 8, !dbg !3938, !tbaa !934
  %80 = icmp eq i8* %78, null, !dbg !3939
  br i1 %80, label %30, label %81, !dbg !3940

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 4, metadata !3923, metadata !DIExpression()), !dbg !3933
  %82 = icmp ult i32 %75, 41, !dbg !3934
  br i1 %82, label %86, label %83, !dbg !3934

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3934
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3934
  store i8* %85, i8** %10, align 8, !dbg !3934
  br label %91, !dbg !3934

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3934
  %88 = sext i32 %75 to i64, !dbg !3934
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3934
  %90 = add i32 %75, 8, !dbg !3934
  store i32 %90, i32* %8, align 8, !dbg !3934
  br label %91, !dbg !3934

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3934
  %95 = load i8*, i8** %94, align 8, !dbg !3934
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3937
  store i8* %95, i8** %96, align 16, !dbg !3938, !tbaa !934
  %97 = icmp eq i8* %95, null, !dbg !3939
  br i1 %97, label %30, label %98, !dbg !3940

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 5, metadata !3923, metadata !DIExpression()), !dbg !3933
  %99 = icmp ult i32 %92, 41, !dbg !3934
  br i1 %99, label %103, label %100, !dbg !3934

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3934
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3934
  store i8* %102, i8** %10, align 8, !dbg !3934
  br label %108, !dbg !3934

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3934
  %105 = sext i32 %92 to i64, !dbg !3934
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3934
  %107 = add i32 %92, 8, !dbg !3934
  store i32 %107, i32* %8, align 8, !dbg !3934
  br label %108, !dbg !3934

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3934
  %111 = load i8*, i8** %110, align 8, !dbg !3934
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3937
  store i8* %111, i8** %112, align 8, !dbg !3938, !tbaa !934
  %113 = icmp eq i8* %111, null, !dbg !3939
  br i1 %113, label %30, label %114, !dbg !3940

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 6, metadata !3923, metadata !DIExpression()), !dbg !3933
  %115 = load i8*, i8** %10, align 8, !dbg !3934
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3934
  store i8* %116, i8** %10, align 8, !dbg !3934
  %117 = bitcast i8* %115 to i8**, !dbg !3934
  %118 = load i8*, i8** %117, align 8, !dbg !3934
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3937
  store i8* %118, i8** %119, align 16, !dbg !3938, !tbaa !934
  %120 = icmp eq i8* %118, null, !dbg !3939
  br i1 %120, label %30, label %121, !dbg !3940

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 7, metadata !3923, metadata !DIExpression()), !dbg !3933
  %122 = load i8*, i8** %10, align 8, !dbg !3934
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3934
  store i8* %123, i8** %10, align 8, !dbg !3934
  %124 = bitcast i8* %122 to i8**, !dbg !3934
  %125 = load i8*, i8** %124, align 8, !dbg !3934
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3937
  store i8* %125, i8** %126, align 8, !dbg !3938, !tbaa !934
  %127 = icmp eq i8* %125, null, !dbg !3939
  br i1 %127, label %30, label %128, !dbg !3940

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 8, metadata !3923, metadata !DIExpression()), !dbg !3933
  %129 = load i8*, i8** %10, align 8, !dbg !3934
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3934
  store i8* %130, i8** %10, align 8, !dbg !3934
  %131 = bitcast i8* %129 to i8**, !dbg !3934
  %132 = load i8*, i8** %131, align 8, !dbg !3934
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3937
  store i8* %132, i8** %133, align 16, !dbg !3938, !tbaa !934
  %134 = icmp eq i8* %132, null, !dbg !3939
  br i1 %134, label %30, label %135, !dbg !3940

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 9, metadata !3923, metadata !DIExpression()), !dbg !3933
  %136 = load i8*, i8** %10, align 8, !dbg !3934
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3934
  store i8* %137, i8** %10, align 8, !dbg !3934
  %138 = bitcast i8* %136 to i8**, !dbg !3934
  %139 = load i8*, i8** %138, align 8, !dbg !3934
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3937
  store i8* %139, i8** %140, align 8, !dbg !3938, !tbaa !934
  %141 = icmp eq i8* %139, null, !dbg !3939
  %142 = select i1 %141, i64 9, i64 10, !dbg !3940
  br label %30, !dbg !3940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3944 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3948, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i8* %1, metadata !3949, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %2, metadata !3950, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i8* %3, metadata !3951, metadata !DIExpression()), !dbg !3962
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3963
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3963
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3952, metadata !DIExpression()), !dbg !3964
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3965
  call void @llvm.va_start(i8* nonnull %6), !dbg !3965
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3966
  call void @llvm.va_end(i8* nonnull %6), !dbg !3967
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3968
  ret void, !dbg !3968
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3969 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.157, i64 0, i64 0), i32 5) #11, !dbg !3970
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.158, i64 0, i64 0)) #11, !dbg !3970
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.159, i64 0, i64 0), i32 5) #11, !dbg !3971
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.160, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.161, i64 0, i64 0)) #11, !dbg !3971
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.162, i64 0, i64 0), i32 5) #11, !dbg !3972
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3972, !tbaa !934
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3972
  ret void, !dbg !3973
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3978, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %1, metadata !3979, metadata !DIExpression()), !dbg !3981
  %3 = udiv i64 9223372036854775807, %1, !dbg !3982
  %4 = icmp ult i64 %3, %0, !dbg !3982
  br i1 %4, label %5, label %6, !dbg !3984

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3985
  unreachable, !dbg !3985

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %7, metadata !3987, metadata !DIExpression()) #11, !dbg !3994
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %8, metadata !3993, metadata !DIExpression()) #11, !dbg !3997
  %9 = icmp eq i8* %8, null, !dbg !3998
  %10 = icmp ne i64 %7, 0, !dbg !4000
  %11 = and i1 %10, %9, !dbg !4001
  br i1 %11, label %12, label %13, !dbg !4001

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4002
  unreachable, !dbg !4002

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4003
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3988 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3987, metadata !DIExpression()), !dbg !4004
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4005
  call void @llvm.dbg.value(metadata i8* %2, metadata !3993, metadata !DIExpression()), !dbg !4006
  %3 = icmp eq i8* %2, null, !dbg !4007
  %4 = icmp ne i64 %0, 0, !dbg !4008
  %5 = and i1 %4, %3, !dbg !4009
  br i1 %5, label %6, label %7, !dbg !4009

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4010
  unreachable, !dbg !4010

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4011
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4016, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %2, metadata !4018, metadata !DIExpression()), !dbg !4021
  %4 = udiv i64 9223372036854775807, %2, !dbg !4022
  %5 = icmp ult i64 %4, %1, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4024

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4025
  unreachable, !dbg !4025

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4026
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #11, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %8, metadata !4032, metadata !DIExpression()) #11, !dbg !4035
  %9 = icmp eq i64 %8, 0, !dbg !4036
  %10 = icmp ne i8* %0, null, !dbg !4038
  %11 = and i1 %10, %9, !dbg !4039
  br i1 %11, label %12, label %13, !dbg !4039

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4040
  br label %19, !dbg !4042

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %14, metadata !4027, metadata !DIExpression()) #11, !dbg !4033
  %15 = icmp eq i8* %14, null, !dbg !4044
  %16 = icmp ne i64 %8, 0, !dbg !4046
  %17 = and i1 %16, %15, !dbg !4047
  br i1 %17, label %18, label %19, !dbg !4047

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4048
  unreachable, !dbg !4048

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4049
  ret i8* %20, !dbg !4050
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4032, metadata !DIExpression()), !dbg !4052
  %3 = icmp eq i64 %1, 0, !dbg !4053
  %4 = icmp ne i8* %0, null, !dbg !4054
  %5 = and i1 %4, %3, !dbg !4055
  br i1 %5, label %6, label %7, !dbg !4055

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4056
  br label %13, !dbg !4057

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %8, metadata !4027, metadata !DIExpression()), !dbg !4051
  %9 = icmp eq i8* %8, null, !dbg !4059
  %10 = icmp ne i64 %1, 0, !dbg !4060
  %11 = and i1 %10, %9, !dbg !4061
  br i1 %11, label %12, label %13, !dbg !4061

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4062
  unreachable, !dbg !4062

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4063
  ret i8* %14, !dbg !4064
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !475, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64* %1, metadata !476, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %2, metadata !477, metadata !DIExpression()), !dbg !4067
  %4 = load i64, i64* %1, align 8, !dbg !4068, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %4, metadata !478, metadata !DIExpression()), !dbg !4069
  %5 = icmp eq i8* %0, null, !dbg !4070
  br i1 %5, label %6, label %20, !dbg !4072

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4073
  br i1 %7, label %8, label %13, !dbg !4076

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %9, metadata !478, metadata !DIExpression()), !dbg !4069
  %10 = icmp ugt i64 %2, 128, !dbg !4079
  %11 = zext i1 %10 to i64, !dbg !4079
  %12 = add nuw nsw i64 %9, %11, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %12, metadata !478, metadata !DIExpression()), !dbg !4069
  br label %13, !dbg !4081

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4082
  call void @llvm.dbg.value(metadata i64 %14, metadata !478, metadata !DIExpression()), !dbg !4069
  %15 = udiv i64 9223372036854775807, %2, !dbg !4083
  %16 = icmp ult i64 %15, %14, !dbg !4083
  br i1 %16, label %19, label %17, !dbg !4085

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !478, metadata !DIExpression()), !dbg !4069
  store i64 %14, i64* %1, align 8, !dbg !4086, !tbaa !1123
  %18 = mul i64 %14, %2, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #11, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %28, metadata !4032, metadata !DIExpression()) #11, !dbg !4090
  br label %31, !dbg !4091

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4092
  unreachable, !dbg !4092

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4093
  %22 = icmp ugt i64 %21, %4, !dbg !4096
  br i1 %22, label %24, label %23, !dbg !4097

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4098
  unreachable, !dbg !4098

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4099
  %26 = add i64 %4, 1, !dbg !4100
  %27 = add i64 %26, %25, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %27, metadata !478, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %27, metadata !478, metadata !DIExpression()), !dbg !4069
  store i64 %27, i64* %1, align 8, !dbg !4086, !tbaa !1123
  %28 = mul i64 %27, %2, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #11, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %28, metadata !4032, metadata !DIExpression()) #11, !dbg !4090
  %29 = icmp eq i64 %28, 0, !dbg !4102
  br i1 %29, label %30, label %31, !dbg !4091

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !4103
  br label %38, !dbg !4104

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %33, metadata !4027, metadata !DIExpression()) #11, !dbg !4088
  %34 = icmp eq i8* %33, null, !dbg !4106
  %35 = icmp ne i64 %32, 0, !dbg !4107
  %36 = and i1 %35, %34, !dbg !4108
  br i1 %36, label %37, label %38, !dbg !4108

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4109
  unreachable, !dbg !4109

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4110
  ret i8* %39, !dbg !4111
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4112 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %0, metadata !3987, metadata !DIExpression()) #11, !dbg !4116
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %2, metadata !3993, metadata !DIExpression()) #11, !dbg !4119
  %3 = icmp eq i8* %2, null, !dbg !4120
  %4 = icmp ne i64 %0, 0, !dbg !4121
  %5 = and i1 %4, %3, !dbg !4122
  br i1 %5, label %6, label %7, !dbg !4122

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4123
  unreachable, !dbg !4123

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4129, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64* %1, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i8* %0, metadata !475, metadata !DIExpression()) #11, !dbg !4133
  call void @llvm.dbg.value(metadata i64* %1, metadata !476, metadata !DIExpression()) #11, !dbg !4135
  call void @llvm.dbg.value(metadata i64 1, metadata !477, metadata !DIExpression()) #11, !dbg !4136
  %3 = load i64, i64* %1, align 8, !dbg !4137, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %3, metadata !478, metadata !DIExpression()) #11, !dbg !4138
  %4 = icmp eq i8* %0, null, !dbg !4139
  br i1 %4, label %5, label %12, !dbg !4140

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4141
  br i1 %6, label %9, label %7, !dbg !4142

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !478, metadata !DIExpression()) #11, !dbg !4138
  %8 = icmp slt i64 %3, 0, !dbg !4143
  br i1 %8, label %11, label %9, !dbg !4144

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !478, metadata !DIExpression()) #11, !dbg !4138
  store i64 %10, i64* %1, align 8, !dbg !4145, !tbaa !1123
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #11, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %18, metadata !4032, metadata !DIExpression()) #11, !dbg !4148
  br label %21, !dbg !4149

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4150
  unreachable, !dbg !4150

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4151
  br i1 %13, label %15, label %14, !dbg !4152

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4153
  unreachable, !dbg !4153

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4154
  %17 = add i64 %3, 1, !dbg !4155
  %18 = add i64 %17, %16, !dbg !4156
  call void @llvm.dbg.value(metadata i64 %18, metadata !478, metadata !DIExpression()) #11, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %18, metadata !478, metadata !DIExpression()) #11, !dbg !4138
  store i64 %18, i64* %1, align 8, !dbg !4145, !tbaa !1123
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #11, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %18, metadata !4032, metadata !DIExpression()) #11, !dbg !4148
  %19 = icmp eq i64 %18, 0, !dbg !4157
  br i1 %19, label %20, label %21, !dbg !4149

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !4158
  br label %28, !dbg !4159

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !4160
  call void @llvm.dbg.value(metadata i8* %23, metadata !4027, metadata !DIExpression()) #11, !dbg !4146
  %24 = icmp eq i8* %23, null, !dbg !4161
  %25 = icmp ne i64 %22, 0, !dbg !4162
  %26 = and i1 %25, %24, !dbg !4163
  br i1 %26, label %27, label %28, !dbg !4163

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4164
  unreachable, !dbg !4164

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4165
  ret i8* %29, !dbg !4166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4167 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %0, metadata !3987, metadata !DIExpression()) #11, !dbg !4171
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4173
  call void @llvm.dbg.value(metadata i8* %2, metadata !3993, metadata !DIExpression()) #11, !dbg !4174
  %3 = icmp eq i8* %2, null, !dbg !4175
  %4 = icmp ne i64 %0, 0, !dbg !4176
  %5 = and i1 %4, %3, !dbg !4177
  br i1 %5, label %6, label %7, !dbg !4177

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4178
  unreachable, !dbg !4178

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4179
  ret i8* %2, !dbg !4180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4181 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4187
  %3 = udiv i64 9223372036854775807, %1, !dbg !4188
  %4 = icmp ult i64 %3, %0, !dbg !4188
  br i1 %4, label %8, label %5, !dbg !4190

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %6, metadata !4185, metadata !DIExpression()), !dbg !4192
  %7 = icmp eq i8* %6, null, !dbg !4193
  br i1 %7, label %8, label %9, !dbg !4194

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4195
  unreachable, !dbg !4195

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4203, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3987, metadata !DIExpression()) #11, !dbg !4207
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %3, metadata !3993, metadata !DIExpression()) #11, !dbg !4210
  %4 = icmp eq i8* %3, null, !dbg !4211
  %5 = icmp ne i64 %1, 0, !dbg !4212
  %6 = and i1 %5, %4, !dbg !4213
  br i1 %6, label %7, label %8, !dbg !4213

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4214
  unreachable, !dbg !4214

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4215
  ret i8* %3, !dbg !4216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4219, metadata !DIExpression()), !dbg !4220
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4221
  %3 = add i64 %2, 1, !dbg !4222
  call void @llvm.dbg.value(metadata i8* %0, metadata !4203, metadata !DIExpression()) #11, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %3, metadata !4204, metadata !DIExpression()) #11, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %3, metadata !3987, metadata !DIExpression()) #11, !dbg !4226
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %4, metadata !3993, metadata !DIExpression()) #11, !dbg !4229
  %5 = icmp eq i8* %4, null, !dbg !4230
  %6 = icmp ne i64 %3, 0, !dbg !4231
  %7 = and i1 %6, %5, !dbg !4232
  br i1 %7, label %8, label %9, !dbg !4232

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4233
  unreachable, !dbg !4233

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4234
  ret i8* %4, !dbg !4235
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4236 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4238, !tbaa !1041
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.173, i64 0, i64 0), i32 5) #11, !dbg !4239
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i64 0, i64 0), i8* %2) #11, !dbg !4240
  tail call void @abort() #15, !dbg !4241
  unreachable, !dbg !4241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4242 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4245, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4246, metadata !DIExpression()), !dbg !4252
  %3 = icmp eq i64 %0, 0, !dbg !4253
  %4 = icmp eq i64 %1, 0, !dbg !4254
  %5 = or i1 %3, %4, !dbg !4255
  br i1 %5, label %12, label %6, !dbg !4255

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4256
  call void @llvm.dbg.value(metadata i64 %7, metadata !4248, metadata !DIExpression()), !dbg !4257
  %8 = udiv i64 %7, %1, !dbg !4258
  %9 = icmp eq i64 %8, %0, !dbg !4260
  br i1 %9, label %12, label %10, !dbg !4261

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4262
  store i32 12, i32* %11, align 4, !dbg !4264, !tbaa !1041
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4245, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %13, metadata !4246, metadata !DIExpression()), !dbg !4252
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %15, metadata !4247, metadata !DIExpression()), !dbg !4266
  br label %16, !dbg !4267

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4268
  ret i8* %17, !dbg !4269
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4270 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4287, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i8* %1, metadata !4288, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %2, metadata !4289, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4290, metadata !DIExpression()), !dbg !4299
  %6 = bitcast i32* %5 to i8*, !dbg !4300
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4300
  %7 = icmp eq i32* %0, null, !dbg !4301
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4303
  call void @llvm.dbg.value(metadata i32* %8, metadata !4287, metadata !DIExpression()), !dbg !4296
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %9, metadata !4291, metadata !DIExpression()), !dbg !4305
  %10 = icmp ugt i64 %9, -3, !dbg !4306
  %11 = icmp ne i64 %2, 0, !dbg !4307
  %12 = and i1 %11, %10, !dbg !4308
  br i1 %12, label %13, label %18, !dbg !4308

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4309
  br i1 %14, label %18, label %15, !dbg !4310

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4311, !tbaa !1144
  call void @llvm.dbg.value(metadata i8 %16, metadata !4293, metadata !DIExpression()), !dbg !4312
  %17 = zext i8 %16 to i32, !dbg !4313
  store i32 %17, i32* %8, align 4, !dbg !4314, !tbaa !1041
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4316
  ret i64 %19, !dbg !4316
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #7 !dbg !4317 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4346, metadata !DIExpression()), !dbg !4349
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !4350
  call void @llvm.dbg.value(metadata i8* %2, metadata !4348, metadata !DIExpression()), !dbg !4351
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %2, metadata !4353, metadata !DIExpression()) #11, !dbg !4358
  call void @llvm.dbg.value(metadata i8* %3, metadata !4356, metadata !DIExpression()) #11, !dbg !4358
  call void @llvm.dbg.value(metadata i64 32, metadata !4357, metadata !DIExpression()) #11, !dbg !4358
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !4360
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !4361
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4362
  store i8 0, i8* %6, align 1, !dbg !4363, !tbaa !1144
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !4364
  %8 = icmp sgt i64 %7, 0, !dbg !4366
  br i1 %8, label %9, label %18, !dbg !4368

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4369
  call void @llvm.dbg.value(metadata i8* %10, metadata !4347, metadata !DIExpression()), !dbg !4370
  br label %11, !dbg !4371

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %12, metadata !4347, metadata !DIExpression()), !dbg !4370
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4371
  %14 = load i8, i8* %13, align 1, !dbg !4371, !tbaa !1144
  %15 = icmp eq i8 %14, 32, !dbg !4372
  br i1 %15, label %16, label %18, !dbg !4373

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %13, align 1, !dbg !4374, !tbaa !1144
  call void @llvm.dbg.value(metadata i8* %13, metadata !4347, metadata !DIExpression()), !dbg !4370
  %17 = icmp ult i8* %2, %13, !dbg !4366
  br i1 %17, label %11, label %18, !dbg !4368, !llvm.loop !4375

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !4377
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #7 !dbg !4378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4384, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64* %1, metadata !4385, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4386, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata i32 %3, metadata !4387, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 0, metadata !4388, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 0, metadata !4389, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4390, metadata !DIExpression()), !dbg !4398
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !4399
  tail call void @setutxent() #11, !dbg !4400
  call void @llvm.dbg.value(metadata i64 0, metadata !4388, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4390, metadata !DIExpression()), !dbg !4398
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !4401
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4391, metadata !DIExpression()), !dbg !4402
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4403
  br i1 %7, label %79, label %8, !dbg !4404

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4404

; <label>:13:                                     ; preds = %8, %72
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %77, %72 ]
  %15 = phi i64 [ 0, %8 ], [ %76, %72 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %75, %72 ]
  %17 = phi i8* [ null, %8 ], [ %74, %72 ]
  %18 = phi i64 [ 0, %8 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4388, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4390, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4405, metadata !DIExpression()) #11, !dbg !4412
  call void @llvm.dbg.value(metadata i32 %3, metadata !4410, metadata !DIExpression()) #11, !dbg !4415
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4416
  %20 = load i8, i8* %19, align 4, !dbg !4416, !tbaa !1144
  %21 = icmp eq i8 %20, 0, !dbg !4416
  br i1 %21, label %26, label %22, !dbg !4416

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4416
  %24 = load i16, i16* %23, align 4, !dbg !4416, !tbaa !1145
  %25 = icmp eq i16 %24, 7, !dbg !4416
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ], !dbg !4417
  %28 = or i1 %10, %27, !dbg !4418
  br i1 %28, label %29, label %72, !dbg !4418

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !4420
  %31 = or i1 %12, %30, !dbg !4420
  br i1 %31, label %43, label %32, !dbg !4420

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4422
  %34 = load i32, i32* %33, align 4, !dbg !4422, !tbaa !1210
  %35 = icmp sgt i32 %34, 0, !dbg !4423
  br i1 %35, label %36, label %43, !dbg !4424

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !4425
  %38 = icmp slt i32 %37, 0, !dbg !4426
  br i1 %38, label %39, label %43, !dbg !4427

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !4428
  %41 = load i32, i32* %40, align 4, !dbg !4428, !tbaa !1041
  %42 = icmp eq i32 %41, 3, !dbg !4429
  br i1 %42, label %72, label %43, !dbg !4430

; <label>:43:                                     ; preds = %39, %36, %32, %29
  call void @llvm.dbg.value(metadata i64 %18, metadata !4389, metadata !DIExpression()), !dbg !4397
  %44 = icmp eq i64 %15, %18, !dbg !4431
  br i1 %44, label %45, label %64, !dbg !4434

; <label>:45:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %17, metadata !495, metadata !DIExpression()) #11, !dbg !4435
  call void @llvm.dbg.value(metadata i64 384, metadata !497, metadata !DIExpression()) #11, !dbg !4437
  call void @llvm.dbg.value(metadata i64 undef, metadata !498, metadata !DIExpression()) #11, !dbg !4438
  %46 = icmp eq i8* %17, null, !dbg !4439
  br i1 %46, label %47, label %52, !dbg !4441

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !4442
  br i1 %48, label %59, label %49, !dbg !4445

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %18, metadata !498, metadata !DIExpression()) #11, !dbg !4438
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !4446
  br i1 %50, label %51, label %59, !dbg !4448

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !4449
  unreachable, !dbg !4449

; <label>:52:                                     ; preds = %45
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !4450
  br i1 %53, label %55, label %54, !dbg !4453

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !4454
  unreachable, !dbg !4454

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !4455
  %57 = add i64 %15, 1, !dbg !4456
  %58 = add i64 %57, %56, !dbg !4457
  call void @llvm.dbg.value(metadata i64 %58, metadata !498, metadata !DIExpression()) #11, !dbg !4438
  br label %59

; <label>:59:                                     ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !4458
  call void @llvm.dbg.value(metadata i64 %60, metadata !498, metadata !DIExpression()) #11, !dbg !4438
  %61 = mul i64 %60, 384, !dbg !4459
  %62 = tail call i8* @xrealloc(i8* %17, i64 %61) #11, !dbg !4460
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !4461
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !4390, metadata !DIExpression()), !dbg !4398
  br label %64, !dbg !4462

; <label>:64:                                     ; preds = %59, %43
  %65 = phi i64 [ %60, %59 ], [ %18, %43 ], !dbg !4463
  %66 = phi i8* [ %62, %59 ], [ %17, %43 ], !dbg !4463
  %67 = phi %struct.utmpx* [ %63, %59 ], [ %16, %43 ], !dbg !4463
  call void @llvm.dbg.value(metadata %struct.utmpx* %67, metadata !4390, metadata !DIExpression()), !dbg !4398
  %68 = add i64 %15, 1, !dbg !4464
  call void @llvm.dbg.value(metadata i64 %68, metadata !4388, metadata !DIExpression()), !dbg !4396
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %67, i64 %15, !dbg !4465
  %70 = bitcast %struct.utmpx* %69 to i8*, !dbg !4466
  %71 = bitcast %struct.utmpx* %14 to i8*, !dbg !4466
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 384, i1 false), !dbg !4466, !tbaa.struct !4467
  br label %72, !dbg !4468

; <label>:72:                                     ; preds = %39, %26, %64
  %73 = phi i64 [ %65, %64 ], [ %18, %26 ], [ %18, %39 ], !dbg !4463
  %74 = phi i8* [ %66, %64 ], [ %17, %26 ], [ %17, %39 ], !dbg !4463
  %75 = phi %struct.utmpx* [ %67, %64 ], [ %16, %26 ], [ %16, %39 ], !dbg !4463
  %76 = phi i64 [ %68, %64 ], [ %15, %26 ], [ %15, %39 ], !dbg !4463
  call void @llvm.dbg.value(metadata i64 %76, metadata !4388, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !4390, metadata !DIExpression()), !dbg !4398
  %77 = tail call %struct.utmpx* @getutxent() #11, !dbg !4401
  call void @llvm.dbg.value(metadata %struct.utmpx* %77, metadata !4391, metadata !DIExpression()), !dbg !4402
  %78 = icmp eq %struct.utmpx* %77, null, !dbg !4403
  br i1 %78, label %79, label %13, !dbg !4404, !llvm.loop !4469

; <label>:79:                                     ; preds = %72, %4
  %80 = phi i8* [ null, %4 ], [ %74, %72 ], !dbg !4471
  %81 = phi i64 [ 0, %4 ], [ %76, %72 ], !dbg !4472
  call void @llvm.dbg.value(metadata i64 %81, metadata !4388, metadata !DIExpression()), !dbg !4396
  tail call void @endutxent() #11, !dbg !4473
  store i64 %81, i64* %1, align 8, !dbg !4474, !tbaa !1123
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !4475
  store i8* %80, i8** %82, align 8, !dbg !4475, !tbaa !934
  ret i32 0, !dbg !4476
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4477 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4516, metadata !DIExpression()), !dbg !4521
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4522
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4523, metadata !DIExpression()), !dbg !4527
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4529
  %4 = load i32, i32* %3, align 8, !dbg !4529, !tbaa !4530
  %5 = and i32 %4, 32, !dbg !4529
  %6 = icmp eq i32 %5, 0, !dbg !4532
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4533
  %8 = icmp ne i32 %7, 0, !dbg !4534
  br i1 %6, label %9, label %19, !dbg !4535

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4537
  %11 = xor i1 %8, true, !dbg !4538
  %12 = or i1 %10, %11, !dbg !4538
  %13 = sext i1 %8 to i32, !dbg !4538
  br i1 %12, label %22, label %14, !dbg !4538

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4539
  %16 = load i32, i32* %15, align 4, !dbg !4539, !tbaa !1041
  %17 = icmp ne i32 %16, 9, !dbg !4540
  %18 = sext i1 %17 to i32, !dbg !4541
  br label %22, !dbg !4541

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4542

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4544
  store i32 0, i32* %21, align 4, !dbg !4546, !tbaa !1041
  br label %22, !dbg !4544

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4547
  ret i32 %23, !dbg !4548
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4549 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4553
  call void @llvm.dbg.value(metadata i8* %1, metadata !4552, metadata !DIExpression()), !dbg !4554
  %2 = icmp eq i8* %1, null, !dbg !4555
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.187, i64 0, i64 0), i8* %1, !dbg !4557
  call void @llvm.dbg.value(metadata i8* %3, metadata !4552, metadata !DIExpression()), !dbg !4554
  %4 = load i8, i8* %3, align 1, !dbg !4558, !tbaa !1144
  %5 = icmp eq i8 %4, 0, !dbg !4562
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.188, i64 0, i64 0), i8* %3, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %6, metadata !4552, metadata !DIExpression()), !dbg !4554
  ret i8* %6, !dbg !4564
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4565 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4604, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i32 0, metadata !4605, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i32 0, metadata !4607, metadata !DIExpression()), !dbg !4610
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4611
  call void @llvm.dbg.value(metadata i32 %2, metadata !4606, metadata !DIExpression()), !dbg !4612
  %3 = icmp slt i32 %2, 0, !dbg !4613
  br i1 %3, label %4, label %6, !dbg !4615

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4616
  br label %24, !dbg !4617

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4618
  %8 = icmp eq i32 %7, 0, !dbg !4618
  br i1 %8, label %13, label %9, !dbg !4620

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4621
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4622
  %12 = icmp eq i64 %11, -1, !dbg !4623
  br i1 %12, label %16, label %13, !dbg !4624

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4625
  %15 = icmp eq i32 %14, 0, !dbg !4625
  br i1 %15, label %16, label %18, !dbg !4626

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4605, metadata !DIExpression()), !dbg !4609
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4627
  call void @llvm.dbg.value(metadata i32 %21, metadata !4607, metadata !DIExpression()), !dbg !4610
  br label %24, !dbg !4628

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4629
  %20 = load i32, i32* %19, align 4, !dbg !4629, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %20, metadata !4605, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i32 %20, metadata !4605, metadata !DIExpression()), !dbg !4609
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4627
  call void @llvm.dbg.value(metadata i32 %21, metadata !4607, metadata !DIExpression()), !dbg !4610
  %22 = icmp eq i32 %20, 0, !dbg !4630
  br i1 %22, label %24, label %23, !dbg !4628

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4632, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 -1, metadata !4607, metadata !DIExpression()), !dbg !4610
  br label %24, !dbg !4634

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4635
  ret i32 %25, !dbg !4636
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4637 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4676, metadata !DIExpression()), !dbg !4677
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4678
  br i1 %2, label %6, label %3, !dbg !4680

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4681
  %5 = icmp eq i32 %4, 0, !dbg !4681
  br i1 %5, label %6, label %8, !dbg !4682

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4683
  br label %17, !dbg !4684

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4685, metadata !DIExpression()) #11, !dbg !4690
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4692
  %10 = load i32, i32* %9, align 8, !dbg !4692, !tbaa !4530
  %11 = and i32 %10, 256, !dbg !4694
  %12 = icmp eq i32 %11, 0, !dbg !4694
  br i1 %12, label %15, label %13, !dbg !4695

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4696
  br label %15, !dbg !4696

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4697
  br label %17, !dbg !4698

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4699
  ret i32 %18, !dbg !4700
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4701 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4741, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %1, metadata !4742, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 %2, metadata !4743, metadata !DIExpression()), !dbg !4749
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4750
  %5 = load i8*, i8** %4, align 8, !dbg !4750, !tbaa !4751
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4752
  %7 = load i8*, i8** %6, align 8, !dbg !4752, !tbaa !4753
  %8 = icmp eq i8* %5, %7, !dbg !4754
  br i1 %8, label %9, label %28, !dbg !4755

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4756
  %11 = load i8*, i8** %10, align 8, !dbg !4756, !tbaa !4757
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4758
  %13 = load i8*, i8** %12, align 8, !dbg !4758, !tbaa !4759
  %14 = icmp eq i8* %11, %13, !dbg !4760
  br i1 %14, label %15, label %28, !dbg !4761

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4762
  %17 = load i8*, i8** %16, align 8, !dbg !4762, !tbaa !4763
  %18 = icmp eq i8* %17, null, !dbg !4764
  br i1 %18, label %19, label %28, !dbg !4765

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4766
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4767
  call void @llvm.dbg.value(metadata i64 %21, metadata !4744, metadata !DIExpression()), !dbg !4768
  %22 = icmp eq i64 %21, -1, !dbg !4769
  br i1 %22, label %30, label %23, !dbg !4771

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4772
  %25 = load i32, i32* %24, align 8, !dbg !4773, !tbaa !4530
  %26 = and i32 %25, -17, !dbg !4773
  store i32 %26, i32* %24, align 8, !dbg !4773, !tbaa !4530
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4774
  store i64 %21, i64* %27, align 8, !dbg !4775, !tbaa !4776
  br label %30, !dbg !4777

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4778
  br label %30, !dbg !4779

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4780
  ret i32 %31, !dbg !4781
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
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !308, !314, !357, !365, !449, !451, !372, !379, !457, !442, !465, !482, !484, !486, !489, !500, !502, !891, !893, !895}
!llvm.ident = !{!897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897, !897}
!llvm.module.flags = !{!898, !899, !900, !901, !902}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 162, type: !279, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !35)
!3 = !DIFile(filename: "src/who.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !7, size: 32, elements: !13)
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
!25 = !{!26, !28, !29, !33, !34}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !30, line: 7, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 158, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !{!36, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !71, !0, !74, !106, !213, !217, !228, !233, !260, !270, !272}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "do_lookup", scope: !2, file: !3, line: 102, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "short_list", scope: !2, file: !3, line: 107, type: !38, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "short_output", scope: !2, file: !3, line: 110, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 115, type: !38, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 118, type: !38, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "include_mesg", scope: !2, file: !3, line: 122, type: !38, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "include_exit", scope: !2, file: !3, line: 125, type: !38, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "need_boottime", scope: !2, file: !3, line: 128, type: !38, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "need_deadprocs", scope: !2, file: !3, line: 131, type: !38, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "need_login", scope: !2, file: !3, line: 134, type: !38, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "need_initspawn", scope: !2, file: !3, line: 137, type: !38, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "need_clockchange", scope: !2, file: !3, line: 140, type: !38, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "need_runlevel", scope: !2, file: !3, line: 143, type: !38, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "need_users", scope: !2, file: !3, line: 146, type: !38, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "my_line_only", scope: !2, file: !3, line: 149, type: !38, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 153, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 154, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "mesg", scope: !76, file: !3, line: 249, type: !103, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 244, type: !77, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !73, !69, !70, !73, !69, !69, !69, !69, !69, !69}
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !95, !99, !100, !101}
!80 = !DILocalVariable(name: "userlen", arg: 1, scope: !76, file: !3, line: 244, type: !73)
!81 = !DILocalVariable(name: "user", arg: 2, scope: !76, file: !3, line: 244, type: !69)
!82 = !DILocalVariable(name: "state", arg: 3, scope: !76, file: !3, line: 244, type: !70)
!83 = !DILocalVariable(name: "linelen", arg: 4, scope: !76, file: !3, line: 245, type: !73)
!84 = !DILocalVariable(name: "line", arg: 5, scope: !76, file: !3, line: 245, type: !69)
!85 = !DILocalVariable(name: "time_str", arg: 6, scope: !76, file: !3, line: 246, type: !69)
!86 = !DILocalVariable(name: "idle", arg: 7, scope: !76, file: !3, line: 246, type: !69)
!87 = !DILocalVariable(name: "pid", arg: 8, scope: !76, file: !3, line: 246, type: !69)
!88 = !DILocalVariable(name: "comment", arg: 9, scope: !76, file: !3, line: 247, type: !69)
!89 = !DILocalVariable(name: "exitstr", arg: 10, scope: !76, file: !3, line: 247, type: !69)
!90 = !DILocalVariable(name: "buf", scope: !76, file: !3, line: 250, type: !26)
!91 = !DILocalVariable(name: "x_idle", scope: !76, file: !3, line: 251, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DILocalVariable(name: "x_pid", scope: !76, file: !3, line: 252, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 104, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 13)
!99 = !DILocalVariable(name: "x_exitstr", scope: !76, file: !3, line: 253, type: !26)
!100 = !DILocalVariable(name: "err", scope: !76, file: !3, line: 254, type: !73)
!101 = !DILocalVariable(name: "p", scope: !102, file: !3, line: 303, type: !26)
!102 = distinct !DILexicalBlock(scope: !76, file: !3, line: 301, column: 3)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "hoststr", scope: !108, file: !3, line: 339, type: !26, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !109, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !151)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !29}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !115, line: 55, size: 3072, elements: !116)
!115 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!116 = !{!117, !118, !120, !124, !128, !129, !133, !138, !140, !145, !147}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !114, file: !115, line: 57, baseType: !34, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !114, file: !115, line: 58, baseType: !119, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !32, line: 152, baseType: !73)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !114, file: !115, line: 59, baseType: !121, size: 256, offset: 64)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !114, file: !115, line: 60, baseType: !125, size: 32, offset: 320)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 4)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !114, file: !115, line: 61, baseType: !121, size: 256, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !114, file: !115, line: 62, baseType: !130, size: 2048, offset: 608)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !114, file: !115, line: 63, baseType: !134, size: 32, offset: 2656)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !115, line: 42, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !134, file: !115, line: 45, baseType: !34, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !134, file: !115, line: 46, baseType: !34, size: 16, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !114, file: !115, line: 70, baseType: !139, size: 32, offset: 2688)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !32, line: 40, baseType: !73)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !114, file: !115, line: 75, baseType: !141, size: 64, offset: 2720)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !115, line: 71, size: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !141, file: !115, line: 73, baseType: !139, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !141, file: !115, line: 74, baseType: !139, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !114, file: !115, line: 80, baseType: !146, size: 128, offset: 2784)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !126)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !114, file: !115, line: 81, baseType: !148, size: 160, offset: 2912)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 20)
!151 = !{!152, !153, !154, !190, !191, !192, !196, !200, !201, !205, !211, !212}
!152 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !108, file: !3, line: 333, type: !111)
!153 = !DILocalVariable(name: "boottime", arg: 2, scope: !108, file: !3, line: 333, type: !29)
!154 = !DILocalVariable(name: "stats", scope: !108, file: !3, line: 335, type: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !156, line: 46, size: 1152, elements: !157)
!156 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!157 = !{!158, !161, !163, !165, !167, !169, !171, !172, !173, !175, !177, !179, !186, !187, !188}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !155, file: !156, line: 48, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !32, line: 143, baseType: !160)
!160 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !155, file: !156, line: 53, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !32, line: 146, baseType: !160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !155, file: !156, line: 61, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !32, line: 149, baseType: !160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !155, file: !156, line: 62, baseType: !166, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !32, line: 148, baseType: !7)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !155, file: !156, line: 64, baseType: !168, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !32, line: 144, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !155, file: !156, line: 65, baseType: !170, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !32, line: 145, baseType: !7)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !155, file: !156, line: 67, baseType: !73, size: 32, offset: 288)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !155, file: !156, line: 69, baseType: !159, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !155, file: !156, line: 74, baseType: !174, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 150, baseType: !33)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !155, file: !156, line: 78, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !32, line: 172, baseType: !33)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !155, file: !156, line: 80, baseType: !178, size: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !32, line: 177, baseType: !33)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !155, file: !156, line: 91, baseType: !180, size: 128, offset: 576)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !181, line: 9, size: 128, elements: !182)
!181 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !180, file: !181, line: 11, baseType: !31, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !180, file: !181, line: 12, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !32, line: 194, baseType: !33)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !155, file: !156, line: 92, baseType: !180, size: 128, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !155, file: !156, line: 93, baseType: !180, size: 128, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !155, file: !156, line: 106, baseType: !189, size: 192, offset: 960)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !104)
!190 = !DILocalVariable(name: "last_change", scope: !108, file: !3, line: 336, type: !29)
!191 = !DILocalVariable(name: "mesg", scope: !108, file: !3, line: 337, type: !27)
!192 = !DILocalVariable(name: "idlestr", scope: !108, file: !3, line: 338, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 56, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 7)
!196 = !DILocalVariable(name: "line", scope: !108, file: !3, line: 347, type: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 304, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 38)
!200 = !DILocalVariable(name: "p", scope: !108, file: !3, line: 348, type: !26)
!201 = !DILocalVariable(name: "pidstr", scope: !108, file: !3, line: 349, type: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 96, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 12)
!205 = !DILocalVariable(name: "ut_host", scope: !206, file: !3, line: 377, type: !208)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 376, column: 5)
!207 = distinct !DILexicalBlock(scope: !108, file: !3, line: 375, column: 7)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 257)
!211 = !DILocalVariable(name: "host", scope: !206, file: !3, line: 378, type: !26)
!212 = !DILocalVariable(name: "display", scope: !206, file: !3, line: 379, type: !26)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "hostlen", scope: !108, file: !3, line: 341, type: !215, isLocal: true, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 62, baseType: !160)
!216 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "now", scope: !219, file: !3, line: 190, type: !29, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 188, type: !220, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!69, !29, !29}
!222 = !{!223, !224, !225}
!223 = !DILocalVariable(name: "when", arg: 1, scope: !219, file: !3, line: 188, type: !29)
!224 = !DILocalVariable(name: "boottime", arg: 2, scope: !219, file: !3, line: 188, type: !29)
!225 = !DILocalVariable(name: "seconds_idle", scope: !226, file: !3, line: 197, type: !73)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 196, column: 5)
!227 = distinct !DILexicalBlock(scope: !219, file: !3, line: 195, column: 7)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "idle_hhmm", scope: !219, file: !3, line: 202, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 6)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "buf", scope: !235, file: !3, line: 220, type: !257, isLocal: true, isDefinition: true)
!235 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 218, type: !236, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!69, !111}
!238 = !{!239, !240, !241}
!239 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !235, file: !3, line: 218, type: !111)
!240 = !DILocalVariable(name: "t", scope: !235, file: !3, line: 228, type: !29)
!241 = !DILocalVariable(name: "tmp", scope: !235, file: !3, line: 229, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !244, line: 7, size: 448, elements: !245)
!244 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !243, file: !244, line: 9, baseType: !73, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !243, file: !244, line: 10, baseType: !73, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !243, file: !244, line: 11, baseType: !73, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !243, file: !244, line: 12, baseType: !73, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !243, file: !244, line: 13, baseType: !73, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !243, file: !244, line: 14, baseType: !73, size: 32, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !243, file: !244, line: 15, baseType: !73, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !243, file: !244, line: 16, baseType: !73, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !243, file: !244, line: 17, baseType: !73, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !243, file: !244, line: 20, baseType: !33, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !243, file: !244, line: 21, baseType: !69, size: 64, offset: 384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 264, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 33)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "runlevline", scope: !262, file: !3, line: 516, type: !26, isLocal: true, isDefinition: true)
!262 = distinct !DISubprogram(name: "print_runlevel", scope: !3, file: !3, line: 514, type: !263, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !111}
!265 = !{!266, !267, !269}
!266 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !262, file: !3, line: 514, type: !111)
!267 = !DILocalVariable(name: "last", scope: !262, file: !3, line: 517, type: !268)
!268 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!269 = !DILocalVariable(name: "curr", scope: !262, file: !3, line: 518, type: !268)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "comment", scope: !262, file: !3, line: 516, type: !26, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "exitstr", scope: !274, file: !3, line: 461, type: !26, isLocal: true, isDefinition: true)
!274 = distinct !DISubprogram(name: "print_deadprocs", scope: !3, file: !3, line: 459, type: !263, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !274, file: !3, line: 459, type: !111)
!277 = !DILocalVariable(name: "comment", scope: !274, file: !3, line: 462, type: !26)
!278 = !DILocalVariable(name: "pidstr", scope: !274, file: !3, line: 463, type: !202)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4608, elements: !289)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !282, line: 50, size: 256, elements: !283)
!282 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!283 = !{!284, !285, !286, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !282, line: 52, baseType: !69, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !281, file: !282, line: 55, baseType: !73, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !281, file: !282, line: 56, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !282, line: 57, baseType: !73, size: 32, offset: 192)
!289 = !{!290}
!290 = !DISubrange(count: 18)
!291 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!292 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!293 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!294 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!295 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!296 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!297 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!298 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!299 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!300 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!301 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!302 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!303 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!304 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!305 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "Version", scope: !308, file: !309, line: 2, type: !69, isLocal: false, isDefinition: true)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !311)
!309 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!310 = !{}
!311 = !{!306}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "last_cherror", scope: !314, file: !320, line: 28, type: !73, isLocal: true, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !316)
!315 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = !{!317, !312}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "hints", scope: !319, file: !320, line: 63, type: !329, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "canon_host_r", scope: !320, file: !320, line: 60, type: !321, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !323)
!320 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!321 = !DISubroutineType(types: !322)
!322 = !{!26, !69, !287}
!323 = !{!324, !325, !326, !327, !354}
!324 = !DILocalVariable(name: "host", arg: 1, scope: !319, file: !320, line: 60, type: !69)
!325 = !DILocalVariable(name: "cherror", arg: 2, scope: !319, file: !320, line: 60, type: !287)
!326 = !DILocalVariable(name: "retval", scope: !319, file: !320, line: 62, type: !26)
!327 = !DILocalVariable(name: "res", scope: !319, file: !320, line: 64, type: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !330, line: 565, size: 384, elements: !331)
!330 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!331 = !{!332, !333, !334, !335, !336, !340, !352, !353}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !329, file: !330, line: 567, baseType: !73, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !329, file: !330, line: 568, baseType: !73, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !329, file: !330, line: 569, baseType: !73, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !329, file: !330, line: 570, baseType: !73, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !329, file: !330, line: 571, baseType: !337, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !338, line: 33, baseType: !339)
!338 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !32, line: 207, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !329, file: !330, line: 572, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !338, line: 175, size: 128, elements: !343)
!343 = !{!344, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !342, file: !338, line: 177, baseType: !345, size: 16)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !346, line: 28, baseType: !347)
!346 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!347 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !342, file: !338, line: 178, baseType: !349, size: 112, offset: 16)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 112, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 14)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !329, file: !330, line: 573, baseType: !26, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !329, file: !330, line: 574, baseType: !328, size: 64, offset: 320)
!354 = !DILocalVariable(name: "status", scope: !319, file: !320, line: 65, type: !73)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "file_name", scope: !357, file: !362, line: 46, type: !69, isLocal: true, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !359)
!358 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!359 = !{!355, !360}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !357, file: !362, line: 56, type: !38, isLocal: true, isDefinition: true)
!362 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "exit_failure", scope: !365, file: !368, line: 24, type: !369, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !367)
!366 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!367 = !{!363}
!368 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "program_name", scope: !372, file: !376, line: 33, type: !69, isLocal: false, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !374, globals: !375)
!373 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!374 = !{!28, !26}
!375 = !{!370}
!376 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !379, file: !406, line: 85, type: !436, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !402, globals: !403)
!380 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!381 = !{!11, !382, !387}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !7, size: 32, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !388, line: 46, baseType: !7, size: 32, elements: !389)
!388 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!390 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!391 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!392 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!393 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!394 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!395 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!396 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!397 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!398 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!399 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!400 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!401 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!402 = !{!73, !347, !215, !26}
!403 = !{!377, !404, !411, !421, !423, !425, !432, !434}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !379, file: !406, line: 101, type: !407, isLocal: false, isDefinition: true)
!406 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 320, elements: !409)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!409 = !{!410}
!410 = !DISubrange(count: 10)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !379, file: !406, line: 1052, type: !413, isLocal: false, isDefinition: true)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !406, line: 65, size: 448, elements: !414)
!414 = !{!415, !416, !417, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !413, file: !406, line: 68, baseType: !11, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !406, line: 71, baseType: !73, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !413, file: !406, line: 75, baseType: !418, size: 256, offset: 64)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !93)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !413, file: !406, line: 78, baseType: !69, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !413, file: !406, line: 81, baseType: !69, size: 64, offset: 384)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !379, file: !406, line: 116, type: !413, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "slot0", scope: !379, file: !406, line: 842, type: !130, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "slotvec", scope: !379, file: !406, line: 845, type: !427, isLocal: true, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !406, line: 834, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !428, file: !406, line: 836, baseType: !215, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !428, file: !406, line: 837, baseType: !26, size: 64, offset: 64)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "nslots", scope: !379, file: !406, line: 843, type: !73, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "slotvec0", scope: !379, file: !406, line: 844, type: !428, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 704, elements: !438)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!438 = !{!439}
!439 = !DISubrange(count: 11)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !442, file: !445, line: 26, type: !446, isLocal: false, isDefinition: true)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !444)
!443 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!444 = !{!440}
!445 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 376, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 47)
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!450 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !453)
!452 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !455, line: 101, baseType: !456)
!455 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !32, line: 71, baseType: !33)
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !459, retainedTypes: !464)
!458 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!459 = !{!460}
!460 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !461, line: 41, baseType: !7, size: 32, elements: !462)
!461 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!462 = !{!463}
!463 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!464 = !{!28}
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !467, retainedTypes: !481)
!466 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!467 = !{!468}
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !470, file: !469, line: 186, baseType: !7, size: 32, elements: !479)
!469 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!470 = distinct !DISubprogram(name: "x2nrealloc", scope: !469, file: !469, line: 174, type: !471, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !474)
!471 = !DISubroutineType(types: !472)
!472 = !{!28, !28, !473, !215}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!474 = !{!475, !476, !477, !478}
!475 = !DILocalVariable(name: "p", arg: 1, scope: !470, file: !469, line: 174, type: !28)
!476 = !DILocalVariable(name: "pn", arg: 2, scope: !470, file: !469, line: 174, type: !473)
!477 = !DILocalVariable(name: "s", arg: 3, scope: !470, file: !469, line: 174, type: !215)
!478 = !DILocalVariable(name: "n", scope: !470, file: !469, line: 176, type: !215)
!479 = !{!480}
!480 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!481 = !{!215, !26, !28}
!482 = distinct !DICompileUnit(language: DW_LANG_C99, file: !483, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!483 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !464)
!485 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!486 = distinct !DICompileUnit(language: DW_LANG_C99, file: !487, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !488)
!487 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!488 = !{!215}
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !491, retainedTypes: !499)
!490 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!491 = !{!5, !492}
!492 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !493, file: !469, line: 186, baseType: !7, size: 32, elements: !479)
!493 = distinct !DISubprogram(name: "x2nrealloc", scope: !469, file: !469, line: 174, type: !471, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !489, retainedNodes: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DILocalVariable(name: "p", arg: 1, scope: !493, file: !469, line: 174, type: !28)
!496 = !DILocalVariable(name: "pn", arg: 2, scope: !493, file: !469, line: 174, type: !473)
!497 = !DILocalVariable(name: "s", arg: 3, scope: !493, file: !469, line: 174, type: !215)
!498 = !DILocalVariable(name: "n", scope: !493, file: !469, line: 176, type: !215)
!499 = !{!26, !28, !215}
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!501 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !504, retainedTypes: !464)
!503 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!504 = !{!505}
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !506, line: 41, baseType: !7, size: 32, elements: !507)
!506 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!508 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!509 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!510 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!511 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!512 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!513 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!514 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!515 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!516 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!517 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!518 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!519 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!520 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!521 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!522 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!523 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!524 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!525 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!526 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!527 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!528 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!529 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!530 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!531 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!532 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!533 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!534 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!535 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!536 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!537 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!538 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!539 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!540 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!541 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!542 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!543 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!544 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!545 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!546 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!547 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!548 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!549 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!550 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!551 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!552 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!553 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!554 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!555 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!556 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!557 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!616 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!619 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!620 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!621 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!622 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!623 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!624 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!625 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!626 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!627 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!628 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!629 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!630 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!703 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!776 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!777 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!778 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!779 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!780 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!781 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!782 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!783 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!784 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!785 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!786 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!787 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!788 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!789 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!790 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!792 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!793 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!794 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!795 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!796 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!797 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!823 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!824 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!825 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!826 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!827 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!832 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!833 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!834 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!835 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!891 = distinct !DICompileUnit(language: DW_LANG_C99, file: !892, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!892 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!893 = distinct !DICompileUnit(language: DW_LANG_C99, file: !894, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !464)
!894 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!895 = distinct !DICompileUnit(language: DW_LANG_C99, file: !896, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !464)
!896 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!897 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!898 = !{i32 2, !"Dwarf Version", i32 4}
!899 = !{i32 2, !"Debug Info Version", i32 3}
!900 = !{i32 1, !"wchar_size", i32 4}
!901 = !{i32 7, !"PIC Level", i32 2}
!902 = !{i32 7, !"PIE Level", i32 2}
!903 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 638, type: !904, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !73}
!906 = !{!907}
!907 = !DILocalVariable(name: "status", arg: 1, scope: !903, file: !3, line: 638, type: !73)
!908 = !DILocalVariable(name: "infomap", scope: !909, file: !910, line: 632, type: !924)
!909 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !910, file: !910, line: 630, type: !911, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !913)
!910 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!911 = !DISubroutineType(types: !912)
!912 = !{null, !69}
!913 = !{!914, !908, !915, !916, !923}
!914 = !DILocalVariable(name: "program", arg: 1, scope: !909, file: !910, line: 630, type: !69)
!915 = !DILocalVariable(name: "node", scope: !909, file: !910, line: 642, type: !69)
!916 = !DILocalVariable(name: "map_prog", scope: !909, file: !910, line: 643, type: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !909, file: !910, line: 632, size: 128, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !919, file: !910, line: 632, baseType: !69, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !919, file: !910, line: 632, baseType: !69, size: 64, offset: 64)
!923 = !DILocalVariable(name: "lc_messages", scope: !909, file: !910, line: 655, type: !69)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 896, elements: !194)
!925 = !DILocation(line: 632, column: 67, scope: !909, inlinedAt: !926)
!926 = distinct !DILocation(line: 682, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 643, column: 5)
!928 = distinct !DILexicalBlock(scope: !903, file: !3, line: 640, column: 7)
!929 = !DILocation(line: 638, column: 12, scope: !903)
!930 = !DILocation(line: 640, column: 14, scope: !928)
!931 = !DILocation(line: 640, column: 7, scope: !903)
!932 = !DILocation(line: 641, column: 5, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 641, column: 5)
!934 = !{!935, !935, i64 0}
!935 = !{!"any pointer", !936, i64 0}
!936 = !{!"omnipotent char", !937, i64 0}
!937 = !{!"Simple C/C++ TBAA"}
!938 = !DILocation(line: 644, column: 7, scope: !927)
!939 = !DILocation(line: 645, column: 7, scope: !927)
!940 = !DILocation(line: 648, column: 7, scope: !927)
!941 = !DILocation(line: 655, column: 7, scope: !927)
!942 = !DILocation(line: 658, column: 7, scope: !927)
!943 = !DILocation(line: 663, column: 7, scope: !927)
!944 = !DILocation(line: 669, column: 7, scope: !927)
!945 = !DILocation(line: 675, column: 7, scope: !927)
!946 = !DILocation(line: 676, column: 7, scope: !927)
!947 = !DILocation(line: 677, column: 7, scope: !927)
!948 = !DILocation(line: 632, column: 3, scope: !909, inlinedAt: !926)
!949 = !DILocation(line: 643, column: 36, scope: !909, inlinedAt: !926)
!950 = !DILocation(line: 643, column: 25, scope: !909, inlinedAt: !926)
!951 = !DILocation(line: 645, column: 33, scope: !909, inlinedAt: !926)
!952 = !DILocation(line: 645, column: 3, scope: !909, inlinedAt: !926)
!953 = !DILocation(line: 646, column: 13, scope: !909, inlinedAt: !926)
!954 = !DILocation(line: 645, column: 20, scope: !909, inlinedAt: !926)
!955 = !{!956, !935, i64 0}
!956 = !{!"infomap", !935, i64 0, !935, i64 8}
!957 = !DILocation(line: 645, column: 10, scope: !909, inlinedAt: !926)
!958 = !DILocation(line: 645, column: 28, scope: !909, inlinedAt: !926)
!959 = distinct !{!959, !960, !961}
!960 = !DILocation(line: 645, column: 3, scope: !909)
!961 = !DILocation(line: 646, column: 13, scope: !909)
!962 = !DILocation(line: 648, column: 17, scope: !963, inlinedAt: !926)
!963 = distinct !DILexicalBlock(scope: !909, file: !910, line: 648, column: 7)
!964 = !{!956, !935, i64 8}
!965 = !DILocation(line: 648, column: 7, scope: !963, inlinedAt: !926)
!966 = !DILocation(line: 648, column: 7, scope: !909, inlinedAt: !926)
!967 = !DILocation(line: 642, column: 15, scope: !909, inlinedAt: !926)
!968 = !DILocation(line: 651, column: 3, scope: !909, inlinedAt: !926)
!969 = !DILocation(line: 655, column: 29, scope: !909, inlinedAt: !926)
!970 = !DILocation(line: 655, column: 15, scope: !909, inlinedAt: !926)
!971 = !DILocation(line: 656, column: 7, scope: !972, inlinedAt: !926)
!972 = distinct !DILexicalBlock(scope: !909, file: !910, line: 656, column: 7)
!973 = !DILocation(line: 656, column: 19, scope: !972, inlinedAt: !926)
!974 = !DILocation(line: 656, column: 22, scope: !972, inlinedAt: !926)
!975 = !DILocation(line: 656, column: 7, scope: !909, inlinedAt: !926)
!976 = !DILocation(line: 662, column: 7, scope: !977, inlinedAt: !926)
!977 = distinct !DILexicalBlock(scope: !972, file: !910, line: 657, column: 5)
!978 = !DILocation(line: 664, column: 5, scope: !977, inlinedAt: !926)
!979 = !DILocation(line: 665, column: 3, scope: !909, inlinedAt: !926)
!980 = !DILocation(line: 667, column: 3, scope: !909, inlinedAt: !926)
!981 = !DILocation(line: 669, column: 1, scope: !909, inlinedAt: !926)
!982 = !DILocation(line: 684, column: 3, scope: !903)
!983 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 688, type: !984, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!984 = !DISubroutineType(types: !985)
!985 = !{!73, !73, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!987 = !{!988, !989, !990, !991}
!988 = !DILocalVariable(name: "argc", arg: 1, scope: !983, file: !3, line: 688, type: !73)
!989 = !DILocalVariable(name: "argv", arg: 2, scope: !983, file: !3, line: 688, type: !986)
!990 = !DILocalVariable(name: "optc", scope: !983, file: !3, line: 690, type: !73)
!991 = !DILocalVariable(name: "assumptions", scope: !983, file: !3, line: 691, type: !38)
!992 = !DILocation(line: 688, column: 11, scope: !983)
!993 = !DILocation(line: 688, column: 24, scope: !983)
!994 = !DILocation(line: 691, column: 8, scope: !983)
!995 = !DILocation(line: 694, column: 21, scope: !983)
!996 = !DILocation(line: 694, column: 3, scope: !983)
!997 = !DILocation(line: 695, column: 3, scope: !983)
!998 = !DILocation(line: 696, column: 3, scope: !983)
!999 = !DILocation(line: 697, column: 3, scope: !983)
!1000 = !DILocation(line: 699, column: 3, scope: !983)
!1001 = !DILocation(line: 701, column: 3, scope: !983)
!1002 = !DILocation(line: 701, column: 18, scope: !983)
!1003 = !DILocation(line: 690, column: 7, scope: !983)
!1004 = !DILocation(line: 718, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 705, column: 9)
!1006 = distinct !DILexicalBlock(scope: !983, file: !3, line: 703, column: 5)
!1007 = !DILocation(line: 730, column: 11, scope: !1005)
!1008 = !DILocation(line: 734, column: 11, scope: !1005)
!1009 = !DILocation(line: 740, column: 11, scope: !1005)
!1010 = !DILocation(line: 744, column: 11, scope: !1005)
!1011 = !DILocation(line: 749, column: 11, scope: !1005)
!1012 = !DILocation(line: 753, column: 11, scope: !1005)
!1013 = !DILocation(line: 759, column: 11, scope: !1005)
!1014 = !DILocation(line: 763, column: 11, scope: !1005)
!1015 = !DILocation(line: 768, column: 11, scope: !1005)
!1016 = !DILocation(line: 773, column: 11, scope: !1005)
!1017 = !DILocation(line: 779, column: 11, scope: !1005)
!1018 = !DILocation(line: 783, column: 11, scope: !1005)
!1019 = !DILocation(line: 785, column: 9, scope: !1005)
!1020 = !DILocation(line: 787, column: 9, scope: !1005)
!1021 = !DILocation(line: 790, column: 11, scope: !1005)
!1022 = !DILocation(line: 0, scope: !1005)
!1023 = distinct !{!1023, !1001, !1024}
!1024 = !DILocation(line: 792, column: 5, scope: !983)
!1025 = !DILocation(line: 794, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !983, file: !3, line: 794, column: 7)
!1027 = !DILocation(line: 794, column: 7, scope: !983)
!1028 = !DILocation(line: 798, column: 5, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 795, column: 5)
!1030 = !DILocation(line: 800, column: 7, scope: !983)
!1031 = !DILocation(line: 803, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 801, column: 5)
!1033 = distinct !DILexicalBlock(scope: !983, file: !3, line: 800, column: 7)
!1034 = !DILocation(line: 805, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !983, file: !3, line: 805, column: 7)
!1036 = !DILocation(line: 809, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 806, column: 5)
!1038 = !DILocation(line: 0, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 811, column: 5)
!1040 = !DILocation(line: 0, scope: !1037)
!1041 = !{!1042, !1042, i64 0}
!1042 = !{!"int", !936, i64 0}
!1043 = !DILocation(line: 816, column: 18, scope: !983)
!1044 = !DILocation(line: 816, column: 16, scope: !983)
!1045 = !DILocation(line: 816, column: 3, scope: !983)
!1046 = !DILocation(line: 820, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !983, file: !3, line: 817, column: 5)
!1048 = !DILocation(line: 823, column: 7, scope: !1047)
!1049 = !DILocation(line: 824, column: 7, scope: !1047)
!1050 = !DILocation(line: 827, column: 12, scope: !1047)
!1051 = !DILocation(line: 827, column: 7, scope: !1047)
!1052 = !DILocation(line: 828, column: 7, scope: !1047)
!1053 = !DILocation(line: 831, column: 20, scope: !1047)
!1054 = !DILocation(line: 831, column: 55, scope: !1047)
!1055 = !DILocation(line: 831, column: 62, scope: !1047)
!1056 = !DILocation(line: 831, column: 50, scope: !1047)
!1057 = !DILocation(line: 831, column: 43, scope: !1047)
!1058 = !DILocation(line: 831, column: 7, scope: !1047)
!1059 = !DILocation(line: 832, column: 7, scope: !1047)
!1060 = !DILocation(line: 835, column: 3, scope: !983)
!1061 = distinct !DISubprogram(name: "who", scope: !3, file: !3, line: 621, type: !1062, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !69, !73}
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DILocalVariable(name: "filename", arg: 1, scope: !1061, file: !3, line: 621, type: !69)
!1066 = !DILocalVariable(name: "options", arg: 2, scope: !1061, file: !3, line: 621, type: !73)
!1067 = !DILocalVariable(name: "n_users", scope: !1061, file: !3, line: 623, type: !215)
!1068 = !DILocalVariable(name: "utmp_buf", scope: !1061, file: !3, line: 624, type: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1070 = !DILocation(line: 338, column: 8, scope: !108, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 593, column: 13, scope: !1072, inlinedAt: !1084)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 592, column: 15)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 591, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 588, column: 11)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 587, column: 5)
!1076 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 569, type: !1077, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !215, !111}
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DILocalVariable(name: "n", arg: 1, scope: !1076, file: !3, line: 569, type: !215)
!1081 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1076, file: !3, line: 569, type: !111)
!1082 = !DILocalVariable(name: "ttyname_b", scope: !1076, file: !3, line: 571, type: !26)
!1083 = !DILocalVariable(name: "boottime", scope: !1076, file: !3, line: 572, type: !29)
!1084 = distinct !DILocation(line: 632, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 629, column: 7)
!1086 = !DILocation(line: 347, column: 8, scope: !108, inlinedAt: !1071)
!1087 = !DILocation(line: 349, column: 3, scope: !108, inlinedAt: !1071)
!1088 = !DILocalVariable(name: "pidstr", scope: !1089, file: !3, line: 498, type: !202)
!1089 = distinct !DISubprogram(name: "print_initspawn", scope: !3, file: !3, line: 495, type: !263, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1090)
!1090 = !{!1091, !1092, !1088}
!1091 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1089, file: !3, line: 495, type: !111)
!1092 = !DILocalVariable(name: "comment", scope: !1089, file: !3, line: 497, type: !26)
!1093 = !DILocation(line: 498, column: 3, scope: !1089, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 604, column: 13, scope: !1095, inlinedAt: !1084)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 603, column: 20)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 601, column: 20)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 596, column: 20)
!1098 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 594, column: 20)
!1099 = !DILocalVariable(name: "pidstr", scope: !1100, file: !3, line: 485, type: !202)
!1100 = distinct !DISubprogram(name: "print_login", scope: !3, file: !3, line: 482, type: !263, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1101)
!1101 = !{!1102, !1103, !1099}
!1102 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1100, file: !3, line: 482, type: !111)
!1103 = !DILocalVariable(name: "comment", scope: !1100, file: !3, line: 484, type: !26)
!1104 = !DILocation(line: 485, column: 3, scope: !1100, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 606, column: 13, scope: !1106, inlinedAt: !1084)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 605, column: 20)
!1107 = !DILocation(line: 463, column: 3, scope: !274, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 608, column: 13, scope: !1109, inlinedAt: !1084)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 607, column: 20)
!1110 = !DILocation(line: 377, column: 12, scope: !206, inlinedAt: !1071)
!1111 = !DILocation(line: 621, column: 18, scope: !1061)
!1112 = !DILocation(line: 621, column: 32, scope: !1061)
!1113 = !DILocation(line: 623, column: 3, scope: !1061)
!1114 = !DILocation(line: 624, column: 3, scope: !1061)
!1115 = !DILocation(line: 623, column: 10, scope: !1061)
!1116 = !DILocation(line: 624, column: 16, scope: !1061)
!1117 = !DILocation(line: 626, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 626, column: 7)
!1119 = !DILocation(line: 626, column: 58, scope: !1118)
!1120 = !DILocation(line: 626, column: 7, scope: !1061)
!1121 = !DILocation(line: 627, column: 5, scope: !1118)
!1122 = !DILocation(line: 0, scope: !1085)
!1123 = !{!1124, !1124, i64 0}
!1124 = !{!"long", !936, i64 0}
!1125 = !DILocation(line: 629, column: 7, scope: !1061)
!1126 = !DILocalVariable(name: "n", arg: 1, scope: !1127, file: !3, line: 537, type: !215)
!1127 = distinct !DISubprogram(name: "list_entries_who", scope: !3, file: !3, line: 537, type: !1077, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1128)
!1128 = !{!1126, !1129, !1130, !1131, !1132}
!1129 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1127, file: !3, line: 537, type: !111)
!1130 = !DILocalVariable(name: "entries", scope: !1127, file: !3, line: 539, type: !160)
!1131 = !DILocalVariable(name: "separator", scope: !1127, file: !3, line: 540, type: !69)
!1132 = !DILocalVariable(name: "trimmed_name", scope: !1133, file: !3, line: 546, type: !26)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 545, column: 9)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 544, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 543, column: 5)
!1136 = !DILocation(line: 537, column: 26, scope: !1127, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 630, column: 5, scope: !1085)
!1138 = !DILocation(line: 537, column: 48, scope: !1127, inlinedAt: !1137)
!1139 = !DILocation(line: 539, column: 21, scope: !1127, inlinedAt: !1137)
!1140 = !DILocation(line: 540, column: 15, scope: !1127, inlinedAt: !1137)
!1141 = !DILocation(line: 542, column: 3, scope: !1127, inlinedAt: !1137)
!1142 = !DILocation(line: 542, column: 11, scope: !1127, inlinedAt: !1137)
!1143 = !DILocation(line: 544, column: 11, scope: !1134, inlinedAt: !1137)
!1144 = !{!936, !936, i64 0}
!1145 = !{!1146, !1147, i64 0}
!1146 = !{!"utmpx", !1147, i64 0, !1042, i64 4, !936, i64 8, !936, i64 40, !936, i64 44, !936, i64 76, !1148, i64 332, !1042, i64 336, !1149, i64 340, !936, i64 348, !936, i64 364}
!1147 = !{!"short", !936, i64 0}
!1148 = !{!"__exit_status", !1147, i64 0, !1147, i64 2}
!1149 = !{!"", !1042, i64 0, !1042, i64 4}
!1150 = !DILocation(line: 544, column: 11, scope: !1135, inlinedAt: !1137)
!1151 = !DILocation(line: 548, column: 26, scope: !1133, inlinedAt: !1137)
!1152 = !DILocation(line: 546, column: 17, scope: !1133, inlinedAt: !1137)
!1153 = !DILocation(line: 550, column: 11, scope: !1133, inlinedAt: !1137)
!1154 = !DILocation(line: 551, column: 11, scope: !1133, inlinedAt: !1137)
!1155 = !DILocation(line: 553, column: 18, scope: !1133, inlinedAt: !1137)
!1156 = !DILocation(line: 554, column: 9, scope: !1133, inlinedAt: !1137)
!1157 = !DILocation(line: 0, scope: !1127, inlinedAt: !1137)
!1158 = !DILocation(line: 555, column: 15, scope: !1135, inlinedAt: !1137)
!1159 = distinct !{!1159, !1160, !1161}
!1160 = !DILocation(line: 542, column: 3, scope: !1127)
!1161 = !DILocation(line: 556, column: 5, scope: !1127)
!1162 = !DILocation(line: 0, scope: !1133, inlinedAt: !1137)
!1163 = !DILocation(line: 557, column: 3, scope: !1127, inlinedAt: !1137)
!1164 = !DILocation(line: 630, column: 5, scope: !1085)
!1165 = !DILocation(line: 569, column: 22, scope: !1076, inlinedAt: !1084)
!1166 = !DILocation(line: 569, column: 44, scope: !1076, inlinedAt: !1084)
!1167 = !DILocation(line: 572, column: 10, scope: !1076, inlinedAt: !1084)
!1168 = !DILocation(line: 574, column: 7, scope: !1076, inlinedAt: !1084)
!1169 = !DILocation(line: 563, column: 19, scope: !1170, inlinedAt: !1173)
!1170 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 561, type: !1171, isLocal: true, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !310)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null}
!1173 = distinct !DILocation(line: 575, column: 5, scope: !1174, inlinedAt: !1084)
!1174 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 574, column: 7)
!1175 = !DILocation(line: 563, column: 39, scope: !1170, inlinedAt: !1173)
!1176 = !DILocation(line: 563, column: 50, scope: !1170, inlinedAt: !1173)
!1177 = !DILocation(line: 563, column: 61, scope: !1170, inlinedAt: !1173)
!1178 = !DILocation(line: 564, column: 15, scope: !1170, inlinedAt: !1173)
!1179 = !DILocation(line: 564, column: 25, scope: !1170, inlinedAt: !1173)
!1180 = !DILocation(line: 564, column: 39, scope: !1170, inlinedAt: !1173)
!1181 = !DILocation(line: 563, column: 3, scope: !1170, inlinedAt: !1173)
!1182 = !DILocation(line: 575, column: 5, scope: !1174, inlinedAt: !1084)
!1183 = !DILocation(line: 577, column: 7, scope: !1076, inlinedAt: !1084)
!1184 = !DILocation(line: 579, column: 19, scope: !1185, inlinedAt: !1084)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 578, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 577, column: 7)
!1187 = !DILocation(line: 571, column: 9, scope: !1076, inlinedAt: !1084)
!1188 = !DILocation(line: 580, column: 12, scope: !1189, inlinedAt: !1084)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 580, column: 11)
!1190 = !DILocation(line: 580, column: 11, scope: !1185, inlinedAt: !1084)
!1191 = !DILocation(line: 582, column: 11, scope: !1192, inlinedAt: !1084)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 582, column: 11)
!1193 = !DILocation(line: 582, column: 64, scope: !1192, inlinedAt: !1084)
!1194 = !DILocation(line: 583, column: 19, scope: !1192, inlinedAt: !1084)
!1195 = !DILocation(line: 582, column: 11, scope: !1185, inlinedAt: !1084)
!1196 = !DILocation(line: 586, column: 3, scope: !1076, inlinedAt: !1084)
!1197 = !DILocation(line: 586, column: 11, scope: !1076, inlinedAt: !1084)
!1198 = !DILocation(line: 589, column: 11, scope: !1074, inlinedAt: !1084)
!1199 = !DILocation(line: 589, column: 14, scope: !1074, inlinedAt: !1084)
!1200 = !DILocation(line: 588, column: 11, scope: !1075, inlinedAt: !1084)
!1201 = !DILocation(line: 592, column: 26, scope: !1072, inlinedAt: !1084)
!1202 = !DILocation(line: 592, column: 29, scope: !1072, inlinedAt: !1084)
!1203 = !DILocation(line: 592, column: 15, scope: !1073, inlinedAt: !1084)
!1204 = !DILocation(line: 333, column: 32, scope: !108, inlinedAt: !1071)
!1205 = !DILocation(line: 333, column: 49, scope: !108, inlinedAt: !1071)
!1206 = !DILocation(line: 335, column: 3, scope: !108, inlinedAt: !1071)
!1207 = !DILocation(line: 338, column: 3, scope: !108, inlinedAt: !1071)
!1208 = !DILocation(line: 347, column: 3, scope: !108, inlinedAt: !1071)
!1209 = !DILocation(line: 348, column: 9, scope: !108, inlinedAt: !1071)
!1210 = !{!1146, !1042, i64 4}
!1211 = !DILocation(line: 354, column: 10, scope: !1212, inlinedAt: !1071)
!1212 = distinct !DILexicalBlock(scope: !108, file: !3, line: 354, column: 8)
!1213 = !DILocation(line: 354, column: 8, scope: !108, inlinedAt: !1071)
!1214 = !DILocation(line: 355, column: 9, scope: !1212, inlinedAt: !1071)
!1215 = !DILocalVariable(name: "dest", arg: 1, scope: !1216, file: !910, line: 737, type: !1219)
!1216 = distinct !DISubprogram(name: "stzncpy", scope: !910, file: !910, line: 737, type: !1217, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1221)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!26, !1219, !1220, !215}
!1219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!1220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!1221 = !{!1215, !1222, !1223, !1224}
!1222 = !DILocalVariable(name: "src", arg: 2, scope: !1216, file: !910, line: 737, type: !1220)
!1223 = !DILocalVariable(name: "len", arg: 3, scope: !1216, file: !910, line: 737, type: !215)
!1224 = !DILocalVariable(name: "src_end", scope: !1216, file: !910, line: 739, type: !69)
!1225 = !DILocation(line: 737, column: 25, scope: !1216, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 356, column: 3, scope: !108, inlinedAt: !1071)
!1227 = !DILocation(line: 737, column: 52, scope: !1216, inlinedAt: !1226)
!1228 = !DILocation(line: 737, column: 64, scope: !1216, inlinedAt: !1226)
!1229 = !DILocation(line: 739, column: 15, scope: !1216, inlinedAt: !1226)
!1230 = !DILocation(line: 740, column: 24, scope: !1216, inlinedAt: !1226)
!1231 = !DILocation(line: 740, column: 3, scope: !1216, inlinedAt: !1226)
!1232 = !DILocation(line: 739, column: 29, scope: !1216, inlinedAt: !1226)
!1233 = !DILocation(line: 741, column: 19, scope: !1216, inlinedAt: !1226)
!1234 = !DILocation(line: 741, column: 10, scope: !1216, inlinedAt: !1226)
!1235 = !DILocation(line: 741, column: 13, scope: !1216, inlinedAt: !1226)
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"stzncpy: argument 0"}
!1238 = distinct !{!1238, !"stzncpy"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1238, !"stzncpy: argument 1"}
!1241 = !DILocation(line: 740, column: 14, scope: !1216, inlinedAt: !1226)
!1242 = distinct !{!1242, !1243, !1244}
!1243 = !DILocation(line: 740, column: 3, scope: !1216)
!1244 = !DILocation(line: 741, column: 19, scope: !1216)
!1245 = !DILocation(line: 740, column: 27, scope: !1216, inlinedAt: !1226)
!1246 = !DILocation(line: 742, column: 9, scope: !1216, inlinedAt: !1226)
!1247 = !DILocation(line: 335, column: 15, scope: !108, inlinedAt: !1071)
!1248 = !DILocalVariable(name: "__path", arg: 1, scope: !1249, file: !1250, line: 453, type: !69)
!1249 = distinct !DISubprogram(name: "stat", scope: !1250, file: !1250, line: 453, type: !1251, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1254)
!1250 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!73, !69, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1254 = !{!1248, !1255}
!1255 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1249, file: !1250, line: 453, type: !1253)
!1256 = !DILocation(line: 453, column: 1, scope: !1249, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 358, column: 7, scope: !1258, inlinedAt: !1071)
!1258 = distinct !DILexicalBlock(scope: !108, file: !3, line: 358, column: 7)
!1259 = !DILocation(line: 455, column: 10, scope: !1249, inlinedAt: !1257)
!1260 = !DILocation(line: 358, column: 27, scope: !1258, inlinedAt: !1071)
!1261 = !DILocation(line: 358, column: 7, scope: !108, inlinedAt: !1071)
!1262 = !DILocalVariable(name: "pstat", arg: 1, scope: !1263, file: !3, line: 317, type: !1266)
!1263 = distinct !DISubprogram(name: "is_tty_writable", scope: !3, file: !3, line: 317, type: !1264, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1268)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!38, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1268 = !{!1262}
!1269 = !DILocation(line: 317, column: 37, scope: !1263, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 360, column: 14, scope: !1271, inlinedAt: !1071)
!1271 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 359, column: 5)
!1272 = !DILocation(line: 327, column: 17, scope: !1263, inlinedAt: !1270)
!1273 = !{!1274, !1042, i64 24}
!1274 = !{!"stat", !1124, i64 0, !1124, i64 8, !1124, i64 16, !1042, i64 24, !1042, i64 28, !1042, i64 32, !1042, i64 36, !1124, i64 40, !1124, i64 48, !1124, i64 56, !1124, i64 64, !1275, i64 72, !1275, i64 88, !1275, i64 104, !936, i64 120}
!1275 = !{!"timespec", !1124, i64 0, !1124, i64 8}
!1276 = !DILocation(line: 327, column: 25, scope: !1263, inlinedAt: !1270)
!1277 = !DILocation(line: 327, column: 10, scope: !1263, inlinedAt: !1270)
!1278 = !DILocation(line: 360, column: 14, scope: !1271, inlinedAt: !1071)
!1279 = !DILocation(line: 337, column: 8, scope: !108, inlinedAt: !1071)
!1280 = !DILocation(line: 361, column: 27, scope: !1271, inlinedAt: !1071)
!1281 = !{!1274, !1124, i64 72}
!1282 = !DILocation(line: 336, column: 10, scope: !108, inlinedAt: !1071)
!1283 = !DILocation(line: 369, column: 7, scope: !1284, inlinedAt: !1071)
!1284 = distinct !DILexicalBlock(scope: !108, file: !3, line: 369, column: 7)
!1285 = !DILocation(line: 369, column: 7, scope: !108, inlinedAt: !1071)
!1286 = !DILocation(line: 188, column: 21, scope: !219, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 370, column: 5, scope: !1284, inlinedAt: !1071)
!1288 = !DILocation(line: 188, column: 34, scope: !219, inlinedAt: !1287)
!1289 = !DILocation(line: 192, column: 7, scope: !1290, inlinedAt: !1287)
!1290 = distinct !DILexicalBlock(scope: !219, file: !3, line: 192, column: 7)
!1291 = !DILocation(line: 192, column: 11, scope: !1290, inlinedAt: !1287)
!1292 = !DILocation(line: 192, column: 7, scope: !219, inlinedAt: !1287)
!1293 = !DILocation(line: 193, column: 5, scope: !1290, inlinedAt: !1287)
!1294 = !DILocation(line: 195, column: 16, scope: !227, inlinedAt: !1287)
!1295 = !DILocation(line: 195, column: 23, scope: !227, inlinedAt: !1287)
!1296 = !DILocation(line: 195, column: 26, scope: !227, inlinedAt: !1287)
!1297 = !DILocation(line: 195, column: 30, scope: !227, inlinedAt: !1287)
!1298 = !DILocation(line: 195, column: 45, scope: !227, inlinedAt: !1287)
!1299 = !DILocation(line: 195, column: 60, scope: !227, inlinedAt: !1287)
!1300 = !DILocation(line: 195, column: 52, scope: !227, inlinedAt: !1287)
!1301 = !DILocation(line: 197, column: 30, scope: !226, inlinedAt: !1287)
!1302 = !DILocation(line: 197, column: 26, scope: !226, inlinedAt: !1287)
!1303 = !DILocation(line: 197, column: 11, scope: !226, inlinedAt: !1287)
!1304 = !DILocation(line: 198, column: 24, scope: !1305, inlinedAt: !1287)
!1305 = distinct !DILexicalBlock(scope: !226, file: !3, line: 198, column: 11)
!1306 = !DILocation(line: 198, column: 11, scope: !226, inlinedAt: !1287)
!1307 = !DILocation(line: 205, column: 11, scope: !1308, inlinedAt: !1287)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 205, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 205, column: 11)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 201, column: 9)
!1311 = !DILocation(line: 205, column: 11, scope: !1309, inlinedAt: !1287)
!1312 = !DILocation(line: 206, column: 11, scope: !1310, inlinedAt: !1287)
!1313 = !DILocation(line: 209, column: 11, scope: !1310, inlinedAt: !1287)
!1314 = !DILocation(line: 213, column: 10, scope: !219, inlinedAt: !1287)
!1315 = !DILocation(line: 213, column: 3, scope: !219, inlinedAt: !1287)
!1316 = !DILocation(line: 0, scope: !219, inlinedAt: !1287)
!1317 = !DILocation(line: 370, column: 5, scope: !1284, inlinedAt: !1071)
!1318 = !DILocation(line: 372, column: 5, scope: !1284, inlinedAt: !1071)
!1319 = !DILocation(line: 375, column: 7, scope: !207, inlinedAt: !1071)
!1320 = !DILocation(line: 375, column: 7, scope: !108, inlinedAt: !1071)
!1321 = !DILocation(line: 377, column: 7, scope: !206, inlinedAt: !1071)
!1322 = !DILocation(line: 378, column: 13, scope: !206, inlinedAt: !1071)
!1323 = !DILocation(line: 379, column: 13, scope: !206, inlinedAt: !1071)
!1324 = !DILocation(line: 737, column: 25, scope: !1216, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 382, column: 7, scope: !206, inlinedAt: !1071)
!1326 = !DILocation(line: 737, column: 52, scope: !1216, inlinedAt: !1325)
!1327 = !DILocation(line: 737, column: 64, scope: !1216, inlinedAt: !1325)
!1328 = !DILocation(line: 739, column: 29, scope: !1216, inlinedAt: !1325)
!1329 = !DILocation(line: 739, column: 15, scope: !1216, inlinedAt: !1325)
!1330 = !DILocation(line: 740, column: 3, scope: !1216, inlinedAt: !1325)
!1331 = !DILocation(line: 741, column: 19, scope: !1216, inlinedAt: !1325)
!1332 = !DILocation(line: 741, column: 10, scope: !1216, inlinedAt: !1325)
!1333 = !DILocation(line: 741, column: 13, scope: !1216, inlinedAt: !1325)
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"stzncpy: argument 0"}
!1336 = distinct !{!1336, !"stzncpy"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"stzncpy: argument 1"}
!1339 = !DILocation(line: 740, column: 14, scope: !1216, inlinedAt: !1325)
!1340 = !DILocation(line: 740, column: 24, scope: !1216, inlinedAt: !1325)
!1341 = !DILocation(line: 740, column: 27, scope: !1216, inlinedAt: !1325)
!1342 = !DILocation(line: 742, column: 9, scope: !1216, inlinedAt: !1325)
!1343 = !DILocation(line: 385, column: 17, scope: !206, inlinedAt: !1071)
!1344 = !DILocation(line: 386, column: 11, scope: !1345, inlinedAt: !1071)
!1345 = distinct !DILexicalBlock(scope: !206, file: !3, line: 386, column: 11)
!1346 = !DILocation(line: 386, column: 11, scope: !206, inlinedAt: !1071)
!1347 = !DILocation(line: 387, column: 17, scope: !1345, inlinedAt: !1071)
!1348 = !DILocation(line: 387, column: 20, scope: !1345, inlinedAt: !1071)
!1349 = !DILocation(line: 387, column: 9, scope: !1345, inlinedAt: !1071)
!1350 = !DILocation(line: 0, scope: !206, inlinedAt: !1071)
!1351 = !DILocation(line: 389, column: 11, scope: !1352, inlinedAt: !1071)
!1352 = distinct !DILexicalBlock(scope: !206, file: !3, line: 389, column: 11)
!1353 = !DILocation(line: 389, column: 20, scope: !1352, inlinedAt: !1071)
!1354 = !DILocation(line: 389, column: 11, scope: !206, inlinedAt: !1071)
!1355 = !DILocation(line: 392, column: 18, scope: !1356, inlinedAt: !1071)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 390, column: 9)
!1357 = !DILocation(line: 393, column: 9, scope: !1356, inlinedAt: !1071)
!1358 = !DILocation(line: 395, column: 13, scope: !1359, inlinedAt: !1071)
!1359 = distinct !DILexicalBlock(scope: !206, file: !3, line: 395, column: 11)
!1360 = !DILocation(line: 395, column: 11, scope: !206, inlinedAt: !1071)
!1361 = !DILocation(line: 398, column: 11, scope: !1362, inlinedAt: !1071)
!1362 = distinct !DILexicalBlock(scope: !206, file: !3, line: 398, column: 11)
!1363 = !DILocation(line: 0, scope: !1364, inlinedAt: !1071)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 410, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 409, column: 9)
!1366 = !DILocation(line: 398, column: 11, scope: !206, inlinedAt: !1071)
!1367 = !DILocation(line: 400, column: 41, scope: !1368, inlinedAt: !1071)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 400, column: 15)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 399, column: 9)
!1370 = !DILocation(line: 400, column: 39, scope: !1368, inlinedAt: !1071)
!1371 = !DILocation(line: 400, column: 58, scope: !1368, inlinedAt: !1071)
!1372 = !DILocation(line: 400, column: 23, scope: !1368, inlinedAt: !1071)
!1373 = !DILocation(line: 400, column: 15, scope: !1369, inlinedAt: !1071)
!1374 = !DILocation(line: 406, column: 11, scope: !1369, inlinedAt: !1071)
!1375 = !DILocation(line: 402, column: 23, scope: !1376, inlinedAt: !1071)
!1376 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 401, column: 13)
!1377 = !DILocation(line: 403, column: 21, scope: !1376, inlinedAt: !1071)
!1378 = !DILocation(line: 403, column: 15, scope: !1376, inlinedAt: !1071)
!1379 = !DILocation(line: 404, column: 34, scope: !1376, inlinedAt: !1071)
!1380 = !DILocation(line: 404, column: 25, scope: !1376, inlinedAt: !1071)
!1381 = !DILocation(line: 404, column: 23, scope: !1376, inlinedAt: !1071)
!1382 = !DILocation(line: 405, column: 13, scope: !1376, inlinedAt: !1071)
!1383 = !DILocation(line: 407, column: 9, scope: !1369, inlinedAt: !1071)
!1384 = !DILocation(line: 410, column: 39, scope: !1364, inlinedAt: !1071)
!1385 = !DILocation(line: 410, column: 23, scope: !1364, inlinedAt: !1071)
!1386 = !DILocation(line: 410, column: 15, scope: !1365, inlinedAt: !1071)
!1387 = !DILocation(line: 416, column: 11, scope: !1365, inlinedAt: !1071)
!1388 = !DILocation(line: 412, column: 23, scope: !1389, inlinedAt: !1071)
!1389 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 411, column: 13)
!1390 = !DILocation(line: 413, column: 21, scope: !1389, inlinedAt: !1071)
!1391 = !DILocation(line: 413, column: 15, scope: !1389, inlinedAt: !1071)
!1392 = !DILocation(line: 414, column: 34, scope: !1389, inlinedAt: !1071)
!1393 = !DILocation(line: 414, column: 25, scope: !1389, inlinedAt: !1071)
!1394 = !DILocation(line: 414, column: 23, scope: !1389, inlinedAt: !1071)
!1395 = !DILocation(line: 415, column: 13, scope: !1389, inlinedAt: !1071)
!1396 = !DILocation(line: 419, column: 11, scope: !206, inlinedAt: !1071)
!1397 = !DILocation(line: 420, column: 9, scope: !1398, inlinedAt: !1071)
!1398 = distinct !DILexicalBlock(scope: !206, file: !3, line: 419, column: 11)
!1399 = !DILocation(line: 421, column: 5, scope: !207, inlinedAt: !1071)
!1400 = !DILocation(line: 421, column: 5, scope: !206, inlinedAt: !1071)
!1401 = !DILocation(line: 424, column: 11, scope: !1402, inlinedAt: !1071)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 424, column: 11)
!1403 = distinct !DILexicalBlock(scope: !207, file: !3, line: 423, column: 5)
!1404 = !DILocation(line: 424, column: 19, scope: !1402, inlinedAt: !1071)
!1405 = !DILocation(line: 424, column: 11, scope: !1403, inlinedAt: !1071)
!1406 = !DILocation(line: 430, column: 8, scope: !1403, inlinedAt: !1071)
!1407 = !DILocation(line: 426, column: 19, scope: !1408, inlinedAt: !1071)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 425, column: 9)
!1409 = !DILocation(line: 427, column: 17, scope: !1408, inlinedAt: !1071)
!1410 = !DILocation(line: 427, column: 11, scope: !1408, inlinedAt: !1071)
!1411 = !DILocation(line: 428, column: 30, scope: !1408, inlinedAt: !1071)
!1412 = !DILocation(line: 428, column: 21, scope: !1408, inlinedAt: !1071)
!1413 = !DILocation(line: 428, column: 19, scope: !1408, inlinedAt: !1071)
!1414 = !DILocation(line: 429, column: 9, scope: !1408, inlinedAt: !1071)
!1415 = !DILocation(line: 430, column: 16, scope: !1403, inlinedAt: !1071)
!1416 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 436, column: 15, scope: !108, inlinedAt: !1071)
!1418 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1417)
!1419 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1417)
!1420 = !{!1146, !1042, i64 340}
!1421 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1417)
!1422 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1417)
!1423 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1417)
!1424 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1417)
!1425 = distinct !DILexicalBlock(scope: !235, file: !3, line: 231, column: 7)
!1426 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1417)
!1427 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1417)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 232, column: 5)
!1429 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1417)
!1430 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1417)
!1431 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1417)
!1432 = !DILocalVariable(name: "t", arg: 1, scope: !1433, file: !910, line: 686, type: !29)
!1433 = distinct !DISubprogram(name: "timetostr", scope: !910, file: !910, line: 686, type: !1434, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!26, !29, !26}
!1436 = !{!1432, !1437}
!1437 = !DILocalVariable(name: "buf", arg: 2, scope: !1433, file: !910, line: 686, type: !26)
!1438 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1417)
!1440 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1439)
!1441 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1417)
!1442 = !DILocation(line: 0, scope: !1425, inlinedAt: !1417)
!1443 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1417)
!1444 = !DILocation(line: 437, column: 15, scope: !108, inlinedAt: !1071)
!1445 = !DILocation(line: 434, column: 3, scope: !108, inlinedAt: !1071)
!1446 = !DILocation(line: 438, column: 1, scope: !108, inlinedAt: !1071)
!1447 = !DILocation(line: 593, column: 13, scope: !1072, inlinedAt: !1084)
!1448 = !DILocation(line: 594, column: 34, scope: !1098, inlinedAt: !1084)
!1449 = !DILocation(line: 594, column: 37, scope: !1098, inlinedAt: !1084)
!1450 = !DILocation(line: 594, column: 20, scope: !1072, inlinedAt: !1084)
!1451 = !DILocation(line: 514, column: 36, scope: !262, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 595, column: 13, scope: !1098, inlinedAt: !1084)
!1453 = !DILocation(line: 517, column: 24, scope: !262, inlinedAt: !1452)
!1454 = !DILocation(line: 517, column: 42, scope: !262, inlinedAt: !1452)
!1455 = !DILocation(line: 520, column: 8, scope: !1456, inlinedAt: !1452)
!1456 = distinct !DILexicalBlock(scope: !262, file: !3, line: 520, column: 7)
!1457 = !DILocation(line: 520, column: 7, scope: !262, inlinedAt: !1452)
!1458 = !DILocation(line: 521, column: 35, scope: !1456, inlinedAt: !1452)
!1459 = !DILocation(line: 521, column: 27, scope: !1456, inlinedAt: !1452)
!1460 = !DILocation(line: 521, column: 51, scope: !1456, inlinedAt: !1452)
!1461 = !DILocation(line: 521, column: 18, scope: !1456, inlinedAt: !1452)
!1462 = !DILocation(line: 521, column: 16, scope: !1456, inlinedAt: !1452)
!1463 = !DILocation(line: 521, column: 5, scope: !1456, inlinedAt: !1452)
!1464 = !DILocation(line: 522, column: 3, scope: !262, inlinedAt: !1452)
!1465 = !DILocation(line: 524, column: 8, scope: !1466, inlinedAt: !1452)
!1466 = distinct !DILexicalBlock(scope: !262, file: !3, line: 524, column: 7)
!1467 = !DILocation(line: 524, column: 7, scope: !262, inlinedAt: !1452)
!1468 = !DILocation(line: 525, column: 32, scope: !1466, inlinedAt: !1452)
!1469 = !DILocation(line: 525, column: 24, scope: !1466, inlinedAt: !1452)
!1470 = !DILocation(line: 525, column: 44, scope: !1466, inlinedAt: !1452)
!1471 = !DILocation(line: 525, column: 15, scope: !1466, inlinedAt: !1452)
!1472 = !DILocation(line: 525, column: 13, scope: !1466, inlinedAt: !1452)
!1473 = !DILocation(line: 525, column: 5, scope: !1466, inlinedAt: !1452)
!1474 = !DILocation(line: 526, column: 3, scope: !262, inlinedAt: !1452)
!1475 = !DILocation(line: 528, column: 32, scope: !262, inlinedAt: !1452)
!1476 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 528, column: 44, scope: !262, inlinedAt: !1452)
!1478 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1477)
!1479 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1477)
!1480 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1477)
!1481 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1477)
!1482 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1477)
!1483 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1477)
!1484 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1477)
!1485 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1477)
!1486 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1477)
!1487 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1477)
!1488 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1477)
!1489 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1477)
!1491 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1490)
!1492 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1477)
!1493 = !DILocation(line: 0, scope: !1425, inlinedAt: !1477)
!1494 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1477)
!1495 = !DILocalVariable(name: "c", arg: 1, scope: !1496, file: !1497, line: 272, type: !73)
!1496 = distinct !DISubprogram(name: "c_isprint", scope: !1497, file: !1497, line: 272, type: !1498, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1500)
!1497 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!38, !73}
!1500 = !{!1495}
!1501 = !DILocation(line: 272, column: 16, scope: !1496, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 529, column: 23, scope: !262, inlinedAt: !1452)
!1503 = !DILocation(line: 274, column: 3, scope: !1496, inlinedAt: !1502)
!1504 = !DILocation(line: 529, column: 42, scope: !262, inlinedAt: !1452)
!1505 = !DILocation(line: 529, column: 23, scope: !262, inlinedAt: !1452)
!1506 = !DILocation(line: 528, column: 3, scope: !262, inlinedAt: !1452)
!1507 = !DILocation(line: 595, column: 13, scope: !1098, inlinedAt: !1084)
!1508 = !DILocation(line: 596, column: 34, scope: !1097, inlinedAt: !1084)
!1509 = !DILocation(line: 596, column: 37, scope: !1097, inlinedAt: !1084)
!1510 = !DILocation(line: 596, column: 20, scope: !1098, inlinedAt: !1084)
!1511 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1512, file: !3, line: 441, type: !111)
!1512 = distinct !DISubprogram(name: "print_boottime", scope: !3, file: !3, line: 441, type: !263, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1513)
!1513 = !{!1511}
!1514 = !DILocation(line: 441, column: 36, scope: !1512, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 597, column: 13, scope: !1097, inlinedAt: !1084)
!1516 = !DILocation(line: 443, column: 32, scope: !1512, inlinedAt: !1515)
!1517 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 444, column: 15, scope: !1512, inlinedAt: !1515)
!1519 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1518)
!1520 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1518)
!1521 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1518)
!1522 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1518)
!1523 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1518)
!1524 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1518)
!1525 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1518)
!1526 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1518)
!1527 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1518)
!1528 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1518)
!1529 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1518)
!1530 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1518)
!1532 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1531)
!1533 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1518)
!1534 = !DILocation(line: 0, scope: !1425, inlinedAt: !1518)
!1535 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1518)
!1536 = !DILocation(line: 443, column: 3, scope: !1512, inlinedAt: !1515)
!1537 = !DILocation(line: 597, column: 13, scope: !1097, inlinedAt: !1084)
!1538 = !DILocation(line: 601, column: 37, scope: !1096, inlinedAt: !1084)
!1539 = !DILocation(line: 601, column: 40, scope: !1096, inlinedAt: !1084)
!1540 = !DILocation(line: 601, column: 20, scope: !1097, inlinedAt: !1084)
!1541 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1542, file: !3, line: 506, type: !111)
!1542 = distinct !DISubprogram(name: "print_clockchange", scope: !3, file: !3, line: 506, type: !263, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1543)
!1543 = !{!1541}
!1544 = !DILocation(line: 506, column: 39, scope: !1542, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 602, column: 13, scope: !1096, inlinedAt: !1084)
!1546 = !DILocation(line: 509, column: 32, scope: !1542, inlinedAt: !1545)
!1547 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 510, column: 15, scope: !1542, inlinedAt: !1545)
!1549 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1548)
!1550 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1548)
!1551 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1548)
!1552 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1548)
!1553 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1548)
!1554 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1548)
!1555 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1548)
!1556 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1548)
!1557 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1548)
!1558 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1548)
!1559 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1548)
!1560 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1548)
!1562 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1561)
!1563 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1548)
!1564 = !DILocation(line: 0, scope: !1425, inlinedAt: !1548)
!1565 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1548)
!1566 = !DILocation(line: 509, column: 3, scope: !1542, inlinedAt: !1545)
!1567 = !DILocation(line: 602, column: 13, scope: !1096, inlinedAt: !1084)
!1568 = !DILocation(line: 603, column: 35, scope: !1095, inlinedAt: !1084)
!1569 = !DILocation(line: 603, column: 38, scope: !1095, inlinedAt: !1084)
!1570 = !DILocation(line: 603, column: 20, scope: !1096, inlinedAt: !1084)
!1571 = !DILocation(line: 495, column: 37, scope: !1089, inlinedAt: !1094)
!1572 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1573, file: !3, line: 448, type: !111)
!1573 = distinct !DISubprogram(name: "make_id_equals_comment", scope: !3, file: !3, line: 448, type: !1574, isLocal: true, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!26, !111}
!1576 = !{!1572, !1577, !1578}
!1577 = !DILocalVariable(name: "utmpsize", scope: !1573, file: !3, line: 450, type: !215)
!1578 = !DILocalVariable(name: "comment", scope: !1573, file: !3, line: 451, type: !26)
!1579 = !DILocation(line: 448, column: 44, scope: !1573, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 497, column: 19, scope: !1089, inlinedAt: !1094)
!1581 = !DILocation(line: 450, column: 10, scope: !1573, inlinedAt: !1580)
!1582 = !DILocation(line: 451, column: 36, scope: !1573, inlinedAt: !1580)
!1583 = !DILocation(line: 451, column: 28, scope: !1573, inlinedAt: !1580)
!1584 = !DILocation(line: 451, column: 57, scope: !1573, inlinedAt: !1580)
!1585 = !DILocation(line: 451, column: 19, scope: !1573, inlinedAt: !1580)
!1586 = !DILocation(line: 451, column: 9, scope: !1573, inlinedAt: !1580)
!1587 = !DILocation(line: 453, column: 20, scope: !1573, inlinedAt: !1580)
!1588 = !DILocalVariable(name: "__dest", arg: 1, scope: !1589, file: !1590, line: 88, type: !1219)
!1589 = distinct !DISubprogram(name: "strcpy", scope: !1590, file: !1590, line: 88, type: !1591, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1593)
!1590 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!26, !1219, !1220}
!1593 = !{!1588, !1594}
!1594 = !DILocalVariable(name: "__src", arg: 2, scope: !1589, file: !1590, line: 88, type: !1220)
!1595 = !DILocation(line: 88, column: 1, scope: !1589, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 453, column: 3, scope: !1573, inlinedAt: !1580)
!1597 = !DILocation(line: 90, column: 49, scope: !1589, inlinedAt: !1596)
!1598 = !DILocation(line: 90, column: 10, scope: !1589, inlinedAt: !1596)
!1599 = !DILocation(line: 454, column: 21, scope: !1573, inlinedAt: !1580)
!1600 = !DILocalVariable(name: "__dest", arg: 1, scope: !1601, file: !1590, line: 133, type: !1219)
!1601 = distinct !DISubprogram(name: "strncat", scope: !1590, file: !1590, line: 133, type: !1217, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1602)
!1602 = !{!1600, !1603, !1604}
!1603 = !DILocalVariable(name: "__src", arg: 2, scope: !1601, file: !1590, line: 133, type: !1220)
!1604 = !DILocalVariable(name: "__len", arg: 3, scope: !1601, file: !1590, line: 133, type: !215)
!1605 = !DILocation(line: 133, column: 1, scope: !1601, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 454, column: 3, scope: !1573, inlinedAt: !1580)
!1607 = !DILocation(line: 136, column: 10, scope: !1601, inlinedAt: !1606)
!1608 = !DILocation(line: 497, column: 9, scope: !1089, inlinedAt: !1094)
!1609 = !DILocation(line: 500, column: 54, scope: !1089, inlinedAt: !1094)
!1610 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 501, column: 15, scope: !1089, inlinedAt: !1094)
!1612 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1611)
!1613 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1611)
!1614 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1611)
!1615 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1611)
!1616 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1611)
!1617 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1611)
!1618 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1611)
!1619 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1611)
!1620 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1611)
!1621 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1611)
!1622 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1611)
!1623 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1611)
!1625 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1624)
!1626 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1611)
!1627 = !DILocation(line: 0, scope: !1425, inlinedAt: !1611)
!1628 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1611)
!1629 = !DILocation(line: 500, column: 3, scope: !1089, inlinedAt: !1094)
!1630 = !DILocation(line: 502, column: 3, scope: !1089, inlinedAt: !1094)
!1631 = !DILocation(line: 503, column: 1, scope: !1089, inlinedAt: !1094)
!1632 = !DILocation(line: 604, column: 13, scope: !1095, inlinedAt: !1084)
!1633 = !DILocation(line: 605, column: 31, scope: !1106, inlinedAt: !1084)
!1634 = !DILocation(line: 605, column: 34, scope: !1106, inlinedAt: !1084)
!1635 = !DILocation(line: 605, column: 20, scope: !1095, inlinedAt: !1084)
!1636 = !DILocation(line: 482, column: 33, scope: !1100, inlinedAt: !1105)
!1637 = !DILocation(line: 448, column: 44, scope: !1573, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 484, column: 19, scope: !1100, inlinedAt: !1105)
!1639 = !DILocation(line: 450, column: 10, scope: !1573, inlinedAt: !1638)
!1640 = !DILocation(line: 451, column: 36, scope: !1573, inlinedAt: !1638)
!1641 = !DILocation(line: 451, column: 28, scope: !1573, inlinedAt: !1638)
!1642 = !DILocation(line: 451, column: 57, scope: !1573, inlinedAt: !1638)
!1643 = !DILocation(line: 451, column: 19, scope: !1573, inlinedAt: !1638)
!1644 = !DILocation(line: 451, column: 9, scope: !1573, inlinedAt: !1638)
!1645 = !DILocation(line: 453, column: 20, scope: !1573, inlinedAt: !1638)
!1646 = !DILocation(line: 88, column: 1, scope: !1589, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 453, column: 3, scope: !1573, inlinedAt: !1638)
!1648 = !DILocation(line: 90, column: 49, scope: !1589, inlinedAt: !1647)
!1649 = !DILocation(line: 90, column: 10, scope: !1589, inlinedAt: !1647)
!1650 = !DILocation(line: 454, column: 21, scope: !1573, inlinedAt: !1638)
!1651 = !DILocation(line: 133, column: 1, scope: !1601, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 454, column: 3, scope: !1573, inlinedAt: !1638)
!1653 = !DILocation(line: 136, column: 10, scope: !1601, inlinedAt: !1652)
!1654 = !DILocation(line: 484, column: 9, scope: !1100, inlinedAt: !1105)
!1655 = !DILocation(line: 489, column: 19, scope: !1100, inlinedAt: !1105)
!1656 = !DILocation(line: 489, column: 62, scope: !1100, inlinedAt: !1105)
!1657 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 490, column: 15, scope: !1100, inlinedAt: !1105)
!1659 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1658)
!1660 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1658)
!1661 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1658)
!1662 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1658)
!1663 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1658)
!1664 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1658)
!1665 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1658)
!1666 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1658)
!1667 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1658)
!1668 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1658)
!1669 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1658)
!1670 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1658)
!1672 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1671)
!1673 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1658)
!1674 = !DILocation(line: 0, scope: !1425, inlinedAt: !1658)
!1675 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1658)
!1676 = !DILocation(line: 489, column: 3, scope: !1100, inlinedAt: !1105)
!1677 = !DILocation(line: 491, column: 3, scope: !1100, inlinedAt: !1105)
!1678 = !DILocation(line: 492, column: 1, scope: !1100, inlinedAt: !1105)
!1679 = !DILocation(line: 606, column: 13, scope: !1106, inlinedAt: !1084)
!1680 = !DILocation(line: 607, column: 35, scope: !1109, inlinedAt: !1084)
!1681 = !DILocation(line: 607, column: 38, scope: !1109, inlinedAt: !1084)
!1682 = !DILocation(line: 607, column: 20, scope: !1106, inlinedAt: !1084)
!1683 = !DILocation(line: 459, column: 37, scope: !274, inlinedAt: !1108)
!1684 = !DILocation(line: 448, column: 44, scope: !1573, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 462, column: 19, scope: !274, inlinedAt: !1108)
!1686 = !DILocation(line: 450, column: 10, scope: !1573, inlinedAt: !1685)
!1687 = !DILocation(line: 451, column: 36, scope: !1573, inlinedAt: !1685)
!1688 = !DILocation(line: 451, column: 28, scope: !1573, inlinedAt: !1685)
!1689 = !DILocation(line: 451, column: 57, scope: !1573, inlinedAt: !1685)
!1690 = !DILocation(line: 451, column: 19, scope: !1573, inlinedAt: !1685)
!1691 = !DILocation(line: 451, column: 9, scope: !1573, inlinedAt: !1685)
!1692 = !DILocation(line: 453, column: 20, scope: !1573, inlinedAt: !1685)
!1693 = !DILocation(line: 88, column: 1, scope: !1589, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 453, column: 3, scope: !1573, inlinedAt: !1685)
!1695 = !DILocation(line: 90, column: 49, scope: !1589, inlinedAt: !1694)
!1696 = !DILocation(line: 90, column: 10, scope: !1589, inlinedAt: !1694)
!1697 = !DILocation(line: 454, column: 21, scope: !1573, inlinedAt: !1685)
!1698 = !DILocation(line: 133, column: 1, scope: !1601, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 454, column: 3, scope: !1573, inlinedAt: !1685)
!1700 = !DILocation(line: 136, column: 10, scope: !1601, inlinedAt: !1699)
!1701 = !DILocation(line: 462, column: 9, scope: !274, inlinedAt: !1108)
!1702 = !DILocation(line: 465, column: 8, scope: !1703, inlinedAt: !1108)
!1703 = distinct !DILexicalBlock(scope: !274, file: !3, line: 465, column: 7)
!1704 = !DILocation(line: 465, column: 7, scope: !274, inlinedAt: !1108)
!1705 = !DILocation(line: 466, column: 32, scope: !1703, inlinedAt: !1108)
!1706 = !DILocation(line: 466, column: 24, scope: !1703, inlinedAt: !1108)
!1707 = !DILocation(line: 468, column: 34, scope: !1703, inlinedAt: !1108)
!1708 = !DILocation(line: 468, column: 26, scope: !1703, inlinedAt: !1108)
!1709 = !DILocation(line: 468, column: 24, scope: !1703, inlinedAt: !1108)
!1710 = !DILocation(line: 470, column: 24, scope: !1703, inlinedAt: !1108)
!1711 = !DILocation(line: 466, column: 15, scope: !1703, inlinedAt: !1108)
!1712 = !DILocation(line: 466, column: 13, scope: !1703, inlinedAt: !1108)
!1713 = !DILocation(line: 466, column: 5, scope: !1703, inlinedAt: !1108)
!1714 = !DILocation(line: 471, column: 3, scope: !274, inlinedAt: !1108)
!1715 = !{!1146, !1147, i64 332}
!1716 = !{!1146, !1147, i64 334}
!1717 = !DILocation(line: 476, column: 54, scope: !274, inlinedAt: !1108)
!1718 = !DILocation(line: 218, column: 33, scope: !235, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 477, column: 15, scope: !274, inlinedAt: !1108)
!1720 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1719)
!1721 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1719)
!1722 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1719)
!1723 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1719)
!1724 = !DILocation(line: 229, column: 14, scope: !235, inlinedAt: !1719)
!1725 = !DILocation(line: 231, column: 7, scope: !1425, inlinedAt: !1719)
!1726 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1719)
!1727 = !DILocation(line: 233, column: 34, scope: !1428, inlinedAt: !1719)
!1728 = !DILocation(line: 233, column: 7, scope: !1428, inlinedAt: !1719)
!1729 = !DILocation(line: 234, column: 7, scope: !1428, inlinedAt: !1719)
!1730 = !DILocation(line: 237, column: 23, scope: !1425, inlinedAt: !1719)
!1731 = !DILocation(line: 686, column: 19, scope: !1433, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 237, column: 12, scope: !1425, inlinedAt: !1719)
!1733 = !DILocation(line: 689, column: 13, scope: !1433, inlinedAt: !1732)
!1734 = !DILocation(line: 237, column: 5, scope: !1425, inlinedAt: !1719)
!1735 = !DILocation(line: 0, scope: !1425, inlinedAt: !1719)
!1736 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1719)
!1737 = !DILocation(line: 477, column: 60, scope: !274, inlinedAt: !1108)
!1738 = !DILocation(line: 476, column: 3, scope: !274, inlinedAt: !1108)
!1739 = !DILocation(line: 478, column: 3, scope: !274, inlinedAt: !1108)
!1740 = !DILocation(line: 479, column: 1, scope: !274, inlinedAt: !1108)
!1741 = !DILocation(line: 608, column: 13, scope: !1109, inlinedAt: !1084)
!1742 = !DILocation(line: 611, column: 11, scope: !1743, inlinedAt: !1084)
!1743 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 611, column: 11)
!1744 = !DILocation(line: 611, column: 11, scope: !1075, inlinedAt: !1084)
!1745 = !DILocation(line: 612, column: 20, scope: !1743, inlinedAt: !1084)
!1746 = !DILocation(line: 612, column: 9, scope: !1743, inlinedAt: !1084)
!1747 = !DILocation(line: 0, scope: !1076, inlinedAt: !1084)
!1748 = !DILocation(line: 614, column: 15, scope: !1075, inlinedAt: !1084)
!1749 = distinct !{!1749, !1750, !1751}
!1750 = !DILocation(line: 586, column: 3, scope: !1076)
!1751 = !DILocation(line: 615, column: 5, scope: !1076)
!1752 = !DILocation(line: 634, column: 9, scope: !1061)
!1753 = !DILocation(line: 634, column: 3, scope: !1061)
!1754 = !DILocation(line: 635, column: 1, scope: !1061)
!1755 = !DILocation(line: 244, column: 17, scope: !76)
!1756 = !DILocation(line: 244, column: 38, scope: !76)
!1757 = !DILocation(line: 244, column: 55, scope: !76)
!1758 = !DILocation(line: 245, column: 17, scope: !76)
!1759 = !DILocation(line: 245, column: 38, scope: !76)
!1760 = !DILocation(line: 246, column: 25, scope: !76)
!1761 = !DILocation(line: 246, column: 47, scope: !76)
!1762 = !DILocation(line: 246, column: 65, scope: !76)
!1763 = !DILocation(line: 247, column: 25, scope: !76)
!1764 = !DILocation(line: 247, column: 46, scope: !76)
!1765 = !DILocation(line: 250, column: 3, scope: !76)
!1766 = !DILocation(line: 251, column: 3, scope: !76)
!1767 = !DILocation(line: 251, column: 8, scope: !76)
!1768 = !DILocation(line: 252, column: 3, scope: !76)
!1769 = !DILocation(line: 252, column: 8, scope: !76)
!1770 = !DILocation(line: 256, column: 11, scope: !76)
!1771 = !DILocation(line: 258, column: 20, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !76, file: !3, line: 258, column: 7)
!1773 = !DILocation(line: 258, column: 37, scope: !1772)
!1774 = !DILocation(line: 258, column: 40, scope: !1772)
!1775 = !DILocation(line: 258, column: 54, scope: !1772)
!1776 = !DILocation(line: 258, column: 7, scope: !76)
!1777 = !DILocation(line: 259, column: 5, scope: !1772)
!1778 = !DILocation(line: 261, column: 13, scope: !1772)
!1779 = !DILocation(line: 263, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !76, file: !3, line: 263, column: 7)
!1781 = !DILocation(line: 263, column: 24, scope: !1780)
!1782 = !DILocation(line: 263, column: 37, scope: !1780)
!1783 = !DILocation(line: 263, column: 7, scope: !76)
!1784 = !DILocation(line: 264, column: 5, scope: !1780)
!1785 = !DILocation(line: 266, column: 12, scope: !1780)
!1786 = !DILocation(line: 268, column: 24, scope: !76)
!1787 = !DILocation(line: 268, column: 43, scope: !76)
!1788 = !DILocation(line: 268, column: 15, scope: !76)
!1789 = !DILocation(line: 253, column: 9, scope: !76)
!1790 = !DILocation(line: 269, column: 7, scope: !76)
!1791 = !DILocation(line: 270, column: 5, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !76, file: !3, line: 269, column: 7)
!1793 = !DILocation(line: 272, column: 16, scope: !1792)
!1794 = !DILocation(line: 274, column: 9, scope: !76)
!1795 = !DILocation(line: 250, column: 9, scope: !76)
!1796 = !DILocation(line: 254, column: 7, scope: !76)
!1797 = !DILocation(line: 298, column: 11, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !76, file: !3, line: 298, column: 7)
!1799 = !DILocation(line: 298, column: 7, scope: !76)
!1800 = !DILocation(line: 299, column: 5, scope: !1798)
!1801 = !DILocation(line: 303, column: 15, scope: !102)
!1802 = !DILocation(line: 303, column: 21, scope: !102)
!1803 = !DILocation(line: 303, column: 19, scope: !102)
!1804 = !DILocation(line: 303, column: 11, scope: !102)
!1805 = !DILocation(line: 304, column: 5, scope: !102)
!1806 = !DILocation(line: 0, scope: !102)
!1807 = !DILocation(line: 304, column: 13, scope: !102)
!1808 = !DILocation(line: 304, column: 12, scope: !102)
!1809 = !DILocation(line: 304, column: 17, scope: !102)
!1810 = distinct !{!1810, !1805, !1811}
!1811 = !DILocation(line: 305, column: 18, scope: !102)
!1812 = !DILocation(line: 306, column: 14, scope: !102)
!1813 = !DILocation(line: 309, column: 9, scope: !76)
!1814 = !DILocation(line: 309, column: 3, scope: !76)
!1815 = !DILocation(line: 310, column: 9, scope: !76)
!1816 = !DILocation(line: 310, column: 3, scope: !76)
!1817 = !DILocation(line: 311, column: 3, scope: !76)
!1818 = !DILocation(line: 312, column: 1, scope: !76)
!1819 = distinct !DISubprogram(name: "canon_host", scope: !320, file: !320, line: 33, type: !1820, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!26, !69}
!1822 = !{!1823}
!1823 = !DILocalVariable(name: "host", arg: 1, scope: !1819, file: !320, line: 33, type: !69)
!1824 = !DILocation(line: 33, column: 25, scope: !1819)
!1825 = !DILocation(line: 60, column: 27, scope: !319, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 35, column: 10, scope: !1819)
!1827 = !DILocation(line: 60, column: 38, scope: !319, inlinedAt: !1826)
!1828 = !DILocation(line: 62, column: 9, scope: !319, inlinedAt: !1826)
!1829 = !DILocation(line: 64, column: 3, scope: !319, inlinedAt: !1826)
!1830 = !DILocation(line: 64, column: 20, scope: !319, inlinedAt: !1826)
!1831 = !DILocation(line: 67, column: 18, scope: !319, inlinedAt: !1826)
!1832 = !{!1833, !1042, i64 0}
!1833 = !{!"addrinfo", !1042, i64 0, !1042, i64 4, !1042, i64 8, !1042, i64 12, !1042, i64 16, !935, i64 24, !935, i64 32, !935, i64 40}
!1834 = !DILocation(line: 68, column: 12, scope: !319, inlinedAt: !1826)
!1835 = !DILocation(line: 65, column: 7, scope: !319, inlinedAt: !1826)
!1836 = !DILocation(line: 69, column: 8, scope: !1837, inlinedAt: !1826)
!1837 = distinct !DILexicalBlock(scope: !319, file: !320, line: 69, column: 7)
!1838 = !DILocation(line: 69, column: 7, scope: !319, inlinedAt: !1826)
!1839 = !DILocation(line: 74, column: 24, scope: !1840, inlinedAt: !1826)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !320, line: 70, column: 5)
!1841 = !DILocation(line: 74, column: 29, scope: !1840, inlinedAt: !1826)
!1842 = !{!1833, !935, i64 32}
!1843 = !DILocation(line: 74, column: 16, scope: !1840, inlinedAt: !1826)
!1844 = !DILocation(line: 75, column: 12, scope: !1845, inlinedAt: !1826)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !320, line: 75, column: 11)
!1846 = !DILocation(line: 75, column: 19, scope: !1845, inlinedAt: !1826)
!1847 = !DILocation(line: 76, column: 18, scope: !1845, inlinedAt: !1826)
!1848 = !DILocation(line: 76, column: 9, scope: !1845, inlinedAt: !1826)
!1849 = !DILocation(line: 77, column: 21, scope: !1840, inlinedAt: !1826)
!1850 = !DILocation(line: 77, column: 7, scope: !1840, inlinedAt: !1826)
!1851 = !DILocation(line: 78, column: 5, scope: !1840, inlinedAt: !1826)
!1852 = !DILocation(line: 80, column: 14, scope: !1853, inlinedAt: !1826)
!1853 = distinct !DILexicalBlock(scope: !1837, file: !320, line: 79, column: 12)
!1854 = !DILocation(line: 80, column: 5, scope: !1853, inlinedAt: !1826)
!1855 = !DILocation(line: 0, scope: !1840, inlinedAt: !1826)
!1856 = !DILocation(line: 83, column: 1, scope: !319, inlinedAt: !1826)
!1857 = !DILocation(line: 35, column: 3, scope: !1819)
!1858 = !DILocation(line: 60, column: 27, scope: !319)
!1859 = !DILocation(line: 60, column: 38, scope: !319)
!1860 = !DILocation(line: 62, column: 9, scope: !319)
!1861 = !DILocation(line: 64, column: 3, scope: !319)
!1862 = !DILocation(line: 64, column: 20, scope: !319)
!1863 = !DILocation(line: 67, column: 18, scope: !319)
!1864 = !DILocation(line: 68, column: 12, scope: !319)
!1865 = !DILocation(line: 65, column: 7, scope: !319)
!1866 = !DILocation(line: 69, column: 8, scope: !1837)
!1867 = !DILocation(line: 69, column: 7, scope: !319)
!1868 = !DILocation(line: 74, column: 24, scope: !1840)
!1869 = !DILocation(line: 74, column: 29, scope: !1840)
!1870 = !DILocation(line: 74, column: 16, scope: !1840)
!1871 = !DILocation(line: 75, column: 12, scope: !1845)
!1872 = !DILocation(line: 75, column: 22, scope: !1845)
!1873 = !DILocation(line: 75, column: 19, scope: !1845)
!1874 = !DILocation(line: 76, column: 18, scope: !1845)
!1875 = !DILocation(line: 76, column: 9, scope: !1845)
!1876 = !DILocation(line: 77, column: 21, scope: !1840)
!1877 = !DILocation(line: 77, column: 7, scope: !1840)
!1878 = !DILocation(line: 78, column: 5, scope: !1840)
!1879 = !DILocation(line: 79, column: 12, scope: !1853)
!1880 = !DILocation(line: 79, column: 12, scope: !1837)
!1881 = !DILocation(line: 80, column: 14, scope: !1853)
!1882 = !DILocation(line: 80, column: 5, scope: !1853)
!1883 = !DILocation(line: 0, scope: !1840)
!1884 = !DILocation(line: 83, column: 1, scope: !319)
!1885 = !DILocation(line: 82, column: 3, scope: !319)
!1886 = distinct !DISubprogram(name: "ch_strerror", scope: !320, file: !320, line: 87, type: !1887, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !310)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!69}
!1889 = !DILocation(line: 89, column: 24, scope: !1886)
!1890 = !DILocation(line: 89, column: 10, scope: !1886)
!1891 = !DILocation(line: 89, column: 3, scope: !1886)
!1892 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !362, file: !362, line: 51, type: !911, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "file", arg: 1, scope: !1892, file: !362, line: 51, type: !69)
!1895 = !DILocation(line: 51, column: 41, scope: !1892)
!1896 = !DILocation(line: 53, column: 13, scope: !1892)
!1897 = !DILocation(line: 54, column: 1, scope: !1892)
!1898 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !362, file: !362, line: 88, type: !1899, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !38}
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "ignore", arg: 1, scope: !1898, file: !362, line: 88, type: !38)
!1903 = !DILocation(line: 88, column: 37, scope: !1898)
!1904 = !DILocation(line: 90, column: 16, scope: !1898)
!1905 = !{!1906, !1906, i64 0}
!1906 = !{!"_Bool", !936, i64 0}
!1907 = !DILocation(line: 91, column: 1, scope: !1898)
!1908 = distinct !DISubprogram(name: "close_stdout", scope: !362, file: !362, line: 117, type: !1171, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !1909)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "write_error", scope: !1911, file: !362, line: 122, type: !69)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !362, line: 121, column: 5)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !362, line: 119, column: 7)
!1913 = !DILocation(line: 119, column: 21, scope: !1912)
!1914 = !DILocation(line: 119, column: 7, scope: !1912)
!1915 = !DILocation(line: 119, column: 29, scope: !1912)
!1916 = !DILocation(line: 120, column: 7, scope: !1912)
!1917 = !DILocation(line: 120, column: 12, scope: !1912)
!1918 = !{i8 0, i8 2}
!1919 = !DILocation(line: 120, column: 25, scope: !1912)
!1920 = !DILocation(line: 120, column: 28, scope: !1912)
!1921 = !DILocation(line: 120, column: 34, scope: !1912)
!1922 = !DILocation(line: 119, column: 7, scope: !1908)
!1923 = !DILocation(line: 122, column: 33, scope: !1911)
!1924 = !DILocation(line: 122, column: 19, scope: !1911)
!1925 = !DILocation(line: 123, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1911, file: !362, line: 123, column: 11)
!1927 = !DILocation(line: 0, scope: !1926)
!1928 = !DILocation(line: 123, column: 11, scope: !1911)
!1929 = !DILocation(line: 124, column: 36, scope: !1926)
!1930 = !DILocation(line: 124, column: 9, scope: !1926)
!1931 = !DILocation(line: 127, column: 9, scope: !1926)
!1932 = !DILocation(line: 129, column: 14, scope: !1911)
!1933 = !DILocation(line: 129, column: 7, scope: !1911)
!1934 = !DILocation(line: 134, column: 42, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1908, file: !362, line: 134, column: 7)
!1936 = !DILocation(line: 134, column: 28, scope: !1935)
!1937 = !DILocation(line: 134, column: 50, scope: !1935)
!1938 = !DILocation(line: 134, column: 7, scope: !1908)
!1939 = !DILocation(line: 135, column: 12, scope: !1935)
!1940 = !DILocation(line: 135, column: 5, scope: !1935)
!1941 = !DILocation(line: 136, column: 1, scope: !1908)
!1942 = distinct !DISubprogram(name: "hard_locale", scope: !1943, file: !1943, line: 38, type: !1498, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !449, retainedNodes: !1944)
!1943 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "category", arg: 1, scope: !1942, file: !1943, line: 38, type: !73)
!1946 = !DILocalVariable(name: "hard", scope: !1942, file: !1943, line: 40, type: !38)
!1947 = !DILocalVariable(name: "p", scope: !1942, file: !1943, line: 41, type: !69)
!1948 = !DILocation(line: 38, column: 18, scope: !1942)
!1949 = !DILocation(line: 40, column: 8, scope: !1942)
!1950 = !DILocation(line: 41, column: 19, scope: !1942)
!1951 = !DILocation(line: 41, column: 15, scope: !1942)
!1952 = !DILocation(line: 43, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1942, file: !1943, line: 43, column: 7)
!1954 = !DILocation(line: 43, column: 7, scope: !1942)
!1955 = !DILocation(line: 47, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !1943, line: 47, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !1943, line: 46, column: 9)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1943, line: 45, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !1943, line: 44, column: 5)
!1960 = !DILocation(line: 47, column: 31, scope: !1956)
!1961 = !DILocation(line: 47, column: 36, scope: !1956)
!1962 = !DILocation(line: 47, column: 39, scope: !1956)
!1963 = !DILocation(line: 47, column: 59, scope: !1956)
!1964 = !DILocation(line: 47, column: 15, scope: !1957)
!1965 = !DILocation(line: 48, column: 13, scope: !1956)
!1966 = !DILocation(line: 71, column: 3, scope: !1942)
!1967 = distinct !DISubprogram(name: "imaxtostr", scope: !1968, file: !1968, line: 36, type: !1969, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !451, retainedNodes: !1971)
!1968 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!26, !454, !26}
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "i", arg: 1, scope: !1967, file: !1968, line: 36, type: !454)
!1973 = !DILocalVariable(name: "buf", arg: 2, scope: !1967, file: !1968, line: 36, type: !26)
!1974 = !DILocalVariable(name: "p", scope: !1967, file: !1968, line: 38, type: !26)
!1975 = !DILocation(line: 36, column: 19, scope: !1967)
!1976 = !DILocation(line: 36, column: 28, scope: !1967)
!1977 = !DILocation(line: 38, column: 17, scope: !1967)
!1978 = !DILocation(line: 38, column: 9, scope: !1967)
!1979 = !DILocation(line: 39, column: 6, scope: !1967)
!1980 = !DILocation(line: 41, column: 9, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1967, file: !1968, line: 41, column: 7)
!1982 = !DILocation(line: 41, column: 7, scope: !1967)
!1983 = !DILocation(line: 0, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 42, column: 5)
!1985 = !DILocation(line: 44, column: 24, scope: !1984)
!1986 = !DILocation(line: 44, column: 16, scope: !1984)
!1987 = !DILocation(line: 44, column: 10, scope: !1984)
!1988 = !DILocation(line: 44, column: 14, scope: !1984)
!1989 = !DILocation(line: 45, column: 17, scope: !1984)
!1990 = !DILocation(line: 45, column: 24, scope: !1984)
!1991 = !DILocation(line: 44, column: 9, scope: !1984)
!1992 = distinct !{!1992, !1993, !1994}
!1993 = !DILocation(line: 43, column: 7, scope: !1984)
!1994 = !DILocation(line: 45, column: 28, scope: !1984)
!1995 = !DILocation(line: 47, column: 8, scope: !1984)
!1996 = !DILocation(line: 47, column: 12, scope: !1984)
!1997 = !DILocation(line: 48, column: 5, scope: !1984)
!1998 = !DILocation(line: 0, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 50, column: 5)
!2000 = !DILocation(line: 52, column: 24, scope: !1999)
!2001 = !DILocation(line: 52, column: 16, scope: !1999)
!2002 = !DILocation(line: 52, column: 10, scope: !1999)
!2003 = !DILocation(line: 52, column: 14, scope: !1999)
!2004 = !DILocation(line: 53, column: 17, scope: !1999)
!2005 = !DILocation(line: 53, column: 24, scope: !1999)
!2006 = !DILocation(line: 52, column: 9, scope: !1999)
!2007 = distinct !{!2007, !2008, !2009}
!2008 = !DILocation(line: 51, column: 7, scope: !1999)
!2009 = !DILocation(line: 53, column: 28, scope: !1999)
!2010 = !DILocation(line: 56, column: 3, scope: !1967)
!2011 = distinct !DISubprogram(name: "set_program_name", scope: !376, file: !376, line: 39, type: !911, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !372, retainedNodes: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DILocalVariable(name: "argv0", arg: 1, scope: !2011, file: !376, line: 39, type: !69)
!2014 = !DILocalVariable(name: "slash", scope: !2011, file: !376, line: 46, type: !69)
!2015 = !DILocalVariable(name: "base", scope: !2011, file: !376, line: 47, type: !69)
!2016 = !DILocation(line: 39, column: 31, scope: !2011)
!2017 = !DILocation(line: 51, column: 13, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !376, line: 51, column: 7)
!2019 = !DILocation(line: 51, column: 7, scope: !2011)
!2020 = !DILocation(line: 55, column: 14, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !376, line: 52, column: 5)
!2022 = !DILocation(line: 54, column: 7, scope: !2021)
!2023 = !DILocation(line: 56, column: 7, scope: !2021)
!2024 = !DILocation(line: 59, column: 11, scope: !2011)
!2025 = !DILocation(line: 46, column: 15, scope: !2011)
!2026 = !DILocation(line: 60, column: 17, scope: !2011)
!2027 = !DILocation(line: 60, column: 33, scope: !2011)
!2028 = !DILocation(line: 60, column: 11, scope: !2011)
!2029 = !DILocation(line: 47, column: 15, scope: !2011)
!2030 = !DILocation(line: 61, column: 12, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2011, file: !376, line: 61, column: 7)
!2032 = !DILocation(line: 61, column: 20, scope: !2031)
!2033 = !DILocation(line: 61, column: 25, scope: !2031)
!2034 = !DILocation(line: 61, column: 42, scope: !2031)
!2035 = !DILocation(line: 61, column: 28, scope: !2031)
!2036 = !DILocation(line: 61, column: 61, scope: !2031)
!2037 = !DILocation(line: 61, column: 7, scope: !2011)
!2038 = !DILocation(line: 64, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !376, line: 64, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !376, line: 62, column: 5)
!2041 = !DILocation(line: 64, column: 36, scope: !2039)
!2042 = !DILocation(line: 64, column: 11, scope: !2040)
!2043 = !DILocation(line: 66, column: 24, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !376, line: 65, column: 9)
!2045 = !DILocation(line: 70, column: 41, scope: !2044)
!2046 = !DILocation(line: 72, column: 9, scope: !2044)
!2047 = !DILocation(line: 84, column: 16, scope: !2011)
!2048 = !DILocation(line: 90, column: 27, scope: !2011)
!2049 = !DILocation(line: 92, column: 1, scope: !2011)
!2050 = distinct !DISubprogram(name: "clone_quoting_options", scope: !406, file: !406, line: 122, type: !2051, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2054)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!2053, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2054 = !{!2055, !2056, !2057}
!2055 = !DILocalVariable(name: "o", arg: 1, scope: !2050, file: !406, line: 122, type: !2053)
!2056 = !DILocalVariable(name: "e", scope: !2050, file: !406, line: 124, type: !73)
!2057 = !DILocalVariable(name: "p", scope: !2050, file: !406, line: 125, type: !2053)
!2058 = !DILocation(line: 122, column: 48, scope: !2050)
!2059 = !DILocation(line: 124, column: 11, scope: !2050)
!2060 = !DILocation(line: 124, column: 7, scope: !2050)
!2061 = !DILocation(line: 125, column: 40, scope: !2050)
!2062 = !DILocation(line: 125, column: 31, scope: !2050)
!2063 = !DILocation(line: 125, column: 27, scope: !2050)
!2064 = !DILocation(line: 127, column: 9, scope: !2050)
!2065 = !DILocation(line: 128, column: 3, scope: !2050)
!2066 = distinct !DISubprogram(name: "get_quoting_style", scope: !406, file: !406, line: 133, type: !2067, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2071)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!11, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "o", arg: 1, scope: !2066, file: !406, line: 133, type: !2069)
!2073 = !DILocation(line: 133, column: 50, scope: !2066)
!2074 = !DILocation(line: 135, column: 11, scope: !2066)
!2075 = !DILocation(line: 135, column: 46, scope: !2066)
!2076 = !{!2077, !936, i64 0}
!2077 = !{!"quoting_options", !936, i64 0, !1042, i64 4, !936, i64 8, !935, i64 40, !935, i64 48}
!2078 = !DILocation(line: 135, column: 3, scope: !2066)
!2079 = distinct !DISubprogram(name: "set_quoting_style", scope: !406, file: !406, line: 141, type: !2080, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2053, !11}
!2082 = !{!2083, !2084}
!2083 = !DILocalVariable(name: "o", arg: 1, scope: !2079, file: !406, line: 141, type: !2053)
!2084 = !DILocalVariable(name: "s", arg: 2, scope: !2079, file: !406, line: 141, type: !11)
!2085 = !DILocation(line: 141, column: 44, scope: !2079)
!2086 = !DILocation(line: 141, column: 66, scope: !2079)
!2087 = !DILocation(line: 143, column: 4, scope: !2079)
!2088 = !DILocation(line: 143, column: 39, scope: !2079)
!2089 = !DILocation(line: 143, column: 45, scope: !2079)
!2090 = !DILocation(line: 144, column: 1, scope: !2079)
!2091 = distinct !DISubprogram(name: "set_char_quoting", scope: !406, file: !406, line: 152, type: !2092, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!73, !2053, !27, !73}
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2101, !2102}
!2095 = !DILocalVariable(name: "o", arg: 1, scope: !2091, file: !406, line: 152, type: !2053)
!2096 = !DILocalVariable(name: "c", arg: 2, scope: !2091, file: !406, line: 152, type: !27)
!2097 = !DILocalVariable(name: "i", arg: 3, scope: !2091, file: !406, line: 152, type: !73)
!2098 = !DILocalVariable(name: "uc", scope: !2091, file: !406, line: 154, type: !268)
!2099 = !DILocalVariable(name: "p", scope: !2091, file: !406, line: 155, type: !2100)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2101 = !DILocalVariable(name: "shift", scope: !2091, file: !406, line: 157, type: !73)
!2102 = !DILocalVariable(name: "r", scope: !2091, file: !406, line: 158, type: !73)
!2103 = !DILocation(line: 152, column: 43, scope: !2091)
!2104 = !DILocation(line: 152, column: 51, scope: !2091)
!2105 = !DILocation(line: 152, column: 58, scope: !2091)
!2106 = !DILocation(line: 154, column: 17, scope: !2091)
!2107 = !DILocation(line: 156, column: 6, scope: !2091)
!2108 = !DILocation(line: 156, column: 62, scope: !2091)
!2109 = !DILocation(line: 156, column: 57, scope: !2091)
!2110 = !DILocation(line: 155, column: 17, scope: !2091)
!2111 = !DILocation(line: 157, column: 15, scope: !2091)
!2112 = !DILocation(line: 157, column: 7, scope: !2091)
!2113 = !DILocation(line: 158, column: 12, scope: !2091)
!2114 = !DILocation(line: 158, column: 15, scope: !2091)
!2115 = !DILocation(line: 158, column: 25, scope: !2091)
!2116 = !DILocation(line: 158, column: 7, scope: !2091)
!2117 = !DILocation(line: 159, column: 13, scope: !2091)
!2118 = !DILocation(line: 159, column: 18, scope: !2091)
!2119 = !DILocation(line: 159, column: 23, scope: !2091)
!2120 = !DILocation(line: 159, column: 6, scope: !2091)
!2121 = !DILocation(line: 160, column: 3, scope: !2091)
!2122 = distinct !DISubprogram(name: "set_quoting_flags", scope: !406, file: !406, line: 168, type: !2123, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!73, !2053, !73}
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "o", arg: 1, scope: !2122, file: !406, line: 168, type: !2053)
!2127 = !DILocalVariable(name: "i", arg: 2, scope: !2122, file: !406, line: 168, type: !73)
!2128 = !DILocalVariable(name: "r", scope: !2122, file: !406, line: 170, type: !73)
!2129 = !DILocation(line: 168, column: 44, scope: !2122)
!2130 = !DILocation(line: 168, column: 51, scope: !2122)
!2131 = !DILocation(line: 171, column: 8, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2122, file: !406, line: 171, column: 7)
!2133 = !DILocation(line: 171, column: 7, scope: !2122)
!2134 = !DILocation(line: 173, column: 10, scope: !2122)
!2135 = !{!2077, !1042, i64 4}
!2136 = !DILocation(line: 170, column: 7, scope: !2122)
!2137 = !DILocation(line: 174, column: 12, scope: !2122)
!2138 = !DILocation(line: 175, column: 3, scope: !2122)
!2139 = distinct !DISubprogram(name: "set_custom_quoting", scope: !406, file: !406, line: 179, type: !2140, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2053, !69, !69}
!2142 = !{!2143, !2144, !2145}
!2143 = !DILocalVariable(name: "o", arg: 1, scope: !2139, file: !406, line: 179, type: !2053)
!2144 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2139, file: !406, line: 180, type: !69)
!2145 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2139, file: !406, line: 180, type: !69)
!2146 = !DILocation(line: 179, column: 45, scope: !2139)
!2147 = !DILocation(line: 180, column: 33, scope: !2139)
!2148 = !DILocation(line: 180, column: 57, scope: !2139)
!2149 = !DILocation(line: 182, column: 8, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2139, file: !406, line: 182, column: 7)
!2151 = !DILocation(line: 182, column: 7, scope: !2139)
!2152 = !DILocation(line: 184, column: 6, scope: !2139)
!2153 = !DILocation(line: 184, column: 12, scope: !2139)
!2154 = !DILocation(line: 185, column: 8, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !406, line: 185, column: 7)
!2156 = !DILocation(line: 185, column: 23, scope: !2155)
!2157 = !DILocation(line: 185, column: 19, scope: !2155)
!2158 = !DILocation(line: 186, column: 5, scope: !2155)
!2159 = !DILocation(line: 187, column: 6, scope: !2139)
!2160 = !DILocation(line: 187, column: 17, scope: !2139)
!2161 = !{!2077, !935, i64 40}
!2162 = !DILocation(line: 188, column: 6, scope: !2139)
!2163 = !DILocation(line: 188, column: 18, scope: !2139)
!2164 = !{!2077, !935, i64 48}
!2165 = !DILocation(line: 189, column: 1, scope: !2139)
!2166 = distinct !DISubprogram(name: "quotearg_buffer", scope: !406, file: !406, line: 784, type: !2167, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!215, !26, !215, !69, !215, !2069}
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2170 = !DILocalVariable(name: "buffer", arg: 1, scope: !2166, file: !406, line: 784, type: !26)
!2171 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2166, file: !406, line: 784, type: !215)
!2172 = !DILocalVariable(name: "arg", arg: 3, scope: !2166, file: !406, line: 785, type: !69)
!2173 = !DILocalVariable(name: "argsize", arg: 4, scope: !2166, file: !406, line: 785, type: !215)
!2174 = !DILocalVariable(name: "o", arg: 5, scope: !2166, file: !406, line: 786, type: !2069)
!2175 = !DILocalVariable(name: "p", scope: !2166, file: !406, line: 788, type: !2069)
!2176 = !DILocalVariable(name: "e", scope: !2166, file: !406, line: 789, type: !73)
!2177 = !DILocalVariable(name: "r", scope: !2166, file: !406, line: 790, type: !215)
!2178 = !DILocation(line: 784, column: 24, scope: !2166)
!2179 = !DILocation(line: 784, column: 39, scope: !2166)
!2180 = !DILocation(line: 785, column: 30, scope: !2166)
!2181 = !DILocation(line: 785, column: 42, scope: !2166)
!2182 = !DILocation(line: 786, column: 48, scope: !2166)
!2183 = !DILocation(line: 788, column: 37, scope: !2166)
!2184 = !DILocation(line: 788, column: 33, scope: !2166)
!2185 = !DILocation(line: 789, column: 11, scope: !2166)
!2186 = !DILocation(line: 789, column: 7, scope: !2166)
!2187 = !DILocation(line: 791, column: 43, scope: !2166)
!2188 = !DILocation(line: 791, column: 53, scope: !2166)
!2189 = !DILocation(line: 791, column: 60, scope: !2166)
!2190 = !DILocation(line: 792, column: 43, scope: !2166)
!2191 = !DILocation(line: 792, column: 58, scope: !2166)
!2192 = !DILocation(line: 790, column: 14, scope: !2166)
!2193 = !DILocation(line: 790, column: 10, scope: !2166)
!2194 = !DILocation(line: 793, column: 9, scope: !2166)
!2195 = !DILocation(line: 794, column: 3, scope: !2166)
!2196 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !406, file: !406, line: 256, type: !2197, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2201)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!215, !26, !215, !69, !215, !11, !73, !2199, !69, !69}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2226, !2227, !2228, !2229, !2230, !2233, !2234, !2249, !2252, !2253, !2260}
!2202 = !DILocalVariable(name: "buffer", arg: 1, scope: !2196, file: !406, line: 256, type: !26)
!2203 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2196, file: !406, line: 256, type: !215)
!2204 = !DILocalVariable(name: "arg", arg: 3, scope: !2196, file: !406, line: 257, type: !69)
!2205 = !DILocalVariable(name: "argsize", arg: 4, scope: !2196, file: !406, line: 257, type: !215)
!2206 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2196, file: !406, line: 258, type: !11)
!2207 = !DILocalVariable(name: "flags", arg: 6, scope: !2196, file: !406, line: 258, type: !73)
!2208 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2196, file: !406, line: 259, type: !2199)
!2209 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2196, file: !406, line: 260, type: !69)
!2210 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2196, file: !406, line: 261, type: !69)
!2211 = !DILocalVariable(name: "i", scope: !2196, file: !406, line: 263, type: !215)
!2212 = !DILocalVariable(name: "len", scope: !2196, file: !406, line: 264, type: !215)
!2213 = !DILocalVariable(name: "orig_buffersize", scope: !2196, file: !406, line: 265, type: !215)
!2214 = !DILocalVariable(name: "quote_string", scope: !2196, file: !406, line: 266, type: !69)
!2215 = !DILocalVariable(name: "quote_string_len", scope: !2196, file: !406, line: 267, type: !215)
!2216 = !DILocalVariable(name: "backslash_escapes", scope: !2196, file: !406, line: 268, type: !38)
!2217 = !DILocalVariable(name: "unibyte_locale", scope: !2196, file: !406, line: 269, type: !38)
!2218 = !DILocalVariable(name: "elide_outer_quotes", scope: !2196, file: !406, line: 270, type: !38)
!2219 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2196, file: !406, line: 271, type: !38)
!2220 = !DILocalVariable(name: "encountered_single_quote", scope: !2196, file: !406, line: 272, type: !38)
!2221 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2196, file: !406, line: 273, type: !38)
!2222 = !DILocalVariable(name: "c", scope: !2223, file: !406, line: 402, type: !268)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !406, line: 401, column: 5)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !406, line: 400, column: 3)
!2225 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 400, column: 3)
!2226 = !DILocalVariable(name: "esc", scope: !2223, file: !406, line: 403, type: !268)
!2227 = !DILocalVariable(name: "is_right_quote", scope: !2223, file: !406, line: 404, type: !38)
!2228 = !DILocalVariable(name: "escaping", scope: !2223, file: !406, line: 405, type: !38)
!2229 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2223, file: !406, line: 406, type: !38)
!2230 = !DILocalVariable(name: "m", scope: !2231, file: !406, line: 610, type: !215)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 608, column: 11)
!2232 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 426, column: 9)
!2233 = !DILocalVariable(name: "printable", scope: !2231, file: !406, line: 612, type: !38)
!2234 = !DILocalVariable(name: "mbstate", scope: !2235, file: !406, line: 621, type: !2237)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !406, line: 620, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !406, line: 614, column: 17)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2238, line: 6, baseType: !2239)
!2238 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2240, line: 21, baseType: !2241)
!2240 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2240, line: 13, size: 64, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2241, file: !2240, line: 15, baseType: !73, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2241, file: !2240, line: 20, baseType: !2245, size: 32, offset: 32)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2241, file: !2240, line: 16, size: 32, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2245, file: !2240, line: 18, baseType: !7, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2245, file: !2240, line: 19, baseType: !125, size: 32)
!2249 = !DILocalVariable(name: "w", scope: !2250, file: !406, line: 631, type: !2251)
!2250 = distinct !DILexicalBlock(scope: !2235, file: !406, line: 630, column: 19)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !216, line: 90, baseType: !73)
!2252 = !DILocalVariable(name: "bytes", scope: !2250, file: !406, line: 632, type: !215)
!2253 = !DILocalVariable(name: "j", scope: !2254, file: !406, line: 657, type: !215)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !406, line: 656, column: 27)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !406, line: 654, column: 29)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !406, line: 649, column: 23)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !406, line: 641, column: 30)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !406, line: 636, column: 30)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !406, line: 634, column: 25)
!2260 = !DILocalVariable(name: "ilim", scope: !2261, file: !406, line: 684, type: !215)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !406, line: 681, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2231, file: !406, line: 680, column: 17)
!2263 = !DILocation(line: 256, column: 33, scope: !2196)
!2264 = !DILocation(line: 256, column: 48, scope: !2196)
!2265 = !DILocation(line: 257, column: 39, scope: !2196)
!2266 = !DILocation(line: 257, column: 51, scope: !2196)
!2267 = !DILocation(line: 258, column: 46, scope: !2196)
!2268 = !DILocation(line: 258, column: 65, scope: !2196)
!2269 = !DILocation(line: 259, column: 47, scope: !2196)
!2270 = !DILocation(line: 260, column: 39, scope: !2196)
!2271 = !DILocation(line: 261, column: 39, scope: !2196)
!2272 = !DILocation(line: 264, column: 10, scope: !2196)
!2273 = !DILocation(line: 265, column: 10, scope: !2196)
!2274 = !DILocation(line: 266, column: 15, scope: !2196)
!2275 = !DILocation(line: 267, column: 10, scope: !2196)
!2276 = !DILocation(line: 268, column: 8, scope: !2196)
!2277 = !DILocation(line: 269, column: 25, scope: !2196)
!2278 = !DILocation(line: 269, column: 36, scope: !2196)
!2279 = !DILocation(line: 270, column: 8, scope: !2196)
!2280 = !DILocation(line: 271, column: 8, scope: !2196)
!2281 = !DILocation(line: 272, column: 8, scope: !2196)
!2282 = !DILocation(line: 273, column: 8, scope: !2196)
!2283 = !DILocation(line: 273, column: 3, scope: !2196)
!2284 = !DILocation(line: 0, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 317, column: 5)
!2286 = !DILocation(line: 316, column: 3, scope: !2196)
!2287 = !DILocation(line: 323, column: 11, scope: !2285)
!2288 = !DILocation(line: 323, column: 12, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !406, line: 323, column: 11)
!2290 = !DILocation(line: 324, column: 9, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !406, line: 324, column: 9)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !406, line: 324, column: 9)
!2293 = !DILocation(line: 324, column: 9, scope: !2292)
!2294 = !DILocation(line: 362, column: 26, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !406, line: 340, column: 11)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !406, line: 339, column: 13)
!2297 = distinct !DILexicalBlock(scope: !2285, file: !406, line: 338, column: 7)
!2298 = !DILocation(line: 363, column: 27, scope: !2295)
!2299 = !DILocation(line: 364, column: 11, scope: !2295)
!2300 = !DILocation(line: 365, column: 14, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !406, line: 365, column: 13)
!2302 = !DILocation(line: 365, column: 13, scope: !2297)
!2303 = !DILocation(line: 366, column: 43, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !406, line: 366, column: 11)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 366, column: 11)
!2306 = !DILocation(line: 366, column: 11, scope: !2305)
!2307 = !DILocation(line: 367, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !406, line: 367, column: 13)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !406, line: 367, column: 13)
!2310 = !DILocation(line: 367, column: 13, scope: !2309)
!2311 = !DILocation(line: 366, column: 70, scope: !2304)
!2312 = distinct !{!2312, !2306, !2313}
!2313 = !DILocation(line: 367, column: 13, scope: !2305)
!2314 = !DILocation(line: 370, column: 28, scope: !2297)
!2315 = !DILocation(line: 372, column: 7, scope: !2285)
!2316 = !DILocation(line: 376, column: 7, scope: !2285)
!2317 = !DILocation(line: 379, column: 7, scope: !2285)
!2318 = !DILocation(line: 381, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2285, file: !406, line: 381, column: 11)
!2320 = !DILocation(line: 381, column: 11, scope: !2285)
!2321 = !DILocation(line: 0, scope: !2319)
!2322 = !DILocation(line: 386, column: 12, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2285, file: !406, line: 386, column: 11)
!2324 = !DILocation(line: 386, column: 11, scope: !2285)
!2325 = !DILocation(line: 387, column: 9, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !406, line: 387, column: 9)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !406, line: 387, column: 9)
!2328 = !DILocation(line: 387, column: 9, scope: !2327)
!2329 = !DILocation(line: 394, column: 7, scope: !2285)
!2330 = !DILocation(line: 397, column: 7, scope: !2285)
!2331 = !DILocation(line: 0, scope: !2196)
!2332 = !DILocation(line: 263, column: 10, scope: !2196)
!2333 = !DILocation(line: 400, column: 8, scope: !2225)
!2334 = !DILocation(line: 0, scope: !2224)
!2335 = !DILocation(line: 400, column: 27, scope: !2224)
!2336 = !DILocation(line: 400, column: 19, scope: !2224)
!2337 = !DILocation(line: 400, column: 41, scope: !2224)
!2338 = !DILocation(line: 400, column: 48, scope: !2224)
!2339 = !DILocation(line: 400, column: 3, scope: !2225)
!2340 = !DILocation(line: 400, column: 60, scope: !2224)
!2341 = !DILocation(line: 404, column: 12, scope: !2223)
!2342 = !DILocation(line: 405, column: 12, scope: !2223)
!2343 = !DILocation(line: 406, column: 12, scope: !2223)
!2344 = !DILocation(line: 409, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 408, column: 11)
!2346 = !DILocation(line: 411, column: 17, scope: !2345)
!2347 = !DILocation(line: 412, column: 39, scope: !2345)
!2348 = !DILocation(line: 416, column: 32, scope: !2345)
!2349 = !DILocation(line: 412, column: 19, scope: !2345)
!2350 = !DILocation(line: 412, column: 15, scope: !2345)
!2351 = !DILocation(line: 417, column: 11, scope: !2345)
!2352 = !DILocation(line: 417, column: 26, scope: !2345)
!2353 = !DILocation(line: 417, column: 14, scope: !2345)
!2354 = !DILocation(line: 417, column: 63, scope: !2345)
!2355 = !DILocation(line: 408, column: 11, scope: !2223)
!2356 = !DILocation(line: 0, scope: !2223)
!2357 = !DILocation(line: 424, column: 11, scope: !2223)
!2358 = !DILocation(line: 402, column: 21, scope: !2223)
!2359 = !DILocation(line: 425, column: 7, scope: !2223)
!2360 = !DILocation(line: 428, column: 15, scope: !2232)
!2361 = !DILocation(line: 430, column: 15, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !406, line: 430, column: 15)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !406, line: 429, column: 13)
!2364 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 428, column: 15)
!2365 = !DILocation(line: 430, column: 15, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !406, line: 430, column: 15)
!2367 = !DILocation(line: 430, column: 15, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !406, line: 430, column: 15)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !406, line: 430, column: 15)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !406, line: 430, column: 15)
!2371 = !DILocation(line: 430, column: 15, scope: !2369)
!2372 = !DILocation(line: 430, column: 15, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !406, line: 430, column: 15)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !406, line: 430, column: 15)
!2375 = !DILocation(line: 430, column: 15, scope: !2374)
!2376 = !DILocation(line: 430, column: 15, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !406, line: 430, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !406, line: 430, column: 15)
!2379 = !DILocation(line: 430, column: 15, scope: !2378)
!2380 = !DILocation(line: 430, column: 15, scope: !2370)
!2381 = !DILocation(line: 430, column: 15, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !406, line: 430, column: 15)
!2383 = distinct !DILexicalBlock(scope: !2362, file: !406, line: 430, column: 15)
!2384 = !DILocation(line: 430, column: 15, scope: !2383)
!2385 = !DILocation(line: 438, column: 19, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2363, file: !406, line: 437, column: 19)
!2387 = !DILocation(line: 438, column: 24, scope: !2386)
!2388 = !DILocation(line: 438, column: 28, scope: !2386)
!2389 = !DILocation(line: 438, column: 38, scope: !2386)
!2390 = !DILocation(line: 438, column: 48, scope: !2386)
!2391 = !DILocation(line: 438, column: 59, scope: !2386)
!2392 = !DILocation(line: 440, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !406, line: 440, column: 19)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !406, line: 440, column: 19)
!2395 = distinct !DILexicalBlock(scope: !2386, file: !406, line: 439, column: 17)
!2396 = !DILocation(line: 440, column: 19, scope: !2394)
!2397 = !DILocation(line: 441, column: 19, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !406, line: 441, column: 19)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !406, line: 441, column: 19)
!2400 = !DILocation(line: 441, column: 19, scope: !2399)
!2401 = !DILocation(line: 442, column: 17, scope: !2395)
!2402 = !DILocation(line: 449, column: 20, scope: !2364)
!2403 = !DILocation(line: 454, column: 11, scope: !2232)
!2404 = !DILocation(line: 457, column: 19, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 455, column: 13)
!2406 = !DILocation(line: 463, column: 19, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2405, file: !406, line: 462, column: 19)
!2408 = !DILocation(line: 463, column: 24, scope: !2407)
!2409 = !DILocation(line: 463, column: 28, scope: !2407)
!2410 = !DILocation(line: 463, column: 38, scope: !2407)
!2411 = !DILocation(line: 463, column: 47, scope: !2407)
!2412 = !DILocation(line: 463, column: 41, scope: !2407)
!2413 = !DILocation(line: 463, column: 52, scope: !2407)
!2414 = !DILocation(line: 462, column: 19, scope: !2405)
!2415 = !DILocation(line: 464, column: 25, scope: !2407)
!2416 = !DILocation(line: 464, column: 17, scope: !2407)
!2417 = !DILocation(line: 471, column: 25, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2407, file: !406, line: 465, column: 19)
!2419 = !DILocation(line: 475, column: 21, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !406, line: 475, column: 21)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !406, line: 475, column: 21)
!2422 = !DILocation(line: 475, column: 21, scope: !2421)
!2423 = !DILocation(line: 476, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !406, line: 476, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2418, file: !406, line: 476, column: 21)
!2426 = !DILocation(line: 476, column: 21, scope: !2425)
!2427 = !DILocation(line: 477, column: 21, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !406, line: 477, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2418, file: !406, line: 477, column: 21)
!2430 = !DILocation(line: 477, column: 21, scope: !2429)
!2431 = !DILocation(line: 478, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !406, line: 478, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2418, file: !406, line: 478, column: 21)
!2434 = !DILocation(line: 478, column: 21, scope: !2433)
!2435 = !DILocation(line: 479, column: 21, scope: !2418)
!2436 = !DILocation(line: 403, column: 21, scope: !2223)
!2437 = !DILocation(line: 492, column: 31, scope: !2232)
!2438 = !DILocation(line: 493, column: 31, scope: !2232)
!2439 = !DILocation(line: 495, column: 31, scope: !2232)
!2440 = !DILocation(line: 496, column: 31, scope: !2232)
!2441 = !DILocation(line: 497, column: 31, scope: !2232)
!2442 = !DILocation(line: 500, column: 15, scope: !2232)
!2443 = !DILocation(line: 502, column: 19, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !406, line: 501, column: 13)
!2445 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 500, column: 15)
!2446 = !DILocation(line: 509, column: 33, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 509, column: 15)
!2448 = !DILocation(line: 0, scope: !2232)
!2449 = !DILocation(line: 514, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 513, column: 15)
!2451 = !DILocation(line: 518, column: 15, scope: !2232)
!2452 = !DILocation(line: 526, column: 26, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 526, column: 15)
!2454 = !DILocation(line: 526, column: 15, scope: !2232)
!2455 = !DILocation(line: 526, column: 40, scope: !2453)
!2456 = !DILocation(line: 526, column: 47, scope: !2453)
!2457 = !DILocation(line: 530, column: 17, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 530, column: 15)
!2459 = !DILocation(line: 526, column: 18, scope: !2453)
!2460 = !DILocation(line: 526, column: 65, scope: !2453)
!2461 = !DILocation(line: 530, column: 15, scope: !2232)
!2462 = !DILocation(line: 535, column: 11, scope: !2232)
!2463 = !DILocation(line: 549, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 548, column: 15)
!2465 = !DILocation(line: 556, column: 15, scope: !2232)
!2466 = !DILocation(line: 558, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !406, line: 557, column: 13)
!2468 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 556, column: 15)
!2469 = !DILocation(line: 561, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !406, line: 561, column: 19)
!2471 = !DILocation(line: 561, column: 35, scope: !2470)
!2472 = !DILocation(line: 561, column: 30, scope: !2470)
!2473 = !DILocation(line: 570, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !406, line: 570, column: 15)
!2475 = distinct !DILexicalBlock(scope: !2467, file: !406, line: 570, column: 15)
!2476 = !DILocation(line: 570, column: 15, scope: !2475)
!2477 = !DILocation(line: 571, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !406, line: 571, column: 15)
!2479 = distinct !DILexicalBlock(scope: !2467, file: !406, line: 571, column: 15)
!2480 = !DILocation(line: 571, column: 15, scope: !2479)
!2481 = !DILocation(line: 572, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !406, line: 572, column: 15)
!2483 = distinct !DILexicalBlock(scope: !2467, file: !406, line: 572, column: 15)
!2484 = !DILocation(line: 572, column: 15, scope: !2483)
!2485 = !DILocation(line: 574, column: 13, scope: !2467)
!2486 = !DILocation(line: 614, column: 17, scope: !2231)
!2487 = !DILocation(line: 610, column: 20, scope: !2231)
!2488 = !DILocation(line: 617, column: 29, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2236, file: !406, line: 615, column: 15)
!2490 = !{!1147, !1147, i64 0}
!2491 = !DILocation(line: 617, column: 27, scope: !2489)
!2492 = !DILocation(line: 612, column: 18, scope: !2231)
!2493 = !DILocation(line: 618, column: 15, scope: !2489)
!2494 = !DILocation(line: 621, column: 17, scope: !2235)
!2495 = !DILocation(line: 622, column: 17, scope: !2235)
!2496 = !DILocation(line: 626, column: 29, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2235, file: !406, line: 626, column: 21)
!2498 = !DILocation(line: 626, column: 21, scope: !2235)
!2499 = !DILocation(line: 627, column: 29, scope: !2497)
!2500 = !DILocation(line: 627, column: 19, scope: !2497)
!2501 = !DILocation(line: 0, scope: !2345)
!2502 = !DILocation(line: 629, column: 17, scope: !2235)
!2503 = !DILocation(line: 624, column: 19, scope: !2235)
!2504 = !DILocation(line: 625, column: 27, scope: !2235)
!2505 = !DILocation(line: 631, column: 21, scope: !2250)
!2506 = !DILocation(line: 632, column: 56, scope: !2250)
!2507 = !DILocation(line: 632, column: 50, scope: !2250)
!2508 = !DILocation(line: 633, column: 53, scope: !2250)
!2509 = !DILocation(line: 621, column: 27, scope: !2235)
!2510 = !DILocation(line: 631, column: 29, scope: !2250)
!2511 = !DILocation(line: 632, column: 36, scope: !2250)
!2512 = !DILocation(line: 632, column: 28, scope: !2250)
!2513 = !DILocation(line: 634, column: 25, scope: !2250)
!2514 = !DILocation(line: 644, column: 38, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2257, file: !406, line: 642, column: 23)
!2516 = !DILocation(line: 644, column: 48, scope: !2515)
!2517 = !DILocation(line: 644, column: 51, scope: !2515)
!2518 = !DILocation(line: 644, column: 25, scope: !2515)
!2519 = !DILocation(line: 645, column: 28, scope: !2515)
!2520 = !DILocation(line: 644, column: 34, scope: !2515)
!2521 = distinct !{!2521, !2518, !2519}
!2522 = !DILocation(line: 658, column: 43, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !406, line: 658, column: 29)
!2524 = distinct !DILexicalBlock(scope: !2254, file: !406, line: 658, column: 29)
!2525 = !DILocation(line: 655, column: 29, scope: !2255)
!2526 = !DILocation(line: 657, column: 36, scope: !2254)
!2527 = !DILocation(line: 659, column: 49, scope: !2523)
!2528 = !DILocation(line: 659, column: 39, scope: !2523)
!2529 = !DILocation(line: 659, column: 31, scope: !2523)
!2530 = !DILocation(line: 658, column: 53, scope: !2523)
!2531 = !DILocation(line: 658, column: 29, scope: !2524)
!2532 = distinct !{!2532, !2531, !2533}
!2533 = !DILocation(line: 667, column: 33, scope: !2524)
!2534 = !DILocation(line: 674, column: 19, scope: !2235)
!2535 = !DILocation(line: 670, column: 41, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2256, file: !406, line: 670, column: 29)
!2537 = !DILocation(line: 670, column: 31, scope: !2536)
!2538 = !DILocation(line: 670, column: 29, scope: !2256)
!2539 = !DILocation(line: 672, column: 27, scope: !2256)
!2540 = !DILocation(line: 675, column: 26, scope: !2235)
!2541 = !DILocation(line: 675, column: 24, scope: !2235)
!2542 = !DILocation(line: 674, column: 19, scope: !2250)
!2543 = distinct !{!2543, !2502, !2544}
!2544 = !DILocation(line: 675, column: 44, scope: !2235)
!2545 = !DILocation(line: 676, column: 15, scope: !2236)
!2546 = !DILocation(line: 0, scope: !2497)
!2547 = !DILocation(line: 0, scope: !2235)
!2548 = !DILocation(line: 678, column: 40, scope: !2231)
!2549 = !DILocation(line: 680, column: 19, scope: !2262)
!2550 = !DILocation(line: 680, column: 45, scope: !2262)
!2551 = !DILocation(line: 680, column: 23, scope: !2262)
!2552 = !DILocation(line: 684, column: 33, scope: !2261)
!2553 = !DILocation(line: 684, column: 24, scope: !2261)
!2554 = !DILocation(line: 686, column: 17, scope: !2261)
!2555 = !DILocation(line: 0, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !406, line: 687, column: 19)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !406, line: 686, column: 17)
!2558 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 686, column: 17)
!2559 = !DILocation(line: 0, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !406, line: 703, column: 21)
!2561 = !DILocation(line: 0, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !406, line: 696, column: 23)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !406, line: 695, column: 30)
!2564 = distinct !DILexicalBlock(scope: !2556, file: !406, line: 688, column: 25)
!2565 = !DILocation(line: 688, column: 43, scope: !2564)
!2566 = !DILocation(line: 690, column: 25, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !406, line: 690, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !406, line: 689, column: 23)
!2569 = !DILocation(line: 690, column: 25, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !406, line: 690, column: 25)
!2571 = !DILocation(line: 690, column: 25, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !406, line: 690, column: 25)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !406, line: 690, column: 25)
!2574 = distinct !DILexicalBlock(scope: !2570, file: !406, line: 690, column: 25)
!2575 = !DILocation(line: 690, column: 25, scope: !2573)
!2576 = !DILocation(line: 690, column: 25, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !406, line: 690, column: 25)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !406, line: 690, column: 25)
!2579 = !DILocation(line: 690, column: 25, scope: !2578)
!2580 = !DILocation(line: 690, column: 25, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !406, line: 690, column: 25)
!2582 = distinct !DILexicalBlock(scope: !2574, file: !406, line: 690, column: 25)
!2583 = !DILocation(line: 690, column: 25, scope: !2582)
!2584 = !DILocation(line: 690, column: 25, scope: !2574)
!2585 = !DILocation(line: 690, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !406, line: 690, column: 25)
!2587 = distinct !DILexicalBlock(scope: !2567, file: !406, line: 690, column: 25)
!2588 = !DILocation(line: 690, column: 25, scope: !2587)
!2589 = !DILocation(line: 691, column: 25, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !406, line: 691, column: 25)
!2591 = distinct !DILexicalBlock(scope: !2568, file: !406, line: 691, column: 25)
!2592 = !DILocation(line: 691, column: 25, scope: !2591)
!2593 = !DILocation(line: 692, column: 25, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !406, line: 692, column: 25)
!2595 = distinct !DILexicalBlock(scope: !2568, file: !406, line: 692, column: 25)
!2596 = !DILocation(line: 692, column: 25, scope: !2595)
!2597 = !DILocation(line: 693, column: 38, scope: !2568)
!2598 = !DILocation(line: 693, column: 33, scope: !2568)
!2599 = !DILocation(line: 694, column: 23, scope: !2568)
!2600 = !DILocation(line: 695, column: 30, scope: !2563)
!2601 = !DILocation(line: 695, column: 30, scope: !2564)
!2602 = !DILocation(line: 697, column: 25, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !406, line: 697, column: 25)
!2604 = distinct !DILexicalBlock(scope: !2562, file: !406, line: 697, column: 25)
!2605 = !DILocation(line: 697, column: 25, scope: !2604)
!2606 = !DILocation(line: 699, column: 23, scope: !2562)
!2607 = !DILocation(line: 0, scope: !2595)
!2608 = !DILocation(line: 0, scope: !2568)
!2609 = !DILocation(line: 0, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2345, file: !406, line: 418, column: 9)
!2611 = !DILocation(line: 0, scope: !2567)
!2612 = !DILocation(line: 700, column: 35, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2556, file: !406, line: 700, column: 25)
!2614 = !DILocation(line: 700, column: 30, scope: !2613)
!2615 = !DILocation(line: 700, column: 25, scope: !2556)
!2616 = !DILocation(line: 702, column: 21, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !406, line: 702, column: 21)
!2618 = distinct !DILexicalBlock(scope: !2556, file: !406, line: 702, column: 21)
!2619 = !DILocation(line: 702, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !406, line: 702, column: 21)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !406, line: 702, column: 21)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !406, line: 702, column: 21)
!2623 = !DILocation(line: 702, column: 21, scope: !2621)
!2624 = !DILocation(line: 702, column: 21, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !406, line: 702, column: 21)
!2626 = distinct !DILexicalBlock(scope: !2622, file: !406, line: 702, column: 21)
!2627 = !DILocation(line: 702, column: 21, scope: !2626)
!2628 = !DILocation(line: 702, column: 21, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2604)
!2630 = !DILocation(line: 703, column: 21, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2560, file: !406, line: 703, column: 21)
!2632 = !DILocation(line: 703, column: 21, scope: !2560)
!2633 = !DILocation(line: 704, column: 25, scope: !2556)
!2634 = !DILocation(line: 686, column: 17, scope: !2557)
!2635 = distinct !{!2635, !2636, !2637}
!2636 = !DILocation(line: 686, column: 17, scope: !2558)
!2637 = !DILocation(line: 705, column: 19, scope: !2558)
!2638 = !DILocation(line: 0, scope: !2225)
!2639 = !DILocation(line: 416, column: 30, scope: !2345)
!2640 = !DILocation(line: 712, column: 34, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 712, column: 11)
!2642 = !DILocation(line: 714, column: 14, scope: !2641)
!2643 = !DILocation(line: 715, column: 14, scope: !2641)
!2644 = !DILocation(line: 715, column: 35, scope: !2641)
!2645 = !DILocation(line: 715, column: 17, scope: !2641)
!2646 = !DILocation(line: 715, column: 47, scope: !2641)
!2647 = !DILocation(line: 715, column: 65, scope: !2641)
!2648 = !DILocation(line: 716, column: 15, scope: !2641)
!2649 = !DILocation(line: 716, column: 11, scope: !2641)
!2650 = !DILocation(line: 712, column: 11, scope: !2223)
!2651 = !DILocation(line: 400, column: 10, scope: !2225)
!2652 = !DILocation(line: 0, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !406, line: 519, column: 13)
!2654 = distinct !DILexicalBlock(scope: !2232, file: !406, line: 518, column: 15)
!2655 = !DILocation(line: 720, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 720, column: 7)
!2657 = !DILocation(line: 720, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !406, line: 720, column: 7)
!2659 = !DILocation(line: 720, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !406, line: 720, column: 7)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !406, line: 720, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !406, line: 720, column: 7)
!2663 = !DILocation(line: 720, column: 7, scope: !2661)
!2664 = !DILocation(line: 720, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !406, line: 720, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !406, line: 720, column: 7)
!2667 = !DILocation(line: 720, column: 7, scope: !2666)
!2668 = !DILocation(line: 720, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !406, line: 720, column: 7)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !406, line: 720, column: 7)
!2671 = !DILocation(line: 720, column: 7, scope: !2670)
!2672 = !DILocation(line: 720, column: 7, scope: !2662)
!2673 = !DILocation(line: 720, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !406, line: 720, column: 7)
!2675 = distinct !DILexicalBlock(scope: !2656, file: !406, line: 720, column: 7)
!2676 = !DILocation(line: 720, column: 7, scope: !2675)
!2677 = !DILocation(line: 723, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !406, line: 723, column: 7)
!2679 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 723, column: 7)
!2680 = !DILocation(line: 424, column: 9, scope: !2223)
!2681 = !DILocation(line: 723, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !406, line: 723, column: 7)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !406, line: 723, column: 7)
!2684 = distinct !DILexicalBlock(scope: !2678, file: !406, line: 723, column: 7)
!2685 = !DILocation(line: 723, column: 7, scope: !2683)
!2686 = !DILocation(line: 723, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !406, line: 723, column: 7)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !406, line: 723, column: 7)
!2689 = !DILocation(line: 723, column: 7, scope: !2688)
!2690 = !DILocation(line: 723, column: 7, scope: !2684)
!2691 = !DILocation(line: 724, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !406, line: 724, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 724, column: 7)
!2694 = !DILocation(line: 724, column: 7, scope: !2693)
!2695 = !DILocation(line: 726, column: 13, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2223, file: !406, line: 726, column: 11)
!2697 = !DILocation(line: 726, column: 11, scope: !2223)
!2698 = !DILocation(line: 728, column: 5, scope: !2224)
!2699 = !DILocation(line: 400, column: 75, scope: !2224)
!2700 = !DILocation(line: 400, column: 3, scope: !2224)
!2701 = distinct !{!2701, !2339, !2702}
!2702 = !DILocation(line: 728, column: 5, scope: !2225)
!2703 = !DILocation(line: 730, column: 11, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 730, column: 7)
!2705 = !DILocation(line: 730, column: 16, scope: !2704)
!2706 = !DILocation(line: 738, column: 51, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 738, column: 7)
!2708 = !DILocation(line: 739, column: 10, scope: !2707)
!2709 = !DILocation(line: 741, column: 11, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !406, line: 741, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !406, line: 740, column: 5)
!2712 = !DILocation(line: 741, column: 11, scope: !2711)
!2713 = !DILocation(line: 742, column: 16, scope: !2710)
!2714 = !DILocation(line: 742, column: 9, scope: !2710)
!2715 = !DILocation(line: 746, column: 18, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !406, line: 746, column: 16)
!2717 = !DILocation(line: 746, column: 32, scope: !2716)
!2718 = !DILocation(line: 746, column: 29, scope: !2716)
!2719 = !DILocation(line: 755, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 755, column: 7)
!2721 = !DILocation(line: 755, column: 20, scope: !2720)
!2722 = !DILocation(line: 756, column: 12, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !406, line: 756, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !406, line: 756, column: 5)
!2725 = !DILocation(line: 756, column: 5, scope: !2724)
!2726 = !DILocation(line: 757, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !406, line: 757, column: 7)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !406, line: 757, column: 7)
!2729 = !DILocation(line: 757, column: 7, scope: !2728)
!2730 = !DILocation(line: 756, column: 39, scope: !2723)
!2731 = distinct !{!2731, !2725, !2732}
!2732 = !DILocation(line: 757, column: 7, scope: !2724)
!2733 = !DILocation(line: 759, column: 11, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 759, column: 7)
!2735 = !DILocation(line: 759, column: 7, scope: !2196)
!2736 = !DILocation(line: 760, column: 5, scope: !2734)
!2737 = !DILocation(line: 760, column: 17, scope: !2734)
!2738 = !DILocation(line: 766, column: 21, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2196, file: !406, line: 766, column: 7)
!2740 = !DILocation(line: 766, column: 54, scope: !2739)
!2741 = !DILocation(line: 766, column: 51, scope: !2739)
!2742 = !DILocation(line: 770, column: 42, scope: !2196)
!2743 = !DILocation(line: 768, column: 10, scope: !2196)
!2744 = !DILocation(line: 768, column: 3, scope: !2196)
!2745 = !DILocation(line: 772, column: 1, scope: !2196)
!2746 = distinct !DISubprogram(name: "gettext_quote", scope: !406, file: !406, line: 207, type: !2747, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!69, !69, !11}
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DILocalVariable(name: "msgid", arg: 1, scope: !2746, file: !406, line: 207, type: !69)
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2746, file: !406, line: 207, type: !11)
!2752 = !DILocalVariable(name: "translation", scope: !2746, file: !406, line: 209, type: !69)
!2753 = !DILocalVariable(name: "locale_code", scope: !2746, file: !406, line: 210, type: !69)
!2754 = !DILocation(line: 207, column: 28, scope: !2746)
!2755 = !DILocation(line: 207, column: 54, scope: !2746)
!2756 = !DILocation(line: 209, column: 29, scope: !2746)
!2757 = !DILocation(line: 209, column: 15, scope: !2746)
!2758 = !DILocation(line: 212, column: 19, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2746, file: !406, line: 212, column: 7)
!2760 = !DILocation(line: 212, column: 7, scope: !2746)
!2761 = !DILocation(line: 233, column: 17, scope: !2746)
!2762 = !DILocation(line: 210, column: 15, scope: !2746)
!2763 = !DILocalVariable(name: "s1", arg: 1, scope: !2764, file: !2765, line: 160, type: !69)
!2764 = distinct !DISubprogram(name: "strcaseeq0", scope: !2765, file: !2765, line: 160, type: !2766, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2768)
!2765 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2768 = !{!2763, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2769 = !DILocalVariable(name: "s2", arg: 2, scope: !2764, file: !2765, line: 160, type: !69)
!2770 = !DILocalVariable(name: "s20", arg: 3, scope: !2764, file: !2765, line: 160, type: !27)
!2771 = !DILocalVariable(name: "s21", arg: 4, scope: !2764, file: !2765, line: 160, type: !27)
!2772 = !DILocalVariable(name: "s22", arg: 5, scope: !2764, file: !2765, line: 160, type: !27)
!2773 = !DILocalVariable(name: "s23", arg: 6, scope: !2764, file: !2765, line: 160, type: !27)
!2774 = !DILocalVariable(name: "s24", arg: 7, scope: !2764, file: !2765, line: 160, type: !27)
!2775 = !DILocalVariable(name: "s25", arg: 8, scope: !2764, file: !2765, line: 160, type: !27)
!2776 = !DILocalVariable(name: "s26", arg: 9, scope: !2764, file: !2765, line: 160, type: !27)
!2777 = !DILocalVariable(name: "s27", arg: 10, scope: !2764, file: !2765, line: 160, type: !27)
!2778 = !DILocalVariable(name: "s28", arg: 11, scope: !2764, file: !2765, line: 160, type: !27)
!2779 = !DILocation(line: 160, column: 25, scope: !2764, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 234, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2746, file: !406, line: 234, column: 7)
!2782 = !DILocation(line: 160, column: 41, scope: !2764, inlinedAt: !2780)
!2783 = !DILocation(line: 160, column: 50, scope: !2764, inlinedAt: !2780)
!2784 = !DILocation(line: 160, column: 60, scope: !2764, inlinedAt: !2780)
!2785 = !DILocation(line: 160, column: 70, scope: !2764, inlinedAt: !2780)
!2786 = !DILocation(line: 160, column: 80, scope: !2764, inlinedAt: !2780)
!2787 = !DILocation(line: 160, column: 90, scope: !2764, inlinedAt: !2780)
!2788 = !DILocation(line: 160, column: 100, scope: !2764, inlinedAt: !2780)
!2789 = !DILocation(line: 160, column: 110, scope: !2764, inlinedAt: !2780)
!2790 = !DILocation(line: 160, column: 120, scope: !2764, inlinedAt: !2780)
!2791 = !DILocation(line: 160, column: 130, scope: !2764, inlinedAt: !2780)
!2792 = !DILocation(line: 162, column: 7, scope: !2793, inlinedAt: !2780)
!2793 = distinct !DILexicalBlock(scope: !2764, file: !2765, line: 162, column: 7)
!2794 = !DILocalVariable(name: "s1", arg: 1, scope: !2795, file: !2765, line: 146, type: !69)
!2795 = distinct !DISubprogram(name: "strcaseeq1", scope: !2765, file: !2765, line: 146, type: !2796, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27, !27}
!2798 = !{!2794, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2799 = !DILocalVariable(name: "s2", arg: 2, scope: !2795, file: !2765, line: 146, type: !69)
!2800 = !DILocalVariable(name: "s21", arg: 3, scope: !2795, file: !2765, line: 146, type: !27)
!2801 = !DILocalVariable(name: "s22", arg: 4, scope: !2795, file: !2765, line: 146, type: !27)
!2802 = !DILocalVariable(name: "s23", arg: 5, scope: !2795, file: !2765, line: 146, type: !27)
!2803 = !DILocalVariable(name: "s24", arg: 6, scope: !2795, file: !2765, line: 146, type: !27)
!2804 = !DILocalVariable(name: "s25", arg: 7, scope: !2795, file: !2765, line: 146, type: !27)
!2805 = !DILocalVariable(name: "s26", arg: 8, scope: !2795, file: !2765, line: 146, type: !27)
!2806 = !DILocalVariable(name: "s27", arg: 9, scope: !2795, file: !2765, line: 146, type: !27)
!2807 = !DILocalVariable(name: "s28", arg: 10, scope: !2795, file: !2765, line: 146, type: !27)
!2808 = !DILocation(line: 146, column: 25, scope: !2795, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 167, column: 16, scope: !2810, inlinedAt: !2780)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !2765, line: 164, column: 11)
!2811 = distinct !DILexicalBlock(scope: !2793, file: !2765, line: 163, column: 5)
!2812 = !DILocation(line: 146, column: 41, scope: !2795, inlinedAt: !2809)
!2813 = !DILocation(line: 146, column: 50, scope: !2795, inlinedAt: !2809)
!2814 = !DILocation(line: 146, column: 60, scope: !2795, inlinedAt: !2809)
!2815 = !DILocation(line: 146, column: 70, scope: !2795, inlinedAt: !2809)
!2816 = !DILocation(line: 146, column: 80, scope: !2795, inlinedAt: !2809)
!2817 = !DILocation(line: 146, column: 90, scope: !2795, inlinedAt: !2809)
!2818 = !DILocation(line: 146, column: 100, scope: !2795, inlinedAt: !2809)
!2819 = !DILocation(line: 146, column: 110, scope: !2795, inlinedAt: !2809)
!2820 = !DILocation(line: 146, column: 120, scope: !2795, inlinedAt: !2809)
!2821 = !DILocation(line: 148, column: 7, scope: !2822, inlinedAt: !2809)
!2822 = distinct !DILexicalBlock(scope: !2795, file: !2765, line: 148, column: 7)
!2823 = !DILocalVariable(name: "s1", arg: 1, scope: !2824, file: !2765, line: 132, type: !69)
!2824 = distinct !DISubprogram(name: "strcaseeq2", scope: !2765, file: !2765, line: 132, type: !2825, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27}
!2827 = !{!2823, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2828 = !DILocalVariable(name: "s2", arg: 2, scope: !2824, file: !2765, line: 132, type: !69)
!2829 = !DILocalVariable(name: "s22", arg: 3, scope: !2824, file: !2765, line: 132, type: !27)
!2830 = !DILocalVariable(name: "s23", arg: 4, scope: !2824, file: !2765, line: 132, type: !27)
!2831 = !DILocalVariable(name: "s24", arg: 5, scope: !2824, file: !2765, line: 132, type: !27)
!2832 = !DILocalVariable(name: "s25", arg: 6, scope: !2824, file: !2765, line: 132, type: !27)
!2833 = !DILocalVariable(name: "s26", arg: 7, scope: !2824, file: !2765, line: 132, type: !27)
!2834 = !DILocalVariable(name: "s27", arg: 8, scope: !2824, file: !2765, line: 132, type: !27)
!2835 = !DILocalVariable(name: "s28", arg: 9, scope: !2824, file: !2765, line: 132, type: !27)
!2836 = !DILocation(line: 132, column: 25, scope: !2824, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 153, column: 16, scope: !2838, inlinedAt: !2809)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !2765, line: 150, column: 11)
!2839 = distinct !DILexicalBlock(scope: !2822, file: !2765, line: 149, column: 5)
!2840 = !DILocation(line: 132, column: 41, scope: !2824, inlinedAt: !2837)
!2841 = !DILocation(line: 132, column: 50, scope: !2824, inlinedAt: !2837)
!2842 = !DILocation(line: 132, column: 60, scope: !2824, inlinedAt: !2837)
!2843 = !DILocation(line: 132, column: 70, scope: !2824, inlinedAt: !2837)
!2844 = !DILocation(line: 132, column: 80, scope: !2824, inlinedAt: !2837)
!2845 = !DILocation(line: 132, column: 90, scope: !2824, inlinedAt: !2837)
!2846 = !DILocation(line: 132, column: 100, scope: !2824, inlinedAt: !2837)
!2847 = !DILocation(line: 132, column: 110, scope: !2824, inlinedAt: !2837)
!2848 = !DILocation(line: 134, column: 7, scope: !2849, inlinedAt: !2837)
!2849 = distinct !DILexicalBlock(scope: !2824, file: !2765, line: 134, column: 7)
!2850 = !DILocalVariable(name: "s1", arg: 1, scope: !2851, file: !2765, line: 118, type: !69)
!2851 = distinct !DISubprogram(name: "strcaseeq3", scope: !2765, file: !2765, line: 118, type: !2852, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27}
!2854 = !{!2850, !2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2855 = !DILocalVariable(name: "s2", arg: 2, scope: !2851, file: !2765, line: 118, type: !69)
!2856 = !DILocalVariable(name: "s23", arg: 3, scope: !2851, file: !2765, line: 118, type: !27)
!2857 = !DILocalVariable(name: "s24", arg: 4, scope: !2851, file: !2765, line: 118, type: !27)
!2858 = !DILocalVariable(name: "s25", arg: 5, scope: !2851, file: !2765, line: 118, type: !27)
!2859 = !DILocalVariable(name: "s26", arg: 6, scope: !2851, file: !2765, line: 118, type: !27)
!2860 = !DILocalVariable(name: "s27", arg: 7, scope: !2851, file: !2765, line: 118, type: !27)
!2861 = !DILocalVariable(name: "s28", arg: 8, scope: !2851, file: !2765, line: 118, type: !27)
!2862 = !DILocation(line: 118, column: 25, scope: !2851, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 139, column: 16, scope: !2864, inlinedAt: !2837)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !2765, line: 136, column: 11)
!2865 = distinct !DILexicalBlock(scope: !2849, file: !2765, line: 135, column: 5)
!2866 = !DILocation(line: 118, column: 41, scope: !2851, inlinedAt: !2863)
!2867 = !DILocation(line: 118, column: 50, scope: !2851, inlinedAt: !2863)
!2868 = !DILocation(line: 118, column: 60, scope: !2851, inlinedAt: !2863)
!2869 = !DILocation(line: 118, column: 70, scope: !2851, inlinedAt: !2863)
!2870 = !DILocation(line: 118, column: 80, scope: !2851, inlinedAt: !2863)
!2871 = !DILocation(line: 118, column: 90, scope: !2851, inlinedAt: !2863)
!2872 = !DILocation(line: 118, column: 100, scope: !2851, inlinedAt: !2863)
!2873 = !DILocation(line: 120, column: 7, scope: !2874, inlinedAt: !2863)
!2874 = distinct !DILexicalBlock(scope: !2851, file: !2765, line: 120, column: 7)
!2875 = !DILocation(line: 120, column: 7, scope: !2851, inlinedAt: !2863)
!2876 = !DILocalVariable(name: "s1", arg: 1, scope: !2877, file: !2765, line: 104, type: !69)
!2877 = distinct !DISubprogram(name: "strcaseeq4", scope: !2765, file: !2765, line: 104, type: !2878, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!73, !69, !69, !27, !27, !27, !27, !27}
!2880 = !{!2876, !2881, !2882, !2883, !2884, !2885, !2886}
!2881 = !DILocalVariable(name: "s2", arg: 2, scope: !2877, file: !2765, line: 104, type: !69)
!2882 = !DILocalVariable(name: "s24", arg: 3, scope: !2877, file: !2765, line: 104, type: !27)
!2883 = !DILocalVariable(name: "s25", arg: 4, scope: !2877, file: !2765, line: 104, type: !27)
!2884 = !DILocalVariable(name: "s26", arg: 5, scope: !2877, file: !2765, line: 104, type: !27)
!2885 = !DILocalVariable(name: "s27", arg: 6, scope: !2877, file: !2765, line: 104, type: !27)
!2886 = !DILocalVariable(name: "s28", arg: 7, scope: !2877, file: !2765, line: 104, type: !27)
!2887 = !DILocation(line: 104, column: 25, scope: !2877, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 125, column: 16, scope: !2889, inlinedAt: !2863)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !2765, line: 122, column: 11)
!2890 = distinct !DILexicalBlock(scope: !2874, file: !2765, line: 121, column: 5)
!2891 = !DILocation(line: 104, column: 41, scope: !2877, inlinedAt: !2888)
!2892 = !DILocation(line: 104, column: 50, scope: !2877, inlinedAt: !2888)
!2893 = !DILocation(line: 104, column: 60, scope: !2877, inlinedAt: !2888)
!2894 = !DILocation(line: 104, column: 70, scope: !2877, inlinedAt: !2888)
!2895 = !DILocation(line: 104, column: 80, scope: !2877, inlinedAt: !2888)
!2896 = !DILocation(line: 104, column: 90, scope: !2877, inlinedAt: !2888)
!2897 = !DILocation(line: 106, column: 7, scope: !2898, inlinedAt: !2888)
!2898 = distinct !DILexicalBlock(scope: !2877, file: !2765, line: 106, column: 7)
!2899 = !DILocation(line: 106, column: 7, scope: !2877, inlinedAt: !2888)
!2900 = !DILocalVariable(name: "s1", arg: 1, scope: !2901, file: !2765, line: 90, type: !69)
!2901 = distinct !DISubprogram(name: "strcaseeq5", scope: !2765, file: !2765, line: 90, type: !2902, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!73, !69, !69, !27, !27, !27, !27}
!2904 = !{!2900, !2905, !2906, !2907, !2908, !2909}
!2905 = !DILocalVariable(name: "s2", arg: 2, scope: !2901, file: !2765, line: 90, type: !69)
!2906 = !DILocalVariable(name: "s25", arg: 3, scope: !2901, file: !2765, line: 90, type: !27)
!2907 = !DILocalVariable(name: "s26", arg: 4, scope: !2901, file: !2765, line: 90, type: !27)
!2908 = !DILocalVariable(name: "s27", arg: 5, scope: !2901, file: !2765, line: 90, type: !27)
!2909 = !DILocalVariable(name: "s28", arg: 6, scope: !2901, file: !2765, line: 90, type: !27)
!2910 = !DILocation(line: 90, column: 25, scope: !2901, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 111, column: 16, scope: !2912, inlinedAt: !2888)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2765, line: 108, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2898, file: !2765, line: 107, column: 5)
!2914 = !DILocation(line: 90, column: 41, scope: !2901, inlinedAt: !2911)
!2915 = !DILocation(line: 90, column: 50, scope: !2901, inlinedAt: !2911)
!2916 = !DILocation(line: 90, column: 60, scope: !2901, inlinedAt: !2911)
!2917 = !DILocation(line: 90, column: 70, scope: !2901, inlinedAt: !2911)
!2918 = !DILocation(line: 90, column: 80, scope: !2901, inlinedAt: !2911)
!2919 = !DILocation(line: 92, column: 7, scope: !2920, inlinedAt: !2911)
!2920 = distinct !DILexicalBlock(scope: !2901, file: !2765, line: 92, column: 7)
!2921 = !DILocation(line: 92, column: 7, scope: !2901, inlinedAt: !2911)
!2922 = !DILocation(line: 235, column: 12, scope: !2781)
!2923 = !DILocation(line: 235, column: 21, scope: !2781)
!2924 = !DILocation(line: 235, column: 5, scope: !2781)
!2925 = !DILocation(line: 146, column: 25, scope: !2795, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 167, column: 16, scope: !2810, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 236, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2746, file: !406, line: 236, column: 7)
!2929 = !DILocation(line: 146, column: 41, scope: !2795, inlinedAt: !2926)
!2930 = !DILocation(line: 146, column: 50, scope: !2795, inlinedAt: !2926)
!2931 = !DILocation(line: 146, column: 60, scope: !2795, inlinedAt: !2926)
!2932 = !DILocation(line: 146, column: 70, scope: !2795, inlinedAt: !2926)
!2933 = !DILocation(line: 146, column: 80, scope: !2795, inlinedAt: !2926)
!2934 = !DILocation(line: 146, column: 90, scope: !2795, inlinedAt: !2926)
!2935 = !DILocation(line: 146, column: 100, scope: !2795, inlinedAt: !2926)
!2936 = !DILocation(line: 146, column: 110, scope: !2795, inlinedAt: !2926)
!2937 = !DILocation(line: 146, column: 120, scope: !2795, inlinedAt: !2926)
!2938 = !DILocation(line: 148, column: 7, scope: !2822, inlinedAt: !2926)
!2939 = !DILocation(line: 132, column: 25, scope: !2824, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 153, column: 16, scope: !2838, inlinedAt: !2926)
!2941 = !DILocation(line: 132, column: 41, scope: !2824, inlinedAt: !2940)
!2942 = !DILocation(line: 132, column: 50, scope: !2824, inlinedAt: !2940)
!2943 = !DILocation(line: 132, column: 60, scope: !2824, inlinedAt: !2940)
!2944 = !DILocation(line: 132, column: 70, scope: !2824, inlinedAt: !2940)
!2945 = !DILocation(line: 132, column: 80, scope: !2824, inlinedAt: !2940)
!2946 = !DILocation(line: 132, column: 90, scope: !2824, inlinedAt: !2940)
!2947 = !DILocation(line: 132, column: 100, scope: !2824, inlinedAt: !2940)
!2948 = !DILocation(line: 132, column: 110, scope: !2824, inlinedAt: !2940)
!2949 = !DILocation(line: 134, column: 7, scope: !2849, inlinedAt: !2940)
!2950 = !DILocation(line: 134, column: 7, scope: !2824, inlinedAt: !2940)
!2951 = !DILocation(line: 118, column: 25, scope: !2851, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 139, column: 16, scope: !2864, inlinedAt: !2940)
!2953 = !DILocation(line: 118, column: 41, scope: !2851, inlinedAt: !2952)
!2954 = !DILocation(line: 118, column: 50, scope: !2851, inlinedAt: !2952)
!2955 = !DILocation(line: 118, column: 60, scope: !2851, inlinedAt: !2952)
!2956 = !DILocation(line: 118, column: 70, scope: !2851, inlinedAt: !2952)
!2957 = !DILocation(line: 118, column: 80, scope: !2851, inlinedAt: !2952)
!2958 = !DILocation(line: 118, column: 90, scope: !2851, inlinedAt: !2952)
!2959 = !DILocation(line: 118, column: 100, scope: !2851, inlinedAt: !2952)
!2960 = !DILocation(line: 120, column: 7, scope: !2874, inlinedAt: !2952)
!2961 = !DILocation(line: 120, column: 7, scope: !2851, inlinedAt: !2952)
!2962 = !DILocation(line: 104, column: 25, scope: !2877, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 125, column: 16, scope: !2889, inlinedAt: !2952)
!2964 = !DILocation(line: 104, column: 41, scope: !2877, inlinedAt: !2963)
!2965 = !DILocation(line: 104, column: 50, scope: !2877, inlinedAt: !2963)
!2966 = !DILocation(line: 104, column: 60, scope: !2877, inlinedAt: !2963)
!2967 = !DILocation(line: 104, column: 70, scope: !2877, inlinedAt: !2963)
!2968 = !DILocation(line: 104, column: 80, scope: !2877, inlinedAt: !2963)
!2969 = !DILocation(line: 104, column: 90, scope: !2877, inlinedAt: !2963)
!2970 = !DILocation(line: 106, column: 7, scope: !2898, inlinedAt: !2963)
!2971 = !DILocation(line: 106, column: 7, scope: !2877, inlinedAt: !2963)
!2972 = !DILocation(line: 90, column: 25, scope: !2901, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 111, column: 16, scope: !2912, inlinedAt: !2963)
!2974 = !DILocation(line: 90, column: 41, scope: !2901, inlinedAt: !2973)
!2975 = !DILocation(line: 90, column: 50, scope: !2901, inlinedAt: !2973)
!2976 = !DILocation(line: 90, column: 60, scope: !2901, inlinedAt: !2973)
!2977 = !DILocation(line: 90, column: 70, scope: !2901, inlinedAt: !2973)
!2978 = !DILocation(line: 90, column: 80, scope: !2901, inlinedAt: !2973)
!2979 = !DILocation(line: 92, column: 7, scope: !2920, inlinedAt: !2973)
!2980 = !DILocation(line: 92, column: 7, scope: !2901, inlinedAt: !2973)
!2981 = !DILocalVariable(name: "s1", arg: 1, scope: !2982, file: !2765, line: 76, type: !69)
!2982 = distinct !DISubprogram(name: "strcaseeq6", scope: !2765, file: !2765, line: 76, type: !2983, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!73, !69, !69, !27, !27, !27}
!2985 = !{!2981, !2986, !2987, !2988, !2989}
!2986 = !DILocalVariable(name: "s2", arg: 2, scope: !2982, file: !2765, line: 76, type: !69)
!2987 = !DILocalVariable(name: "s26", arg: 3, scope: !2982, file: !2765, line: 76, type: !27)
!2988 = !DILocalVariable(name: "s27", arg: 4, scope: !2982, file: !2765, line: 76, type: !27)
!2989 = !DILocalVariable(name: "s28", arg: 5, scope: !2982, file: !2765, line: 76, type: !27)
!2990 = !DILocation(line: 76, column: 25, scope: !2982, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 97, column: 16, scope: !2992, inlinedAt: !2973)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !2765, line: 94, column: 11)
!2993 = distinct !DILexicalBlock(scope: !2920, file: !2765, line: 93, column: 5)
!2994 = !DILocation(line: 76, column: 41, scope: !2982, inlinedAt: !2991)
!2995 = !DILocation(line: 76, column: 50, scope: !2982, inlinedAt: !2991)
!2996 = !DILocation(line: 76, column: 60, scope: !2982, inlinedAt: !2991)
!2997 = !DILocation(line: 76, column: 70, scope: !2982, inlinedAt: !2991)
!2998 = !DILocation(line: 78, column: 7, scope: !2999, inlinedAt: !2991)
!2999 = distinct !DILexicalBlock(scope: !2982, file: !2765, line: 78, column: 7)
!3000 = !DILocation(line: 78, column: 7, scope: !2982, inlinedAt: !2991)
!3001 = !DILocalVariable(name: "s1", arg: 1, scope: !3002, file: !2765, line: 62, type: !69)
!3002 = distinct !DISubprogram(name: "strcaseeq7", scope: !2765, file: !2765, line: 62, type: !3003, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!73, !69, !69, !27, !27}
!3005 = !{!3001, !3006, !3007, !3008}
!3006 = !DILocalVariable(name: "s2", arg: 2, scope: !3002, file: !2765, line: 62, type: !69)
!3007 = !DILocalVariable(name: "s27", arg: 3, scope: !3002, file: !2765, line: 62, type: !27)
!3008 = !DILocalVariable(name: "s28", arg: 4, scope: !3002, file: !2765, line: 62, type: !27)
!3009 = !DILocation(line: 62, column: 25, scope: !3002, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 83, column: 16, scope: !3011, inlinedAt: !2991)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !2765, line: 80, column: 11)
!3012 = distinct !DILexicalBlock(scope: !2999, file: !2765, line: 79, column: 5)
!3013 = !DILocation(line: 62, column: 41, scope: !3002, inlinedAt: !3010)
!3014 = !DILocation(line: 62, column: 50, scope: !3002, inlinedAt: !3010)
!3015 = !DILocation(line: 62, column: 60, scope: !3002, inlinedAt: !3010)
!3016 = !DILocation(line: 64, column: 7, scope: !3017, inlinedAt: !3010)
!3017 = distinct !DILexicalBlock(scope: !3002, file: !2765, line: 64, column: 7)
!3018 = !DILocation(line: 236, column: 7, scope: !2746)
!3019 = !DILocation(line: 237, column: 12, scope: !2928)
!3020 = !DILocation(line: 237, column: 21, scope: !2928)
!3021 = !DILocation(line: 237, column: 5, scope: !2928)
!3022 = !DILocation(line: 239, column: 13, scope: !2746)
!3023 = !DILocation(line: 239, column: 11, scope: !2746)
!3024 = !DILocation(line: 239, column: 3, scope: !2746)
!3025 = !DILocation(line: 0, scope: !2746)
!3026 = !DILocation(line: 240, column: 1, scope: !2746)
!3027 = distinct !DISubprogram(name: "quotearg_alloc", scope: !406, file: !406, line: 799, type: !3028, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!26, !69, !215, !2069}
!3030 = !{!3031, !3032, !3033}
!3031 = !DILocalVariable(name: "arg", arg: 1, scope: !3027, file: !406, line: 799, type: !69)
!3032 = !DILocalVariable(name: "argsize", arg: 2, scope: !3027, file: !406, line: 799, type: !215)
!3033 = !DILocalVariable(name: "o", arg: 3, scope: !3027, file: !406, line: 800, type: !2069)
!3034 = !DILocation(line: 799, column: 29, scope: !3027)
!3035 = !DILocation(line: 799, column: 41, scope: !3027)
!3036 = !DILocation(line: 800, column: 47, scope: !3027)
!3037 = !DILocalVariable(name: "arg", arg: 1, scope: !3038, file: !406, line: 812, type: !69)
!3038 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !406, file: !406, line: 812, type: !3039, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!26, !69, !215, !473, !2069}
!3041 = !{!3037, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3042 = !DILocalVariable(name: "argsize", arg: 2, scope: !3038, file: !406, line: 812, type: !215)
!3043 = !DILocalVariable(name: "size", arg: 3, scope: !3038, file: !406, line: 812, type: !473)
!3044 = !DILocalVariable(name: "o", arg: 4, scope: !3038, file: !406, line: 813, type: !2069)
!3045 = !DILocalVariable(name: "p", scope: !3038, file: !406, line: 815, type: !2069)
!3046 = !DILocalVariable(name: "e", scope: !3038, file: !406, line: 816, type: !73)
!3047 = !DILocalVariable(name: "flags", scope: !3038, file: !406, line: 818, type: !73)
!3048 = !DILocalVariable(name: "bufsize", scope: !3038, file: !406, line: 819, type: !215)
!3049 = !DILocalVariable(name: "buf", scope: !3038, file: !406, line: 823, type: !26)
!3050 = !DILocation(line: 812, column: 33, scope: !3038, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 802, column: 10, scope: !3027)
!3052 = !DILocation(line: 812, column: 45, scope: !3038, inlinedAt: !3051)
!3053 = !DILocation(line: 812, column: 62, scope: !3038, inlinedAt: !3051)
!3054 = !DILocation(line: 813, column: 51, scope: !3038, inlinedAt: !3051)
!3055 = !DILocation(line: 815, column: 37, scope: !3038, inlinedAt: !3051)
!3056 = !DILocation(line: 815, column: 33, scope: !3038, inlinedAt: !3051)
!3057 = !DILocation(line: 816, column: 11, scope: !3038, inlinedAt: !3051)
!3058 = !DILocation(line: 816, column: 7, scope: !3038, inlinedAt: !3051)
!3059 = !DILocation(line: 818, column: 18, scope: !3038, inlinedAt: !3051)
!3060 = !DILocation(line: 818, column: 24, scope: !3038, inlinedAt: !3051)
!3061 = !DILocation(line: 818, column: 7, scope: !3038, inlinedAt: !3051)
!3062 = !DILocation(line: 819, column: 69, scope: !3038, inlinedAt: !3051)
!3063 = !DILocation(line: 820, column: 53, scope: !3038, inlinedAt: !3051)
!3064 = !DILocation(line: 821, column: 49, scope: !3038, inlinedAt: !3051)
!3065 = !DILocation(line: 822, column: 49, scope: !3038, inlinedAt: !3051)
!3066 = !DILocation(line: 819, column: 20, scope: !3038, inlinedAt: !3051)
!3067 = !DILocation(line: 822, column: 62, scope: !3038, inlinedAt: !3051)
!3068 = !DILocation(line: 819, column: 10, scope: !3038, inlinedAt: !3051)
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3070, file: !469, line: 216, type: !215)
!3070 = distinct !DISubprogram(name: "xcharalloc", scope: !469, file: !469, line: 216, type: !3071, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!26, !215}
!3073 = !{!3069}
!3074 = !DILocation(line: 216, column: 20, scope: !3070, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 823, column: 15, scope: !3038, inlinedAt: !3051)
!3076 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3075)
!3077 = !DILocation(line: 823, column: 9, scope: !3038, inlinedAt: !3051)
!3078 = !DILocation(line: 824, column: 60, scope: !3038, inlinedAt: !3051)
!3079 = !DILocation(line: 826, column: 32, scope: !3038, inlinedAt: !3051)
!3080 = !DILocation(line: 826, column: 47, scope: !3038, inlinedAt: !3051)
!3081 = !DILocation(line: 824, column: 3, scope: !3038, inlinedAt: !3051)
!3082 = !DILocation(line: 827, column: 9, scope: !3038, inlinedAt: !3051)
!3083 = !DILocation(line: 802, column: 3, scope: !3027)
!3084 = !DILocation(line: 812, column: 33, scope: !3038)
!3085 = !DILocation(line: 812, column: 45, scope: !3038)
!3086 = !DILocation(line: 812, column: 62, scope: !3038)
!3087 = !DILocation(line: 813, column: 51, scope: !3038)
!3088 = !DILocation(line: 815, column: 37, scope: !3038)
!3089 = !DILocation(line: 815, column: 33, scope: !3038)
!3090 = !DILocation(line: 816, column: 11, scope: !3038)
!3091 = !DILocation(line: 816, column: 7, scope: !3038)
!3092 = !DILocation(line: 818, column: 18, scope: !3038)
!3093 = !DILocation(line: 818, column: 27, scope: !3038)
!3094 = !DILocation(line: 818, column: 24, scope: !3038)
!3095 = !DILocation(line: 818, column: 7, scope: !3038)
!3096 = !DILocation(line: 819, column: 69, scope: !3038)
!3097 = !DILocation(line: 820, column: 53, scope: !3038)
!3098 = !DILocation(line: 821, column: 49, scope: !3038)
!3099 = !DILocation(line: 822, column: 49, scope: !3038)
!3100 = !DILocation(line: 819, column: 20, scope: !3038)
!3101 = !DILocation(line: 822, column: 62, scope: !3038)
!3102 = !DILocation(line: 819, column: 10, scope: !3038)
!3103 = !DILocation(line: 216, column: 20, scope: !3070, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 823, column: 15, scope: !3038)
!3105 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3104)
!3106 = !DILocation(line: 823, column: 9, scope: !3038)
!3107 = !DILocation(line: 824, column: 60, scope: !3038)
!3108 = !DILocation(line: 826, column: 32, scope: !3038)
!3109 = !DILocation(line: 826, column: 47, scope: !3038)
!3110 = !DILocation(line: 824, column: 3, scope: !3038)
!3111 = !DILocation(line: 827, column: 9, scope: !3038)
!3112 = !DILocation(line: 828, column: 7, scope: !3038)
!3113 = !DILocation(line: 829, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3038, file: !406, line: 828, column: 7)
!3115 = !DILocation(line: 829, column: 5, scope: !3114)
!3116 = !DILocation(line: 830, column: 3, scope: !3038)
!3117 = distinct !DISubprogram(name: "quotearg_free", scope: !406, file: !406, line: 848, type: !1171, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3118)
!3118 = !{!3119, !3120}
!3119 = !DILocalVariable(name: "sv", scope: !3117, file: !406, line: 850, type: !427)
!3120 = !DILocalVariable(name: "i", scope: !3117, file: !406, line: 851, type: !73)
!3121 = !DILocation(line: 850, column: 24, scope: !3117)
!3122 = !DILocation(line: 850, column: 19, scope: !3117)
!3123 = !DILocation(line: 851, column: 7, scope: !3117)
!3124 = !DILocation(line: 852, column: 19, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !406, line: 852, column: 3)
!3126 = distinct !DILexicalBlock(scope: !3117, file: !406, line: 852, column: 3)
!3127 = !DILocation(line: 852, column: 17, scope: !3125)
!3128 = !DILocation(line: 852, column: 3, scope: !3126)
!3129 = !DILocation(line: 853, column: 17, scope: !3125)
!3130 = !{!3131, !935, i64 8}
!3131 = !{!"slotvec", !1124, i64 0, !935, i64 8}
!3132 = !DILocation(line: 853, column: 5, scope: !3125)
!3133 = !DILocation(line: 852, column: 28, scope: !3125)
!3134 = distinct !{!3134, !3128, !3135}
!3135 = !DILocation(line: 853, column: 20, scope: !3126)
!3136 = !DILocation(line: 854, column: 13, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3117, file: !406, line: 854, column: 7)
!3138 = !DILocation(line: 854, column: 17, scope: !3137)
!3139 = !DILocation(line: 854, column: 7, scope: !3117)
!3140 = !DILocation(line: 856, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3137, file: !406, line: 855, column: 5)
!3142 = !DILocation(line: 857, column: 21, scope: !3141)
!3143 = !{!3131, !1124, i64 0}
!3144 = !DILocation(line: 858, column: 20, scope: !3141)
!3145 = !DILocation(line: 859, column: 5, scope: !3141)
!3146 = !DILocation(line: 860, column: 10, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3117, file: !406, line: 860, column: 7)
!3148 = !DILocation(line: 860, column: 7, scope: !3117)
!3149 = !DILocation(line: 862, column: 13, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3147, file: !406, line: 861, column: 5)
!3151 = !DILocation(line: 862, column: 7, scope: !3150)
!3152 = !DILocation(line: 863, column: 15, scope: !3150)
!3153 = !DILocation(line: 864, column: 5, scope: !3150)
!3154 = !DILocation(line: 865, column: 10, scope: !3117)
!3155 = !DILocation(line: 866, column: 1, scope: !3117)
!3156 = distinct !DISubprogram(name: "quotearg_n", scope: !406, file: !406, line: 931, type: !3157, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!26, !73, !69}
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "n", arg: 1, scope: !3156, file: !406, line: 931, type: !73)
!3161 = !DILocalVariable(name: "arg", arg: 2, scope: !3156, file: !406, line: 931, type: !69)
!3162 = !DILocation(line: 931, column: 17, scope: !3156)
!3163 = !DILocation(line: 931, column: 32, scope: !3156)
!3164 = !DILocation(line: 933, column: 10, scope: !3156)
!3165 = !DILocation(line: 933, column: 3, scope: !3156)
!3166 = distinct !DISubprogram(name: "quotearg_n_options", scope: !406, file: !406, line: 877, type: !3167, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!26, !73, !69, !215, !2069}
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3179, !3180, !3182, !3183, !3184}
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3166, file: !406, line: 877, type: !73)
!3171 = !DILocalVariable(name: "arg", arg: 2, scope: !3166, file: !406, line: 877, type: !69)
!3172 = !DILocalVariable(name: "argsize", arg: 3, scope: !3166, file: !406, line: 877, type: !215)
!3173 = !DILocalVariable(name: "options", arg: 4, scope: !3166, file: !406, line: 878, type: !2069)
!3174 = !DILocalVariable(name: "e", scope: !3166, file: !406, line: 880, type: !73)
!3175 = !DILocalVariable(name: "sv", scope: !3166, file: !406, line: 882, type: !427)
!3176 = !DILocalVariable(name: "preallocated", scope: !3177, file: !406, line: 889, type: !38)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !406, line: 888, column: 5)
!3178 = distinct !DILexicalBlock(scope: !3166, file: !406, line: 887, column: 7)
!3179 = !DILocalVariable(name: "nmax", scope: !3177, file: !406, line: 890, type: !73)
!3180 = !DILocalVariable(name: "size", scope: !3181, file: !406, line: 903, type: !215)
!3181 = distinct !DILexicalBlock(scope: !3166, file: !406, line: 902, column: 3)
!3182 = !DILocalVariable(name: "val", scope: !3181, file: !406, line: 904, type: !26)
!3183 = !DILocalVariable(name: "flags", scope: !3181, file: !406, line: 906, type: !73)
!3184 = !DILocalVariable(name: "qsize", scope: !3181, file: !406, line: 907, type: !215)
!3185 = !DILocation(line: 877, column: 25, scope: !3166)
!3186 = !DILocation(line: 877, column: 40, scope: !3166)
!3187 = !DILocation(line: 877, column: 52, scope: !3166)
!3188 = !DILocation(line: 878, column: 51, scope: !3166)
!3189 = !DILocation(line: 880, column: 11, scope: !3166)
!3190 = !DILocation(line: 880, column: 7, scope: !3166)
!3191 = !DILocation(line: 882, column: 24, scope: !3166)
!3192 = !DILocation(line: 882, column: 19, scope: !3166)
!3193 = !DILocation(line: 884, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3166, file: !406, line: 884, column: 7)
!3195 = !DILocation(line: 884, column: 7, scope: !3166)
!3196 = !DILocation(line: 885, column: 5, scope: !3194)
!3197 = !DILocation(line: 887, column: 7, scope: !3178)
!3198 = !DILocation(line: 887, column: 14, scope: !3178)
!3199 = !DILocation(line: 887, column: 7, scope: !3166)
!3200 = !DILocation(line: 889, column: 31, scope: !3177)
!3201 = !DILocation(line: 890, column: 11, scope: !3177)
!3202 = !DILocation(line: 892, column: 16, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3177, file: !406, line: 892, column: 11)
!3204 = !DILocation(line: 892, column: 11, scope: !3177)
!3205 = !DILocation(line: 893, column: 9, scope: !3203)
!3206 = !DILocation(line: 895, column: 32, scope: !3177)
!3207 = !DILocation(line: 895, column: 61, scope: !3177)
!3208 = !DILocation(line: 895, column: 58, scope: !3177)
!3209 = !DILocation(line: 895, column: 66, scope: !3177)
!3210 = !DILocation(line: 895, column: 22, scope: !3177)
!3211 = !DILocation(line: 895, column: 15, scope: !3177)
!3212 = !DILocation(line: 896, column: 11, scope: !3177)
!3213 = !DILocation(line: 897, column: 15, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3177, file: !406, line: 896, column: 11)
!3215 = !{i64 0, i64 8, !1123, i64 8, i64 8, !934}
!3216 = !DILocation(line: 897, column: 9, scope: !3214)
!3217 = !DILocation(line: 898, column: 20, scope: !3177)
!3218 = !DILocation(line: 898, column: 18, scope: !3177)
!3219 = !DILocation(line: 898, column: 7, scope: !3177)
!3220 = !DILocation(line: 898, column: 38, scope: !3177)
!3221 = !DILocation(line: 898, column: 31, scope: !3177)
!3222 = !DILocation(line: 898, column: 48, scope: !3177)
!3223 = !DILocation(line: 899, column: 14, scope: !3177)
!3224 = !DILocation(line: 900, column: 5, scope: !3177)
!3225 = !DILocation(line: 0, scope: !3166)
!3226 = !DILocation(line: 903, column: 19, scope: !3181)
!3227 = !DILocation(line: 903, column: 25, scope: !3181)
!3228 = !DILocation(line: 903, column: 12, scope: !3181)
!3229 = !DILocation(line: 904, column: 23, scope: !3181)
!3230 = !DILocation(line: 904, column: 11, scope: !3181)
!3231 = !DILocation(line: 906, column: 26, scope: !3181)
!3232 = !DILocation(line: 906, column: 32, scope: !3181)
!3233 = !DILocation(line: 906, column: 9, scope: !3181)
!3234 = !DILocation(line: 908, column: 55, scope: !3181)
!3235 = !DILocation(line: 909, column: 46, scope: !3181)
!3236 = !DILocation(line: 910, column: 55, scope: !3181)
!3237 = !DILocation(line: 911, column: 55, scope: !3181)
!3238 = !DILocation(line: 907, column: 20, scope: !3181)
!3239 = !DILocation(line: 907, column: 12, scope: !3181)
!3240 = !DILocation(line: 913, column: 14, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3181, file: !406, line: 913, column: 9)
!3242 = !DILocation(line: 913, column: 9, scope: !3181)
!3243 = !DILocation(line: 915, column: 35, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !406, line: 914, column: 7)
!3245 = !DILocation(line: 915, column: 20, scope: !3244)
!3246 = !DILocation(line: 916, column: 17, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !406, line: 916, column: 13)
!3248 = !DILocation(line: 916, column: 13, scope: !3244)
!3249 = !DILocation(line: 917, column: 11, scope: !3247)
!3250 = !DILocation(line: 216, column: 20, scope: !3070, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 918, column: 27, scope: !3244)
!3252 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3251)
!3253 = !DILocation(line: 918, column: 19, scope: !3244)
!3254 = !DILocation(line: 919, column: 69, scope: !3244)
!3255 = !DILocation(line: 921, column: 44, scope: !3244)
!3256 = !DILocation(line: 922, column: 44, scope: !3244)
!3257 = !DILocation(line: 919, column: 9, scope: !3244)
!3258 = !DILocation(line: 923, column: 7, scope: !3244)
!3259 = !DILocation(line: 0, scope: !3181)
!3260 = !DILocation(line: 925, column: 11, scope: !3181)
!3261 = !DILocation(line: 926, column: 5, scope: !3181)
!3262 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !406, file: !406, line: 937, type: !3263, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!26, !73, !69, !215}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !406, line: 937, type: !73)
!3267 = !DILocalVariable(name: "arg", arg: 2, scope: !3262, file: !406, line: 937, type: !69)
!3268 = !DILocalVariable(name: "argsize", arg: 3, scope: !3262, file: !406, line: 937, type: !215)
!3269 = !DILocation(line: 937, column: 21, scope: !3262)
!3270 = !DILocation(line: 937, column: 36, scope: !3262)
!3271 = !DILocation(line: 937, column: 48, scope: !3262)
!3272 = !DILocation(line: 939, column: 10, scope: !3262)
!3273 = !DILocation(line: 939, column: 3, scope: !3262)
!3274 = distinct !DISubprogram(name: "quotearg", scope: !406, file: !406, line: 943, type: !1820, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3275)
!3275 = !{!3276}
!3276 = !DILocalVariable(name: "arg", arg: 1, scope: !3274, file: !406, line: 943, type: !69)
!3277 = !DILocation(line: 943, column: 23, scope: !3274)
!3278 = !DILocation(line: 931, column: 17, scope: !3156, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 945, column: 10, scope: !3274)
!3280 = !DILocation(line: 931, column: 32, scope: !3156, inlinedAt: !3279)
!3281 = !DILocation(line: 933, column: 10, scope: !3156, inlinedAt: !3279)
!3282 = !DILocation(line: 945, column: 3, scope: !3274)
!3283 = distinct !DISubprogram(name: "quotearg_mem", scope: !406, file: !406, line: 949, type: !3284, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!26, !69, !215}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !406, line: 949, type: !69)
!3288 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !406, line: 949, type: !215)
!3289 = !DILocation(line: 949, column: 27, scope: !3283)
!3290 = !DILocation(line: 949, column: 39, scope: !3283)
!3291 = !DILocation(line: 937, column: 21, scope: !3262, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 951, column: 10, scope: !3283)
!3293 = !DILocation(line: 937, column: 36, scope: !3262, inlinedAt: !3292)
!3294 = !DILocation(line: 937, column: 48, scope: !3262, inlinedAt: !3292)
!3295 = !DILocation(line: 939, column: 10, scope: !3262, inlinedAt: !3292)
!3296 = !DILocation(line: 951, column: 3, scope: !3283)
!3297 = distinct !DISubprogram(name: "quotearg_n_style", scope: !406, file: !406, line: 955, type: !3298, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!26, !73, !11, !69}
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3297, file: !406, line: 955, type: !73)
!3302 = !DILocalVariable(name: "s", arg: 2, scope: !3297, file: !406, line: 955, type: !11)
!3303 = !DILocalVariable(name: "arg", arg: 3, scope: !3297, file: !406, line: 955, type: !69)
!3304 = !DILocalVariable(name: "o", scope: !3297, file: !406, line: 957, type: !2070)
!3305 = !DILocation(line: 955, column: 23, scope: !3297)
!3306 = !DILocation(line: 955, column: 45, scope: !3297)
!3307 = !DILocation(line: 955, column: 60, scope: !3297)
!3308 = !DILocation(line: 957, column: 3, scope: !3297)
!3309 = !DILocation(line: 957, column: 32, scope: !3297)
!3310 = !DILocalVariable(name: "style", arg: 1, scope: !3311, file: !406, line: 193, type: !11)
!3311 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !406, file: !406, line: 193, type: !3312, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!413, !11}
!3314 = !{!3310, !3315}
!3315 = !DILocalVariable(name: "o", scope: !3311, file: !406, line: 195, type: !413)
!3316 = !DILocation(line: 193, column: 48, scope: !3311, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 957, column: 36, scope: !3297)
!3318 = !DILocation(line: 195, column: 26, scope: !3311, inlinedAt: !3317)
!3319 = !{!3320}
!3320 = distinct !{!3320, !3321, !"quoting_options_from_style: argument 0"}
!3321 = distinct !{!3321, !"quoting_options_from_style"}
!3322 = !DILocation(line: 196, column: 13, scope: !3323, inlinedAt: !3317)
!3323 = distinct !DILexicalBlock(scope: !3311, file: !406, line: 196, column: 7)
!3324 = !DILocation(line: 196, column: 7, scope: !3311, inlinedAt: !3317)
!3325 = !DILocation(line: 197, column: 5, scope: !3323, inlinedAt: !3317)
!3326 = !DILocation(line: 198, column: 5, scope: !3311, inlinedAt: !3317)
!3327 = !DILocation(line: 198, column: 11, scope: !3311, inlinedAt: !3317)
!3328 = !DILocation(line: 958, column: 10, scope: !3297)
!3329 = !DILocation(line: 959, column: 1, scope: !3297)
!3330 = !DILocation(line: 958, column: 3, scope: !3297)
!3331 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !406, file: !406, line: 962, type: !3332, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!26, !73, !11, !69, !215}
!3334 = !{!3335, !3336, !3337, !3338, !3339}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !406, line: 962, type: !73)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !406, line: 962, type: !11)
!3337 = !DILocalVariable(name: "arg", arg: 3, scope: !3331, file: !406, line: 963, type: !69)
!3338 = !DILocalVariable(name: "argsize", arg: 4, scope: !3331, file: !406, line: 963, type: !215)
!3339 = !DILocalVariable(name: "o", scope: !3331, file: !406, line: 965, type: !2070)
!3340 = !DILocation(line: 962, column: 27, scope: !3331)
!3341 = !DILocation(line: 962, column: 49, scope: !3331)
!3342 = !DILocation(line: 963, column: 35, scope: !3331)
!3343 = !DILocation(line: 963, column: 47, scope: !3331)
!3344 = !DILocation(line: 965, column: 3, scope: !3331)
!3345 = !DILocation(line: 965, column: 32, scope: !3331)
!3346 = !DILocation(line: 193, column: 48, scope: !3311, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 965, column: 36, scope: !3331)
!3348 = !DILocation(line: 195, column: 26, scope: !3311, inlinedAt: !3347)
!3349 = !{!3350}
!3350 = distinct !{!3350, !3351, !"quoting_options_from_style: argument 0"}
!3351 = distinct !{!3351, !"quoting_options_from_style"}
!3352 = !DILocation(line: 196, column: 13, scope: !3323, inlinedAt: !3347)
!3353 = !DILocation(line: 196, column: 7, scope: !3311, inlinedAt: !3347)
!3354 = !DILocation(line: 197, column: 5, scope: !3323, inlinedAt: !3347)
!3355 = !DILocation(line: 198, column: 5, scope: !3311, inlinedAt: !3347)
!3356 = !DILocation(line: 198, column: 11, scope: !3311, inlinedAt: !3347)
!3357 = !DILocation(line: 966, column: 10, scope: !3331)
!3358 = !DILocation(line: 967, column: 1, scope: !3331)
!3359 = !DILocation(line: 966, column: 3, scope: !3331)
!3360 = distinct !DISubprogram(name: "quotearg_style", scope: !406, file: !406, line: 970, type: !3361, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!26, !11, !69}
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "s", arg: 1, scope: !3360, file: !406, line: 970, type: !11)
!3365 = !DILocalVariable(name: "arg", arg: 2, scope: !3360, file: !406, line: 970, type: !69)
!3366 = !DILocation(line: 970, column: 36, scope: !3360)
!3367 = !DILocation(line: 970, column: 51, scope: !3360)
!3368 = !DILocation(line: 955, column: 23, scope: !3297, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 972, column: 10, scope: !3360)
!3370 = !DILocation(line: 955, column: 45, scope: !3297, inlinedAt: !3369)
!3371 = !DILocation(line: 955, column: 60, scope: !3297, inlinedAt: !3369)
!3372 = !DILocation(line: 957, column: 3, scope: !3297, inlinedAt: !3369)
!3373 = !DILocation(line: 957, column: 32, scope: !3297, inlinedAt: !3369)
!3374 = !DILocation(line: 193, column: 48, scope: !3311, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 957, column: 36, scope: !3297, inlinedAt: !3369)
!3376 = !DILocation(line: 195, column: 26, scope: !3311, inlinedAt: !3375)
!3377 = !{!3378}
!3378 = distinct !{!3378, !3379, !"quoting_options_from_style: argument 0"}
!3379 = distinct !{!3379, !"quoting_options_from_style"}
!3380 = !DILocation(line: 196, column: 13, scope: !3323, inlinedAt: !3375)
!3381 = !DILocation(line: 196, column: 7, scope: !3311, inlinedAt: !3375)
!3382 = !DILocation(line: 197, column: 5, scope: !3323, inlinedAt: !3375)
!3383 = !DILocation(line: 198, column: 5, scope: !3311, inlinedAt: !3375)
!3384 = !DILocation(line: 198, column: 11, scope: !3311, inlinedAt: !3375)
!3385 = !DILocation(line: 958, column: 10, scope: !3297, inlinedAt: !3369)
!3386 = !DILocation(line: 959, column: 1, scope: !3297, inlinedAt: !3369)
!3387 = !DILocation(line: 972, column: 3, scope: !3360)
!3388 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !406, file: !406, line: 976, type: !3389, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!26, !11, !69, !215}
!3391 = !{!3392, !3393, !3394}
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3388, file: !406, line: 976, type: !11)
!3393 = !DILocalVariable(name: "arg", arg: 2, scope: !3388, file: !406, line: 976, type: !69)
!3394 = !DILocalVariable(name: "argsize", arg: 3, scope: !3388, file: !406, line: 976, type: !215)
!3395 = !DILocation(line: 976, column: 40, scope: !3388)
!3396 = !DILocation(line: 976, column: 55, scope: !3388)
!3397 = !DILocation(line: 976, column: 67, scope: !3388)
!3398 = !DILocation(line: 962, column: 27, scope: !3331, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 978, column: 10, scope: !3388)
!3400 = !DILocation(line: 962, column: 49, scope: !3331, inlinedAt: !3399)
!3401 = !DILocation(line: 963, column: 35, scope: !3331, inlinedAt: !3399)
!3402 = !DILocation(line: 963, column: 47, scope: !3331, inlinedAt: !3399)
!3403 = !DILocation(line: 965, column: 3, scope: !3331, inlinedAt: !3399)
!3404 = !DILocation(line: 965, column: 32, scope: !3331, inlinedAt: !3399)
!3405 = !DILocation(line: 193, column: 48, scope: !3311, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 965, column: 36, scope: !3331, inlinedAt: !3399)
!3407 = !DILocation(line: 195, column: 26, scope: !3311, inlinedAt: !3406)
!3408 = !{!3409}
!3409 = distinct !{!3409, !3410, !"quoting_options_from_style: argument 0"}
!3410 = distinct !{!3410, !"quoting_options_from_style"}
!3411 = !DILocation(line: 196, column: 13, scope: !3323, inlinedAt: !3406)
!3412 = !DILocation(line: 196, column: 7, scope: !3311, inlinedAt: !3406)
!3413 = !DILocation(line: 197, column: 5, scope: !3323, inlinedAt: !3406)
!3414 = !DILocation(line: 198, column: 5, scope: !3311, inlinedAt: !3406)
!3415 = !DILocation(line: 198, column: 11, scope: !3311, inlinedAt: !3406)
!3416 = !DILocation(line: 966, column: 10, scope: !3331, inlinedAt: !3399)
!3417 = !DILocation(line: 967, column: 1, scope: !3331, inlinedAt: !3399)
!3418 = !DILocation(line: 978, column: 3, scope: !3388)
!3419 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !406, file: !406, line: 982, type: !3420, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!26, !69, !215, !27}
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3419, file: !406, line: 982, type: !69)
!3424 = !DILocalVariable(name: "argsize", arg: 2, scope: !3419, file: !406, line: 982, type: !215)
!3425 = !DILocalVariable(name: "ch", arg: 3, scope: !3419, file: !406, line: 982, type: !27)
!3426 = !DILocalVariable(name: "options", scope: !3419, file: !406, line: 984, type: !413)
!3427 = !DILocation(line: 982, column: 32, scope: !3419)
!3428 = !DILocation(line: 982, column: 44, scope: !3419)
!3429 = !DILocation(line: 982, column: 58, scope: !3419)
!3430 = !DILocation(line: 984, column: 3, scope: !3419)
!3431 = !DILocation(line: 985, column: 13, scope: !3419)
!3432 = !{i64 0, i64 4, !1144, i64 4, i64 4, !1041, i64 8, i64 32, !1144, i64 40, i64 8, !934, i64 48, i64 8, !934}
!3433 = !DILocation(line: 984, column: 26, scope: !3419)
!3434 = !DILocation(line: 152, column: 43, scope: !2091, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 986, column: 3, scope: !3419)
!3436 = !DILocation(line: 152, column: 51, scope: !2091, inlinedAt: !3435)
!3437 = !DILocation(line: 152, column: 58, scope: !2091, inlinedAt: !3435)
!3438 = !DILocation(line: 154, column: 17, scope: !2091, inlinedAt: !3435)
!3439 = !DILocation(line: 156, column: 62, scope: !2091, inlinedAt: !3435)
!3440 = !DILocation(line: 156, column: 57, scope: !2091, inlinedAt: !3435)
!3441 = !DILocation(line: 155, column: 17, scope: !2091, inlinedAt: !3435)
!3442 = !DILocation(line: 157, column: 15, scope: !2091, inlinedAt: !3435)
!3443 = !DILocation(line: 157, column: 7, scope: !2091, inlinedAt: !3435)
!3444 = !DILocation(line: 158, column: 12, scope: !2091, inlinedAt: !3435)
!3445 = !DILocation(line: 158, column: 15, scope: !2091, inlinedAt: !3435)
!3446 = !DILocation(line: 158, column: 25, scope: !2091, inlinedAt: !3435)
!3447 = !DILocation(line: 158, column: 7, scope: !2091, inlinedAt: !3435)
!3448 = !DILocation(line: 159, column: 18, scope: !2091, inlinedAt: !3435)
!3449 = !DILocation(line: 159, column: 23, scope: !2091, inlinedAt: !3435)
!3450 = !DILocation(line: 159, column: 6, scope: !2091, inlinedAt: !3435)
!3451 = !DILocation(line: 987, column: 10, scope: !3419)
!3452 = !DILocation(line: 988, column: 1, scope: !3419)
!3453 = !DILocation(line: 987, column: 3, scope: !3419)
!3454 = distinct !DISubprogram(name: "quotearg_char", scope: !406, file: !406, line: 991, type: !3455, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!26, !69, !27}
!3457 = !{!3458, !3459}
!3458 = !DILocalVariable(name: "arg", arg: 1, scope: !3454, file: !406, line: 991, type: !69)
!3459 = !DILocalVariable(name: "ch", arg: 2, scope: !3454, file: !406, line: 991, type: !27)
!3460 = !DILocation(line: 991, column: 28, scope: !3454)
!3461 = !DILocation(line: 991, column: 38, scope: !3454)
!3462 = !DILocation(line: 982, column: 32, scope: !3419, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 993, column: 10, scope: !3454)
!3464 = !DILocation(line: 982, column: 44, scope: !3419, inlinedAt: !3463)
!3465 = !DILocation(line: 982, column: 58, scope: !3419, inlinedAt: !3463)
!3466 = !DILocation(line: 984, column: 3, scope: !3419, inlinedAt: !3463)
!3467 = !DILocation(line: 985, column: 13, scope: !3419, inlinedAt: !3463)
!3468 = !DILocation(line: 984, column: 26, scope: !3419, inlinedAt: !3463)
!3469 = !DILocation(line: 152, column: 43, scope: !2091, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 986, column: 3, scope: !3419, inlinedAt: !3463)
!3471 = !DILocation(line: 152, column: 51, scope: !2091, inlinedAt: !3470)
!3472 = !DILocation(line: 152, column: 58, scope: !2091, inlinedAt: !3470)
!3473 = !DILocation(line: 154, column: 17, scope: !2091, inlinedAt: !3470)
!3474 = !DILocation(line: 156, column: 62, scope: !2091, inlinedAt: !3470)
!3475 = !DILocation(line: 156, column: 57, scope: !2091, inlinedAt: !3470)
!3476 = !DILocation(line: 155, column: 17, scope: !2091, inlinedAt: !3470)
!3477 = !DILocation(line: 157, column: 15, scope: !2091, inlinedAt: !3470)
!3478 = !DILocation(line: 157, column: 7, scope: !2091, inlinedAt: !3470)
!3479 = !DILocation(line: 158, column: 12, scope: !2091, inlinedAt: !3470)
!3480 = !DILocation(line: 158, column: 15, scope: !2091, inlinedAt: !3470)
!3481 = !DILocation(line: 158, column: 25, scope: !2091, inlinedAt: !3470)
!3482 = !DILocation(line: 158, column: 7, scope: !2091, inlinedAt: !3470)
!3483 = !DILocation(line: 159, column: 18, scope: !2091, inlinedAt: !3470)
!3484 = !DILocation(line: 159, column: 23, scope: !2091, inlinedAt: !3470)
!3485 = !DILocation(line: 159, column: 6, scope: !2091, inlinedAt: !3470)
!3486 = !DILocation(line: 987, column: 10, scope: !3419, inlinedAt: !3463)
!3487 = !DILocation(line: 988, column: 1, scope: !3419, inlinedAt: !3463)
!3488 = !DILocation(line: 993, column: 3, scope: !3454)
!3489 = distinct !DISubprogram(name: "quotearg_colon", scope: !406, file: !406, line: 997, type: !1820, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3490)
!3490 = !{!3491}
!3491 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !406, line: 997, type: !69)
!3492 = !DILocation(line: 997, column: 29, scope: !3489)
!3493 = !DILocation(line: 991, column: 28, scope: !3454, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 999, column: 10, scope: !3489)
!3495 = !DILocation(line: 991, column: 38, scope: !3454, inlinedAt: !3494)
!3496 = !DILocation(line: 982, column: 32, scope: !3419, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 993, column: 10, scope: !3454, inlinedAt: !3494)
!3498 = !DILocation(line: 982, column: 44, scope: !3419, inlinedAt: !3497)
!3499 = !DILocation(line: 982, column: 58, scope: !3419, inlinedAt: !3497)
!3500 = !DILocation(line: 984, column: 3, scope: !3419, inlinedAt: !3497)
!3501 = !DILocation(line: 985, column: 13, scope: !3419, inlinedAt: !3497)
!3502 = !DILocation(line: 984, column: 26, scope: !3419, inlinedAt: !3497)
!3503 = !DILocation(line: 152, column: 43, scope: !2091, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 986, column: 3, scope: !3419, inlinedAt: !3497)
!3505 = !DILocation(line: 152, column: 51, scope: !2091, inlinedAt: !3504)
!3506 = !DILocation(line: 152, column: 58, scope: !2091, inlinedAt: !3504)
!3507 = !DILocation(line: 154, column: 17, scope: !2091, inlinedAt: !3504)
!3508 = !DILocation(line: 156, column: 57, scope: !2091, inlinedAt: !3504)
!3509 = !DILocation(line: 155, column: 17, scope: !2091, inlinedAt: !3504)
!3510 = !DILocation(line: 157, column: 7, scope: !2091, inlinedAt: !3504)
!3511 = !DILocation(line: 158, column: 12, scope: !2091, inlinedAt: !3504)
!3512 = !DILocation(line: 159, column: 6, scope: !2091, inlinedAt: !3504)
!3513 = !DILocation(line: 987, column: 10, scope: !3419, inlinedAt: !3497)
!3514 = !DILocation(line: 988, column: 1, scope: !3419, inlinedAt: !3497)
!3515 = !DILocation(line: 999, column: 3, scope: !3489)
!3516 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !406, file: !406, line: 1003, type: !3284, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3517)
!3517 = !{!3518, !3519}
!3518 = !DILocalVariable(name: "arg", arg: 1, scope: !3516, file: !406, line: 1003, type: !69)
!3519 = !DILocalVariable(name: "argsize", arg: 2, scope: !3516, file: !406, line: 1003, type: !215)
!3520 = !DILocation(line: 1003, column: 33, scope: !3516)
!3521 = !DILocation(line: 1003, column: 45, scope: !3516)
!3522 = !DILocation(line: 982, column: 32, scope: !3419, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 1005, column: 10, scope: !3516)
!3524 = !DILocation(line: 982, column: 44, scope: !3419, inlinedAt: !3523)
!3525 = !DILocation(line: 982, column: 58, scope: !3419, inlinedAt: !3523)
!3526 = !DILocation(line: 984, column: 3, scope: !3419, inlinedAt: !3523)
!3527 = !DILocation(line: 985, column: 13, scope: !3419, inlinedAt: !3523)
!3528 = !DILocation(line: 984, column: 26, scope: !3419, inlinedAt: !3523)
!3529 = !DILocation(line: 152, column: 43, scope: !2091, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 986, column: 3, scope: !3419, inlinedAt: !3523)
!3531 = !DILocation(line: 152, column: 51, scope: !2091, inlinedAt: !3530)
!3532 = !DILocation(line: 152, column: 58, scope: !2091, inlinedAt: !3530)
!3533 = !DILocation(line: 154, column: 17, scope: !2091, inlinedAt: !3530)
!3534 = !DILocation(line: 156, column: 57, scope: !2091, inlinedAt: !3530)
!3535 = !DILocation(line: 155, column: 17, scope: !2091, inlinedAt: !3530)
!3536 = !DILocation(line: 157, column: 7, scope: !2091, inlinedAt: !3530)
!3537 = !DILocation(line: 158, column: 12, scope: !2091, inlinedAt: !3530)
!3538 = !DILocation(line: 159, column: 6, scope: !2091, inlinedAt: !3530)
!3539 = !DILocation(line: 987, column: 10, scope: !3419, inlinedAt: !3523)
!3540 = !DILocation(line: 988, column: 1, scope: !3419, inlinedAt: !3523)
!3541 = !DILocation(line: 1005, column: 3, scope: !3516)
!3542 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !406, file: !406, line: 1009, type: !3298, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3543)
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3542, file: !406, line: 1009, type: !73)
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3542, file: !406, line: 1009, type: !11)
!3546 = !DILocalVariable(name: "arg", arg: 3, scope: !3542, file: !406, line: 1009, type: !69)
!3547 = !DILocalVariable(name: "options", scope: !3542, file: !406, line: 1011, type: !413)
!3548 = !DILocation(line: 195, column: 26, scope: !3311, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1012, column: 13, scope: !3542)
!3550 = !DILocation(line: 1009, column: 29, scope: !3542)
!3551 = !DILocation(line: 1009, column: 51, scope: !3542)
!3552 = !DILocation(line: 1009, column: 66, scope: !3542)
!3553 = !DILocation(line: 1011, column: 3, scope: !3542)
!3554 = !DILocation(line: 1012, column: 13, scope: !3542)
!3555 = !DILocation(line: 193, column: 48, scope: !3311, inlinedAt: !3549)
!3556 = !{!3557}
!3557 = distinct !{!3557, !3558, !"quoting_options_from_style: argument 0"}
!3558 = distinct !{!3558, !"quoting_options_from_style"}
!3559 = !DILocation(line: 196, column: 13, scope: !3323, inlinedAt: !3549)
!3560 = !DILocation(line: 196, column: 7, scope: !3311, inlinedAt: !3549)
!3561 = !DILocation(line: 197, column: 5, scope: !3323, inlinedAt: !3549)
!3562 = !DILocation(line: 1011, column: 26, scope: !3542)
!3563 = !DILocation(line: 152, column: 43, scope: !2091, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 1013, column: 3, scope: !3542)
!3565 = !DILocation(line: 152, column: 51, scope: !2091, inlinedAt: !3564)
!3566 = !DILocation(line: 152, column: 58, scope: !2091, inlinedAt: !3564)
!3567 = !DILocation(line: 154, column: 17, scope: !2091, inlinedAt: !3564)
!3568 = !DILocation(line: 156, column: 57, scope: !2091, inlinedAt: !3564)
!3569 = !DILocation(line: 155, column: 17, scope: !2091, inlinedAt: !3564)
!3570 = !DILocation(line: 157, column: 7, scope: !2091, inlinedAt: !3564)
!3571 = !DILocation(line: 158, column: 12, scope: !2091, inlinedAt: !3564)
!3572 = !DILocation(line: 159, column: 6, scope: !2091, inlinedAt: !3564)
!3573 = !DILocation(line: 1014, column: 10, scope: !3542)
!3574 = !DILocation(line: 1015, column: 1, scope: !3542)
!3575 = !DILocation(line: 1014, column: 3, scope: !3542)
!3576 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !406, file: !406, line: 1018, type: !3577, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!26, !73, !69, !69, !69}
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3576, file: !406, line: 1018, type: !73)
!3581 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3576, file: !406, line: 1018, type: !69)
!3582 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3576, file: !406, line: 1019, type: !69)
!3583 = !DILocalVariable(name: "arg", arg: 4, scope: !3576, file: !406, line: 1019, type: !69)
!3584 = !DILocation(line: 1018, column: 24, scope: !3576)
!3585 = !DILocation(line: 1018, column: 39, scope: !3576)
!3586 = !DILocation(line: 1019, column: 32, scope: !3576)
!3587 = !DILocation(line: 1019, column: 57, scope: !3576)
!3588 = !DILocalVariable(name: "n", arg: 1, scope: !3589, file: !406, line: 1026, type: !73)
!3589 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !406, file: !406, line: 1026, type: !3590, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!26, !73, !69, !69, !69, !215}
!3592 = !{!3588, !3593, !3594, !3595, !3596, !3597}
!3593 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3589, file: !406, line: 1026, type: !69)
!3594 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3589, file: !406, line: 1027, type: !69)
!3595 = !DILocalVariable(name: "arg", arg: 4, scope: !3589, file: !406, line: 1028, type: !69)
!3596 = !DILocalVariable(name: "argsize", arg: 5, scope: !3589, file: !406, line: 1028, type: !215)
!3597 = !DILocalVariable(name: "o", scope: !3589, file: !406, line: 1030, type: !413)
!3598 = !DILocation(line: 1026, column: 28, scope: !3589, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1021, column: 10, scope: !3576)
!3600 = !DILocation(line: 1026, column: 43, scope: !3589, inlinedAt: !3599)
!3601 = !DILocation(line: 1027, column: 36, scope: !3589, inlinedAt: !3599)
!3602 = !DILocation(line: 1028, column: 36, scope: !3589, inlinedAt: !3599)
!3603 = !DILocation(line: 1028, column: 48, scope: !3589, inlinedAt: !3599)
!3604 = !DILocation(line: 1030, column: 3, scope: !3589, inlinedAt: !3599)
!3605 = !DILocation(line: 1030, column: 30, scope: !3589, inlinedAt: !3599)
!3606 = !DILocation(line: 1030, column: 26, scope: !3589, inlinedAt: !3599)
!3607 = !DILocation(line: 179, column: 45, scope: !2139, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 1031, column: 3, scope: !3589, inlinedAt: !3599)
!3609 = !DILocation(line: 180, column: 33, scope: !2139, inlinedAt: !3608)
!3610 = !DILocation(line: 180, column: 57, scope: !2139, inlinedAt: !3608)
!3611 = !DILocation(line: 184, column: 6, scope: !2139, inlinedAt: !3608)
!3612 = !DILocation(line: 184, column: 12, scope: !2139, inlinedAt: !3608)
!3613 = !DILocation(line: 185, column: 8, scope: !2155, inlinedAt: !3608)
!3614 = !DILocation(line: 185, column: 23, scope: !2155, inlinedAt: !3608)
!3615 = !DILocation(line: 185, column: 19, scope: !2155, inlinedAt: !3608)
!3616 = !DILocation(line: 186, column: 5, scope: !2155, inlinedAt: !3608)
!3617 = !DILocation(line: 187, column: 6, scope: !2139, inlinedAt: !3608)
!3618 = !DILocation(line: 187, column: 17, scope: !2139, inlinedAt: !3608)
!3619 = !DILocation(line: 188, column: 6, scope: !2139, inlinedAt: !3608)
!3620 = !DILocation(line: 188, column: 18, scope: !2139, inlinedAt: !3608)
!3621 = !DILocation(line: 1032, column: 10, scope: !3589, inlinedAt: !3599)
!3622 = !DILocation(line: 1033, column: 1, scope: !3589, inlinedAt: !3599)
!3623 = !DILocation(line: 1021, column: 3, scope: !3576)
!3624 = !DILocation(line: 1026, column: 28, scope: !3589)
!3625 = !DILocation(line: 1026, column: 43, scope: !3589)
!3626 = !DILocation(line: 1027, column: 36, scope: !3589)
!3627 = !DILocation(line: 1028, column: 36, scope: !3589)
!3628 = !DILocation(line: 1028, column: 48, scope: !3589)
!3629 = !DILocation(line: 1030, column: 3, scope: !3589)
!3630 = !DILocation(line: 1030, column: 30, scope: !3589)
!3631 = !DILocation(line: 1030, column: 26, scope: !3589)
!3632 = !DILocation(line: 179, column: 45, scope: !2139, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 1031, column: 3, scope: !3589)
!3634 = !DILocation(line: 180, column: 33, scope: !2139, inlinedAt: !3633)
!3635 = !DILocation(line: 180, column: 57, scope: !2139, inlinedAt: !3633)
!3636 = !DILocation(line: 184, column: 6, scope: !2139, inlinedAt: !3633)
!3637 = !DILocation(line: 184, column: 12, scope: !2139, inlinedAt: !3633)
!3638 = !DILocation(line: 185, column: 8, scope: !2155, inlinedAt: !3633)
!3639 = !DILocation(line: 185, column: 23, scope: !2155, inlinedAt: !3633)
!3640 = !DILocation(line: 185, column: 19, scope: !2155, inlinedAt: !3633)
!3641 = !DILocation(line: 186, column: 5, scope: !2155, inlinedAt: !3633)
!3642 = !DILocation(line: 187, column: 6, scope: !2139, inlinedAt: !3633)
!3643 = !DILocation(line: 187, column: 17, scope: !2139, inlinedAt: !3633)
!3644 = !DILocation(line: 188, column: 6, scope: !2139, inlinedAt: !3633)
!3645 = !DILocation(line: 188, column: 18, scope: !2139, inlinedAt: !3633)
!3646 = !DILocation(line: 1032, column: 10, scope: !3589)
!3647 = !DILocation(line: 1033, column: 1, scope: !3589)
!3648 = !DILocation(line: 1032, column: 3, scope: !3589)
!3649 = distinct !DISubprogram(name: "quotearg_custom", scope: !406, file: !406, line: 1036, type: !3650, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!26, !69, !69, !69}
!3652 = !{!3653, !3654, !3655}
!3653 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3649, file: !406, line: 1036, type: !69)
!3654 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3649, file: !406, line: 1036, type: !69)
!3655 = !DILocalVariable(name: "arg", arg: 3, scope: !3649, file: !406, line: 1037, type: !69)
!3656 = !DILocation(line: 1036, column: 30, scope: !3649)
!3657 = !DILocation(line: 1036, column: 54, scope: !3649)
!3658 = !DILocation(line: 1037, column: 30, scope: !3649)
!3659 = !DILocation(line: 1018, column: 24, scope: !3576, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 1039, column: 10, scope: !3649)
!3661 = !DILocation(line: 1018, column: 39, scope: !3576, inlinedAt: !3660)
!3662 = !DILocation(line: 1019, column: 32, scope: !3576, inlinedAt: !3660)
!3663 = !DILocation(line: 1019, column: 57, scope: !3576, inlinedAt: !3660)
!3664 = !DILocation(line: 1026, column: 28, scope: !3589, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 1021, column: 10, scope: !3576, inlinedAt: !3660)
!3666 = !DILocation(line: 1026, column: 43, scope: !3589, inlinedAt: !3665)
!3667 = !DILocation(line: 1027, column: 36, scope: !3589, inlinedAt: !3665)
!3668 = !DILocation(line: 1028, column: 36, scope: !3589, inlinedAt: !3665)
!3669 = !DILocation(line: 1028, column: 48, scope: !3589, inlinedAt: !3665)
!3670 = !DILocation(line: 1030, column: 3, scope: !3589, inlinedAt: !3665)
!3671 = !DILocation(line: 1030, column: 30, scope: !3589, inlinedAt: !3665)
!3672 = !DILocation(line: 1030, column: 26, scope: !3589, inlinedAt: !3665)
!3673 = !DILocation(line: 179, column: 45, scope: !2139, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 1031, column: 3, scope: !3589, inlinedAt: !3665)
!3675 = !DILocation(line: 180, column: 33, scope: !2139, inlinedAt: !3674)
!3676 = !DILocation(line: 180, column: 57, scope: !2139, inlinedAt: !3674)
!3677 = !DILocation(line: 184, column: 6, scope: !2139, inlinedAt: !3674)
!3678 = !DILocation(line: 184, column: 12, scope: !2139, inlinedAt: !3674)
!3679 = !DILocation(line: 185, column: 8, scope: !2155, inlinedAt: !3674)
!3680 = !DILocation(line: 185, column: 23, scope: !2155, inlinedAt: !3674)
!3681 = !DILocation(line: 185, column: 19, scope: !2155, inlinedAt: !3674)
!3682 = !DILocation(line: 186, column: 5, scope: !2155, inlinedAt: !3674)
!3683 = !DILocation(line: 187, column: 6, scope: !2139, inlinedAt: !3674)
!3684 = !DILocation(line: 187, column: 17, scope: !2139, inlinedAt: !3674)
!3685 = !DILocation(line: 188, column: 6, scope: !2139, inlinedAt: !3674)
!3686 = !DILocation(line: 188, column: 18, scope: !2139, inlinedAt: !3674)
!3687 = !DILocation(line: 1032, column: 10, scope: !3589, inlinedAt: !3665)
!3688 = !DILocation(line: 1033, column: 1, scope: !3589, inlinedAt: !3665)
!3689 = !DILocation(line: 1039, column: 3, scope: !3649)
!3690 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !406, file: !406, line: 1043, type: !3691, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!26, !69, !69, !69, !215}
!3693 = !{!3694, !3695, !3696, !3697}
!3694 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3690, file: !406, line: 1043, type: !69)
!3695 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3690, file: !406, line: 1043, type: !69)
!3696 = !DILocalVariable(name: "arg", arg: 3, scope: !3690, file: !406, line: 1044, type: !69)
!3697 = !DILocalVariable(name: "argsize", arg: 4, scope: !3690, file: !406, line: 1044, type: !215)
!3698 = !DILocation(line: 1043, column: 34, scope: !3690)
!3699 = !DILocation(line: 1043, column: 58, scope: !3690)
!3700 = !DILocation(line: 1044, column: 34, scope: !3690)
!3701 = !DILocation(line: 1044, column: 46, scope: !3690)
!3702 = !DILocation(line: 1026, column: 28, scope: !3589, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1046, column: 10, scope: !3690)
!3704 = !DILocation(line: 1026, column: 43, scope: !3589, inlinedAt: !3703)
!3705 = !DILocation(line: 1027, column: 36, scope: !3589, inlinedAt: !3703)
!3706 = !DILocation(line: 1028, column: 36, scope: !3589, inlinedAt: !3703)
!3707 = !DILocation(line: 1028, column: 48, scope: !3589, inlinedAt: !3703)
!3708 = !DILocation(line: 1030, column: 3, scope: !3589, inlinedAt: !3703)
!3709 = !DILocation(line: 1030, column: 30, scope: !3589, inlinedAt: !3703)
!3710 = !DILocation(line: 1030, column: 26, scope: !3589, inlinedAt: !3703)
!3711 = !DILocation(line: 179, column: 45, scope: !2139, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1031, column: 3, scope: !3589, inlinedAt: !3703)
!3713 = !DILocation(line: 180, column: 33, scope: !2139, inlinedAt: !3712)
!3714 = !DILocation(line: 180, column: 57, scope: !2139, inlinedAt: !3712)
!3715 = !DILocation(line: 184, column: 6, scope: !2139, inlinedAt: !3712)
!3716 = !DILocation(line: 184, column: 12, scope: !2139, inlinedAt: !3712)
!3717 = !DILocation(line: 185, column: 8, scope: !2155, inlinedAt: !3712)
!3718 = !DILocation(line: 185, column: 23, scope: !2155, inlinedAt: !3712)
!3719 = !DILocation(line: 185, column: 19, scope: !2155, inlinedAt: !3712)
!3720 = !DILocation(line: 186, column: 5, scope: !2155, inlinedAt: !3712)
!3721 = !DILocation(line: 187, column: 6, scope: !2139, inlinedAt: !3712)
!3722 = !DILocation(line: 187, column: 17, scope: !2139, inlinedAt: !3712)
!3723 = !DILocation(line: 188, column: 6, scope: !2139, inlinedAt: !3712)
!3724 = !DILocation(line: 188, column: 18, scope: !2139, inlinedAt: !3712)
!3725 = !DILocation(line: 1032, column: 10, scope: !3589, inlinedAt: !3703)
!3726 = !DILocation(line: 1033, column: 1, scope: !3589, inlinedAt: !3703)
!3727 = !DILocation(line: 1046, column: 3, scope: !3690)
!3728 = distinct !DISubprogram(name: "quote_n_mem", scope: !406, file: !406, line: 1061, type: !3729, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!69, !73, !69, !215}
!3731 = !{!3732, !3733, !3734}
!3732 = !DILocalVariable(name: "n", arg: 1, scope: !3728, file: !406, line: 1061, type: !73)
!3733 = !DILocalVariable(name: "arg", arg: 2, scope: !3728, file: !406, line: 1061, type: !69)
!3734 = !DILocalVariable(name: "argsize", arg: 3, scope: !3728, file: !406, line: 1061, type: !215)
!3735 = !DILocation(line: 1061, column: 18, scope: !3728)
!3736 = !DILocation(line: 1061, column: 33, scope: !3728)
!3737 = !DILocation(line: 1061, column: 45, scope: !3728)
!3738 = !DILocation(line: 1063, column: 10, scope: !3728)
!3739 = !DILocation(line: 1063, column: 3, scope: !3728)
!3740 = distinct !DISubprogram(name: "quote_mem", scope: !406, file: !406, line: 1067, type: !3741, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!69, !69, !215}
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "arg", arg: 1, scope: !3740, file: !406, line: 1067, type: !69)
!3745 = !DILocalVariable(name: "argsize", arg: 2, scope: !3740, file: !406, line: 1067, type: !215)
!3746 = !DILocation(line: 1067, column: 24, scope: !3740)
!3747 = !DILocation(line: 1067, column: 36, scope: !3740)
!3748 = !DILocation(line: 1061, column: 18, scope: !3728, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1069, column: 10, scope: !3740)
!3750 = !DILocation(line: 1061, column: 33, scope: !3728, inlinedAt: !3749)
!3751 = !DILocation(line: 1061, column: 45, scope: !3728, inlinedAt: !3749)
!3752 = !DILocation(line: 1063, column: 10, scope: !3728, inlinedAt: !3749)
!3753 = !DILocation(line: 1069, column: 3, scope: !3740)
!3754 = distinct !DISubprogram(name: "quote_n", scope: !406, file: !406, line: 1073, type: !3755, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!69, !73, !69}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3754, file: !406, line: 1073, type: !73)
!3759 = !DILocalVariable(name: "arg", arg: 2, scope: !3754, file: !406, line: 1073, type: !69)
!3760 = !DILocation(line: 1073, column: 14, scope: !3754)
!3761 = !DILocation(line: 1073, column: 29, scope: !3754)
!3762 = !DILocation(line: 1061, column: 18, scope: !3728, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1075, column: 10, scope: !3754)
!3764 = !DILocation(line: 1061, column: 33, scope: !3728, inlinedAt: !3763)
!3765 = !DILocation(line: 1061, column: 45, scope: !3728, inlinedAt: !3763)
!3766 = !DILocation(line: 1063, column: 10, scope: !3728, inlinedAt: !3763)
!3767 = !DILocation(line: 1075, column: 3, scope: !3754)
!3768 = distinct !DISubprogram(name: "quote", scope: !406, file: !406, line: 1079, type: !3769, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !379, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!69, !69}
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "arg", arg: 1, scope: !3768, file: !406, line: 1079, type: !69)
!3773 = !DILocation(line: 1079, column: 20, scope: !3768)
!3774 = !DILocation(line: 1073, column: 14, scope: !3754, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1081, column: 10, scope: !3768)
!3776 = !DILocation(line: 1073, column: 29, scope: !3754, inlinedAt: !3775)
!3777 = !DILocation(line: 1061, column: 18, scope: !3728, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1075, column: 10, scope: !3754, inlinedAt: !3775)
!3779 = !DILocation(line: 1061, column: 33, scope: !3728, inlinedAt: !3778)
!3780 = !DILocation(line: 1061, column: 45, scope: !3728, inlinedAt: !3778)
!3781 = !DILocation(line: 1063, column: 10, scope: !3728, inlinedAt: !3778)
!3782 = !DILocation(line: 1081, column: 3, scope: !3768)
!3783 = distinct !DISubprogram(name: "version_etc_arn", scope: !461, file: !461, line: 62, type: !3784, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !457, retainedNodes: !3836)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3786, !69, !69, !69, !3835, !215}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3788, line: 7, baseType: !3789)
!3788 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3790, line: 49, size: 1728, elements: !3791)
!3790 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3807, !3809, !3810, !3811, !3812, !3813, !3815, !3819, !3822, !3824, !3827, !3830, !3831, !3832, !3833, !3834}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3789, file: !3790, line: 51, baseType: !73, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3789, file: !3790, line: 54, baseType: !26, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3789, file: !3790, line: 55, baseType: !26, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3789, file: !3790, line: 56, baseType: !26, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3789, file: !3790, line: 57, baseType: !26, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3789, file: !3790, line: 58, baseType: !26, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3789, file: !3790, line: 59, baseType: !26, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3789, file: !3790, line: 60, baseType: !26, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3789, file: !3790, line: 61, baseType: !26, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3789, file: !3790, line: 64, baseType: !26, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3789, file: !3790, line: 65, baseType: !26, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3789, file: !3790, line: 66, baseType: !26, size: 64, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3789, file: !3790, line: 68, baseType: !3805, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3790, line: 36, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3789, file: !3790, line: 70, baseType: !3808, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3789, file: !3790, line: 72, baseType: !73, size: 32, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3789, file: !3790, line: 73, baseType: !73, size: 32, offset: 928)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3789, file: !3790, line: 74, baseType: !174, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3789, file: !3790, line: 77, baseType: !347, size: 16, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3789, file: !3790, line: 78, baseType: !3814, size: 8, offset: 1040)
!3814 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3789, file: !3790, line: 79, baseType: !3816, size: 8, offset: 1048)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !3817)
!3817 = !{!3818}
!3818 = !DISubrange(count: 1)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3789, file: !3790, line: 81, baseType: !3820, size: 64, offset: 1088)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3790, line: 43, baseType: null)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3789, file: !3790, line: 89, baseType: !3823, size: 64, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 151, baseType: !33)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3789, file: !3790, line: 91, baseType: !3825, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3790, line: 37, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3789, file: !3790, line: 92, baseType: !3828, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3790, line: 38, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3789, file: !3790, line: 93, baseType: !3808, size: 64, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3789, file: !3790, line: 94, baseType: !28, size: 64, offset: 1408)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3789, file: !3790, line: 95, baseType: !215, size: 64, offset: 1472)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3789, file: !3790, line: 96, baseType: !73, size: 32, offset: 1536)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3789, file: !3790, line: 98, baseType: !148, size: 160, offset: 1568)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842}
!3837 = !DILocalVariable(name: "stream", arg: 1, scope: !3783, file: !461, line: 62, type: !3786)
!3838 = !DILocalVariable(name: "command_name", arg: 2, scope: !3783, file: !461, line: 63, type: !69)
!3839 = !DILocalVariable(name: "package", arg: 3, scope: !3783, file: !461, line: 63, type: !69)
!3840 = !DILocalVariable(name: "version", arg: 4, scope: !3783, file: !461, line: 64, type: !69)
!3841 = !DILocalVariable(name: "authors", arg: 5, scope: !3783, file: !461, line: 65, type: !3835)
!3842 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3783, file: !461, line: 65, type: !215)
!3843 = !DILocation(line: 62, column: 24, scope: !3783)
!3844 = !DILocation(line: 63, column: 30, scope: !3783)
!3845 = !DILocation(line: 63, column: 56, scope: !3783)
!3846 = !DILocation(line: 64, column: 30, scope: !3783)
!3847 = !DILocation(line: 65, column: 39, scope: !3783)
!3848 = !DILocation(line: 65, column: 55, scope: !3783)
!3849 = !DILocation(line: 67, column: 7, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3783, file: !461, line: 67, column: 7)
!3851 = !DILocation(line: 67, column: 7, scope: !3783)
!3852 = !DILocation(line: 68, column: 5, scope: !3850)
!3853 = !DILocation(line: 70, column: 5, scope: !3850)
!3854 = !DILocation(line: 84, column: 3, scope: !3783)
!3855 = !DILocation(line: 86, column: 3, scope: !3783)
!3856 = !DILocation(line: 95, column: 3, scope: !3783)
!3857 = !DILocation(line: 99, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3783, file: !461, line: 96, column: 5)
!3859 = !DILocation(line: 102, column: 7, scope: !3858)
!3860 = !DILocation(line: 103, column: 7, scope: !3858)
!3861 = !DILocation(line: 106, column: 7, scope: !3858)
!3862 = !DILocation(line: 107, column: 7, scope: !3858)
!3863 = !DILocation(line: 110, column: 7, scope: !3858)
!3864 = !DILocation(line: 112, column: 7, scope: !3858)
!3865 = !DILocation(line: 117, column: 7, scope: !3858)
!3866 = !DILocation(line: 119, column: 7, scope: !3858)
!3867 = !DILocation(line: 124, column: 7, scope: !3858)
!3868 = !DILocation(line: 126, column: 7, scope: !3858)
!3869 = !DILocation(line: 131, column: 7, scope: !3858)
!3870 = !DILocation(line: 134, column: 7, scope: !3858)
!3871 = !DILocation(line: 139, column: 7, scope: !3858)
!3872 = !DILocation(line: 142, column: 7, scope: !3858)
!3873 = !DILocation(line: 147, column: 7, scope: !3858)
!3874 = !DILocation(line: 151, column: 7, scope: !3858)
!3875 = !DILocation(line: 156, column: 7, scope: !3858)
!3876 = !DILocation(line: 160, column: 7, scope: !3858)
!3877 = !DILocation(line: 167, column: 7, scope: !3858)
!3878 = !DILocation(line: 171, column: 7, scope: !3858)
!3879 = !DILocation(line: 173, column: 1, scope: !3783)
!3880 = distinct !DISubprogram(name: "version_etc_ar", scope: !461, file: !461, line: 180, type: !3881, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !457, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3786, !69, !69, !69, !3835}
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889}
!3884 = !DILocalVariable(name: "stream", arg: 1, scope: !3880, file: !461, line: 180, type: !3786)
!3885 = !DILocalVariable(name: "command_name", arg: 2, scope: !3880, file: !461, line: 181, type: !69)
!3886 = !DILocalVariable(name: "package", arg: 3, scope: !3880, file: !461, line: 181, type: !69)
!3887 = !DILocalVariable(name: "version", arg: 4, scope: !3880, file: !461, line: 182, type: !69)
!3888 = !DILocalVariable(name: "authors", arg: 5, scope: !3880, file: !461, line: 182, type: !3835)
!3889 = !DILocalVariable(name: "n_authors", scope: !3880, file: !461, line: 184, type: !215)
!3890 = !DILocation(line: 180, column: 23, scope: !3880)
!3891 = !DILocation(line: 181, column: 29, scope: !3880)
!3892 = !DILocation(line: 181, column: 55, scope: !3880)
!3893 = !DILocation(line: 182, column: 29, scope: !3880)
!3894 = !DILocation(line: 182, column: 59, scope: !3880)
!3895 = !DILocation(line: 184, column: 10, scope: !3880)
!3896 = !DILocation(line: 186, column: 8, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3880, file: !461, line: 186, column: 3)
!3898 = !DILocation(line: 0, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3897, file: !461, line: 186, column: 3)
!3900 = !DILocation(line: 186, column: 23, scope: !3899)
!3901 = !DILocation(line: 186, column: 3, scope: !3897)
!3902 = !DILocation(line: 186, column: 52, scope: !3899)
!3903 = distinct !{!3903, !3901, !3904}
!3904 = !DILocation(line: 187, column: 5, scope: !3897)
!3905 = !DILocation(line: 188, column: 3, scope: !3880)
!3906 = !DILocation(line: 189, column: 1, scope: !3880)
!3907 = distinct !DISubprogram(name: "version_etc_va", scope: !461, file: !461, line: 196, type: !3908, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !457, retainedNodes: !3917)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3786, !69, !69, !69, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !458, line: 189, size: 192, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3911, file: !458, line: 189, baseType: !7, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3911, file: !458, line: 189, baseType: !7, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3911, file: !458, line: 189, baseType: !28, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3911, file: !458, line: 189, baseType: !28, size: 64, offset: 128)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3918 = !DILocalVariable(name: "stream", arg: 1, scope: !3907, file: !461, line: 196, type: !3786)
!3919 = !DILocalVariable(name: "command_name", arg: 2, scope: !3907, file: !461, line: 197, type: !69)
!3920 = !DILocalVariable(name: "package", arg: 3, scope: !3907, file: !461, line: 197, type: !69)
!3921 = !DILocalVariable(name: "version", arg: 4, scope: !3907, file: !461, line: 198, type: !69)
!3922 = !DILocalVariable(name: "authors", arg: 5, scope: !3907, file: !461, line: 198, type: !3910)
!3923 = !DILocalVariable(name: "n_authors", scope: !3907, file: !461, line: 200, type: !215)
!3924 = !DILocalVariable(name: "authtab", scope: !3907, file: !461, line: 201, type: !3925)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 640, elements: !409)
!3926 = !DILocation(line: 196, column: 23, scope: !3907)
!3927 = !DILocation(line: 197, column: 29, scope: !3907)
!3928 = !DILocation(line: 197, column: 55, scope: !3907)
!3929 = !DILocation(line: 198, column: 29, scope: !3907)
!3930 = !DILocation(line: 198, column: 46, scope: !3907)
!3931 = !DILocation(line: 201, column: 3, scope: !3907)
!3932 = !DILocation(line: 201, column: 15, scope: !3907)
!3933 = !DILocation(line: 200, column: 10, scope: !3907)
!3934 = !DILocation(line: 205, column: 35, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !461, line: 203, column: 3)
!3936 = distinct !DILexicalBlock(scope: !3907, file: !461, line: 203, column: 3)
!3937 = !DILocation(line: 205, column: 14, scope: !3935)
!3938 = !DILocation(line: 205, column: 33, scope: !3935)
!3939 = !DILocation(line: 205, column: 67, scope: !3935)
!3940 = !DILocation(line: 203, column: 3, scope: !3936)
!3941 = !DILocation(line: 0, scope: !3935)
!3942 = !DILocation(line: 208, column: 3, scope: !3907)
!3943 = !DILocation(line: 210, column: 1, scope: !3907)
!3944 = distinct !DISubprogram(name: "version_etc", scope: !461, file: !461, line: 227, type: !3945, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !457, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3786, !69, !69, !69, null}
!3947 = !{!3948, !3949, !3950, !3951, !3952}
!3948 = !DILocalVariable(name: "stream", arg: 1, scope: !3944, file: !461, line: 227, type: !3786)
!3949 = !DILocalVariable(name: "command_name", arg: 2, scope: !3944, file: !461, line: 228, type: !69)
!3950 = !DILocalVariable(name: "package", arg: 3, scope: !3944, file: !461, line: 228, type: !69)
!3951 = !DILocalVariable(name: "version", arg: 4, scope: !3944, file: !461, line: 229, type: !69)
!3952 = !DILocalVariable(name: "authors", scope: !3944, file: !461, line: 231, type: !3953)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3954, line: 52, baseType: !3955)
!3954 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3956, line: 48, baseType: !3957)
!3956 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !458, line: 231, baseType: !3958)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3911, size: 192, elements: !3817)
!3959 = !DILocation(line: 227, column: 20, scope: !3944)
!3960 = !DILocation(line: 228, column: 26, scope: !3944)
!3961 = !DILocation(line: 228, column: 52, scope: !3944)
!3962 = !DILocation(line: 229, column: 26, scope: !3944)
!3963 = !DILocation(line: 231, column: 3, scope: !3944)
!3964 = !DILocation(line: 231, column: 11, scope: !3944)
!3965 = !DILocation(line: 233, column: 3, scope: !3944)
!3966 = !DILocation(line: 234, column: 3, scope: !3944)
!3967 = !DILocation(line: 235, column: 3, scope: !3944)
!3968 = !DILocation(line: 236, column: 1, scope: !3944)
!3969 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !461, file: !461, line: 239, type: !1171, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !457, retainedNodes: !310)
!3970 = !DILocation(line: 245, column: 3, scope: !3969)
!3971 = !DILocation(line: 251, column: 3, scope: !3969)
!3972 = !DILocation(line: 256, column: 3, scope: !3969)
!3973 = !DILocation(line: 258, column: 1, scope: !3969)
!3974 = distinct !DISubprogram(name: "xnmalloc", scope: !469, file: !469, line: 99, type: !3975, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!28, !215, !215}
!3977 = !{!3978, !3979}
!3978 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !469, line: 99, type: !215)
!3979 = !DILocalVariable(name: "s", arg: 2, scope: !3974, file: !469, line: 99, type: !215)
!3980 = !DILocation(line: 99, column: 18, scope: !3974)
!3981 = !DILocation(line: 99, column: 28, scope: !3974)
!3982 = !DILocation(line: 101, column: 7, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3974, file: !469, line: 101, column: 7)
!3984 = !DILocation(line: 101, column: 7, scope: !3974)
!3985 = !DILocation(line: 102, column: 5, scope: !3983)
!3986 = !DILocation(line: 103, column: 21, scope: !3974)
!3987 = !DILocalVariable(name: "n", arg: 1, scope: !3988, file: !3989, line: 39, type: !215)
!3988 = distinct !DISubprogram(name: "xmalloc", scope: !3989, file: !3989, line: 39, type: !3990, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !3992)
!3989 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!28, !215}
!3992 = !{!3987, !3993}
!3993 = !DILocalVariable(name: "p", scope: !3988, file: !3989, line: 41, type: !28)
!3994 = !DILocation(line: 39, column: 17, scope: !3988, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 103, column: 10, scope: !3974)
!3996 = !DILocation(line: 41, column: 13, scope: !3988, inlinedAt: !3995)
!3997 = !DILocation(line: 41, column: 9, scope: !3988, inlinedAt: !3995)
!3998 = !DILocation(line: 42, column: 8, scope: !3999, inlinedAt: !3995)
!3999 = distinct !DILexicalBlock(scope: !3988, file: !3989, line: 42, column: 7)
!4000 = !DILocation(line: 42, column: 15, scope: !3999, inlinedAt: !3995)
!4001 = !DILocation(line: 42, column: 10, scope: !3999, inlinedAt: !3995)
!4002 = !DILocation(line: 43, column: 5, scope: !3999, inlinedAt: !3995)
!4003 = !DILocation(line: 103, column: 3, scope: !3974)
!4004 = !DILocation(line: 39, column: 17, scope: !3988)
!4005 = !DILocation(line: 41, column: 13, scope: !3988)
!4006 = !DILocation(line: 41, column: 9, scope: !3988)
!4007 = !DILocation(line: 42, column: 8, scope: !3999)
!4008 = !DILocation(line: 42, column: 15, scope: !3999)
!4009 = !DILocation(line: 42, column: 10, scope: !3999)
!4010 = !DILocation(line: 43, column: 5, scope: !3999)
!4011 = !DILocation(line: 44, column: 3, scope: !3988)
!4012 = distinct !DISubprogram(name: "xnrealloc", scope: !469, file: !469, line: 112, type: !4013, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!28, !28, !215, !215}
!4015 = !{!4016, !4017, !4018}
!4016 = !DILocalVariable(name: "p", arg: 1, scope: !4012, file: !469, line: 112, type: !28)
!4017 = !DILocalVariable(name: "n", arg: 2, scope: !4012, file: !469, line: 112, type: !215)
!4018 = !DILocalVariable(name: "s", arg: 3, scope: !4012, file: !469, line: 112, type: !215)
!4019 = !DILocation(line: 112, column: 18, scope: !4012)
!4020 = !DILocation(line: 112, column: 28, scope: !4012)
!4021 = !DILocation(line: 112, column: 38, scope: !4012)
!4022 = !DILocation(line: 114, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4012, file: !469, line: 114, column: 7)
!4024 = !DILocation(line: 114, column: 7, scope: !4012)
!4025 = !DILocation(line: 115, column: 5, scope: !4023)
!4026 = !DILocation(line: 116, column: 25, scope: !4012)
!4027 = !DILocalVariable(name: "p", arg: 1, scope: !4028, file: !3989, line: 51, type: !28)
!4028 = distinct !DISubprogram(name: "xrealloc", scope: !3989, file: !3989, line: 51, type: !4029, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!28, !28, !215}
!4031 = !{!4027, !4032}
!4032 = !DILocalVariable(name: "n", arg: 2, scope: !4028, file: !3989, line: 51, type: !215)
!4033 = !DILocation(line: 51, column: 17, scope: !4028, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 116, column: 10, scope: !4012)
!4035 = !DILocation(line: 51, column: 27, scope: !4028, inlinedAt: !4034)
!4036 = !DILocation(line: 53, column: 8, scope: !4037, inlinedAt: !4034)
!4037 = distinct !DILexicalBlock(scope: !4028, file: !3989, line: 53, column: 7)
!4038 = !DILocation(line: 53, column: 13, scope: !4037, inlinedAt: !4034)
!4039 = !DILocation(line: 53, column: 10, scope: !4037, inlinedAt: !4034)
!4040 = !DILocation(line: 57, column: 7, scope: !4041, inlinedAt: !4034)
!4041 = distinct !DILexicalBlock(scope: !4037, file: !3989, line: 54, column: 5)
!4042 = !DILocation(line: 58, column: 7, scope: !4041, inlinedAt: !4034)
!4043 = !DILocation(line: 61, column: 7, scope: !4028, inlinedAt: !4034)
!4044 = !DILocation(line: 62, column: 8, scope: !4045, inlinedAt: !4034)
!4045 = distinct !DILexicalBlock(scope: !4028, file: !3989, line: 62, column: 7)
!4046 = !DILocation(line: 62, column: 13, scope: !4045, inlinedAt: !4034)
!4047 = !DILocation(line: 62, column: 10, scope: !4045, inlinedAt: !4034)
!4048 = !DILocation(line: 63, column: 5, scope: !4045, inlinedAt: !4034)
!4049 = !DILocation(line: 0, scope: !4028, inlinedAt: !4034)
!4050 = !DILocation(line: 116, column: 3, scope: !4012)
!4051 = !DILocation(line: 51, column: 17, scope: !4028)
!4052 = !DILocation(line: 51, column: 27, scope: !4028)
!4053 = !DILocation(line: 53, column: 8, scope: !4037)
!4054 = !DILocation(line: 53, column: 13, scope: !4037)
!4055 = !DILocation(line: 53, column: 10, scope: !4037)
!4056 = !DILocation(line: 57, column: 7, scope: !4041)
!4057 = !DILocation(line: 58, column: 7, scope: !4041)
!4058 = !DILocation(line: 61, column: 7, scope: !4028)
!4059 = !DILocation(line: 62, column: 8, scope: !4045)
!4060 = !DILocation(line: 62, column: 13, scope: !4045)
!4061 = !DILocation(line: 62, column: 10, scope: !4045)
!4062 = !DILocation(line: 63, column: 5, scope: !4045)
!4063 = !DILocation(line: 0, scope: !4028)
!4064 = !DILocation(line: 65, column: 1, scope: !4028)
!4065 = !DILocation(line: 174, column: 19, scope: !470)
!4066 = !DILocation(line: 174, column: 30, scope: !470)
!4067 = !DILocation(line: 174, column: 41, scope: !470)
!4068 = !DILocation(line: 176, column: 14, scope: !470)
!4069 = !DILocation(line: 176, column: 10, scope: !470)
!4070 = !DILocation(line: 178, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !470, file: !469, line: 178, column: 7)
!4072 = !DILocation(line: 178, column: 7, scope: !470)
!4073 = !DILocation(line: 180, column: 13, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !469, line: 180, column: 11)
!4075 = distinct !DILexicalBlock(scope: !4071, file: !469, line: 179, column: 5)
!4076 = !DILocation(line: 180, column: 11, scope: !4075)
!4077 = !DILocation(line: 188, column: 30, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4074, file: !469, line: 181, column: 9)
!4079 = !DILocation(line: 189, column: 16, scope: !4078)
!4080 = !DILocation(line: 189, column: 13, scope: !4078)
!4081 = !DILocation(line: 190, column: 9, scope: !4078)
!4082 = !DILocation(line: 0, scope: !4078)
!4083 = !DILocation(line: 191, column: 11, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4075, file: !469, line: 191, column: 11)
!4085 = !DILocation(line: 191, column: 11, scope: !4075)
!4086 = !DILocation(line: 206, column: 7, scope: !470)
!4087 = !DILocation(line: 207, column: 25, scope: !470)
!4088 = !DILocation(line: 51, column: 17, scope: !4028, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 207, column: 10, scope: !470)
!4090 = !DILocation(line: 51, column: 27, scope: !4028, inlinedAt: !4089)
!4091 = !DILocation(line: 53, column: 10, scope: !4037, inlinedAt: !4089)
!4092 = !DILocation(line: 192, column: 9, scope: !4084)
!4093 = !DILocation(line: 200, column: 69, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !469, line: 200, column: 11)
!4095 = distinct !DILexicalBlock(scope: !4071, file: !469, line: 195, column: 5)
!4096 = !DILocation(line: 201, column: 11, scope: !4094)
!4097 = !DILocation(line: 200, column: 11, scope: !4095)
!4098 = !DILocation(line: 202, column: 9, scope: !4094)
!4099 = !DILocation(line: 203, column: 14, scope: !4095)
!4100 = !DILocation(line: 203, column: 18, scope: !4095)
!4101 = !DILocation(line: 203, column: 9, scope: !4095)
!4102 = !DILocation(line: 53, column: 8, scope: !4037, inlinedAt: !4089)
!4103 = !DILocation(line: 57, column: 7, scope: !4041, inlinedAt: !4089)
!4104 = !DILocation(line: 58, column: 7, scope: !4041, inlinedAt: !4089)
!4105 = !DILocation(line: 61, column: 7, scope: !4028, inlinedAt: !4089)
!4106 = !DILocation(line: 62, column: 8, scope: !4045, inlinedAt: !4089)
!4107 = !DILocation(line: 62, column: 13, scope: !4045, inlinedAt: !4089)
!4108 = !DILocation(line: 62, column: 10, scope: !4045, inlinedAt: !4089)
!4109 = !DILocation(line: 63, column: 5, scope: !4045, inlinedAt: !4089)
!4110 = !DILocation(line: 0, scope: !4028, inlinedAt: !4089)
!4111 = !DILocation(line: 207, column: 3, scope: !470)
!4112 = distinct !DISubprogram(name: "xcharalloc", scope: !469, file: !469, line: 216, type: !3071, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4113)
!4113 = !{!4114}
!4114 = !DILocalVariable(name: "n", arg: 1, scope: !4112, file: !469, line: 216, type: !215)
!4115 = !DILocation(line: 216, column: 20, scope: !4112)
!4116 = !DILocation(line: 39, column: 17, scope: !3988, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 218, column: 10, scope: !4112)
!4118 = !DILocation(line: 41, column: 13, scope: !3988, inlinedAt: !4117)
!4119 = !DILocation(line: 41, column: 9, scope: !3988, inlinedAt: !4117)
!4120 = !DILocation(line: 42, column: 8, scope: !3999, inlinedAt: !4117)
!4121 = !DILocation(line: 42, column: 15, scope: !3999, inlinedAt: !4117)
!4122 = !DILocation(line: 42, column: 10, scope: !3999, inlinedAt: !4117)
!4123 = !DILocation(line: 43, column: 5, scope: !3999, inlinedAt: !4117)
!4124 = !DILocation(line: 218, column: 3, scope: !4112)
!4125 = distinct !DISubprogram(name: "x2realloc", scope: !3989, file: !3989, line: 74, type: !4126, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!28, !28, !473}
!4128 = !{!4129, !4130}
!4129 = !DILocalVariable(name: "p", arg: 1, scope: !4125, file: !3989, line: 74, type: !28)
!4130 = !DILocalVariable(name: "pn", arg: 2, scope: !4125, file: !3989, line: 74, type: !473)
!4131 = !DILocation(line: 74, column: 18, scope: !4125)
!4132 = !DILocation(line: 74, column: 29, scope: !4125)
!4133 = !DILocation(line: 174, column: 19, scope: !470, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 76, column: 10, scope: !4125)
!4135 = !DILocation(line: 174, column: 30, scope: !470, inlinedAt: !4134)
!4136 = !DILocation(line: 174, column: 41, scope: !470, inlinedAt: !4134)
!4137 = !DILocation(line: 176, column: 14, scope: !470, inlinedAt: !4134)
!4138 = !DILocation(line: 176, column: 10, scope: !470, inlinedAt: !4134)
!4139 = !DILocation(line: 178, column: 9, scope: !4071, inlinedAt: !4134)
!4140 = !DILocation(line: 178, column: 7, scope: !470, inlinedAt: !4134)
!4141 = !DILocation(line: 180, column: 13, scope: !4074, inlinedAt: !4134)
!4142 = !DILocation(line: 180, column: 11, scope: !4075, inlinedAt: !4134)
!4143 = !DILocation(line: 191, column: 11, scope: !4084, inlinedAt: !4134)
!4144 = !DILocation(line: 191, column: 11, scope: !4075, inlinedAt: !4134)
!4145 = !DILocation(line: 206, column: 7, scope: !470, inlinedAt: !4134)
!4146 = !DILocation(line: 51, column: 17, scope: !4028, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 207, column: 10, scope: !470, inlinedAt: !4134)
!4148 = !DILocation(line: 51, column: 27, scope: !4028, inlinedAt: !4147)
!4149 = !DILocation(line: 53, column: 10, scope: !4037, inlinedAt: !4147)
!4150 = !DILocation(line: 192, column: 9, scope: !4084, inlinedAt: !4134)
!4151 = !DILocation(line: 201, column: 11, scope: !4094, inlinedAt: !4134)
!4152 = !DILocation(line: 200, column: 11, scope: !4095, inlinedAt: !4134)
!4153 = !DILocation(line: 202, column: 9, scope: !4094, inlinedAt: !4134)
!4154 = !DILocation(line: 203, column: 14, scope: !4095, inlinedAt: !4134)
!4155 = !DILocation(line: 203, column: 18, scope: !4095, inlinedAt: !4134)
!4156 = !DILocation(line: 203, column: 9, scope: !4095, inlinedAt: !4134)
!4157 = !DILocation(line: 53, column: 8, scope: !4037, inlinedAt: !4147)
!4158 = !DILocation(line: 57, column: 7, scope: !4041, inlinedAt: !4147)
!4159 = !DILocation(line: 58, column: 7, scope: !4041, inlinedAt: !4147)
!4160 = !DILocation(line: 61, column: 7, scope: !4028, inlinedAt: !4147)
!4161 = !DILocation(line: 62, column: 8, scope: !4045, inlinedAt: !4147)
!4162 = !DILocation(line: 62, column: 13, scope: !4045, inlinedAt: !4147)
!4163 = !DILocation(line: 62, column: 10, scope: !4045, inlinedAt: !4147)
!4164 = !DILocation(line: 63, column: 5, scope: !4045, inlinedAt: !4147)
!4165 = !DILocation(line: 0, scope: !4028, inlinedAt: !4147)
!4166 = !DILocation(line: 76, column: 3, scope: !4125)
!4167 = distinct !DISubprogram(name: "xzalloc", scope: !3989, file: !3989, line: 84, type: !3990, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4168)
!4168 = !{!4169}
!4169 = !DILocalVariable(name: "s", arg: 1, scope: !4167, file: !3989, line: 84, type: !215)
!4170 = !DILocation(line: 84, column: 17, scope: !4167)
!4171 = !DILocation(line: 39, column: 17, scope: !3988, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 86, column: 18, scope: !4167)
!4173 = !DILocation(line: 41, column: 13, scope: !3988, inlinedAt: !4172)
!4174 = !DILocation(line: 41, column: 9, scope: !3988, inlinedAt: !4172)
!4175 = !DILocation(line: 42, column: 8, scope: !3999, inlinedAt: !4172)
!4176 = !DILocation(line: 42, column: 15, scope: !3999, inlinedAt: !4172)
!4177 = !DILocation(line: 42, column: 10, scope: !3999, inlinedAt: !4172)
!4178 = !DILocation(line: 43, column: 5, scope: !3999, inlinedAt: !4172)
!4179 = !DILocation(line: 86, column: 10, scope: !4167)
!4180 = !DILocation(line: 86, column: 3, scope: !4167)
!4181 = distinct !DISubprogram(name: "xcalloc", scope: !3989, file: !3989, line: 93, type: !3975, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4182)
!4182 = !{!4183, !4184, !4185}
!4183 = !DILocalVariable(name: "n", arg: 1, scope: !4181, file: !3989, line: 93, type: !215)
!4184 = !DILocalVariable(name: "s", arg: 2, scope: !4181, file: !3989, line: 93, type: !215)
!4185 = !DILocalVariable(name: "p", scope: !4181, file: !3989, line: 95, type: !28)
!4186 = !DILocation(line: 93, column: 17, scope: !4181)
!4187 = !DILocation(line: 93, column: 27, scope: !4181)
!4188 = !DILocation(line: 100, column: 7, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4181, file: !3989, line: 100, column: 7)
!4190 = !DILocation(line: 101, column: 7, scope: !4189)
!4191 = !DILocation(line: 101, column: 18, scope: !4189)
!4192 = !DILocation(line: 95, column: 9, scope: !4181)
!4193 = !DILocation(line: 101, column: 16, scope: !4189)
!4194 = !DILocation(line: 100, column: 7, scope: !4181)
!4195 = !DILocation(line: 102, column: 5, scope: !4189)
!4196 = !DILocation(line: 103, column: 3, scope: !4181)
!4197 = distinct !DISubprogram(name: "xmemdup", scope: !3989, file: !3989, line: 111, type: !4198, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4202)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!28, !4200, !215}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4202 = !{!4203, !4204}
!4203 = !DILocalVariable(name: "p", arg: 1, scope: !4197, file: !3989, line: 111, type: !4200)
!4204 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !3989, line: 111, type: !215)
!4205 = !DILocation(line: 111, column: 22, scope: !4197)
!4206 = !DILocation(line: 111, column: 32, scope: !4197)
!4207 = !DILocation(line: 39, column: 17, scope: !3988, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 113, column: 18, scope: !4197)
!4209 = !DILocation(line: 41, column: 13, scope: !3988, inlinedAt: !4208)
!4210 = !DILocation(line: 41, column: 9, scope: !3988, inlinedAt: !4208)
!4211 = !DILocation(line: 42, column: 8, scope: !3999, inlinedAt: !4208)
!4212 = !DILocation(line: 42, column: 15, scope: !3999, inlinedAt: !4208)
!4213 = !DILocation(line: 42, column: 10, scope: !3999, inlinedAt: !4208)
!4214 = !DILocation(line: 43, column: 5, scope: !3999, inlinedAt: !4208)
!4215 = !DILocation(line: 113, column: 10, scope: !4197)
!4216 = !DILocation(line: 113, column: 3, scope: !4197)
!4217 = distinct !DISubprogram(name: "xstrdup", scope: !3989, file: !3989, line: 119, type: !1820, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !465, retainedNodes: !4218)
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "string", arg: 1, scope: !4217, file: !3989, line: 119, type: !69)
!4220 = !DILocation(line: 119, column: 22, scope: !4217)
!4221 = !DILocation(line: 121, column: 27, scope: !4217)
!4222 = !DILocation(line: 121, column: 43, scope: !4217)
!4223 = !DILocation(line: 111, column: 22, scope: !4197, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 121, column: 10, scope: !4217)
!4225 = !DILocation(line: 111, column: 32, scope: !4197, inlinedAt: !4224)
!4226 = !DILocation(line: 39, column: 17, scope: !3988, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 113, column: 18, scope: !4197, inlinedAt: !4224)
!4228 = !DILocation(line: 41, column: 13, scope: !3988, inlinedAt: !4227)
!4229 = !DILocation(line: 41, column: 9, scope: !3988, inlinedAt: !4227)
!4230 = !DILocation(line: 42, column: 8, scope: !3999, inlinedAt: !4227)
!4231 = !DILocation(line: 42, column: 15, scope: !3999, inlinedAt: !4227)
!4232 = !DILocation(line: 42, column: 10, scope: !3999, inlinedAt: !4227)
!4233 = !DILocation(line: 43, column: 5, scope: !3999, inlinedAt: !4227)
!4234 = !DILocation(line: 113, column: 10, scope: !4197, inlinedAt: !4224)
!4235 = !DILocation(line: 121, column: 3, scope: !4217)
!4236 = distinct !DISubprogram(name: "xalloc_die", scope: !4237, file: !4237, line: 32, type: !1171, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !482, retainedNodes: !310)
!4237 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4238 = !DILocation(line: 34, column: 10, scope: !4236)
!4239 = !DILocation(line: 34, column: 33, scope: !4236)
!4240 = !DILocation(line: 34, column: 3, scope: !4236)
!4241 = !DILocation(line: 40, column: 3, scope: !4236)
!4242 = distinct !DISubprogram(name: "rpl_calloc", scope: !4243, file: !4243, line: 42, type: !3975, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !484, retainedNodes: !4244)
!4243 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4244 = !{!4245, !4246, !4247, !4248}
!4245 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !4243, line: 42, type: !215)
!4246 = !DILocalVariable(name: "s", arg: 2, scope: !4242, file: !4243, line: 42, type: !215)
!4247 = !DILocalVariable(name: "result", scope: !4242, file: !4243, line: 44, type: !28)
!4248 = !DILocalVariable(name: "bytes", scope: !4249, file: !4243, line: 56, type: !215)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !4243, line: 53, column: 5)
!4250 = distinct !DILexicalBlock(scope: !4242, file: !4243, line: 47, column: 7)
!4251 = !DILocation(line: 42, column: 20, scope: !4242)
!4252 = !DILocation(line: 42, column: 30, scope: !4242)
!4253 = !DILocation(line: 47, column: 9, scope: !4250)
!4254 = !DILocation(line: 47, column: 19, scope: !4250)
!4255 = !DILocation(line: 47, column: 14, scope: !4250)
!4256 = !DILocation(line: 56, column: 24, scope: !4249)
!4257 = !DILocation(line: 56, column: 14, scope: !4249)
!4258 = !DILocation(line: 57, column: 17, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4249, file: !4243, line: 57, column: 11)
!4260 = !DILocation(line: 57, column: 21, scope: !4259)
!4261 = !DILocation(line: 57, column: 11, scope: !4249)
!4262 = !DILocation(line: 59, column: 11, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4259, file: !4243, line: 58, column: 9)
!4264 = !DILocation(line: 59, column: 17, scope: !4263)
!4265 = !DILocation(line: 65, column: 12, scope: !4242)
!4266 = !DILocation(line: 44, column: 9, scope: !4242)
!4267 = !DILocation(line: 72, column: 3, scope: !4242)
!4268 = !DILocation(line: 0, scope: !4263)
!4269 = !DILocation(line: 73, column: 1, scope: !4242)
!4270 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4271, file: !4271, line: 385, type: !4272, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !486, retainedNodes: !4286)
!4271 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!215, !4274, !69, !215, !4275}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2238, line: 6, baseType: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2240, line: 21, baseType: !4278)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2240, line: 13, size: 64, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4278, file: !2240, line: 15, baseType: !73, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4278, file: !2240, line: 20, baseType: !4282, size: 32, offset: 32)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4278, file: !2240, line: 16, size: 32, elements: !4283)
!4283 = !{!4284, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4282, file: !2240, line: 18, baseType: !7, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4282, file: !2240, line: 19, baseType: !125, size: 32)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4287 = !DILocalVariable(name: "pwc", arg: 1, scope: !4270, file: !4271, line: 385, type: !4274)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !4271, line: 385, type: !69)
!4289 = !DILocalVariable(name: "n", arg: 3, scope: !4270, file: !4271, line: 385, type: !215)
!4290 = !DILocalVariable(name: "ps", arg: 4, scope: !4270, file: !4271, line: 385, type: !4275)
!4291 = !DILocalVariable(name: "ret", scope: !4270, file: !4271, line: 387, type: !215)
!4292 = !DILocalVariable(name: "wc", scope: !4270, file: !4271, line: 388, type: !2251)
!4293 = !DILocalVariable(name: "uc", scope: !4294, file: !4271, line: 449, type: !268)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !4271, line: 448, column: 5)
!4295 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 447, column: 7)
!4296 = !DILocation(line: 385, column: 23, scope: !4270)
!4297 = !DILocation(line: 385, column: 40, scope: !4270)
!4298 = !DILocation(line: 385, column: 50, scope: !4270)
!4299 = !DILocation(line: 385, column: 64, scope: !4270)
!4300 = !DILocation(line: 388, column: 3, scope: !4270)
!4301 = !DILocation(line: 404, column: 9, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 404, column: 7)
!4303 = !DILocation(line: 404, column: 7, scope: !4270)
!4304 = !DILocation(line: 439, column: 9, scope: !4270)
!4305 = !DILocation(line: 387, column: 10, scope: !4270)
!4306 = !DILocation(line: 447, column: 19, scope: !4295)
!4307 = !DILocation(line: 447, column: 31, scope: !4295)
!4308 = !DILocation(line: 447, column: 26, scope: !4295)
!4309 = !DILocation(line: 447, column: 41, scope: !4295)
!4310 = !DILocation(line: 447, column: 7, scope: !4270)
!4311 = !DILocation(line: 449, column: 26, scope: !4294)
!4312 = !DILocation(line: 449, column: 21, scope: !4294)
!4313 = !DILocation(line: 450, column: 14, scope: !4294)
!4314 = !DILocation(line: 450, column: 12, scope: !4294)
!4315 = !DILocation(line: 0, scope: !4294)
!4316 = !DILocation(line: 456, column: 1, scope: !4270)
!4317 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4318, file: !4318, line: 49, type: !4319, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !489, retainedNodes: !4345)
!4318 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!26, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !115, line: 55, size: 3072, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4337, !4338, !4343, !4344}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4324, file: !115, line: 57, baseType: !34, size: 16)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4324, file: !115, line: 58, baseType: !119, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4324, file: !115, line: 59, baseType: !121, size: 256, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4324, file: !115, line: 60, baseType: !125, size: 32, offset: 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4324, file: !115, line: 61, baseType: !121, size: 256, offset: 352)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4324, file: !115, line: 62, baseType: !130, size: 2048, offset: 608)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4324, file: !115, line: 63, baseType: !4333, size: 32, offset: 2656)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !115, line: 42, size: 32, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4333, file: !115, line: 45, baseType: !34, size: 16)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4333, file: !115, line: 46, baseType: !34, size: 16, offset: 16)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4324, file: !115, line: 70, baseType: !139, size: 32, offset: 2688)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4324, file: !115, line: 75, baseType: !4339, size: 64, offset: 2720)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4324, file: !115, line: 71, size: 64, elements: !4340)
!4340 = !{!4341, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4339, file: !115, line: 73, baseType: !139, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4339, file: !115, line: 74, baseType: !139, size: 32, offset: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4324, file: !115, line: 80, baseType: !146, size: 128, offset: 2784)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4324, file: !115, line: 81, baseType: !148, size: 160, offset: 2912)
!4345 = !{!4346, !4347, !4348}
!4346 = !DILocalVariable(name: "ut", arg: 1, scope: !4317, file: !4318, line: 49, type: !4321)
!4347 = !DILocalVariable(name: "p", scope: !4317, file: !4318, line: 51, type: !26)
!4348 = !DILocalVariable(name: "trimmed_name", scope: !4317, file: !4318, line: 51, type: !26)
!4349 = !DILocation(line: 49, column: 42, scope: !4317)
!4350 = !DILocation(line: 53, column: 18, scope: !4317)
!4351 = !DILocation(line: 51, column: 13, scope: !4317)
!4352 = !DILocation(line: 54, column: 26, scope: !4317)
!4353 = !DILocalVariable(name: "__dest", arg: 1, scope: !4354, file: !1590, line: 103, type: !1219)
!4354 = distinct !DISubprogram(name: "strncpy", scope: !1590, file: !1590, line: 103, type: !1217, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !489, retainedNodes: !4355)
!4355 = !{!4353, !4356, !4357}
!4356 = !DILocalVariable(name: "__src", arg: 2, scope: !4354, file: !1590, line: 103, type: !1220)
!4357 = !DILocalVariable(name: "__len", arg: 3, scope: !4354, file: !1590, line: 103, type: !215)
!4358 = !DILocation(line: 103, column: 1, scope: !4354, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 54, column: 3, scope: !4317)
!4360 = !DILocation(line: 106, column: 57, scope: !4354, inlinedAt: !4359)
!4361 = !DILocation(line: 106, column: 10, scope: !4354, inlinedAt: !4359)
!4362 = !DILocation(line: 58, column: 3, scope: !4317)
!4363 = !DILocation(line: 58, column: 39, scope: !4317)
!4364 = !DILocation(line: 59, column: 27, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4317, file: !4318, line: 59, column: 3)
!4366 = !DILocation(line: 60, column: 21, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4365, file: !4318, line: 59, column: 3)
!4368 = !DILocation(line: 60, column: 25, scope: !4367)
!4369 = !DILocation(line: 59, column: 25, scope: !4365)
!4370 = !DILocation(line: 51, column: 9, scope: !4317)
!4371 = !DILocation(line: 60, column: 28, scope: !4367)
!4372 = !DILocation(line: 60, column: 34, scope: !4367)
!4373 = !DILocation(line: 59, column: 3, scope: !4365)
!4374 = !DILocation(line: 61, column: 13, scope: !4367)
!4375 = distinct !{!4375, !4373, !4376}
!4376 = !DILocation(line: 62, column: 5, scope: !4365)
!4377 = !DILocation(line: 63, column: 3, scope: !4317)
!4378 = distinct !DISubprogram(name: "read_utmp", scope: !4318, file: !4318, line: 92, type: !4379, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !489, retainedNodes: !4383)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!73, !69, !473, !4381, !73}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391}
!4384 = !DILocalVariable(name: "file", arg: 1, scope: !4378, file: !4318, line: 92, type: !69)
!4385 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4378, file: !4318, line: 92, type: !473)
!4386 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4378, file: !4318, line: 92, type: !4381)
!4387 = !DILocalVariable(name: "options", arg: 4, scope: !4378, file: !4318, line: 93, type: !73)
!4388 = !DILocalVariable(name: "n_read", scope: !4378, file: !4318, line: 95, type: !215)
!4389 = !DILocalVariable(name: "n_alloc", scope: !4378, file: !4318, line: 96, type: !215)
!4390 = !DILocalVariable(name: "utmp", scope: !4378, file: !4318, line: 97, type: !4382)
!4391 = !DILocalVariable(name: "u", scope: !4378, file: !4318, line: 98, type: !4382)
!4392 = !DILocation(line: 92, column: 24, scope: !4378)
!4393 = !DILocation(line: 92, column: 38, scope: !4378)
!4394 = !DILocation(line: 92, column: 63, scope: !4378)
!4395 = !DILocation(line: 93, column: 16, scope: !4378)
!4396 = !DILocation(line: 95, column: 10, scope: !4378)
!4397 = !DILocation(line: 96, column: 10, scope: !4378)
!4398 = !DILocation(line: 97, column: 16, scope: !4378)
!4399 = !DILocation(line: 104, column: 3, scope: !4378)
!4400 = !DILocation(line: 106, column: 3, scope: !4378)
!4401 = !DILocation(line: 108, column: 15, scope: !4378)
!4402 = !DILocation(line: 98, column: 16, scope: !4378)
!4403 = !DILocation(line: 108, column: 32, scope: !4378)
!4404 = !DILocation(line: 108, column: 3, scope: !4378)
!4405 = !DILocalVariable(name: "u", arg: 1, scope: !4406, file: !4318, line: 69, type: !4321)
!4406 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4318, file: !4318, line: 69, type: !4407, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !489, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!38, !4321, !73}
!4409 = !{!4405, !4410, !4411}
!4410 = !DILocalVariable(name: "options", arg: 2, scope: !4406, file: !4318, line: 69, type: !73)
!4411 = !DILocalVariable(name: "user_proc", scope: !4406, file: !4318, line: 71, type: !38)
!4412 = !DILocation(line: 69, column: 42, scope: !4406, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 109, column: 9, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4378, file: !4318, line: 109, column: 9)
!4415 = !DILocation(line: 69, column: 49, scope: !4406, inlinedAt: !4413)
!4416 = !DILocation(line: 71, column: 20, scope: !4406, inlinedAt: !4413)
!4417 = !DILocation(line: 0, scope: !4406, inlinedAt: !4413)
!4418 = !DILocation(line: 72, column: 42, scope: !4419, inlinedAt: !4413)
!4419 = distinct !DILexicalBlock(scope: !4406, file: !4318, line: 72, column: 7)
!4420 = !DILocation(line: 75, column: 7, scope: !4421, inlinedAt: !4413)
!4421 = distinct !DILexicalBlock(scope: !4406, file: !4318, line: 74, column: 7)
!4422 = !DILocation(line: 76, column: 14, scope: !4421, inlinedAt: !4413)
!4423 = !DILocation(line: 76, column: 12, scope: !4421, inlinedAt: !4413)
!4424 = !DILocation(line: 77, column: 7, scope: !4421, inlinedAt: !4413)
!4425 = !DILocation(line: 77, column: 11, scope: !4421, inlinedAt: !4413)
!4426 = !DILocation(line: 77, column: 32, scope: !4421, inlinedAt: !4413)
!4427 = !DILocation(line: 77, column: 36, scope: !4421, inlinedAt: !4413)
!4428 = !DILocation(line: 77, column: 39, scope: !4421, inlinedAt: !4413)
!4429 = !DILocation(line: 77, column: 45, scope: !4421, inlinedAt: !4413)
!4430 = !DILocation(line: 74, column: 7, scope: !4406, inlinedAt: !4413)
!4431 = !DILocation(line: 111, column: 20, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !4318, line: 111, column: 13)
!4433 = distinct !DILexicalBlock(scope: !4414, file: !4318, line: 110, column: 7)
!4434 = !DILocation(line: 111, column: 13, scope: !4433)
!4435 = !DILocation(line: 174, column: 19, scope: !493, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 112, column: 18, scope: !4432)
!4437 = !DILocation(line: 174, column: 41, scope: !493, inlinedAt: !4436)
!4438 = !DILocation(line: 176, column: 10, scope: !493, inlinedAt: !4436)
!4439 = !DILocation(line: 178, column: 9, scope: !4440, inlinedAt: !4436)
!4440 = distinct !DILexicalBlock(scope: !493, file: !469, line: 178, column: 7)
!4441 = !DILocation(line: 178, column: 7, scope: !493, inlinedAt: !4436)
!4442 = !DILocation(line: 180, column: 13, scope: !4443, inlinedAt: !4436)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !469, line: 180, column: 11)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !469, line: 179, column: 5)
!4445 = !DILocation(line: 180, column: 11, scope: !4444, inlinedAt: !4436)
!4446 = !DILocation(line: 191, column: 11, scope: !4447, inlinedAt: !4436)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !469, line: 191, column: 11)
!4448 = !DILocation(line: 191, column: 11, scope: !4444, inlinedAt: !4436)
!4449 = !DILocation(line: 192, column: 9, scope: !4447, inlinedAt: !4436)
!4450 = !DILocation(line: 201, column: 11, scope: !4451, inlinedAt: !4436)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !469, line: 200, column: 11)
!4452 = distinct !DILexicalBlock(scope: !4440, file: !469, line: 195, column: 5)
!4453 = !DILocation(line: 200, column: 11, scope: !4452, inlinedAt: !4436)
!4454 = !DILocation(line: 202, column: 9, scope: !4451, inlinedAt: !4436)
!4455 = !DILocation(line: 203, column: 14, scope: !4452, inlinedAt: !4436)
!4456 = !DILocation(line: 203, column: 18, scope: !4452, inlinedAt: !4436)
!4457 = !DILocation(line: 203, column: 9, scope: !4452, inlinedAt: !4436)
!4458 = !DILocation(line: 0, scope: !493, inlinedAt: !4436)
!4459 = !DILocation(line: 207, column: 25, scope: !493, inlinedAt: !4436)
!4460 = !DILocation(line: 207, column: 10, scope: !493, inlinedAt: !4436)
!4461 = !DILocation(line: 112, column: 18, scope: !4432)
!4462 = !DILocation(line: 112, column: 11, scope: !4432)
!4463 = !DILocation(line: 0, scope: !4378)
!4464 = !DILocation(line: 114, column: 20, scope: !4433)
!4465 = !DILocation(line: 114, column: 9, scope: !4433)
!4466 = !DILocation(line: 114, column: 26, scope: !4433)
!4467 = !{i64 0, i64 2, !2490, i64 4, i64 4, !1041, i64 8, i64 32, !1144, i64 40, i64 4, !1144, i64 44, i64 32, !1144, i64 76, i64 256, !1144, i64 332, i64 2, !2490, i64 334, i64 2, !2490, i64 336, i64 4, !1041, i64 340, i64 4, !1041, i64 344, i64 4, !1041, i64 348, i64 16, !1144, i64 364, i64 20, !1144}
!4468 = !DILocation(line: 115, column: 7, scope: !4433)
!4469 = distinct !{!4469, !4404, !4470}
!4470 = !DILocation(line: 115, column: 7, scope: !4378)
!4471 = !DILocation(line: 0, scope: !4432)
!4472 = !DILocation(line: 0, scope: !4433)
!4473 = !DILocation(line: 117, column: 3, scope: !4378)
!4474 = !DILocation(line: 119, column: 14, scope: !4378)
!4475 = !DILocation(line: 120, column: 13, scope: !4378)
!4476 = !DILocation(line: 122, column: 3, scope: !4378)
!4477 = distinct !DISubprogram(name: "close_stream", scope: !4478, file: !4478, line: 56, type: !4479, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !500, retainedNodes: !4515)
!4478 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!73, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3788, line: 7, baseType: !4483)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3790, line: 49, size: 1728, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4483, file: !3790, line: 51, baseType: !73, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4483, file: !3790, line: 54, baseType: !26, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4483, file: !3790, line: 55, baseType: !26, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4483, file: !3790, line: 56, baseType: !26, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4483, file: !3790, line: 57, baseType: !26, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4483, file: !3790, line: 58, baseType: !26, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4483, file: !3790, line: 59, baseType: !26, size: 64, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4483, file: !3790, line: 60, baseType: !26, size: 64, offset: 448)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4483, file: !3790, line: 61, baseType: !26, size: 64, offset: 512)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4483, file: !3790, line: 64, baseType: !26, size: 64, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4483, file: !3790, line: 65, baseType: !26, size: 64, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4483, file: !3790, line: 66, baseType: !26, size: 64, offset: 704)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4483, file: !3790, line: 68, baseType: !3805, size: 64, offset: 768)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4483, file: !3790, line: 70, baseType: !4499, size: 64, offset: 832)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4483, file: !3790, line: 72, baseType: !73, size: 32, offset: 896)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4483, file: !3790, line: 73, baseType: !73, size: 32, offset: 928)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4483, file: !3790, line: 74, baseType: !174, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4483, file: !3790, line: 77, baseType: !347, size: 16, offset: 1024)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4483, file: !3790, line: 78, baseType: !3814, size: 8, offset: 1040)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4483, file: !3790, line: 79, baseType: !3816, size: 8, offset: 1048)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4483, file: !3790, line: 81, baseType: !3820, size: 64, offset: 1088)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4483, file: !3790, line: 89, baseType: !3823, size: 64, offset: 1152)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4483, file: !3790, line: 91, baseType: !3825, size: 64, offset: 1216)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4483, file: !3790, line: 92, baseType: !3828, size: 64, offset: 1280)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4483, file: !3790, line: 93, baseType: !4499, size: 64, offset: 1344)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4483, file: !3790, line: 94, baseType: !28, size: 64, offset: 1408)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4483, file: !3790, line: 95, baseType: !215, size: 64, offset: 1472)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4483, file: !3790, line: 96, baseType: !73, size: 32, offset: 1536)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4483, file: !3790, line: 98, baseType: !148, size: 160, offset: 1568)
!4515 = !{!4516, !4517, !4519, !4520}
!4516 = !DILocalVariable(name: "stream", arg: 1, scope: !4477, file: !4478, line: 56, type: !4481)
!4517 = !DILocalVariable(name: "some_pending", scope: !4477, file: !4478, line: 58, type: !4518)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4519 = !DILocalVariable(name: "prev_fail", scope: !4477, file: !4478, line: 59, type: !4518)
!4520 = !DILocalVariable(name: "fclose_fail", scope: !4477, file: !4478, line: 60, type: !4518)
!4521 = !DILocation(line: 56, column: 21, scope: !4477)
!4522 = !DILocation(line: 58, column: 30, scope: !4477)
!4523 = !DILocalVariable(name: "__stream", arg: 1, scope: !4524, file: !4525, line: 135, type: !4481)
!4524 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4525, file: !4525, line: 135, type: !4479, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !500, retainedNodes: !4526)
!4525 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4526 = !{!4523}
!4527 = !DILocation(line: 135, column: 1, scope: !4524, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 59, column: 27, scope: !4477)
!4529 = !DILocation(line: 137, column: 10, scope: !4524, inlinedAt: !4528)
!4530 = !{!4531, !1042, i64 0}
!4531 = !{!"_IO_FILE", !1042, i64 0, !935, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !935, i64 40, !935, i64 48, !935, i64 56, !935, i64 64, !935, i64 72, !935, i64 80, !935, i64 88, !935, i64 96, !935, i64 104, !1042, i64 112, !1042, i64 116, !1124, i64 120, !1147, i64 128, !936, i64 130, !936, i64 131, !935, i64 136, !1124, i64 144, !935, i64 152, !935, i64 160, !935, i64 168, !935, i64 176, !1124, i64 184, !1042, i64 192, !936, i64 196}
!4532 = !DILocation(line: 59, column: 43, scope: !4477)
!4533 = !DILocation(line: 60, column: 29, scope: !4477)
!4534 = !DILocation(line: 60, column: 45, scope: !4477)
!4535 = !DILocation(line: 70, column: 17, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4477, file: !4478, line: 70, column: 7)
!4537 = !DILocation(line: 58, column: 50, scope: !4477)
!4538 = !DILocation(line: 70, column: 33, scope: !4536)
!4539 = !DILocation(line: 70, column: 53, scope: !4536)
!4540 = !DILocation(line: 70, column: 59, scope: !4536)
!4541 = !DILocation(line: 70, column: 7, scope: !4477)
!4542 = !DILocation(line: 72, column: 11, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !4478, line: 71, column: 5)
!4544 = !DILocation(line: 73, column: 9, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4543, file: !4478, line: 72, column: 11)
!4546 = !DILocation(line: 73, column: 15, scope: !4545)
!4547 = !DILocation(line: 0, scope: !4477)
!4548 = !DILocation(line: 78, column: 1, scope: !4477)
!4549 = distinct !DISubprogram(name: "locale_charset", scope: !4550, file: !4550, line: 687, type: !1887, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !502, retainedNodes: !4551)
!4550 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4551 = !{!4552}
!4552 = !DILocalVariable(name: "codeset", scope: !4549, file: !4550, line: 689, type: !69)
!4553 = !DILocation(line: 696, column: 13, scope: !4549)
!4554 = !DILocation(line: 689, column: 15, scope: !4549)
!4555 = !DILocation(line: 754, column: 15, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4549, file: !4550, line: 754, column: 7)
!4557 = !DILocation(line: 754, column: 7, scope: !4549)
!4558 = !DILocation(line: 907, column: 13, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !4550, line: 907, column: 13)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !4550, line: 897, column: 7)
!4561 = distinct !DILexicalBlock(scope: !4549, file: !4550, line: 856, column: 3)
!4562 = !DILocation(line: 907, column: 24, scope: !4559)
!4563 = !DILocation(line: 907, column: 13, scope: !4560)
!4564 = !DILocation(line: 995, column: 3, scope: !4549)
!4565 = distinct !DISubprogram(name: "rpl_fclose", scope: !4566, file: !4566, line: 58, type: !4567, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !891, retainedNodes: !4603)
!4566 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!73, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3788, line: 7, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3790, line: 49, size: 1728, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4571, file: !3790, line: 51, baseType: !73, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4571, file: !3790, line: 54, baseType: !26, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4571, file: !3790, line: 55, baseType: !26, size: 64, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4571, file: !3790, line: 56, baseType: !26, size: 64, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4571, file: !3790, line: 57, baseType: !26, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4571, file: !3790, line: 58, baseType: !26, size: 64, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4571, file: !3790, line: 59, baseType: !26, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4571, file: !3790, line: 60, baseType: !26, size: 64, offset: 448)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4571, file: !3790, line: 61, baseType: !26, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4571, file: !3790, line: 64, baseType: !26, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4571, file: !3790, line: 65, baseType: !26, size: 64, offset: 640)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4571, file: !3790, line: 66, baseType: !26, size: 64, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4571, file: !3790, line: 68, baseType: !3805, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4571, file: !3790, line: 70, baseType: !4587, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4571, file: !3790, line: 72, baseType: !73, size: 32, offset: 896)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4571, file: !3790, line: 73, baseType: !73, size: 32, offset: 928)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4571, file: !3790, line: 74, baseType: !174, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4571, file: !3790, line: 77, baseType: !347, size: 16, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4571, file: !3790, line: 78, baseType: !3814, size: 8, offset: 1040)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4571, file: !3790, line: 79, baseType: !3816, size: 8, offset: 1048)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4571, file: !3790, line: 81, baseType: !3820, size: 64, offset: 1088)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4571, file: !3790, line: 89, baseType: !3823, size: 64, offset: 1152)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4571, file: !3790, line: 91, baseType: !3825, size: 64, offset: 1216)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4571, file: !3790, line: 92, baseType: !3828, size: 64, offset: 1280)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4571, file: !3790, line: 93, baseType: !4587, size: 64, offset: 1344)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4571, file: !3790, line: 94, baseType: !28, size: 64, offset: 1408)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4571, file: !3790, line: 95, baseType: !215, size: 64, offset: 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4571, file: !3790, line: 96, baseType: !73, size: 32, offset: 1536)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4571, file: !3790, line: 98, baseType: !148, size: 160, offset: 1568)
!4603 = !{!4604, !4605, !4606, !4607}
!4604 = !DILocalVariable(name: "fp", arg: 1, scope: !4565, file: !4566, line: 58, type: !4569)
!4605 = !DILocalVariable(name: "saved_errno", scope: !4565, file: !4566, line: 60, type: !73)
!4606 = !DILocalVariable(name: "fd", scope: !4565, file: !4566, line: 61, type: !73)
!4607 = !DILocalVariable(name: "result", scope: !4565, file: !4566, line: 62, type: !73)
!4608 = !DILocation(line: 58, column: 19, scope: !4565)
!4609 = !DILocation(line: 60, column: 7, scope: !4565)
!4610 = !DILocation(line: 62, column: 7, scope: !4565)
!4611 = !DILocation(line: 65, column: 8, scope: !4565)
!4612 = !DILocation(line: 61, column: 7, scope: !4565)
!4613 = !DILocation(line: 66, column: 10, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4565, file: !4566, line: 66, column: 7)
!4615 = !DILocation(line: 66, column: 7, scope: !4565)
!4616 = !DILocation(line: 67, column: 12, scope: !4614)
!4617 = !DILocation(line: 67, column: 5, scope: !4614)
!4618 = !DILocation(line: 72, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4565, file: !4566, line: 72, column: 7)
!4620 = !DILocation(line: 72, column: 23, scope: !4619)
!4621 = !DILocation(line: 72, column: 33, scope: !4619)
!4622 = !DILocation(line: 72, column: 26, scope: !4619)
!4623 = !DILocation(line: 72, column: 59, scope: !4619)
!4624 = !DILocation(line: 73, column: 7, scope: !4619)
!4625 = !DILocation(line: 73, column: 10, scope: !4619)
!4626 = !DILocation(line: 72, column: 7, scope: !4565)
!4627 = !DILocation(line: 100, column: 12, scope: !4565)
!4628 = !DILocation(line: 105, column: 7, scope: !4565)
!4629 = !DILocation(line: 74, column: 19, scope: !4619)
!4630 = !DILocation(line: 105, column: 19, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4565, file: !4566, line: 105, column: 7)
!4632 = !DILocation(line: 107, column: 13, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4631, file: !4566, line: 106, column: 5)
!4634 = !DILocation(line: 109, column: 5, scope: !4633)
!4635 = !DILocation(line: 0, scope: !4565)
!4636 = !DILocation(line: 112, column: 1, scope: !4565)
!4637 = distinct !DISubprogram(name: "rpl_fflush", scope: !4638, file: !4638, line: 129, type: !4639, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !893, retainedNodes: !4675)
!4638 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!73, !4641}
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3788, line: 7, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3790, line: 49, size: 1728, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4643, file: !3790, line: 51, baseType: !73, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4643, file: !3790, line: 54, baseType: !26, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4643, file: !3790, line: 55, baseType: !26, size: 64, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4643, file: !3790, line: 56, baseType: !26, size: 64, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4643, file: !3790, line: 57, baseType: !26, size: 64, offset: 256)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4643, file: !3790, line: 58, baseType: !26, size: 64, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4643, file: !3790, line: 59, baseType: !26, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4643, file: !3790, line: 60, baseType: !26, size: 64, offset: 448)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4643, file: !3790, line: 61, baseType: !26, size: 64, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4643, file: !3790, line: 64, baseType: !26, size: 64, offset: 576)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4643, file: !3790, line: 65, baseType: !26, size: 64, offset: 640)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4643, file: !3790, line: 66, baseType: !26, size: 64, offset: 704)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4643, file: !3790, line: 68, baseType: !3805, size: 64, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4643, file: !3790, line: 70, baseType: !4659, size: 64, offset: 832)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4643, file: !3790, line: 72, baseType: !73, size: 32, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4643, file: !3790, line: 73, baseType: !73, size: 32, offset: 928)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4643, file: !3790, line: 74, baseType: !174, size: 64, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4643, file: !3790, line: 77, baseType: !347, size: 16, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4643, file: !3790, line: 78, baseType: !3814, size: 8, offset: 1040)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4643, file: !3790, line: 79, baseType: !3816, size: 8, offset: 1048)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4643, file: !3790, line: 81, baseType: !3820, size: 64, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4643, file: !3790, line: 89, baseType: !3823, size: 64, offset: 1152)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4643, file: !3790, line: 91, baseType: !3825, size: 64, offset: 1216)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4643, file: !3790, line: 92, baseType: !3828, size: 64, offset: 1280)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4643, file: !3790, line: 93, baseType: !4659, size: 64, offset: 1344)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4643, file: !3790, line: 94, baseType: !28, size: 64, offset: 1408)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4643, file: !3790, line: 95, baseType: !215, size: 64, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4643, file: !3790, line: 96, baseType: !73, size: 32, offset: 1536)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4643, file: !3790, line: 98, baseType: !148, size: 160, offset: 1568)
!4675 = !{!4676}
!4676 = !DILocalVariable(name: "stream", arg: 1, scope: !4637, file: !4638, line: 129, type: !4641)
!4677 = !DILocation(line: 129, column: 19, scope: !4637)
!4678 = !DILocation(line: 150, column: 14, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4637, file: !4638, line: 150, column: 7)
!4680 = !DILocation(line: 150, column: 22, scope: !4679)
!4681 = !DILocation(line: 150, column: 27, scope: !4679)
!4682 = !DILocation(line: 150, column: 7, scope: !4637)
!4683 = !DILocation(line: 151, column: 12, scope: !4679)
!4684 = !DILocation(line: 151, column: 5, scope: !4679)
!4685 = !DILocalVariable(name: "fp", arg: 1, scope: !4686, file: !4638, line: 41, type: !4641)
!4686 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4638, file: !4638, line: 41, type: !4687, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !893, retainedNodes: !4689)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !4641}
!4689 = !{!4685}
!4690 = !DILocation(line: 41, column: 48, scope: !4686, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 156, column: 3, scope: !4637)
!4692 = !DILocation(line: 43, column: 11, scope: !4693, inlinedAt: !4691)
!4693 = distinct !DILexicalBlock(scope: !4686, file: !4638, line: 43, column: 7)
!4694 = !DILocation(line: 43, column: 18, scope: !4693, inlinedAt: !4691)
!4695 = !DILocation(line: 43, column: 7, scope: !4686, inlinedAt: !4691)
!4696 = !DILocation(line: 45, column: 5, scope: !4693, inlinedAt: !4691)
!4697 = !DILocation(line: 158, column: 10, scope: !4637)
!4698 = !DILocation(line: 158, column: 3, scope: !4637)
!4699 = !DILocation(line: 0, scope: !4637)
!4700 = !DILocation(line: 232, column: 1, scope: !4637)
!4701 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4702, file: !4702, line: 28, type: !4703, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !895, retainedNodes: !4740)
!4702 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!73, !4705, !4739, !73}
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3788, line: 7, baseType: !4707)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3790, line: 49, size: 1728, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4707, file: !3790, line: 51, baseType: !73, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4707, file: !3790, line: 54, baseType: !26, size: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4707, file: !3790, line: 55, baseType: !26, size: 64, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4707, file: !3790, line: 56, baseType: !26, size: 64, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4707, file: !3790, line: 57, baseType: !26, size: 64, offset: 256)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4707, file: !3790, line: 58, baseType: !26, size: 64, offset: 320)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4707, file: !3790, line: 59, baseType: !26, size: 64, offset: 384)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4707, file: !3790, line: 60, baseType: !26, size: 64, offset: 448)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4707, file: !3790, line: 61, baseType: !26, size: 64, offset: 512)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4707, file: !3790, line: 64, baseType: !26, size: 64, offset: 576)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4707, file: !3790, line: 65, baseType: !26, size: 64, offset: 640)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4707, file: !3790, line: 66, baseType: !26, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4707, file: !3790, line: 68, baseType: !3805, size: 64, offset: 768)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4707, file: !3790, line: 70, baseType: !4723, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4707, file: !3790, line: 72, baseType: !73, size: 32, offset: 896)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4707, file: !3790, line: 73, baseType: !73, size: 32, offset: 928)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4707, file: !3790, line: 74, baseType: !174, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4707, file: !3790, line: 77, baseType: !347, size: 16, offset: 1024)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4707, file: !3790, line: 78, baseType: !3814, size: 8, offset: 1040)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4707, file: !3790, line: 79, baseType: !3816, size: 8, offset: 1048)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4707, file: !3790, line: 81, baseType: !3820, size: 64, offset: 1088)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4707, file: !3790, line: 89, baseType: !3823, size: 64, offset: 1152)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4707, file: !3790, line: 91, baseType: !3825, size: 64, offset: 1216)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4707, file: !3790, line: 92, baseType: !3828, size: 64, offset: 1280)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4707, file: !3790, line: 93, baseType: !4723, size: 64, offset: 1344)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4707, file: !3790, line: 94, baseType: !28, size: 64, offset: 1408)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4707, file: !3790, line: 95, baseType: !215, size: 64, offset: 1472)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4707, file: !3790, line: 96, baseType: !73, size: 32, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4707, file: !3790, line: 98, baseType: !148, size: 160, offset: 1568)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3954, line: 63, baseType: !174)
!4740 = !{!4741, !4742, !4743, !4744}
!4741 = !DILocalVariable(name: "fp", arg: 1, scope: !4701, file: !4702, line: 28, type: !4705)
!4742 = !DILocalVariable(name: "offset", arg: 2, scope: !4701, file: !4702, line: 28, type: !4739)
!4743 = !DILocalVariable(name: "whence", arg: 3, scope: !4701, file: !4702, line: 28, type: !73)
!4744 = !DILocalVariable(name: "pos", scope: !4745, file: !4702, line: 117, type: !4739)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !4702, line: 113, column: 5)
!4746 = distinct !DILexicalBlock(scope: !4701, file: !4702, line: 52, column: 7)
!4747 = !DILocation(line: 28, column: 15, scope: !4701)
!4748 = !DILocation(line: 28, column: 25, scope: !4701)
!4749 = !DILocation(line: 28, column: 37, scope: !4701)
!4750 = !DILocation(line: 52, column: 11, scope: !4746)
!4751 = !{!4531, !935, i64 16}
!4752 = !DILocation(line: 52, column: 31, scope: !4746)
!4753 = !{!4531, !935, i64 8}
!4754 = !DILocation(line: 52, column: 24, scope: !4746)
!4755 = !DILocation(line: 53, column: 7, scope: !4746)
!4756 = !DILocation(line: 53, column: 14, scope: !4746)
!4757 = !{!4531, !935, i64 40}
!4758 = !DILocation(line: 53, column: 35, scope: !4746)
!4759 = !{!4531, !935, i64 32}
!4760 = !DILocation(line: 53, column: 28, scope: !4746)
!4761 = !DILocation(line: 54, column: 7, scope: !4746)
!4762 = !DILocation(line: 54, column: 14, scope: !4746)
!4763 = !{!4531, !935, i64 72}
!4764 = !DILocation(line: 54, column: 28, scope: !4746)
!4765 = !DILocation(line: 52, column: 7, scope: !4701)
!4766 = !DILocation(line: 117, column: 26, scope: !4745)
!4767 = !DILocation(line: 117, column: 19, scope: !4745)
!4768 = !DILocation(line: 117, column: 13, scope: !4745)
!4769 = !DILocation(line: 118, column: 15, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4745, file: !4702, line: 118, column: 11)
!4771 = !DILocation(line: 118, column: 11, scope: !4745)
!4772 = !DILocation(line: 129, column: 11, scope: !4745)
!4773 = !DILocation(line: 129, column: 18, scope: !4745)
!4774 = !DILocation(line: 130, column: 11, scope: !4745)
!4775 = !DILocation(line: 130, column: 19, scope: !4745)
!4776 = !{!4531, !1124, i64 144}
!4777 = !DILocation(line: 161, column: 7, scope: !4745)
!4778 = !DILocation(line: 163, column: 10, scope: !4701)
!4779 = !DILocation(line: 163, column: 3, scope: !4701)
!4780 = !DILocation(line: 0, scope: !4701)
!4781 = !DILocation(line: 164, column: 1, scope: !4701)
