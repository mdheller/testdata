; ModuleID = 'coreutils-8.30/src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.9 }
%union.sigval = type { i8* }
%union.anon.9 = type { %struct.anon.10, [32 x i8] }
%struct.anon.10 = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Usage: %s [OPTION] DURATION COMMAND [ARG]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [732 x i8] c"      --preserve-status\0A                 exit with the same status as COMMAND, even when the\0A                   command times out\0A      --foreground\0A                 when not running timeout directly from a shell prompt,\0A                   allow COMMAND to read from the TTY and get TTY signals;\0A                   in this mode, children of COMMAND will not be timed out\0A  -k, --kill-after=DURATION\0A                 also send a KILL signal if COMMAND is still running\0A                   this long after the initial signal was sent\0A  -s, --signal=SIGNAL\0A                 specify the signal to be sent on timeout;\0A                   SIGNAL may be a name like 'HUP' or a number;\0A                   see 'kill -l' for a list of signals\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"  -v, --verbose  diagnose to stderr any signal sent upon timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0AA duration of 0 disables the associated timeout.\0A\00", align 1
@.str.8 = private unnamed_addr constant [415 x i8] c"\0AIf the command times out, and --preserve-status is not set, then exit with\0Astatus 124.  Otherwise, exit with the status of COMMAND.  If no signal\0Ais specified, send the TERM signal upon timeout.  The TERM signal kills\0Aany process that does not block or catch that signal.  It may be necessary\0Ato use the KILL (9) signal, since this signal cannot be caught, in which\0Acase the exit status is 128+9 rather than 124.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"+k:s:v\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !33
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !47
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !61
@foreground = internal unnamed_addr global i1 false, align 1, !dbg !62
@preserve_status = internal unnamed_addr global i1 false, align 1, !dbg !63
@.str.15 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@command = internal unnamed_addr global i8* null, align 8, !dbg !43
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !27
@.str.16 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4, !dbg !64
@.str.50 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"sending signal %s to command %s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.52 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !65
@.str.55 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !71
@.str.58 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !102
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !107
@.str.61 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.62 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !110
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !117
@.str.72 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 16, !dbg !124
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !168
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !175
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !185
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.88 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.89 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.90 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !192
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !199
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !187
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !201
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.99 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.112 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.114 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.115 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.116 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.117 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !207
@.str.1.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !216
@.str.140 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.144 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.154 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !684 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !687, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %0, metadata !686, metadata !DIExpression()), !dbg !709
  %3 = icmp eq i32 %0, 0, !dbg !710
  br i1 %3, label %9, label %4, !dbg !711

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !712, !tbaa !714
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !712
  %7 = load i8*, i8** @program_name, align 8, !dbg !712, !tbaa !714
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !712
  br label %72, !dbg !712

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !718
  %11 = load i8*, i8** @program_name, align 8, !dbg !718, !tbaa !714
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !718
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !719
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !714
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !719
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !720
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !714
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !720
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !725
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !714
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !725
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !726
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !714
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !726
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !727
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !714
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !727
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !728
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !714
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !728
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !729
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !714
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !729
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !730
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !714
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !730
  %37 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %37) #12, !dbg !731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %37, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !705
  %38 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !732
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !694, metadata !DIExpression()) #12, !dbg !733
  br label %39, !dbg !734

; <label>:39:                                     ; preds = %44, %9
  %40 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %41 = phi %struct.infomap* [ %45, %44 ], [ %38, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !694, metadata !DIExpression()) #12, !dbg !733
  %42 = tail call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %40) #11, !dbg !734
  %43 = icmp eq i32 %42, 0, !dbg !734
  br i1 %43, label %49, label %44, !dbg !735

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 1, !dbg !736
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !694, metadata !DIExpression()) #12, !dbg !733
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 0, !dbg !737
  %47 = load i8*, i8** %46, align 8, !dbg !737, !tbaa !738
  %48 = icmp eq i8* %47, null, !dbg !740
  br i1 %48, label %49, label %39, !dbg !741, !llvm.loop !742

; <label>:49:                                     ; preds = %44, %39
  %50 = phi %struct.infomap* [ %45, %44 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !694, metadata !DIExpression()) #12, !dbg !733
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !694, metadata !DIExpression()) #12, !dbg !733
  %51 = getelementptr inbounds %struct.infomap, %struct.infomap* %50, i64 0, i32 1, !dbg !745
  %52 = load i8*, i8** %51, align 8, !dbg !745, !tbaa !747
  %53 = icmp eq i8* %52, null, !dbg !748
  %54 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %52, !dbg !749
  call void @llvm.dbg.value(metadata i8* %54, metadata !693, metadata !DIExpression()) #12, !dbg !750
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !751
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !751
  %57 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !752
  call void @llvm.dbg.value(metadata i8* %57, metadata !701, metadata !DIExpression()) #12, !dbg !753
  %58 = icmp eq i8* %57, null, !dbg !754
  br i1 %58, label %65, label %59, !dbg !756

; <label>:59:                                     ; preds = %49
  %60 = tail call i32 @strncmp(i8* nonnull %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #11, !dbg !757
  %61 = icmp eq i32 %60, 0, !dbg !757
  br i1 %61, label %65, label %62, !dbg !758

; <label>:62:                                     ; preds = %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !759
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !759
  br label %65, !dbg !761

; <label>:65:                                     ; preds = %49, %59, %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !762
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !762
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !763
  %69 = icmp eq i8* %54, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), !dbg !763
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !763
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %54, i8* %70) #12, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %37) #12, !dbg !764
  br label %72

; <label>:72:                                     ; preds = %65, %4
  tail call void @exit(i32 %0) #16, !dbg !765
  unreachable, !dbg !765
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !766 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !771, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i8** %1, metadata !772, metadata !DIExpression()), !dbg !804
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !805
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %9) #12, !dbg !805
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !774, metadata !DIExpression()), !dbg !806
  %10 = load i8*, i8** %1, align 8, !dbg !807, !tbaa !714
  tail call void @set_program_name(i8* %10) #12, !dbg !808
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !809
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !810
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !811
  call void @llvm.dbg.value(metadata i32 125, metadata !812, metadata !DIExpression()), !dbg !815
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !817, !tbaa !819
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !821
  br label %15, !dbg !822

; <label>:15:                                     ; preds = %24, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !823
  call void @llvm.dbg.value(metadata i32 %16, metadata !778, metadata !DIExpression()), !dbg !824
  switch i32 %16, label %33 [
    i32 -1, label %34
    i32 107, label %17
    i32 115, label %20
    i32 118, label %26
    i32 128, label %27
    i32 129, label %28
    i32 -130, label %29
    i32 -131, label %30
  ], !dbg !822

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** @optarg, align 8, !dbg !825, !tbaa !714
  %19 = call fastcc double @parse_duration(i8* %18), !dbg !828
  store double %19, double* @kill_after, align 8, !dbg !829, !tbaa !830
  br label %24, !dbg !832

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !833, !tbaa !714
  %22 = call i32 @operand2sig(i8* %21, i8* nonnull %9) #12, !dbg !834
  store i32 %22, i32* @term_signal, align 4, !dbg !835, !tbaa !819
  %23 = icmp eq i32 %22, -1, !dbg !836
  br i1 %23, label %25, label %24, !dbg !838

; <label>:24:                                     ; preds = %20, %28, %27, %26, %17
  br label %15, !dbg !823, !llvm.loop !839

; <label>:25:                                     ; preds = %20
  call void @usage(i32 125) #17, !dbg !841
  unreachable, !dbg !841

; <label>:26:                                     ; preds = %15
  store i1 true, i1* @verbose, align 1
  br label %24, !dbg !842

; <label>:27:                                     ; preds = %15
  store i1 true, i1* @foreground, align 1
  br label %24, !dbg !843

; <label>:28:                                     ; preds = %15
  store i1 true, i1* @preserve_status, align 1
  br label %24, !dbg !844

; <label>:29:                                     ; preds = %15
  call void @usage(i32 0) #17, !dbg !845
  unreachable, !dbg !845

; <label>:30:                                     ; preds = %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !714
  %32 = load i8*, i8** @Version, align 8, !dbg !846, !tbaa !714
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* null) #12, !dbg !846
  call void @exit(i32 0) #16, !dbg !846
  unreachable, !dbg !846

; <label>:33:                                     ; preds = %15
  call void @usage(i32 125) #17, !dbg !847
  unreachable, !dbg !847

; <label>:34:                                     ; preds = %15
  %35 = load i32, i32* @optind, align 4, !dbg !848, !tbaa !819
  %36 = sub nsw i32 %0, %35, !dbg !850
  %37 = icmp slt i32 %36, 2, !dbg !851
  br i1 %37, label %38, label %39, !dbg !852

; <label>:38:                                     ; preds = %34
  call void @usage(i32 125) #17, !dbg !853
  unreachable, !dbg !853

; <label>:39:                                     ; preds = %34
  %40 = add nsw i32 %35, 1, !dbg !854
  store i32 %40, i32* @optind, align 4, !dbg !854, !tbaa !819
  %41 = sext i32 %35 to i64, !dbg !855
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !855
  %43 = load i8*, i8** %42, align 8, !dbg !855, !tbaa !714
  %44 = call fastcc double @parse_duration(i8* %43), !dbg !856
  call void @llvm.dbg.value(metadata double %44, metadata !773, metadata !DIExpression()), !dbg !857
  %45 = load i32, i32* @optind, align 4, !dbg !858, !tbaa !819
  %46 = sext i32 %45 to i64, !dbg !859
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46, !dbg !859
  call void @llvm.dbg.value(metadata i8** %47, metadata !772, metadata !DIExpression()), !dbg !804
  %48 = bitcast i8** %47 to i64*, !dbg !860
  %49 = load i64, i64* %48, align 8, !dbg !860, !tbaa !714
  store i64 %49, i64* bitcast (i8** @command to i64*), align 8, !dbg !861, !tbaa !714
  %50 = load i1, i1* @foreground, align 1
  br i1 %50, label %53, label %51, !dbg !862

; <label>:51:                                     ; preds = %39
  %52 = call i32 @setpgid(i32 0, i32 0) #12, !dbg !863
  br label %53, !dbg !863

; <label>:53:                                     ; preds = %51, %39
  %54 = load i32, i32* @term_signal, align 4, !dbg !865, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %54, metadata !866, metadata !DIExpression()) #12, !dbg !961
  %55 = bitcast %struct.sigaction* %5 to i8*, !dbg !963
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %55) #12, !dbg !963
  %56 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 1, !dbg !964
  %57 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %56) #12, !dbg !965
  %58 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 0, i32 0, !dbg !966
  store void (i32)* @cleanup, void (i32)** %58, align 8, !dbg !967, !tbaa !968
  %59 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 2, !dbg !969
  store i32 268435456, i32* %59, align 8, !dbg !970, !tbaa !971
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %60 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !975
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %61 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !976
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %62 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !977
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %63 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !978
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %64 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !979
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, metadata !869, metadata !DIExpression(DW_OP_deref)) #12, !dbg !974
  %65 = call i32 @sigaction(i32 %54, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %55) #12, !dbg !981
  %66 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !982
  %67 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !983
  %68 = bitcast %struct.sigaction* %4 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %68) #12, !dbg !984
  %69 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !989
  %70 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %69) #12, !dbg !990
  %71 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !991
  store void (i32)* @chld, void (i32)** %71, align 8, !dbg !992, !tbaa !968
  %72 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !993
  store i32 268435456, i32* %72, align 8, !dbg !994, !tbaa !971
  call void @llvm.dbg.value(metadata %struct.sigaction* %4, metadata !987, metadata !DIExpression(DW_OP_deref)) #12, !dbg !995
  %73 = call i32 @sigaction(i32 17, %struct.sigaction* nonnull %4, %struct.sigaction* null) #12, !dbg !996
  call fastcc void @unblock_signal(i32 17) #12, !dbg !997
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %68) #12, !dbg !998
  %74 = call i32 @fork() #12, !dbg !999
  store i32 %74, i32* @monitored_pid, align 4, !dbg !1000, !tbaa !819
  switch i32 %74, label %91 [
    i32 -1, label %75
    i32 0, label %79
  ], !dbg !1001

; <label>:75:                                     ; preds = %53
  %76 = tail call i32* @__errno_location() #18, !dbg !1002
  %77 = load i32, i32* %76, align 4, !dbg !1002, !tbaa !819
  %78 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !1004
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %77, i8* %78) #12, !dbg !1005
  br label %167, !dbg !1006

; <label>:79:                                     ; preds = %53
  %80 = call void (i32)* @signal(i32 21, void (i32)* null) #12, !dbg !1007
  %81 = call void (i32)* @signal(i32 22, void (i32)* null) #12, !dbg !1008
  %82 = load i8*, i8** %47, align 8, !dbg !1009, !tbaa !714
  %83 = call i32 @execvp(i8* %82, i8** %47) #12, !dbg !1010
  %84 = tail call i32* @__errno_location() #18, !dbg !1011
  %85 = load i32, i32* %84, align 4, !dbg !1011, !tbaa !819
  %86 = icmp eq i32 %85, 2, !dbg !1012
  %87 = select i1 %86, i32 127, i32 126, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %87, metadata !779, metadata !DIExpression()), !dbg !1013
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !1014
  %89 = load i8*, i8** @command, align 8, !dbg !1015, !tbaa !714
  %90 = call i8* @quote(i8* %89) #12, !dbg !1016
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %85, i8* %88, i8* %90) #12, !dbg !1017
  br label %167

; <label>:91:                                     ; preds = %53
  %92 = bitcast i32* %7 to i8*, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92) #12, !dbg !1018
  call fastcc void @unblock_signal(i32 14), !dbg !1019
  call fastcc void @settimeout(double %44, i1 zeroext true), !dbg !1020
  %93 = bitcast %struct.__sigset_t* %8 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %93) #12, !dbg !1021
  %94 = load i32, i32* @term_signal, align 4, !dbg !1022, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, metadata !786, metadata !DIExpression(DW_OP_deref)), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %94, metadata !1024, metadata !DIExpression()) #12, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, metadata !1030, metadata !DIExpression()) #12, !dbg !1034
  %95 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1035
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %95) #12, !dbg !1035
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %96 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #12, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %97 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 14) #12, !dbg !1038
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %98 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 2) #12, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %99 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 3) #12, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %100 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 1) #12, !dbg !1041
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %101 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 15) #12, !dbg !1042
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %102 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %94) #12, !dbg !1043
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %103 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 17) #12, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, metadata !1031, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1036
  %104 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* nonnull %8) #12, !dbg !1045
  %105 = icmp eq i32 %104, 0, !dbg !1047
  br i1 %105, label %110, label %106, !dbg !1048

; <label>:106:                                    ; preds = %91
  %107 = tail call i32* @__errno_location() #18, !dbg !1049
  %108 = load i32, i32* %107, align 4, !dbg !1049, !tbaa !819
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !1050
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %108, i8* %109) #12, !dbg !1051
  br label %110, !dbg !1051

; <label>:110:                                    ; preds = %91, %106
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %95) #12, !dbg !1052
  %111 = load i32, i32* @monitored_pid, align 4, !dbg !1053, !tbaa !819
  call void @llvm.dbg.value(metadata i32* %7, metadata !785, metadata !DIExpression(DW_OP_deref)), !dbg !1054
  %112 = call i32 @waitpid(i32 %111, i32* nonnull %7, i32 1) #12, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %112, metadata !783, metadata !DIExpression()), !dbg !1056
  %113 = icmp eq i32 %112, 0, !dbg !1057
  br i1 %113, label %114, label %119, !dbg !1058

; <label>:114:                                    ; preds = %110, %114
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, metadata !786, metadata !DIExpression(DW_OP_deref)), !dbg !1023
  %115 = call i32 @sigsuspend(%struct.__sigset_t* nonnull %8) #12, !dbg !1059
  %116 = load i32, i32* @monitored_pid, align 4, !dbg !1053, !tbaa !819
  call void @llvm.dbg.value(metadata i32* %7, metadata !785, metadata !DIExpression(DW_OP_deref)), !dbg !1054
  %117 = call i32 @waitpid(i32 %116, i32* nonnull %7, i32 1) #12, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %117, metadata !783, metadata !DIExpression()), !dbg !1056
  %118 = icmp eq i32 %117, 0, !dbg !1057
  br i1 %118, label %114, label %119, !dbg !1058, !llvm.loop !1060

; <label>:119:                                    ; preds = %114, %110
  %120 = phi i32 [ %112, %110 ], [ %117, %114 ], !dbg !1055
  %121 = icmp slt i32 %120, 0, !dbg !1062
  br i1 %121, label %122, label %126, !dbg !1063

; <label>:122:                                    ; preds = %119
  %123 = tail call i32* @__errno_location() #18, !dbg !1064
  %124 = load i32, i32* %123, align 4, !dbg !1064, !tbaa !819
  %125 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !1066
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %124, i8* %125) #12, !dbg !1067
  call void @llvm.dbg.value(metadata i32 125, metadata !785, metadata !DIExpression()), !dbg !1054
  store i32 125, i32* %7, align 4, !dbg !1068, !tbaa !819
  br label %159, !dbg !1069

; <label>:126:                                    ; preds = %119
  %127 = load i32, i32* %7, align 4, !dbg !1070, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %127, metadata !785, metadata !DIExpression()), !dbg !1054
  %128 = and i32 %127, 127, !dbg !1070
  %129 = icmp eq i32 %128, 0, !dbg !1070
  br i1 %129, label %130, label %133, !dbg !1071

; <label>:130:                                    ; preds = %126
  %131 = lshr i32 %127, 8, !dbg !1072
  %132 = and i32 %131, 255, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %132, metadata !785, metadata !DIExpression()), !dbg !1054
  store i32 %132, i32* %7, align 4, !dbg !1073, !tbaa !819
  br label %159, !dbg !1074

; <label>:133:                                    ; preds = %126
  %134 = shl nuw nsw i32 %128, 24, !dbg !1075
  %135 = add nuw i32 %134, 16777216, !dbg !1075
  %136 = icmp sgt i32 %135, 33554431, !dbg !1075
  br i1 %136, label %137, label %156, !dbg !1076

; <label>:137:                                    ; preds = %133
  call void @llvm.dbg.value(metadata i32 %128, metadata !797, metadata !DIExpression()), !dbg !1077
  %138 = trunc i32 %127 to i8, !dbg !1078
  %139 = icmp slt i8 %138, 0, !dbg !1078
  br i1 %139, label %140, label %142, !dbg !1080

; <label>:140:                                    ; preds = %137
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !1081
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %141) #12, !dbg !1082
  br label %142, !dbg !1082

; <label>:142:                                    ; preds = %140, %137
  %143 = load i1, i1* @timed_out, align 4
  br i1 %143, label %154, label %144, !dbg !1083

; <label>:144:                                    ; preds = %142
  %145 = call i32 (i32, ...) @prctl(i32 4, i32 0) #12, !dbg !1085
  %146 = icmp eq i32 %145, 0, !dbg !1091
  br i1 %146, label %151, label %147, !dbg !1092

; <label>:147:                                    ; preds = %144
  %148 = tail call i32* @__errno_location() #18, !dbg !1093
  %149 = load i32, i32* %148, align 4, !dbg !1093, !tbaa !819
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #12, !dbg !1094
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %149, i8* %150) #12, !dbg !1095
  br label %154, !dbg !1096

; <label>:151:                                    ; preds = %144
  %152 = call void (i32)* @signal(i32 %128, void (i32)* null) #12, !dbg !1097
  call fastcc void @unblock_signal(i32 %128), !dbg !1099
  %153 = call i32 @raise(i32 %128) #12, !dbg !1100
  br label %154, !dbg !1101

; <label>:154:                                    ; preds = %147, %151, %142
  %155 = or i32 %128, 128, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %155, metadata !785, metadata !DIExpression()), !dbg !1054
  store i32 %155, i32* %7, align 4, !dbg !1103, !tbaa !819
  br label %159, !dbg !1104

; <label>:156:                                    ; preds = %133
  %157 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !1105
  %158 = load i32, i32* %7, align 4, !dbg !1107, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %158, metadata !785, metadata !DIExpression()), !dbg !1054
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %157, i32 %158) #12, !dbg !1108
  call void @llvm.dbg.value(metadata i32 1, metadata !785, metadata !DIExpression()), !dbg !1054
  store i32 1, i32* %7, align 4, !dbg !1109, !tbaa !819
  br label %159

; <label>:159:                                    ; preds = %130, %156, %154, %122
  %160 = phi i32 [ %132, %130 ], [ 1, %156 ], [ %155, %154 ], [ 125, %122 ]
  %161 = load i1, i1* @timed_out, align 4
  br i1 %161, label %162, label %165, !dbg !1110

; <label>:162:                                    ; preds = %159
  %163 = load i1, i1* @preserve_status, align 1
  br i1 %163, label %165, label %164, !dbg !1112

; <label>:164:                                    ; preds = %162
  call void @llvm.dbg.value(metadata i32 124, metadata !785, metadata !DIExpression()), !dbg !1054
  store i32 124, i32* %7, align 4, !dbg !1113, !tbaa !819
  br label %165, !dbg !1114

; <label>:165:                                    ; preds = %164, %162, %159
  %166 = phi i32 [ 124, %164 ], [ %160, %162 ], [ %160, %159 ], !dbg !1115
  call void @llvm.dbg.value(metadata i32 %166, metadata !785, metadata !DIExpression()), !dbg !1054
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %93) #12, !dbg !1116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92) #12, !dbg !1116
  br label %167

; <label>:167:                                    ; preds = %165, %79, %75
  %168 = phi i32 [ 125, %75 ], [ %87, %79 ], [ %166, %165 ], !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %9) #12, !dbg !1118
  ret i32 %168, !dbg !1118
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
define internal fastcc double @parse_duration(i8*) unnamed_addr #7 !dbg !1119 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1123, metadata !DIExpression()), !dbg !1126
  %4 = bitcast double* %2 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12, !dbg !1127
  %5 = bitcast i8** %3 to i8*, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1128
  call void @llvm.dbg.value(metadata double* %2, metadata !1124, metadata !DIExpression(DW_OP_deref)), !dbg !1129
  call void @llvm.dbg.value(metadata i8** %3, metadata !1125, metadata !DIExpression(DW_OP_deref)), !dbg !1130
  %6 = call zeroext i1 @xstrtod(i8* %0, i8** nonnull %3, double* nonnull %2, double (i8*, i8**)* nonnull @c_strtod) #12, !dbg !1131
  br i1 %6, label %14, label %7, !dbg !1133

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno_location() #18, !dbg !1134
  %9 = load i32, i32* %8, align 4, !dbg !1134, !tbaa !819
  %10 = icmp eq i32 %9, 34, !dbg !1135
  %11 = load double, double* %2, align 8, !dbg !1136
  call void @llvm.dbg.value(metadata double %11, metadata !1124, metadata !DIExpression()), !dbg !1129
  %12 = fcmp oge double %11, 0.000000e+00, !dbg !1137
  %13 = and i1 %10, %12, !dbg !1138
  br i1 %13, label %17, label %31, !dbg !1138

; <label>:14:                                     ; preds = %1
  %15 = load double, double* %2, align 8, !dbg !1136, !tbaa !830
  call void @llvm.dbg.value(metadata double %15, metadata !1124, metadata !DIExpression()), !dbg !1129
  %16 = fcmp ult double %15, 0.000000e+00, !dbg !1137
  br i1 %16, label %31, label %17, !dbg !1139

; <label>:17:                                     ; preds = %14, %7
  %18 = phi double [ %15, %14 ], [ %11, %7 ]
  %19 = load i8*, i8** %3, align 8, !dbg !1140, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %19, metadata !1125, metadata !DIExpression()), !dbg !1130
  %20 = load i8, i8* %19, align 1, !dbg !1141, !tbaa !968
  %21 = icmp eq i8 %20, 0, !dbg !1141
  br i1 %21, label %26, label %22, !dbg !1142

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1143
  %24 = load i8, i8* %23, align 1, !dbg !1144, !tbaa !968
  %25 = icmp eq i8 %24, 0, !dbg !1144
  br i1 %25, label %26, label %31, !dbg !1145

; <label>:26:                                     ; preds = %22, %17
  call void @llvm.dbg.value(metadata i8* %19, metadata !1125, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata double* %2, metadata !1124, metadata !DIExpression(DW_OP_deref)), !dbg !1129
  call void @llvm.dbg.value(metadata double* %2, metadata !1146, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8 %20, metadata !1152, metadata !DIExpression()), !dbg !1156
  %27 = sext i8 %20 to i32, !dbg !1157
  switch i32 %27, label %31 [
    i32 0, label %34
    i32 115, label %34
    i32 109, label %28
    i32 104, label %29
    i32 100, label %30
  ], !dbg !1158

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 60, metadata !1153, metadata !DIExpression()), !dbg !1159
  br label %34, !dbg !1160

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 3600, metadata !1153, metadata !DIExpression()), !dbg !1159
  br label %34, !dbg !1162

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 86400, metadata !1153, metadata !DIExpression()), !dbg !1159
  br label %34, !dbg !1163

; <label>:31:                                     ; preds = %26, %14, %22, %7
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !1164
  %33 = call i8* @quote(i8* %0) #12, !dbg !1166
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32, i8* %33) #12, !dbg !1167
  call void @usage(i32 125) #17, !dbg !1168
  unreachable, !dbg !1168

; <label>:34:                                     ; preds = %26, %26, %28, %29, %30
  %35 = phi double [ 8.640000e+04, %30 ], [ 3.600000e+03, %29 ], [ 6.000000e+01, %28 ], [ 1.000000e+00, %26 ], [ 1.000000e+00, %26 ]
  %36 = fmul double %35, %18, !dbg !1169
  call void @llvm.dbg.value(metadata double %36, metadata !1124, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12, !dbg !1170
  ret double %36, !dbg !1171
}

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cleanup(i32) #7 !dbg !1172 {
  %2 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1174, metadata !DIExpression()), !dbg !1183
  %3 = icmp eq i32 %0, 14, !dbg !1184
  br i1 %3, label %4, label %6, !dbg !1186

; <label>:4:                                      ; preds = %1
  store i1 true, i1* @timed_out, align 4
  %5 = load i32, i32* @term_signal, align 4, !dbg !1187, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %5, metadata !1174, metadata !DIExpression()), !dbg !1183
  br label %6, !dbg !1189

; <label>:6:                                      ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1174, metadata !DIExpression()), !dbg !1183
  %8 = load i32, i32* @monitored_pid, align 4, !dbg !1190, !tbaa !819
  %9 = icmp eq i32 %8, 0, !dbg !1190
  br i1 %9, label %48, label %10, !dbg !1191

; <label>:10:                                     ; preds = %6
  %11 = load double, double* @kill_after, align 8, !dbg !1192, !tbaa !830
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1192
  br i1 %12, label %13, label %16, !dbg !1193

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #18, !dbg !1194
  %15 = load i32, i32* %14, align 4, !dbg !1194, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %15, metadata !1175, metadata !DIExpression()), !dbg !1195
  store i32 9, i32* @term_signal, align 4, !dbg !1196, !tbaa !819
  tail call fastcc void @settimeout(double %11, i1 zeroext false), !dbg !1197
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1198, !tbaa !830
  store i32 %15, i32* %14, align 4, !dbg !1199, !tbaa !819
  br label %16, !dbg !1200

; <label>:16:                                     ; preds = %13, %10
  %17 = load i1, i1* @verbose, align 1
  br i1 %17, label %18, label %28, !dbg !1201

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %19) #12, !dbg !1202
  call void @llvm.dbg.declare(metadata [19 x i8]* %2, metadata !1180, metadata !DIExpression()), !dbg !1203
  %20 = call i32 @sig2str(i32 %7, i8* nonnull %19) #12, !dbg !1204
  %21 = icmp eq i32 %20, 0, !dbg !1206
  br i1 %21, label %24, label %22, !dbg !1207

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %19, i64 19, i32 1, i64 19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %7) #12, !dbg !1208
  br label %24, !dbg !1208

; <label>:24:                                     ; preds = %18, %22
  %25 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !1209
  %26 = load i8*, i8** @command, align 8, !dbg !1210, !tbaa !714
  %27 = call i8* @quote(i8* %26) #12, !dbg !1211
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i8* nonnull %19, i8* %27) #12, !dbg !1212
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %19) #12, !dbg !1213
  br label %28, !dbg !1214

; <label>:28:                                     ; preds = %24, %16
  %29 = load i32, i32* @monitored_pid, align 4, !dbg !1215, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %29, metadata !1216, metadata !DIExpression()) #12, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %7, metadata !1221, metadata !DIExpression()) #12, !dbg !1224
  %30 = icmp eq i32 %29, 0, !dbg !1225
  br i1 %30, label %31, label %33, !dbg !1227

; <label>:31:                                     ; preds = %28
  %32 = call void (i32)* @signal(i32 %7, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1228
  br label %33, !dbg !1228

; <label>:33:                                     ; preds = %28, %31
  %34 = call i32 @kill(i32 %29, i32 %7) #12, !dbg !1229
  %35 = load i1, i1* @foreground, align 1
  br i1 %35, label %50, label %36, !dbg !1230

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 0, metadata !1216, metadata !DIExpression()) #12, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %7, metadata !1221, metadata !DIExpression()) #12, !dbg !1235
  %37 = call void (i32)* @signal(i32 %7, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1236
  %38 = call i32 @kill(i32 0, i32 %7) #12, !dbg !1237
  switch i32 %7, label %39 [
    i32 18, label %50
    i32 9, label %50
  ], !dbg !1238

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @monitored_pid, align 4, !dbg !1240, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %40, metadata !1216, metadata !DIExpression()) #12, !dbg !1242
  call void @llvm.dbg.value(metadata i32 18, metadata !1221, metadata !DIExpression()) #12, !dbg !1244
  %41 = icmp eq i32 %40, 0, !dbg !1245
  br i1 %41, label %42, label %44, !dbg !1246

; <label>:42:                                     ; preds = %39
  %43 = call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1247
  br label %44, !dbg !1247

; <label>:44:                                     ; preds = %39, %42
  %45 = call i32 @kill(i32 %40, i32 18) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i32 0, metadata !1216, metadata !DIExpression()) #12, !dbg !1249
  call void @llvm.dbg.value(metadata i32 18, metadata !1221, metadata !DIExpression()) #12, !dbg !1251
  %46 = call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1252
  %47 = call i32 @kill(i32 0, i32 18) #12, !dbg !1253
  br label %50, !dbg !1254

; <label>:48:                                     ; preds = %6
  %49 = add nsw i32 %7, 128, !dbg !1255
  tail call void @_exit(i32 %49) #16, !dbg !1256
  unreachable, !dbg !1256

; <label>:50:                                     ; preds = %36, %36, %33, %44
  ret void, !dbg !1257
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define internal void @chld(i32) #8 !dbg !1258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @unblock_signal(i32) unnamed_addr #7 !dbg !1263 {
  %2 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1265, metadata !DIExpression()), !dbg !1267
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1268
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #12, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, metadata !1266, metadata !DIExpression(DW_OP_deref)), !dbg !1269
  %4 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %2) #12, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, metadata !1266, metadata !DIExpression(DW_OP_deref)), !dbg !1269
  %5 = call i32 @sigaddset(%struct.__sigset_t* nonnull %2, i32 %0) #12, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, metadata !1266, metadata !DIExpression(DW_OP_deref)), !dbg !1269
  %6 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* nonnull %2, %struct.__sigset_t* null) #12, !dbg !1272
  %7 = icmp eq i32 %6, 0, !dbg !1274
  br i1 %7, label %12, label %8, !dbg !1275

; <label>:8:                                      ; preds = %1
  %9 = tail call i32* @__errno_location() #18, !dbg !1276
  %10 = load i32, i32* %9, align 4, !dbg !1276, !tbaa !819
  %11 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !1277
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11) #12, !dbg !1278
  br label %12, !dbg !1278

; <label>:12:                                     ; preds = %1, %8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #12, !dbg !1279
  ret void, !dbg !1279
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @settimeout(double, i1 zeroext) unnamed_addr #7 !dbg !1280 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1284, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i1 %1, metadata !1285, metadata !DIExpression()), !dbg !1308
  %5 = tail call { i64, i64 } @dtotimespec(double %0) #18, !dbg !1309
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %6, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %7, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #12, !dbg !1311
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1312
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1312
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %10, i8 0, i64 16, i1 false), !dbg !1313
  store i64 %6, i64* %9, align 8, !dbg !1312
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1312
  store i64 %7, i64* %11, align 8, !dbg !1312
  %12 = bitcast i8** %4 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #12, !dbg !1314
  call void @llvm.dbg.value(metadata i8** %4, metadata !1299, metadata !DIExpression(DW_OP_deref)), !dbg !1315
  %13 = call i32 @timer_create(i32 0, %struct.sigevent* null, i8** nonnull %4) #12, !dbg !1316
  %14 = icmp eq i32 %13, 0, !dbg !1318
  br i1 %14, label %15, label %27, !dbg !1319

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1320, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %16, metadata !1299, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata %struct.itimerspec* %3, metadata !1293, metadata !DIExpression(DW_OP_deref)), !dbg !1323
  %17 = call i32 @timer_settime(i8* %16, i32 0, %struct.itimerspec* nonnull %3, %struct.itimerspec* null) #12, !dbg !1324
  %18 = icmp eq i32 %17, 0, !dbg !1325
  br i1 %18, label %45, label %19, !dbg !1326

; <label>:19:                                     ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1327

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !1329
  %22 = load i32, i32* %21, align 4, !dbg !1329, !tbaa !819
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 5) #12, !dbg !1331
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %23) #12, !dbg !1332
  br label %24, !dbg !1332

; <label>:24:                                     ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1333, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %25, metadata !1299, metadata !DIExpression()), !dbg !1315
  %26 = call i32 @timer_delete(i8* %25) #12, !dbg !1334
  br label %34, !dbg !1335

; <label>:27:                                     ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1336

; <label>:28:                                     ; preds = %27
  %29 = tail call i32* @__errno_location() #18, !dbg !1338
  %30 = load i32, i32* %29, align 4, !dbg !1338, !tbaa !819
  %31 = icmp eq i32 %30, 38, !dbg !1339
  br i1 %31, label %34, label %32, !dbg !1340

; <label>:32:                                     ; preds = %28
  %33 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i32 5) #12, !dbg !1341
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %30, i8* %33) #12, !dbg !1342
  br label %34, !dbg !1342

; <label>:34:                                     ; preds = %28, %27, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1343
  br i1 %35, label %36, label %42, !dbg !1344

; <label>:36:                                     ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %37, metadata !1304, metadata !DIExpression()), !dbg !1346
  %38 = uitofp i32 %37 to double, !dbg !1347
  %39 = fcmp olt double %38, %0, !dbg !1348
  %40 = zext i1 %39 to i32, !dbg !1348
  %41 = add i32 %40, %37, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %41, metadata !1303, metadata !DIExpression()), !dbg !1350
  br label %42

; <label>:42:                                     ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ], !dbg !1351
  call void @llvm.dbg.value(metadata i32 %43, metadata !1303, metadata !DIExpression()), !dbg !1350
  %44 = call i32 @alarm(i32 %43) #12, !dbg !1352
  br label %45, !dbg !1353

; <label>:45:                                     ; preds = %15, %42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #12, !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #12, !dbg !1353
  ret void, !dbg !1353
}

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare i32 @sigsuspend(%struct.__sigset_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind
declare i32 @timer_create(i32, %struct.sigevent*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_delete(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @alarm(i32) local_unnamed_addr #2

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8*, i8*) local_unnamed_addr #7 !dbg !1354 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1358, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %1, metadata !1359, metadata !DIExpression()), !dbg !1370
  %5 = bitcast i32* %3 to i8*, !dbg !1371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1371
  %6 = load i8, i8* %0, align 1, !dbg !1372, !tbaa !968
  %7 = sext i8 %6 to i32, !dbg !1372
  %8 = add nsw i32 %7, -48, !dbg !1372
  %9 = icmp ult i32 %8, 10, !dbg !1372
  br i1 %9, label %10, label %34, !dbg !1373

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1374
  %12 = tail call i32* @__errno_location() #18, !dbg !1375
  store i32 0, i32* %12, align 4, !dbg !1376, !tbaa !819
  call void @llvm.dbg.value(metadata i8** %4, metadata !1361, metadata !DIExpression(DW_OP_deref)), !dbg !1377
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #12, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %13, metadata !1364, metadata !DIExpression()), !dbg !1379
  %14 = trunc i64 %13 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %14, metadata !1365, metadata !DIExpression()), !dbg !1381
  %15 = load i8*, i8** %4, align 8, !dbg !1382, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %15, metadata !1361, metadata !DIExpression()), !dbg !1377
  %16 = icmp eq i8* %15, %0, !dbg !1383
  br i1 %16, label %32, label %17, !dbg !1384

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1385, !tbaa !968
  %19 = icmp eq i8 %18, 0, !dbg !1385
  br i1 %19, label %20, label %32, !dbg !1386

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1387, !tbaa !819
  %22 = icmp ne i32 %21, 0, !dbg !1387
  %23 = add i64 %13, 2147483648, !dbg !1388
  %24 = icmp ugt i64 %23, 4294967295, !dbg !1388
  %25 = or i1 %24, %22, !dbg !1389
  %26 = icmp eq i32 %14, -1, !dbg !1390
  %27 = or i1 %26, %25, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %14, metadata !1360, metadata !DIExpression()), !dbg !1392
  br i1 %27, label %32, label %28, !dbg !1389

; <label>:28:                                     ; preds = %20
  %29 = icmp sgt i32 %14, 254, !dbg !1393
  %30 = select i1 %29, i32 255, i32 127, !dbg !1395
  %31 = and i32 %30, %14, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %31, metadata !1360, metadata !DIExpression()), !dbg !1392
  br label %32, !dbg !1397

; <label>:32:                                     ; preds = %20, %10, %17, %28
  %33 = phi i32 [ %31, %28 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  store i32 %33, i32* %3, align 4, !dbg !1398, !tbaa !819
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !1399
  br label %71, !dbg !1400

; <label>:34:                                     ; preds = %2
  %35 = tail call noalias i8* @xstrdup(i8* nonnull %0) #12, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %35, metadata !1366, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i8* %35, metadata !1368, metadata !DIExpression()), !dbg !1403
  %36 = load i8, i8* %35, align 1, !dbg !1404, !tbaa !968
  %37 = icmp eq i8 %36, 0, !dbg !1407
  br i1 %37, label %50, label %38, !dbg !1407

; <label>:38:                                     ; preds = %34, %46
  %39 = phi i8 [ %48, %46 ], [ %36, %34 ]
  %40 = phi i8* [ %47, %46 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i8* %40, metadata !1368, metadata !DIExpression()), !dbg !1403
  %41 = sext i8 %39 to i32, !dbg !1408
  %42 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 %41, i64 27), !dbg !1410
  %43 = icmp eq i8* %42, null, !dbg !1410
  br i1 %43, label %46, label %44, !dbg !1411

; <label>:44:                                     ; preds = %38
  %45 = add i8 %39, -32, !dbg !1412
  store i8 %45, i8* %40, align 1, !dbg !1412, !tbaa !968
  br label %46, !dbg !1413

; <label>:46:                                     ; preds = %38, %44
  %47 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %47, metadata !1368, metadata !DIExpression()), !dbg !1403
  %48 = load i8, i8* %47, align 1, !dbg !1404, !tbaa !968
  %49 = icmp eq i8 %48, 0, !dbg !1407
  br i1 %49, label %50, label %38, !dbg !1407, !llvm.loop !1415

; <label>:50:                                     ; preds = %46, %34
  call void @llvm.dbg.value(metadata i32* %3, metadata !1360, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  %51 = call i32 @str2sig(i8* %35, i32* nonnull %3) #12, !dbg !1417
  %52 = icmp eq i32 %51, 0, !dbg !1419
  br i1 %52, label %69, label %53, !dbg !1420

; <label>:53:                                     ; preds = %50
  %54 = load i8, i8* %35, align 1, !dbg !1421, !tbaa !968
  %55 = icmp eq i8 %54, 83, !dbg !1422
  br i1 %55, label %56, label %68, !dbg !1423

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1424
  %58 = load i8, i8* %57, align 1, !dbg !1424, !tbaa !968
  %59 = icmp eq i8 %58, 73, !dbg !1425
  br i1 %59, label %60, label %68, !dbg !1426

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1427
  %62 = load i8, i8* %61, align 1, !dbg !1427, !tbaa !968
  %63 = icmp eq i8 %62, 71, !dbg !1428
  br i1 %63, label %64, label %68, !dbg !1429

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1430
  call void @llvm.dbg.value(metadata i32* %3, metadata !1360, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  %66 = call i32 @str2sig(i8* nonnull %65, i32* nonnull %3) #12, !dbg !1431
  %67 = icmp eq i32 %66, 0, !dbg !1432
  br i1 %67, label %69, label %68, !dbg !1433

; <label>:68:                                     ; preds = %64, %60, %56, %53
  call void @llvm.dbg.value(metadata i32 -1, metadata !1360, metadata !DIExpression()), !dbg !1392
  store i32 -1, i32* %3, align 4, !dbg !1434, !tbaa !819
  br label %69, !dbg !1435

; <label>:69:                                     ; preds = %68, %64, %50
  call void @free(i8* %35) #12, !dbg !1436
  %70 = load i32, i32* %3, align 4, !dbg !1437, !tbaa !819
  br label %71

; <label>:71:                                     ; preds = %69, %32
  %72 = phi i32 [ %70, %69 ], [ %33, %32 ], !dbg !1437
  call void @llvm.dbg.value(metadata i32 %72, metadata !1360, metadata !DIExpression()), !dbg !1392
  %73 = icmp slt i32 %72, 0, !dbg !1439
  br i1 %73, label %77, label %74, !dbg !1440

; <label>:74:                                     ; preds = %71
  %75 = call i32 @sig2str(i32 %72, i8* %1) #12, !dbg !1441
  %76 = icmp eq i32 %75, 0, !dbg !1442
  br i1 %76, label %80, label %77, !dbg !1443

; <label>:77:                                     ; preds = %74, %71
  %78 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.52, i64 0, i64 0), i32 5) #12, !dbg !1444
  %79 = call i8* @quote(i8* %0) #12, !dbg !1446
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %78, i8* %79) #12, !dbg !1447
  br label %82, !dbg !1448

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %3, align 4, !dbg !1449, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %81, metadata !1360, metadata !DIExpression()), !dbg !1392
  br label %82, !dbg !1450

; <label>:82:                                     ; preds = %80, %77
  %83 = phi i32 [ -1, %77 ], [ %81, %80 ], !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #12, !dbg !1452
  ret i32 %83, !dbg !1452
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8*, i8**) #7 !dbg !1453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8** %1, metadata !1458, metadata !DIExpression()), !dbg !1462
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1463, !tbaa !714
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1463
  br i1 %4, label %5, label %7, !dbg !1469

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !1470
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1471, !tbaa !714
  br label %7, !dbg !1472

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1473, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1460, metadata !DIExpression()), !dbg !1474
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1475
  br i1 %9, label %10, label %13, !dbg !1477

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1478
  br i1 %11, label %15, label %12, !dbg !1481

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1482, !tbaa !714
  br label %15, !dbg !1483

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !1484
  call void @llvm.dbg.value(metadata double %14, metadata !1459, metadata !DIExpression()), !dbg !1485
  br label %15, !dbg !1486

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !1487
  ret double %16, !dbg !1488
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i8* %0, i8** @file_name, align 8, !dbg !1493, !tbaa !714
  ret void, !dbg !1494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1495 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1499, metadata !DIExpression()), !dbg !1500
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1501, !tbaa !1502
  ret void, !dbg !1504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1505 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1510, !tbaa !714
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1511
  %3 = icmp eq i32 %2, 0, !dbg !1512
  br i1 %3, label %22, label %4, !dbg !1513

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1514, !tbaa !1502, !range !1515
  %6 = icmp eq i8 %5, 0, !dbg !1514
  br i1 %6, label %11, label %7, !dbg !1516

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !1517
  %9 = load i32, i32* %8, align 4, !dbg !1517, !tbaa !819
  %10 = icmp eq i32 %9, 32, !dbg !1518
  br i1 %10, label %22, label %11, !dbg !1519

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i32 5) #12, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %12, metadata !1507, metadata !DIExpression()), !dbg !1521
  %13 = load i8*, i8** @file_name, align 8, !dbg !1522, !tbaa !714
  %14 = icmp eq i8* %13, null, !dbg !1522
  %15 = tail call i32* @__errno_location() #18, !dbg !1524
  %16 = load i32, i32* %15, align 4, !dbg !1524, !tbaa !819
  br i1 %14, label %19, label %17, !dbg !1525

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1526
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.62, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1527
  br label %20, !dbg !1527

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.63, i64 0, i64 0), i8* %12) #12, !dbg !1528
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1529, !tbaa !819
  tail call void @_exit(i32 %21) #16, !dbg !1530
  unreachable, !dbg !1530

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1531, !tbaa !714
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1533
  %25 = icmp eq i32 %24, 0, !dbg !1534
  br i1 %25, label %28, label %26, !dbg !1535

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1536, !tbaa !819
  tail call void @_exit(i32 %27) #16, !dbg !1537
  unreachable, !dbg !1537

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1538
}

; Function Attrs: nounwind readnone sspstrong uwtable
define dso_local { i64, i64 } @dtotimespec(double) local_unnamed_addr #8 !dbg !1539 {
  call void @llvm.dbg.value(metadata double %0, metadata !1548, metadata !DIExpression()), !dbg !1555
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !1556
  br i1 %2, label %3, label %23, !dbg !1557

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !1558
  br i1 %4, label %5, label %23, !dbg !1559

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %6, metadata !1549, metadata !DIExpression()), !dbg !1561
  %7 = sitofp i64 %6 to double, !dbg !1562
  %8 = fsub double %0, %7, !dbg !1563
  %9 = fmul double %8, 1.000000e+09, !dbg !1564
  call void @llvm.dbg.value(metadata double %9, metadata !1553, metadata !DIExpression()), !dbg !1565
  %10 = fptosi double %9 to i64, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %10, metadata !1554, metadata !DIExpression()), !dbg !1567
  %11 = sitofp i64 %10 to double, !dbg !1568
  %12 = fcmp ogt double %9, %11, !dbg !1569
  %13 = zext i1 %12 to i64, !dbg !1568
  %14 = add nsw i64 %13, %10, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %14, metadata !1554, metadata !DIExpression()), !dbg !1567
  %15 = sdiv i64 %14, 1000000000, !dbg !1571
  %16 = add nsw i64 %15, %6, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %16, metadata !1549, metadata !DIExpression()), !dbg !1561
  %17 = srem i64 %14, 1000000000, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %17, metadata !1554, metadata !DIExpression()), !dbg !1567
  %18 = icmp slt i64 %17, 0, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %16, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1561
  %19 = add nsw i64 %17, 1000000000, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %19, metadata !1554, metadata !DIExpression()), !dbg !1567
  %20 = ashr i64 %17, 63, !dbg !1578
  %21 = add nsw i64 %16, %20, !dbg !1578
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %22, metadata !1554, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i64 %21, metadata !1549, metadata !DIExpression()), !dbg !1561
  br label %23

; <label>:23:                                     ; preds = %3, %1, %5
  %24 = phi i64 [ %21, %5 ], [ -9223372036854775808, %1 ], [ 9223372036854775807, %3 ], !dbg !1579
  %25 = phi i64 [ %22, %5 ], [ 0, %1 ], [ 999999999, %3 ], !dbg !1579
  %26 = insertvalue { i64, i64 } undef, i64 %24, 0, !dbg !1580
  %27 = insertvalue { i64, i64 } %26, i64 %25, 1, !dbg !1580
  ret { i64, i64 } %27, !dbg !1580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1583, metadata !DIExpression()), !dbg !1586
  %2 = icmp eq i8* %0, null, !dbg !1587
  br i1 %2, label %3, label %6, !dbg !1589

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1590, !tbaa !714
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1592
  tail call void @abort() #16, !dbg !1593
  unreachable, !dbg !1593

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #11, !dbg !1594
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
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.73, i64 0, i64 0), i64 7) #11, !dbg !1605
  %18 = icmp eq i32 %17, 0, !dbg !1606
  br i1 %18, label %19, label %24, !dbg !1607

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1583, metadata !DIExpression()), !dbg !1586
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i64 3) #11, !dbg !1608
  %21 = icmp eq i32 %20, 0, !dbg !1611
  br i1 %21, label %22, label %24, !dbg !1612

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %23, metadata !1583, metadata !DIExpression()), !dbg !1586
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1615, !tbaa !714
  br label %24, !dbg !1616

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1583, metadata !DIExpression()), !dbg !1586
  store i8* %25, i8** @program_name, align 8, !dbg !1617, !tbaa !714
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1618, !tbaa !714
  ret void, !dbg !1619
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1620 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1625, metadata !DIExpression()), !dbg !1628
  %2 = tail call i32* @__errno_location() #18, !dbg !1629
  %3 = load i32, i32* %2, align 4, !dbg !1629, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %3, metadata !1626, metadata !DIExpression()), !dbg !1630
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1631
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1631
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1631
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1632
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1627, metadata !DIExpression()), !dbg !1633
  store i32 %3, i32* %2, align 4, !dbg !1634, !tbaa !819
  ret %struct.quoting_options* %8, !dbg !1635
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1636 {
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
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1665, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %1, metadata !1666, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %2, metadata !1667, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %1, metadata !1668, metadata !DIExpression()), !dbg !1677
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1678
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1678
  %6 = lshr i8 %1, 5, !dbg !1679
  %7 = zext i8 %6 to i64, !dbg !1679
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1680
  call void @llvm.dbg.value(metadata i32* %8, metadata !1670, metadata !DIExpression()), !dbg !1681
  %9 = and i8 %1, 31, !dbg !1682
  %10 = zext i8 %9 to i32, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %10, metadata !1672, metadata !DIExpression()), !dbg !1683
  %11 = load i32, i32* %8, align 4, !dbg !1684, !tbaa !819
  %12 = lshr i32 %11, %10, !dbg !1685
  %13 = and i32 %12, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %13, metadata !1673, metadata !DIExpression()), !dbg !1687
  %14 = and i32 %2, 1, !dbg !1688
  %15 = xor i32 %13, %14, !dbg !1689
  %16 = shl i32 %15, %10, !dbg !1690
  %17 = xor i32 %16, %11, !dbg !1691
  store i32 %17, i32* %8, align 4, !dbg !1691, !tbaa !819
  ret i32 %13, !dbg !1692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1693 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1697, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %1, metadata !1698, metadata !DIExpression()), !dbg !1701
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1702
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1697, metadata !DIExpression()), !dbg !1700
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1705
  %6 = load i32, i32* %5, align 4, !dbg !1705, !tbaa !1706
  call void @llvm.dbg.value(metadata i32 %6, metadata !1699, metadata !DIExpression()), !dbg !1707
  store i32 %1, i32* %5, align 4, !dbg !1708, !tbaa !1706
  ret i32 %6, !dbg !1709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1710 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1714, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %1, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %2, metadata !1716, metadata !DIExpression()), !dbg !1719
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1720
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1714, metadata !DIExpression()), !dbg !1717
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1723
  store i32 10, i32* %6, align 8, !dbg !1724, !tbaa !1646
  %7 = icmp ne i8* %1, null, !dbg !1725
  %8 = icmp ne i8* %2, null, !dbg !1727
  %9 = and i1 %7, %8, !dbg !1728
  br i1 %9, label %11, label %10, !dbg !1728

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1729
  unreachable, !dbg !1729

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1730
  store i8* %1, i8** %12, align 8, !dbg !1731, !tbaa !1732
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1733
  store i8* %2, i8** %13, align 8, !dbg !1734, !tbaa !1735
  ret void, !dbg !1736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1737 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i64 %1, metadata !1742, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %2, metadata !1743, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %3, metadata !1744, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1745, metadata !DIExpression()), !dbg !1753
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1754
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1746, metadata !DIExpression()), !dbg !1755
  %8 = tail call i32* @__errno_location() #18, !dbg !1756
  %9 = load i32, i32* %8, align 4, !dbg !1756, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %9, metadata !1747, metadata !DIExpression()), !dbg !1757
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1758
  %11 = load i32, i32* %10, align 8, !dbg !1758, !tbaa !1646
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1759
  %13 = load i32, i32* %12, align 4, !dbg !1759, !tbaa !1706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1760
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1761
  %16 = load i8*, i8** %15, align 8, !dbg !1761, !tbaa !1732
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1762
  %18 = load i8*, i8** %17, align 8, !dbg !1762, !tbaa !1735
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %19, metadata !1748, metadata !DIExpression()), !dbg !1764
  store i32 %9, i32* %8, align 4, !dbg !1765, !tbaa !819
  ret i64 %19, !dbg !1766
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1767 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %1, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %2, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %3, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %4, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %5, metadata !1778, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32* %6, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %7, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %8, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 0, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* null, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1787, metadata !DIExpression()), !dbg !1850
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1851
  %14 = icmp eq i64 %13, 1, !dbg !1852
  %15 = lshr i32 %5, 1, !dbg !1853
  %16 = trunc i32 %15 to i8, !dbg !1853
  %17 = and i8 %16, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i8 %17, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 0, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1792, metadata !DIExpression()), !dbg !1856
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1857

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1847
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1848
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1849
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1850
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1858
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1854
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1855
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1856
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %39, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %38, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %37, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %36, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %35, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %34, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %33, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %32, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %31, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %30, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %29, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %28, metadata !1777, metadata !DIExpression()), !dbg !1841
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
  ], !dbg !1860

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %36, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 5, metadata !1777, metadata !DIExpression()), !dbg !1841
  br label %93, !dbg !1861

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 5, metadata !1777, metadata !DIExpression()), !dbg !1841
  %43 = and i8 %36, 1, !dbg !1862
  %44 = icmp eq i8 %43, 0, !dbg !1862
  br i1 %44, label %45, label %93, !dbg !1861

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1864
  br i1 %46, label %93, label %47, !dbg !1867

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1864, !tbaa !968
  br label %93, !dbg !1864

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 %28), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %49, metadata !1780, metadata !DIExpression()), !dbg !1844
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 %28), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %50, metadata !1781, metadata !DIExpression()), !dbg !1845
  br label %51, !dbg !1873

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %52, metadata !1780, metadata !DIExpression()), !dbg !1844
  %54 = and i8 %36, 1, !dbg !1874
  %55 = icmp eq i8 %54, 0, !dbg !1874
  br i1 %55, label %56, label %71, !dbg !1876

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1783, metadata !DIExpression()), !dbg !1846
  %57 = load i8, i8* %52, align 1, !dbg !1877, !tbaa !968
  %58 = icmp eq i8 %57, 0, !dbg !1880
  br i1 %58, label %71, label %59, !dbg !1880

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %62, metadata !1783, metadata !DIExpression()), !dbg !1846
  %63 = icmp ult i64 %62, %40, !dbg !1881
  br i1 %63, label %64, label %66, !dbg !1884

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1881
  store i8 %60, i8* %65, align 1, !dbg !1881, !tbaa !968
  br label %66, !dbg !1881

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1884
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1885
  call void @llvm.dbg.value(metadata i8* %68, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %67, metadata !1783, metadata !DIExpression()), !dbg !1846
  %69 = load i8, i8* %68, align 1, !dbg !1877, !tbaa !968
  %70 = icmp eq i8 %69, 0, !dbg !1880
  br i1 %70, label %71, label %59, !dbg !1880, !llvm.loop !1886

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1846
  call void @llvm.dbg.value(metadata i64 %72, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 1, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8* %53, metadata !1785, metadata !DIExpression()), !dbg !1848
  %73 = call i64 @strlen(i8* %53) #11, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %73, metadata !1786, metadata !DIExpression()), !dbg !1849
  br label %93, !dbg !1889

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1787, metadata !DIExpression()), !dbg !1850
  br label %75, !dbg !1890

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %76, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %77, !dbg !1891

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1850
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %79, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %78, metadata !1787, metadata !DIExpression()), !dbg !1850
  %80 = and i8 %79, 1, !dbg !1892
  %81 = icmp eq i8 %80, 0, !dbg !1892
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1894
  br label %83, !dbg !1894

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1895
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1853
  call void @llvm.dbg.value(metadata i8 %85, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %84, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  %86 = and i8 %85, 1, !dbg !1896
  %87 = icmp eq i8 %86, 0, !dbg !1896
  br i1 %87, label %88, label %93, !dbg !1898

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1899
  br i1 %89, label %93, label %90, !dbg !1902

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1899, !tbaa !968
  br label %93, !dbg !1899

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %93, !dbg !1903

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !1904
  unreachable, !dbg !1904

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1846
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %41 ], !dbg !1858
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1858
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1858
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %101, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %99, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %97, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1906
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
  br label %121, !dbg !1907

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1908
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1846
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1847
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1854
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1855
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1856
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %125, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %122, metadata !1782, metadata !DIExpression()), !dbg !1906
  %130 = icmp eq i64 %125, -1, !dbg !1909
  br i1 %130, label %131, label %135, !dbg !1910

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1911
  %133 = load i8, i8* %132, align 1, !dbg !1911, !tbaa !968
  %134 = icmp eq i8 %133, 0, !dbg !1912
  br i1 %134, label %617, label %137, !dbg !1913

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1914
  br i1 %136, label %617, label %137, !dbg !1913

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1917
  br i1 %107, label %138, label %153, !dbg !1918

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1920
  %140 = and i1 %108, %130, !dbg !1921
  br i1 %140, label %141, label %143, !dbg !1921

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #11, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %142, metadata !1776, metadata !DIExpression()), !dbg !1840
  br label %143, !dbg !1923

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1776, metadata !DIExpression()), !dbg !1840
  %145 = icmp ugt i64 %139, %144, !dbg !1924
  br i1 %145, label %153, label %146, !dbg !1925

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1926
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #11, !dbg !1927
  %149 = icmp ne i32 %148, 0, !dbg !1928
  %150 = or i1 %149, %110, !dbg !1929
  %151 = xor i1 %149, true, !dbg !1929
  %152 = zext i1 %151 to i8, !dbg !1929
  br i1 %150, label %153, label %661, !dbg !1929

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1930
  call void @llvm.dbg.value(metadata i8 %155, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %154, metadata !1776, metadata !DIExpression()), !dbg !1840
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1931
  %157 = load i8, i8* %156, align 1, !dbg !1931, !tbaa !968
  call void @llvm.dbg.value(metadata i8 %157, metadata !1793, metadata !DIExpression()), !dbg !1932
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
  ], !dbg !1933

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1934

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1935

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1916
  %161 = and i8 %126, 1, !dbg !1939
  %162 = icmp eq i8 %161, 0, !dbg !1939
  %163 = and i1 %114, %162, !dbg !1939
  br i1 %163, label %164, label %180, !dbg !1939

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1941
  br i1 %165, label %166, label %168, !dbg !1945

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1941
  store i8 39, i8* %167, align 1, !dbg !1941, !tbaa !968
  br label %168, !dbg !1941

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %169, metadata !1783, metadata !DIExpression()), !dbg !1846
  %170 = icmp ult i64 %169, %129, !dbg !1946
  br i1 %170, label %171, label %173, !dbg !1949

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1946
  store i8 36, i8* %172, align 1, !dbg !1946, !tbaa !968
  br label %173, !dbg !1946

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %174, metadata !1783, metadata !DIExpression()), !dbg !1846
  %175 = icmp ult i64 %174, %129, !dbg !1950
  br i1 %175, label %176, label %178, !dbg !1953

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1950
  store i8 39, i8* %177, align 1, !dbg !1950, !tbaa !968
  br label %178, !dbg !1950

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %179, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 1, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %180, !dbg !1954

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1905
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %182, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %181, metadata !1783, metadata !DIExpression()), !dbg !1846
  %183 = icmp ult i64 %181, %129, !dbg !1955
  br i1 %183, label %184, label %186, !dbg !1958

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1955
  store i8 92, i8* %185, align 1, !dbg !1955, !tbaa !968
  br label %186, !dbg !1955

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %187, metadata !1783, metadata !DIExpression()), !dbg !1846
  br i1 %104, label %188, label %478, !dbg !1959

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1961
  %190 = icmp ult i64 %189, %154, !dbg !1962
  br i1 %190, label %191, label %467, !dbg !1963

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1964
  %193 = load i8, i8* %192, align 1, !dbg !1964, !tbaa !968
  %194 = add i8 %193, -48, !dbg !1965
  %195 = icmp ult i8 %194, 10, !dbg !1965
  br i1 %195, label %196, label %467, !dbg !1965

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1966
  br i1 %197, label %198, label %200, !dbg !1970

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1966
  store i8 48, i8* %199, align 1, !dbg !1966, !tbaa !968
  br label %200, !dbg !1966

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %201, metadata !1783, metadata !DIExpression()), !dbg !1846
  %202 = icmp ult i64 %201, %129, !dbg !1971
  br i1 %202, label %203, label %205, !dbg !1974

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1971
  store i8 48, i8* %204, align 1, !dbg !1971, !tbaa !968
  br label %205, !dbg !1971

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %206, metadata !1783, metadata !DIExpression()), !dbg !1846
  br label %467, !dbg !1975

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1976

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1977

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1978

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1980

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1982
  %213 = icmp ult i64 %212, %154, !dbg !1983
  br i1 %213, label %214, label %467, !dbg !1984

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1985
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1986
  %217 = load i8, i8* %216, align 1, !dbg !1986, !tbaa !968
  %218 = icmp eq i8 %217, 63, !dbg !1987
  br i1 %218, label %219, label %467, !dbg !1988

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1989
  %221 = load i8, i8* %220, align 1, !dbg !1989, !tbaa !968
  %222 = sext i8 %221 to i32, !dbg !1989
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
  ], !dbg !1990

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1991

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %212, metadata !1782, metadata !DIExpression()), !dbg !1906
  %225 = icmp ult i64 %123, %129, !dbg !1993
  br i1 %225, label %226, label %228, !dbg !1996

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1993
  store i8 63, i8* %227, align 1, !dbg !1993, !tbaa !968
  br label %228, !dbg !1993

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %229, metadata !1783, metadata !DIExpression()), !dbg !1846
  %230 = icmp ult i64 %229, %129, !dbg !1997
  br i1 %230, label %231, label %233, !dbg !2000

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1997
  store i8 34, i8* %232, align 1, !dbg !1997, !tbaa !968
  br label %233, !dbg !1997

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %234, metadata !1783, metadata !DIExpression()), !dbg !1846
  %235 = icmp ult i64 %234, %129, !dbg !2001
  br i1 %235, label %236, label %238, !dbg !2004

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2001
  store i8 34, i8* %237, align 1, !dbg !2001, !tbaa !968
  br label %238, !dbg !2001

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %239, metadata !1783, metadata !DIExpression()), !dbg !1846
  %240 = icmp ult i64 %239, %129, !dbg !2005
  br i1 %240, label %241, label %243, !dbg !2008

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2005
  store i8 63, i8* %242, align 1, !dbg !2005, !tbaa !968
  br label %243, !dbg !2005

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %244, metadata !1783, metadata !DIExpression()), !dbg !1846
  br label %467, !dbg !2009

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1797, metadata !DIExpression()), !dbg !2010
  br label %255, !dbg !2011

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1797, metadata !DIExpression()), !dbg !2010
  br label %255, !dbg !2012

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1797, metadata !DIExpression()), !dbg !2010
  br label %253, !dbg !2013

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1797, metadata !DIExpression()), !dbg !2010
  br label %253, !dbg !2014

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1797, metadata !DIExpression()), !dbg !2010
  br label %255, !dbg !2015

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1797, metadata !DIExpression()), !dbg !2010
  br i1 %114, label %251, label %252, !dbg !2016

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2017

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2020

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2022
  call void @llvm.dbg.value(metadata i8 %254, metadata !1797, metadata !DIExpression()), !dbg !2010
  br i1 %113, label %255, label %661, !dbg !2023

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2022
  call void @llvm.dbg.value(metadata i8 %256, metadata !1797, metadata !DIExpression()), !dbg !2010
  br i1 %103, label %524, label %478, !dbg !2025

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2026
  br i1 %258, label %259, label %264, !dbg !2028

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2029, !tbaa !968
  %261 = icmp ne i8 %260, 0, !dbg !2030
  %262 = icmp ne i64 %122, 0, !dbg !2031
  %263 = or i1 %262, %261, !dbg !2033
  br i1 %263, label %467, label %270, !dbg !2033

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2034
  %266 = icmp ne i64 %122, 0, !dbg !2031
  %267 = or i1 %266, %265, !dbg !2028
  br i1 %267, label %467, label %270, !dbg !2028

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2031
  br i1 %269, label %270, label %467, !dbg !2035

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1917
  br label %271, !dbg !2036

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2022
  call void @llvm.dbg.value(metadata i8 %272, metadata !1800, metadata !DIExpression()), !dbg !1917
  br i1 %113, label %467, label %661, !dbg !2037

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1917
  br i1 %114, label %274, label %467, !dbg !2039

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2040

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2043
  %277 = icmp ne i64 %124, 0, !dbg !2045
  %278 = or i1 %277, %276, !dbg !2046
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2046
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %280, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %279, metadata !1784, metadata !DIExpression()), !dbg !1847
  %281 = icmp ult i64 %123, %280, !dbg !2047
  br i1 %281, label %282, label %284, !dbg !2050

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2047
  store i8 39, i8* %283, align 1, !dbg !2047, !tbaa !968
  br label %284, !dbg !2047

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %285, metadata !1783, metadata !DIExpression()), !dbg !1846
  %286 = icmp ult i64 %285, %280, !dbg !2051
  br i1 %286, label %287, label %289, !dbg !2054

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2051
  store i8 92, i8* %288, align 1, !dbg !2051, !tbaa !968
  br label %289, !dbg !2051

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %290, metadata !1783, metadata !DIExpression()), !dbg !1846
  %291 = icmp ult i64 %290, %280, !dbg !2055
  br i1 %291, label %292, label %294, !dbg !2058

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2055
  store i8 39, i8* %293, align 1, !dbg !2055, !tbaa !968
  br label %294, !dbg !2055

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %295, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %467, !dbg !2059

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2060

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1801, metadata !DIExpression()), !dbg !2061
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !2062
  %299 = load i16*, i16** %298, align 8, !dbg !2062, !tbaa !714
  %300 = zext i8 %157 to i64, !dbg !2062
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2062
  %302 = load i16, i16* %301, align 2, !dbg !2062, !tbaa !2064
  %303 = lshr i16 %302, 14, !dbg !2066
  %304 = trunc i16 %303 to i8, !dbg !2066
  %305 = and i8 %304, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %305, metadata !1804, metadata !DIExpression()), !dbg !2067
  br label %359, !dbg !2068

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2069
  store i64 0, i64* %10, align 8, !dbg !2070
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 1, metadata !1804, metadata !DIExpression()), !dbg !2067
  %307 = icmp eq i64 %154, -1, !dbg !2071
  br i1 %307, label %308, label %310, !dbg !2073

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #11, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %309, metadata !1776, metadata !DIExpression()), !dbg !1840
  br label %310, !dbg !2075

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2076
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  br label %312, !dbg !2077

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2078
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %314, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2080
  %315 = add i64 %313, %122, !dbg !2081
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2082
  %317 = sub i64 %311, %315, !dbg !2083
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1805, metadata !DIExpression(DW_OP_deref)), !dbg !2084
  call void @llvm.dbg.value(metadata i32* %12, metadata !1823, metadata !DIExpression(DW_OP_deref)), !dbg !2085
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %318, metadata !1826, metadata !DIExpression()), !dbg !2087
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2088

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  %320 = icmp ugt i64 %311, %315, !dbg !2089
  br i1 %320, label %321, label %344, !dbg !2091

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1801, metadata !DIExpression()), !dbg !2061
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2092
  %325 = load i8, i8* %324, align 1, !dbg !2092, !tbaa !968
  %326 = icmp eq i8 %325, 0, !dbg !2091
  br i1 %326, label %344, label %327, !dbg !2093

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %328, metadata !1801, metadata !DIExpression()), !dbg !2061
  %329 = add i64 %328, %122, !dbg !2095
  %330 = icmp ult i64 %329, %311, !dbg !2089
  br i1 %330, label %321, label %344, !dbg !2091, !llvm.loop !2096

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2097
  %333 = and i1 %116, %332, !dbg !2100
  call void @llvm.dbg.value(metadata i64 1, metadata !1827, metadata !DIExpression()), !dbg !2101
  br i1 %333, label %334, label %347, !dbg !2100

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1827, metadata !DIExpression()), !dbg !2101
  %336 = add i64 %335, %315, !dbg !2102
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2103
  %338 = load i8, i8* %337, align 1, !dbg !2103, !tbaa !968
  %339 = sext i8 %338 to i32, !dbg !2103
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2104

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %341, metadata !1827, metadata !DIExpression()), !dbg !2101
  %342 = icmp ult i64 %341, %318, !dbg !2097
  br i1 %342, label %334, label %347, !dbg !2106, !llvm.loop !2107

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 %314, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %313, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 %314, metadata !1804, metadata !DIExpression()), !dbg !2067
  br label %344, !dbg !2109

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %352, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2109
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2110, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %348, metadata !1823, metadata !DIExpression()), !dbg !2085
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2112
  %350 = icmp eq i32 %349, 0, !dbg !2112
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2113
  call void @llvm.dbg.value(metadata i8 %351, metadata !1804, metadata !DIExpression()), !dbg !2067
  %352 = add i64 %318, %313, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %352, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 %351, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %352, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1805, metadata !DIExpression(DW_OP_deref)), !dbg !2084
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #11, !dbg !2115
  %354 = icmp eq i32 %353, 0, !dbg !2116
  br i1 %354, label %312, label %355, !dbg !2117, !llvm.loop !2118

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2120
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %94, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %100, metadata !1787, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %311, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %351, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %352, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2109
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2120
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2121
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2122
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2122
  call void @llvm.dbg.value(metadata i8 %362, metadata !1804, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %361, metadata !1801, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %360, metadata !1776, metadata !DIExpression()), !dbg !1840
  %363 = and i8 %362, 1, !dbg !2123
  %364 = icmp ne i8 %363, 0, !dbg !2123
  call void @llvm.dbg.value(metadata i8 %363, metadata !1800, metadata !DIExpression()), !dbg !1917
  %365 = icmp ult i64 %361, 2, !dbg !2124
  %366 = or i1 %364, %115, !dbg !2125
  %367 = and i1 %365, %366, !dbg !2126
  br i1 %367, label %467, label %368, !dbg !2126

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %369, metadata !1834, metadata !DIExpression()), !dbg !2128
  br label %370, !dbg !2129

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2130
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2134
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1854
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2130
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2136
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %376, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %375, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %374, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %373, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %372, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %371, metadata !1782, metadata !DIExpression()), !dbg !1906
  br i1 %366, label %423, label %377, !dbg !2140

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2141

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1916
  %379 = and i8 %373, 1, !dbg !2144
  %380 = icmp eq i8 %379, 0, !dbg !2144
  %381 = and i1 %114, %380, !dbg !2144
  br i1 %381, label %382, label %398, !dbg !2144

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2146
  br i1 %383, label %384, label %386, !dbg !2150

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2146
  store i8 39, i8* %385, align 1, !dbg !2146, !tbaa !968
  br label %386, !dbg !2146

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %387, metadata !1783, metadata !DIExpression()), !dbg !1846
  %388 = icmp ult i64 %387, %129, !dbg !2151
  br i1 %388, label %389, label %391, !dbg !2154

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2151
  store i8 36, i8* %390, align 1, !dbg !2151, !tbaa !968
  br label %391, !dbg !2151

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %392, metadata !1783, metadata !DIExpression()), !dbg !1846
  %393 = icmp ult i64 %392, %129, !dbg !2155
  br i1 %393, label %394, label %396, !dbg !2158

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2155
  store i8 39, i8* %395, align 1, !dbg !2155, !tbaa !968
  br label %396, !dbg !2155

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %397, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 1, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %398, !dbg !2159

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1905
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %400, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %399, metadata !1783, metadata !DIExpression()), !dbg !1846
  %401 = icmp ult i64 %399, %129, !dbg !2160
  br i1 %401, label %402, label %404, !dbg !2163

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2160
  store i8 92, i8* %403, align 1, !dbg !2160, !tbaa !968
  br label %404, !dbg !2160

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %405, metadata !1783, metadata !DIExpression()), !dbg !1846
  %406 = icmp ult i64 %405, %129, !dbg !2164
  br i1 %406, label %407, label %411, !dbg !2167

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2164
  %409 = or i8 %408, 48, !dbg !2164
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2164
  store i8 %409, i8* %410, align 1, !dbg !2164, !tbaa !968
  br label %411, !dbg !2164

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %412, metadata !1783, metadata !DIExpression()), !dbg !1846
  %413 = icmp ult i64 %412, %129, !dbg !2168
  br i1 %413, label %414, label %419, !dbg !2171

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2168
  %416 = and i8 %415, 7, !dbg !2168
  %417 = or i8 %416, 48, !dbg !2168
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2168
  store i8 %417, i8* %418, align 1, !dbg !2168, !tbaa !968
  br label %419, !dbg !2168

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %420, metadata !1783, metadata !DIExpression()), !dbg !1846
  %421 = and i8 %374, 7, !dbg !2172
  %422 = or i8 %421, 48, !dbg !2173
  call void @llvm.dbg.value(metadata i8 %422, metadata !1793, metadata !DIExpression()), !dbg !1932
  br label %432, !dbg !2174

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2175
  %425 = icmp eq i8 %424, 0, !dbg !2175
  br i1 %425, label %432, label %426, !dbg !2176

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2177
  br i1 %427, label %428, label %430, !dbg !2180

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2177
  store i8 92, i8* %429, align 1, !dbg !2177, !tbaa !968
  br label %430, !dbg !2177

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %431, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1915
  br label %432, !dbg !2181

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2182
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1854
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2183
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2184
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2186
  call void @llvm.dbg.value(metadata i8 %437, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %436, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %435, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %434, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %433, metadata !1783, metadata !DIExpression()), !dbg !1846
  %438 = add i64 %371, 1, !dbg !2187
  %439 = icmp ugt i64 %369, %438, !dbg !2189
  br i1 %439, label %440, label %562, !dbg !2190

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2191
  %442 = icmp ne i8 %441, 0, !dbg !2191
  %443 = and i8 %437, 1, !dbg !2191
  %444 = icmp eq i8 %443, 0, !dbg !2191
  %445 = and i1 %442, %444, !dbg !2191
  br i1 %445, label %446, label %457, !dbg !2191

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2194
  br i1 %447, label %448, label %450, !dbg !2198

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2194
  store i8 39, i8* %449, align 1, !dbg !2194, !tbaa !968
  br label %450, !dbg !2194

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %451, metadata !1783, metadata !DIExpression()), !dbg !1846
  %452 = icmp ult i64 %451, %129, !dbg !2199
  br i1 %452, label %453, label %455, !dbg !2202

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2199
  store i8 39, i8* %454, align 1, !dbg !2199, !tbaa !968
  br label %455, !dbg !2199

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %456, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %457, !dbg !2203

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2204
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %459, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %458, metadata !1783, metadata !DIExpression()), !dbg !1846
  %460 = icmp ult i64 %458, %129, !dbg !2205
  br i1 %460, label %461, label %463, !dbg !2207

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2205
  store i8 %435, i8* %462, align 1, !dbg !2205, !tbaa !968
  br label %463, !dbg !2205

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %464, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %438, metadata !1782, metadata !DIExpression()), !dbg !1906
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2208
  %466 = load i8, i8* %465, align 1, !dbg !2208, !tbaa !968
  call void @llvm.dbg.value(metadata i8 %466, metadata !1793, metadata !DIExpression()), !dbg !1932
  br label %370, !dbg !2209, !llvm.loop !2210

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2213
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1905
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1847
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2214
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1905
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1905
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1930
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1930
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1930
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %476, metadata !1800, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 %475, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %155, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %474, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %473, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %472, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %471, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %470, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %469, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %468, metadata !1782, metadata !DIExpression()), !dbg !1906
  br i1 %105, label %489, label %478, !dbg !2215

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
  br i1 %112, label %490, label %512, !dbg !2217

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2218

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
  %501 = lshr i8 %494, 5, !dbg !2219
  %502 = zext i8 %501 to i64, !dbg !2219
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2220
  %504 = load i32, i32* %503, align 4, !dbg !2220, !tbaa !819
  %505 = and i8 %494, 31, !dbg !2221
  %506 = zext i8 %505 to i32, !dbg !2221
  %507 = shl i32 1, %506, !dbg !2222
  %508 = and i32 %504, %507, !dbg !2222
  %509 = icmp eq i32 %508, 0, !dbg !2222
  %510 = icmp eq i8 %155, 0, !dbg !2223
  %511 = and i1 %510, %509, !dbg !2224
  br i1 %511, label %562, label %524, !dbg !2224

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
  %523 = icmp eq i8 %155, 0, !dbg !2223
  br i1 %523, label %562, label %524, !dbg !2225

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2226
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1905
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1847
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2214
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1854
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1855
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2227
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1930
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %532, metadata !1800, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 %531, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %530, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %529, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %528, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %527, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %526, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %525, metadata !1782, metadata !DIExpression()), !dbg !1906
  br i1 %110, label %534, label %661, !dbg !2230

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1916
  %535 = and i8 %529, 1, !dbg !2232
  %536 = icmp eq i8 %535, 0, !dbg !2232
  %537 = and i1 %114, %536, !dbg !2232
  br i1 %537, label %538, label %554, !dbg !2232

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2234
  br i1 %539, label %540, label %542, !dbg !2238

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2234
  store i8 39, i8* %541, align 1, !dbg !2234, !tbaa !968
  br label %542, !dbg !2234

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %543, metadata !1783, metadata !DIExpression()), !dbg !1846
  %544 = icmp ult i64 %543, %533, !dbg !2239
  br i1 %544, label %545, label %547, !dbg !2242

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2239
  store i8 36, i8* %546, align 1, !dbg !2239, !tbaa !968
  br label %547, !dbg !2239

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %548, metadata !1783, metadata !DIExpression()), !dbg !1846
  %549 = icmp ult i64 %548, %533, !dbg !2243
  br i1 %549, label %550, label %552, !dbg !2246

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2243
  store i8 39, i8* %551, align 1, !dbg !2243, !tbaa !968
  br label %552, !dbg !2243

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %553, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 1, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %554, !dbg !2247

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2204
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %556, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %555, metadata !1783, metadata !DIExpression()), !dbg !1846
  %557 = icmp ult i64 %555, %533, !dbg !2248
  br i1 %557, label %558, label %560, !dbg !2251

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2248
  store i8 92, i8* %559, align 1, !dbg !2248, !tbaa !968
  br label %560, !dbg !2248

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %561, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %572, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %571, metadata !1800, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 %570, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %569, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %568, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %567, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %566, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %565, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %564, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %563, metadata !1782, metadata !DIExpression()), !dbg !1906
  br label %589, !dbg !2252

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2226
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1905
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1847
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2214
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1854
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1855
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2255
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1930
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1930
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %571, metadata !1800, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 %570, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %569, metadata !1793, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %568, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %567, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %566, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %565, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %564, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %563, metadata !1782, metadata !DIExpression()), !dbg !1906
  %573 = and i8 %567, 1, !dbg !2252
  %574 = icmp ne i8 %573, 0, !dbg !2252
  %575 = and i8 %570, 1, !dbg !2252
  %576 = icmp eq i8 %575, 0, !dbg !2252
  %577 = and i1 %574, %576, !dbg !2252
  br i1 %577, label %578, label %589, !dbg !2252

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2256
  br i1 %579, label %580, label %582, !dbg !2260

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2256
  store i8 39, i8* %581, align 1, !dbg !2256, !tbaa !968
  br label %582, !dbg !2256

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %583, metadata !1783, metadata !DIExpression()), !dbg !1846
  %584 = icmp ult i64 %583, %572, !dbg !2261
  br i1 %584, label %585, label %587, !dbg !2264

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2261
  store i8 39, i8* %586, align 1, !dbg !2261, !tbaa !968
  br label %587, !dbg !2261

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %588, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1854
  br label %589, !dbg !2265

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2204
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %598, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %597, metadata !1783, metadata !DIExpression()), !dbg !1846
  %599 = icmp ult i64 %597, %590, !dbg !2266
  br i1 %599, label %600, label %602, !dbg !2269

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2266
  store i8 %592, i8* %601, align 1, !dbg !2266, !tbaa !968
  br label %602, !dbg !2266

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %603, metadata !1783, metadata !DIExpression()), !dbg !1846
  %604 = and i8 %591, 1, !dbg !2270
  %605 = icmp eq i8 %604, 0, !dbg !2270
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2272
  call void @llvm.dbg.value(metadata i8 %606, metadata !1792, metadata !DIExpression()), !dbg !1856
  br label %607, !dbg !2273

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2226
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1905
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1847
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2214
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1854
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1905
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1856
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %614, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %613, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %612, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %611, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %610, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %609, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %608, metadata !1782, metadata !DIExpression()), !dbg !1906
  %616 = add i64 %608, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %616, metadata !1782, metadata !DIExpression()), !dbg !1906
  br label %121, !dbg !2275, !llvm.loop !2276

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %125, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %128, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  %619 = icmp eq i64 %123, 0, !dbg !2278
  %620 = and i1 %114, %619, !dbg !2280
  %621 = xor i1 %620, true, !dbg !2280
  %622 = or i1 %110, %621, !dbg !2280
  br i1 %622, label %623, label %661, !dbg !2280

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2281
  %625 = xor i1 %624, true, !dbg !2281
  %626 = and i8 %127, 1, !dbg !2283
  %627 = icmp eq i8 %626, 0, !dbg !2283
  %628 = or i1 %627, %625, !dbg !2281
  br i1 %628, label %638, label %629, !dbg !2281

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2284
  %631 = icmp eq i8 %630, 0, !dbg !2284
  br i1 %631, label %634, label %632, !dbg !2287

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %618, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1781, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1776, metadata !DIExpression()), !dbg !1840
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2288
  br label %671, !dbg !2289

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2290
  %636 = icmp ne i64 %124, 0, !dbg !2292
  %637 = and i1 %636, %635, !dbg !2293
  br i1 %637, label %27, label %638, !dbg !2293

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %129, metadata !1774, metadata !DIExpression()), !dbg !1838
  %639 = icmp ne i8* %98, null, !dbg !2294
  %640 = and i1 %639, %110, !dbg !2296
  br i1 %640, label %641, label %656, !dbg !2296

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %123, metadata !1783, metadata !DIExpression()), !dbg !1846
  %642 = load i8, i8* %98, align 1, !dbg !2297, !tbaa !968
  %643 = icmp eq i8 %642, 0, !dbg !2300
  br i1 %643, label %656, label %644, !dbg !2300

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %647, metadata !1783, metadata !DIExpression()), !dbg !1846
  %648 = icmp ult i64 %647, %129, !dbg !2301
  br i1 %648, label %649, label %651, !dbg !2304

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2301
  store i8 %645, i8* %650, align 1, !dbg !2301, !tbaa !968
  br label %651, !dbg !2301

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2304
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %653, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %652, metadata !1783, metadata !DIExpression()), !dbg !1846
  %654 = load i8, i8* %653, align 1, !dbg !2297, !tbaa !968
  %655 = icmp eq i8 %654, 0, !dbg !2300
  br i1 %655, label %656, label %644, !dbg !2300, !llvm.loop !2306

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1846
  call void @llvm.dbg.value(metadata i64 %657, metadata !1783, metadata !DIExpression()), !dbg !1846
  %658 = icmp ult i64 %657, %129, !dbg !2308
  br i1 %658, label %659, label %671, !dbg !2310

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2311
  store i8 0, i8* %660, align 1, !dbg !2312, !tbaa !968
  br label %671, !dbg !2311

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %663, metadata !1776, metadata !DIExpression()), !dbg !1840
  %665 = icmp ne i32 %662, 2, !dbg !2313
  %666 = icmp eq i8 %102, 0, !dbg !2315
  %667 = or i1 %665, %666, !dbg !2316
  call void @llvm.dbg.value(metadata i32 4, metadata !1777, metadata !DIExpression()), !dbg !1841
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2316
  call void @llvm.dbg.value(metadata i32 %668, metadata !1777, metadata !DIExpression()), !dbg !1841
  %669 = and i32 %5, -3, !dbg !2317
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2318
  br label %671, !dbg !2319

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2320
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2325, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i32 %1, metadata !2326, metadata !DIExpression()), !dbg !2330
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %3, metadata !2327, metadata !DIExpression()), !dbg !2332
  %4 = icmp eq i8* %3, %0, !dbg !2333
  br i1 %4, label %5, label %71, !dbg !2335

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %6, metadata !2328, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8* %6, metadata !2338, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* null, metadata !2344, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 85, metadata !2345, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 84, metadata !2346, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 70, metadata !2347, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 45, metadata !2348, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 56, metadata !2349, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2352, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2366
  %7 = load i8, i8* %6, align 1, !dbg !2367, !tbaa !968
  %8 = and i8 %7, -33, !dbg !2367
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2367

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* null, metadata !2374, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 84, metadata !2375, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 70, metadata !2376, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 45, metadata !2377, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 56, metadata !2378, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2395
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2396
  %11 = load i8, i8* %10, align 1, !dbg !2396, !tbaa !968
  %12 = and i8 %11, -33, !dbg !2396
  %13 = icmp eq i8 %12, 84, !dbg !2396
  br i1 %13, label %14, label %68, !dbg !2396

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2398, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* null, metadata !2403, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 70, metadata !2404, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 45, metadata !2405, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 56, metadata !2406, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2422
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2423
  %16 = load i8, i8* %15, align 1, !dbg !2423, !tbaa !968
  %17 = and i8 %16, -33, !dbg !2423
  %18 = icmp eq i8 %17, 70, !dbg !2423
  br i1 %18, label %19, label %68, !dbg !2423

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* null, metadata !2430, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 45, metadata !2431, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 56, metadata !2432, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2436, metadata !DIExpression()), !dbg !2447
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2448
  %21 = load i8, i8* %20, align 1, !dbg !2448, !tbaa !968
  %22 = icmp eq i8 %21, 45, !dbg !2448
  br i1 %22, label %23, label %68, !dbg !2450

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2451, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* null, metadata !2456, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 56, metadata !2457, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2471
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2472
  %25 = load i8, i8* %24, align 1, !dbg !2472, !tbaa !968
  %26 = icmp eq i8 %25, 56, !dbg !2472
  br i1 %26, label %27, label %68, !dbg !2474

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2493
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2494
  %29 = load i8, i8* %28, align 1, !dbg !2494, !tbaa !968
  %30 = icmp eq i8 %29, 0, !dbg !2494
  br i1 %30, label %31, label %68, !dbg !2496

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2497, !tbaa !968
  %33 = icmp eq i8 %32, 96, !dbg !2498
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.89, i64 0, i64 0), !dbg !2497
  br label %71, !dbg !2499

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* null, metadata !2374, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 66, metadata !2375, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 49, metadata !2376, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 48, metadata !2378, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 51, metadata !2379, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 48, metadata !2380, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2512
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2513
  %37 = load i8, i8* %36, align 1, !dbg !2513, !tbaa !968
  %38 = and i8 %37, -33, !dbg !2513
  %39 = icmp eq i8 %38, 66, !dbg !2513
  br i1 %39, label %40, label %68, !dbg !2513

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2398, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* null, metadata !2403, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 49, metadata !2404, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 56, metadata !2405, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 48, metadata !2406, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 51, metadata !2407, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 48, metadata !2408, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2523
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2524
  %42 = load i8, i8* %41, align 1, !dbg !2524, !tbaa !968
  %43 = icmp eq i8 %42, 49, !dbg !2524
  br i1 %43, label %44, label %68, !dbg !2525

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* null, metadata !2430, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 56, metadata !2431, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 48, metadata !2432, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 51, metadata !2433, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 48, metadata !2434, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2436, metadata !DIExpression()), !dbg !2534
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2535
  %46 = load i8, i8* %45, align 1, !dbg !2535, !tbaa !968
  %47 = icmp eq i8 %46, 56, !dbg !2535
  br i1 %47, label %48, label %68, !dbg !2536

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2451, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* null, metadata !2456, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 48, metadata !2457, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 51, metadata !2458, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 48, metadata !2459, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2544
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2545
  %50 = load i8, i8* %49, align 1, !dbg !2545, !tbaa !968
  %51 = icmp eq i8 %50, 48, !dbg !2545
  br i1 %51, label %52, label %68, !dbg !2546

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 51, metadata !2481, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 48, metadata !2482, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2553
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2554
  %54 = load i8, i8* %53, align 1, !dbg !2554, !tbaa !968
  %55 = icmp eq i8 %54, 51, !dbg !2554
  br i1 %55, label %56, label %68, !dbg !2555

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2556, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* null, metadata !2561, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 48, metadata !2562, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2564, metadata !DIExpression()), !dbg !2572
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2573
  %58 = load i8, i8* %57, align 1, !dbg !2573, !tbaa !968
  %59 = icmp eq i8 %58, 48, !dbg !2573
  br i1 %59, label %60, label %68, !dbg !2575

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2576, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* null, metadata !2581, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2590
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2591
  %62 = load i8, i8* %61, align 1, !dbg !2591, !tbaa !968
  %63 = icmp eq i8 %62, 0, !dbg !2591
  br i1 %63, label %64, label %68, !dbg !2593

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2594, !tbaa !968
  %66 = icmp eq i8 %65, 96, !dbg !2595
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.90, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.91, i64 0, i64 0), !dbg !2594
  br label %71, !dbg !2596

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2597
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !2598
  br label %71, !dbg !2599

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2600
  ret i8* %72, !dbg !2601
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %0, metadata !2612, metadata !DIExpression()) #12, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()) #12, !dbg !2627
  call void @llvm.dbg.value(metadata i64* null, metadata !2618, metadata !DIExpression()) #12, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2619, metadata !DIExpression()) #12, !dbg !2629
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2630
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2620, metadata !DIExpression()) #12, !dbg !2631
  %6 = tail call i32* @__errno_location() #18, !dbg !2632
  %7 = load i32, i32* %6, align 4, !dbg !2632, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %7, metadata !2621, metadata !DIExpression()) #12, !dbg !2633
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2634
  %9 = load i32, i32* %8, align 4, !dbg !2634, !tbaa !1706
  %10 = or i32 %9, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %10, metadata !2622, metadata !DIExpression()) #12, !dbg !2636
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2637
  %12 = load i32, i32* %11, align 8, !dbg !2637, !tbaa !1646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2638
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2639
  %15 = load i8*, i8** %14, align 8, !dbg !2639, !tbaa !1732
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2640
  %17 = load i8*, i8** %16, align 8, !dbg !2640, !tbaa !1735
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2641
  %19 = add i64 %18, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %19, metadata !2623, metadata !DIExpression()) #12, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %19, metadata !2644, metadata !DIExpression()) #12, !dbg !2649
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %20, metadata !2624, metadata !DIExpression()) #12, !dbg !2652
  %21 = load i32, i32* %11, align 8, !dbg !2653, !tbaa !1646
  %22 = load i8*, i8** %14, align 8, !dbg !2654, !tbaa !1732
  %23 = load i8*, i8** %16, align 8, !dbg !2655, !tbaa !1735
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2656
  store i32 %7, i32* %6, align 4, !dbg !2657, !tbaa !819
  ret i8* %20, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2612, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64* %2, metadata !2618, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2619, metadata !DIExpression()), !dbg !2662
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2663
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2620, metadata !DIExpression()), !dbg !2664
  %7 = tail call i32* @__errno_location() #18, !dbg !2665
  %8 = load i32, i32* %7, align 4, !dbg !2665, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %8, metadata !2621, metadata !DIExpression()), !dbg !2666
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2667
  %10 = load i32, i32* %9, align 4, !dbg !2667, !tbaa !1706
  %11 = icmp ne i64* %2, null, !dbg !2668
  %12 = xor i1 %11, true, !dbg !2668
  %13 = zext i1 %12 to i32, !dbg !2668
  %14 = or i32 %10, %13, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %14, metadata !2622, metadata !DIExpression()), !dbg !2670
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2671
  %16 = load i32, i32* %15, align 8, !dbg !2671, !tbaa !1646
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2672
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2673
  %19 = load i8*, i8** %18, align 8, !dbg !2673, !tbaa !1732
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2674
  %21 = load i8*, i8** %20, align 8, !dbg !2674, !tbaa !1735
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2675
  %23 = add i64 %22, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %23, metadata !2623, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %23, metadata !2644, metadata !DIExpression()) #12, !dbg !2678
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %24, metadata !2624, metadata !DIExpression()), !dbg !2681
  %25 = load i32, i32* %15, align 8, !dbg !2682, !tbaa !1646
  %26 = load i8*, i8** %18, align 8, !dbg !2683, !tbaa !1732
  %27 = load i8*, i8** %20, align 8, !dbg !2684, !tbaa !1735
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2685
  store i32 %8, i32* %7, align 4, !dbg !2686, !tbaa !819
  br i1 %11, label %29, label %30, !dbg !2687

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2688, !tbaa !2690
  br label %30, !dbg !2692

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2694 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2698, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 1, metadata !2697, metadata !DIExpression()), !dbg !2700
  %2 = load i32, i32* @nslots, align 4, !dbg !2701, !tbaa !819
  %3 = icmp sgt i32 %2, 1, !dbg !2704
  br i1 %3, label %4, label %12, !dbg !2705

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2697, metadata !DIExpression()), !dbg !2700
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2706
  %7 = load i8*, i8** %6, align 8, !dbg !2706, !tbaa !2707
  tail call void @free(i8* %7) #12, !dbg !2709
  %8 = add nuw nsw i64 %5, 1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2700
  %9 = load i32, i32* @nslots, align 4, !dbg !2701, !tbaa !819
  %10 = sext i32 %9 to i64, !dbg !2704
  %11 = icmp slt i64 %8, %10, !dbg !2704
  br i1 %11, label %4, label %12, !dbg !2705, !llvm.loop !2711

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2713
  %14 = load i8*, i8** %13, align 8, !dbg !2713, !tbaa !2707
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2715
  br i1 %15, label %17, label %16, !dbg !2716

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2717
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2719, !tbaa !2720
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2721, !tbaa !2707
  br label %17, !dbg !2722

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2723
  br i1 %18, label %21, label %19, !dbg !2725

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2726
  tail call void @free(i8* %20) #12, !dbg !2728
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2729, !tbaa !714
  br label %21, !dbg !2730

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2731, !tbaa !819
  ret void, !dbg !2732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8* %1, metadata !2738, metadata !DIExpression()), !dbg !2740
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2741
  ret i8* %3, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 %2, metadata !2749, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2750, metadata !DIExpression()), !dbg !2765
  %5 = tail call i32* @__errno_location() #18, !dbg !2766
  %6 = load i32, i32* %5, align 4, !dbg !2766, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %6, metadata !2751, metadata !DIExpression()), !dbg !2767
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2768, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2752, metadata !DIExpression()), !dbg !2769
  %8 = icmp slt i32 %0, 0, !dbg !2770
  br i1 %8, label %9, label %10, !dbg !2772

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2773
  unreachable, !dbg !2773

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2774, !tbaa !819
  %12 = icmp sgt i32 %11, %0, !dbg !2775
  br i1 %12, label %34, label %13, !dbg !2776

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2777
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2756, metadata !DIExpression()), !dbg !2778
  %15 = icmp eq i32 %0, 2147483647, !dbg !2779
  br i1 %15, label %16, label %17, !dbg !2781

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2782
  unreachable, !dbg !2782

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2783
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2783
  %20 = add nsw i32 %0, 1, !dbg !2784
  %21 = sext i32 %20 to i64, !dbg !2785
  %22 = shl nsw i64 %21, 4, !dbg !2786
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2787
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2787
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2752, metadata !DIExpression()), !dbg !2769
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2788, !tbaa !714
  br i1 %14, label %25, label %26, !dbg !2789

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2790, !tbaa.struct !2792
  br label %26, !dbg !2793

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2794, !tbaa !819
  %28 = sext i32 %27 to i64, !dbg !2795
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2795
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2796
  %31 = sub nsw i32 %20, %27, !dbg !2797
  %32 = sext i32 %31 to i64, !dbg !2798
  %33 = shl nsw i64 %32, 4, !dbg !2799
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2796
  store i32 %20, i32* @nslots, align 4, !dbg !2800, !tbaa !819
  br label %34, !dbg !2801

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2802
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2752, metadata !DIExpression()), !dbg !2769
  %36 = sext i32 %0 to i64, !dbg !2803
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2804
  %38 = load i64, i64* %37, align 8, !dbg !2804, !tbaa !2720
  call void @llvm.dbg.value(metadata i64 %38, metadata !2757, metadata !DIExpression()), !dbg !2805
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2806
  %40 = load i8*, i8** %39, align 8, !dbg !2806, !tbaa !2707
  call void @llvm.dbg.value(metadata i8* %40, metadata !2759, metadata !DIExpression()), !dbg !2807
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2808
  %42 = load i32, i32* %41, align 4, !dbg !2808, !tbaa !1706
  %43 = or i32 %42, 1, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %43, metadata !2760, metadata !DIExpression()), !dbg !2810
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2811
  %45 = load i32, i32* %44, align 8, !dbg !2811, !tbaa !1646
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2812
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2813
  %48 = load i8*, i8** %47, align 8, !dbg !2813, !tbaa !1732
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2814
  %50 = load i8*, i8** %49, align 8, !dbg !2814, !tbaa !1735
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %51, metadata !2761, metadata !DIExpression()), !dbg !2816
  %52 = icmp ugt i64 %38, %51, !dbg !2817
  br i1 %52, label %63, label %53, !dbg !2819

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %54, metadata !2757, metadata !DIExpression()), !dbg !2805
  store i64 %54, i64* %37, align 8, !dbg !2822, !tbaa !2720
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2823
  br i1 %55, label %57, label %56, !dbg !2825

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2826
  br label %57, !dbg !2826

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2644, metadata !DIExpression()) #12, !dbg !2827
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %58, metadata !2759, metadata !DIExpression()), !dbg !2807
  store i8* %58, i8** %39, align 8, !dbg !2830, !tbaa !2707
  %59 = load i32, i32* %44, align 8, !dbg !2831, !tbaa !1646
  %60 = load i8*, i8** %47, align 8, !dbg !2832, !tbaa !1732
  %61 = load i8*, i8** %49, align 8, !dbg !2833, !tbaa !1735
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2834
  br label %63, !dbg !2835

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2836
  call void @llvm.dbg.value(metadata i8* %64, metadata !2759, metadata !DIExpression()), !dbg !2807
  store i32 %6, i32* %5, align 4, !dbg !2837, !tbaa !819
  ret i8* %64, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2839 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %2, metadata !2845, metadata !DIExpression()), !dbg !2848
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2849
  ret i8* %4, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()) #12, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #12, !dbg !2859
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2860
  ret i8* %2, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2843, metadata !DIExpression()) #12, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #12, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %1, metadata !2845, metadata !DIExpression()) #12, !dbg !2873
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2874
  ret i8* %3, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2876 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 %1, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %2, metadata !2882, metadata !DIExpression()), !dbg !2886
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2883, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %1, metadata !2889, metadata !DIExpression()) #12, !dbg !2895
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2897, !alias.scope !2898
  %6 = icmp eq i32 %1, 10, !dbg !2901
  br i1 %6, label %7, label %8, !dbg !2903

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2904, !noalias !2898
  unreachable, !dbg !2904

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2905
  store i32 %1, i32* %9, align 8, !dbg !2906, !tbaa !1646, !alias.scope !2898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2883, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2894, metadata !DIExpression(DW_OP_deref)), !dbg !2897
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2907
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2908
  ret i8* %10, !dbg !2909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2910 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %1, metadata !2915, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !2916, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %3, metadata !2917, metadata !DIExpression()), !dbg !2922
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2923
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2918, metadata !DIExpression(DW_OP_deref)), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %1, metadata !2889, metadata !DIExpression()) #12, !dbg !2925
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2927, !alias.scope !2928
  %7 = icmp eq i32 %1, 10, !dbg !2931
  br i1 %7, label %8, label %9, !dbg !2932

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2933, !noalias !2928
  unreachable, !dbg !2933

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2934
  store i32 %1, i32* %10, align 8, !dbg !2935, !tbaa !1646, !alias.scope !2928
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2918, metadata !DIExpression(DW_OP_deref)), !dbg !2924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2894, metadata !DIExpression(DW_OP_deref)), !dbg !2927
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2937
  ret i8* %11, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2939 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()) #12, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()) #12, !dbg !2950
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2951
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2883, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()) #12, !dbg !2953
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2955, !alias.scope !2956
  %5 = icmp eq i32 %0, 10, !dbg !2959
  br i1 %5, label %6, label %7, !dbg !2960

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !2961, !noalias !2956
  unreachable, !dbg !2961

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2962
  store i32 %0, i32* %8, align 8, !dbg !2963, !tbaa !1646, !alias.scope !2956
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2883, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2952
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2894, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2955
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2965
  ret i8* %9, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2967 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %2, metadata !2973, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()) #12, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %1, metadata !2916, metadata !DIExpression()) #12, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()) #12, !dbg !2981
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2982
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2918, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()) #12, !dbg !2984
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2986, !alias.scope !2987
  %6 = icmp eq i32 %0, 10, !dbg !2990
  br i1 %6, label %7, label %8, !dbg !2991

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2992, !noalias !2987
  unreachable, !dbg !2992

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2993
  store i32 %0, i32* %9, align 8, !dbg !2994, !tbaa !1646, !alias.scope !2987
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2918, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2894, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2986
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2996
  ret i8* %10, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2998 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8 %2, metadata !3004, metadata !DIExpression()), !dbg !3008
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3009
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3010, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3005, metadata !DIExpression(DW_OP_deref)), !dbg !3012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1665, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 %2, metadata !1666, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %2, metadata !1668, metadata !DIExpression()), !dbg !3017
  %6 = lshr i8 %2, 5, !dbg !3018
  %7 = zext i8 %6 to i64, !dbg !3018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3019
  call void @llvm.dbg.value(metadata i32* %8, metadata !1670, metadata !DIExpression()), !dbg !3020
  %9 = and i8 %2, 31, !dbg !3021
  %10 = zext i8 %9 to i32, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %10, metadata !1672, metadata !DIExpression()), !dbg !3022
  %11 = load i32, i32* %8, align 4, !dbg !3023, !tbaa !819
  %12 = lshr i32 %11, %10, !dbg !3024
  %13 = and i32 %12, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %13, metadata !1673, metadata !DIExpression()), !dbg !3026
  %14 = xor i32 %13, 1, !dbg !3027
  %15 = shl i32 %14, %10, !dbg !3028
  %16 = xor i32 %15, %11, !dbg !3029
  store i32 %16, i32* %8, align 4, !dbg !3029, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3005, metadata !DIExpression(DW_OP_deref)), !dbg !3012
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3030
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3031
  ret i8* %17, !dbg !3032
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3033 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3037, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8 %1, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()) #12, !dbg !3041
  call void @llvm.dbg.value(metadata i64 -1, metadata !3003, metadata !DIExpression()) #12, !dbg !3043
  call void @llvm.dbg.value(metadata i8 %1, metadata !3004, metadata !DIExpression()) #12, !dbg !3044
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3045
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3046, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1665, metadata !DIExpression()) #12, !dbg !3048
  call void @llvm.dbg.value(metadata i8 %1, metadata !1666, metadata !DIExpression()) #12, !dbg !3050
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #12, !dbg !3051
  call void @llvm.dbg.value(metadata i8 %1, metadata !1668, metadata !DIExpression()) #12, !dbg !3052
  %5 = lshr i8 %1, 5, !dbg !3053
  %6 = zext i8 %5 to i64, !dbg !3053
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3054
  call void @llvm.dbg.value(metadata i32* %7, metadata !1670, metadata !DIExpression()) #12, !dbg !3055
  %8 = and i8 %1, 31, !dbg !3056
  %9 = zext i8 %8 to i32, !dbg !3056
  call void @llvm.dbg.value(metadata i32 %9, metadata !1672, metadata !DIExpression()) #12, !dbg !3057
  %10 = load i32, i32* %7, align 4, !dbg !3058, !tbaa !819
  %11 = lshr i32 %10, %9, !dbg !3059
  %12 = and i32 %11, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %12, metadata !1673, metadata !DIExpression()) #12, !dbg !3061
  %13 = xor i32 %12, 1, !dbg !3062
  %14 = shl i32 %13, %9, !dbg !3063
  %15 = xor i32 %14, %10, !dbg !3064
  store i32 %15, i32* %7, align 4, !dbg !3064, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3047
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3066
  ret i8* %16, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3068 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !3037, metadata !DIExpression()) #12, !dbg !3072
  call void @llvm.dbg.value(metadata i8 58, metadata !3038, metadata !DIExpression()) #12, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()) #12, !dbg !3075
  call void @llvm.dbg.value(metadata i64 -1, metadata !3003, metadata !DIExpression()) #12, !dbg !3077
  call void @llvm.dbg.value(metadata i8 58, metadata !3004, metadata !DIExpression()) #12, !dbg !3078
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3079
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3080, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1665, metadata !DIExpression()) #12, !dbg !3082
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()) #12, !dbg !3084
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #12, !dbg !3085
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()) #12, !dbg !3086
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3087
  call void @llvm.dbg.value(metadata i32* %4, metadata !1670, metadata !DIExpression()) #12, !dbg !3088
  call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()) #12, !dbg !3089
  %5 = load i32, i32* %4, align 4, !dbg !3090, !tbaa !819
  %6 = or i32 %5, 67108864, !dbg !3091
  store i32 %6, i32* %4, align 4, !dbg !3091, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3081
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3093
  ret i8* %7, !dbg !3094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3095 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()) #12, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()) #12, !dbg !3103
  call void @llvm.dbg.value(metadata i8 58, metadata !3004, metadata !DIExpression()) #12, !dbg !3104
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3105
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3106, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3107
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1665, metadata !DIExpression()) #12, !dbg !3108
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()) #12, !dbg !3110
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #12, !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()) #12, !dbg !3112
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %5, metadata !1670, metadata !DIExpression()) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()) #12, !dbg !3115
  %6 = load i32, i32* %5, align 4, !dbg !3116, !tbaa !819
  %7 = or i32 %6, 67108864, !dbg !3117
  store i32 %7, i32* %5, align 4, !dbg !3117, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3005, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3107
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3119
  ret i8* %8, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3121 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2894, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %1, metadata !3124, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8* %2, metadata !3125, metadata !DIExpression()), !dbg !3131
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3132
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3133
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %1, metadata !2889, metadata !DIExpression()) #12, !dbg !3134
  call void @llvm.dbg.value(metadata i32 0, metadata !2894, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3127
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3127, !alias.scope !3135
  %8 = icmp eq i32 %1, 10, !dbg !3138
  br i1 %8, label %9, label %10, !dbg !3139

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3140, !noalias !3135
  unreachable, !dbg !3140

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2894, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3127
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3133
  store i32 %1, i32* %11, align 8, !dbg !3133
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3133
  %13 = bitcast i32* %12 to i8*, !dbg !3133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3133
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3126, metadata !DIExpression(DW_OP_deref)), !dbg !3141
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1665, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()), !dbg !3146
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3147
  call void @llvm.dbg.value(metadata i32* %14, metadata !1670, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()), !dbg !3149
  %15 = load i32, i32* %14, align 4, !dbg !3150, !tbaa !819
  %16 = or i32 %15, 67108864, !dbg !3151
  store i32 %16, i32* %14, align 4, !dbg !3151, !tbaa !819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3126, metadata !DIExpression(DW_OP_deref)), !dbg !3141
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3153
  ret i8* %17, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3155 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %3, metadata !3162, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %0, metadata !3167, metadata !DIExpression()) #12, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3172, metadata !DIExpression()) #12, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %2, metadata !3173, metadata !DIExpression()) #12, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %3, metadata !3174, metadata !DIExpression()) #12, !dbg !3181
  call void @llvm.dbg.value(metadata i64 -1, metadata !3175, metadata !DIExpression()) #12, !dbg !3182
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3184, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1714, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !1715, metadata !DIExpression()) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %2, metadata !1716, metadata !DIExpression()) #12, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1714, metadata !DIExpression()) #12, !dbg !3186
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3190
  store i32 10, i32* %7, align 8, !dbg !3191, !tbaa !1646
  %8 = icmp ne i8* %1, null, !dbg !3192
  %9 = icmp ne i8* %2, null, !dbg !3193
  %10 = and i1 %8, %9, !dbg !3194
  br i1 %10, label %12, label %11, !dbg !3194

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3195
  unreachable, !dbg !3195

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3196
  store i8* %1, i8** %13, align 8, !dbg !3197, !tbaa !1732
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3198
  store i8* %2, i8** %14, align 8, !dbg !3199, !tbaa !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3185
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3201
  ret i8* %15, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3168 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3167, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8* %1, metadata !3172, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %2, metadata !3173, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %3, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %4, metadata !3175, metadata !DIExpression()), !dbg !3207
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3209, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1714, metadata !DIExpression()) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !1715, metadata !DIExpression()) #12, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !1716, metadata !DIExpression()) #12, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1714, metadata !DIExpression()) #12, !dbg !3211
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3215
  store i32 10, i32* %8, align 8, !dbg !3216, !tbaa !1646
  %9 = icmp ne i8* %1, null, !dbg !3217
  %10 = icmp ne i8* %2, null, !dbg !3218
  %11 = and i1 %9, %10, !dbg !3219
  br i1 %11, label %13, label %12, !dbg !3219

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3220
  unreachable, !dbg !3220

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3221
  store i8* %1, i8** %14, align 8, !dbg !3222, !tbaa !1732
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3223
  store i8* %2, i8** %15, align 8, !dbg !3224, !tbaa !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3210
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3225
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3226
  ret i8* %16, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3228 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %1, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3159, metadata !DIExpression()) #12, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #12, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %1, metadata !3161, metadata !DIExpression()) #12, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %2, metadata !3162, metadata !DIExpression()) #12, !dbg !3242
  call void @llvm.dbg.value(metadata i32 0, metadata !3167, metadata !DIExpression()) #12, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %0, metadata !3172, metadata !DIExpression()) #12, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3173, metadata !DIExpression()) #12, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3174, metadata !DIExpression()) #12, !dbg !3247
  call void @llvm.dbg.value(metadata i64 -1, metadata !3175, metadata !DIExpression()) #12, !dbg !3248
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3249
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3250, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3251
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()) #12, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()) #12, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !1716, metadata !DIExpression()) #12, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()) #12, !dbg !3252
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3256
  store i32 10, i32* %6, align 8, !dbg !3257, !tbaa !1646
  %7 = icmp ne i8* %0, null, !dbg !3258
  %8 = icmp ne i8* %1, null, !dbg !3259
  %9 = and i1 %7, %8, !dbg !3260
  br i1 %9, label %11, label %10, !dbg !3260

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3261
  unreachable, !dbg !3261

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3262
  store i8* %0, i8** %12, align 8, !dbg !3263, !tbaa !1732
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3264
  store i8* %1, i8** %13, align 8, !dbg !3265, !tbaa !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3251
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3266
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3267
  ret i8* %14, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3269 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %2, metadata !3275, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %3, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 0, metadata !3167, metadata !DIExpression()) #12, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %0, metadata !3172, metadata !DIExpression()) #12, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3173, metadata !DIExpression()) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %2, metadata !3174, metadata !DIExpression()) #12, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %3, metadata !3175, metadata !DIExpression()) #12, !dbg !3286
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3287
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3288, !tbaa.struct !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1714, metadata !DIExpression()) #12, !dbg !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()) #12, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !1716, metadata !DIExpression()) #12, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1714, metadata !DIExpression()) #12, !dbg !3290
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3294
  store i32 10, i32* %7, align 8, !dbg !3295, !tbaa !1646
  %8 = icmp ne i8* %0, null, !dbg !3296
  %9 = icmp ne i8* %1, null, !dbg !3297
  %10 = and i1 %8, %9, !dbg !3298
  br i1 %10, label %12, label %11, !dbg !3298

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3299
  unreachable, !dbg !3299

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3300
  store i8* %0, i8** %13, align 8, !dbg !3301, !tbaa !1732
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3302
  store i8* %1, i8** %14, align 8, !dbg !3303, !tbaa !1735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3289
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3305
  ret i8* %15, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3316
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3317
  ret i8* %4, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3319 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #12, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #12, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()) #12, !dbg !3330
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3331
  ret i8* %3, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3337, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3338, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()) #12, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()) #12, !dbg !3343
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #12, !dbg !3344
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3345
  ret i8* %3, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3337, metadata !DIExpression()) #12, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()) #12, !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #12, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #12, !dbg !3358
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #12, !dbg !3359
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3360
  ret i8* %2, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3362 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3419, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8** %4, metadata !3423, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %5, metadata !3424, metadata !DIExpression()), !dbg !3430
  %7 = icmp eq i8* %1, null, !dbg !3431
  br i1 %7, label %10, label %8, !dbg !3433

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3434
  br label %12, !dbg !3434

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3435
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.98, i64 0, i64 0), i32 5) #12, !dbg !3436
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3436
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.99, i64 0, i64 0), i32 5) #12, !dbg !3437
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3437
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
  ], !dbg !3438

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3439
  unreachable, !dbg !3439

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.100, i64 0, i64 0), i32 5) #12, !dbg !3441
  %20 = load i8*, i8** %4, align 8, !dbg !3441, !tbaa !714
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3441
  br label %146, !dbg !3442

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.101, i64 0, i64 0), i32 5) #12, !dbg !3443
  %24 = load i8*, i8** %4, align 8, !dbg !3443, !tbaa !714
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3443
  %26 = load i8*, i8** %25, align 8, !dbg !3443, !tbaa !714
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3443
  br label %146, !dbg !3444

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.102, i64 0, i64 0), i32 5) #12, !dbg !3445
  %30 = load i8*, i8** %4, align 8, !dbg !3445, !tbaa !714
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3445
  %32 = load i8*, i8** %31, align 8, !dbg !3445, !tbaa !714
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3445
  %34 = load i8*, i8** %33, align 8, !dbg !3445, !tbaa !714
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3445
  br label %146, !dbg !3446

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.103, i64 0, i64 0), i32 5) #12, !dbg !3447
  %38 = load i8*, i8** %4, align 8, !dbg !3447, !tbaa !714
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3447
  %40 = load i8*, i8** %39, align 8, !dbg !3447, !tbaa !714
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3447
  %42 = load i8*, i8** %41, align 8, !dbg !3447, !tbaa !714
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3447
  %44 = load i8*, i8** %43, align 8, !dbg !3447, !tbaa !714
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3447
  br label %146, !dbg !3448

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.104, i64 0, i64 0), i32 5) #12, !dbg !3449
  %48 = load i8*, i8** %4, align 8, !dbg !3449, !tbaa !714
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3449
  %50 = load i8*, i8** %49, align 8, !dbg !3449, !tbaa !714
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3449
  %52 = load i8*, i8** %51, align 8, !dbg !3449, !tbaa !714
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3449
  %54 = load i8*, i8** %53, align 8, !dbg !3449, !tbaa !714
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3449
  %56 = load i8*, i8** %55, align 8, !dbg !3449, !tbaa !714
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3449
  br label %146, !dbg !3450

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.105, i64 0, i64 0), i32 5) #12, !dbg !3451
  %60 = load i8*, i8** %4, align 8, !dbg !3451, !tbaa !714
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3451
  %62 = load i8*, i8** %61, align 8, !dbg !3451, !tbaa !714
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3451
  %64 = load i8*, i8** %63, align 8, !dbg !3451, !tbaa !714
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3451
  %66 = load i8*, i8** %65, align 8, !dbg !3451, !tbaa !714
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3451
  %68 = load i8*, i8** %67, align 8, !dbg !3451, !tbaa !714
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3451
  %70 = load i8*, i8** %69, align 8, !dbg !3451, !tbaa !714
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3451
  br label %146, !dbg !3452

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.106, i64 0, i64 0), i32 5) #12, !dbg !3453
  %74 = load i8*, i8** %4, align 8, !dbg !3453, !tbaa !714
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3453
  %76 = load i8*, i8** %75, align 8, !dbg !3453, !tbaa !714
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3453
  %78 = load i8*, i8** %77, align 8, !dbg !3453, !tbaa !714
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3453
  %80 = load i8*, i8** %79, align 8, !dbg !3453, !tbaa !714
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3453
  %82 = load i8*, i8** %81, align 8, !dbg !3453, !tbaa !714
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3453
  %84 = load i8*, i8** %83, align 8, !dbg !3453, !tbaa !714
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3453
  %86 = load i8*, i8** %85, align 8, !dbg !3453, !tbaa !714
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3453
  br label %146, !dbg !3454

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.107, i64 0, i64 0), i32 5) #12, !dbg !3455
  %90 = load i8*, i8** %4, align 8, !dbg !3455, !tbaa !714
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3455
  %92 = load i8*, i8** %91, align 8, !dbg !3455, !tbaa !714
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3455
  %94 = load i8*, i8** %93, align 8, !dbg !3455, !tbaa !714
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3455
  %96 = load i8*, i8** %95, align 8, !dbg !3455, !tbaa !714
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3455
  %98 = load i8*, i8** %97, align 8, !dbg !3455, !tbaa !714
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3455
  %100 = load i8*, i8** %99, align 8, !dbg !3455, !tbaa !714
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3455
  %102 = load i8*, i8** %101, align 8, !dbg !3455, !tbaa !714
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3455
  %104 = load i8*, i8** %103, align 8, !dbg !3455, !tbaa !714
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3455
  br label %146, !dbg !3456

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.108, i64 0, i64 0), i32 5) #12, !dbg !3457
  %108 = load i8*, i8** %4, align 8, !dbg !3457, !tbaa !714
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3457
  %110 = load i8*, i8** %109, align 8, !dbg !3457, !tbaa !714
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3457
  %112 = load i8*, i8** %111, align 8, !dbg !3457, !tbaa !714
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3457
  %114 = load i8*, i8** %113, align 8, !dbg !3457, !tbaa !714
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3457
  %116 = load i8*, i8** %115, align 8, !dbg !3457, !tbaa !714
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3457
  %118 = load i8*, i8** %117, align 8, !dbg !3457, !tbaa !714
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3457
  %120 = load i8*, i8** %119, align 8, !dbg !3457, !tbaa !714
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3457
  %122 = load i8*, i8** %121, align 8, !dbg !3457, !tbaa !714
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3457
  %124 = load i8*, i8** %123, align 8, !dbg !3457, !tbaa !714
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3457
  br label %146, !dbg !3458

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.109, i64 0, i64 0), i32 5) #12, !dbg !3459
  %128 = load i8*, i8** %4, align 8, !dbg !3459, !tbaa !714
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3459
  %130 = load i8*, i8** %129, align 8, !dbg !3459, !tbaa !714
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3459
  %132 = load i8*, i8** %131, align 8, !dbg !3459, !tbaa !714
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3459
  %134 = load i8*, i8** %133, align 8, !dbg !3459, !tbaa !714
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3459
  %136 = load i8*, i8** %135, align 8, !dbg !3459, !tbaa !714
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3459
  %138 = load i8*, i8** %137, align 8, !dbg !3459, !tbaa !714
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3459
  %140 = load i8*, i8** %139, align 8, !dbg !3459, !tbaa !714
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3459
  %142 = load i8*, i8** %141, align 8, !dbg !3459, !tbaa !714
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3459
  %144 = load i8*, i8** %143, align 8, !dbg !3459, !tbaa !714
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3459
  br label %146, !dbg !3460

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3462 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %2, metadata !3468, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %3, metadata !3469, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8** %4, metadata !3470, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3477
  br label %6, !dbg !3478

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3480
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3482
  %9 = load i8*, i8** %8, align 8, !dbg !3482, !tbaa !714
  %10 = icmp eq i8* %9, null, !dbg !3483
  %11 = add i64 %7, 1, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %11, metadata !3471, metadata !DIExpression()), !dbg !3477
  br i1 %10, label %12, label %6, !dbg !3483, !llvm.loop !3485

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %7, metadata !3471, metadata !DIExpression()), !dbg !3477
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3487
  ret void, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3489 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3500, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8* %1, metadata !3501, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %2, metadata !3502, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %3, metadata !3503, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3504, metadata !DIExpression()), !dbg !3512
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3513
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3506, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 0, metadata !3505, metadata !DIExpression()), !dbg !3515
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3505, metadata !DIExpression()), !dbg !3515
  %11 = load i32, i32* %8, align 8, !dbg !3516
  %12 = icmp ult i32 %11, 41, !dbg !3516
  br i1 %12, label %13, label %18, !dbg !3516

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3516
  %15 = sext i32 %11 to i64, !dbg !3516
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3516
  %17 = add i32 %11, 8, !dbg !3516
  store i32 %17, i32* %8, align 8, !dbg !3516
  br label %21, !dbg !3516

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3516
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3516
  store i8* %20, i8** %10, align 8, !dbg !3516
  br label %21, !dbg !3516

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3516
  %25 = load i8*, i8** %24, align 8, !dbg !3516
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3519
  store i8* %25, i8** %26, align 16, !dbg !3520, !tbaa !714
  %27 = icmp eq i8* %25, null, !dbg !3521
  br i1 %27, label %30, label %28, !dbg !3522

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 1, metadata !3505, metadata !DIExpression()), !dbg !3515
  %29 = icmp ult i32 %22, 41, !dbg !3516
  br i1 %29, label %35, label %32, !dbg !3516

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3523
  call void @llvm.dbg.value(metadata i64 %31, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %31, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3525
  ret void, !dbg !3525

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3516
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3516
  store i8* %34, i8** %10, align 8, !dbg !3516
  br label %40, !dbg !3516

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3516
  %37 = sext i32 %22 to i64, !dbg !3516
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3516
  %39 = add i32 %22, 8, !dbg !3516
  store i32 %39, i32* %8, align 8, !dbg !3516
  br label %40, !dbg !3516

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3516
  %44 = load i8*, i8** %43, align 8, !dbg !3516
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3519
  store i8* %44, i8** %45, align 8, !dbg !3520, !tbaa !714
  %46 = icmp eq i8* %44, null, !dbg !3521
  br i1 %46, label %30, label %47, !dbg !3522

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 2, metadata !3505, metadata !DIExpression()), !dbg !3515
  %48 = icmp ult i32 %41, 41, !dbg !3516
  br i1 %48, label %52, label %49, !dbg !3516

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3516
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3516
  store i8* %51, i8** %10, align 8, !dbg !3516
  br label %57, !dbg !3516

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3516
  %54 = sext i32 %41 to i64, !dbg !3516
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3516
  %56 = add i32 %41, 8, !dbg !3516
  store i32 %56, i32* %8, align 8, !dbg !3516
  br label %57, !dbg !3516

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3516
  %61 = load i8*, i8** %60, align 8, !dbg !3516
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3519
  store i8* %61, i8** %62, align 16, !dbg !3520, !tbaa !714
  %63 = icmp eq i8* %61, null, !dbg !3521
  br i1 %63, label %30, label %64, !dbg !3522

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 3, metadata !3505, metadata !DIExpression()), !dbg !3515
  %65 = icmp ult i32 %58, 41, !dbg !3516
  br i1 %65, label %69, label %66, !dbg !3516

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3516
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3516
  store i8* %68, i8** %10, align 8, !dbg !3516
  br label %74, !dbg !3516

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3516
  %71 = sext i32 %58 to i64, !dbg !3516
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3516
  %73 = add i32 %58, 8, !dbg !3516
  store i32 %73, i32* %8, align 8, !dbg !3516
  br label %74, !dbg !3516

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3516
  %78 = load i8*, i8** %77, align 8, !dbg !3516
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3519
  store i8* %78, i8** %79, align 8, !dbg !3520, !tbaa !714
  %80 = icmp eq i8* %78, null, !dbg !3521
  br i1 %80, label %30, label %81, !dbg !3522

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 4, metadata !3505, metadata !DIExpression()), !dbg !3515
  %82 = icmp ult i32 %75, 41, !dbg !3516
  br i1 %82, label %86, label %83, !dbg !3516

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3516
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3516
  store i8* %85, i8** %10, align 8, !dbg !3516
  br label %91, !dbg !3516

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3516
  %88 = sext i32 %75 to i64, !dbg !3516
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3516
  %90 = add i32 %75, 8, !dbg !3516
  store i32 %90, i32* %8, align 8, !dbg !3516
  br label %91, !dbg !3516

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3516
  %95 = load i8*, i8** %94, align 8, !dbg !3516
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3519
  store i8* %95, i8** %96, align 16, !dbg !3520, !tbaa !714
  %97 = icmp eq i8* %95, null, !dbg !3521
  br i1 %97, label %30, label %98, !dbg !3522

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 5, metadata !3505, metadata !DIExpression()), !dbg !3515
  %99 = icmp ult i32 %92, 41, !dbg !3516
  br i1 %99, label %103, label %100, !dbg !3516

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3516
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3516
  store i8* %102, i8** %10, align 8, !dbg !3516
  br label %108, !dbg !3516

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3516
  %105 = sext i32 %92 to i64, !dbg !3516
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3516
  %107 = add i32 %92, 8, !dbg !3516
  store i32 %107, i32* %8, align 8, !dbg !3516
  br label %108, !dbg !3516

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3516
  %111 = load i8*, i8** %110, align 8, !dbg !3516
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3519
  store i8* %111, i8** %112, align 8, !dbg !3520, !tbaa !714
  %113 = icmp eq i8* %111, null, !dbg !3521
  br i1 %113, label %30, label %114, !dbg !3522

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 6, metadata !3505, metadata !DIExpression()), !dbg !3515
  %115 = load i8*, i8** %10, align 8, !dbg !3516
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3516
  store i8* %116, i8** %10, align 8, !dbg !3516
  %117 = bitcast i8* %115 to i8**, !dbg !3516
  %118 = load i8*, i8** %117, align 8, !dbg !3516
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3519
  store i8* %118, i8** %119, align 16, !dbg !3520, !tbaa !714
  %120 = icmp eq i8* %118, null, !dbg !3521
  br i1 %120, label %30, label %121, !dbg !3522

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 7, metadata !3505, metadata !DIExpression()), !dbg !3515
  %122 = load i8*, i8** %10, align 8, !dbg !3516
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3516
  store i8* %123, i8** %10, align 8, !dbg !3516
  %124 = bitcast i8* %122 to i8**, !dbg !3516
  %125 = load i8*, i8** %124, align 8, !dbg !3516
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3519
  store i8* %125, i8** %126, align 8, !dbg !3520, !tbaa !714
  %127 = icmp eq i8* %125, null, !dbg !3521
  br i1 %127, label %30, label %128, !dbg !3522

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 8, metadata !3505, metadata !DIExpression()), !dbg !3515
  %129 = load i8*, i8** %10, align 8, !dbg !3516
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3516
  store i8* %130, i8** %10, align 8, !dbg !3516
  %131 = bitcast i8* %129 to i8**, !dbg !3516
  %132 = load i8*, i8** %131, align 8, !dbg !3516
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3519
  store i8* %132, i8** %133, align 16, !dbg !3520, !tbaa !714
  %134 = icmp eq i8* %132, null, !dbg !3521
  br i1 %134, label %30, label %135, !dbg !3522

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3505, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 9, metadata !3505, metadata !DIExpression()), !dbg !3515
  %136 = load i8*, i8** %10, align 8, !dbg !3516
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3516
  store i8* %137, i8** %10, align 8, !dbg !3516
  %138 = bitcast i8* %136 to i8**, !dbg !3516
  %139 = load i8*, i8** %138, align 8, !dbg !3516
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3519
  store i8* %139, i8** %140, align 8, !dbg !3520, !tbaa !714
  %141 = icmp eq i8* %139, null, !dbg !3521
  %142 = select i1 %141, i64 9, i64 10, !dbg !3522
  br label %30, !dbg !3522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3526 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3530, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3531, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %2, metadata !3532, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %3, metadata !3533, metadata !DIExpression()), !dbg !3544
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3545
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3545
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3534, metadata !DIExpression()), !dbg !3546
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3547
  call void @llvm.va_start(i8* nonnull %6), !dbg !3547
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3548
  call void @llvm.va_end(i8* nonnull %6), !dbg !3549
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3550
  ret void, !dbg !3550
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3551 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.112, i64 0, i64 0), i32 5) #12, !dbg !3552
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.113, i64 0, i64 0)) #12, !dbg !3552
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.114, i64 0, i64 0), i32 5) #12, !dbg !3553
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.115, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.116, i64 0, i64 0)) #12, !dbg !3553
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.117, i64 0, i64 0), i32 5) #12, !dbg !3554
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3554, !tbaa !714
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3554
  ret void, !dbg !3555
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #15 !dbg !3556 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3563
  %3 = udiv i64 9223372036854775807, %1, !dbg !3564
  %4 = icmp ult i64 %3, %0, !dbg !3564
  br i1 %4, label %5, label %6, !dbg !3566

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3567
  unreachable, !dbg !3567

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %7, metadata !3569, metadata !DIExpression()) #12, !dbg !3576
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %8, metadata !3575, metadata !DIExpression()) #12, !dbg !3579
  %9 = icmp eq i8* %8, null, !dbg !3580
  %10 = icmp ne i64 %7, 0, !dbg !3582
  %11 = and i1 %10, %9, !dbg !3583
  br i1 %11, label %12, label %13, !dbg !3583

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3584
  unreachable, !dbg !3584

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3585
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3570 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3569, metadata !DIExpression()), !dbg !3586
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %2, metadata !3575, metadata !DIExpression()), !dbg !3588
  %3 = icmp eq i8* %2, null, !dbg !3589
  %4 = icmp ne i64 %0, 0, !dbg !3590
  %5 = and i1 %4, %3, !dbg !3591
  br i1 %5, label %6, label %7, !dbg !3591

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3592
  unreachable, !dbg !3592

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3593
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #15 !dbg !3594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3598, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %1, metadata !3599, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %2, metadata !3600, metadata !DIExpression()), !dbg !3603
  %4 = udiv i64 9223372036854775807, %2, !dbg !3604
  %5 = icmp ult i64 %4, %1, !dbg !3604
  br i1 %5, label %6, label %7, !dbg !3606

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3607
  unreachable, !dbg !3607

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #12, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %8, metadata !3614, metadata !DIExpression()) #12, !dbg !3617
  %9 = icmp eq i64 %8, 0, !dbg !3618
  %10 = icmp ne i8* %0, null, !dbg !3620
  %11 = and i1 %10, %9, !dbg !3621
  br i1 %11, label %12, label %13, !dbg !3621

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3622
  br label %19, !dbg !3624

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %14, metadata !3609, metadata !DIExpression()) #12, !dbg !3615
  %15 = icmp eq i8* %14, null, !dbg !3626
  %16 = icmp ne i64 %8, 0, !dbg !3628
  %17 = and i1 %16, %15, !dbg !3629
  br i1 %17, label %18, label %19, !dbg !3629

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3630
  unreachable, !dbg !3630

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3631
  ret i8* %20, !dbg !3632
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3634
  %3 = icmp eq i64 %1, 0, !dbg !3635
  %4 = icmp ne i8* %0, null, !dbg !3636
  %5 = and i1 %4, %3, !dbg !3637
  br i1 %5, label %6, label %7, !dbg !3637

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3638
  br label %13, !dbg !3639

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %8, metadata !3609, metadata !DIExpression()), !dbg !3633
  %9 = icmp eq i8* %8, null, !dbg !3641
  %10 = icmp ne i64 %1, 0, !dbg !3642
  %11 = and i1 %10, %9, !dbg !3643
  br i1 %11, label %12, label %13, !dbg !3643

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3644
  unreachable, !dbg !3644

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3645
  ret i8* %14, !dbg !3646
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #15 !dbg !258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !263, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64* %1, metadata !264, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %2, metadata !265, metadata !DIExpression()), !dbg !3649
  %4 = load i64, i64* %1, align 8, !dbg !3650, !tbaa !2690
  call void @llvm.dbg.value(metadata i64 %4, metadata !266, metadata !DIExpression()), !dbg !3651
  %5 = icmp eq i8* %0, null, !dbg !3652
  br i1 %5, label %6, label %20, !dbg !3654

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3655
  br i1 %7, label %8, label %13, !dbg !3658

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %9, metadata !266, metadata !DIExpression()), !dbg !3651
  %10 = icmp ugt i64 %2, 128, !dbg !3661
  %11 = zext i1 %10 to i64, !dbg !3661
  %12 = add nuw nsw i64 %9, %11, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %12, metadata !266, metadata !DIExpression()), !dbg !3651
  br label %13, !dbg !3663

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3664
  call void @llvm.dbg.value(metadata i64 %14, metadata !266, metadata !DIExpression()), !dbg !3651
  %15 = udiv i64 9223372036854775807, %2, !dbg !3665
  %16 = icmp ult i64 %15, %14, !dbg !3665
  br i1 %16, label %19, label %17, !dbg !3667

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !266, metadata !DIExpression()), !dbg !3651
  store i64 %14, i64* %1, align 8, !dbg !3668, !tbaa !2690
  %18 = mul i64 %14, %2, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #12, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %28, metadata !3614, metadata !DIExpression()) #12, !dbg !3672
  br label %31, !dbg !3673

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3674
  unreachable, !dbg !3674

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3675
  %22 = icmp ugt i64 %21, %4, !dbg !3678
  br i1 %22, label %24, label %23, !dbg !3679

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !3680
  unreachable, !dbg !3680

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3681
  %26 = add i64 %4, 1, !dbg !3682
  %27 = add i64 %26, %25, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %27, metadata !266, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %27, metadata !266, metadata !DIExpression()), !dbg !3651
  store i64 %27, i64* %1, align 8, !dbg !3668, !tbaa !2690
  %28 = mul i64 %27, %2, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #12, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %28, metadata !3614, metadata !DIExpression()) #12, !dbg !3672
  %29 = icmp eq i64 %28, 0, !dbg !3684
  br i1 %29, label %30, label %31, !dbg !3673

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3685
  br label %38, !dbg !3686

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3687
  call void @llvm.dbg.value(metadata i8* %33, metadata !3609, metadata !DIExpression()) #12, !dbg !3670
  %34 = icmp eq i8* %33, null, !dbg !3688
  %35 = icmp ne i64 %32, 0, !dbg !3689
  %36 = and i1 %35, %34, !dbg !3690
  br i1 %36, label %37, label %38, !dbg !3690

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !3691
  unreachable, !dbg !3691

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3692
  ret i8* %39, !dbg !3693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #15 !dbg !3694 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %0, metadata !3569, metadata !DIExpression()) #12, !dbg !3698
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %2, metadata !3575, metadata !DIExpression()) #12, !dbg !3701
  %3 = icmp eq i8* %2, null, !dbg !3702
  %4 = icmp ne i64 %0, 0, !dbg !3703
  %5 = and i1 %4, %3, !dbg !3704
  br i1 %5, label %6, label %7, !dbg !3704

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3705
  unreachable, !dbg !3705

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3711, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64* %1, metadata !3712, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i8* %0, metadata !263, metadata !DIExpression()) #12, !dbg !3715
  call void @llvm.dbg.value(metadata i64* %1, metadata !264, metadata !DIExpression()) #12, !dbg !3717
  call void @llvm.dbg.value(metadata i64 1, metadata !265, metadata !DIExpression()) #12, !dbg !3718
  %3 = load i64, i64* %1, align 8, !dbg !3719, !tbaa !2690
  call void @llvm.dbg.value(metadata i64 %3, metadata !266, metadata !DIExpression()) #12, !dbg !3720
  %4 = icmp eq i8* %0, null, !dbg !3721
  br i1 %4, label %5, label %12, !dbg !3722

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3723
  br i1 %6, label %9, label %7, !dbg !3724

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !266, metadata !DIExpression()) #12, !dbg !3720
  %8 = icmp slt i64 %3, 0, !dbg !3725
  br i1 %8, label %11, label %9, !dbg !3726

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !266, metadata !DIExpression()) #12, !dbg !3720
  store i64 %10, i64* %1, align 8, !dbg !3727, !tbaa !2690
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #12, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %18, metadata !3614, metadata !DIExpression()) #12, !dbg !3730
  br label %21, !dbg !3731

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3732
  unreachable, !dbg !3732

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3733
  br i1 %13, label %15, label %14, !dbg !3734

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !3735
  unreachable, !dbg !3735

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3736
  %17 = add i64 %3, 1, !dbg !3737
  %18 = add i64 %17, %16, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %18, metadata !266, metadata !DIExpression()) #12, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %18, metadata !266, metadata !DIExpression()) #12, !dbg !3720
  store i64 %18, i64* %1, align 8, !dbg !3727, !tbaa !2690
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #12, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %18, metadata !3614, metadata !DIExpression()) #12, !dbg !3730
  %19 = icmp eq i64 %18, 0, !dbg !3739
  br i1 %19, label %20, label %21, !dbg !3731

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3740
  br label %28, !dbg !3741

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %23, metadata !3609, metadata !DIExpression()) #12, !dbg !3728
  %24 = icmp eq i8* %23, null, !dbg !3743
  %25 = icmp ne i64 %22, 0, !dbg !3744
  %26 = and i1 %25, %24, !dbg !3745
  br i1 %26, label %27, label %28, !dbg !3745

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !3746
  unreachable, !dbg !3746

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3747
  ret i8* %29, !dbg !3748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3749 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %0, metadata !3569, metadata !DIExpression()) #12, !dbg !3753
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3755
  call void @llvm.dbg.value(metadata i8* %2, metadata !3575, metadata !DIExpression()) #12, !dbg !3756
  %3 = icmp eq i8* %2, null, !dbg !3757
  %4 = icmp ne i64 %0, 0, !dbg !3758
  %5 = and i1 %4, %3, !dbg !3759
  br i1 %5, label %6, label %7, !dbg !3759

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3760
  unreachable, !dbg !3760

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3761
  ret i8* %2, !dbg !3762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3763 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3765, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3769
  %3 = udiv i64 9223372036854775807, %1, !dbg !3770
  %4 = icmp ult i64 %3, %0, !dbg !3770
  br i1 %4, label %8, label %5, !dbg !3772

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %6, metadata !3767, metadata !DIExpression()), !dbg !3774
  %7 = icmp eq i8* %6, null, !dbg !3775
  br i1 %7, label %8, label %9, !dbg !3776

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3777
  unreachable, !dbg !3777

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %1, metadata !3786, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 %1, metadata !3569, metadata !DIExpression()) #12, !dbg !3789
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %3, metadata !3575, metadata !DIExpression()) #12, !dbg !3792
  %4 = icmp eq i8* %3, null, !dbg !3793
  %5 = icmp ne i64 %1, 0, !dbg !3794
  %6 = and i1 %5, %4, !dbg !3795
  br i1 %6, label %7, label %8, !dbg !3795

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3796
  unreachable, !dbg !3796

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3797
  ret i8* %3, !dbg !3798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3799 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3801, metadata !DIExpression()), !dbg !3802
  %2 = tail call i64 @strlen(i8* %0) #11, !dbg !3803
  %3 = add i64 %2, 1, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()) #12, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %3, metadata !3786, metadata !DIExpression()) #12, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %3, metadata !3569, metadata !DIExpression()) #12, !dbg !3808
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %4, metadata !3575, metadata !DIExpression()) #12, !dbg !3811
  %5 = icmp eq i8* %4, null, !dbg !3812
  %6 = icmp ne i64 %3, 0, !dbg !3813
  %7 = and i1 %6, %5, !dbg !3814
  br i1 %7, label %8, label %9, !dbg !3814

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3815
  unreachable, !dbg !3815

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3816
  ret i8* %4, !dbg !3817
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3818 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3820, !tbaa !819
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #12, !dbg !3821
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* %2) #12, !dbg !3822
  tail call void @abort() #16, !dbg !3823
  unreachable, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #7 !dbg !3824 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3831, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8** %1, metadata !3832, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata double* %2, metadata !3833, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !3834, metadata !DIExpression()), !dbg !3841
  %6 = bitcast i8** %5 to i8*, !dbg !3842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3842
  call void @llvm.dbg.value(metadata i8 1, metadata !3837, metadata !DIExpression()), !dbg !3843
  %7 = tail call i32* @__errno_location() #18, !dbg !3844
  store i32 0, i32* %7, align 4, !dbg !3845, !tbaa !819
  call void @llvm.dbg.value(metadata i8** %5, metadata !3836, metadata !DIExpression(DW_OP_deref)), !dbg !3846
  %8 = call double %3(i8* %0, i8** nonnull %5) #12, !dbg !3847
  call void @llvm.dbg.value(metadata double %8, metadata !3835, metadata !DIExpression()), !dbg !3848
  %9 = load i8*, i8** %5, align 8, !dbg !3849, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %9, metadata !3836, metadata !DIExpression()), !dbg !3846
  %10 = icmp eq i8* %9, %0, !dbg !3851
  %11 = ptrtoint i8* %9 to i64, !dbg !3852
  br i1 %10, label %22, label %12, !dbg !3852

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3853
  br i1 %13, label %14, label %17, !dbg !3854

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3855, !tbaa !968
  %16 = icmp eq i8 %15, 0, !dbg !3856
  br i1 %16, label %17, label %27, !dbg !3857

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3858
  br i1 %18, label %19, label %22, !dbg !3861

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3862, !tbaa !819
  %21 = icmp ne i32 %20, 34, !dbg !3863
  br label %22, !dbg !3864

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3865
  br i1 %24, label %27, label %25, !dbg !3867

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, metadata !3836, metadata !DIExpression(DW_OP_deref)), !dbg !3846
  %26 = bitcast i8** %1 to i64*, !dbg !3868
  store i64 %11, i64* %26, align 8, !dbg !3868, !tbaa !714
  br label %27, !dbg !3869

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3870, !tbaa !830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3871
  ret i1 %28, !dbg !3872
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3873 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3876, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %1, metadata !3877, metadata !DIExpression()), !dbg !3883
  %3 = icmp eq i64 %0, 0, !dbg !3884
  %4 = icmp eq i64 %1, 0, !dbg !3885
  %5 = or i1 %3, %4, !dbg !3886
  br i1 %5, label %12, label %6, !dbg !3886

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %7, metadata !3879, metadata !DIExpression()), !dbg !3888
  %8 = udiv i64 %7, %1, !dbg !3889
  %9 = icmp eq i64 %8, %0, !dbg !3891
  br i1 %9, label %12, label %10, !dbg !3892

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !3893
  store i32 12, i32* %11, align 4, !dbg !3895, !tbaa !819
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3876, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %13, metadata !3877, metadata !DIExpression()), !dbg !3883
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %15, metadata !3878, metadata !DIExpression()), !dbg !3897
  br label %16, !dbg !3898

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3899
  ret i8* %17, !dbg !3900
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3901 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3918, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %1, metadata !3919, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %2, metadata !3920, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3921, metadata !DIExpression()), !dbg !3930
  %6 = bitcast i32* %5 to i8*, !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3931
  %7 = icmp eq i32* %0, null, !dbg !3932
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3934
  call void @llvm.dbg.value(metadata i32* %8, metadata !3918, metadata !DIExpression()), !dbg !3927
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %9, metadata !3922, metadata !DIExpression()), !dbg !3936
  %10 = icmp ugt i64 %9, -3, !dbg !3937
  %11 = icmp ne i64 %2, 0, !dbg !3938
  %12 = and i1 %11, %10, !dbg !3939
  br i1 %12, label %13, label %18, !dbg !3939

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3940
  br i1 %14, label %18, label %15, !dbg !3941

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3942, !tbaa !968
  call void @llvm.dbg.value(metadata i8 %16, metadata !3924, metadata !DIExpression()), !dbg !3943
  %17 = zext i8 %16 to i32, !dbg !3944
  store i32 %17, i32* %8, align 4, !dbg !3945, !tbaa !819
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3947
  ret i64 %19, !dbg !3947
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #7 !dbg !3948 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3952, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32* %1, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i8* %0, metadata !3956, metadata !DIExpression()) #12, !dbg !3977
  %5 = load i8, i8* %0, align 1, !dbg !3979, !tbaa !968
  %6 = sext i8 %5 to i32, !dbg !3979
  %7 = add nsw i32 %6, -48, !dbg !3979
  %8 = icmp ult i32 %7, 10, !dbg !3979
  br i1 %8, label %9, label %20, !dbg !3980

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !3981
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #12, !dbg !3981
  call void @llvm.dbg.value(metadata i8** %3, metadata !3961, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3982
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #12, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %11, metadata !3964, metadata !DIExpression()) #12, !dbg !3984
  %12 = load i8*, i8** %3, align 8, !dbg !3985, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %12, metadata !3961, metadata !DIExpression()) #12, !dbg !3982
  %13 = load i8, i8* %12, align 1, !dbg !3987, !tbaa !968
  %14 = icmp ne i8 %13, 0, !dbg !3987
  %15 = icmp sgt i64 %11, 64, !dbg !3988
  %16 = trunc i64 %11 to i32, !dbg !3989
  %17 = or i1 %15, %14, !dbg !3990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !3991
  br i1 %17, label %73, label %74

; <label>:18:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i32 undef, metadata !3965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !3992
  %19 = icmp ult i64 %25, 35, !dbg !3993
  br i1 %19, label %20, label %30, !dbg !3996, !llvm.loop !3997

; <label>:20:                                     ; preds = %2, %18
  %21 = phi i64 [ %25, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  %22 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %21, i32 1, i64 0, !dbg !4000
  %23 = tail call i32 @strcmp(i8* nonnull %22, i8* %0) #11, !dbg !4002
  %24 = icmp eq i32 %23, 0, !dbg !4003
  %25 = add nuw nsw i64 %21, 1, !dbg !4004
  call void @llvm.dbg.value(metadata i32 undef, metadata !3965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !3992
  br i1 %24, label %26, label %18, !dbg !4005

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  %27 = and i64 %21, 4294967295, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()) #12, !dbg !3992
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !4007
  %29 = load i32, i32* %28, align 4, !dbg !4007, !tbaa !4008
  br label %74

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !4010
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #12, !dbg !4010
  %32 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %32, metadata !3969, metadata !DIExpression()) #12, !dbg !4012
  %33 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %33, metadata !3970, metadata !DIExpression()) #12, !dbg !4014
  %34 = icmp sgt i32 %32, 0, !dbg !4015
  br i1 %34, label %35, label %50, !dbg !4016

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i64 5) #11, !dbg !4017
  %37 = icmp eq i32 %36, 0, !dbg !4018
  br i1 %37, label %38, label %50, !dbg !4019

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4020
  call void @llvm.dbg.value(metadata i8** %4, metadata !3967, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4021
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #12, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %40, metadata !3971, metadata !DIExpression()) #12, !dbg !4023
  %41 = load i8*, i8** %4, align 8, !dbg !4024, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %41, metadata !3967, metadata !DIExpression()) #12, !dbg !4021
  %42 = load i8, i8* %41, align 1, !dbg !4026, !tbaa !968
  %43 = icmp eq i8 %42, 0, !dbg !4026
  %44 = icmp sgt i64 %40, -1, !dbg !4027
  %45 = and i1 %44, %43, !dbg !4028
  br i1 %45, label %46, label %67, !dbg !4028

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !4029
  %48 = sext i32 %47 to i64, !dbg !4030
  %49 = icmp sgt i64 %40, %48, !dbg !4031
  br i1 %49, label %67, label %68, !dbg !4032

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !4033
  br i1 %51, label %52, label %67, !dbg !4034

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i64 5) #11, !dbg !4035
  %54 = icmp eq i32 %53, 0, !dbg !4036
  br i1 %54, label %55, label %67, !dbg !4037

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4038
  call void @llvm.dbg.value(metadata i8** %4, metadata !3967, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4021
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #12, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %57, metadata !3974, metadata !DIExpression()) #12, !dbg !4040
  %58 = load i8*, i8** %4, align 8, !dbg !4041, !tbaa !714
  call void @llvm.dbg.value(metadata i8* %58, metadata !3967, metadata !DIExpression()) #12, !dbg !4021
  %59 = load i8, i8* %58, align 1, !dbg !4043, !tbaa !968
  %60 = icmp eq i8 %59, 0, !dbg !4043
  br i1 %60, label %61, label %67, !dbg !4044

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !4045
  %63 = sext i32 %62 to i64, !dbg !4046
  %64 = icmp sge i64 %57, %63, !dbg !4047
  %65 = icmp slt i64 %57, 1, !dbg !4048
  %66 = and i1 %64, %65, !dbg !4049
  br i1 %66, label %68, label %67, !dbg !4049

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !4050
  br label %73

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !4051
  %72 = add i32 %70, %71, !dbg !4051
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #12, !dbg !4050
  br label %74

; <label>:73:                                     ; preds = %67, %9
  br label %74, !dbg !4052

; <label>:74:                                     ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %16, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !4053
  store i32 %75, i32* %1, align 4, !dbg !4054, !tbaa !819
  %76 = ashr i32 %75, 31, !dbg !4055
  ret i32 %76, !dbg !4056
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32, i8*) local_unnamed_addr #7 !dbg !4057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4061, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %1, metadata !4062, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 0, metadata !4063, metadata !DIExpression()), !dbg !4071
  br label %9, !dbg !4072

; <label>:3:                                      ; preds = %9
  call void @llvm.dbg.value(metadata i32 %15, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %15, metadata !4063, metadata !DIExpression()), !dbg !4071
  %4 = zext i32 %15 to i64, !dbg !4074
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !4076
  %6 = load i32, i32* %5, align 4, !dbg !4076, !tbaa !4008
  %7 = icmp eq i32 %6, %0, !dbg !4078
  %8 = add nuw nsw i32 %10, 2, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %8, metadata !4063, metadata !DIExpression()), !dbg !4071
  br i1 %7, label %16, label %45, !dbg !4080

; <label>:9:                                      ; preds = %63, %2
  %10 = phi i32 [ 0, %2 ], [ %62, %63 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4063, metadata !DIExpression()), !dbg !4071
  %11 = zext i32 %10 to i64, !dbg !4074
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !4076
  %13 = load i32, i32* %12, align 4, !dbg !4076, !tbaa !4008
  %14 = icmp eq i32 %13, %0, !dbg !4078
  %15 = add nuw nsw i32 %10, 1, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %15, metadata !4063, metadata !DIExpression()), !dbg !4071
  br i1 %14, label %16, label %3, !dbg !4080

; <label>:16:                                     ; preds = %57, %51, %45, %3, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %3 ], [ %8, %45 ], [ %50, %51 ], [ %56, %57 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %10, metadata !4063, metadata !DIExpression()), !dbg !4071
  %18 = zext i32 %17 to i64, !dbg !4074
  call void @llvm.dbg.value(metadata i32 %10, metadata !4063, metadata !DIExpression()), !dbg !4071
  %19 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %18, i32 1, i64 0, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %1, metadata !4083, metadata !DIExpression()) #12, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %19, metadata !4091, metadata !DIExpression()) #12, !dbg !4092
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false, i1 true) #12, !dbg !4094
  %21 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %19, i64 %20) #12, !dbg !4095
  br label %43, !dbg !4096

; <label>:22:                                     ; preds = %63
  %23 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %23, metadata !4064, metadata !DIExpression()), !dbg !4098
  %24 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !4099
  call void @llvm.dbg.value(metadata i32 %24, metadata !4066, metadata !DIExpression()), !dbg !4100
  %25 = icmp sgt i32 %23, %0, !dbg !4101
  %26 = icmp slt i32 %24, %0, !dbg !4103
  %27 = or i1 %25, %26, !dbg !4104
  br i1 %27, label %43, label %28, !dbg !4104

; <label>:28:                                     ; preds = %22
  %29 = sub nsw i32 %24, %23, !dbg !4105
  %30 = sdiv i32 %29, 2, !dbg !4107
  %31 = add nsw i32 %30, %23, !dbg !4108
  %32 = icmp slt i32 %31, %0, !dbg !4109
  br i1 %32, label %34, label %33, !dbg !4110

; <label>:33:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i64 6, i1 false), !dbg !4111
  call void @llvm.dbg.value(metadata i32 %23, metadata !4067, metadata !DIExpression()), !dbg !4113
  br label %35, !dbg !4114

; <label>:34:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i64 6, i1 false), !dbg !4115
  call void @llvm.dbg.value(metadata i32 %24, metadata !4067, metadata !DIExpression()), !dbg !4113
  br label %35

; <label>:35:                                     ; preds = %34, %33
  %36 = phi i32 [ %23, %33 ], [ %24, %34 ], !dbg !4117
  call void @llvm.dbg.value(metadata i32 %36, metadata !4067, metadata !DIExpression()), !dbg !4113
  %37 = sub nsw i32 %0, %36, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %37, metadata !4068, metadata !DIExpression()), !dbg !4119
  %38 = icmp eq i32 %37, 0, !dbg !4120
  br i1 %38, label %43, label %39, !dbg !4122

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !4123
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %40, i1 false, i1 true), !dbg !4123
  %42 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %40, i32 1, i64 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.144, i64 0, i64 0), i32 %37) #12, !dbg !4123
  br label %43, !dbg !4123

; <label>:43:                                     ; preds = %22, %35, %39, %16
  %44 = phi i32 [ 0, %16 ], [ -1, %22 ], [ 0, %35 ], [ 0, %39 ], !dbg !4124
  ret i32 %44, !dbg !4125

; <label>:45:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %8, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %8, metadata !4063, metadata !DIExpression()), !dbg !4071
  %46 = zext i32 %8 to i64, !dbg !4074
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !4076
  %48 = load i32, i32* %47, align 4, !dbg !4076, !tbaa !4008
  %49 = icmp eq i32 %48, %0, !dbg !4078
  %50 = add nuw nsw i32 %10, 3, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %50, metadata !4063, metadata !DIExpression()), !dbg !4071
  br i1 %49, label %16, label %51, !dbg !4080

; <label>:51:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32 %50, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %50, metadata !4063, metadata !DIExpression()), !dbg !4071
  %52 = zext i32 %50 to i64, !dbg !4074
  %53 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %52, i32 0, !dbg !4076
  %54 = load i32, i32* %53, align 4, !dbg !4076, !tbaa !4008
  %55 = icmp eq i32 %54, %0, !dbg !4078
  %56 = add nuw nsw i32 %10, 4, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %56, metadata !4063, metadata !DIExpression()), !dbg !4071
  br i1 %55, label %16, label %57, !dbg !4080

; <label>:57:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32 %56, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %56, metadata !4063, metadata !DIExpression()), !dbg !4071
  %58 = zext i32 %56 to i64, !dbg !4074
  %59 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %58, i32 0, !dbg !4076
  %60 = load i32, i32* %59, align 4, !dbg !4076, !tbaa !4008
  %61 = icmp eq i32 %60, %0, !dbg !4078
  %62 = add nuw nsw i32 %10, 5, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %62, metadata !4063, metadata !DIExpression()), !dbg !4071
  br i1 %61, label %16, label %63, !dbg !4080

; <label>:63:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i32 %62, metadata !4063, metadata !DIExpression()), !dbg !4071
  %64 = icmp ult i32 %62, 35, !dbg !4126
  br i1 %64, label %9, label %22, !dbg !4072, !llvm.loop !4127
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4129 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4168, metadata !DIExpression()), !dbg !4173
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4175, metadata !DIExpression()), !dbg !4179
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4181
  %4 = load i32, i32* %3, align 8, !dbg !4181, !tbaa !4182
  %5 = and i32 %4, 32, !dbg !4181
  %6 = icmp eq i32 %5, 0, !dbg !4184
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4185
  %8 = icmp ne i32 %7, 0, !dbg !4186
  br i1 %6, label %9, label %19, !dbg !4187

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4189
  %11 = xor i1 %8, true, !dbg !4190
  %12 = or i1 %10, %11, !dbg !4190
  %13 = sext i1 %8 to i32, !dbg !4190
  br i1 %12, label %22, label %14, !dbg !4190

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4191
  %16 = load i32, i32* %15, align 4, !dbg !4191, !tbaa !819
  %17 = icmp ne i32 %16, 9, !dbg !4192
  %18 = sext i1 %17 to i32, !dbg !4193
  br label %22, !dbg !4193

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4194

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4196
  store i32 0, i32* %21, align 4, !dbg !4198, !tbaa !819
  br label %22, !dbg !4196

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4199
  ret i32 %23, !dbg !4200
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4206, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i8 1, metadata !4207, metadata !DIExpression()), !dbg !4210
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4211
  call void @llvm.dbg.value(metadata i8* %2, metadata !4208, metadata !DIExpression()), !dbg !4212
  %3 = icmp eq i8* %2, null, !dbg !4213
  br i1 %3, label %11, label %4, !dbg !4215

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i64 0, i64 0)) #11, !dbg !4216
  %6 = icmp eq i32 %5, 0, !dbg !4221
  br i1 %6, label %10, label %7, !dbg !4222

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0)) #11, !dbg !4223
  %9 = icmp eq i32 %8, 0, !dbg !4224
  br i1 %9, label %10, label %11, !dbg !4225

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4207, metadata !DIExpression()), !dbg !4210
  br label %11, !dbg !4226

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4228 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4234
  call void @llvm.dbg.value(metadata i8* %1, metadata !4233, metadata !DIExpression()), !dbg !4235
  %2 = icmp eq i8* %1, null, !dbg !4236
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %1, !dbg !4238
  call void @llvm.dbg.value(metadata i8* %3, metadata !4233, metadata !DIExpression()), !dbg !4235
  %4 = load i8, i8* %3, align 1, !dbg !4239, !tbaa !968
  %5 = icmp eq i8 %4, 0, !dbg !4243
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.154, i64 0, i64 0), i8* %3, !dbg !4244
  call void @llvm.dbg.value(metadata i8* %6, metadata !4233, metadata !DIExpression()), !dbg !4235
  ret i8* %6, !dbg !4245
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4246 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4285, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4286, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 0, metadata !4288, metadata !DIExpression()), !dbg !4291
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4292
  call void @llvm.dbg.value(metadata i32 %2, metadata !4287, metadata !DIExpression()), !dbg !4293
  %3 = icmp slt i32 %2, 0, !dbg !4294
  br i1 %3, label %4, label %6, !dbg !4296

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4297
  br label %24, !dbg !4298

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4299
  %8 = icmp eq i32 %7, 0, !dbg !4299
  br i1 %8, label %13, label %9, !dbg !4301

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4302
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4303
  %12 = icmp eq i64 %11, -1, !dbg !4304
  br i1 %12, label %16, label %13, !dbg !4305

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4306
  %15 = icmp eq i32 %14, 0, !dbg !4306
  br i1 %15, label %16, label %18, !dbg !4307

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4286, metadata !DIExpression()), !dbg !4290
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4308
  call void @llvm.dbg.value(metadata i32 %21, metadata !4288, metadata !DIExpression()), !dbg !4291
  br label %24, !dbg !4309

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4310
  %20 = load i32, i32* %19, align 4, !dbg !4310, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %20, metadata !4286, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 %20, metadata !4286, metadata !DIExpression()), !dbg !4290
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4308
  call void @llvm.dbg.value(metadata i32 %21, metadata !4288, metadata !DIExpression()), !dbg !4291
  %22 = icmp eq i32 %20, 0, !dbg !4311
  br i1 %22, label %24, label %23, !dbg !4309

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4313, !tbaa !819
  call void @llvm.dbg.value(metadata i32 -1, metadata !4288, metadata !DIExpression()), !dbg !4291
  br label %24, !dbg !4315

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4316
  ret i32 %25, !dbg !4317
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4318 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4357, metadata !DIExpression()), !dbg !4358
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4359
  br i1 %2, label %6, label %3, !dbg !4361

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4362
  %5 = icmp eq i32 %4, 0, !dbg !4362
  br i1 %5, label %6, label %8, !dbg !4363

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4364
  br label %17, !dbg !4365

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4366, metadata !DIExpression()) #12, !dbg !4371
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4373
  %10 = load i32, i32* %9, align 8, !dbg !4373, !tbaa !4182
  %11 = and i32 %10, 256, !dbg !4375
  %12 = icmp eq i32 %11, 0, !dbg !4375
  br i1 %12, label %15, label %13, !dbg !4376

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4377
  br label %15, !dbg !4377

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4378
  br label %17, !dbg !4379

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4380
  ret i32 %18, !dbg !4381
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4382 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4422, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %1, metadata !4423, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %2, metadata !4424, metadata !DIExpression()), !dbg !4430
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4431
  %5 = load i8*, i8** %4, align 8, !dbg !4431, !tbaa !4432
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4433
  %7 = load i8*, i8** %6, align 8, !dbg !4433, !tbaa !4434
  %8 = icmp eq i8* %5, %7, !dbg !4435
  br i1 %8, label %9, label %28, !dbg !4436

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4437
  %11 = load i8*, i8** %10, align 8, !dbg !4437, !tbaa !4438
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4439
  %13 = load i8*, i8** %12, align 8, !dbg !4439, !tbaa !4440
  %14 = icmp eq i8* %11, %13, !dbg !4441
  br i1 %14, label %15, label %28, !dbg !4442

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4443
  %17 = load i8*, i8** %16, align 8, !dbg !4443, !tbaa !4444
  %18 = icmp eq i8* %17, null, !dbg !4445
  br i1 %18, label %19, label %28, !dbg !4446

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4447
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4448
  call void @llvm.dbg.value(metadata i64 %21, metadata !4425, metadata !DIExpression()), !dbg !4449
  %22 = icmp eq i64 %21, -1, !dbg !4450
  br i1 %22, label %30, label %23, !dbg !4452

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4453
  %25 = load i32, i32* %24, align 8, !dbg !4454, !tbaa !4182
  %26 = and i32 %25, -17, !dbg !4454
  store i32 %26, i32* %24, align 8, !dbg !4454, !tbaa !4182
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4455
  store i64 %21, i64* %27, align 8, !dbg !4456, !tbaa !4457
  br label %30, !dbg !4458

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4459
  br label %30, !dbg !4460

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4461
  ret i32 %31, !dbg !4462
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
attributes #8 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !231, !67, !73, !104, !233, !112, !119, !126, !245, !209, !253, !270, !272, !274, !276, !218, !279, !281, !283, !672, !674, !676}
!llvm.ident = !{!678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678}
!llvm.module.flags = !{!679, !680, !681, !682, !683}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 96, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !24)
!3 = !DIFile(filename: "src/timeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !{!14, !16, !17, !23}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !18, line: 72, baseType: !19)
!18 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25, !27, !33, !36, !39, !41, !43, !0, !47}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 80, type: !22, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 82, type: !29, isLocal: true, isDefinition: true)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 97, baseType: !31)
!30 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !32, line: 152, baseType: !22)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 83, type: !35, isLocal: true, isDefinition: true)
!35 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 84, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 85, type: !38, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 86, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "command", scope: !2, file: !3, line: 87, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 81, type: !22, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !59)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !52, line: 50, size: 256, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !{!54, !55, !56, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 52, baseType: !45, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !51, file: !52, line: 55, baseType: !22, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !51, file: !52, line: 56, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !52, line: 57, baseType: !22, size: 32, offset: 192)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!62 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!63 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!64 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "Version", scope: !67, file: !68, line: 2, type: !45, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !70)
!68 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!69 = !{}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !73, file: !100, line: 51, type: !101, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !75, globals: !99)
!74 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!75 = !{!14, !76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !79, line: 42, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !79, line: 28, size: 1856, elements: !82)
!82 = !{!83, !89, !93, !96, !97}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !81, file: !79, line: 31, baseType: !84, size: 832)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 832, elements: !87)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !79, line: 31, flags: DIFlagFwdDecl)
!87 = !{!88}
!88 = !DISubrange(count: 13)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !81, file: !79, line: 34, baseType: !90, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !81, file: !79, line: 35, baseType: !94, size: 64, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !81, file: !79, line: 36, baseType: !94, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !81, file: !79, line: 39, baseType: !98, size: 832, offset: 1024)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 832, elements: !87)
!99 = !{!71}
!100 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "file_name", scope: !104, file: !109, line: 46, type: !45, isLocal: true, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !106)
!105 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !{!102, !107}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !104, file: !109, line: 56, type: !38, isLocal: true, isDefinition: true)
!109 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "exit_failure", scope: !112, file: !115, line: 24, type: !116, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !114)
!113 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !{!110}
!115 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "program_name", scope: !119, file: !123, line: 33, type: !45, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !121, globals: !122)
!120 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!121 = !{!16, !14}
!122 = !{!117}
!123 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !126, file: !170, line: 85, type: !203, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !128, retainedTypes: !163, globals: !167)
!127 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!128 = !{!129, !143, !148}
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !130, line: 32, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!132 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!136 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!137 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!138 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!139 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!140 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!141 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!142 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !130, line: 242, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 46, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!151 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!152 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!153 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!154 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!155 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!156 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!157 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!158 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!159 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!162 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!163 = !{!22, !92, !164, !14}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 62, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!166 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!167 = !{!124, !168, !175, !185, !187, !192, !199, !201}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !126, file: !170, line: 101, type: !171, isLocal: false, isDefinition: true)
!170 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 320, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!173 = !{!174}
!174 = !DISubrange(count: 10)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !126, file: !170, line: 1052, type: !177, isLocal: false, isDefinition: true)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !170, line: 65, size: 448, elements: !178)
!178 = !{!179, !180, !181, !183, !184}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !177, file: !170, line: 68, baseType: !129, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !170, line: 71, baseType: !22, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !177, file: !170, line: 75, baseType: !182, size: 256, offset: 64)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !59)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !177, file: !170, line: 78, baseType: !45, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !177, file: !170, line: 81, baseType: !45, size: 64, offset: 384)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !126, file: !170, line: 116, type: !177, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slot0", scope: !126, file: !170, line: 842, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "slotvec", scope: !126, file: !170, line: 845, type: !194, isLocal: true, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !170, line: 834, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !170, line: 836, baseType: !164, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !195, file: !170, line: 837, baseType: !14, size: 64, offset: 64)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "nslots", scope: !126, file: !170, line: 843, type: !22, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "slotvec0", scope: !126, file: !170, line: 844, type: !195, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 704, elements: !205)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!205 = !{!206}
!206 = !DISubrange(count: 11)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !209, file: !212, line: 26, type: !213, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !211)
!210 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = !{!207}
!212 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 47)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "numname_table", scope: !218, file: !222, line: 41, type: !223, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !220, globals: !221)
!219 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = !{!7}
!221 = !{!216}
!222 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 3360, elements: !229)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !222, line: 41, size: 96, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !224, file: !222, line: 41, baseType: !22, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !222, line: 41, baseType: !228, size: 64, offset: 32)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !59)
!229 = !{!230}
!230 = !DISubrange(count: 35)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !220)
!232 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !240)
!234 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!235 = !{!236}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 41, baseType: !7, size: 32, elements: !238)
!237 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = !{!239}
!239 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000, isUnsigned: true)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !242, line: 7, baseType: !243)
!242 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 158, baseType: !244)
!244 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !247, retainedTypes: !252)
!246 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = !{!248}
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 41, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!250 = !{!251}
!251 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!252 = !{!16}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255, retainedTypes: !269)
!254 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = !{!256}
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !258, file: !257, line: 186, baseType: !7, size: 32, elements: !267)
!257 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!258 = distinct !DISubprogram(name: "x2nrealloc", scope: !257, file: !257, line: 174, type: !259, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !262)
!259 = !DISubroutineType(types: !260)
!260 = !{!16, !16, !261, !164}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!262 = !{!263, !264, !265, !266}
!263 = !DILocalVariable(name: "p", arg: 1, scope: !258, file: !257, line: 174, type: !16)
!264 = !DILocalVariable(name: "pn", arg: 2, scope: !258, file: !257, line: 174, type: !261)
!265 = !DILocalVariable(name: "s", arg: 3, scope: !258, file: !257, line: 174, type: !164)
!266 = !DILocalVariable(name: "n", scope: !258, file: !257, line: 176, type: !164)
!267 = !{!268}
!268 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!269 = !{!164, !14, !16}
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!271 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !252)
!273 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !252)
!275 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !278)
!277 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!278 = !{!164}
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!280 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!282 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !252)
!284 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = !{!286}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !287, line: 41, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!289 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!290 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!291 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!292 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!293 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!294 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!295 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!296 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!297 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!298 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!305 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!327 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!328 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!329 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!330 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!331 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!332 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!333 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!334 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!335 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!336 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!337 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!397 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!402 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!484 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!558 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!559 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!560 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!561 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!562 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!563 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!565 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!566 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!567 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!568 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!569 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!570 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!571 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!574 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!575 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!577 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!578 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!604 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!605 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!606 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!607 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!608 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!613 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!614 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!615 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!616 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!673 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !252)
!675 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !252)
!677 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!678 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!679 = !{i32 2, !"Dwarf Version", i32 4}
!680 = !{i32 2, !"Debug Info Version", i32 3}
!681 = !{i32 1, !"wchar_size", i32 4}
!682 = !{i32 7, !"PIC Level", i32 2}
!683 = !{i32 7, !"PIE Level", i32 2}
!684 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 229, type: !20, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !685)
!685 = !{!686}
!686 = !DILocalVariable(name: "status", arg: 1, scope: !684, file: !3, line: 229, type: !22)
!687 = !DILocalVariable(name: "infomap", scope: !688, file: !6, line: 632, type: !702)
!688 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !689, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !45}
!691 = !{!692, !687, !693, !694, !701}
!692 = !DILocalVariable(name: "program", arg: 1, scope: !688, file: !6, line: 630, type: !45)
!693 = !DILocalVariable(name: "node", scope: !688, file: !6, line: 642, type: !45)
!694 = !DILocalVariable(name: "map_prog", scope: !688, file: !6, line: 643, type: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !688, file: !6, line: 632, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !697, file: !6, line: 632, baseType: !45, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !6, line: 632, baseType: !45, size: 64, offset: 64)
!701 = !DILocalVariable(name: "lc_messages", scope: !688, file: !6, line: 655, type: !45)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 896, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 7)
!705 = !DILocation(line: 632, column: 67, scope: !688, inlinedAt: !706)
!706 = distinct !DILocation(line: 278, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 234, column: 5)
!708 = distinct !DILexicalBlock(scope: !684, file: !3, line: 231, column: 7)
!709 = !DILocation(line: 229, column: 12, scope: !684)
!710 = !DILocation(line: 231, column: 14, scope: !708)
!711 = !DILocation(line: 231, column: 7, scope: !684)
!712 = !DILocation(line: 232, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !3, line: 232, column: 5)
!714 = !{!715, !715, i64 0}
!715 = !{!"any pointer", !716, i64 0}
!716 = !{!"omnipotent char", !717, i64 0}
!717 = !{!"Simple C/C++ TBAA"}
!718 = !DILocation(line: 235, column: 7, scope: !707)
!719 = !DILocation(line: 239, column: 7, scope: !707)
!720 = !DILocation(line: 587, column: 3, scope: !721, inlinedAt: !724)
!721 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !722, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !69)
!722 = !DISubroutineType(types: !723)
!723 = !{null}
!724 = distinct !DILocation(line: 243, column: 7, scope: !707)
!725 = !DILocation(line: 245, column: 7, scope: !707)
!726 = !DILocation(line: 260, column: 7, scope: !707)
!727 = !DILocation(line: 263, column: 7, scope: !707)
!728 = !DILocation(line: 264, column: 7, scope: !707)
!729 = !DILocation(line: 266, column: 7, scope: !707)
!730 = !DILocation(line: 271, column: 7, scope: !707)
!731 = !DILocation(line: 632, column: 3, scope: !688, inlinedAt: !706)
!732 = !DILocation(line: 643, column: 36, scope: !688, inlinedAt: !706)
!733 = !DILocation(line: 643, column: 25, scope: !688, inlinedAt: !706)
!734 = !DILocation(line: 645, column: 33, scope: !688, inlinedAt: !706)
!735 = !DILocation(line: 645, column: 3, scope: !688, inlinedAt: !706)
!736 = !DILocation(line: 646, column: 13, scope: !688, inlinedAt: !706)
!737 = !DILocation(line: 645, column: 20, scope: !688, inlinedAt: !706)
!738 = !{!739, !715, i64 0}
!739 = !{!"infomap", !715, i64 0, !715, i64 8}
!740 = !DILocation(line: 645, column: 10, scope: !688, inlinedAt: !706)
!741 = !DILocation(line: 645, column: 28, scope: !688, inlinedAt: !706)
!742 = distinct !{!742, !743, !744}
!743 = !DILocation(line: 645, column: 3, scope: !688)
!744 = !DILocation(line: 646, column: 13, scope: !688)
!745 = !DILocation(line: 648, column: 17, scope: !746, inlinedAt: !706)
!746 = distinct !DILexicalBlock(scope: !688, file: !6, line: 648, column: 7)
!747 = !{!739, !715, i64 8}
!748 = !DILocation(line: 648, column: 7, scope: !746, inlinedAt: !706)
!749 = !DILocation(line: 648, column: 7, scope: !688, inlinedAt: !706)
!750 = !DILocation(line: 642, column: 15, scope: !688, inlinedAt: !706)
!751 = !DILocation(line: 651, column: 3, scope: !688, inlinedAt: !706)
!752 = !DILocation(line: 655, column: 29, scope: !688, inlinedAt: !706)
!753 = !DILocation(line: 655, column: 15, scope: !688, inlinedAt: !706)
!754 = !DILocation(line: 656, column: 7, scope: !755, inlinedAt: !706)
!755 = distinct !DILexicalBlock(scope: !688, file: !6, line: 656, column: 7)
!756 = !DILocation(line: 656, column: 19, scope: !755, inlinedAt: !706)
!757 = !DILocation(line: 656, column: 22, scope: !755, inlinedAt: !706)
!758 = !DILocation(line: 656, column: 7, scope: !688, inlinedAt: !706)
!759 = !DILocation(line: 662, column: 7, scope: !760, inlinedAt: !706)
!760 = distinct !DILexicalBlock(scope: !755, file: !6, line: 657, column: 5)
!761 = !DILocation(line: 664, column: 5, scope: !760, inlinedAt: !706)
!762 = !DILocation(line: 665, column: 3, scope: !688, inlinedAt: !706)
!763 = !DILocation(line: 667, column: 3, scope: !688, inlinedAt: !706)
!764 = !DILocation(line: 669, column: 1, scope: !688, inlinedAt: !706)
!765 = !DILocation(line: 280, column: 3, scope: !684)
!766 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 430, type: !767, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !770)
!767 = !DISubroutineType(types: !768)
!768 = !{!22, !22, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!770 = !{!771, !772, !773, !774, !778, !779, !783, !785, !786, !797}
!771 = !DILocalVariable(name: "argc", arg: 1, scope: !766, file: !3, line: 430, type: !22)
!772 = !DILocalVariable(name: "argv", arg: 2, scope: !766, file: !3, line: 430, type: !769)
!773 = !DILocalVariable(name: "timeout", scope: !766, file: !3, line: 432, type: !35)
!774 = !DILocalVariable(name: "signame", scope: !766, file: !3, line: 433, type: !775)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 19)
!778 = !DILocalVariable(name: "c", scope: !766, file: !3, line: 434, type: !22)
!779 = !DILocalVariable(name: "exit_status", scope: !780, file: !3, line: 518, type: !22)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 510, column: 5)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 509, column: 12)
!782 = distinct !DILexicalBlock(scope: !766, file: !3, line: 504, column: 7)
!783 = !DILocalVariable(name: "wait_result", scope: !784, file: !3, line: 524, type: !29)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 523, column: 5)
!785 = !DILocalVariable(name: "status", scope: !784, file: !3, line: 525, type: !22)
!786 = !DILocalVariable(name: "cleanup_set", scope: !784, file: !3, line: 535, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !788, line: 7, baseType: !789)
!788 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !790, line: 8, baseType: !791)
!790 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 5, size: 1024, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !791, file: !790, line: 7, baseType: !794, size: 1024)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1024, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 16)
!797 = !DILocalVariable(name: "sig", scope: !798, file: !3, line: 553, type: !22)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 552, column: 13)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 551, column: 20)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 549, column: 15)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 548, column: 9)
!802 = distinct !DILexicalBlock(scope: !784, file: !3, line: 541, column: 11)
!803 = !DILocation(line: 430, column: 11, scope: !766)
!804 = !DILocation(line: 430, column: 24, scope: !766)
!805 = !DILocation(line: 433, column: 3, scope: !766)
!806 = !DILocation(line: 433, column: 8, scope: !766)
!807 = !DILocation(line: 437, column: 21, scope: !766)
!808 = !DILocation(line: 437, column: 3, scope: !766)
!809 = !DILocation(line: 438, column: 3, scope: !766)
!810 = !DILocation(line: 439, column: 3, scope: !766)
!811 = !DILocation(line: 440, column: 3, scope: !766)
!812 = !DILocalVariable(name: "status", arg: 1, scope: !813, file: !6, line: 99, type: !22)
!813 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !20, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !814)
!814 = !{!812}
!815 = !DILocation(line: 99, column: 30, scope: !813, inlinedAt: !816)
!816 = distinct !DILocation(line: 442, column: 3, scope: !766)
!817 = !DILocation(line: 102, column: 18, scope: !818, inlinedAt: !816)
!818 = distinct !DILexicalBlock(scope: !813, file: !6, line: 101, column: 7)
!819 = !{!820, !820, i64 0}
!820 = !{!"int", !716, i64 0}
!821 = !DILocation(line: 443, column: 3, scope: !766)
!822 = !DILocation(line: 445, column: 3, scope: !766)
!823 = !DILocation(line: 445, column: 15, scope: !766)
!824 = !DILocation(line: 434, column: 7, scope: !766)
!825 = !DILocation(line: 450, column: 40, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 448, column: 9)
!827 = distinct !DILexicalBlock(scope: !766, file: !3, line: 446, column: 5)
!828 = !DILocation(line: 450, column: 24, scope: !826)
!829 = !DILocation(line: 450, column: 22, scope: !826)
!830 = !{!831, !831, i64 0}
!831 = !{!"double", !716, i64 0}
!832 = !DILocation(line: 451, column: 11, scope: !826)
!833 = !DILocation(line: 454, column: 38, scope: !826)
!834 = !DILocation(line: 454, column: 25, scope: !826)
!835 = !DILocation(line: 454, column: 23, scope: !826)
!836 = !DILocation(line: 455, column: 27, scope: !837)
!837 = distinct !DILexicalBlock(scope: !826, file: !3, line: 455, column: 15)
!838 = !DILocation(line: 455, column: 15, scope: !826)
!839 = distinct !{!839, !822, !840}
!840 = !DILocation(line: 479, column: 5, scope: !766)
!841 = !DILocation(line: 456, column: 13, scope: !837)
!842 = !DILocation(line: 461, column: 11, scope: !826)
!843 = !DILocation(line: 465, column: 11, scope: !826)
!844 = !DILocation(line: 469, column: 11, scope: !826)
!845 = !DILocation(line: 471, column: 9, scope: !826)
!846 = !DILocation(line: 473, column: 9, scope: !826)
!847 = !DILocation(line: 476, column: 11, scope: !826)
!848 = !DILocation(line: 481, column: 14, scope: !849)
!849 = distinct !DILexicalBlock(scope: !766, file: !3, line: 481, column: 7)
!850 = !DILocation(line: 481, column: 12, scope: !849)
!851 = !DILocation(line: 481, column: 21, scope: !849)
!852 = !DILocation(line: 481, column: 7, scope: !766)
!853 = !DILocation(line: 482, column: 5, scope: !849)
!854 = !DILocation(line: 484, column: 40, scope: !766)
!855 = !DILocation(line: 484, column: 29, scope: !766)
!856 = !DILocation(line: 484, column: 13, scope: !766)
!857 = !DILocation(line: 432, column: 10, scope: !766)
!858 = !DILocation(line: 486, column: 11, scope: !766)
!859 = !DILocation(line: 486, column: 8, scope: !766)
!860 = !DILocation(line: 487, column: 13, scope: !766)
!861 = !DILocation(line: 487, column: 11, scope: !766)
!862 = !DILocation(line: 493, column: 7, scope: !766)
!863 = !DILocation(line: 494, column: 5, scope: !864)
!864 = distinct !DILexicalBlock(scope: !766, file: !3, line: 493, column: 7)
!865 = !DILocation(line: 498, column: 20, scope: !766)
!866 = !DILocalVariable(name: "sigterm", arg: 1, scope: !867, file: !3, line: 366, type: !22)
!867 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 366, type: !20, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !868)
!868 = !{!866, !869}
!869 = !DILocalVariable(name: "sa", scope: !867, file: !3, line: 368, type: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !871, line: 27, size: 1216, elements: !872)
!871 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!872 = !{!873, !957, !958, !959}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !870, file: !871, line: 38, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !870, file: !871, line: 31, size: 64, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !874, file: !871, line: 34, baseType: !17, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !874, file: !871, line: 36, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !22, !881, !16}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !883, line: 124, baseType: !884)
!883 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !883, line: 36, size: 1024, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !884, file: !883, line: 38, baseType: !22, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !884, file: !883, line: 40, baseType: !22, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !884, file: !883, line: 42, baseType: !22, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !884, file: !883, line: 48, baseType: !22, size: 32, offset: 96)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !884, file: !883, line: 123, baseType: !891, size: 896, offset: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !883, line: 51, size: 896, elements: !892)
!892 = !{!893, !897, !903, !915, !921, !930, !946, !951}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !891, file: !883, line: 53, baseType: !894, size: 896)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 896, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 28)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !891, file: !883, line: 60, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 56, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !898, file: !883, line: 58, baseType: !31, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !898, file: !883, line: 59, baseType: !902, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !32, line: 144, baseType: !7)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !891, file: !883, line: 68, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 63, size: 128, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !904, file: !883, line: 65, baseType: !22, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !904, file: !883, line: 66, baseType: !22, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !904, file: !883, line: 67, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !910, line: 30, baseType: !911)
!910 = !DIFile(filename: "/usr/include/bits/types/__sigval_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !910, line: 24, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !911, file: !910, line: 26, baseType: !22, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !911, file: !910, line: 27, baseType: !16, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !891, file: !883, line: 76, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 71, size: 128, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !916, file: !883, line: 73, baseType: !31, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !916, file: !883, line: 74, baseType: !902, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !916, file: !883, line: 75, baseType: !909, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !891, file: !883, line: 86, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 79, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927, !929}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !922, file: !883, line: 81, baseType: !31, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !922, file: !883, line: 82, baseType: !902, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !922, file: !883, line: 83, baseType: !22, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !922, file: !883, line: 84, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !32, line: 154, baseType: !244)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !922, file: !883, line: 85, baseType: !928, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !891, file: !883, line: 105, baseType: !931, size: 256)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 89, size: 256, elements: !932)
!932 = !{!933, !934, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !931, file: !883, line: 91, baseType: !16, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !931, file: !883, line: 93, baseType: !935, size: 16, offset: 64)
!935 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !931, file: !883, line: 104, baseType: !937, size: 128, offset: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !883, line: 94, size: 128, elements: !938)
!938 = !{!939, !944}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !937, file: !883, line: 101, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !883, line: 97, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !940, file: !883, line: 99, baseType: !16, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !940, file: !883, line: 100, baseType: !16, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !937, file: !883, line: 103, baseType: !945, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 41, baseType: !7)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !891, file: !883, line: 112, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 108, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !947, file: !883, line: 110, baseType: !244, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !947, file: !883, line: 111, baseType: !22, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !891, file: !883, line: 121, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !883, line: 116, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !952, file: !883, line: 118, baseType: !16, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !952, file: !883, line: 119, baseType: !22, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !952, file: !883, line: 120, baseType: !7, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !870, file: !871, line: 46, baseType: !789, size: 1024, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !870, file: !871, line: 49, baseType: !22, size: 32, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !870, file: !871, line: 52, baseType: !960, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!961 = !DILocation(line: 366, column: 22, scope: !867, inlinedAt: !962)
!962 = distinct !DILocation(line: 498, column: 3, scope: !766)
!963 = !DILocation(line: 368, column: 3, scope: !867, inlinedAt: !962)
!964 = !DILocation(line: 369, column: 20, scope: !867, inlinedAt: !962)
!965 = !DILocation(line: 369, column: 3, scope: !867, inlinedAt: !962)
!966 = !DILocation(line: 370, column: 6, scope: !867, inlinedAt: !962)
!967 = !DILocation(line: 370, column: 17, scope: !867, inlinedAt: !962)
!968 = !{!716, !716, i64 0}
!969 = !DILocation(line: 371, column: 6, scope: !867, inlinedAt: !962)
!970 = !DILocation(line: 371, column: 15, scope: !867, inlinedAt: !962)
!971 = !{!972, !820, i64 136}
!972 = !{!"sigaction", !716, i64 0, !973, i64 8, !820, i64 136, !715, i64 144}
!973 = !{!"", !716, i64 0}
!974 = !DILocation(line: 368, column: 20, scope: !867, inlinedAt: !962)
!975 = !DILocation(line: 374, column: 3, scope: !867, inlinedAt: !962)
!976 = !DILocation(line: 375, column: 3, scope: !867, inlinedAt: !962)
!977 = !DILocation(line: 376, column: 3, scope: !867, inlinedAt: !962)
!978 = !DILocation(line: 377, column: 3, scope: !867, inlinedAt: !962)
!979 = !DILocation(line: 378, column: 3, scope: !867, inlinedAt: !962)
!980 = !DILocation(line: 379, column: 3, scope: !867, inlinedAt: !962)
!981 = !DILocation(line: 380, column: 1, scope: !867, inlinedAt: !962)
!982 = !DILocation(line: 499, column: 3, scope: !766)
!983 = !DILocation(line: 500, column: 3, scope: !766)
!984 = !DILocation(line: 352, column: 3, scope: !985, inlinedAt: !988)
!985 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 350, type: !722, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !986)
!986 = !{!987}
!987 = !DILocalVariable(name: "sa", scope: !985, file: !3, line: 352, type: !870)
!988 = distinct !DILocation(line: 501, column: 3, scope: !766)
!989 = !DILocation(line: 353, column: 20, scope: !985, inlinedAt: !988)
!990 = !DILocation(line: 353, column: 3, scope: !985, inlinedAt: !988)
!991 = !DILocation(line: 354, column: 6, scope: !985, inlinedAt: !988)
!992 = !DILocation(line: 354, column: 17, scope: !985, inlinedAt: !988)
!993 = !DILocation(line: 355, column: 6, scope: !985, inlinedAt: !988)
!994 = !DILocation(line: 355, column: 15, scope: !985, inlinedAt: !988)
!995 = !DILocation(line: 352, column: 20, scope: !985, inlinedAt: !988)
!996 = !DILocation(line: 358, column: 3, scope: !985, inlinedAt: !988)
!997 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !988)
!998 = !DILocation(line: 363, column: 1, scope: !985, inlinedAt: !988)
!999 = !DILocation(line: 503, column: 19, scope: !766)
!1000 = !DILocation(line: 503, column: 17, scope: !766)
!1001 = !DILocation(line: 504, column: 7, scope: !766)
!1002 = !DILocation(line: 506, column: 17, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !782, file: !3, line: 505, column: 5)
!1004 = !DILocation(line: 506, column: 24, scope: !1003)
!1005 = !DILocation(line: 506, column: 7, scope: !1003)
!1006 = !DILocation(line: 507, column: 7, scope: !1003)
!1007 = !DILocation(line: 512, column: 7, scope: !780)
!1008 = !DILocation(line: 513, column: 7, scope: !780)
!1009 = !DILocation(line: 515, column: 15, scope: !780)
!1010 = !DILocation(line: 515, column: 7, scope: !780)
!1011 = !DILocation(line: 518, column: 25, scope: !780)
!1012 = !DILocation(line: 518, column: 31, scope: !780)
!1013 = !DILocation(line: 518, column: 11, scope: !780)
!1014 = !DILocation(line: 519, column: 24, scope: !780)
!1015 = !DILocation(line: 519, column: 62, scope: !780)
!1016 = !DILocation(line: 519, column: 55, scope: !780)
!1017 = !DILocation(line: 519, column: 7, scope: !780)
!1018 = !DILocation(line: 525, column: 7, scope: !784)
!1019 = !DILocation(line: 529, column: 7, scope: !784)
!1020 = !DILocation(line: 531, column: 7, scope: !784)
!1021 = !DILocation(line: 535, column: 7, scope: !784)
!1022 = !DILocation(line: 536, column: 31, scope: !784)
!1023 = !DILocation(line: 535, column: 16, scope: !784)
!1024 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1025, file: !3, line: 388, type: !22)
!1025 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !3, file: !3, line: 388, type: !1026, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1029)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !22, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1029 = !{!1024, !1030, !1031}
!1030 = !DILocalVariable(name: "old_set", arg: 2, scope: !1025, file: !3, line: 388, type: !1028)
!1031 = !DILocalVariable(name: "block_set", scope: !1025, file: !3, line: 390, type: !787)
!1032 = !DILocation(line: 388, column: 29, scope: !1025, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 536, column: 7, scope: !784)
!1034 = !DILocation(line: 388, column: 48, scope: !1025, inlinedAt: !1033)
!1035 = !DILocation(line: 390, column: 3, scope: !1025, inlinedAt: !1033)
!1036 = !DILocation(line: 390, column: 12, scope: !1025, inlinedAt: !1033)
!1037 = !DILocation(line: 391, column: 3, scope: !1025, inlinedAt: !1033)
!1038 = !DILocation(line: 393, column: 3, scope: !1025, inlinedAt: !1033)
!1039 = !DILocation(line: 394, column: 3, scope: !1025, inlinedAt: !1033)
!1040 = !DILocation(line: 395, column: 3, scope: !1025, inlinedAt: !1033)
!1041 = !DILocation(line: 396, column: 3, scope: !1025, inlinedAt: !1033)
!1042 = !DILocation(line: 397, column: 3, scope: !1025, inlinedAt: !1033)
!1043 = !DILocation(line: 398, column: 3, scope: !1025, inlinedAt: !1033)
!1044 = !DILocation(line: 400, column: 3, scope: !1025, inlinedAt: !1033)
!1045 = !DILocation(line: 402, column: 7, scope: !1046, inlinedAt: !1033)
!1046 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 402, column: 7)
!1047 = !DILocation(line: 402, column: 52, scope: !1046, inlinedAt: !1033)
!1048 = !DILocation(line: 402, column: 7, scope: !1025, inlinedAt: !1033)
!1049 = !DILocation(line: 403, column: 15, scope: !1046, inlinedAt: !1033)
!1050 = !DILocation(line: 403, column: 22, scope: !1046, inlinedAt: !1033)
!1051 = !DILocation(line: 403, column: 5, scope: !1046, inlinedAt: !1033)
!1052 = !DILocation(line: 404, column: 1, scope: !1025, inlinedAt: !1033)
!1053 = !DILocation(line: 538, column: 38, scope: !784)
!1054 = !DILocation(line: 525, column: 11, scope: !784)
!1055 = !DILocation(line: 538, column: 29, scope: !784)
!1056 = !DILocation(line: 524, column: 13, scope: !784)
!1057 = !DILocation(line: 538, column: 72, scope: !784)
!1058 = !DILocation(line: 538, column: 7, scope: !784)
!1059 = !DILocation(line: 539, column: 9, scope: !784)
!1060 = distinct !{!1060, !1058, !1061}
!1061 = !DILocation(line: 539, column: 33, scope: !784)
!1062 = !DILocation(line: 541, column: 23, scope: !802)
!1063 = !DILocation(line: 541, column: 11, scope: !784)
!1064 = !DILocation(line: 544, column: 21, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !802, file: !3, line: 542, column: 9)
!1066 = !DILocation(line: 544, column: 28, scope: !1065)
!1067 = !DILocation(line: 544, column: 11, scope: !1065)
!1068 = !DILocation(line: 545, column: 18, scope: !1065)
!1069 = !DILocation(line: 546, column: 9, scope: !1065)
!1070 = !DILocation(line: 549, column: 15, scope: !800)
!1071 = !DILocation(line: 549, column: 15, scope: !801)
!1072 = !DILocation(line: 550, column: 22, scope: !800)
!1073 = !DILocation(line: 550, column: 20, scope: !800)
!1074 = !DILocation(line: 550, column: 13, scope: !800)
!1075 = !DILocation(line: 551, column: 20, scope: !799)
!1076 = !DILocation(line: 551, column: 20, scope: !800)
!1077 = !DILocation(line: 553, column: 19, scope: !798)
!1078 = !DILocation(line: 554, column: 19, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !798, file: !3, line: 554, column: 19)
!1080 = !DILocation(line: 554, column: 19, scope: !798)
!1081 = !DILocation(line: 555, column: 30, scope: !1079)
!1082 = !DILocation(line: 555, column: 17, scope: !1079)
!1083 = !DILocation(line: 556, column: 30, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !798, file: !3, line: 556, column: 19)
!1085 = !DILocation(line: 412, column: 7, scope: !1086, inlinedAt: !1090)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 412, column: 7)
!1087 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 409, type: !1088, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !69)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!38}
!1090 = distinct !DILocation(line: 556, column: 33, scope: !1084)
!1091 = !DILocation(line: 412, column: 34, scope: !1086, inlinedAt: !1090)
!1092 = !DILocation(line: 412, column: 7, scope: !1087, inlinedAt: !1090)
!1093 = !DILocation(line: 425, column: 13, scope: !1087, inlinedAt: !1090)
!1094 = !DILocation(line: 425, column: 20, scope: !1087, inlinedAt: !1090)
!1095 = !DILocation(line: 425, column: 3, scope: !1087, inlinedAt: !1090)
!1096 = !DILocation(line: 556, column: 19, scope: !798)
!1097 = !DILocation(line: 559, column: 19, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 557, column: 17)
!1099 = !DILocation(line: 560, column: 19, scope: !1098)
!1100 = !DILocation(line: 561, column: 19, scope: !1098)
!1101 = !DILocation(line: 562, column: 17, scope: !1098)
!1102 = !DILocation(line: 563, column: 28, scope: !798)
!1103 = !DILocation(line: 563, column: 22, scope: !798)
!1104 = !DILocation(line: 564, column: 13, scope: !798)
!1105 = !DILocation(line: 568, column: 28, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !799, file: !3, line: 566, column: 13)
!1107 = !DILocation(line: 568, column: 67, scope: !1106)
!1108 = !DILocation(line: 568, column: 15, scope: !1106)
!1109 = !DILocation(line: 569, column: 22, scope: !1106)
!1110 = !DILocation(line: 573, column: 21, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !784, file: !3, line: 573, column: 11)
!1112 = !DILocation(line: 573, column: 11, scope: !784)
!1113 = !DILocation(line: 574, column: 16, scope: !1111)
!1114 = !DILocation(line: 574, column: 9, scope: !1111)
!1115 = !DILocation(line: 575, column: 14, scope: !784)
!1116 = !DILocation(line: 576, column: 5, scope: !781)
!1117 = !DILocation(line: 0, scope: !784)
!1118 = !DILocation(line: 577, column: 1, scope: !766)
!1119 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 319, type: !1120, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!35, !45}
!1122 = !{!1123, !1124, !1125}
!1123 = !DILocalVariable(name: "str", arg: 1, scope: !1119, file: !3, line: 319, type: !45)
!1124 = !DILocalVariable(name: "duration", scope: !1119, file: !3, line: 321, type: !35)
!1125 = !DILocalVariable(name: "ep", scope: !1119, file: !3, line: 322, type: !45)
!1126 = !DILocation(line: 319, column: 29, scope: !1119)
!1127 = !DILocation(line: 321, column: 3, scope: !1119)
!1128 = !DILocation(line: 322, column: 3, scope: !1119)
!1129 = !DILocation(line: 321, column: 10, scope: !1119)
!1130 = !DILocation(line: 322, column: 15, scope: !1119)
!1131 = !DILocation(line: 324, column: 10, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 324, column: 7)
!1133 = !DILocation(line: 324, column: 50, scope: !1132)
!1134 = !DILocation(line: 324, column: 53, scope: !1132)
!1135 = !DILocation(line: 324, column: 59, scope: !1132)
!1136 = !DILocation(line: 326, column: 18, scope: !1132)
!1137 = !DILocation(line: 326, column: 15, scope: !1132)
!1138 = !DILocation(line: 326, column: 7, scope: !1132)
!1139 = !DILocation(line: 328, column: 7, scope: !1132)
!1140 = !DILocation(line: 328, column: 12, scope: !1132)
!1141 = !DILocation(line: 328, column: 11, scope: !1132)
!1142 = !DILocation(line: 328, column: 15, scope: !1132)
!1143 = !DILocation(line: 328, column: 23, scope: !1132)
!1144 = !DILocation(line: 328, column: 18, scope: !1132)
!1145 = !DILocation(line: 330, column: 7, scope: !1132)
!1146 = !DILocalVariable(name: "x", arg: 1, scope: !1147, file: !3, line: 290, type: !1150)
!1147 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 290, type: !1148, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1151)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!38, !1150, !15}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1151 = !{!1146, !1152, !1153}
!1152 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1147, file: !3, line: 290, type: !15)
!1153 = !DILocalVariable(name: "multiplier", scope: !1147, file: !3, line: 292, type: !22)
!1154 = !DILocation(line: 290, column: 28, scope: !1147, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 330, column: 11, scope: !1132)
!1156 = !DILocation(line: 290, column: 36, scope: !1147, inlinedAt: !1155)
!1157 = !DILocation(line: 294, column: 11, scope: !1147, inlinedAt: !1155)
!1158 = !DILocation(line: 294, column: 3, scope: !1147, inlinedAt: !1155)
!1159 = !DILocation(line: 292, column: 7, scope: !1147, inlinedAt: !1155)
!1160 = !DILocation(line: 302, column: 7, scope: !1161, inlinedAt: !1155)
!1161 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 295, column: 5)
!1162 = !DILocation(line: 305, column: 7, scope: !1161, inlinedAt: !1155)
!1163 = !DILocation(line: 308, column: 7, scope: !1161, inlinedAt: !1155)
!1164 = !DILocation(line: 332, column: 20, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 331, column: 5)
!1166 = !DILocation(line: 332, column: 51, scope: !1165)
!1167 = !DILocation(line: 332, column: 7, scope: !1165)
!1168 = !DILocation(line: 333, column: 7, scope: !1165)
!1169 = !DILocation(line: 313, column: 6, scope: !1147, inlinedAt: !1155)
!1170 = !DILocation(line: 337, column: 1, scope: !1119)
!1171 = !DILocation(line: 336, column: 3, scope: !1119)
!1172 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 180, type: !20, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1180}
!1174 = !DILocalVariable(name: "sig", arg: 1, scope: !1172, file: !3, line: 180, type: !22)
!1175 = !DILocalVariable(name: "saved_errno", scope: !1176, file: !3, line: 191, type: !22)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 190, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 189, column: 11)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 188, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 187, column: 7)
!1180 = !DILocalVariable(name: "signame", scope: !1181, file: !3, line: 204, type: !775)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 203, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 202, column: 11)
!1183 = !DILocation(line: 180, column: 14, scope: !1172)
!1184 = !DILocation(line: 182, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 182, column: 7)
!1186 = !DILocation(line: 182, column: 7, scope: !1172)
!1187 = !DILocation(line: 185, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 183, column: 5)
!1189 = !DILocation(line: 186, column: 5, scope: !1188)
!1190 = !DILocation(line: 187, column: 7, scope: !1179)
!1191 = !DILocation(line: 187, column: 7, scope: !1172)
!1192 = !DILocation(line: 189, column: 11, scope: !1177)
!1193 = !DILocation(line: 189, column: 11, scope: !1178)
!1194 = !DILocation(line: 191, column: 29, scope: !1176)
!1195 = !DILocation(line: 191, column: 15, scope: !1176)
!1196 = !DILocation(line: 193, column: 23, scope: !1176)
!1197 = !DILocation(line: 194, column: 11, scope: !1176)
!1198 = !DILocation(line: 195, column: 22, scope: !1176)
!1199 = !DILocation(line: 196, column: 17, scope: !1176)
!1200 = !DILocation(line: 197, column: 9, scope: !1176)
!1201 = !DILocation(line: 202, column: 11, scope: !1178)
!1202 = !DILocation(line: 204, column: 11, scope: !1181)
!1203 = !DILocation(line: 204, column: 16, scope: !1181)
!1204 = !DILocation(line: 205, column: 15, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 205, column: 15)
!1206 = !DILocation(line: 205, column: 38, scope: !1205)
!1207 = !DILocation(line: 205, column: 15, scope: !1181)
!1208 = !DILocation(line: 206, column: 13, scope: !1205)
!1209 = !DILocation(line: 207, column: 24, scope: !1181)
!1210 = !DILocation(line: 208, column: 34, scope: !1181)
!1211 = !DILocation(line: 208, column: 27, scope: !1181)
!1212 = !DILocation(line: 207, column: 11, scope: !1181)
!1213 = !DILocation(line: 209, column: 9, scope: !1182)
!1214 = !DILocation(line: 209, column: 9, scope: !1181)
!1215 = !DILocation(line: 210, column: 17, scope: !1178)
!1216 = !DILocalVariable(name: "where", arg: 1, scope: !1217, file: !3, line: 157, type: !29)
!1217 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 157, type: !1218, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!22, !29, !22}
!1220 = !{!1216, !1221}
!1221 = !DILocalVariable(name: "sig", arg: 2, scope: !1217, file: !3, line: 157, type: !22)
!1222 = !DILocation(line: 157, column: 17, scope: !1217, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 210, column: 7, scope: !1178)
!1224 = !DILocation(line: 157, column: 28, scope: !1217, inlinedAt: !1223)
!1225 = !DILocation(line: 166, column: 13, scope: !1226, inlinedAt: !1223)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 166, column: 7)
!1227 = !DILocation(line: 166, column: 7, scope: !1217, inlinedAt: !1223)
!1228 = !DILocation(line: 167, column: 5, scope: !1226, inlinedAt: !1223)
!1229 = !DILocation(line: 168, column: 10, scope: !1217, inlinedAt: !1223)
!1230 = !DILocation(line: 214, column: 11, scope: !1178)
!1231 = !DILocation(line: 157, column: 17, scope: !1217, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 216, column: 11, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 215, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 214, column: 11)
!1235 = !DILocation(line: 157, column: 28, scope: !1217, inlinedAt: !1232)
!1236 = !DILocation(line: 167, column: 5, scope: !1226, inlinedAt: !1232)
!1237 = !DILocation(line: 168, column: 10, scope: !1217, inlinedAt: !1232)
!1238 = !DILocation(line: 217, column: 30, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 217, column: 15)
!1240 = !DILocation(line: 219, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 218, column: 13)
!1242 = !DILocation(line: 157, column: 17, scope: !1217, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 219, column: 15, scope: !1241)
!1244 = !DILocation(line: 157, column: 28, scope: !1217, inlinedAt: !1243)
!1245 = !DILocation(line: 166, column: 13, scope: !1226, inlinedAt: !1243)
!1246 = !DILocation(line: 166, column: 7, scope: !1217, inlinedAt: !1243)
!1247 = !DILocation(line: 167, column: 5, scope: !1226, inlinedAt: !1243)
!1248 = !DILocation(line: 168, column: 10, scope: !1217, inlinedAt: !1243)
!1249 = !DILocation(line: 157, column: 17, scope: !1217, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 220, column: 15, scope: !1241)
!1251 = !DILocation(line: 157, column: 28, scope: !1217, inlinedAt: !1250)
!1252 = !DILocation(line: 167, column: 5, scope: !1226, inlinedAt: !1250)
!1253 = !DILocation(line: 168, column: 10, scope: !1217, inlinedAt: !1250)
!1254 = !DILocation(line: 221, column: 13, scope: !1241)
!1255 = !DILocation(line: 225, column: 16, scope: !1179)
!1256 = !DILocation(line: 225, column: 5, scope: !1179)
!1257 = !DILocation(line: 226, column: 1, scope: !1172)
!1258 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 174, type: !20, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1259)
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "sig", arg: 1, scope: !1258, file: !3, line: 174, type: !22)
!1261 = !DILocation(line: 174, column: 11, scope: !1258)
!1262 = !DILocation(line: 176, column: 1, scope: !1258)
!1263 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 340, type: !20, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1264)
!1264 = !{!1265, !1266}
!1265 = !DILocalVariable(name: "sig", arg: 1, scope: !1263, file: !3, line: 340, type: !22)
!1266 = !DILocalVariable(name: "unblock_set", scope: !1263, file: !3, line: 342, type: !787)
!1267 = !DILocation(line: 340, column: 21, scope: !1263)
!1268 = !DILocation(line: 342, column: 3, scope: !1263)
!1269 = !DILocation(line: 342, column: 12, scope: !1263)
!1270 = !DILocation(line: 343, column: 3, scope: !1263)
!1271 = !DILocation(line: 344, column: 3, scope: !1263)
!1272 = !DILocation(line: 345, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 345, column: 7)
!1274 = !DILocation(line: 345, column: 53, scope: !1273)
!1275 = !DILocation(line: 345, column: 7, scope: !1263)
!1276 = !DILocation(line: 346, column: 15, scope: !1273)
!1277 = !DILocation(line: 346, column: 22, scope: !1273)
!1278 = !DILocation(line: 346, column: 5, scope: !1273)
!1279 = !DILocation(line: 347, column: 1, scope: !1263)
!1280 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 114, type: !1281, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !35, !38}
!1283 = !{!1284, !1285, !1286, !1293, !1299, !1303, !1304}
!1284 = !DILocalVariable(name: "duration", arg: 1, scope: !1280, file: !3, line: 114, type: !35)
!1285 = !DILocalVariable(name: "warn", arg: 2, scope: !1280, file: !3, line: 114, type: !38)
!1286 = !DILocalVariable(name: "ts", scope: !1280, file: !3, line: 125, type: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1288, line: 9, size: 128, elements: !1289)
!1288 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1287, file: !1288, line: 11, baseType: !243, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1287, file: !1288, line: 12, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !32, line: 194, baseType: !244)
!1293 = !DILocalVariable(name: "its", scope: !1280, file: !3, line: 126, type: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1295, line: 8, size: 256, elements: !1296)
!1295 = !DIFile(filename: "/usr/include/bits/types/struct_itimerspec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1294, file: !1295, line: 10, baseType: !1287, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1294, file: !1295, line: 11, baseType: !1287, size: 128, offset: 128)
!1299 = !DILocalVariable(name: "timerid", scope: !1280, file: !3, line: 127, type: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1301, line: 7, baseType: !1302)
!1301 = !DIFile(filename: "/usr/include/bits/types/timer_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !32, line: 169, baseType: !16)
!1303 = !DILocalVariable(name: "timeint", scope: !1280, file: !3, line: 143, type: !7)
!1304 = !DILocalVariable(name: "duration_floor", scope: !1305, file: !3, line: 148, type: !7)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 147, column: 5)
!1306 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 144, column: 7)
!1307 = !DILocation(line: 114, column: 20, scope: !1280)
!1308 = !DILocation(line: 114, column: 35, scope: !1280)
!1309 = !DILocation(line: 125, column: 24, scope: !1280)
!1310 = !DILocation(line: 125, column: 19, scope: !1280)
!1311 = !DILocation(line: 126, column: 3, scope: !1280)
!1312 = !DILocation(line: 126, column: 37, scope: !1280)
!1313 = !DILocation(line: 126, column: 29, scope: !1280)
!1314 = !DILocation(line: 127, column: 3, scope: !1280)
!1315 = !DILocation(line: 127, column: 11, scope: !1280)
!1316 = !DILocation(line: 128, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 128, column: 7)
!1318 = !DILocation(line: 128, column: 53, scope: !1317)
!1319 = !DILocation(line: 128, column: 7, scope: !1280)
!1320 = !DILocation(line: 130, column: 26, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 130, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 129, column: 5)
!1323 = !DILocation(line: 126, column: 21, scope: !1280)
!1324 = !DILocation(line: 130, column: 11, scope: !1321)
!1325 = !DILocation(line: 130, column: 50, scope: !1321)
!1326 = !DILocation(line: 130, column: 11, scope: !1322)
!1327 = !DILocation(line: 134, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 133, column: 9)
!1329 = !DILocation(line: 135, column: 23, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 134, column: 15)
!1331 = !DILocation(line: 135, column: 30, scope: !1330)
!1332 = !DILocation(line: 135, column: 13, scope: !1330)
!1333 = !DILocation(line: 136, column: 25, scope: !1328)
!1334 = !DILocation(line: 136, column: 11, scope: !1328)
!1335 = !DILocation(line: 138, column: 5, scope: !1322)
!1336 = !DILocation(line: 139, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 139, column: 12)
!1338 = !DILocation(line: 139, column: 20, scope: !1337)
!1339 = !DILocation(line: 139, column: 26, scope: !1337)
!1340 = !DILocation(line: 139, column: 12, scope: !1317)
!1341 = !DILocation(line: 140, column: 22, scope: !1337)
!1342 = !DILocation(line: 140, column: 5, scope: !1337)
!1343 = !DILocation(line: 144, column: 16, scope: !1306)
!1344 = !DILocation(line: 144, column: 7, scope: !1280)
!1345 = !DILocation(line: 148, column: 37, scope: !1305)
!1346 = !DILocation(line: 148, column: 20, scope: !1305)
!1347 = !DILocation(line: 149, column: 35, scope: !1305)
!1348 = !DILocation(line: 149, column: 50, scope: !1305)
!1349 = !DILocation(line: 149, column: 32, scope: !1305)
!1350 = !DILocation(line: 143, column: 16, scope: !1280)
!1351 = !DILocation(line: 0, scope: !1305)
!1352 = !DILocation(line: 151, column: 3, scope: !1280)
!1353 = !DILocation(line: 152, column: 1, scope: !1280)
!1354 = distinct !DISubprogram(name: "operand2sig", scope: !232, file: !232, line: 36, type: !1355, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!22, !45, !14}
!1357 = !{!1358, !1359, !1360, !1361, !1364, !1365, !1366, !1368}
!1358 = !DILocalVariable(name: "operand", arg: 1, scope: !1354, file: !232, line: 36, type: !45)
!1359 = !DILocalVariable(name: "signame", arg: 2, scope: !1354, file: !232, line: 36, type: !14)
!1360 = !DILocalVariable(name: "signum", scope: !1354, file: !232, line: 38, type: !22)
!1361 = !DILocalVariable(name: "endp", scope: !1362, file: !232, line: 53, type: !14)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !232, line: 41, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !232, line: 40, column: 7)
!1364 = !DILocalVariable(name: "l", scope: !1362, file: !232, line: 54, type: !244)
!1365 = !DILocalVariable(name: "i", scope: !1362, file: !232, line: 55, type: !22)
!1366 = !DILocalVariable(name: "upcased", scope: !1367, file: !232, line: 70, type: !14)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !232, line: 67, column: 5)
!1368 = !DILocalVariable(name: "p", scope: !1367, file: !232, line: 71, type: !14)
!1369 = !DILocation(line: 36, column: 26, scope: !1354)
!1370 = !DILocation(line: 36, column: 41, scope: !1354)
!1371 = !DILocation(line: 38, column: 3, scope: !1354)
!1372 = !DILocation(line: 40, column: 7, scope: !1363)
!1373 = !DILocation(line: 40, column: 7, scope: !1354)
!1374 = !DILocation(line: 53, column: 7, scope: !1362)
!1375 = !DILocation(line: 54, column: 21, scope: !1362)
!1376 = !DILocation(line: 54, column: 27, scope: !1362)
!1377 = !DILocation(line: 53, column: 13, scope: !1362)
!1378 = !DILocation(line: 54, column: 32, scope: !1362)
!1379 = !DILocation(line: 54, column: 16, scope: !1362)
!1380 = !DILocation(line: 55, column: 15, scope: !1362)
!1381 = !DILocation(line: 55, column: 11, scope: !1362)
!1382 = !DILocation(line: 56, column: 28, scope: !1362)
!1383 = !DILocation(line: 56, column: 25, scope: !1362)
!1384 = !DILocation(line: 56, column: 33, scope: !1362)
!1385 = !DILocation(line: 56, column: 36, scope: !1362)
!1386 = !DILocation(line: 56, column: 42, scope: !1362)
!1387 = !DILocation(line: 56, column: 45, scope: !1362)
!1388 = !DILocation(line: 56, column: 56, scope: !1362)
!1389 = !DILocation(line: 56, column: 51, scope: !1362)
!1390 = !DILocation(line: 58, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1362, file: !232, line: 58, column: 11)
!1392 = !DILocation(line: 38, column: 7, scope: !1354)
!1393 = !DILocation(line: 63, column: 28, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !232, line: 59, column: 9)
!1395 = !DILocation(line: 63, column: 21, scope: !1394)
!1396 = !DILocation(line: 63, column: 18, scope: !1394)
!1397 = !DILocation(line: 64, column: 9, scope: !1394)
!1398 = !DILocation(line: 0, scope: !1362)
!1399 = !DILocation(line: 65, column: 5, scope: !1363)
!1400 = !DILocation(line: 65, column: 5, scope: !1362)
!1401 = !DILocation(line: 70, column: 23, scope: !1367)
!1402 = !DILocation(line: 70, column: 13, scope: !1367)
!1403 = !DILocation(line: 71, column: 13, scope: !1367)
!1404 = !DILocation(line: 72, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !232, line: 72, column: 7)
!1406 = distinct !DILexicalBlock(scope: !1367, file: !232, line: 72, column: 7)
!1407 = !DILocation(line: 72, column: 7, scope: !1406)
!1408 = !DILocation(line: 73, column: 51, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !232, line: 73, column: 13)
!1410 = !DILocation(line: 73, column: 13, scope: !1409)
!1411 = !DILocation(line: 73, column: 13, scope: !1405)
!1412 = !DILocation(line: 74, column: 14, scope: !1409)
!1413 = !DILocation(line: 74, column: 11, scope: !1409)
!1414 = !DILocation(line: 72, column: 30, scope: !1405)
!1415 = distinct !{!1415, !1407, !1416}
!1416 = !DILocation(line: 74, column: 23, scope: !1406)
!1417 = !DILocation(line: 78, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1367, file: !232, line: 78, column: 11)
!1419 = !DILocation(line: 78, column: 40, scope: !1418)
!1420 = !DILocation(line: 79, column: 13, scope: !1418)
!1421 = !DILocation(line: 79, column: 17, scope: !1418)
!1422 = !DILocation(line: 79, column: 28, scope: !1418)
!1423 = !DILocation(line: 79, column: 35, scope: !1418)
!1424 = !DILocation(line: 79, column: 38, scope: !1418)
!1425 = !DILocation(line: 79, column: 49, scope: !1418)
!1426 = !DILocation(line: 79, column: 56, scope: !1418)
!1427 = !DILocation(line: 79, column: 59, scope: !1418)
!1428 = !DILocation(line: 79, column: 70, scope: !1418)
!1429 = !DILocation(line: 80, column: 17, scope: !1418)
!1430 = !DILocation(line: 80, column: 37, scope: !1418)
!1431 = !DILocation(line: 80, column: 20, scope: !1418)
!1432 = !DILocation(line: 80, column: 51, scope: !1418)
!1433 = !DILocation(line: 78, column: 11, scope: !1367)
!1434 = !DILocation(line: 81, column: 16, scope: !1418)
!1435 = !DILocation(line: 81, column: 9, scope: !1418)
!1436 = !DILocation(line: 83, column: 7, scope: !1367)
!1437 = !DILocation(line: 86, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1354, file: !232, line: 86, column: 7)
!1439 = !DILocation(line: 86, column: 14, scope: !1438)
!1440 = !DILocation(line: 86, column: 18, scope: !1438)
!1441 = !DILocation(line: 86, column: 21, scope: !1438)
!1442 = !DILocation(line: 86, column: 47, scope: !1438)
!1443 = !DILocation(line: 86, column: 7, scope: !1354)
!1444 = !DILocation(line: 88, column: 20, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !232, line: 87, column: 5)
!1446 = !DILocation(line: 88, column: 45, scope: !1445)
!1447 = !DILocation(line: 88, column: 7, scope: !1445)
!1448 = !DILocation(line: 89, column: 7, scope: !1445)
!1449 = !DILocation(line: 92, column: 10, scope: !1354)
!1450 = !DILocation(line: 92, column: 3, scope: !1354)
!1451 = !DILocation(line: 0, scope: !1354)
!1452 = !DILocation(line: 93, column: 1, scope: !1354)
!1453 = distinct !DISubprogram(name: "c_strtod", scope: !100, file: !100, line: 66, type: !1454, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!35, !45, !769}
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "nptr", arg: 1, scope: !1453, file: !100, line: 66, type: !45)
!1458 = !DILocalVariable(name: "endptr", arg: 2, scope: !1453, file: !100, line: 66, type: !769)
!1459 = !DILocalVariable(name: "r", scope: !1453, file: !100, line: 68, type: !35)
!1460 = !DILocalVariable(name: "locale", scope: !1453, file: !100, line: 72, type: !76)
!1461 = !DILocation(line: 66, column: 23, scope: !1453)
!1462 = !DILocation(line: 66, column: 36, scope: !1453)
!1463 = !DILocation(line: 58, column: 8, scope: !1464, inlinedAt: !1468)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !100, line: 58, column: 7)
!1465 = distinct !DISubprogram(name: "c_locale", scope: !100, file: !100, line: 56, type: !1466, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !69)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!76}
!1468 = distinct !DILocation(line: 72, column: 21, scope: !1453)
!1469 = !DILocation(line: 58, column: 7, scope: !1465, inlinedAt: !1468)
!1470 = !DILocation(line: 59, column: 22, scope: !1464, inlinedAt: !1468)
!1471 = !DILocation(line: 59, column: 20, scope: !1464, inlinedAt: !1468)
!1472 = !DILocation(line: 59, column: 5, scope: !1464, inlinedAt: !1468)
!1473 = !DILocation(line: 60, column: 10, scope: !1465, inlinedAt: !1468)
!1474 = !DILocation(line: 72, column: 12, scope: !1453)
!1475 = !DILocation(line: 73, column: 8, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1453, file: !100, line: 73, column: 7)
!1477 = !DILocation(line: 73, column: 7, scope: !1453)
!1478 = !DILocation(line: 75, column: 11, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !100, line: 75, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !100, line: 74, column: 5)
!1481 = !DILocation(line: 75, column: 11, scope: !1480)
!1482 = !DILocation(line: 76, column: 17, scope: !1479)
!1483 = !DILocation(line: 76, column: 9, scope: !1479)
!1484 = !DILocation(line: 80, column: 7, scope: !1453)
!1485 = !DILocation(line: 68, column: 10, scope: !1453)
!1486 = !DILocation(line: 111, column: 3, scope: !1453)
!1487 = !DILocation(line: 0, scope: !1480)
!1488 = !DILocation(line: 112, column: 1, scope: !1453)
!1489 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !109, file: !109, line: 51, type: !689, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !104, retainedNodes: !1490)
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "file", arg: 1, scope: !1489, file: !109, line: 51, type: !45)
!1492 = !DILocation(line: 51, column: 41, scope: !1489)
!1493 = !DILocation(line: 53, column: 13, scope: !1489)
!1494 = !DILocation(line: 54, column: 1, scope: !1489)
!1495 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !109, file: !109, line: 88, type: !1496, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !104, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !38}
!1498 = !{!1499}
!1499 = !DILocalVariable(name: "ignore", arg: 1, scope: !1495, file: !109, line: 88, type: !38)
!1500 = !DILocation(line: 88, column: 37, scope: !1495)
!1501 = !DILocation(line: 90, column: 16, scope: !1495)
!1502 = !{!1503, !1503, i64 0}
!1503 = !{!"_Bool", !716, i64 0}
!1504 = !DILocation(line: 91, column: 1, scope: !1495)
!1505 = distinct !DISubprogram(name: "close_stdout", scope: !109, file: !109, line: 117, type: !722, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !104, retainedNodes: !1506)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "write_error", scope: !1508, file: !109, line: 122, type: !45)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !109, line: 121, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !109, line: 119, column: 7)
!1510 = !DILocation(line: 119, column: 21, scope: !1509)
!1511 = !DILocation(line: 119, column: 7, scope: !1509)
!1512 = !DILocation(line: 119, column: 29, scope: !1509)
!1513 = !DILocation(line: 120, column: 7, scope: !1509)
!1514 = !DILocation(line: 120, column: 12, scope: !1509)
!1515 = !{i8 0, i8 2}
!1516 = !DILocation(line: 120, column: 25, scope: !1509)
!1517 = !DILocation(line: 120, column: 28, scope: !1509)
!1518 = !DILocation(line: 120, column: 34, scope: !1509)
!1519 = !DILocation(line: 119, column: 7, scope: !1505)
!1520 = !DILocation(line: 122, column: 33, scope: !1508)
!1521 = !DILocation(line: 122, column: 19, scope: !1508)
!1522 = !DILocation(line: 123, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1508, file: !109, line: 123, column: 11)
!1524 = !DILocation(line: 0, scope: !1523)
!1525 = !DILocation(line: 123, column: 11, scope: !1508)
!1526 = !DILocation(line: 124, column: 36, scope: !1523)
!1527 = !DILocation(line: 124, column: 9, scope: !1523)
!1528 = !DILocation(line: 127, column: 9, scope: !1523)
!1529 = !DILocation(line: 129, column: 14, scope: !1508)
!1530 = !DILocation(line: 129, column: 7, scope: !1508)
!1531 = !DILocation(line: 134, column: 42, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1505, file: !109, line: 134, column: 7)
!1533 = !DILocation(line: 134, column: 28, scope: !1532)
!1534 = !DILocation(line: 134, column: 50, scope: !1532)
!1535 = !DILocation(line: 134, column: 7, scope: !1505)
!1536 = !DILocation(line: 135, column: 12, scope: !1532)
!1537 = !DILocation(line: 135, column: 5, scope: !1532)
!1538 = !DILocation(line: 136, column: 1, scope: !1505)
!1539 = distinct !DISubprogram(name: "dtotimespec", scope: !1540, file: !1540, line: 30, type: !1541, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1547)
!1540 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1543, !35}
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1288, line: 9, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1543, file: !1288, line: 11, baseType: !243, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1543, file: !1288, line: 12, baseType: !1292, size: 64, offset: 64)
!1547 = !{!1548, !1549, !1553, !1554}
!1548 = !DILocalVariable(name: "sec", arg: 1, scope: !1539, file: !1540, line: 30, type: !35)
!1549 = !DILocalVariable(name: "s", scope: !1550, file: !1540, line: 38, type: !241)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1540, line: 37, column: 5)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !1540, line: 34, column: 12)
!1552 = distinct !DILexicalBlock(scope: !1539, file: !1540, line: 32, column: 7)
!1553 = !DILocalVariable(name: "frac", scope: !1550, file: !1540, line: 39, type: !35)
!1554 = !DILocalVariable(name: "ns", scope: !1550, file: !1540, line: 40, type: !244)
!1555 = !DILocation(line: 30, column: 21, scope: !1539)
!1556 = !DILocation(line: 32, column: 32, scope: !1552)
!1557 = !DILocation(line: 32, column: 7, scope: !1539)
!1558 = !DILocation(line: 34, column: 19, scope: !1551)
!1559 = !DILocation(line: 34, column: 12, scope: !1552)
!1560 = !DILocation(line: 38, column: 18, scope: !1550)
!1561 = !DILocation(line: 38, column: 14, scope: !1550)
!1562 = !DILocation(line: 39, column: 50, scope: !1550)
!1563 = !DILocation(line: 39, column: 48, scope: !1550)
!1564 = !DILocation(line: 39, column: 41, scope: !1550)
!1565 = !DILocation(line: 39, column: 14, scope: !1550)
!1566 = !DILocation(line: 40, column: 17, scope: !1550)
!1567 = !DILocation(line: 40, column: 12, scope: !1550)
!1568 = !DILocation(line: 41, column: 13, scope: !1550)
!1569 = !DILocation(line: 41, column: 16, scope: !1550)
!1570 = !DILocation(line: 41, column: 10, scope: !1550)
!1571 = !DILocation(line: 42, column: 15, scope: !1550)
!1572 = !DILocation(line: 42, column: 9, scope: !1550)
!1573 = !DILocation(line: 43, column: 10, scope: !1550)
!1574 = !DILocation(line: 45, column: 14, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1550, file: !1540, line: 45, column: 11)
!1576 = !DILocation(line: 48, column: 14, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1575, file: !1540, line: 46, column: 9)
!1578 = !DILocation(line: 45, column: 11, scope: !1550)
!1579 = !DILocation(line: 0, scope: !1552)
!1580 = !DILocation(line: 53, column: 1, scope: !1539)
!1581 = distinct !DISubprogram(name: "set_program_name", scope: !123, file: !123, line: 39, type: !689, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !119, retainedNodes: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "argv0", arg: 1, scope: !1581, file: !123, line: 39, type: !45)
!1584 = !DILocalVariable(name: "slash", scope: !1581, file: !123, line: 46, type: !45)
!1585 = !DILocalVariable(name: "base", scope: !1581, file: !123, line: 47, type: !45)
!1586 = !DILocation(line: 39, column: 31, scope: !1581)
!1587 = !DILocation(line: 51, column: 13, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !123, line: 51, column: 7)
!1589 = !DILocation(line: 51, column: 7, scope: !1581)
!1590 = !DILocation(line: 55, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !123, line: 52, column: 5)
!1592 = !DILocation(line: 54, column: 7, scope: !1591)
!1593 = !DILocation(line: 56, column: 7, scope: !1591)
!1594 = !DILocation(line: 59, column: 11, scope: !1581)
!1595 = !DILocation(line: 46, column: 15, scope: !1581)
!1596 = !DILocation(line: 60, column: 17, scope: !1581)
!1597 = !DILocation(line: 60, column: 33, scope: !1581)
!1598 = !DILocation(line: 60, column: 11, scope: !1581)
!1599 = !DILocation(line: 47, column: 15, scope: !1581)
!1600 = !DILocation(line: 61, column: 12, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1581, file: !123, line: 61, column: 7)
!1602 = !DILocation(line: 61, column: 20, scope: !1601)
!1603 = !DILocation(line: 61, column: 25, scope: !1601)
!1604 = !DILocation(line: 61, column: 42, scope: !1601)
!1605 = !DILocation(line: 61, column: 28, scope: !1601)
!1606 = !DILocation(line: 61, column: 61, scope: !1601)
!1607 = !DILocation(line: 61, column: 7, scope: !1581)
!1608 = !DILocation(line: 64, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !123, line: 64, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1601, file: !123, line: 62, column: 5)
!1611 = !DILocation(line: 64, column: 36, scope: !1609)
!1612 = !DILocation(line: 64, column: 11, scope: !1610)
!1613 = !DILocation(line: 66, column: 24, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !123, line: 65, column: 9)
!1615 = !DILocation(line: 70, column: 41, scope: !1614)
!1616 = !DILocation(line: 72, column: 9, scope: !1614)
!1617 = !DILocation(line: 84, column: 16, scope: !1581)
!1618 = !DILocation(line: 90, column: 27, scope: !1581)
!1619 = !DILocation(line: 92, column: 1, scope: !1581)
!1620 = distinct !DISubprogram(name: "clone_quoting_options", scope: !170, file: !170, line: 122, type: !1621, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1624)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "o", arg: 1, scope: !1620, file: !170, line: 122, type: !1623)
!1626 = !DILocalVariable(name: "e", scope: !1620, file: !170, line: 124, type: !22)
!1627 = !DILocalVariable(name: "p", scope: !1620, file: !170, line: 125, type: !1623)
!1628 = !DILocation(line: 122, column: 48, scope: !1620)
!1629 = !DILocation(line: 124, column: 11, scope: !1620)
!1630 = !DILocation(line: 124, column: 7, scope: !1620)
!1631 = !DILocation(line: 125, column: 40, scope: !1620)
!1632 = !DILocation(line: 125, column: 31, scope: !1620)
!1633 = !DILocation(line: 125, column: 27, scope: !1620)
!1634 = !DILocation(line: 127, column: 9, scope: !1620)
!1635 = !DILocation(line: 128, column: 3, scope: !1620)
!1636 = distinct !DISubprogram(name: "get_quoting_style", scope: !170, file: !170, line: 133, type: !1637, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1641)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!129, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1636, file: !170, line: 133, type: !1639)
!1643 = !DILocation(line: 133, column: 50, scope: !1636)
!1644 = !DILocation(line: 135, column: 11, scope: !1636)
!1645 = !DILocation(line: 135, column: 46, scope: !1636)
!1646 = !{!1647, !716, i64 0}
!1647 = !{!"quoting_options", !716, i64 0, !820, i64 4, !716, i64 8, !715, i64 40, !715, i64 48}
!1648 = !DILocation(line: 135, column: 3, scope: !1636)
!1649 = distinct !DISubprogram(name: "set_quoting_style", scope: !170, file: !170, line: 141, type: !1650, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1623, !129}
!1652 = !{!1653, !1654}
!1653 = !DILocalVariable(name: "o", arg: 1, scope: !1649, file: !170, line: 141, type: !1623)
!1654 = !DILocalVariable(name: "s", arg: 2, scope: !1649, file: !170, line: 141, type: !129)
!1655 = !DILocation(line: 141, column: 44, scope: !1649)
!1656 = !DILocation(line: 141, column: 66, scope: !1649)
!1657 = !DILocation(line: 143, column: 4, scope: !1649)
!1658 = !DILocation(line: 143, column: 39, scope: !1649)
!1659 = !DILocation(line: 143, column: 45, scope: !1649)
!1660 = !DILocation(line: 144, column: 1, scope: !1649)
!1661 = distinct !DISubprogram(name: "set_char_quoting", scope: !170, file: !170, line: 152, type: !1662, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!22, !1623, !15, !22}
!1664 = !{!1665, !1666, !1667, !1668, !1670, !1672, !1673}
!1665 = !DILocalVariable(name: "o", arg: 1, scope: !1661, file: !170, line: 152, type: !1623)
!1666 = !DILocalVariable(name: "c", arg: 2, scope: !1661, file: !170, line: 152, type: !15)
!1667 = !DILocalVariable(name: "i", arg: 3, scope: !1661, file: !170, line: 152, type: !22)
!1668 = !DILocalVariable(name: "uc", scope: !1661, file: !170, line: 154, type: !1669)
!1669 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1670 = !DILocalVariable(name: "p", scope: !1661, file: !170, line: 155, type: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1672 = !DILocalVariable(name: "shift", scope: !1661, file: !170, line: 157, type: !22)
!1673 = !DILocalVariable(name: "r", scope: !1661, file: !170, line: 158, type: !22)
!1674 = !DILocation(line: 152, column: 43, scope: !1661)
!1675 = !DILocation(line: 152, column: 51, scope: !1661)
!1676 = !DILocation(line: 152, column: 58, scope: !1661)
!1677 = !DILocation(line: 154, column: 17, scope: !1661)
!1678 = !DILocation(line: 156, column: 6, scope: !1661)
!1679 = !DILocation(line: 156, column: 62, scope: !1661)
!1680 = !DILocation(line: 156, column: 57, scope: !1661)
!1681 = !DILocation(line: 155, column: 17, scope: !1661)
!1682 = !DILocation(line: 157, column: 15, scope: !1661)
!1683 = !DILocation(line: 157, column: 7, scope: !1661)
!1684 = !DILocation(line: 158, column: 12, scope: !1661)
!1685 = !DILocation(line: 158, column: 15, scope: !1661)
!1686 = !DILocation(line: 158, column: 25, scope: !1661)
!1687 = !DILocation(line: 158, column: 7, scope: !1661)
!1688 = !DILocation(line: 159, column: 13, scope: !1661)
!1689 = !DILocation(line: 159, column: 18, scope: !1661)
!1690 = !DILocation(line: 159, column: 23, scope: !1661)
!1691 = !DILocation(line: 159, column: 6, scope: !1661)
!1692 = !DILocation(line: 160, column: 3, scope: !1661)
!1693 = distinct !DISubprogram(name: "set_quoting_flags", scope: !170, file: !170, line: 168, type: !1694, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!22, !1623, !22}
!1696 = !{!1697, !1698, !1699}
!1697 = !DILocalVariable(name: "o", arg: 1, scope: !1693, file: !170, line: 168, type: !1623)
!1698 = !DILocalVariable(name: "i", arg: 2, scope: !1693, file: !170, line: 168, type: !22)
!1699 = !DILocalVariable(name: "r", scope: !1693, file: !170, line: 170, type: !22)
!1700 = !DILocation(line: 168, column: 44, scope: !1693)
!1701 = !DILocation(line: 168, column: 51, scope: !1693)
!1702 = !DILocation(line: 171, column: 8, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1693, file: !170, line: 171, column: 7)
!1704 = !DILocation(line: 171, column: 7, scope: !1693)
!1705 = !DILocation(line: 173, column: 10, scope: !1693)
!1706 = !{!1647, !820, i64 4}
!1707 = !DILocation(line: 170, column: 7, scope: !1693)
!1708 = !DILocation(line: 174, column: 12, scope: !1693)
!1709 = !DILocation(line: 175, column: 3, scope: !1693)
!1710 = distinct !DISubprogram(name: "set_custom_quoting", scope: !170, file: !170, line: 179, type: !1711, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1623, !45, !45}
!1713 = !{!1714, !1715, !1716}
!1714 = !DILocalVariable(name: "o", arg: 1, scope: !1710, file: !170, line: 179, type: !1623)
!1715 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1710, file: !170, line: 180, type: !45)
!1716 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1710, file: !170, line: 180, type: !45)
!1717 = !DILocation(line: 179, column: 45, scope: !1710)
!1718 = !DILocation(line: 180, column: 33, scope: !1710)
!1719 = !DILocation(line: 180, column: 57, scope: !1710)
!1720 = !DILocation(line: 182, column: 8, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1710, file: !170, line: 182, column: 7)
!1722 = !DILocation(line: 182, column: 7, scope: !1710)
!1723 = !DILocation(line: 184, column: 6, scope: !1710)
!1724 = !DILocation(line: 184, column: 12, scope: !1710)
!1725 = !DILocation(line: 185, column: 8, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1710, file: !170, line: 185, column: 7)
!1727 = !DILocation(line: 185, column: 23, scope: !1726)
!1728 = !DILocation(line: 185, column: 19, scope: !1726)
!1729 = !DILocation(line: 186, column: 5, scope: !1726)
!1730 = !DILocation(line: 187, column: 6, scope: !1710)
!1731 = !DILocation(line: 187, column: 17, scope: !1710)
!1732 = !{!1647, !715, i64 40}
!1733 = !DILocation(line: 188, column: 6, scope: !1710)
!1734 = !DILocation(line: 188, column: 18, scope: !1710)
!1735 = !{!1647, !715, i64 48}
!1736 = !DILocation(line: 189, column: 1, scope: !1710)
!1737 = distinct !DISubprogram(name: "quotearg_buffer", scope: !170, file: !170, line: 784, type: !1738, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!164, !14, !164, !45, !164, !1639}
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1741 = !DILocalVariable(name: "buffer", arg: 1, scope: !1737, file: !170, line: 784, type: !14)
!1742 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1737, file: !170, line: 784, type: !164)
!1743 = !DILocalVariable(name: "arg", arg: 3, scope: !1737, file: !170, line: 785, type: !45)
!1744 = !DILocalVariable(name: "argsize", arg: 4, scope: !1737, file: !170, line: 785, type: !164)
!1745 = !DILocalVariable(name: "o", arg: 5, scope: !1737, file: !170, line: 786, type: !1639)
!1746 = !DILocalVariable(name: "p", scope: !1737, file: !170, line: 788, type: !1639)
!1747 = !DILocalVariable(name: "e", scope: !1737, file: !170, line: 789, type: !22)
!1748 = !DILocalVariable(name: "r", scope: !1737, file: !170, line: 790, type: !164)
!1749 = !DILocation(line: 784, column: 24, scope: !1737)
!1750 = !DILocation(line: 784, column: 39, scope: !1737)
!1751 = !DILocation(line: 785, column: 30, scope: !1737)
!1752 = !DILocation(line: 785, column: 42, scope: !1737)
!1753 = !DILocation(line: 786, column: 48, scope: !1737)
!1754 = !DILocation(line: 788, column: 37, scope: !1737)
!1755 = !DILocation(line: 788, column: 33, scope: !1737)
!1756 = !DILocation(line: 789, column: 11, scope: !1737)
!1757 = !DILocation(line: 789, column: 7, scope: !1737)
!1758 = !DILocation(line: 791, column: 43, scope: !1737)
!1759 = !DILocation(line: 791, column: 53, scope: !1737)
!1760 = !DILocation(line: 791, column: 60, scope: !1737)
!1761 = !DILocation(line: 792, column: 43, scope: !1737)
!1762 = !DILocation(line: 792, column: 58, scope: !1737)
!1763 = !DILocation(line: 790, column: 14, scope: !1737)
!1764 = !DILocation(line: 790, column: 10, scope: !1737)
!1765 = !DILocation(line: 793, column: 9, scope: !1737)
!1766 = !DILocation(line: 794, column: 3, scope: !1737)
!1767 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !170, file: !170, line: 256, type: !1768, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !1772)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!164, !14, !164, !45, !164, !129, !22, !1770, !45, !45}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1797, !1798, !1799, !1800, !1801, !1804, !1805, !1823, !1826, !1827, !1834}
!1773 = !DILocalVariable(name: "buffer", arg: 1, scope: !1767, file: !170, line: 256, type: !14)
!1774 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1767, file: !170, line: 256, type: !164)
!1775 = !DILocalVariable(name: "arg", arg: 3, scope: !1767, file: !170, line: 257, type: !45)
!1776 = !DILocalVariable(name: "argsize", arg: 4, scope: !1767, file: !170, line: 257, type: !164)
!1777 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1767, file: !170, line: 258, type: !129)
!1778 = !DILocalVariable(name: "flags", arg: 6, scope: !1767, file: !170, line: 258, type: !22)
!1779 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1767, file: !170, line: 259, type: !1770)
!1780 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1767, file: !170, line: 260, type: !45)
!1781 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1767, file: !170, line: 261, type: !45)
!1782 = !DILocalVariable(name: "i", scope: !1767, file: !170, line: 263, type: !164)
!1783 = !DILocalVariable(name: "len", scope: !1767, file: !170, line: 264, type: !164)
!1784 = !DILocalVariable(name: "orig_buffersize", scope: !1767, file: !170, line: 265, type: !164)
!1785 = !DILocalVariable(name: "quote_string", scope: !1767, file: !170, line: 266, type: !45)
!1786 = !DILocalVariable(name: "quote_string_len", scope: !1767, file: !170, line: 267, type: !164)
!1787 = !DILocalVariable(name: "backslash_escapes", scope: !1767, file: !170, line: 268, type: !38)
!1788 = !DILocalVariable(name: "unibyte_locale", scope: !1767, file: !170, line: 269, type: !38)
!1789 = !DILocalVariable(name: "elide_outer_quotes", scope: !1767, file: !170, line: 270, type: !38)
!1790 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1767, file: !170, line: 271, type: !38)
!1791 = !DILocalVariable(name: "encountered_single_quote", scope: !1767, file: !170, line: 272, type: !38)
!1792 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1767, file: !170, line: 273, type: !38)
!1793 = !DILocalVariable(name: "c", scope: !1794, file: !170, line: 402, type: !1669)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !170, line: 401, column: 5)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !170, line: 400, column: 3)
!1796 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 400, column: 3)
!1797 = !DILocalVariable(name: "esc", scope: !1794, file: !170, line: 403, type: !1669)
!1798 = !DILocalVariable(name: "is_right_quote", scope: !1794, file: !170, line: 404, type: !38)
!1799 = !DILocalVariable(name: "escaping", scope: !1794, file: !170, line: 405, type: !38)
!1800 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1794, file: !170, line: 406, type: !38)
!1801 = !DILocalVariable(name: "m", scope: !1802, file: !170, line: 610, type: !164)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 608, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 426, column: 9)
!1804 = !DILocalVariable(name: "printable", scope: !1802, file: !170, line: 612, type: !38)
!1805 = !DILocalVariable(name: "mbstate", scope: !1806, file: !170, line: 621, type: !1808)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !170, line: 620, column: 15)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !170, line: 614, column: 17)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1809, line: 6, baseType: !1810)
!1809 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1811, line: 21, baseType: !1812)
!1811 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 13, size: 64, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1812, file: !1811, line: 15, baseType: !22, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1812, file: !1811, line: 20, baseType: !1816, size: 32, offset: 32)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1811, line: 16, size: 32, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1816, file: !1811, line: 18, baseType: !7, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1816, file: !1811, line: 19, baseType: !1820, size: 32)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 4)
!1823 = !DILocalVariable(name: "w", scope: !1824, file: !170, line: 631, type: !1825)
!1824 = distinct !DILexicalBlock(scope: !1806, file: !170, line: 630, column: 19)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !165, line: 90, baseType: !22)
!1826 = !DILocalVariable(name: "bytes", scope: !1824, file: !170, line: 632, type: !164)
!1827 = !DILocalVariable(name: "j", scope: !1828, file: !170, line: 657, type: !164)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !170, line: 656, column: 27)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !170, line: 654, column: 29)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !170, line: 649, column: 23)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !170, line: 641, column: 30)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !170, line: 636, column: 30)
!1833 = distinct !DILexicalBlock(scope: !1824, file: !170, line: 634, column: 25)
!1834 = !DILocalVariable(name: "ilim", scope: !1835, file: !170, line: 684, type: !164)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !170, line: 681, column: 15)
!1836 = distinct !DILexicalBlock(scope: !1802, file: !170, line: 680, column: 17)
!1837 = !DILocation(line: 256, column: 33, scope: !1767)
!1838 = !DILocation(line: 256, column: 48, scope: !1767)
!1839 = !DILocation(line: 257, column: 39, scope: !1767)
!1840 = !DILocation(line: 257, column: 51, scope: !1767)
!1841 = !DILocation(line: 258, column: 46, scope: !1767)
!1842 = !DILocation(line: 258, column: 65, scope: !1767)
!1843 = !DILocation(line: 259, column: 47, scope: !1767)
!1844 = !DILocation(line: 260, column: 39, scope: !1767)
!1845 = !DILocation(line: 261, column: 39, scope: !1767)
!1846 = !DILocation(line: 264, column: 10, scope: !1767)
!1847 = !DILocation(line: 265, column: 10, scope: !1767)
!1848 = !DILocation(line: 266, column: 15, scope: !1767)
!1849 = !DILocation(line: 267, column: 10, scope: !1767)
!1850 = !DILocation(line: 268, column: 8, scope: !1767)
!1851 = !DILocation(line: 269, column: 25, scope: !1767)
!1852 = !DILocation(line: 269, column: 36, scope: !1767)
!1853 = !DILocation(line: 270, column: 8, scope: !1767)
!1854 = !DILocation(line: 271, column: 8, scope: !1767)
!1855 = !DILocation(line: 272, column: 8, scope: !1767)
!1856 = !DILocation(line: 273, column: 8, scope: !1767)
!1857 = !DILocation(line: 273, column: 3, scope: !1767)
!1858 = !DILocation(line: 0, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 317, column: 5)
!1860 = !DILocation(line: 316, column: 3, scope: !1767)
!1861 = !DILocation(line: 323, column: 11, scope: !1859)
!1862 = !DILocation(line: 323, column: 12, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !170, line: 323, column: 11)
!1864 = !DILocation(line: 324, column: 9, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !170, line: 324, column: 9)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !170, line: 324, column: 9)
!1867 = !DILocation(line: 324, column: 9, scope: !1866)
!1868 = !DILocation(line: 362, column: 26, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !170, line: 340, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !170, line: 339, column: 13)
!1871 = distinct !DILexicalBlock(scope: !1859, file: !170, line: 338, column: 7)
!1872 = !DILocation(line: 363, column: 27, scope: !1869)
!1873 = !DILocation(line: 364, column: 11, scope: !1869)
!1874 = !DILocation(line: 365, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !170, line: 365, column: 13)
!1876 = !DILocation(line: 365, column: 13, scope: !1871)
!1877 = !DILocation(line: 366, column: 43, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !170, line: 366, column: 11)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !170, line: 366, column: 11)
!1880 = !DILocation(line: 366, column: 11, scope: !1879)
!1881 = !DILocation(line: 367, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !170, line: 367, column: 13)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !170, line: 367, column: 13)
!1884 = !DILocation(line: 367, column: 13, scope: !1883)
!1885 = !DILocation(line: 366, column: 70, scope: !1878)
!1886 = distinct !{!1886, !1880, !1887}
!1887 = !DILocation(line: 367, column: 13, scope: !1879)
!1888 = !DILocation(line: 370, column: 28, scope: !1871)
!1889 = !DILocation(line: 372, column: 7, scope: !1859)
!1890 = !DILocation(line: 376, column: 7, scope: !1859)
!1891 = !DILocation(line: 379, column: 7, scope: !1859)
!1892 = !DILocation(line: 381, column: 12, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1859, file: !170, line: 381, column: 11)
!1894 = !DILocation(line: 381, column: 11, scope: !1859)
!1895 = !DILocation(line: 0, scope: !1893)
!1896 = !DILocation(line: 386, column: 12, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1859, file: !170, line: 386, column: 11)
!1898 = !DILocation(line: 386, column: 11, scope: !1859)
!1899 = !DILocation(line: 387, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !170, line: 387, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !170, line: 387, column: 9)
!1902 = !DILocation(line: 387, column: 9, scope: !1901)
!1903 = !DILocation(line: 394, column: 7, scope: !1859)
!1904 = !DILocation(line: 397, column: 7, scope: !1859)
!1905 = !DILocation(line: 0, scope: !1767)
!1906 = !DILocation(line: 263, column: 10, scope: !1767)
!1907 = !DILocation(line: 400, column: 8, scope: !1796)
!1908 = !DILocation(line: 0, scope: !1795)
!1909 = !DILocation(line: 400, column: 27, scope: !1795)
!1910 = !DILocation(line: 400, column: 19, scope: !1795)
!1911 = !DILocation(line: 400, column: 41, scope: !1795)
!1912 = !DILocation(line: 400, column: 48, scope: !1795)
!1913 = !DILocation(line: 400, column: 3, scope: !1796)
!1914 = !DILocation(line: 400, column: 60, scope: !1795)
!1915 = !DILocation(line: 404, column: 12, scope: !1794)
!1916 = !DILocation(line: 405, column: 12, scope: !1794)
!1917 = !DILocation(line: 406, column: 12, scope: !1794)
!1918 = !DILocation(line: 409, column: 11, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 408, column: 11)
!1920 = !DILocation(line: 411, column: 17, scope: !1919)
!1921 = !DILocation(line: 412, column: 39, scope: !1919)
!1922 = !DILocation(line: 416, column: 32, scope: !1919)
!1923 = !DILocation(line: 412, column: 19, scope: !1919)
!1924 = !DILocation(line: 412, column: 15, scope: !1919)
!1925 = !DILocation(line: 417, column: 11, scope: !1919)
!1926 = !DILocation(line: 417, column: 26, scope: !1919)
!1927 = !DILocation(line: 417, column: 14, scope: !1919)
!1928 = !DILocation(line: 417, column: 63, scope: !1919)
!1929 = !DILocation(line: 408, column: 11, scope: !1794)
!1930 = !DILocation(line: 0, scope: !1794)
!1931 = !DILocation(line: 424, column: 11, scope: !1794)
!1932 = !DILocation(line: 402, column: 21, scope: !1794)
!1933 = !DILocation(line: 425, column: 7, scope: !1794)
!1934 = !DILocation(line: 428, column: 15, scope: !1803)
!1935 = !DILocation(line: 430, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !170, line: 430, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !170, line: 429, column: 13)
!1938 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 428, column: 15)
!1939 = !DILocation(line: 430, column: 15, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !170, line: 430, column: 15)
!1941 = !DILocation(line: 430, column: 15, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !170, line: 430, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !170, line: 430, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !170, line: 430, column: 15)
!1945 = !DILocation(line: 430, column: 15, scope: !1943)
!1946 = !DILocation(line: 430, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !170, line: 430, column: 15)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !170, line: 430, column: 15)
!1949 = !DILocation(line: 430, column: 15, scope: !1948)
!1950 = !DILocation(line: 430, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !170, line: 430, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !170, line: 430, column: 15)
!1953 = !DILocation(line: 430, column: 15, scope: !1952)
!1954 = !DILocation(line: 430, column: 15, scope: !1944)
!1955 = !DILocation(line: 430, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !170, line: 430, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1936, file: !170, line: 430, column: 15)
!1958 = !DILocation(line: 430, column: 15, scope: !1957)
!1959 = !DILocation(line: 438, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1937, file: !170, line: 437, column: 19)
!1961 = !DILocation(line: 438, column: 24, scope: !1960)
!1962 = !DILocation(line: 438, column: 28, scope: !1960)
!1963 = !DILocation(line: 438, column: 38, scope: !1960)
!1964 = !DILocation(line: 438, column: 48, scope: !1960)
!1965 = !DILocation(line: 438, column: 59, scope: !1960)
!1966 = !DILocation(line: 440, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !170, line: 440, column: 19)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !170, line: 440, column: 19)
!1969 = distinct !DILexicalBlock(scope: !1960, file: !170, line: 439, column: 17)
!1970 = !DILocation(line: 440, column: 19, scope: !1968)
!1971 = !DILocation(line: 441, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !170, line: 441, column: 19)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !170, line: 441, column: 19)
!1974 = !DILocation(line: 441, column: 19, scope: !1973)
!1975 = !DILocation(line: 442, column: 17, scope: !1969)
!1976 = !DILocation(line: 449, column: 20, scope: !1938)
!1977 = !DILocation(line: 454, column: 11, scope: !1803)
!1978 = !DILocation(line: 457, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 455, column: 13)
!1980 = !DILocation(line: 463, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1979, file: !170, line: 462, column: 19)
!1982 = !DILocation(line: 463, column: 24, scope: !1981)
!1983 = !DILocation(line: 463, column: 28, scope: !1981)
!1984 = !DILocation(line: 463, column: 38, scope: !1981)
!1985 = !DILocation(line: 463, column: 47, scope: !1981)
!1986 = !DILocation(line: 463, column: 41, scope: !1981)
!1987 = !DILocation(line: 463, column: 52, scope: !1981)
!1988 = !DILocation(line: 462, column: 19, scope: !1979)
!1989 = !DILocation(line: 464, column: 25, scope: !1981)
!1990 = !DILocation(line: 464, column: 17, scope: !1981)
!1991 = !DILocation(line: 471, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1981, file: !170, line: 465, column: 19)
!1993 = !DILocation(line: 475, column: 21, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !170, line: 475, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !170, line: 475, column: 21)
!1996 = !DILocation(line: 475, column: 21, scope: !1995)
!1997 = !DILocation(line: 476, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !170, line: 476, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !170, line: 476, column: 21)
!2000 = !DILocation(line: 476, column: 21, scope: !1999)
!2001 = !DILocation(line: 477, column: 21, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !170, line: 477, column: 21)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !170, line: 477, column: 21)
!2004 = !DILocation(line: 477, column: 21, scope: !2003)
!2005 = !DILocation(line: 478, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !170, line: 478, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1992, file: !170, line: 478, column: 21)
!2008 = !DILocation(line: 478, column: 21, scope: !2007)
!2009 = !DILocation(line: 479, column: 21, scope: !1992)
!2010 = !DILocation(line: 403, column: 21, scope: !1794)
!2011 = !DILocation(line: 492, column: 31, scope: !1803)
!2012 = !DILocation(line: 493, column: 31, scope: !1803)
!2013 = !DILocation(line: 495, column: 31, scope: !1803)
!2014 = !DILocation(line: 496, column: 31, scope: !1803)
!2015 = !DILocation(line: 497, column: 31, scope: !1803)
!2016 = !DILocation(line: 500, column: 15, scope: !1803)
!2017 = !DILocation(line: 502, column: 19, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !170, line: 501, column: 13)
!2019 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 500, column: 15)
!2020 = !DILocation(line: 509, column: 33, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 509, column: 15)
!2022 = !DILocation(line: 0, scope: !1803)
!2023 = !DILocation(line: 514, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 513, column: 15)
!2025 = !DILocation(line: 518, column: 15, scope: !1803)
!2026 = !DILocation(line: 526, column: 26, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 526, column: 15)
!2028 = !DILocation(line: 526, column: 15, scope: !1803)
!2029 = !DILocation(line: 526, column: 40, scope: !2027)
!2030 = !DILocation(line: 526, column: 47, scope: !2027)
!2031 = !DILocation(line: 530, column: 17, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 530, column: 15)
!2033 = !DILocation(line: 526, column: 18, scope: !2027)
!2034 = !DILocation(line: 526, column: 65, scope: !2027)
!2035 = !DILocation(line: 530, column: 15, scope: !1803)
!2036 = !DILocation(line: 535, column: 11, scope: !1803)
!2037 = !DILocation(line: 549, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 548, column: 15)
!2039 = !DILocation(line: 556, column: 15, scope: !1803)
!2040 = !DILocation(line: 558, column: 19, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !170, line: 557, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 556, column: 15)
!2043 = !DILocation(line: 561, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !170, line: 561, column: 19)
!2045 = !DILocation(line: 561, column: 35, scope: !2044)
!2046 = !DILocation(line: 561, column: 30, scope: !2044)
!2047 = !DILocation(line: 570, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !170, line: 570, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2041, file: !170, line: 570, column: 15)
!2050 = !DILocation(line: 570, column: 15, scope: !2049)
!2051 = !DILocation(line: 571, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !170, line: 571, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2041, file: !170, line: 571, column: 15)
!2054 = !DILocation(line: 571, column: 15, scope: !2053)
!2055 = !DILocation(line: 572, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !170, line: 572, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2041, file: !170, line: 572, column: 15)
!2058 = !DILocation(line: 572, column: 15, scope: !2057)
!2059 = !DILocation(line: 574, column: 13, scope: !2041)
!2060 = !DILocation(line: 614, column: 17, scope: !1802)
!2061 = !DILocation(line: 610, column: 20, scope: !1802)
!2062 = !DILocation(line: 617, column: 29, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1807, file: !170, line: 615, column: 15)
!2064 = !{!2065, !2065, i64 0}
!2065 = !{!"short", !716, i64 0}
!2066 = !DILocation(line: 617, column: 27, scope: !2063)
!2067 = !DILocation(line: 612, column: 18, scope: !1802)
!2068 = !DILocation(line: 618, column: 15, scope: !2063)
!2069 = !DILocation(line: 621, column: 17, scope: !1806)
!2070 = !DILocation(line: 622, column: 17, scope: !1806)
!2071 = !DILocation(line: 626, column: 29, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1806, file: !170, line: 626, column: 21)
!2073 = !DILocation(line: 626, column: 21, scope: !1806)
!2074 = !DILocation(line: 627, column: 29, scope: !2072)
!2075 = !DILocation(line: 627, column: 19, scope: !2072)
!2076 = !DILocation(line: 0, scope: !1919)
!2077 = !DILocation(line: 629, column: 17, scope: !1806)
!2078 = !DILocation(line: 624, column: 19, scope: !1806)
!2079 = !DILocation(line: 625, column: 27, scope: !1806)
!2080 = !DILocation(line: 631, column: 21, scope: !1824)
!2081 = !DILocation(line: 632, column: 56, scope: !1824)
!2082 = !DILocation(line: 632, column: 50, scope: !1824)
!2083 = !DILocation(line: 633, column: 53, scope: !1824)
!2084 = !DILocation(line: 621, column: 27, scope: !1806)
!2085 = !DILocation(line: 631, column: 29, scope: !1824)
!2086 = !DILocation(line: 632, column: 36, scope: !1824)
!2087 = !DILocation(line: 632, column: 28, scope: !1824)
!2088 = !DILocation(line: 634, column: 25, scope: !1824)
!2089 = !DILocation(line: 644, column: 38, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1831, file: !170, line: 642, column: 23)
!2091 = !DILocation(line: 644, column: 48, scope: !2090)
!2092 = !DILocation(line: 644, column: 51, scope: !2090)
!2093 = !DILocation(line: 644, column: 25, scope: !2090)
!2094 = !DILocation(line: 645, column: 28, scope: !2090)
!2095 = !DILocation(line: 644, column: 34, scope: !2090)
!2096 = distinct !{!2096, !2093, !2094}
!2097 = !DILocation(line: 658, column: 43, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !170, line: 658, column: 29)
!2099 = distinct !DILexicalBlock(scope: !1828, file: !170, line: 658, column: 29)
!2100 = !DILocation(line: 655, column: 29, scope: !1829)
!2101 = !DILocation(line: 657, column: 36, scope: !1828)
!2102 = !DILocation(line: 659, column: 49, scope: !2098)
!2103 = !DILocation(line: 659, column: 39, scope: !2098)
!2104 = !DILocation(line: 659, column: 31, scope: !2098)
!2105 = !DILocation(line: 658, column: 53, scope: !2098)
!2106 = !DILocation(line: 658, column: 29, scope: !2099)
!2107 = distinct !{!2107, !2106, !2108}
!2108 = !DILocation(line: 667, column: 33, scope: !2099)
!2109 = !DILocation(line: 674, column: 19, scope: !1806)
!2110 = !DILocation(line: 670, column: 41, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1830, file: !170, line: 670, column: 29)
!2112 = !DILocation(line: 670, column: 31, scope: !2111)
!2113 = !DILocation(line: 670, column: 29, scope: !1830)
!2114 = !DILocation(line: 672, column: 27, scope: !1830)
!2115 = !DILocation(line: 675, column: 26, scope: !1806)
!2116 = !DILocation(line: 675, column: 24, scope: !1806)
!2117 = !DILocation(line: 674, column: 19, scope: !1824)
!2118 = distinct !{!2118, !2077, !2119}
!2119 = !DILocation(line: 675, column: 44, scope: !1806)
!2120 = !DILocation(line: 676, column: 15, scope: !1807)
!2121 = !DILocation(line: 0, scope: !2072)
!2122 = !DILocation(line: 0, scope: !1806)
!2123 = !DILocation(line: 678, column: 40, scope: !1802)
!2124 = !DILocation(line: 680, column: 19, scope: !1836)
!2125 = !DILocation(line: 680, column: 45, scope: !1836)
!2126 = !DILocation(line: 680, column: 23, scope: !1836)
!2127 = !DILocation(line: 684, column: 33, scope: !1835)
!2128 = !DILocation(line: 684, column: 24, scope: !1835)
!2129 = !DILocation(line: 686, column: 17, scope: !1835)
!2130 = !DILocation(line: 0, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !170, line: 687, column: 19)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !170, line: 686, column: 17)
!2133 = distinct !DILexicalBlock(scope: !1835, file: !170, line: 686, column: 17)
!2134 = !DILocation(line: 0, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !170, line: 703, column: 21)
!2136 = !DILocation(line: 0, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !170, line: 696, column: 23)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !170, line: 695, column: 30)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !170, line: 688, column: 25)
!2140 = !DILocation(line: 688, column: 43, scope: !2139)
!2141 = !DILocation(line: 690, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !170, line: 690, column: 25)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !170, line: 689, column: 23)
!2144 = !DILocation(line: 690, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !170, line: 690, column: 25)
!2146 = !DILocation(line: 690, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !170, line: 690, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !170, line: 690, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !170, line: 690, column: 25)
!2150 = !DILocation(line: 690, column: 25, scope: !2148)
!2151 = !DILocation(line: 690, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !170, line: 690, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !170, line: 690, column: 25)
!2154 = !DILocation(line: 690, column: 25, scope: !2153)
!2155 = !DILocation(line: 690, column: 25, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !170, line: 690, column: 25)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !170, line: 690, column: 25)
!2158 = !DILocation(line: 690, column: 25, scope: !2157)
!2159 = !DILocation(line: 690, column: 25, scope: !2149)
!2160 = !DILocation(line: 690, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !170, line: 690, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2142, file: !170, line: 690, column: 25)
!2163 = !DILocation(line: 690, column: 25, scope: !2162)
!2164 = !DILocation(line: 691, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !170, line: 691, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2143, file: !170, line: 691, column: 25)
!2167 = !DILocation(line: 691, column: 25, scope: !2166)
!2168 = !DILocation(line: 692, column: 25, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !170, line: 692, column: 25)
!2170 = distinct !DILexicalBlock(scope: !2143, file: !170, line: 692, column: 25)
!2171 = !DILocation(line: 692, column: 25, scope: !2170)
!2172 = !DILocation(line: 693, column: 38, scope: !2143)
!2173 = !DILocation(line: 693, column: 33, scope: !2143)
!2174 = !DILocation(line: 694, column: 23, scope: !2143)
!2175 = !DILocation(line: 695, column: 30, scope: !2138)
!2176 = !DILocation(line: 695, column: 30, scope: !2139)
!2177 = !DILocation(line: 697, column: 25, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !170, line: 697, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2137, file: !170, line: 697, column: 25)
!2180 = !DILocation(line: 697, column: 25, scope: !2179)
!2181 = !DILocation(line: 699, column: 23, scope: !2137)
!2182 = !DILocation(line: 0, scope: !2170)
!2183 = !DILocation(line: 0, scope: !2143)
!2184 = !DILocation(line: 0, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1919, file: !170, line: 418, column: 9)
!2186 = !DILocation(line: 0, scope: !2142)
!2187 = !DILocation(line: 700, column: 35, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2131, file: !170, line: 700, column: 25)
!2189 = !DILocation(line: 700, column: 30, scope: !2188)
!2190 = !DILocation(line: 700, column: 25, scope: !2131)
!2191 = !DILocation(line: 702, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !170, line: 702, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2131, file: !170, line: 702, column: 21)
!2194 = !DILocation(line: 702, column: 21, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !170, line: 702, column: 21)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !170, line: 702, column: 21)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !170, line: 702, column: 21)
!2198 = !DILocation(line: 702, column: 21, scope: !2196)
!2199 = !DILocation(line: 702, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !170, line: 702, column: 21)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !170, line: 702, column: 21)
!2202 = !DILocation(line: 702, column: 21, scope: !2201)
!2203 = !DILocation(line: 702, column: 21, scope: !2197)
!2204 = !DILocation(line: 0, scope: !2179)
!2205 = !DILocation(line: 703, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2135, file: !170, line: 703, column: 21)
!2207 = !DILocation(line: 703, column: 21, scope: !2135)
!2208 = !DILocation(line: 704, column: 25, scope: !2131)
!2209 = !DILocation(line: 686, column: 17, scope: !2132)
!2210 = distinct !{!2210, !2211, !2212}
!2211 = !DILocation(line: 686, column: 17, scope: !2133)
!2212 = !DILocation(line: 705, column: 19, scope: !2133)
!2213 = !DILocation(line: 0, scope: !1796)
!2214 = !DILocation(line: 416, column: 30, scope: !1919)
!2215 = !DILocation(line: 712, column: 34, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 712, column: 11)
!2217 = !DILocation(line: 714, column: 14, scope: !2216)
!2218 = !DILocation(line: 715, column: 14, scope: !2216)
!2219 = !DILocation(line: 715, column: 35, scope: !2216)
!2220 = !DILocation(line: 715, column: 17, scope: !2216)
!2221 = !DILocation(line: 715, column: 47, scope: !2216)
!2222 = !DILocation(line: 715, column: 65, scope: !2216)
!2223 = !DILocation(line: 716, column: 15, scope: !2216)
!2224 = !DILocation(line: 716, column: 11, scope: !2216)
!2225 = !DILocation(line: 712, column: 11, scope: !1794)
!2226 = !DILocation(line: 400, column: 10, scope: !1796)
!2227 = !DILocation(line: 0, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !170, line: 519, column: 13)
!2229 = distinct !DILexicalBlock(scope: !1803, file: !170, line: 518, column: 15)
!2230 = !DILocation(line: 720, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 720, column: 7)
!2232 = !DILocation(line: 720, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !170, line: 720, column: 7)
!2234 = !DILocation(line: 720, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !170, line: 720, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !170, line: 720, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !170, line: 720, column: 7)
!2238 = !DILocation(line: 720, column: 7, scope: !2236)
!2239 = !DILocation(line: 720, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !170, line: 720, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !170, line: 720, column: 7)
!2242 = !DILocation(line: 720, column: 7, scope: !2241)
!2243 = !DILocation(line: 720, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !170, line: 720, column: 7)
!2245 = distinct !DILexicalBlock(scope: !2237, file: !170, line: 720, column: 7)
!2246 = !DILocation(line: 720, column: 7, scope: !2245)
!2247 = !DILocation(line: 720, column: 7, scope: !2237)
!2248 = !DILocation(line: 720, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !170, line: 720, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2231, file: !170, line: 720, column: 7)
!2251 = !DILocation(line: 720, column: 7, scope: !2250)
!2252 = !DILocation(line: 723, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !170, line: 723, column: 7)
!2254 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 723, column: 7)
!2255 = !DILocation(line: 424, column: 9, scope: !1794)
!2256 = !DILocation(line: 723, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !170, line: 723, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !170, line: 723, column: 7)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !170, line: 723, column: 7)
!2260 = !DILocation(line: 723, column: 7, scope: !2258)
!2261 = !DILocation(line: 723, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !170, line: 723, column: 7)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !170, line: 723, column: 7)
!2264 = !DILocation(line: 723, column: 7, scope: !2263)
!2265 = !DILocation(line: 723, column: 7, scope: !2259)
!2266 = !DILocation(line: 724, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !170, line: 724, column: 7)
!2268 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 724, column: 7)
!2269 = !DILocation(line: 724, column: 7, scope: !2268)
!2270 = !DILocation(line: 726, column: 13, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1794, file: !170, line: 726, column: 11)
!2272 = !DILocation(line: 726, column: 11, scope: !1794)
!2273 = !DILocation(line: 728, column: 5, scope: !1795)
!2274 = !DILocation(line: 400, column: 75, scope: !1795)
!2275 = !DILocation(line: 400, column: 3, scope: !1795)
!2276 = distinct !{!2276, !1913, !2277}
!2277 = !DILocation(line: 728, column: 5, scope: !1796)
!2278 = !DILocation(line: 730, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 730, column: 7)
!2280 = !DILocation(line: 730, column: 16, scope: !2279)
!2281 = !DILocation(line: 738, column: 51, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 738, column: 7)
!2283 = !DILocation(line: 739, column: 10, scope: !2282)
!2284 = !DILocation(line: 741, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !170, line: 741, column: 11)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !170, line: 740, column: 5)
!2287 = !DILocation(line: 741, column: 11, scope: !2286)
!2288 = !DILocation(line: 742, column: 16, scope: !2285)
!2289 = !DILocation(line: 742, column: 9, scope: !2285)
!2290 = !DILocation(line: 746, column: 18, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !170, line: 746, column: 16)
!2292 = !DILocation(line: 746, column: 32, scope: !2291)
!2293 = !DILocation(line: 746, column: 29, scope: !2291)
!2294 = !DILocation(line: 755, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 755, column: 7)
!2296 = !DILocation(line: 755, column: 20, scope: !2295)
!2297 = !DILocation(line: 756, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !170, line: 756, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2295, file: !170, line: 756, column: 5)
!2300 = !DILocation(line: 756, column: 5, scope: !2299)
!2301 = !DILocation(line: 757, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !170, line: 757, column: 7)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !170, line: 757, column: 7)
!2304 = !DILocation(line: 757, column: 7, scope: !2303)
!2305 = !DILocation(line: 756, column: 39, scope: !2298)
!2306 = distinct !{!2306, !2300, !2307}
!2307 = !DILocation(line: 757, column: 7, scope: !2299)
!2308 = !DILocation(line: 759, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 759, column: 7)
!2310 = !DILocation(line: 759, column: 7, scope: !1767)
!2311 = !DILocation(line: 760, column: 5, scope: !2309)
!2312 = !DILocation(line: 760, column: 17, scope: !2309)
!2313 = !DILocation(line: 766, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1767, file: !170, line: 766, column: 7)
!2315 = !DILocation(line: 766, column: 54, scope: !2314)
!2316 = !DILocation(line: 766, column: 51, scope: !2314)
!2317 = !DILocation(line: 770, column: 42, scope: !1767)
!2318 = !DILocation(line: 768, column: 10, scope: !1767)
!2319 = !DILocation(line: 768, column: 3, scope: !1767)
!2320 = !DILocation(line: 772, column: 1, scope: !1767)
!2321 = distinct !DISubprogram(name: "gettext_quote", scope: !170, file: !170, line: 207, type: !2322, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!45, !45, !129}
!2324 = !{!2325, !2326, !2327, !2328}
!2325 = !DILocalVariable(name: "msgid", arg: 1, scope: !2321, file: !170, line: 207, type: !45)
!2326 = !DILocalVariable(name: "s", arg: 2, scope: !2321, file: !170, line: 207, type: !129)
!2327 = !DILocalVariable(name: "translation", scope: !2321, file: !170, line: 209, type: !45)
!2328 = !DILocalVariable(name: "locale_code", scope: !2321, file: !170, line: 210, type: !45)
!2329 = !DILocation(line: 207, column: 28, scope: !2321)
!2330 = !DILocation(line: 207, column: 54, scope: !2321)
!2331 = !DILocation(line: 209, column: 29, scope: !2321)
!2332 = !DILocation(line: 209, column: 15, scope: !2321)
!2333 = !DILocation(line: 212, column: 19, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2321, file: !170, line: 212, column: 7)
!2335 = !DILocation(line: 212, column: 7, scope: !2321)
!2336 = !DILocation(line: 233, column: 17, scope: !2321)
!2337 = !DILocation(line: 210, column: 15, scope: !2321)
!2338 = !DILocalVariable(name: "s1", arg: 1, scope: !2339, file: !2340, line: 160, type: !45)
!2339 = distinct !DISubprogram(name: "strcaseeq0", scope: !2340, file: !2340, line: 160, type: !2341, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2343)
!2340 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15, !15, !15}
!2343 = !{!2338, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2344 = !DILocalVariable(name: "s2", arg: 2, scope: !2339, file: !2340, line: 160, type: !45)
!2345 = !DILocalVariable(name: "s20", arg: 3, scope: !2339, file: !2340, line: 160, type: !15)
!2346 = !DILocalVariable(name: "s21", arg: 4, scope: !2339, file: !2340, line: 160, type: !15)
!2347 = !DILocalVariable(name: "s22", arg: 5, scope: !2339, file: !2340, line: 160, type: !15)
!2348 = !DILocalVariable(name: "s23", arg: 6, scope: !2339, file: !2340, line: 160, type: !15)
!2349 = !DILocalVariable(name: "s24", arg: 7, scope: !2339, file: !2340, line: 160, type: !15)
!2350 = !DILocalVariable(name: "s25", arg: 8, scope: !2339, file: !2340, line: 160, type: !15)
!2351 = !DILocalVariable(name: "s26", arg: 9, scope: !2339, file: !2340, line: 160, type: !15)
!2352 = !DILocalVariable(name: "s27", arg: 10, scope: !2339, file: !2340, line: 160, type: !15)
!2353 = !DILocalVariable(name: "s28", arg: 11, scope: !2339, file: !2340, line: 160, type: !15)
!2354 = !DILocation(line: 160, column: 25, scope: !2339, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 234, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2321, file: !170, line: 234, column: 7)
!2357 = !DILocation(line: 160, column: 41, scope: !2339, inlinedAt: !2355)
!2358 = !DILocation(line: 160, column: 50, scope: !2339, inlinedAt: !2355)
!2359 = !DILocation(line: 160, column: 60, scope: !2339, inlinedAt: !2355)
!2360 = !DILocation(line: 160, column: 70, scope: !2339, inlinedAt: !2355)
!2361 = !DILocation(line: 160, column: 80, scope: !2339, inlinedAt: !2355)
!2362 = !DILocation(line: 160, column: 90, scope: !2339, inlinedAt: !2355)
!2363 = !DILocation(line: 160, column: 100, scope: !2339, inlinedAt: !2355)
!2364 = !DILocation(line: 160, column: 110, scope: !2339, inlinedAt: !2355)
!2365 = !DILocation(line: 160, column: 120, scope: !2339, inlinedAt: !2355)
!2366 = !DILocation(line: 160, column: 130, scope: !2339, inlinedAt: !2355)
!2367 = !DILocation(line: 162, column: 7, scope: !2368, inlinedAt: !2355)
!2368 = distinct !DILexicalBlock(scope: !2339, file: !2340, line: 162, column: 7)
!2369 = !DILocalVariable(name: "s1", arg: 1, scope: !2370, file: !2340, line: 146, type: !45)
!2370 = distinct !DISubprogram(name: "strcaseeq1", scope: !2340, file: !2340, line: 146, type: !2371, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15, !15}
!2373 = !{!2369, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2374 = !DILocalVariable(name: "s2", arg: 2, scope: !2370, file: !2340, line: 146, type: !45)
!2375 = !DILocalVariable(name: "s21", arg: 3, scope: !2370, file: !2340, line: 146, type: !15)
!2376 = !DILocalVariable(name: "s22", arg: 4, scope: !2370, file: !2340, line: 146, type: !15)
!2377 = !DILocalVariable(name: "s23", arg: 5, scope: !2370, file: !2340, line: 146, type: !15)
!2378 = !DILocalVariable(name: "s24", arg: 6, scope: !2370, file: !2340, line: 146, type: !15)
!2379 = !DILocalVariable(name: "s25", arg: 7, scope: !2370, file: !2340, line: 146, type: !15)
!2380 = !DILocalVariable(name: "s26", arg: 8, scope: !2370, file: !2340, line: 146, type: !15)
!2381 = !DILocalVariable(name: "s27", arg: 9, scope: !2370, file: !2340, line: 146, type: !15)
!2382 = !DILocalVariable(name: "s28", arg: 10, scope: !2370, file: !2340, line: 146, type: !15)
!2383 = !DILocation(line: 146, column: 25, scope: !2370, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 167, column: 16, scope: !2385, inlinedAt: !2355)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !2340, line: 164, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2368, file: !2340, line: 163, column: 5)
!2387 = !DILocation(line: 146, column: 41, scope: !2370, inlinedAt: !2384)
!2388 = !DILocation(line: 146, column: 50, scope: !2370, inlinedAt: !2384)
!2389 = !DILocation(line: 146, column: 60, scope: !2370, inlinedAt: !2384)
!2390 = !DILocation(line: 146, column: 70, scope: !2370, inlinedAt: !2384)
!2391 = !DILocation(line: 146, column: 80, scope: !2370, inlinedAt: !2384)
!2392 = !DILocation(line: 146, column: 90, scope: !2370, inlinedAt: !2384)
!2393 = !DILocation(line: 146, column: 100, scope: !2370, inlinedAt: !2384)
!2394 = !DILocation(line: 146, column: 110, scope: !2370, inlinedAt: !2384)
!2395 = !DILocation(line: 146, column: 120, scope: !2370, inlinedAt: !2384)
!2396 = !DILocation(line: 148, column: 7, scope: !2397, inlinedAt: !2384)
!2397 = distinct !DILexicalBlock(scope: !2370, file: !2340, line: 148, column: 7)
!2398 = !DILocalVariable(name: "s1", arg: 1, scope: !2399, file: !2340, line: 132, type: !45)
!2399 = distinct !DISubprogram(name: "strcaseeq2", scope: !2340, file: !2340, line: 132, type: !2400, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15}
!2402 = !{!2398, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2403 = !DILocalVariable(name: "s2", arg: 2, scope: !2399, file: !2340, line: 132, type: !45)
!2404 = !DILocalVariable(name: "s22", arg: 3, scope: !2399, file: !2340, line: 132, type: !15)
!2405 = !DILocalVariable(name: "s23", arg: 4, scope: !2399, file: !2340, line: 132, type: !15)
!2406 = !DILocalVariable(name: "s24", arg: 5, scope: !2399, file: !2340, line: 132, type: !15)
!2407 = !DILocalVariable(name: "s25", arg: 6, scope: !2399, file: !2340, line: 132, type: !15)
!2408 = !DILocalVariable(name: "s26", arg: 7, scope: !2399, file: !2340, line: 132, type: !15)
!2409 = !DILocalVariable(name: "s27", arg: 8, scope: !2399, file: !2340, line: 132, type: !15)
!2410 = !DILocalVariable(name: "s28", arg: 9, scope: !2399, file: !2340, line: 132, type: !15)
!2411 = !DILocation(line: 132, column: 25, scope: !2399, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 153, column: 16, scope: !2413, inlinedAt: !2384)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !2340, line: 150, column: 11)
!2414 = distinct !DILexicalBlock(scope: !2397, file: !2340, line: 149, column: 5)
!2415 = !DILocation(line: 132, column: 41, scope: !2399, inlinedAt: !2412)
!2416 = !DILocation(line: 132, column: 50, scope: !2399, inlinedAt: !2412)
!2417 = !DILocation(line: 132, column: 60, scope: !2399, inlinedAt: !2412)
!2418 = !DILocation(line: 132, column: 70, scope: !2399, inlinedAt: !2412)
!2419 = !DILocation(line: 132, column: 80, scope: !2399, inlinedAt: !2412)
!2420 = !DILocation(line: 132, column: 90, scope: !2399, inlinedAt: !2412)
!2421 = !DILocation(line: 132, column: 100, scope: !2399, inlinedAt: !2412)
!2422 = !DILocation(line: 132, column: 110, scope: !2399, inlinedAt: !2412)
!2423 = !DILocation(line: 134, column: 7, scope: !2424, inlinedAt: !2412)
!2424 = distinct !DILexicalBlock(scope: !2399, file: !2340, line: 134, column: 7)
!2425 = !DILocalVariable(name: "s1", arg: 1, scope: !2426, file: !2340, line: 118, type: !45)
!2426 = distinct !DISubprogram(name: "strcaseeq3", scope: !2340, file: !2340, line: 118, type: !2427, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15}
!2429 = !{!2425, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2430 = !DILocalVariable(name: "s2", arg: 2, scope: !2426, file: !2340, line: 118, type: !45)
!2431 = !DILocalVariable(name: "s23", arg: 3, scope: !2426, file: !2340, line: 118, type: !15)
!2432 = !DILocalVariable(name: "s24", arg: 4, scope: !2426, file: !2340, line: 118, type: !15)
!2433 = !DILocalVariable(name: "s25", arg: 5, scope: !2426, file: !2340, line: 118, type: !15)
!2434 = !DILocalVariable(name: "s26", arg: 6, scope: !2426, file: !2340, line: 118, type: !15)
!2435 = !DILocalVariable(name: "s27", arg: 7, scope: !2426, file: !2340, line: 118, type: !15)
!2436 = !DILocalVariable(name: "s28", arg: 8, scope: !2426, file: !2340, line: 118, type: !15)
!2437 = !DILocation(line: 118, column: 25, scope: !2426, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 139, column: 16, scope: !2439, inlinedAt: !2412)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !2340, line: 136, column: 11)
!2440 = distinct !DILexicalBlock(scope: !2424, file: !2340, line: 135, column: 5)
!2441 = !DILocation(line: 118, column: 41, scope: !2426, inlinedAt: !2438)
!2442 = !DILocation(line: 118, column: 50, scope: !2426, inlinedAt: !2438)
!2443 = !DILocation(line: 118, column: 60, scope: !2426, inlinedAt: !2438)
!2444 = !DILocation(line: 118, column: 70, scope: !2426, inlinedAt: !2438)
!2445 = !DILocation(line: 118, column: 80, scope: !2426, inlinedAt: !2438)
!2446 = !DILocation(line: 118, column: 90, scope: !2426, inlinedAt: !2438)
!2447 = !DILocation(line: 118, column: 100, scope: !2426, inlinedAt: !2438)
!2448 = !DILocation(line: 120, column: 7, scope: !2449, inlinedAt: !2438)
!2449 = distinct !DILexicalBlock(scope: !2426, file: !2340, line: 120, column: 7)
!2450 = !DILocation(line: 120, column: 7, scope: !2426, inlinedAt: !2438)
!2451 = !DILocalVariable(name: "s1", arg: 1, scope: !2452, file: !2340, line: 104, type: !45)
!2452 = distinct !DISubprogram(name: "strcaseeq4", scope: !2340, file: !2340, line: 104, type: !2453, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!22, !45, !45, !15, !15, !15, !15, !15}
!2455 = !{!2451, !2456, !2457, !2458, !2459, !2460, !2461}
!2456 = !DILocalVariable(name: "s2", arg: 2, scope: !2452, file: !2340, line: 104, type: !45)
!2457 = !DILocalVariable(name: "s24", arg: 3, scope: !2452, file: !2340, line: 104, type: !15)
!2458 = !DILocalVariable(name: "s25", arg: 4, scope: !2452, file: !2340, line: 104, type: !15)
!2459 = !DILocalVariable(name: "s26", arg: 5, scope: !2452, file: !2340, line: 104, type: !15)
!2460 = !DILocalVariable(name: "s27", arg: 6, scope: !2452, file: !2340, line: 104, type: !15)
!2461 = !DILocalVariable(name: "s28", arg: 7, scope: !2452, file: !2340, line: 104, type: !15)
!2462 = !DILocation(line: 104, column: 25, scope: !2452, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 125, column: 16, scope: !2464, inlinedAt: !2438)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !2340, line: 122, column: 11)
!2465 = distinct !DILexicalBlock(scope: !2449, file: !2340, line: 121, column: 5)
!2466 = !DILocation(line: 104, column: 41, scope: !2452, inlinedAt: !2463)
!2467 = !DILocation(line: 104, column: 50, scope: !2452, inlinedAt: !2463)
!2468 = !DILocation(line: 104, column: 60, scope: !2452, inlinedAt: !2463)
!2469 = !DILocation(line: 104, column: 70, scope: !2452, inlinedAt: !2463)
!2470 = !DILocation(line: 104, column: 80, scope: !2452, inlinedAt: !2463)
!2471 = !DILocation(line: 104, column: 90, scope: !2452, inlinedAt: !2463)
!2472 = !DILocation(line: 106, column: 7, scope: !2473, inlinedAt: !2463)
!2473 = distinct !DILexicalBlock(scope: !2452, file: !2340, line: 106, column: 7)
!2474 = !DILocation(line: 106, column: 7, scope: !2452, inlinedAt: !2463)
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2340, line: 90, type: !45)
!2476 = distinct !DISubprogram(name: "strcaseeq5", scope: !2340, file: !2340, line: 90, type: !2477, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!22, !45, !45, !15, !15, !15, !15}
!2479 = !{!2475, !2480, !2481, !2482, !2483, !2484}
!2480 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2340, line: 90, type: !45)
!2481 = !DILocalVariable(name: "s25", arg: 3, scope: !2476, file: !2340, line: 90, type: !15)
!2482 = !DILocalVariable(name: "s26", arg: 4, scope: !2476, file: !2340, line: 90, type: !15)
!2483 = !DILocalVariable(name: "s27", arg: 5, scope: !2476, file: !2340, line: 90, type: !15)
!2484 = !DILocalVariable(name: "s28", arg: 6, scope: !2476, file: !2340, line: 90, type: !15)
!2485 = !DILocation(line: 90, column: 25, scope: !2476, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 111, column: 16, scope: !2487, inlinedAt: !2463)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2340, line: 108, column: 11)
!2488 = distinct !DILexicalBlock(scope: !2473, file: !2340, line: 107, column: 5)
!2489 = !DILocation(line: 90, column: 41, scope: !2476, inlinedAt: !2486)
!2490 = !DILocation(line: 90, column: 50, scope: !2476, inlinedAt: !2486)
!2491 = !DILocation(line: 90, column: 60, scope: !2476, inlinedAt: !2486)
!2492 = !DILocation(line: 90, column: 70, scope: !2476, inlinedAt: !2486)
!2493 = !DILocation(line: 90, column: 80, scope: !2476, inlinedAt: !2486)
!2494 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2486)
!2495 = distinct !DILexicalBlock(scope: !2476, file: !2340, line: 92, column: 7)
!2496 = !DILocation(line: 92, column: 7, scope: !2476, inlinedAt: !2486)
!2497 = !DILocation(line: 235, column: 12, scope: !2356)
!2498 = !DILocation(line: 235, column: 21, scope: !2356)
!2499 = !DILocation(line: 235, column: 5, scope: !2356)
!2500 = !DILocation(line: 146, column: 25, scope: !2370, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 167, column: 16, scope: !2385, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 236, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2321, file: !170, line: 236, column: 7)
!2504 = !DILocation(line: 146, column: 41, scope: !2370, inlinedAt: !2501)
!2505 = !DILocation(line: 146, column: 50, scope: !2370, inlinedAt: !2501)
!2506 = !DILocation(line: 146, column: 60, scope: !2370, inlinedAt: !2501)
!2507 = !DILocation(line: 146, column: 70, scope: !2370, inlinedAt: !2501)
!2508 = !DILocation(line: 146, column: 80, scope: !2370, inlinedAt: !2501)
!2509 = !DILocation(line: 146, column: 90, scope: !2370, inlinedAt: !2501)
!2510 = !DILocation(line: 146, column: 100, scope: !2370, inlinedAt: !2501)
!2511 = !DILocation(line: 146, column: 110, scope: !2370, inlinedAt: !2501)
!2512 = !DILocation(line: 146, column: 120, scope: !2370, inlinedAt: !2501)
!2513 = !DILocation(line: 148, column: 7, scope: !2397, inlinedAt: !2501)
!2514 = !DILocation(line: 132, column: 25, scope: !2399, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 153, column: 16, scope: !2413, inlinedAt: !2501)
!2516 = !DILocation(line: 132, column: 41, scope: !2399, inlinedAt: !2515)
!2517 = !DILocation(line: 132, column: 50, scope: !2399, inlinedAt: !2515)
!2518 = !DILocation(line: 132, column: 60, scope: !2399, inlinedAt: !2515)
!2519 = !DILocation(line: 132, column: 70, scope: !2399, inlinedAt: !2515)
!2520 = !DILocation(line: 132, column: 80, scope: !2399, inlinedAt: !2515)
!2521 = !DILocation(line: 132, column: 90, scope: !2399, inlinedAt: !2515)
!2522 = !DILocation(line: 132, column: 100, scope: !2399, inlinedAt: !2515)
!2523 = !DILocation(line: 132, column: 110, scope: !2399, inlinedAt: !2515)
!2524 = !DILocation(line: 134, column: 7, scope: !2424, inlinedAt: !2515)
!2525 = !DILocation(line: 134, column: 7, scope: !2399, inlinedAt: !2515)
!2526 = !DILocation(line: 118, column: 25, scope: !2426, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 139, column: 16, scope: !2439, inlinedAt: !2515)
!2528 = !DILocation(line: 118, column: 41, scope: !2426, inlinedAt: !2527)
!2529 = !DILocation(line: 118, column: 50, scope: !2426, inlinedAt: !2527)
!2530 = !DILocation(line: 118, column: 60, scope: !2426, inlinedAt: !2527)
!2531 = !DILocation(line: 118, column: 70, scope: !2426, inlinedAt: !2527)
!2532 = !DILocation(line: 118, column: 80, scope: !2426, inlinedAt: !2527)
!2533 = !DILocation(line: 118, column: 90, scope: !2426, inlinedAt: !2527)
!2534 = !DILocation(line: 118, column: 100, scope: !2426, inlinedAt: !2527)
!2535 = !DILocation(line: 120, column: 7, scope: !2449, inlinedAt: !2527)
!2536 = !DILocation(line: 120, column: 7, scope: !2426, inlinedAt: !2527)
!2537 = !DILocation(line: 104, column: 25, scope: !2452, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 125, column: 16, scope: !2464, inlinedAt: !2527)
!2539 = !DILocation(line: 104, column: 41, scope: !2452, inlinedAt: !2538)
!2540 = !DILocation(line: 104, column: 50, scope: !2452, inlinedAt: !2538)
!2541 = !DILocation(line: 104, column: 60, scope: !2452, inlinedAt: !2538)
!2542 = !DILocation(line: 104, column: 70, scope: !2452, inlinedAt: !2538)
!2543 = !DILocation(line: 104, column: 80, scope: !2452, inlinedAt: !2538)
!2544 = !DILocation(line: 104, column: 90, scope: !2452, inlinedAt: !2538)
!2545 = !DILocation(line: 106, column: 7, scope: !2473, inlinedAt: !2538)
!2546 = !DILocation(line: 106, column: 7, scope: !2452, inlinedAt: !2538)
!2547 = !DILocation(line: 90, column: 25, scope: !2476, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 111, column: 16, scope: !2487, inlinedAt: !2538)
!2549 = !DILocation(line: 90, column: 41, scope: !2476, inlinedAt: !2548)
!2550 = !DILocation(line: 90, column: 50, scope: !2476, inlinedAt: !2548)
!2551 = !DILocation(line: 90, column: 60, scope: !2476, inlinedAt: !2548)
!2552 = !DILocation(line: 90, column: 70, scope: !2476, inlinedAt: !2548)
!2553 = !DILocation(line: 90, column: 80, scope: !2476, inlinedAt: !2548)
!2554 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2548)
!2555 = !DILocation(line: 92, column: 7, scope: !2476, inlinedAt: !2548)
!2556 = !DILocalVariable(name: "s1", arg: 1, scope: !2557, file: !2340, line: 76, type: !45)
!2557 = distinct !DISubprogram(name: "strcaseeq6", scope: !2340, file: !2340, line: 76, type: !2558, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!22, !45, !45, !15, !15, !15}
!2560 = !{!2556, !2561, !2562, !2563, !2564}
!2561 = !DILocalVariable(name: "s2", arg: 2, scope: !2557, file: !2340, line: 76, type: !45)
!2562 = !DILocalVariable(name: "s26", arg: 3, scope: !2557, file: !2340, line: 76, type: !15)
!2563 = !DILocalVariable(name: "s27", arg: 4, scope: !2557, file: !2340, line: 76, type: !15)
!2564 = !DILocalVariable(name: "s28", arg: 5, scope: !2557, file: !2340, line: 76, type: !15)
!2565 = !DILocation(line: 76, column: 25, scope: !2557, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 97, column: 16, scope: !2567, inlinedAt: !2548)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !2340, line: 94, column: 11)
!2568 = distinct !DILexicalBlock(scope: !2495, file: !2340, line: 93, column: 5)
!2569 = !DILocation(line: 76, column: 41, scope: !2557, inlinedAt: !2566)
!2570 = !DILocation(line: 76, column: 50, scope: !2557, inlinedAt: !2566)
!2571 = !DILocation(line: 76, column: 60, scope: !2557, inlinedAt: !2566)
!2572 = !DILocation(line: 76, column: 70, scope: !2557, inlinedAt: !2566)
!2573 = !DILocation(line: 78, column: 7, scope: !2574, inlinedAt: !2566)
!2574 = distinct !DILexicalBlock(scope: !2557, file: !2340, line: 78, column: 7)
!2575 = !DILocation(line: 78, column: 7, scope: !2557, inlinedAt: !2566)
!2576 = !DILocalVariable(name: "s1", arg: 1, scope: !2577, file: !2340, line: 62, type: !45)
!2577 = distinct !DISubprogram(name: "strcaseeq7", scope: !2340, file: !2340, line: 62, type: !2578, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!22, !45, !45, !15, !15}
!2580 = !{!2576, !2581, !2582, !2583}
!2581 = !DILocalVariable(name: "s2", arg: 2, scope: !2577, file: !2340, line: 62, type: !45)
!2582 = !DILocalVariable(name: "s27", arg: 3, scope: !2577, file: !2340, line: 62, type: !15)
!2583 = !DILocalVariable(name: "s28", arg: 4, scope: !2577, file: !2340, line: 62, type: !15)
!2584 = !DILocation(line: 62, column: 25, scope: !2577, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 83, column: 16, scope: !2586, inlinedAt: !2566)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2340, line: 80, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2574, file: !2340, line: 79, column: 5)
!2588 = !DILocation(line: 62, column: 41, scope: !2577, inlinedAt: !2585)
!2589 = !DILocation(line: 62, column: 50, scope: !2577, inlinedAt: !2585)
!2590 = !DILocation(line: 62, column: 60, scope: !2577, inlinedAt: !2585)
!2591 = !DILocation(line: 64, column: 7, scope: !2592, inlinedAt: !2585)
!2592 = distinct !DILexicalBlock(scope: !2577, file: !2340, line: 64, column: 7)
!2593 = !DILocation(line: 236, column: 7, scope: !2321)
!2594 = !DILocation(line: 237, column: 12, scope: !2503)
!2595 = !DILocation(line: 237, column: 21, scope: !2503)
!2596 = !DILocation(line: 237, column: 5, scope: !2503)
!2597 = !DILocation(line: 239, column: 13, scope: !2321)
!2598 = !DILocation(line: 239, column: 11, scope: !2321)
!2599 = !DILocation(line: 239, column: 3, scope: !2321)
!2600 = !DILocation(line: 0, scope: !2321)
!2601 = !DILocation(line: 240, column: 1, scope: !2321)
!2602 = distinct !DISubprogram(name: "quotearg_alloc", scope: !170, file: !170, line: 799, type: !2603, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!14, !45, !164, !1639}
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "arg", arg: 1, scope: !2602, file: !170, line: 799, type: !45)
!2607 = !DILocalVariable(name: "argsize", arg: 2, scope: !2602, file: !170, line: 799, type: !164)
!2608 = !DILocalVariable(name: "o", arg: 3, scope: !2602, file: !170, line: 800, type: !1639)
!2609 = !DILocation(line: 799, column: 29, scope: !2602)
!2610 = !DILocation(line: 799, column: 41, scope: !2602)
!2611 = !DILocation(line: 800, column: 47, scope: !2602)
!2612 = !DILocalVariable(name: "arg", arg: 1, scope: !2613, file: !170, line: 812, type: !45)
!2613 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !170, file: !170, line: 812, type: !2614, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!14, !45, !164, !261, !1639}
!2616 = !{!2612, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2617 = !DILocalVariable(name: "argsize", arg: 2, scope: !2613, file: !170, line: 812, type: !164)
!2618 = !DILocalVariable(name: "size", arg: 3, scope: !2613, file: !170, line: 812, type: !261)
!2619 = !DILocalVariable(name: "o", arg: 4, scope: !2613, file: !170, line: 813, type: !1639)
!2620 = !DILocalVariable(name: "p", scope: !2613, file: !170, line: 815, type: !1639)
!2621 = !DILocalVariable(name: "e", scope: !2613, file: !170, line: 816, type: !22)
!2622 = !DILocalVariable(name: "flags", scope: !2613, file: !170, line: 818, type: !22)
!2623 = !DILocalVariable(name: "bufsize", scope: !2613, file: !170, line: 819, type: !164)
!2624 = !DILocalVariable(name: "buf", scope: !2613, file: !170, line: 823, type: !14)
!2625 = !DILocation(line: 812, column: 33, scope: !2613, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 802, column: 10, scope: !2602)
!2627 = !DILocation(line: 812, column: 45, scope: !2613, inlinedAt: !2626)
!2628 = !DILocation(line: 812, column: 62, scope: !2613, inlinedAt: !2626)
!2629 = !DILocation(line: 813, column: 51, scope: !2613, inlinedAt: !2626)
!2630 = !DILocation(line: 815, column: 37, scope: !2613, inlinedAt: !2626)
!2631 = !DILocation(line: 815, column: 33, scope: !2613, inlinedAt: !2626)
!2632 = !DILocation(line: 816, column: 11, scope: !2613, inlinedAt: !2626)
!2633 = !DILocation(line: 816, column: 7, scope: !2613, inlinedAt: !2626)
!2634 = !DILocation(line: 818, column: 18, scope: !2613, inlinedAt: !2626)
!2635 = !DILocation(line: 818, column: 24, scope: !2613, inlinedAt: !2626)
!2636 = !DILocation(line: 818, column: 7, scope: !2613, inlinedAt: !2626)
!2637 = !DILocation(line: 819, column: 69, scope: !2613, inlinedAt: !2626)
!2638 = !DILocation(line: 820, column: 53, scope: !2613, inlinedAt: !2626)
!2639 = !DILocation(line: 821, column: 49, scope: !2613, inlinedAt: !2626)
!2640 = !DILocation(line: 822, column: 49, scope: !2613, inlinedAt: !2626)
!2641 = !DILocation(line: 819, column: 20, scope: !2613, inlinedAt: !2626)
!2642 = !DILocation(line: 822, column: 62, scope: !2613, inlinedAt: !2626)
!2643 = !DILocation(line: 819, column: 10, scope: !2613, inlinedAt: !2626)
!2644 = !DILocalVariable(name: "n", arg: 1, scope: !2645, file: !257, line: 216, type: !164)
!2645 = distinct !DISubprogram(name: "xcharalloc", scope: !257, file: !257, line: 216, type: !2646, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!14, !164}
!2648 = !{!2644}
!2649 = !DILocation(line: 216, column: 20, scope: !2645, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 823, column: 15, scope: !2613, inlinedAt: !2626)
!2651 = !DILocation(line: 218, column: 10, scope: !2645, inlinedAt: !2650)
!2652 = !DILocation(line: 823, column: 9, scope: !2613, inlinedAt: !2626)
!2653 = !DILocation(line: 824, column: 60, scope: !2613, inlinedAt: !2626)
!2654 = !DILocation(line: 826, column: 32, scope: !2613, inlinedAt: !2626)
!2655 = !DILocation(line: 826, column: 47, scope: !2613, inlinedAt: !2626)
!2656 = !DILocation(line: 824, column: 3, scope: !2613, inlinedAt: !2626)
!2657 = !DILocation(line: 827, column: 9, scope: !2613, inlinedAt: !2626)
!2658 = !DILocation(line: 802, column: 3, scope: !2602)
!2659 = !DILocation(line: 812, column: 33, scope: !2613)
!2660 = !DILocation(line: 812, column: 45, scope: !2613)
!2661 = !DILocation(line: 812, column: 62, scope: !2613)
!2662 = !DILocation(line: 813, column: 51, scope: !2613)
!2663 = !DILocation(line: 815, column: 37, scope: !2613)
!2664 = !DILocation(line: 815, column: 33, scope: !2613)
!2665 = !DILocation(line: 816, column: 11, scope: !2613)
!2666 = !DILocation(line: 816, column: 7, scope: !2613)
!2667 = !DILocation(line: 818, column: 18, scope: !2613)
!2668 = !DILocation(line: 818, column: 27, scope: !2613)
!2669 = !DILocation(line: 818, column: 24, scope: !2613)
!2670 = !DILocation(line: 818, column: 7, scope: !2613)
!2671 = !DILocation(line: 819, column: 69, scope: !2613)
!2672 = !DILocation(line: 820, column: 53, scope: !2613)
!2673 = !DILocation(line: 821, column: 49, scope: !2613)
!2674 = !DILocation(line: 822, column: 49, scope: !2613)
!2675 = !DILocation(line: 819, column: 20, scope: !2613)
!2676 = !DILocation(line: 822, column: 62, scope: !2613)
!2677 = !DILocation(line: 819, column: 10, scope: !2613)
!2678 = !DILocation(line: 216, column: 20, scope: !2645, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 823, column: 15, scope: !2613)
!2680 = !DILocation(line: 218, column: 10, scope: !2645, inlinedAt: !2679)
!2681 = !DILocation(line: 823, column: 9, scope: !2613)
!2682 = !DILocation(line: 824, column: 60, scope: !2613)
!2683 = !DILocation(line: 826, column: 32, scope: !2613)
!2684 = !DILocation(line: 826, column: 47, scope: !2613)
!2685 = !DILocation(line: 824, column: 3, scope: !2613)
!2686 = !DILocation(line: 827, column: 9, scope: !2613)
!2687 = !DILocation(line: 828, column: 7, scope: !2613)
!2688 = !DILocation(line: 829, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2613, file: !170, line: 828, column: 7)
!2690 = !{!2691, !2691, i64 0}
!2691 = !{!"long", !716, i64 0}
!2692 = !DILocation(line: 829, column: 5, scope: !2689)
!2693 = !DILocation(line: 830, column: 3, scope: !2613)
!2694 = distinct !DISubprogram(name: "quotearg_free", scope: !170, file: !170, line: 848, type: !722, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2695)
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "sv", scope: !2694, file: !170, line: 850, type: !194)
!2697 = !DILocalVariable(name: "i", scope: !2694, file: !170, line: 851, type: !22)
!2698 = !DILocation(line: 850, column: 24, scope: !2694)
!2699 = !DILocation(line: 850, column: 19, scope: !2694)
!2700 = !DILocation(line: 851, column: 7, scope: !2694)
!2701 = !DILocation(line: 852, column: 19, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !170, line: 852, column: 3)
!2703 = distinct !DILexicalBlock(scope: !2694, file: !170, line: 852, column: 3)
!2704 = !DILocation(line: 852, column: 17, scope: !2702)
!2705 = !DILocation(line: 852, column: 3, scope: !2703)
!2706 = !DILocation(line: 853, column: 17, scope: !2702)
!2707 = !{!2708, !715, i64 8}
!2708 = !{!"slotvec", !2691, i64 0, !715, i64 8}
!2709 = !DILocation(line: 853, column: 5, scope: !2702)
!2710 = !DILocation(line: 852, column: 28, scope: !2702)
!2711 = distinct !{!2711, !2705, !2712}
!2712 = !DILocation(line: 853, column: 20, scope: !2703)
!2713 = !DILocation(line: 854, column: 13, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2694, file: !170, line: 854, column: 7)
!2715 = !DILocation(line: 854, column: 17, scope: !2714)
!2716 = !DILocation(line: 854, column: 7, scope: !2694)
!2717 = !DILocation(line: 856, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !170, line: 855, column: 5)
!2719 = !DILocation(line: 857, column: 21, scope: !2718)
!2720 = !{!2708, !2691, i64 0}
!2721 = !DILocation(line: 858, column: 20, scope: !2718)
!2722 = !DILocation(line: 859, column: 5, scope: !2718)
!2723 = !DILocation(line: 860, column: 10, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2694, file: !170, line: 860, column: 7)
!2725 = !DILocation(line: 860, column: 7, scope: !2694)
!2726 = !DILocation(line: 862, column: 13, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !170, line: 861, column: 5)
!2728 = !DILocation(line: 862, column: 7, scope: !2727)
!2729 = !DILocation(line: 863, column: 15, scope: !2727)
!2730 = !DILocation(line: 864, column: 5, scope: !2727)
!2731 = !DILocation(line: 865, column: 10, scope: !2694)
!2732 = !DILocation(line: 866, column: 1, scope: !2694)
!2733 = distinct !DISubprogram(name: "quotearg_n", scope: !170, file: !170, line: 931, type: !2734, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!14, !22, !45}
!2736 = !{!2737, !2738}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !170, line: 931, type: !22)
!2738 = !DILocalVariable(name: "arg", arg: 2, scope: !2733, file: !170, line: 931, type: !45)
!2739 = !DILocation(line: 931, column: 17, scope: !2733)
!2740 = !DILocation(line: 931, column: 32, scope: !2733)
!2741 = !DILocation(line: 933, column: 10, scope: !2733)
!2742 = !DILocation(line: 933, column: 3, scope: !2733)
!2743 = distinct !DISubprogram(name: "quotearg_n_options", scope: !170, file: !170, line: 877, type: !2744, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!14, !22, !45, !164, !1639}
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2756, !2757, !2759, !2760, !2761}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !170, line: 877, type: !22)
!2748 = !DILocalVariable(name: "arg", arg: 2, scope: !2743, file: !170, line: 877, type: !45)
!2749 = !DILocalVariable(name: "argsize", arg: 3, scope: !2743, file: !170, line: 877, type: !164)
!2750 = !DILocalVariable(name: "options", arg: 4, scope: !2743, file: !170, line: 878, type: !1639)
!2751 = !DILocalVariable(name: "e", scope: !2743, file: !170, line: 880, type: !22)
!2752 = !DILocalVariable(name: "sv", scope: !2743, file: !170, line: 882, type: !194)
!2753 = !DILocalVariable(name: "preallocated", scope: !2754, file: !170, line: 889, type: !38)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !170, line: 888, column: 5)
!2755 = distinct !DILexicalBlock(scope: !2743, file: !170, line: 887, column: 7)
!2756 = !DILocalVariable(name: "nmax", scope: !2754, file: !170, line: 890, type: !22)
!2757 = !DILocalVariable(name: "size", scope: !2758, file: !170, line: 903, type: !164)
!2758 = distinct !DILexicalBlock(scope: !2743, file: !170, line: 902, column: 3)
!2759 = !DILocalVariable(name: "val", scope: !2758, file: !170, line: 904, type: !14)
!2760 = !DILocalVariable(name: "flags", scope: !2758, file: !170, line: 906, type: !22)
!2761 = !DILocalVariable(name: "qsize", scope: !2758, file: !170, line: 907, type: !164)
!2762 = !DILocation(line: 877, column: 25, scope: !2743)
!2763 = !DILocation(line: 877, column: 40, scope: !2743)
!2764 = !DILocation(line: 877, column: 52, scope: !2743)
!2765 = !DILocation(line: 878, column: 51, scope: !2743)
!2766 = !DILocation(line: 880, column: 11, scope: !2743)
!2767 = !DILocation(line: 880, column: 7, scope: !2743)
!2768 = !DILocation(line: 882, column: 24, scope: !2743)
!2769 = !DILocation(line: 882, column: 19, scope: !2743)
!2770 = !DILocation(line: 884, column: 9, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2743, file: !170, line: 884, column: 7)
!2772 = !DILocation(line: 884, column: 7, scope: !2743)
!2773 = !DILocation(line: 885, column: 5, scope: !2771)
!2774 = !DILocation(line: 887, column: 7, scope: !2755)
!2775 = !DILocation(line: 887, column: 14, scope: !2755)
!2776 = !DILocation(line: 887, column: 7, scope: !2743)
!2777 = !DILocation(line: 889, column: 31, scope: !2754)
!2778 = !DILocation(line: 890, column: 11, scope: !2754)
!2779 = !DILocation(line: 892, column: 16, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2754, file: !170, line: 892, column: 11)
!2781 = !DILocation(line: 892, column: 11, scope: !2754)
!2782 = !DILocation(line: 893, column: 9, scope: !2780)
!2783 = !DILocation(line: 895, column: 32, scope: !2754)
!2784 = !DILocation(line: 895, column: 61, scope: !2754)
!2785 = !DILocation(line: 895, column: 58, scope: !2754)
!2786 = !DILocation(line: 895, column: 66, scope: !2754)
!2787 = !DILocation(line: 895, column: 22, scope: !2754)
!2788 = !DILocation(line: 895, column: 15, scope: !2754)
!2789 = !DILocation(line: 896, column: 11, scope: !2754)
!2790 = !DILocation(line: 897, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2754, file: !170, line: 896, column: 11)
!2792 = !{i64 0, i64 8, !2690, i64 8, i64 8, !714}
!2793 = !DILocation(line: 897, column: 9, scope: !2791)
!2794 = !DILocation(line: 898, column: 20, scope: !2754)
!2795 = !DILocation(line: 898, column: 18, scope: !2754)
!2796 = !DILocation(line: 898, column: 7, scope: !2754)
!2797 = !DILocation(line: 898, column: 38, scope: !2754)
!2798 = !DILocation(line: 898, column: 31, scope: !2754)
!2799 = !DILocation(line: 898, column: 48, scope: !2754)
!2800 = !DILocation(line: 899, column: 14, scope: !2754)
!2801 = !DILocation(line: 900, column: 5, scope: !2754)
!2802 = !DILocation(line: 0, scope: !2743)
!2803 = !DILocation(line: 903, column: 19, scope: !2758)
!2804 = !DILocation(line: 903, column: 25, scope: !2758)
!2805 = !DILocation(line: 903, column: 12, scope: !2758)
!2806 = !DILocation(line: 904, column: 23, scope: !2758)
!2807 = !DILocation(line: 904, column: 11, scope: !2758)
!2808 = !DILocation(line: 906, column: 26, scope: !2758)
!2809 = !DILocation(line: 906, column: 32, scope: !2758)
!2810 = !DILocation(line: 906, column: 9, scope: !2758)
!2811 = !DILocation(line: 908, column: 55, scope: !2758)
!2812 = !DILocation(line: 909, column: 46, scope: !2758)
!2813 = !DILocation(line: 910, column: 55, scope: !2758)
!2814 = !DILocation(line: 911, column: 55, scope: !2758)
!2815 = !DILocation(line: 907, column: 20, scope: !2758)
!2816 = !DILocation(line: 907, column: 12, scope: !2758)
!2817 = !DILocation(line: 913, column: 14, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2758, file: !170, line: 913, column: 9)
!2819 = !DILocation(line: 913, column: 9, scope: !2758)
!2820 = !DILocation(line: 915, column: 35, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !170, line: 914, column: 7)
!2822 = !DILocation(line: 915, column: 20, scope: !2821)
!2823 = !DILocation(line: 916, column: 17, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !170, line: 916, column: 13)
!2825 = !DILocation(line: 916, column: 13, scope: !2821)
!2826 = !DILocation(line: 917, column: 11, scope: !2824)
!2827 = !DILocation(line: 216, column: 20, scope: !2645, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 918, column: 27, scope: !2821)
!2829 = !DILocation(line: 218, column: 10, scope: !2645, inlinedAt: !2828)
!2830 = !DILocation(line: 918, column: 19, scope: !2821)
!2831 = !DILocation(line: 919, column: 69, scope: !2821)
!2832 = !DILocation(line: 921, column: 44, scope: !2821)
!2833 = !DILocation(line: 922, column: 44, scope: !2821)
!2834 = !DILocation(line: 919, column: 9, scope: !2821)
!2835 = !DILocation(line: 923, column: 7, scope: !2821)
!2836 = !DILocation(line: 0, scope: !2758)
!2837 = !DILocation(line: 925, column: 11, scope: !2758)
!2838 = !DILocation(line: 926, column: 5, scope: !2758)
!2839 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !170, file: !170, line: 937, type: !2840, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!14, !22, !45, !164}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2839, file: !170, line: 937, type: !22)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2839, file: !170, line: 937, type: !45)
!2845 = !DILocalVariable(name: "argsize", arg: 3, scope: !2839, file: !170, line: 937, type: !164)
!2846 = !DILocation(line: 937, column: 21, scope: !2839)
!2847 = !DILocation(line: 937, column: 36, scope: !2839)
!2848 = !DILocation(line: 937, column: 48, scope: !2839)
!2849 = !DILocation(line: 939, column: 10, scope: !2839)
!2850 = !DILocation(line: 939, column: 3, scope: !2839)
!2851 = distinct !DISubprogram(name: "quotearg", scope: !170, file: !170, line: 943, type: !2852, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!14, !45}
!2854 = !{!2855}
!2855 = !DILocalVariable(name: "arg", arg: 1, scope: !2851, file: !170, line: 943, type: !45)
!2856 = !DILocation(line: 943, column: 23, scope: !2851)
!2857 = !DILocation(line: 931, column: 17, scope: !2733, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 945, column: 10, scope: !2851)
!2859 = !DILocation(line: 931, column: 32, scope: !2733, inlinedAt: !2858)
!2860 = !DILocation(line: 933, column: 10, scope: !2733, inlinedAt: !2858)
!2861 = !DILocation(line: 945, column: 3, scope: !2851)
!2862 = distinct !DISubprogram(name: "quotearg_mem", scope: !170, file: !170, line: 949, type: !2863, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!14, !45, !164}
!2865 = !{!2866, !2867}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2862, file: !170, line: 949, type: !45)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2862, file: !170, line: 949, type: !164)
!2868 = !DILocation(line: 949, column: 27, scope: !2862)
!2869 = !DILocation(line: 949, column: 39, scope: !2862)
!2870 = !DILocation(line: 937, column: 21, scope: !2839, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 951, column: 10, scope: !2862)
!2872 = !DILocation(line: 937, column: 36, scope: !2839, inlinedAt: !2871)
!2873 = !DILocation(line: 937, column: 48, scope: !2839, inlinedAt: !2871)
!2874 = !DILocation(line: 939, column: 10, scope: !2839, inlinedAt: !2871)
!2875 = !DILocation(line: 951, column: 3, scope: !2862)
!2876 = distinct !DISubprogram(name: "quotearg_n_style", scope: !170, file: !170, line: 955, type: !2877, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!14, !22, !129, !45}
!2879 = !{!2880, !2881, !2882, !2883}
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !170, line: 955, type: !22)
!2881 = !DILocalVariable(name: "s", arg: 2, scope: !2876, file: !170, line: 955, type: !129)
!2882 = !DILocalVariable(name: "arg", arg: 3, scope: !2876, file: !170, line: 955, type: !45)
!2883 = !DILocalVariable(name: "o", scope: !2876, file: !170, line: 957, type: !1640)
!2884 = !DILocation(line: 955, column: 23, scope: !2876)
!2885 = !DILocation(line: 955, column: 45, scope: !2876)
!2886 = !DILocation(line: 955, column: 60, scope: !2876)
!2887 = !DILocation(line: 957, column: 3, scope: !2876)
!2888 = !DILocation(line: 957, column: 32, scope: !2876)
!2889 = !DILocalVariable(name: "style", arg: 1, scope: !2890, file: !170, line: 193, type: !129)
!2890 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !170, file: !170, line: 193, type: !2891, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!177, !129}
!2893 = !{!2889, !2894}
!2894 = !DILocalVariable(name: "o", scope: !2890, file: !170, line: 195, type: !177)
!2895 = !DILocation(line: 193, column: 48, scope: !2890, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 957, column: 36, scope: !2876)
!2897 = !DILocation(line: 195, column: 26, scope: !2890, inlinedAt: !2896)
!2898 = !{!2899}
!2899 = distinct !{!2899, !2900, !"quoting_options_from_style: argument 0"}
!2900 = distinct !{!2900, !"quoting_options_from_style"}
!2901 = !DILocation(line: 196, column: 13, scope: !2902, inlinedAt: !2896)
!2902 = distinct !DILexicalBlock(scope: !2890, file: !170, line: 196, column: 7)
!2903 = !DILocation(line: 196, column: 7, scope: !2890, inlinedAt: !2896)
!2904 = !DILocation(line: 197, column: 5, scope: !2902, inlinedAt: !2896)
!2905 = !DILocation(line: 198, column: 5, scope: !2890, inlinedAt: !2896)
!2906 = !DILocation(line: 198, column: 11, scope: !2890, inlinedAt: !2896)
!2907 = !DILocation(line: 958, column: 10, scope: !2876)
!2908 = !DILocation(line: 959, column: 1, scope: !2876)
!2909 = !DILocation(line: 958, column: 3, scope: !2876)
!2910 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !170, file: !170, line: 962, type: !2911, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!14, !22, !129, !45, !164}
!2913 = !{!2914, !2915, !2916, !2917, !2918}
!2914 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !170, line: 962, type: !22)
!2915 = !DILocalVariable(name: "s", arg: 2, scope: !2910, file: !170, line: 962, type: !129)
!2916 = !DILocalVariable(name: "arg", arg: 3, scope: !2910, file: !170, line: 963, type: !45)
!2917 = !DILocalVariable(name: "argsize", arg: 4, scope: !2910, file: !170, line: 963, type: !164)
!2918 = !DILocalVariable(name: "o", scope: !2910, file: !170, line: 965, type: !1640)
!2919 = !DILocation(line: 962, column: 27, scope: !2910)
!2920 = !DILocation(line: 962, column: 49, scope: !2910)
!2921 = !DILocation(line: 963, column: 35, scope: !2910)
!2922 = !DILocation(line: 963, column: 47, scope: !2910)
!2923 = !DILocation(line: 965, column: 3, scope: !2910)
!2924 = !DILocation(line: 965, column: 32, scope: !2910)
!2925 = !DILocation(line: 193, column: 48, scope: !2890, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 965, column: 36, scope: !2910)
!2927 = !DILocation(line: 195, column: 26, scope: !2890, inlinedAt: !2926)
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"quoting_options_from_style: argument 0"}
!2930 = distinct !{!2930, !"quoting_options_from_style"}
!2931 = !DILocation(line: 196, column: 13, scope: !2902, inlinedAt: !2926)
!2932 = !DILocation(line: 196, column: 7, scope: !2890, inlinedAt: !2926)
!2933 = !DILocation(line: 197, column: 5, scope: !2902, inlinedAt: !2926)
!2934 = !DILocation(line: 198, column: 5, scope: !2890, inlinedAt: !2926)
!2935 = !DILocation(line: 198, column: 11, scope: !2890, inlinedAt: !2926)
!2936 = !DILocation(line: 966, column: 10, scope: !2910)
!2937 = !DILocation(line: 967, column: 1, scope: !2910)
!2938 = !DILocation(line: 966, column: 3, scope: !2910)
!2939 = distinct !DISubprogram(name: "quotearg_style", scope: !170, file: !170, line: 970, type: !2940, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!14, !129, !45}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "s", arg: 1, scope: !2939, file: !170, line: 970, type: !129)
!2944 = !DILocalVariable(name: "arg", arg: 2, scope: !2939, file: !170, line: 970, type: !45)
!2945 = !DILocation(line: 970, column: 36, scope: !2939)
!2946 = !DILocation(line: 970, column: 51, scope: !2939)
!2947 = !DILocation(line: 955, column: 23, scope: !2876, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 972, column: 10, scope: !2939)
!2949 = !DILocation(line: 955, column: 45, scope: !2876, inlinedAt: !2948)
!2950 = !DILocation(line: 955, column: 60, scope: !2876, inlinedAt: !2948)
!2951 = !DILocation(line: 957, column: 3, scope: !2876, inlinedAt: !2948)
!2952 = !DILocation(line: 957, column: 32, scope: !2876, inlinedAt: !2948)
!2953 = !DILocation(line: 193, column: 48, scope: !2890, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 957, column: 36, scope: !2876, inlinedAt: !2948)
!2955 = !DILocation(line: 195, column: 26, scope: !2890, inlinedAt: !2954)
!2956 = !{!2957}
!2957 = distinct !{!2957, !2958, !"quoting_options_from_style: argument 0"}
!2958 = distinct !{!2958, !"quoting_options_from_style"}
!2959 = !DILocation(line: 196, column: 13, scope: !2902, inlinedAt: !2954)
!2960 = !DILocation(line: 196, column: 7, scope: !2890, inlinedAt: !2954)
!2961 = !DILocation(line: 197, column: 5, scope: !2902, inlinedAt: !2954)
!2962 = !DILocation(line: 198, column: 5, scope: !2890, inlinedAt: !2954)
!2963 = !DILocation(line: 198, column: 11, scope: !2890, inlinedAt: !2954)
!2964 = !DILocation(line: 958, column: 10, scope: !2876, inlinedAt: !2948)
!2965 = !DILocation(line: 959, column: 1, scope: !2876, inlinedAt: !2948)
!2966 = !DILocation(line: 972, column: 3, scope: !2939)
!2967 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !170, file: !170, line: 976, type: !2968, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!14, !129, !45, !164}
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "s", arg: 1, scope: !2967, file: !170, line: 976, type: !129)
!2972 = !DILocalVariable(name: "arg", arg: 2, scope: !2967, file: !170, line: 976, type: !45)
!2973 = !DILocalVariable(name: "argsize", arg: 3, scope: !2967, file: !170, line: 976, type: !164)
!2974 = !DILocation(line: 976, column: 40, scope: !2967)
!2975 = !DILocation(line: 976, column: 55, scope: !2967)
!2976 = !DILocation(line: 976, column: 67, scope: !2967)
!2977 = !DILocation(line: 962, column: 27, scope: !2910, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 978, column: 10, scope: !2967)
!2979 = !DILocation(line: 962, column: 49, scope: !2910, inlinedAt: !2978)
!2980 = !DILocation(line: 963, column: 35, scope: !2910, inlinedAt: !2978)
!2981 = !DILocation(line: 963, column: 47, scope: !2910, inlinedAt: !2978)
!2982 = !DILocation(line: 965, column: 3, scope: !2910, inlinedAt: !2978)
!2983 = !DILocation(line: 965, column: 32, scope: !2910, inlinedAt: !2978)
!2984 = !DILocation(line: 193, column: 48, scope: !2890, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 965, column: 36, scope: !2910, inlinedAt: !2978)
!2986 = !DILocation(line: 195, column: 26, scope: !2890, inlinedAt: !2985)
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"quoting_options_from_style: argument 0"}
!2989 = distinct !{!2989, !"quoting_options_from_style"}
!2990 = !DILocation(line: 196, column: 13, scope: !2902, inlinedAt: !2985)
!2991 = !DILocation(line: 196, column: 7, scope: !2890, inlinedAt: !2985)
!2992 = !DILocation(line: 197, column: 5, scope: !2902, inlinedAt: !2985)
!2993 = !DILocation(line: 198, column: 5, scope: !2890, inlinedAt: !2985)
!2994 = !DILocation(line: 198, column: 11, scope: !2890, inlinedAt: !2985)
!2995 = !DILocation(line: 966, column: 10, scope: !2910, inlinedAt: !2978)
!2996 = !DILocation(line: 967, column: 1, scope: !2910, inlinedAt: !2978)
!2997 = !DILocation(line: 978, column: 3, scope: !2967)
!2998 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !170, file: !170, line: 982, type: !2999, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!14, !45, !164, !15}
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DILocalVariable(name: "arg", arg: 1, scope: !2998, file: !170, line: 982, type: !45)
!3003 = !DILocalVariable(name: "argsize", arg: 2, scope: !2998, file: !170, line: 982, type: !164)
!3004 = !DILocalVariable(name: "ch", arg: 3, scope: !2998, file: !170, line: 982, type: !15)
!3005 = !DILocalVariable(name: "options", scope: !2998, file: !170, line: 984, type: !177)
!3006 = !DILocation(line: 982, column: 32, scope: !2998)
!3007 = !DILocation(line: 982, column: 44, scope: !2998)
!3008 = !DILocation(line: 982, column: 58, scope: !2998)
!3009 = !DILocation(line: 984, column: 3, scope: !2998)
!3010 = !DILocation(line: 985, column: 13, scope: !2998)
!3011 = !{i64 0, i64 4, !968, i64 4, i64 4, !819, i64 8, i64 32, !968, i64 40, i64 8, !714, i64 48, i64 8, !714}
!3012 = !DILocation(line: 984, column: 26, scope: !2998)
!3013 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 986, column: 3, scope: !2998)
!3015 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3014)
!3016 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3014)
!3017 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3014)
!3018 = !DILocation(line: 156, column: 62, scope: !1661, inlinedAt: !3014)
!3019 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3014)
!3020 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3014)
!3021 = !DILocation(line: 157, column: 15, scope: !1661, inlinedAt: !3014)
!3022 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3014)
!3023 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3014)
!3024 = !DILocation(line: 158, column: 15, scope: !1661, inlinedAt: !3014)
!3025 = !DILocation(line: 158, column: 25, scope: !1661, inlinedAt: !3014)
!3026 = !DILocation(line: 158, column: 7, scope: !1661, inlinedAt: !3014)
!3027 = !DILocation(line: 159, column: 18, scope: !1661, inlinedAt: !3014)
!3028 = !DILocation(line: 159, column: 23, scope: !1661, inlinedAt: !3014)
!3029 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3014)
!3030 = !DILocation(line: 987, column: 10, scope: !2998)
!3031 = !DILocation(line: 988, column: 1, scope: !2998)
!3032 = !DILocation(line: 987, column: 3, scope: !2998)
!3033 = distinct !DISubprogram(name: "quotearg_char", scope: !170, file: !170, line: 991, type: !3034, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!14, !45, !15}
!3036 = !{!3037, !3038}
!3037 = !DILocalVariable(name: "arg", arg: 1, scope: !3033, file: !170, line: 991, type: !45)
!3038 = !DILocalVariable(name: "ch", arg: 2, scope: !3033, file: !170, line: 991, type: !15)
!3039 = !DILocation(line: 991, column: 28, scope: !3033)
!3040 = !DILocation(line: 991, column: 38, scope: !3033)
!3041 = !DILocation(line: 982, column: 32, scope: !2998, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 993, column: 10, scope: !3033)
!3043 = !DILocation(line: 982, column: 44, scope: !2998, inlinedAt: !3042)
!3044 = !DILocation(line: 982, column: 58, scope: !2998, inlinedAt: !3042)
!3045 = !DILocation(line: 984, column: 3, scope: !2998, inlinedAt: !3042)
!3046 = !DILocation(line: 985, column: 13, scope: !2998, inlinedAt: !3042)
!3047 = !DILocation(line: 984, column: 26, scope: !2998, inlinedAt: !3042)
!3048 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 986, column: 3, scope: !2998, inlinedAt: !3042)
!3050 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3049)
!3051 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3049)
!3052 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3049)
!3053 = !DILocation(line: 156, column: 62, scope: !1661, inlinedAt: !3049)
!3054 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3049)
!3055 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3049)
!3056 = !DILocation(line: 157, column: 15, scope: !1661, inlinedAt: !3049)
!3057 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3049)
!3058 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3049)
!3059 = !DILocation(line: 158, column: 15, scope: !1661, inlinedAt: !3049)
!3060 = !DILocation(line: 158, column: 25, scope: !1661, inlinedAt: !3049)
!3061 = !DILocation(line: 158, column: 7, scope: !1661, inlinedAt: !3049)
!3062 = !DILocation(line: 159, column: 18, scope: !1661, inlinedAt: !3049)
!3063 = !DILocation(line: 159, column: 23, scope: !1661, inlinedAt: !3049)
!3064 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3049)
!3065 = !DILocation(line: 987, column: 10, scope: !2998, inlinedAt: !3042)
!3066 = !DILocation(line: 988, column: 1, scope: !2998, inlinedAt: !3042)
!3067 = !DILocation(line: 993, column: 3, scope: !3033)
!3068 = distinct !DISubprogram(name: "quotearg_colon", scope: !170, file: !170, line: 997, type: !2852, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3069)
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "arg", arg: 1, scope: !3068, file: !170, line: 997, type: !45)
!3071 = !DILocation(line: 997, column: 29, scope: !3068)
!3072 = !DILocation(line: 991, column: 28, scope: !3033, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 999, column: 10, scope: !3068)
!3074 = !DILocation(line: 991, column: 38, scope: !3033, inlinedAt: !3073)
!3075 = !DILocation(line: 982, column: 32, scope: !2998, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 993, column: 10, scope: !3033, inlinedAt: !3073)
!3077 = !DILocation(line: 982, column: 44, scope: !2998, inlinedAt: !3076)
!3078 = !DILocation(line: 982, column: 58, scope: !2998, inlinedAt: !3076)
!3079 = !DILocation(line: 984, column: 3, scope: !2998, inlinedAt: !3076)
!3080 = !DILocation(line: 985, column: 13, scope: !2998, inlinedAt: !3076)
!3081 = !DILocation(line: 984, column: 26, scope: !2998, inlinedAt: !3076)
!3082 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 986, column: 3, scope: !2998, inlinedAt: !3076)
!3084 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3083)
!3085 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3083)
!3086 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3083)
!3087 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3083)
!3088 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3083)
!3089 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3083)
!3090 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3083)
!3091 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3083)
!3092 = !DILocation(line: 987, column: 10, scope: !2998, inlinedAt: !3076)
!3093 = !DILocation(line: 988, column: 1, scope: !2998, inlinedAt: !3076)
!3094 = !DILocation(line: 999, column: 3, scope: !3068)
!3095 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !170, file: !170, line: 1003, type: !2863, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3096)
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "arg", arg: 1, scope: !3095, file: !170, line: 1003, type: !45)
!3098 = !DILocalVariable(name: "argsize", arg: 2, scope: !3095, file: !170, line: 1003, type: !164)
!3099 = !DILocation(line: 1003, column: 33, scope: !3095)
!3100 = !DILocation(line: 1003, column: 45, scope: !3095)
!3101 = !DILocation(line: 982, column: 32, scope: !2998, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1005, column: 10, scope: !3095)
!3103 = !DILocation(line: 982, column: 44, scope: !2998, inlinedAt: !3102)
!3104 = !DILocation(line: 982, column: 58, scope: !2998, inlinedAt: !3102)
!3105 = !DILocation(line: 984, column: 3, scope: !2998, inlinedAt: !3102)
!3106 = !DILocation(line: 985, column: 13, scope: !2998, inlinedAt: !3102)
!3107 = !DILocation(line: 984, column: 26, scope: !2998, inlinedAt: !3102)
!3108 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 986, column: 3, scope: !2998, inlinedAt: !3102)
!3110 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3109)
!3111 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3109)
!3112 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3109)
!3113 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3109)
!3114 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3109)
!3115 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3109)
!3116 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3109)
!3117 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3109)
!3118 = !DILocation(line: 987, column: 10, scope: !2998, inlinedAt: !3102)
!3119 = !DILocation(line: 988, column: 1, scope: !2998, inlinedAt: !3102)
!3120 = !DILocation(line: 1005, column: 3, scope: !3095)
!3121 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !170, file: !170, line: 1009, type: !2877, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3122)
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !170, line: 1009, type: !22)
!3124 = !DILocalVariable(name: "s", arg: 2, scope: !3121, file: !170, line: 1009, type: !129)
!3125 = !DILocalVariable(name: "arg", arg: 3, scope: !3121, file: !170, line: 1009, type: !45)
!3126 = !DILocalVariable(name: "options", scope: !3121, file: !170, line: 1011, type: !177)
!3127 = !DILocation(line: 195, column: 26, scope: !2890, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 1012, column: 13, scope: !3121)
!3129 = !DILocation(line: 1009, column: 29, scope: !3121)
!3130 = !DILocation(line: 1009, column: 51, scope: !3121)
!3131 = !DILocation(line: 1009, column: 66, scope: !3121)
!3132 = !DILocation(line: 1011, column: 3, scope: !3121)
!3133 = !DILocation(line: 1012, column: 13, scope: !3121)
!3134 = !DILocation(line: 193, column: 48, scope: !2890, inlinedAt: !3128)
!3135 = !{!3136}
!3136 = distinct !{!3136, !3137, !"quoting_options_from_style: argument 0"}
!3137 = distinct !{!3137, !"quoting_options_from_style"}
!3138 = !DILocation(line: 196, column: 13, scope: !2902, inlinedAt: !3128)
!3139 = !DILocation(line: 196, column: 7, scope: !2890, inlinedAt: !3128)
!3140 = !DILocation(line: 197, column: 5, scope: !2902, inlinedAt: !3128)
!3141 = !DILocation(line: 1011, column: 26, scope: !3121)
!3142 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1013, column: 3, scope: !3121)
!3144 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3143)
!3145 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3143)
!3146 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3143)
!3147 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3143)
!3148 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3143)
!3149 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3143)
!3150 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3143)
!3151 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3143)
!3152 = !DILocation(line: 1014, column: 10, scope: !3121)
!3153 = !DILocation(line: 1015, column: 1, scope: !3121)
!3154 = !DILocation(line: 1014, column: 3, scope: !3121)
!3155 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !170, file: !170, line: 1018, type: !3156, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!14, !22, !45, !45, !45}
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3155, file: !170, line: 1018, type: !22)
!3160 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3155, file: !170, line: 1018, type: !45)
!3161 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3155, file: !170, line: 1019, type: !45)
!3162 = !DILocalVariable(name: "arg", arg: 4, scope: !3155, file: !170, line: 1019, type: !45)
!3163 = !DILocation(line: 1018, column: 24, scope: !3155)
!3164 = !DILocation(line: 1018, column: 39, scope: !3155)
!3165 = !DILocation(line: 1019, column: 32, scope: !3155)
!3166 = !DILocation(line: 1019, column: 57, scope: !3155)
!3167 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !170, line: 1026, type: !22)
!3168 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !170, file: !170, line: 1026, type: !3169, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!14, !22, !45, !45, !45, !164}
!3171 = !{!3167, !3172, !3173, !3174, !3175, !3176}
!3172 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3168, file: !170, line: 1026, type: !45)
!3173 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3168, file: !170, line: 1027, type: !45)
!3174 = !DILocalVariable(name: "arg", arg: 4, scope: !3168, file: !170, line: 1028, type: !45)
!3175 = !DILocalVariable(name: "argsize", arg: 5, scope: !3168, file: !170, line: 1028, type: !164)
!3176 = !DILocalVariable(name: "o", scope: !3168, file: !170, line: 1030, type: !177)
!3177 = !DILocation(line: 1026, column: 28, scope: !3168, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1021, column: 10, scope: !3155)
!3179 = !DILocation(line: 1026, column: 43, scope: !3168, inlinedAt: !3178)
!3180 = !DILocation(line: 1027, column: 36, scope: !3168, inlinedAt: !3178)
!3181 = !DILocation(line: 1028, column: 36, scope: !3168, inlinedAt: !3178)
!3182 = !DILocation(line: 1028, column: 48, scope: !3168, inlinedAt: !3178)
!3183 = !DILocation(line: 1030, column: 3, scope: !3168, inlinedAt: !3178)
!3184 = !DILocation(line: 1030, column: 30, scope: !3168, inlinedAt: !3178)
!3185 = !DILocation(line: 1030, column: 26, scope: !3168, inlinedAt: !3178)
!3186 = !DILocation(line: 179, column: 45, scope: !1710, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1031, column: 3, scope: !3168, inlinedAt: !3178)
!3188 = !DILocation(line: 180, column: 33, scope: !1710, inlinedAt: !3187)
!3189 = !DILocation(line: 180, column: 57, scope: !1710, inlinedAt: !3187)
!3190 = !DILocation(line: 184, column: 6, scope: !1710, inlinedAt: !3187)
!3191 = !DILocation(line: 184, column: 12, scope: !1710, inlinedAt: !3187)
!3192 = !DILocation(line: 185, column: 8, scope: !1726, inlinedAt: !3187)
!3193 = !DILocation(line: 185, column: 23, scope: !1726, inlinedAt: !3187)
!3194 = !DILocation(line: 185, column: 19, scope: !1726, inlinedAt: !3187)
!3195 = !DILocation(line: 186, column: 5, scope: !1726, inlinedAt: !3187)
!3196 = !DILocation(line: 187, column: 6, scope: !1710, inlinedAt: !3187)
!3197 = !DILocation(line: 187, column: 17, scope: !1710, inlinedAt: !3187)
!3198 = !DILocation(line: 188, column: 6, scope: !1710, inlinedAt: !3187)
!3199 = !DILocation(line: 188, column: 18, scope: !1710, inlinedAt: !3187)
!3200 = !DILocation(line: 1032, column: 10, scope: !3168, inlinedAt: !3178)
!3201 = !DILocation(line: 1033, column: 1, scope: !3168, inlinedAt: !3178)
!3202 = !DILocation(line: 1021, column: 3, scope: !3155)
!3203 = !DILocation(line: 1026, column: 28, scope: !3168)
!3204 = !DILocation(line: 1026, column: 43, scope: !3168)
!3205 = !DILocation(line: 1027, column: 36, scope: !3168)
!3206 = !DILocation(line: 1028, column: 36, scope: !3168)
!3207 = !DILocation(line: 1028, column: 48, scope: !3168)
!3208 = !DILocation(line: 1030, column: 3, scope: !3168)
!3209 = !DILocation(line: 1030, column: 30, scope: !3168)
!3210 = !DILocation(line: 1030, column: 26, scope: !3168)
!3211 = !DILocation(line: 179, column: 45, scope: !1710, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1031, column: 3, scope: !3168)
!3213 = !DILocation(line: 180, column: 33, scope: !1710, inlinedAt: !3212)
!3214 = !DILocation(line: 180, column: 57, scope: !1710, inlinedAt: !3212)
!3215 = !DILocation(line: 184, column: 6, scope: !1710, inlinedAt: !3212)
!3216 = !DILocation(line: 184, column: 12, scope: !1710, inlinedAt: !3212)
!3217 = !DILocation(line: 185, column: 8, scope: !1726, inlinedAt: !3212)
!3218 = !DILocation(line: 185, column: 23, scope: !1726, inlinedAt: !3212)
!3219 = !DILocation(line: 185, column: 19, scope: !1726, inlinedAt: !3212)
!3220 = !DILocation(line: 186, column: 5, scope: !1726, inlinedAt: !3212)
!3221 = !DILocation(line: 187, column: 6, scope: !1710, inlinedAt: !3212)
!3222 = !DILocation(line: 187, column: 17, scope: !1710, inlinedAt: !3212)
!3223 = !DILocation(line: 188, column: 6, scope: !1710, inlinedAt: !3212)
!3224 = !DILocation(line: 188, column: 18, scope: !1710, inlinedAt: !3212)
!3225 = !DILocation(line: 1032, column: 10, scope: !3168)
!3226 = !DILocation(line: 1033, column: 1, scope: !3168)
!3227 = !DILocation(line: 1032, column: 3, scope: !3168)
!3228 = distinct !DISubprogram(name: "quotearg_custom", scope: !170, file: !170, line: 1036, type: !3229, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!14, !45, !45, !45}
!3231 = !{!3232, !3233, !3234}
!3232 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3228, file: !170, line: 1036, type: !45)
!3233 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3228, file: !170, line: 1036, type: !45)
!3234 = !DILocalVariable(name: "arg", arg: 3, scope: !3228, file: !170, line: 1037, type: !45)
!3235 = !DILocation(line: 1036, column: 30, scope: !3228)
!3236 = !DILocation(line: 1036, column: 54, scope: !3228)
!3237 = !DILocation(line: 1037, column: 30, scope: !3228)
!3238 = !DILocation(line: 1018, column: 24, scope: !3155, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1039, column: 10, scope: !3228)
!3240 = !DILocation(line: 1018, column: 39, scope: !3155, inlinedAt: !3239)
!3241 = !DILocation(line: 1019, column: 32, scope: !3155, inlinedAt: !3239)
!3242 = !DILocation(line: 1019, column: 57, scope: !3155, inlinedAt: !3239)
!3243 = !DILocation(line: 1026, column: 28, scope: !3168, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1021, column: 10, scope: !3155, inlinedAt: !3239)
!3245 = !DILocation(line: 1026, column: 43, scope: !3168, inlinedAt: !3244)
!3246 = !DILocation(line: 1027, column: 36, scope: !3168, inlinedAt: !3244)
!3247 = !DILocation(line: 1028, column: 36, scope: !3168, inlinedAt: !3244)
!3248 = !DILocation(line: 1028, column: 48, scope: !3168, inlinedAt: !3244)
!3249 = !DILocation(line: 1030, column: 3, scope: !3168, inlinedAt: !3244)
!3250 = !DILocation(line: 1030, column: 30, scope: !3168, inlinedAt: !3244)
!3251 = !DILocation(line: 1030, column: 26, scope: !3168, inlinedAt: !3244)
!3252 = !DILocation(line: 179, column: 45, scope: !1710, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1031, column: 3, scope: !3168, inlinedAt: !3244)
!3254 = !DILocation(line: 180, column: 33, scope: !1710, inlinedAt: !3253)
!3255 = !DILocation(line: 180, column: 57, scope: !1710, inlinedAt: !3253)
!3256 = !DILocation(line: 184, column: 6, scope: !1710, inlinedAt: !3253)
!3257 = !DILocation(line: 184, column: 12, scope: !1710, inlinedAt: !3253)
!3258 = !DILocation(line: 185, column: 8, scope: !1726, inlinedAt: !3253)
!3259 = !DILocation(line: 185, column: 23, scope: !1726, inlinedAt: !3253)
!3260 = !DILocation(line: 185, column: 19, scope: !1726, inlinedAt: !3253)
!3261 = !DILocation(line: 186, column: 5, scope: !1726, inlinedAt: !3253)
!3262 = !DILocation(line: 187, column: 6, scope: !1710, inlinedAt: !3253)
!3263 = !DILocation(line: 187, column: 17, scope: !1710, inlinedAt: !3253)
!3264 = !DILocation(line: 188, column: 6, scope: !1710, inlinedAt: !3253)
!3265 = !DILocation(line: 188, column: 18, scope: !1710, inlinedAt: !3253)
!3266 = !DILocation(line: 1032, column: 10, scope: !3168, inlinedAt: !3244)
!3267 = !DILocation(line: 1033, column: 1, scope: !3168, inlinedAt: !3244)
!3268 = !DILocation(line: 1039, column: 3, scope: !3228)
!3269 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !170, file: !170, line: 1043, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!14, !45, !45, !45, !164}
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3269, file: !170, line: 1043, type: !45)
!3274 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3269, file: !170, line: 1043, type: !45)
!3275 = !DILocalVariable(name: "arg", arg: 3, scope: !3269, file: !170, line: 1044, type: !45)
!3276 = !DILocalVariable(name: "argsize", arg: 4, scope: !3269, file: !170, line: 1044, type: !164)
!3277 = !DILocation(line: 1043, column: 34, scope: !3269)
!3278 = !DILocation(line: 1043, column: 58, scope: !3269)
!3279 = !DILocation(line: 1044, column: 34, scope: !3269)
!3280 = !DILocation(line: 1044, column: 46, scope: !3269)
!3281 = !DILocation(line: 1026, column: 28, scope: !3168, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 1046, column: 10, scope: !3269)
!3283 = !DILocation(line: 1026, column: 43, scope: !3168, inlinedAt: !3282)
!3284 = !DILocation(line: 1027, column: 36, scope: !3168, inlinedAt: !3282)
!3285 = !DILocation(line: 1028, column: 36, scope: !3168, inlinedAt: !3282)
!3286 = !DILocation(line: 1028, column: 48, scope: !3168, inlinedAt: !3282)
!3287 = !DILocation(line: 1030, column: 3, scope: !3168, inlinedAt: !3282)
!3288 = !DILocation(line: 1030, column: 30, scope: !3168, inlinedAt: !3282)
!3289 = !DILocation(line: 1030, column: 26, scope: !3168, inlinedAt: !3282)
!3290 = !DILocation(line: 179, column: 45, scope: !1710, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1031, column: 3, scope: !3168, inlinedAt: !3282)
!3292 = !DILocation(line: 180, column: 33, scope: !1710, inlinedAt: !3291)
!3293 = !DILocation(line: 180, column: 57, scope: !1710, inlinedAt: !3291)
!3294 = !DILocation(line: 184, column: 6, scope: !1710, inlinedAt: !3291)
!3295 = !DILocation(line: 184, column: 12, scope: !1710, inlinedAt: !3291)
!3296 = !DILocation(line: 185, column: 8, scope: !1726, inlinedAt: !3291)
!3297 = !DILocation(line: 185, column: 23, scope: !1726, inlinedAt: !3291)
!3298 = !DILocation(line: 185, column: 19, scope: !1726, inlinedAt: !3291)
!3299 = !DILocation(line: 186, column: 5, scope: !1726, inlinedAt: !3291)
!3300 = !DILocation(line: 187, column: 6, scope: !1710, inlinedAt: !3291)
!3301 = !DILocation(line: 187, column: 17, scope: !1710, inlinedAt: !3291)
!3302 = !DILocation(line: 188, column: 6, scope: !1710, inlinedAt: !3291)
!3303 = !DILocation(line: 188, column: 18, scope: !1710, inlinedAt: !3291)
!3304 = !DILocation(line: 1032, column: 10, scope: !3168, inlinedAt: !3282)
!3305 = !DILocation(line: 1033, column: 1, scope: !3168, inlinedAt: !3282)
!3306 = !DILocation(line: 1046, column: 3, scope: !3269)
!3307 = distinct !DISubprogram(name: "quote_n_mem", scope: !170, file: !170, line: 1061, type: !3308, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!45, !22, !45, !164}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !170, line: 1061, type: !22)
!3312 = !DILocalVariable(name: "arg", arg: 2, scope: !3307, file: !170, line: 1061, type: !45)
!3313 = !DILocalVariable(name: "argsize", arg: 3, scope: !3307, file: !170, line: 1061, type: !164)
!3314 = !DILocation(line: 1061, column: 18, scope: !3307)
!3315 = !DILocation(line: 1061, column: 33, scope: !3307)
!3316 = !DILocation(line: 1061, column: 45, scope: !3307)
!3317 = !DILocation(line: 1063, column: 10, scope: !3307)
!3318 = !DILocation(line: 1063, column: 3, scope: !3307)
!3319 = distinct !DISubprogram(name: "quote_mem", scope: !170, file: !170, line: 1067, type: !3320, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!45, !45, !164}
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3319, file: !170, line: 1067, type: !45)
!3324 = !DILocalVariable(name: "argsize", arg: 2, scope: !3319, file: !170, line: 1067, type: !164)
!3325 = !DILocation(line: 1067, column: 24, scope: !3319)
!3326 = !DILocation(line: 1067, column: 36, scope: !3319)
!3327 = !DILocation(line: 1061, column: 18, scope: !3307, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1069, column: 10, scope: !3319)
!3329 = !DILocation(line: 1061, column: 33, scope: !3307, inlinedAt: !3328)
!3330 = !DILocation(line: 1061, column: 45, scope: !3307, inlinedAt: !3328)
!3331 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3328)
!3332 = !DILocation(line: 1069, column: 3, scope: !3319)
!3333 = distinct !DISubprogram(name: "quote_n", scope: !170, file: !170, line: 1073, type: !3334, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!45, !22, !45}
!3336 = !{!3337, !3338}
!3337 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !170, line: 1073, type: !22)
!3338 = !DILocalVariable(name: "arg", arg: 2, scope: !3333, file: !170, line: 1073, type: !45)
!3339 = !DILocation(line: 1073, column: 14, scope: !3333)
!3340 = !DILocation(line: 1073, column: 29, scope: !3333)
!3341 = !DILocation(line: 1061, column: 18, scope: !3307, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 1075, column: 10, scope: !3333)
!3343 = !DILocation(line: 1061, column: 33, scope: !3307, inlinedAt: !3342)
!3344 = !DILocation(line: 1061, column: 45, scope: !3307, inlinedAt: !3342)
!3345 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3342)
!3346 = !DILocation(line: 1075, column: 3, scope: !3333)
!3347 = distinct !DISubprogram(name: "quote", scope: !170, file: !170, line: 1079, type: !3348, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!45, !45}
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "arg", arg: 1, scope: !3347, file: !170, line: 1079, type: !45)
!3352 = !DILocation(line: 1079, column: 20, scope: !3347)
!3353 = !DILocation(line: 1073, column: 14, scope: !3333, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1081, column: 10, scope: !3347)
!3355 = !DILocation(line: 1073, column: 29, scope: !3333, inlinedAt: !3354)
!3356 = !DILocation(line: 1061, column: 18, scope: !3307, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1075, column: 10, scope: !3333, inlinedAt: !3354)
!3358 = !DILocation(line: 1061, column: 33, scope: !3307, inlinedAt: !3357)
!3359 = !DILocation(line: 1061, column: 45, scope: !3307, inlinedAt: !3357)
!3360 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3357)
!3361 = !DILocation(line: 1081, column: 3, scope: !3347)
!3362 = distinct !DISubprogram(name: "version_etc_arn", scope: !249, file: !249, line: 62, type: !3363, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3418)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3365, !45, !45, !45, !3417, !164}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3367, line: 7, baseType: !3368)
!3367 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3369, line: 49, size: 1728, elements: !3370)
!3369 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3386, !3388, !3389, !3390, !3392, !3393, !3394, !3398, !3401, !3403, !3406, !3409, !3410, !3411, !3412, !3413}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3368, file: !3369, line: 51, baseType: !22, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3368, file: !3369, line: 54, baseType: !14, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3368, file: !3369, line: 55, baseType: !14, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3368, file: !3369, line: 56, baseType: !14, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3368, file: !3369, line: 57, baseType: !14, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3368, file: !3369, line: 58, baseType: !14, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3368, file: !3369, line: 59, baseType: !14, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3368, file: !3369, line: 60, baseType: !14, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3368, file: !3369, line: 61, baseType: !14, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3368, file: !3369, line: 64, baseType: !14, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3368, file: !3369, line: 65, baseType: !14, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3368, file: !3369, line: 66, baseType: !14, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3368, file: !3369, line: 68, baseType: !3384, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3369, line: 36, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3368, file: !3369, line: 70, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3368, file: !3369, line: 72, baseType: !22, size: 32, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3368, file: !3369, line: 73, baseType: !22, size: 32, offset: 928)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3368, file: !3369, line: 74, baseType: !3391, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 150, baseType: !244)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3368, file: !3369, line: 77, baseType: !92, size: 16, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3368, file: !3369, line: 78, baseType: !23, size: 8, offset: 1040)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3368, file: !3369, line: 79, baseType: !3395, size: 8, offset: 1048)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !3396)
!3396 = !{!3397}
!3397 = !DISubrange(count: 1)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3368, file: !3369, line: 81, baseType: !3399, size: 64, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3369, line: 43, baseType: null)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3368, file: !3369, line: 89, baseType: !3402, size: 64, offset: 1152)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 151, baseType: !244)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3368, file: !3369, line: 91, baseType: !3404, size: 64, offset: 1216)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3369, line: 37, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3368, file: !3369, line: 92, baseType: !3407, size: 64, offset: 1280)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3369, line: 38, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3368, file: !3369, line: 93, baseType: !3387, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3368, file: !3369, line: 94, baseType: !16, size: 64, offset: 1408)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3368, file: !3369, line: 95, baseType: !164, size: 64, offset: 1472)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3368, file: !3369, line: 96, baseType: !22, size: 32, offset: 1536)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3368, file: !3369, line: 98, baseType: !3414, size: 160, offset: 1568)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !3415)
!3415 = !{!3416}
!3416 = !DISubrange(count: 20)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424}
!3419 = !DILocalVariable(name: "stream", arg: 1, scope: !3362, file: !249, line: 62, type: !3365)
!3420 = !DILocalVariable(name: "command_name", arg: 2, scope: !3362, file: !249, line: 63, type: !45)
!3421 = !DILocalVariable(name: "package", arg: 3, scope: !3362, file: !249, line: 63, type: !45)
!3422 = !DILocalVariable(name: "version", arg: 4, scope: !3362, file: !249, line: 64, type: !45)
!3423 = !DILocalVariable(name: "authors", arg: 5, scope: !3362, file: !249, line: 65, type: !3417)
!3424 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3362, file: !249, line: 65, type: !164)
!3425 = !DILocation(line: 62, column: 24, scope: !3362)
!3426 = !DILocation(line: 63, column: 30, scope: !3362)
!3427 = !DILocation(line: 63, column: 56, scope: !3362)
!3428 = !DILocation(line: 64, column: 30, scope: !3362)
!3429 = !DILocation(line: 65, column: 39, scope: !3362)
!3430 = !DILocation(line: 65, column: 55, scope: !3362)
!3431 = !DILocation(line: 67, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3362, file: !249, line: 67, column: 7)
!3433 = !DILocation(line: 67, column: 7, scope: !3362)
!3434 = !DILocation(line: 68, column: 5, scope: !3432)
!3435 = !DILocation(line: 70, column: 5, scope: !3432)
!3436 = !DILocation(line: 84, column: 3, scope: !3362)
!3437 = !DILocation(line: 86, column: 3, scope: !3362)
!3438 = !DILocation(line: 95, column: 3, scope: !3362)
!3439 = !DILocation(line: 99, column: 7, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3362, file: !249, line: 96, column: 5)
!3441 = !DILocation(line: 102, column: 7, scope: !3440)
!3442 = !DILocation(line: 103, column: 7, scope: !3440)
!3443 = !DILocation(line: 106, column: 7, scope: !3440)
!3444 = !DILocation(line: 107, column: 7, scope: !3440)
!3445 = !DILocation(line: 110, column: 7, scope: !3440)
!3446 = !DILocation(line: 112, column: 7, scope: !3440)
!3447 = !DILocation(line: 117, column: 7, scope: !3440)
!3448 = !DILocation(line: 119, column: 7, scope: !3440)
!3449 = !DILocation(line: 124, column: 7, scope: !3440)
!3450 = !DILocation(line: 126, column: 7, scope: !3440)
!3451 = !DILocation(line: 131, column: 7, scope: !3440)
!3452 = !DILocation(line: 134, column: 7, scope: !3440)
!3453 = !DILocation(line: 139, column: 7, scope: !3440)
!3454 = !DILocation(line: 142, column: 7, scope: !3440)
!3455 = !DILocation(line: 147, column: 7, scope: !3440)
!3456 = !DILocation(line: 151, column: 7, scope: !3440)
!3457 = !DILocation(line: 156, column: 7, scope: !3440)
!3458 = !DILocation(line: 160, column: 7, scope: !3440)
!3459 = !DILocation(line: 167, column: 7, scope: !3440)
!3460 = !DILocation(line: 171, column: 7, scope: !3440)
!3461 = !DILocation(line: 173, column: 1, scope: !3362)
!3462 = distinct !DISubprogram(name: "version_etc_ar", scope: !249, file: !249, line: 180, type: !3463, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !3365, !45, !45, !45, !3417}
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471}
!3466 = !DILocalVariable(name: "stream", arg: 1, scope: !3462, file: !249, line: 180, type: !3365)
!3467 = !DILocalVariable(name: "command_name", arg: 2, scope: !3462, file: !249, line: 181, type: !45)
!3468 = !DILocalVariable(name: "package", arg: 3, scope: !3462, file: !249, line: 181, type: !45)
!3469 = !DILocalVariable(name: "version", arg: 4, scope: !3462, file: !249, line: 182, type: !45)
!3470 = !DILocalVariable(name: "authors", arg: 5, scope: !3462, file: !249, line: 182, type: !3417)
!3471 = !DILocalVariable(name: "n_authors", scope: !3462, file: !249, line: 184, type: !164)
!3472 = !DILocation(line: 180, column: 23, scope: !3462)
!3473 = !DILocation(line: 181, column: 29, scope: !3462)
!3474 = !DILocation(line: 181, column: 55, scope: !3462)
!3475 = !DILocation(line: 182, column: 29, scope: !3462)
!3476 = !DILocation(line: 182, column: 59, scope: !3462)
!3477 = !DILocation(line: 184, column: 10, scope: !3462)
!3478 = !DILocation(line: 186, column: 8, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3462, file: !249, line: 186, column: 3)
!3480 = !DILocation(line: 0, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3479, file: !249, line: 186, column: 3)
!3482 = !DILocation(line: 186, column: 23, scope: !3481)
!3483 = !DILocation(line: 186, column: 3, scope: !3479)
!3484 = !DILocation(line: 186, column: 52, scope: !3481)
!3485 = distinct !{!3485, !3483, !3486}
!3486 = !DILocation(line: 187, column: 5, scope: !3479)
!3487 = !DILocation(line: 188, column: 3, scope: !3462)
!3488 = !DILocation(line: 189, column: 1, scope: !3462)
!3489 = distinct !DISubprogram(name: "version_etc_va", scope: !249, file: !249, line: 196, type: !3490, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3499)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3365, !45, !45, !45, !3492}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !246, line: 189, size: 192, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3493, file: !246, line: 189, baseType: !7, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3493, file: !246, line: 189, baseType: !7, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3493, file: !246, line: 189, baseType: !16, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3493, file: !246, line: 189, baseType: !16, size: 64, offset: 128)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3500 = !DILocalVariable(name: "stream", arg: 1, scope: !3489, file: !249, line: 196, type: !3365)
!3501 = !DILocalVariable(name: "command_name", arg: 2, scope: !3489, file: !249, line: 197, type: !45)
!3502 = !DILocalVariable(name: "package", arg: 3, scope: !3489, file: !249, line: 197, type: !45)
!3503 = !DILocalVariable(name: "version", arg: 4, scope: !3489, file: !249, line: 198, type: !45)
!3504 = !DILocalVariable(name: "authors", arg: 5, scope: !3489, file: !249, line: 198, type: !3492)
!3505 = !DILocalVariable(name: "n_authors", scope: !3489, file: !249, line: 200, type: !164)
!3506 = !DILocalVariable(name: "authtab", scope: !3489, file: !249, line: 201, type: !3507)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !173)
!3508 = !DILocation(line: 196, column: 23, scope: !3489)
!3509 = !DILocation(line: 197, column: 29, scope: !3489)
!3510 = !DILocation(line: 197, column: 55, scope: !3489)
!3511 = !DILocation(line: 198, column: 29, scope: !3489)
!3512 = !DILocation(line: 198, column: 46, scope: !3489)
!3513 = !DILocation(line: 201, column: 3, scope: !3489)
!3514 = !DILocation(line: 201, column: 15, scope: !3489)
!3515 = !DILocation(line: 200, column: 10, scope: !3489)
!3516 = !DILocation(line: 205, column: 35, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !249, line: 203, column: 3)
!3518 = distinct !DILexicalBlock(scope: !3489, file: !249, line: 203, column: 3)
!3519 = !DILocation(line: 205, column: 14, scope: !3517)
!3520 = !DILocation(line: 205, column: 33, scope: !3517)
!3521 = !DILocation(line: 205, column: 67, scope: !3517)
!3522 = !DILocation(line: 203, column: 3, scope: !3518)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 208, column: 3, scope: !3489)
!3525 = !DILocation(line: 210, column: 1, scope: !3489)
!3526 = distinct !DISubprogram(name: "version_etc", scope: !249, file: !249, line: 227, type: !3527, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3365, !45, !45, !45, null}
!3529 = !{!3530, !3531, !3532, !3533, !3534}
!3530 = !DILocalVariable(name: "stream", arg: 1, scope: !3526, file: !249, line: 227, type: !3365)
!3531 = !DILocalVariable(name: "command_name", arg: 2, scope: !3526, file: !249, line: 228, type: !45)
!3532 = !DILocalVariable(name: "package", arg: 3, scope: !3526, file: !249, line: 228, type: !45)
!3533 = !DILocalVariable(name: "version", arg: 4, scope: !3526, file: !249, line: 229, type: !45)
!3534 = !DILocalVariable(name: "authors", scope: !3526, file: !249, line: 231, type: !3535)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3536, line: 52, baseType: !3537)
!3536 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3538, line: 48, baseType: !3539)
!3538 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !246, line: 231, baseType: !3540)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3493, size: 192, elements: !3396)
!3541 = !DILocation(line: 227, column: 20, scope: !3526)
!3542 = !DILocation(line: 228, column: 26, scope: !3526)
!3543 = !DILocation(line: 228, column: 52, scope: !3526)
!3544 = !DILocation(line: 229, column: 26, scope: !3526)
!3545 = !DILocation(line: 231, column: 3, scope: !3526)
!3546 = !DILocation(line: 231, column: 11, scope: !3526)
!3547 = !DILocation(line: 233, column: 3, scope: !3526)
!3548 = !DILocation(line: 234, column: 3, scope: !3526)
!3549 = !DILocation(line: 235, column: 3, scope: !3526)
!3550 = !DILocation(line: 236, column: 1, scope: !3526)
!3551 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !249, file: !249, line: 239, type: !722, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !69)
!3552 = !DILocation(line: 245, column: 3, scope: !3551)
!3553 = !DILocation(line: 251, column: 3, scope: !3551)
!3554 = !DILocation(line: 256, column: 3, scope: !3551)
!3555 = !DILocation(line: 258, column: 1, scope: !3551)
!3556 = distinct !DISubprogram(name: "xnmalloc", scope: !257, file: !257, line: 99, type: !3557, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!16, !164, !164}
!3559 = !{!3560, !3561}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3556, file: !257, line: 99, type: !164)
!3561 = !DILocalVariable(name: "s", arg: 2, scope: !3556, file: !257, line: 99, type: !164)
!3562 = !DILocation(line: 99, column: 18, scope: !3556)
!3563 = !DILocation(line: 99, column: 28, scope: !3556)
!3564 = !DILocation(line: 101, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3556, file: !257, line: 101, column: 7)
!3566 = !DILocation(line: 101, column: 7, scope: !3556)
!3567 = !DILocation(line: 102, column: 5, scope: !3565)
!3568 = !DILocation(line: 103, column: 21, scope: !3556)
!3569 = !DILocalVariable(name: "n", arg: 1, scope: !3570, file: !3571, line: 39, type: !164)
!3570 = distinct !DISubprogram(name: "xmalloc", scope: !3571, file: !3571, line: 39, type: !3572, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3574)
!3571 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!16, !164}
!3574 = !{!3569, !3575}
!3575 = !DILocalVariable(name: "p", scope: !3570, file: !3571, line: 41, type: !16)
!3576 = !DILocation(line: 39, column: 17, scope: !3570, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 103, column: 10, scope: !3556)
!3578 = !DILocation(line: 41, column: 13, scope: !3570, inlinedAt: !3577)
!3579 = !DILocation(line: 41, column: 9, scope: !3570, inlinedAt: !3577)
!3580 = !DILocation(line: 42, column: 8, scope: !3581, inlinedAt: !3577)
!3581 = distinct !DILexicalBlock(scope: !3570, file: !3571, line: 42, column: 7)
!3582 = !DILocation(line: 42, column: 15, scope: !3581, inlinedAt: !3577)
!3583 = !DILocation(line: 42, column: 10, scope: !3581, inlinedAt: !3577)
!3584 = !DILocation(line: 43, column: 5, scope: !3581, inlinedAt: !3577)
!3585 = !DILocation(line: 103, column: 3, scope: !3556)
!3586 = !DILocation(line: 39, column: 17, scope: !3570)
!3587 = !DILocation(line: 41, column: 13, scope: !3570)
!3588 = !DILocation(line: 41, column: 9, scope: !3570)
!3589 = !DILocation(line: 42, column: 8, scope: !3581)
!3590 = !DILocation(line: 42, column: 15, scope: !3581)
!3591 = !DILocation(line: 42, column: 10, scope: !3581)
!3592 = !DILocation(line: 43, column: 5, scope: !3581)
!3593 = !DILocation(line: 44, column: 3, scope: !3570)
!3594 = distinct !DISubprogram(name: "xnrealloc", scope: !257, file: !257, line: 112, type: !3595, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!16, !16, !164, !164}
!3597 = !{!3598, !3599, !3600}
!3598 = !DILocalVariable(name: "p", arg: 1, scope: !3594, file: !257, line: 112, type: !16)
!3599 = !DILocalVariable(name: "n", arg: 2, scope: !3594, file: !257, line: 112, type: !164)
!3600 = !DILocalVariable(name: "s", arg: 3, scope: !3594, file: !257, line: 112, type: !164)
!3601 = !DILocation(line: 112, column: 18, scope: !3594)
!3602 = !DILocation(line: 112, column: 28, scope: !3594)
!3603 = !DILocation(line: 112, column: 38, scope: !3594)
!3604 = !DILocation(line: 114, column: 7, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3594, file: !257, line: 114, column: 7)
!3606 = !DILocation(line: 114, column: 7, scope: !3594)
!3607 = !DILocation(line: 115, column: 5, scope: !3605)
!3608 = !DILocation(line: 116, column: 25, scope: !3594)
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3610, file: !3571, line: 51, type: !16)
!3610 = distinct !DISubprogram(name: "xrealloc", scope: !3571, file: !3571, line: 51, type: !3611, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!16, !16, !164}
!3613 = !{!3609, !3614}
!3614 = !DILocalVariable(name: "n", arg: 2, scope: !3610, file: !3571, line: 51, type: !164)
!3615 = !DILocation(line: 51, column: 17, scope: !3610, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 116, column: 10, scope: !3594)
!3617 = !DILocation(line: 51, column: 27, scope: !3610, inlinedAt: !3616)
!3618 = !DILocation(line: 53, column: 8, scope: !3619, inlinedAt: !3616)
!3619 = distinct !DILexicalBlock(scope: !3610, file: !3571, line: 53, column: 7)
!3620 = !DILocation(line: 53, column: 13, scope: !3619, inlinedAt: !3616)
!3621 = !DILocation(line: 53, column: 10, scope: !3619, inlinedAt: !3616)
!3622 = !DILocation(line: 57, column: 7, scope: !3623, inlinedAt: !3616)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !3571, line: 54, column: 5)
!3624 = !DILocation(line: 58, column: 7, scope: !3623, inlinedAt: !3616)
!3625 = !DILocation(line: 61, column: 7, scope: !3610, inlinedAt: !3616)
!3626 = !DILocation(line: 62, column: 8, scope: !3627, inlinedAt: !3616)
!3627 = distinct !DILexicalBlock(scope: !3610, file: !3571, line: 62, column: 7)
!3628 = !DILocation(line: 62, column: 13, scope: !3627, inlinedAt: !3616)
!3629 = !DILocation(line: 62, column: 10, scope: !3627, inlinedAt: !3616)
!3630 = !DILocation(line: 63, column: 5, scope: !3627, inlinedAt: !3616)
!3631 = !DILocation(line: 0, scope: !3610, inlinedAt: !3616)
!3632 = !DILocation(line: 116, column: 3, scope: !3594)
!3633 = !DILocation(line: 51, column: 17, scope: !3610)
!3634 = !DILocation(line: 51, column: 27, scope: !3610)
!3635 = !DILocation(line: 53, column: 8, scope: !3619)
!3636 = !DILocation(line: 53, column: 13, scope: !3619)
!3637 = !DILocation(line: 53, column: 10, scope: !3619)
!3638 = !DILocation(line: 57, column: 7, scope: !3623)
!3639 = !DILocation(line: 58, column: 7, scope: !3623)
!3640 = !DILocation(line: 61, column: 7, scope: !3610)
!3641 = !DILocation(line: 62, column: 8, scope: !3627)
!3642 = !DILocation(line: 62, column: 13, scope: !3627)
!3643 = !DILocation(line: 62, column: 10, scope: !3627)
!3644 = !DILocation(line: 63, column: 5, scope: !3627)
!3645 = !DILocation(line: 0, scope: !3610)
!3646 = !DILocation(line: 65, column: 1, scope: !3610)
!3647 = !DILocation(line: 174, column: 19, scope: !258)
!3648 = !DILocation(line: 174, column: 30, scope: !258)
!3649 = !DILocation(line: 174, column: 41, scope: !258)
!3650 = !DILocation(line: 176, column: 14, scope: !258)
!3651 = !DILocation(line: 176, column: 10, scope: !258)
!3652 = !DILocation(line: 178, column: 9, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !258, file: !257, line: 178, column: 7)
!3654 = !DILocation(line: 178, column: 7, scope: !258)
!3655 = !DILocation(line: 180, column: 13, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !257, line: 180, column: 11)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !257, line: 179, column: 5)
!3658 = !DILocation(line: 180, column: 11, scope: !3657)
!3659 = !DILocation(line: 188, column: 30, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !257, line: 181, column: 9)
!3661 = !DILocation(line: 189, column: 16, scope: !3660)
!3662 = !DILocation(line: 189, column: 13, scope: !3660)
!3663 = !DILocation(line: 190, column: 9, scope: !3660)
!3664 = !DILocation(line: 0, scope: !3660)
!3665 = !DILocation(line: 191, column: 11, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3657, file: !257, line: 191, column: 11)
!3667 = !DILocation(line: 191, column: 11, scope: !3657)
!3668 = !DILocation(line: 206, column: 7, scope: !258)
!3669 = !DILocation(line: 207, column: 25, scope: !258)
!3670 = !DILocation(line: 51, column: 17, scope: !3610, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 207, column: 10, scope: !258)
!3672 = !DILocation(line: 51, column: 27, scope: !3610, inlinedAt: !3671)
!3673 = !DILocation(line: 53, column: 10, scope: !3619, inlinedAt: !3671)
!3674 = !DILocation(line: 192, column: 9, scope: !3666)
!3675 = !DILocation(line: 200, column: 69, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !257, line: 200, column: 11)
!3677 = distinct !DILexicalBlock(scope: !3653, file: !257, line: 195, column: 5)
!3678 = !DILocation(line: 201, column: 11, scope: !3676)
!3679 = !DILocation(line: 200, column: 11, scope: !3677)
!3680 = !DILocation(line: 202, column: 9, scope: !3676)
!3681 = !DILocation(line: 203, column: 14, scope: !3677)
!3682 = !DILocation(line: 203, column: 18, scope: !3677)
!3683 = !DILocation(line: 203, column: 9, scope: !3677)
!3684 = !DILocation(line: 53, column: 8, scope: !3619, inlinedAt: !3671)
!3685 = !DILocation(line: 57, column: 7, scope: !3623, inlinedAt: !3671)
!3686 = !DILocation(line: 58, column: 7, scope: !3623, inlinedAt: !3671)
!3687 = !DILocation(line: 61, column: 7, scope: !3610, inlinedAt: !3671)
!3688 = !DILocation(line: 62, column: 8, scope: !3627, inlinedAt: !3671)
!3689 = !DILocation(line: 62, column: 13, scope: !3627, inlinedAt: !3671)
!3690 = !DILocation(line: 62, column: 10, scope: !3627, inlinedAt: !3671)
!3691 = !DILocation(line: 63, column: 5, scope: !3627, inlinedAt: !3671)
!3692 = !DILocation(line: 0, scope: !3610, inlinedAt: !3671)
!3693 = !DILocation(line: 207, column: 3, scope: !258)
!3694 = distinct !DISubprogram(name: "xcharalloc", scope: !257, file: !257, line: 216, type: !2646, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3695)
!3695 = !{!3696}
!3696 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !257, line: 216, type: !164)
!3697 = !DILocation(line: 216, column: 20, scope: !3694)
!3698 = !DILocation(line: 39, column: 17, scope: !3570, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 218, column: 10, scope: !3694)
!3700 = !DILocation(line: 41, column: 13, scope: !3570, inlinedAt: !3699)
!3701 = !DILocation(line: 41, column: 9, scope: !3570, inlinedAt: !3699)
!3702 = !DILocation(line: 42, column: 8, scope: !3581, inlinedAt: !3699)
!3703 = !DILocation(line: 42, column: 15, scope: !3581, inlinedAt: !3699)
!3704 = !DILocation(line: 42, column: 10, scope: !3581, inlinedAt: !3699)
!3705 = !DILocation(line: 43, column: 5, scope: !3581, inlinedAt: !3699)
!3706 = !DILocation(line: 218, column: 3, scope: !3694)
!3707 = distinct !DISubprogram(name: "x2realloc", scope: !3571, file: !3571, line: 74, type: !3708, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!16, !16, !261}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "p", arg: 1, scope: !3707, file: !3571, line: 74, type: !16)
!3712 = !DILocalVariable(name: "pn", arg: 2, scope: !3707, file: !3571, line: 74, type: !261)
!3713 = !DILocation(line: 74, column: 18, scope: !3707)
!3714 = !DILocation(line: 74, column: 29, scope: !3707)
!3715 = !DILocation(line: 174, column: 19, scope: !258, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 76, column: 10, scope: !3707)
!3717 = !DILocation(line: 174, column: 30, scope: !258, inlinedAt: !3716)
!3718 = !DILocation(line: 174, column: 41, scope: !258, inlinedAt: !3716)
!3719 = !DILocation(line: 176, column: 14, scope: !258, inlinedAt: !3716)
!3720 = !DILocation(line: 176, column: 10, scope: !258, inlinedAt: !3716)
!3721 = !DILocation(line: 178, column: 9, scope: !3653, inlinedAt: !3716)
!3722 = !DILocation(line: 178, column: 7, scope: !258, inlinedAt: !3716)
!3723 = !DILocation(line: 180, column: 13, scope: !3656, inlinedAt: !3716)
!3724 = !DILocation(line: 180, column: 11, scope: !3657, inlinedAt: !3716)
!3725 = !DILocation(line: 191, column: 11, scope: !3666, inlinedAt: !3716)
!3726 = !DILocation(line: 191, column: 11, scope: !3657, inlinedAt: !3716)
!3727 = !DILocation(line: 206, column: 7, scope: !258, inlinedAt: !3716)
!3728 = !DILocation(line: 51, column: 17, scope: !3610, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 207, column: 10, scope: !258, inlinedAt: !3716)
!3730 = !DILocation(line: 51, column: 27, scope: !3610, inlinedAt: !3729)
!3731 = !DILocation(line: 53, column: 10, scope: !3619, inlinedAt: !3729)
!3732 = !DILocation(line: 192, column: 9, scope: !3666, inlinedAt: !3716)
!3733 = !DILocation(line: 201, column: 11, scope: !3676, inlinedAt: !3716)
!3734 = !DILocation(line: 200, column: 11, scope: !3677, inlinedAt: !3716)
!3735 = !DILocation(line: 202, column: 9, scope: !3676, inlinedAt: !3716)
!3736 = !DILocation(line: 203, column: 14, scope: !3677, inlinedAt: !3716)
!3737 = !DILocation(line: 203, column: 18, scope: !3677, inlinedAt: !3716)
!3738 = !DILocation(line: 203, column: 9, scope: !3677, inlinedAt: !3716)
!3739 = !DILocation(line: 53, column: 8, scope: !3619, inlinedAt: !3729)
!3740 = !DILocation(line: 57, column: 7, scope: !3623, inlinedAt: !3729)
!3741 = !DILocation(line: 58, column: 7, scope: !3623, inlinedAt: !3729)
!3742 = !DILocation(line: 61, column: 7, scope: !3610, inlinedAt: !3729)
!3743 = !DILocation(line: 62, column: 8, scope: !3627, inlinedAt: !3729)
!3744 = !DILocation(line: 62, column: 13, scope: !3627, inlinedAt: !3729)
!3745 = !DILocation(line: 62, column: 10, scope: !3627, inlinedAt: !3729)
!3746 = !DILocation(line: 63, column: 5, scope: !3627, inlinedAt: !3729)
!3747 = !DILocation(line: 0, scope: !3610, inlinedAt: !3729)
!3748 = !DILocation(line: 76, column: 3, scope: !3707)
!3749 = distinct !DISubprogram(name: "xzalloc", scope: !3571, file: !3571, line: 84, type: !3572, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3750)
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "s", arg: 1, scope: !3749, file: !3571, line: 84, type: !164)
!3752 = !DILocation(line: 84, column: 17, scope: !3749)
!3753 = !DILocation(line: 39, column: 17, scope: !3570, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 86, column: 18, scope: !3749)
!3755 = !DILocation(line: 41, column: 13, scope: !3570, inlinedAt: !3754)
!3756 = !DILocation(line: 41, column: 9, scope: !3570, inlinedAt: !3754)
!3757 = !DILocation(line: 42, column: 8, scope: !3581, inlinedAt: !3754)
!3758 = !DILocation(line: 42, column: 15, scope: !3581, inlinedAt: !3754)
!3759 = !DILocation(line: 42, column: 10, scope: !3581, inlinedAt: !3754)
!3760 = !DILocation(line: 43, column: 5, scope: !3581, inlinedAt: !3754)
!3761 = !DILocation(line: 86, column: 10, scope: !3749)
!3762 = !DILocation(line: 86, column: 3, scope: !3749)
!3763 = distinct !DISubprogram(name: "xcalloc", scope: !3571, file: !3571, line: 93, type: !3557, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DILocalVariable(name: "n", arg: 1, scope: !3763, file: !3571, line: 93, type: !164)
!3766 = !DILocalVariable(name: "s", arg: 2, scope: !3763, file: !3571, line: 93, type: !164)
!3767 = !DILocalVariable(name: "p", scope: !3763, file: !3571, line: 95, type: !16)
!3768 = !DILocation(line: 93, column: 17, scope: !3763)
!3769 = !DILocation(line: 93, column: 27, scope: !3763)
!3770 = !DILocation(line: 100, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3763, file: !3571, line: 100, column: 7)
!3772 = !DILocation(line: 101, column: 7, scope: !3771)
!3773 = !DILocation(line: 101, column: 18, scope: !3771)
!3774 = !DILocation(line: 95, column: 9, scope: !3763)
!3775 = !DILocation(line: 101, column: 16, scope: !3771)
!3776 = !DILocation(line: 100, column: 7, scope: !3763)
!3777 = !DILocation(line: 102, column: 5, scope: !3771)
!3778 = !DILocation(line: 103, column: 3, scope: !3763)
!3779 = distinct !DISubprogram(name: "xmemdup", scope: !3571, file: !3571, line: 111, type: !3780, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3784)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!16, !3782, !164}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "p", arg: 1, scope: !3779, file: !3571, line: 111, type: !3782)
!3786 = !DILocalVariable(name: "s", arg: 2, scope: !3779, file: !3571, line: 111, type: !164)
!3787 = !DILocation(line: 111, column: 22, scope: !3779)
!3788 = !DILocation(line: 111, column: 32, scope: !3779)
!3789 = !DILocation(line: 39, column: 17, scope: !3570, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 113, column: 18, scope: !3779)
!3791 = !DILocation(line: 41, column: 13, scope: !3570, inlinedAt: !3790)
!3792 = !DILocation(line: 41, column: 9, scope: !3570, inlinedAt: !3790)
!3793 = !DILocation(line: 42, column: 8, scope: !3581, inlinedAt: !3790)
!3794 = !DILocation(line: 42, column: 15, scope: !3581, inlinedAt: !3790)
!3795 = !DILocation(line: 42, column: 10, scope: !3581, inlinedAt: !3790)
!3796 = !DILocation(line: 43, column: 5, scope: !3581, inlinedAt: !3790)
!3797 = !DILocation(line: 113, column: 10, scope: !3779)
!3798 = !DILocation(line: 113, column: 3, scope: !3779)
!3799 = distinct !DISubprogram(name: "xstrdup", scope: !3571, file: !3571, line: 119, type: !2852, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3800)
!3800 = !{!3801}
!3801 = !DILocalVariable(name: "string", arg: 1, scope: !3799, file: !3571, line: 119, type: !45)
!3802 = !DILocation(line: 119, column: 22, scope: !3799)
!3803 = !DILocation(line: 121, column: 27, scope: !3799)
!3804 = !DILocation(line: 121, column: 43, scope: !3799)
!3805 = !DILocation(line: 111, column: 22, scope: !3779, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 121, column: 10, scope: !3799)
!3807 = !DILocation(line: 111, column: 32, scope: !3779, inlinedAt: !3806)
!3808 = !DILocation(line: 39, column: 17, scope: !3570, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 113, column: 18, scope: !3779, inlinedAt: !3806)
!3810 = !DILocation(line: 41, column: 13, scope: !3570, inlinedAt: !3809)
!3811 = !DILocation(line: 41, column: 9, scope: !3570, inlinedAt: !3809)
!3812 = !DILocation(line: 42, column: 8, scope: !3581, inlinedAt: !3809)
!3813 = !DILocation(line: 42, column: 15, scope: !3581, inlinedAt: !3809)
!3814 = !DILocation(line: 42, column: 10, scope: !3581, inlinedAt: !3809)
!3815 = !DILocation(line: 43, column: 5, scope: !3581, inlinedAt: !3809)
!3816 = !DILocation(line: 113, column: 10, scope: !3779, inlinedAt: !3806)
!3817 = !DILocation(line: 121, column: 3, scope: !3799)
!3818 = distinct !DISubprogram(name: "xalloc_die", scope: !3819, file: !3819, line: 32, type: !722, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !270, retainedNodes: !69)
!3819 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3820 = !DILocation(line: 34, column: 10, scope: !3818)
!3821 = !DILocation(line: 34, column: 33, scope: !3818)
!3822 = !DILocation(line: 34, column: 3, scope: !3818)
!3823 = !DILocation(line: 40, column: 3, scope: !3818)
!3824 = distinct !DISubprogram(name: "xstrtod", scope: !3825, file: !3825, line: 44, type: !3826, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !272, retainedNodes: !3830)
!3825 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!38, !45, !3828, !1150, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837}
!3831 = !DILocalVariable(name: "str", arg: 1, scope: !3824, file: !3825, line: 44, type: !45)
!3832 = !DILocalVariable(name: "ptr", arg: 2, scope: !3824, file: !3825, line: 44, type: !3828)
!3833 = !DILocalVariable(name: "result", arg: 3, scope: !3824, file: !3825, line: 44, type: !1150)
!3834 = !DILocalVariable(name: "convert", arg: 4, scope: !3824, file: !3825, line: 45, type: !3829)
!3835 = !DILocalVariable(name: "val", scope: !3824, file: !3825, line: 47, type: !35)
!3836 = !DILocalVariable(name: "terminator", scope: !3824, file: !3825, line: 48, type: !14)
!3837 = !DILocalVariable(name: "ok", scope: !3824, file: !3825, line: 49, type: !38)
!3838 = !DILocation(line: 44, column: 22, scope: !3824)
!3839 = !DILocation(line: 44, column: 40, scope: !3824)
!3840 = !DILocation(line: 44, column: 53, scope: !3824)
!3841 = !DILocation(line: 45, column: 19, scope: !3824)
!3842 = !DILocation(line: 48, column: 3, scope: !3824)
!3843 = !DILocation(line: 49, column: 8, scope: !3824)
!3844 = !DILocation(line: 51, column: 3, scope: !3824)
!3845 = !DILocation(line: 51, column: 9, scope: !3824)
!3846 = !DILocation(line: 48, column: 9, scope: !3824)
!3847 = !DILocation(line: 52, column: 9, scope: !3824)
!3848 = !DILocation(line: 47, column: 10, scope: !3824)
!3849 = !DILocation(line: 55, column: 7, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3824, file: !3825, line: 55, column: 7)
!3851 = !DILocation(line: 55, column: 18, scope: !3850)
!3852 = !DILocation(line: 55, column: 25, scope: !3850)
!3853 = !DILocation(line: 55, column: 33, scope: !3850)
!3854 = !DILocation(line: 55, column: 41, scope: !3850)
!3855 = !DILocation(line: 55, column: 44, scope: !3850)
!3856 = !DILocation(line: 55, column: 56, scope: !3850)
!3857 = !DILocation(line: 55, column: 7, scope: !3824)
!3858 = !DILocation(line: 62, column: 15, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3825, line: 62, column: 11)
!3860 = distinct !DILexicalBlock(scope: !3850, file: !3825, line: 58, column: 5)
!3861 = !DILocation(line: 62, column: 20, scope: !3859)
!3862 = !DILocation(line: 62, column: 23, scope: !3859)
!3863 = !DILocation(line: 62, column: 29, scope: !3859)
!3864 = !DILocation(line: 62, column: 11, scope: !3860)
!3865 = !DILocation(line: 66, column: 11, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3824, file: !3825, line: 66, column: 7)
!3867 = !DILocation(line: 66, column: 7, scope: !3824)
!3868 = !DILocation(line: 67, column: 10, scope: !3866)
!3869 = !DILocation(line: 67, column: 5, scope: !3866)
!3870 = !DILocation(line: 69, column: 11, scope: !3824)
!3871 = !DILocation(line: 71, column: 1, scope: !3824)
!3872 = !DILocation(line: 70, column: 3, scope: !3824)
!3873 = distinct !DISubprogram(name: "rpl_calloc", scope: !3874, file: !3874, line: 42, type: !3557, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !3875)
!3874 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DILocalVariable(name: "n", arg: 1, scope: !3873, file: !3874, line: 42, type: !164)
!3877 = !DILocalVariable(name: "s", arg: 2, scope: !3873, file: !3874, line: 42, type: !164)
!3878 = !DILocalVariable(name: "result", scope: !3873, file: !3874, line: 44, type: !16)
!3879 = !DILocalVariable(name: "bytes", scope: !3880, file: !3874, line: 56, type: !164)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3874, line: 53, column: 5)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !3874, line: 47, column: 7)
!3882 = !DILocation(line: 42, column: 20, scope: !3873)
!3883 = !DILocation(line: 42, column: 30, scope: !3873)
!3884 = !DILocation(line: 47, column: 9, scope: !3881)
!3885 = !DILocation(line: 47, column: 19, scope: !3881)
!3886 = !DILocation(line: 47, column: 14, scope: !3881)
!3887 = !DILocation(line: 56, column: 24, scope: !3880)
!3888 = !DILocation(line: 56, column: 14, scope: !3880)
!3889 = !DILocation(line: 57, column: 17, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3880, file: !3874, line: 57, column: 11)
!3891 = !DILocation(line: 57, column: 21, scope: !3890)
!3892 = !DILocation(line: 57, column: 11, scope: !3880)
!3893 = !DILocation(line: 59, column: 11, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !3874, line: 58, column: 9)
!3895 = !DILocation(line: 59, column: 17, scope: !3894)
!3896 = !DILocation(line: 65, column: 12, scope: !3873)
!3897 = !DILocation(line: 44, column: 9, scope: !3873)
!3898 = !DILocation(line: 72, column: 3, scope: !3873)
!3899 = !DILocation(line: 0, scope: !3894)
!3900 = !DILocation(line: 73, column: 1, scope: !3873)
!3901 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3902, file: !3902, line: 385, type: !3903, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !276, retainedNodes: !3917)
!3902 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!164, !3905, !45, !164, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1809, line: 6, baseType: !3908)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1811, line: 21, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 13, size: 64, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3909, file: !1811, line: 15, baseType: !22, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3909, file: !1811, line: 20, baseType: !3913, size: 32, offset: 32)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !1811, line: 16, size: 32, elements: !3914)
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3913, file: !1811, line: 18, baseType: !7, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3913, file: !1811, line: 19, baseType: !1820, size: 32)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3918 = !DILocalVariable(name: "pwc", arg: 1, scope: !3901, file: !3902, line: 385, type: !3905)
!3919 = !DILocalVariable(name: "s", arg: 2, scope: !3901, file: !3902, line: 385, type: !45)
!3920 = !DILocalVariable(name: "n", arg: 3, scope: !3901, file: !3902, line: 385, type: !164)
!3921 = !DILocalVariable(name: "ps", arg: 4, scope: !3901, file: !3902, line: 385, type: !3906)
!3922 = !DILocalVariable(name: "ret", scope: !3901, file: !3902, line: 387, type: !164)
!3923 = !DILocalVariable(name: "wc", scope: !3901, file: !3902, line: 388, type: !1825)
!3924 = !DILocalVariable(name: "uc", scope: !3925, file: !3902, line: 449, type: !1669)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3902, line: 448, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 447, column: 7)
!3927 = !DILocation(line: 385, column: 23, scope: !3901)
!3928 = !DILocation(line: 385, column: 40, scope: !3901)
!3929 = !DILocation(line: 385, column: 50, scope: !3901)
!3930 = !DILocation(line: 385, column: 64, scope: !3901)
!3931 = !DILocation(line: 388, column: 3, scope: !3901)
!3932 = !DILocation(line: 404, column: 9, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 404, column: 7)
!3934 = !DILocation(line: 404, column: 7, scope: !3901)
!3935 = !DILocation(line: 439, column: 9, scope: !3901)
!3936 = !DILocation(line: 387, column: 10, scope: !3901)
!3937 = !DILocation(line: 447, column: 19, scope: !3926)
!3938 = !DILocation(line: 447, column: 31, scope: !3926)
!3939 = !DILocation(line: 447, column: 26, scope: !3926)
!3940 = !DILocation(line: 447, column: 41, scope: !3926)
!3941 = !DILocation(line: 447, column: 7, scope: !3901)
!3942 = !DILocation(line: 449, column: 26, scope: !3925)
!3943 = !DILocation(line: 449, column: 21, scope: !3925)
!3944 = !DILocation(line: 450, column: 14, scope: !3925)
!3945 = !DILocation(line: 450, column: 12, scope: !3925)
!3946 = !DILocation(line: 0, scope: !3925)
!3947 = !DILocation(line: 456, column: 1, scope: !3901)
!3948 = distinct !DISubprogram(name: "str2sig", scope: !222, file: !222, line: 304, type: !3949, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!22, !45, !57}
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "signame", arg: 1, scope: !3948, file: !222, line: 304, type: !45)
!3953 = !DILocalVariable(name: "signum", arg: 2, scope: !3948, file: !222, line: 304, type: !57)
!3954 = !DILocation(line: 304, column: 22, scope: !3948)
!3955 = !DILocation(line: 304, column: 36, scope: !3948)
!3956 = !DILocalVariable(name: "signame", arg: 1, scope: !3957, file: !222, line: 261, type: !45)
!3957 = distinct !DISubprogram(name: "str2signum", scope: !222, file: !222, line: 261, type: !3958, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!22, !45}
!3960 = !{!3956, !3961, !3964, !3965, !3967, !3969, !3970, !3971, !3974}
!3961 = !DILocalVariable(name: "endp", scope: !3962, file: !222, line: 265, type: !14)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !222, line: 264, column: 5)
!3963 = distinct !DILexicalBlock(scope: !3957, file: !222, line: 263, column: 7)
!3964 = !DILocalVariable(name: "n", scope: !3962, file: !222, line: 266, type: !244)
!3965 = !DILocalVariable(name: "i", scope: !3966, file: !222, line: 272, type: !7)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !222, line: 271, column: 5)
!3967 = !DILocalVariable(name: "endp", scope: !3968, file: !222, line: 278, type: !14)
!3968 = distinct !DILexicalBlock(scope: !3966, file: !222, line: 277, column: 7)
!3969 = !DILocalVariable(name: "rtmin", scope: !3968, file: !222, line: 279, type: !22)
!3970 = !DILocalVariable(name: "rtmax", scope: !3968, file: !222, line: 280, type: !22)
!3971 = !DILocalVariable(name: "n", scope: !3972, file: !222, line: 284, type: !244)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !222, line: 283, column: 11)
!3973 = distinct !DILexicalBlock(scope: !3968, file: !222, line: 282, column: 13)
!3974 = !DILocalVariable(name: "n", scope: !3975, file: !222, line: 290, type: !244)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !222, line: 289, column: 11)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !222, line: 288, column: 18)
!3977 = !DILocation(line: 261, column: 25, scope: !3957, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 306, column: 13, scope: !3948)
!3979 = !DILocation(line: 263, column: 7, scope: !3963, inlinedAt: !3978)
!3980 = !DILocation(line: 263, column: 7, scope: !3957, inlinedAt: !3978)
!3981 = !DILocation(line: 265, column: 7, scope: !3962, inlinedAt: !3978)
!3982 = !DILocation(line: 265, column: 13, scope: !3962, inlinedAt: !3978)
!3983 = !DILocation(line: 266, column: 20, scope: !3962, inlinedAt: !3978)
!3984 = !DILocation(line: 266, column: 16, scope: !3962, inlinedAt: !3978)
!3985 = !DILocation(line: 267, column: 14, scope: !3986, inlinedAt: !3978)
!3986 = distinct !DILexicalBlock(scope: !3962, file: !222, line: 267, column: 11)
!3987 = !DILocation(line: 267, column: 13, scope: !3986, inlinedAt: !3978)
!3988 = !DILocation(line: 267, column: 24, scope: !3986, inlinedAt: !3978)
!3989 = !DILocation(line: 268, column: 16, scope: !3986, inlinedAt: !3978)
!3990 = !DILocation(line: 267, column: 19, scope: !3986, inlinedAt: !3978)
!3991 = !DILocation(line: 269, column: 5, scope: !3963, inlinedAt: !3978)
!3992 = !DILocation(line: 272, column: 20, scope: !3966, inlinedAt: !3978)
!3993 = !DILocation(line: 273, column: 21, scope: !3994, inlinedAt: !3978)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !222, line: 273, column: 7)
!3995 = distinct !DILexicalBlock(scope: !3966, file: !222, line: 273, column: 7)
!3996 = !DILocation(line: 273, column: 7, scope: !3995, inlinedAt: !3978)
!3997 = distinct !{!3997, !3998, !3999}
!3998 = !DILocation(line: 273, column: 7, scope: !3995)
!3999 = !DILocation(line: 275, column: 35, scope: !3995)
!4000 = !DILocation(line: 274, column: 21, scope: !4001, inlinedAt: !3978)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !222, line: 274, column: 13)
!4002 = !DILocation(line: 274, column: 13, scope: !4001, inlinedAt: !3978)
!4003 = !DILocation(line: 274, column: 53, scope: !4001, inlinedAt: !3978)
!4004 = !DILocation(line: 273, column: 41, scope: !3994, inlinedAt: !3978)
!4005 = !DILocation(line: 274, column: 13, scope: !3994, inlinedAt: !3978)
!4006 = !DILocation(line: 273, column: 19, scope: !3994, inlinedAt: !3978)
!4007 = !DILocation(line: 275, column: 35, scope: !4001, inlinedAt: !3978)
!4008 = !{!4009, !820, i64 0}
!4009 = !{!"numname", !820, i64 0, !716, i64 4}
!4010 = !DILocation(line: 278, column: 9, scope: !3968, inlinedAt: !3978)
!4011 = !DILocation(line: 279, column: 21, scope: !3968, inlinedAt: !3978)
!4012 = !DILocation(line: 279, column: 13, scope: !3968, inlinedAt: !3978)
!4013 = !DILocation(line: 280, column: 21, scope: !3968, inlinedAt: !3978)
!4014 = !DILocation(line: 280, column: 13, scope: !3968, inlinedAt: !3978)
!4015 = !DILocation(line: 282, column: 15, scope: !3973, inlinedAt: !3978)
!4016 = !DILocation(line: 282, column: 23, scope: !3973, inlinedAt: !3978)
!4017 = !DILocation(line: 282, column: 26, scope: !3973, inlinedAt: !3978)
!4018 = !DILocation(line: 282, column: 56, scope: !3973, inlinedAt: !3978)
!4019 = !DILocation(line: 282, column: 13, scope: !3968, inlinedAt: !3978)
!4020 = !DILocation(line: 284, column: 42, scope: !3972, inlinedAt: !3978)
!4021 = !DILocation(line: 278, column: 15, scope: !3968, inlinedAt: !3978)
!4022 = !DILocation(line: 284, column: 26, scope: !3972, inlinedAt: !3978)
!4023 = !DILocation(line: 284, column: 22, scope: !3972, inlinedAt: !3978)
!4024 = !DILocation(line: 285, column: 20, scope: !4025, inlinedAt: !3978)
!4025 = distinct !DILexicalBlock(scope: !3972, file: !222, line: 285, column: 17)
!4026 = !DILocation(line: 285, column: 19, scope: !4025, inlinedAt: !3978)
!4027 = !DILocation(line: 285, column: 30, scope: !4025, inlinedAt: !3978)
!4028 = !DILocation(line: 285, column: 25, scope: !4025, inlinedAt: !3978)
!4029 = !DILocation(line: 285, column: 49, scope: !4025, inlinedAt: !3978)
!4030 = !DILocation(line: 285, column: 43, scope: !4025, inlinedAt: !3978)
!4031 = !DILocation(line: 285, column: 40, scope: !4025, inlinedAt: !3978)
!4032 = !DILocation(line: 285, column: 17, scope: !3972, inlinedAt: !3978)
!4033 = !DILocation(line: 288, column: 20, scope: !3976, inlinedAt: !3978)
!4034 = !DILocation(line: 288, column: 28, scope: !3976, inlinedAt: !3978)
!4035 = !DILocation(line: 288, column: 31, scope: !3976, inlinedAt: !3978)
!4036 = !DILocation(line: 288, column: 61, scope: !3976, inlinedAt: !3978)
!4037 = !DILocation(line: 288, column: 18, scope: !3973, inlinedAt: !3978)
!4038 = !DILocation(line: 290, column: 42, scope: !3975, inlinedAt: !3978)
!4039 = !DILocation(line: 290, column: 26, scope: !3975, inlinedAt: !3978)
!4040 = !DILocation(line: 290, column: 22, scope: !3975, inlinedAt: !3978)
!4041 = !DILocation(line: 291, column: 20, scope: !4042, inlinedAt: !3978)
!4042 = distinct !DILexicalBlock(scope: !3975, file: !222, line: 291, column: 17)
!4043 = !DILocation(line: 291, column: 19, scope: !4042, inlinedAt: !3978)
!4044 = !DILocation(line: 291, column: 25, scope: !4042, inlinedAt: !3978)
!4045 = !DILocation(line: 291, column: 34, scope: !4042, inlinedAt: !3978)
!4046 = !DILocation(line: 291, column: 28, scope: !4042, inlinedAt: !3978)
!4047 = !DILocation(line: 291, column: 42, scope: !4042, inlinedAt: !3978)
!4048 = !DILocation(line: 291, column: 52, scope: !4042, inlinedAt: !3978)
!4049 = !DILocation(line: 291, column: 47, scope: !4042, inlinedAt: !3978)
!4050 = !DILocation(line: 294, column: 7, scope: !3966, inlinedAt: !3978)
!4051 = !DILocation(line: 0, scope: !3948)
!4052 = !DILocation(line: 297, column: 3, scope: !3957, inlinedAt: !3978)
!4053 = !DILocation(line: 0, scope: !4001, inlinedAt: !3978)
!4054 = !DILocation(line: 306, column: 11, scope: !3948)
!4055 = !DILocation(line: 307, column: 10, scope: !3948)
!4056 = !DILocation(line: 307, column: 3, scope: !3948)
!4057 = distinct !DISubprogram(name: "sig2str", scope: !222, file: !222, line: 315, type: !4058, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!22, !22, !14}
!4060 = !{!4061, !4062, !4063, !4064, !4066, !4067, !4068}
!4061 = !DILocalVariable(name: "signum", arg: 1, scope: !4057, file: !222, line: 315, type: !22)
!4062 = !DILocalVariable(name: "signame", arg: 2, scope: !4057, file: !222, line: 315, type: !14)
!4063 = !DILocalVariable(name: "i", scope: !4057, file: !222, line: 317, type: !7)
!4064 = !DILocalVariable(name: "rtmin", scope: !4065, file: !222, line: 326, type: !22)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !222, line: 325, column: 3)
!4066 = !DILocalVariable(name: "rtmax", scope: !4065, file: !222, line: 327, type: !22)
!4067 = !DILocalVariable(name: "base", scope: !4065, file: !222, line: 328, type: !22)
!4068 = !DILocalVariable(name: "delta", scope: !4065, file: !222, line: 328, type: !22)
!4069 = !DILocation(line: 315, column: 14, scope: !4057)
!4070 = !DILocation(line: 315, column: 28, scope: !4057)
!4071 = !DILocation(line: 317, column: 16, scope: !4057)
!4072 = !DILocation(line: 318, column: 3, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4057, file: !222, line: 318, column: 3)
!4074 = !DILocation(line: 318, column: 15, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4073, file: !222, line: 318, column: 3)
!4076 = !DILocation(line: 319, column: 26, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !222, line: 319, column: 9)
!4078 = !DILocation(line: 319, column: 30, scope: !4077)
!4079 = !DILocation(line: 318, column: 37, scope: !4075)
!4080 = !DILocation(line: 319, column: 9, scope: !4075)
!4081 = !DILocation(line: 321, column: 26, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4077, file: !222, line: 320, column: 7)
!4083 = !DILocalVariable(name: "__dest", arg: 1, scope: !4084, file: !4085, line: 88, type: !4088)
!4084 = distinct !DISubprogram(name: "strcpy", scope: !4085, file: !4085, line: 88, type: !4086, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !4090)
!4085 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!14, !4088, !4089}
!4088 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!4089 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!4090 = !{!4083, !4091}
!4091 = !DILocalVariable(name: "__src", arg: 2, scope: !4084, file: !4085, line: 88, type: !4089)
!4092 = !DILocation(line: 88, column: 1, scope: !4084, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 321, column: 9, scope: !4082)
!4094 = !DILocation(line: 90, column: 49, scope: !4084, inlinedAt: !4093)
!4095 = !DILocation(line: 90, column: 10, scope: !4084, inlinedAt: !4093)
!4096 = !DILocation(line: 322, column: 9, scope: !4082)
!4097 = !DILocation(line: 326, column: 17, scope: !4065)
!4098 = !DILocation(line: 326, column: 9, scope: !4065)
!4099 = !DILocation(line: 327, column: 17, scope: !4065)
!4100 = !DILocation(line: 327, column: 9, scope: !4065)
!4101 = !DILocation(line: 330, column: 18, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4065, file: !222, line: 330, column: 9)
!4103 = !DILocation(line: 330, column: 38, scope: !4102)
!4104 = !DILocation(line: 330, column: 28, scope: !4102)
!4105 = !DILocation(line: 333, column: 34, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4065, file: !222, line: 333, column: 9)
!4107 = !DILocation(line: 333, column: 43, scope: !4106)
!4108 = !DILocation(line: 333, column: 25, scope: !4106)
!4109 = !DILocation(line: 333, column: 16, scope: !4106)
!4110 = !DILocation(line: 333, column: 9, scope: !4065)
!4111 = !DILocation(line: 335, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4106, file: !222, line: 334, column: 7)
!4113 = !DILocation(line: 328, column: 9, scope: !4065)
!4114 = !DILocation(line: 337, column: 7, scope: !4112)
!4115 = !DILocation(line: 340, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4106, file: !222, line: 339, column: 7)
!4117 = !DILocation(line: 0, scope: !4116)
!4118 = !DILocation(line: 344, column: 20, scope: !4065)
!4119 = !DILocation(line: 328, column: 15, scope: !4065)
!4120 = !DILocation(line: 345, column: 15, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4065, file: !222, line: 345, column: 9)
!4122 = !DILocation(line: 345, column: 9, scope: !4065)
!4123 = !DILocation(line: 346, column: 7, scope: !4121)
!4124 = !DILocation(line: 0, scope: !4065)
!4125 = !DILocation(line: 349, column: 1, scope: !4057)
!4126 = !DILocation(line: 318, column: 17, scope: !4075)
!4127 = distinct !{!4127, !4072, !4128}
!4128 = !DILocation(line: 323, column: 7, scope: !4073)
!4129 = distinct !DISubprogram(name: "close_stream", scope: !4130, file: !4130, line: 56, type: !4131, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !4167)
!4130 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!22, !4133}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3367, line: 7, baseType: !4135)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3369, line: 49, size: 1728, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4135, file: !3369, line: 51, baseType: !22, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4135, file: !3369, line: 54, baseType: !14, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4135, file: !3369, line: 55, baseType: !14, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4135, file: !3369, line: 56, baseType: !14, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4135, file: !3369, line: 57, baseType: !14, size: 64, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4135, file: !3369, line: 58, baseType: !14, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4135, file: !3369, line: 59, baseType: !14, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4135, file: !3369, line: 60, baseType: !14, size: 64, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4135, file: !3369, line: 61, baseType: !14, size: 64, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4135, file: !3369, line: 64, baseType: !14, size: 64, offset: 576)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4135, file: !3369, line: 65, baseType: !14, size: 64, offset: 640)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4135, file: !3369, line: 66, baseType: !14, size: 64, offset: 704)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4135, file: !3369, line: 68, baseType: !3384, size: 64, offset: 768)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4135, file: !3369, line: 70, baseType: !4151, size: 64, offset: 832)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4135, file: !3369, line: 72, baseType: !22, size: 32, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4135, file: !3369, line: 73, baseType: !22, size: 32, offset: 928)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4135, file: !3369, line: 74, baseType: !3391, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4135, file: !3369, line: 77, baseType: !92, size: 16, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4135, file: !3369, line: 78, baseType: !23, size: 8, offset: 1040)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4135, file: !3369, line: 79, baseType: !3395, size: 8, offset: 1048)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4135, file: !3369, line: 81, baseType: !3399, size: 64, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4135, file: !3369, line: 89, baseType: !3402, size: 64, offset: 1152)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4135, file: !3369, line: 91, baseType: !3404, size: 64, offset: 1216)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4135, file: !3369, line: 92, baseType: !3407, size: 64, offset: 1280)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4135, file: !3369, line: 93, baseType: !4151, size: 64, offset: 1344)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4135, file: !3369, line: 94, baseType: !16, size: 64, offset: 1408)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4135, file: !3369, line: 95, baseType: !164, size: 64, offset: 1472)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4135, file: !3369, line: 96, baseType: !22, size: 32, offset: 1536)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4135, file: !3369, line: 98, baseType: !3414, size: 160, offset: 1568)
!4167 = !{!4168, !4169, !4171, !4172}
!4168 = !DILocalVariable(name: "stream", arg: 1, scope: !4129, file: !4130, line: 56, type: !4133)
!4169 = !DILocalVariable(name: "some_pending", scope: !4129, file: !4130, line: 58, type: !4170)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4171 = !DILocalVariable(name: "prev_fail", scope: !4129, file: !4130, line: 59, type: !4170)
!4172 = !DILocalVariable(name: "fclose_fail", scope: !4129, file: !4130, line: 60, type: !4170)
!4173 = !DILocation(line: 56, column: 21, scope: !4129)
!4174 = !DILocation(line: 58, column: 30, scope: !4129)
!4175 = !DILocalVariable(name: "__stream", arg: 1, scope: !4176, file: !4177, line: 135, type: !4133)
!4176 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4177, file: !4177, line: 135, type: !4131, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !4178)
!4177 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4178 = !{!4175}
!4179 = !DILocation(line: 135, column: 1, scope: !4176, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 59, column: 27, scope: !4129)
!4181 = !DILocation(line: 137, column: 10, scope: !4176, inlinedAt: !4180)
!4182 = !{!4183, !820, i64 0}
!4183 = !{!"_IO_FILE", !820, i64 0, !715, i64 8, !715, i64 16, !715, i64 24, !715, i64 32, !715, i64 40, !715, i64 48, !715, i64 56, !715, i64 64, !715, i64 72, !715, i64 80, !715, i64 88, !715, i64 96, !715, i64 104, !820, i64 112, !820, i64 116, !2691, i64 120, !2065, i64 128, !716, i64 130, !716, i64 131, !715, i64 136, !2691, i64 144, !715, i64 152, !715, i64 160, !715, i64 168, !715, i64 176, !2691, i64 184, !820, i64 192, !716, i64 196}
!4184 = !DILocation(line: 59, column: 43, scope: !4129)
!4185 = !DILocation(line: 60, column: 29, scope: !4129)
!4186 = !DILocation(line: 60, column: 45, scope: !4129)
!4187 = !DILocation(line: 70, column: 17, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4129, file: !4130, line: 70, column: 7)
!4189 = !DILocation(line: 58, column: 50, scope: !4129)
!4190 = !DILocation(line: 70, column: 33, scope: !4188)
!4191 = !DILocation(line: 70, column: 53, scope: !4188)
!4192 = !DILocation(line: 70, column: 59, scope: !4188)
!4193 = !DILocation(line: 70, column: 7, scope: !4129)
!4194 = !DILocation(line: 72, column: 11, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4188, file: !4130, line: 71, column: 5)
!4196 = !DILocation(line: 73, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4195, file: !4130, line: 72, column: 11)
!4198 = !DILocation(line: 73, column: 15, scope: !4197)
!4199 = !DILocation(line: 0, scope: !4129)
!4200 = !DILocation(line: 78, column: 1, scope: !4129)
!4201 = distinct !DISubprogram(name: "hard_locale", scope: !4202, file: !4202, line: 38, type: !4203, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !281, retainedNodes: !4205)
!4202 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!38, !22}
!4205 = !{!4206, !4207, !4208}
!4206 = !DILocalVariable(name: "category", arg: 1, scope: !4201, file: !4202, line: 38, type: !22)
!4207 = !DILocalVariable(name: "hard", scope: !4201, file: !4202, line: 40, type: !38)
!4208 = !DILocalVariable(name: "p", scope: !4201, file: !4202, line: 41, type: !45)
!4209 = !DILocation(line: 38, column: 18, scope: !4201)
!4210 = !DILocation(line: 40, column: 8, scope: !4201)
!4211 = !DILocation(line: 41, column: 19, scope: !4201)
!4212 = !DILocation(line: 41, column: 15, scope: !4201)
!4213 = !DILocation(line: 43, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4201, file: !4202, line: 43, column: 7)
!4215 = !DILocation(line: 43, column: 7, scope: !4201)
!4216 = !DILocation(line: 47, column: 15, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !4202, line: 47, column: 15)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !4202, line: 46, column: 9)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !4202, line: 45, column: 11)
!4220 = distinct !DILexicalBlock(scope: !4214, file: !4202, line: 44, column: 5)
!4221 = !DILocation(line: 47, column: 31, scope: !4217)
!4222 = !DILocation(line: 47, column: 36, scope: !4217)
!4223 = !DILocation(line: 47, column: 39, scope: !4217)
!4224 = !DILocation(line: 47, column: 59, scope: !4217)
!4225 = !DILocation(line: 47, column: 15, scope: !4218)
!4226 = !DILocation(line: 48, column: 13, scope: !4217)
!4227 = !DILocation(line: 71, column: 3, scope: !4201)
!4228 = distinct !DISubprogram(name: "locale_charset", scope: !4229, file: !4229, line: 687, type: !4230, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !4232)
!4229 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!45}
!4232 = !{!4233}
!4233 = !DILocalVariable(name: "codeset", scope: !4228, file: !4229, line: 689, type: !45)
!4234 = !DILocation(line: 696, column: 13, scope: !4228)
!4235 = !DILocation(line: 689, column: 15, scope: !4228)
!4236 = !DILocation(line: 754, column: 15, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4228, file: !4229, line: 754, column: 7)
!4238 = !DILocation(line: 754, column: 7, scope: !4228)
!4239 = !DILocation(line: 907, column: 13, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !4229, line: 907, column: 13)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !4229, line: 897, column: 7)
!4242 = distinct !DILexicalBlock(scope: !4228, file: !4229, line: 856, column: 3)
!4243 = !DILocation(line: 907, column: 24, scope: !4240)
!4244 = !DILocation(line: 907, column: 13, scope: !4241)
!4245 = !DILocation(line: 995, column: 3, scope: !4228)
!4246 = distinct !DISubprogram(name: "rpl_fclose", scope: !4247, file: !4247, line: 58, type: !4248, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !672, retainedNodes: !4284)
!4247 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!22, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3367, line: 7, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3369, line: 49, size: 1728, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4252, file: !3369, line: 51, baseType: !22, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4252, file: !3369, line: 54, baseType: !14, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4252, file: !3369, line: 55, baseType: !14, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4252, file: !3369, line: 56, baseType: !14, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4252, file: !3369, line: 57, baseType: !14, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4252, file: !3369, line: 58, baseType: !14, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4252, file: !3369, line: 59, baseType: !14, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4252, file: !3369, line: 60, baseType: !14, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4252, file: !3369, line: 61, baseType: !14, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4252, file: !3369, line: 64, baseType: !14, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4252, file: !3369, line: 65, baseType: !14, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4252, file: !3369, line: 66, baseType: !14, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4252, file: !3369, line: 68, baseType: !3384, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4252, file: !3369, line: 70, baseType: !4268, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4252, file: !3369, line: 72, baseType: !22, size: 32, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4252, file: !3369, line: 73, baseType: !22, size: 32, offset: 928)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4252, file: !3369, line: 74, baseType: !3391, size: 64, offset: 960)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4252, file: !3369, line: 77, baseType: !92, size: 16, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4252, file: !3369, line: 78, baseType: !23, size: 8, offset: 1040)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4252, file: !3369, line: 79, baseType: !3395, size: 8, offset: 1048)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4252, file: !3369, line: 81, baseType: !3399, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4252, file: !3369, line: 89, baseType: !3402, size: 64, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4252, file: !3369, line: 91, baseType: !3404, size: 64, offset: 1216)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4252, file: !3369, line: 92, baseType: !3407, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4252, file: !3369, line: 93, baseType: !4268, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4252, file: !3369, line: 94, baseType: !16, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4252, file: !3369, line: 95, baseType: !164, size: 64, offset: 1472)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4252, file: !3369, line: 96, baseType: !22, size: 32, offset: 1536)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4252, file: !3369, line: 98, baseType: !3414, size: 160, offset: 1568)
!4284 = !{!4285, !4286, !4287, !4288}
!4285 = !DILocalVariable(name: "fp", arg: 1, scope: !4246, file: !4247, line: 58, type: !4250)
!4286 = !DILocalVariable(name: "saved_errno", scope: !4246, file: !4247, line: 60, type: !22)
!4287 = !DILocalVariable(name: "fd", scope: !4246, file: !4247, line: 61, type: !22)
!4288 = !DILocalVariable(name: "result", scope: !4246, file: !4247, line: 62, type: !22)
!4289 = !DILocation(line: 58, column: 19, scope: !4246)
!4290 = !DILocation(line: 60, column: 7, scope: !4246)
!4291 = !DILocation(line: 62, column: 7, scope: !4246)
!4292 = !DILocation(line: 65, column: 8, scope: !4246)
!4293 = !DILocation(line: 61, column: 7, scope: !4246)
!4294 = !DILocation(line: 66, column: 10, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4246, file: !4247, line: 66, column: 7)
!4296 = !DILocation(line: 66, column: 7, scope: !4246)
!4297 = !DILocation(line: 67, column: 12, scope: !4295)
!4298 = !DILocation(line: 67, column: 5, scope: !4295)
!4299 = !DILocation(line: 72, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4246, file: !4247, line: 72, column: 7)
!4301 = !DILocation(line: 72, column: 23, scope: !4300)
!4302 = !DILocation(line: 72, column: 33, scope: !4300)
!4303 = !DILocation(line: 72, column: 26, scope: !4300)
!4304 = !DILocation(line: 72, column: 59, scope: !4300)
!4305 = !DILocation(line: 73, column: 7, scope: !4300)
!4306 = !DILocation(line: 73, column: 10, scope: !4300)
!4307 = !DILocation(line: 72, column: 7, scope: !4246)
!4308 = !DILocation(line: 100, column: 12, scope: !4246)
!4309 = !DILocation(line: 105, column: 7, scope: !4246)
!4310 = !DILocation(line: 74, column: 19, scope: !4300)
!4311 = !DILocation(line: 105, column: 19, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4246, file: !4247, line: 105, column: 7)
!4313 = !DILocation(line: 107, column: 13, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4312, file: !4247, line: 106, column: 5)
!4315 = !DILocation(line: 109, column: 5, scope: !4314)
!4316 = !DILocation(line: 0, scope: !4246)
!4317 = !DILocation(line: 112, column: 1, scope: !4246)
!4318 = distinct !DISubprogram(name: "rpl_fflush", scope: !4319, file: !4319, line: 129, type: !4320, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !674, retainedNodes: !4356)
!4319 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!22, !4322}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3367, line: 7, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3369, line: 49, size: 1728, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4324, file: !3369, line: 51, baseType: !22, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4324, file: !3369, line: 54, baseType: !14, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4324, file: !3369, line: 55, baseType: !14, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4324, file: !3369, line: 56, baseType: !14, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4324, file: !3369, line: 57, baseType: !14, size: 64, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4324, file: !3369, line: 58, baseType: !14, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4324, file: !3369, line: 59, baseType: !14, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4324, file: !3369, line: 60, baseType: !14, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4324, file: !3369, line: 61, baseType: !14, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4324, file: !3369, line: 64, baseType: !14, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4324, file: !3369, line: 65, baseType: !14, size: 64, offset: 640)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4324, file: !3369, line: 66, baseType: !14, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4324, file: !3369, line: 68, baseType: !3384, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4324, file: !3369, line: 70, baseType: !4340, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4324, file: !3369, line: 72, baseType: !22, size: 32, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4324, file: !3369, line: 73, baseType: !22, size: 32, offset: 928)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4324, file: !3369, line: 74, baseType: !3391, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4324, file: !3369, line: 77, baseType: !92, size: 16, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4324, file: !3369, line: 78, baseType: !23, size: 8, offset: 1040)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4324, file: !3369, line: 79, baseType: !3395, size: 8, offset: 1048)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4324, file: !3369, line: 81, baseType: !3399, size: 64, offset: 1088)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4324, file: !3369, line: 89, baseType: !3402, size: 64, offset: 1152)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4324, file: !3369, line: 91, baseType: !3404, size: 64, offset: 1216)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4324, file: !3369, line: 92, baseType: !3407, size: 64, offset: 1280)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4324, file: !3369, line: 93, baseType: !4340, size: 64, offset: 1344)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4324, file: !3369, line: 94, baseType: !16, size: 64, offset: 1408)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4324, file: !3369, line: 95, baseType: !164, size: 64, offset: 1472)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4324, file: !3369, line: 96, baseType: !22, size: 32, offset: 1536)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4324, file: !3369, line: 98, baseType: !3414, size: 160, offset: 1568)
!4356 = !{!4357}
!4357 = !DILocalVariable(name: "stream", arg: 1, scope: !4318, file: !4319, line: 129, type: !4322)
!4358 = !DILocation(line: 129, column: 19, scope: !4318)
!4359 = !DILocation(line: 150, column: 14, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4318, file: !4319, line: 150, column: 7)
!4361 = !DILocation(line: 150, column: 22, scope: !4360)
!4362 = !DILocation(line: 150, column: 27, scope: !4360)
!4363 = !DILocation(line: 150, column: 7, scope: !4318)
!4364 = !DILocation(line: 151, column: 12, scope: !4360)
!4365 = !DILocation(line: 151, column: 5, scope: !4360)
!4366 = !DILocalVariable(name: "fp", arg: 1, scope: !4367, file: !4319, line: 41, type: !4322)
!4367 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4319, file: !4319, line: 41, type: !4368, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !674, retainedNodes: !4370)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4322}
!4370 = !{!4366}
!4371 = !DILocation(line: 41, column: 48, scope: !4367, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 156, column: 3, scope: !4318)
!4373 = !DILocation(line: 43, column: 11, scope: !4374, inlinedAt: !4372)
!4374 = distinct !DILexicalBlock(scope: !4367, file: !4319, line: 43, column: 7)
!4375 = !DILocation(line: 43, column: 18, scope: !4374, inlinedAt: !4372)
!4376 = !DILocation(line: 43, column: 7, scope: !4367, inlinedAt: !4372)
!4377 = !DILocation(line: 45, column: 5, scope: !4374, inlinedAt: !4372)
!4378 = !DILocation(line: 158, column: 10, scope: !4318)
!4379 = !DILocation(line: 158, column: 3, scope: !4318)
!4380 = !DILocation(line: 0, scope: !4318)
!4381 = !DILocation(line: 232, column: 1, scope: !4318)
!4382 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4383, file: !4383, line: 28, type: !4384, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !676, retainedNodes: !4421)
!4383 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!22, !4386, !4420, !22}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3367, line: 7, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3369, line: 49, size: 1728, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4388, file: !3369, line: 51, baseType: !22, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4388, file: !3369, line: 54, baseType: !14, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4388, file: !3369, line: 55, baseType: !14, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4388, file: !3369, line: 56, baseType: !14, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4388, file: !3369, line: 57, baseType: !14, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4388, file: !3369, line: 58, baseType: !14, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4388, file: !3369, line: 59, baseType: !14, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4388, file: !3369, line: 60, baseType: !14, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4388, file: !3369, line: 61, baseType: !14, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4388, file: !3369, line: 64, baseType: !14, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4388, file: !3369, line: 65, baseType: !14, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4388, file: !3369, line: 66, baseType: !14, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4388, file: !3369, line: 68, baseType: !3384, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4388, file: !3369, line: 70, baseType: !4404, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4388, file: !3369, line: 72, baseType: !22, size: 32, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4388, file: !3369, line: 73, baseType: !22, size: 32, offset: 928)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4388, file: !3369, line: 74, baseType: !3391, size: 64, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4388, file: !3369, line: 77, baseType: !92, size: 16, offset: 1024)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4388, file: !3369, line: 78, baseType: !23, size: 8, offset: 1040)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4388, file: !3369, line: 79, baseType: !3395, size: 8, offset: 1048)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4388, file: !3369, line: 81, baseType: !3399, size: 64, offset: 1088)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4388, file: !3369, line: 89, baseType: !3402, size: 64, offset: 1152)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4388, file: !3369, line: 91, baseType: !3404, size: 64, offset: 1216)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4388, file: !3369, line: 92, baseType: !3407, size: 64, offset: 1280)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4388, file: !3369, line: 93, baseType: !4404, size: 64, offset: 1344)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4388, file: !3369, line: 94, baseType: !16, size: 64, offset: 1408)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4388, file: !3369, line: 95, baseType: !164, size: 64, offset: 1472)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4388, file: !3369, line: 96, baseType: !22, size: 32, offset: 1536)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4388, file: !3369, line: 98, baseType: !3414, size: 160, offset: 1568)
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3536, line: 63, baseType: !3391)
!4421 = !{!4422, !4423, !4424, !4425}
!4422 = !DILocalVariable(name: "fp", arg: 1, scope: !4382, file: !4383, line: 28, type: !4386)
!4423 = !DILocalVariable(name: "offset", arg: 2, scope: !4382, file: !4383, line: 28, type: !4420)
!4424 = !DILocalVariable(name: "whence", arg: 3, scope: !4382, file: !4383, line: 28, type: !22)
!4425 = !DILocalVariable(name: "pos", scope: !4426, file: !4383, line: 117, type: !4420)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !4383, line: 113, column: 5)
!4427 = distinct !DILexicalBlock(scope: !4382, file: !4383, line: 52, column: 7)
!4428 = !DILocation(line: 28, column: 15, scope: !4382)
!4429 = !DILocation(line: 28, column: 25, scope: !4382)
!4430 = !DILocation(line: 28, column: 37, scope: !4382)
!4431 = !DILocation(line: 52, column: 11, scope: !4427)
!4432 = !{!4183, !715, i64 16}
!4433 = !DILocation(line: 52, column: 31, scope: !4427)
!4434 = !{!4183, !715, i64 8}
!4435 = !DILocation(line: 52, column: 24, scope: !4427)
!4436 = !DILocation(line: 53, column: 7, scope: !4427)
!4437 = !DILocation(line: 53, column: 14, scope: !4427)
!4438 = !{!4183, !715, i64 40}
!4439 = !DILocation(line: 53, column: 35, scope: !4427)
!4440 = !{!4183, !715, i64 32}
!4441 = !DILocation(line: 53, column: 28, scope: !4427)
!4442 = !DILocation(line: 54, column: 7, scope: !4427)
!4443 = !DILocation(line: 54, column: 14, scope: !4427)
!4444 = !{!4183, !715, i64 72}
!4445 = !DILocation(line: 54, column: 28, scope: !4427)
!4446 = !DILocation(line: 52, column: 7, scope: !4382)
!4447 = !DILocation(line: 117, column: 26, scope: !4426)
!4448 = !DILocation(line: 117, column: 19, scope: !4426)
!4449 = !DILocation(line: 117, column: 13, scope: !4426)
!4450 = !DILocation(line: 118, column: 15, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4426, file: !4383, line: 118, column: 11)
!4452 = !DILocation(line: 118, column: 11, scope: !4426)
!4453 = !DILocation(line: 129, column: 11, scope: !4426)
!4454 = !DILocation(line: 129, column: 18, scope: !4426)
!4455 = !DILocation(line: 130, column: 11, scope: !4426)
!4456 = !DILocation(line: 130, column: 19, scope: !4426)
!4457 = !{!4183, !2691, i64 144}
!4458 = !DILocation(line: 161, column: 7, scope: !4426)
!4459 = !DILocation(line: 163, column: 10, scope: !4382)
!4460 = !DILocation(line: 163, column: 3, scope: !4382)
!4461 = !DILocation(line: 0, scope: !4382)
!4462 = !DILocation(line: 164, column: 1, scope: !4382)
