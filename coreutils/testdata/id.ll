; ModuleID = 'coreutils-8.30/src/id.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [USER]\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print user and group information for the specified USER,\0Aor (when USER omitted) for the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [521 x i8] c"  -a             ignore, for compatibility with other versions\0A  -Z, --context  print only the security context of the process\0A  -g, --group    print only the effective group ID\0A  -G, --groups   print all group IDs\0A  -n, --name     print a name instead of a number, for -ugG\0A  -r, --real     print the real ID instead of the effective ID, with -ugG\0A  -u, --user     print only the effective user ID\0A  -z, --zero     delimit entries with NUL characters, not whitespace;\0A                   not permitted in default format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.39 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@use_name = internal unnamed_addr global i1 false, align 1, !dbg !71
@.str.14 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@euid = internal global i32 0, align 4, !dbg !18
@.str.23 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@ruid = internal unnamed_addr global i32 0, align 4, !dbg !11
@.str.25 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@egid = internal unnamed_addr global i32 0, align 4, !dbg !24
@.str.26 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@rgid = internal unnamed_addr global i32 0, align 4, !dbg !20
@.str.27 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !35
@ok = internal unnamed_addr global i1 false, align 1, !dbg !72
@.str.53 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !47
@.str.56 = private unnamed_addr constant [9 x i8] c" euid=%s\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c" egid=%s\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf.3 = internal global [21 x i8] zeroinitializer, align 16, !dbg !73
@.str.2.4 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.18 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !83
@.str.61 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !88
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !93
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !96
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !103
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !110
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !154
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !171
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !173
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@.str.3.101 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.103 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.104 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.108 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.121 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.126 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !193
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.146 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !766 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !771, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %0, metadata !770, metadata !DIExpression()), !dbg !794
  %3 = icmp eq i32 %0, 0, !dbg !795
  br i1 %3, label %9, label %4, !dbg !796

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !797, !tbaa !799
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !797
  %7 = load i8*, i8** @program_name, align 8, !dbg !797, !tbaa !799
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !797
  br label %63, !dbg !797

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !803
  %11 = load i8*, i8** @program_name, align 8, !dbg !803, !tbaa !799
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !803
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !804
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !799
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !804
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !805
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !805, !tbaa !799
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !805
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !806
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !806, !tbaa !799
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !806
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !807
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !799
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !807
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !808
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !808, !tbaa !799
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !808
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #10, !dbg !809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !790
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !810
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !779, metadata !DIExpression()) #10, !dbg !811
  br label %30, !dbg !812

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !779, metadata !DIExpression()) #10, !dbg !811
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #14, !dbg !812
  %34 = icmp eq i32 %33, 0, !dbg !812
  br i1 %34, label %40, label %35, !dbg !813

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !814
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !779, metadata !DIExpression()) #10, !dbg !811
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !815
  %38 = load i8*, i8** %37, align 8, !dbg !815, !tbaa !816
  %39 = icmp eq i8* %38, null, !dbg !818
  br i1 %39, label %40, label %30, !dbg !819, !llvm.loop !820

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !779, metadata !DIExpression()) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !779, metadata !DIExpression()) #10, !dbg !811
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !823
  %43 = load i8*, i8** %42, align 8, !dbg !823, !tbaa !825
  %44 = icmp eq i8* %43, null, !dbg !826
  %45 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !827
  call void @llvm.dbg.value(metadata i8* %45, metadata !778, metadata !DIExpression()) #10, !dbg !828
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !829
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !829
  %48 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !830
  call void @llvm.dbg.value(metadata i8* %48, metadata !786, metadata !DIExpression()) #10, !dbg !831
  %49 = icmp eq i8* %48, null, !dbg !832
  br i1 %49, label %56, label %50, !dbg !834

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #14, !dbg !835
  %52 = icmp eq i32 %51, 0, !dbg !835
  br i1 %52, label %56, label %53, !dbg !836

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !837
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !837
  br label %56, !dbg !839

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !840
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !840
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !841
  %60 = icmp eq i8* %45, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), !dbg !841
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !841
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #10, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #10, !dbg !842
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !843
  unreachable, !dbg !843
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !844 {
  %3 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !848, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i8** %1, metadata !849, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i32 0, metadata !851, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i8 0, metadata !852, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i8 0, metadata !853, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* null, metadata !854, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8 0, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 0, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 0, metadata !857, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8 0, metadata !858, metadata !DIExpression()), !dbg !887
  %4 = load i8*, i8** %1, align 8, !dbg !888, !tbaa !799
  tail call void @set_program_name(i8* %4) #10, !dbg !889
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !890
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !891
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !892
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !893
  br label %9, !dbg !894

; <label>:9:                                      ; preds = %29, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %29 ]
  %11 = phi i8 [ 0, %2 ], [ %16, %29 ]
  %12 = phi i8 [ 0, %2 ], [ %21, %29 ]
  %13 = phi i8 [ 0, %2 ], [ %25, %29 ]
  %14 = phi i8 [ 0, %2 ], [ %28, %29 ]
  br label %15, !dbg !895

; <label>:15:                                     ; preds = %29, %9
  %16 = phi i8 [ %11, %9 ], [ 1, %29 ]
  %17 = phi i8 [ %12, %9 ], [ %21, %29 ]
  %18 = phi i8 [ %13, %9 ], [ %25, %29 ]
  %19 = phi i8 [ %14, %9 ], [ %28, %29 ]
  br label %20, !dbg !895

; <label>:20:                                     ; preds = %29, %15
  %21 = phi i8 [ %17, %15 ], [ 1, %29 ]
  %22 = phi i8 [ %18, %15 ], [ %25, %29 ]
  %23 = phi i8 [ %19, %15 ], [ %28, %29 ]
  br label %24, !dbg !895

; <label>:24:                                     ; preds = %29, %20
  %25 = phi i8 [ %22, %20 ], [ 1, %29 ]
  %26 = phi i8 [ %23, %20 ], [ %28, %29 ]
  br label %27, !dbg !895

; <label>:27:                                     ; preds = %29, %24
  %28 = phi i8 [ %26, %24 ], [ 1, %29 ]
  br label %29, !dbg !895

; <label>:29:                                     ; preds = %31, %27
  call void @llvm.dbg.value(metadata i8 %28, metadata !853, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %25, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %21, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %16, metadata !858, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i8 %10, metadata !857, metadata !DIExpression()), !dbg !886
  %30 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !895
  call void @llvm.dbg.value(metadata i32 %30, metadata !850, metadata !DIExpression()), !dbg !896
  switch i32 %30, label %39 [
    i32 -1, label %40
    i32 97, label %31
    i32 90, label %32
    i32 103, label %20
    i32 110, label %34
    i32 114, label %9
    i32 117, label %15
    i32 122, label %27
    i32 71, label %24
    i32 -130, label %35
    i32 -131, label %36
  ], !dbg !894, !llvm.loop !897

; <label>:31:                                     ; preds = %29, %34
  br label %29, !dbg !882, !llvm.loop !897

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !899
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %33) #10, !dbg !899
  unreachable, !dbg !899

; <label>:34:                                     ; preds = %29
  store i1 true, i1* @use_name, align 1
  br label %31, !dbg !903

; <label>:35:                                     ; preds = %29
  tail call void @usage(i32 0) #16, !dbg !904
  unreachable, !dbg !904

; <label>:36:                                     ; preds = %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !799
  %38 = load i8*, i8** @Version, align 8, !dbg !905, !tbaa !799
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !905
  tail call void @exit(i32 0) #15, !dbg !905
  unreachable, !dbg !905

; <label>:39:                                     ; preds = %29
  tail call void @usage(i32 1) #16, !dbg !906
  unreachable, !dbg !906

; <label>:40:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i8 %10, metadata !857, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8 %16, metadata !858, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i8 %21, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %25, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %28, metadata !853, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %10, metadata !857, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8 %16, metadata !858, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i8 %21, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %25, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %28, metadata !853, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %10, metadata !857, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8 %16, metadata !858, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i8 %21, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %25, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %28, metadata !853, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %10, metadata !857, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8 %16, metadata !858, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i8 %21, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %25, metadata !855, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %28, metadata !853, metadata !DIExpression()), !dbg !882
  %41 = load i32, i32* @optind, align 4, !dbg !907, !tbaa !908
  %42 = sub nsw i32 %0, %41, !dbg !910
  %43 = icmp ugt i32 %42, 1, !dbg !911
  br i1 %43, label %44, label %52, !dbg !913

; <label>:44:                                     ; preds = %40
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !914
  %46 = load i32, i32* @optind, align 4, !dbg !916, !tbaa !908
  %47 = add nsw i32 %46, 1, !dbg !917
  %48 = sext i32 %47 to i64, !dbg !918
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !918
  %50 = load i8*, i8** %49, align 8, !dbg !918, !tbaa !799
  %51 = tail call i8* @quote(i8* %50) #10, !dbg !919
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %45, i8* %51) #10, !dbg !920
  tail call void @usage(i32 1) #16, !dbg !921
  unreachable, !dbg !921

; <label>:52:                                     ; preds = %40
  %53 = icmp ne i8 %16, 0, !dbg !922
  %54 = icmp ne i8 %21, 0, !dbg !924
  %55 = add nuw nsw i8 %21, %16, !dbg !925
  %56 = icmp ne i8 %25, 0, !dbg !926
  %57 = add nuw nsw i8 %55, %25, !dbg !927
  %58 = icmp ugt i8 %57, 1, !dbg !928
  br i1 %58, label %59, label %61, !dbg !929

; <label>:59:                                     ; preds = %52
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !930
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %60) #10, !dbg !930
  unreachable, !dbg !930

; <label>:61:                                     ; preds = %52
  %62 = or i8 %21, %16, !dbg !931
  %63 = icmp eq i8 %62, 0, !dbg !931
  %64 = xor i1 %56, true, !dbg !932
  %65 = and i1 %63, %64, !dbg !931
  br i1 %65, label %66, label %76, !dbg !933

; <label>:66:                                     ; preds = %61
  %67 = icmp eq i8 %10, 0, !dbg !935
  br i1 %67, label %68, label %70, !dbg !936

; <label>:68:                                     ; preds = %66
  %69 = load i1, i1* @use_name, align 1
  br i1 %69, label %70, label %72, !dbg !937

; <label>:70:                                     ; preds = %66, %68
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !938
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %71) #10, !dbg !938
  unreachable, !dbg !938

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i8 %28, 0, !dbg !939
  br i1 %73, label %76, label %74, !dbg !941

; <label>:74:                                     ; preds = %72
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !942
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %75) #10, !dbg !942
  unreachable, !dbg !942

; <label>:76:                                     ; preds = %61, %72
  %77 = icmp eq i32 %42, 1, !dbg !943
  br i1 %77, label %78, label %94, !dbg !944

; <label>:78:                                     ; preds = %76
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !861, metadata !DIExpression()), !dbg !945
  %79 = sext i32 %41 to i64, !dbg !946
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !946
  %81 = load i8*, i8** %80, align 8, !dbg !946, !tbaa !799
  call void @llvm.dbg.value(metadata i8* %81, metadata !874, metadata !DIExpression()), !dbg !947
  %82 = load i8, i8* %81, align 1, !dbg !948, !tbaa !950
  %83 = icmp eq i8 %82, 0, !dbg !948
  br i1 %83, label %91, label %84, !dbg !951

; <label>:84:                                     ; preds = %78
  %85 = tail call i8* @parse_user_spec(i8* %81, i32* nonnull @euid, i32* null, i8** null, i8** null) #10, !dbg !952
  %86 = icmp eq i8* %85, null, !dbg !955
  br i1 %86, label %87, label %91, !dbg !956

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* @euid, align 4, !dbg !957, !tbaa !908
  %89 = tail call %struct.passwd* @getpwuid(i32 %88) #10, !dbg !959
  call void @llvm.dbg.value(metadata %struct.passwd* %89, metadata !861, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata %struct.passwd* %89, metadata !861, metadata !DIExpression()), !dbg !945
  %90 = icmp eq %struct.passwd* %89, null, !dbg !960
  br i1 %90, label %91, label %144, !dbg !962

; <label>:91:                                     ; preds = %78, %84, %87
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !963
  %93 = tail call i8* @quote(i8* %81) #10, !dbg !963
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %92, i8* %93) #10, !dbg !963
  unreachable, !dbg !963

; <label>:94:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i32 -1, metadata !875, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 -1, metadata !877, metadata !DIExpression()), !dbg !965
  br i1 %53, label %95, label %97, !dbg !966

; <label>:95:                                     ; preds = %94
  %96 = icmp eq i8 %10, 0, !dbg !967
  br i1 %96, label %100, label %117, !dbg !969

; <label>:97:                                     ; preds = %94
  %98 = or i8 %25, %21, !dbg !970
  %99 = icmp eq i8 %98, 0, !dbg !970
  br i1 %99, label %100, label %114, !dbg !970

; <label>:100:                                    ; preds = %97, %95
  %101 = tail call i32* @__errno_location() #17, !dbg !971
  store i32 0, i32* %101, align 4, !dbg !973, !tbaa !908
  %102 = tail call i32 @geteuid() #10, !dbg !974
  store i32 %102, i32* @euid, align 4, !dbg !975, !tbaa !908
  %103 = icmp eq i32 %102, -1, !dbg !976
  br i1 %103, label %104, label %109, !dbg !978

; <label>:104:                                    ; preds = %100
  %105 = load i32, i32* %101, align 4, !dbg !979, !tbaa !908
  %106 = icmp eq i32 %105, 0, !dbg !979
  br i1 %106, label %109, label %107, !dbg !980

; <label>:107:                                    ; preds = %104
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !981
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %105, i8* %108) #10, !dbg !981
  unreachable, !dbg !981

; <label>:109:                                    ; preds = %104, %100
  br i1 %53, label %110, label %114, !dbg !982

; <label>:110:                                    ; preds = %109
  %111 = icmp eq i8 %10, 0, !dbg !983
  br i1 %111, label %112, label %117, !dbg !985

; <label>:112:                                    ; preds = %110
  %113 = load i32, i32* @ruid, align 4, !dbg !986
  br label %152, !dbg !985

; <label>:114:                                    ; preds = %97, %109
  br i1 %54, label %115, label %117, !dbg !989

; <label>:115:                                    ; preds = %114
  %116 = tail call i32* @__errno_location() #17, !dbg !990
  br label %127, !dbg !989

; <label>:117:                                    ; preds = %95, %114, %110
  %118 = tail call i32* @__errno_location() #17, !dbg !993
  store i32 0, i32* %118, align 4, !dbg !995, !tbaa !908
  %119 = tail call i32 @getuid() #10, !dbg !996
  store i32 %119, i32* @ruid, align 4, !dbg !997, !tbaa !908
  %120 = icmp eq i32 %119, -1, !dbg !998
  br i1 %120, label %121, label %126, !dbg !1000

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %118, align 4, !dbg !1001, !tbaa !908
  %123 = icmp eq i32 %122, 0, !dbg !1001
  br i1 %123, label %126, label %124, !dbg !1002

; <label>:124:                                    ; preds = %121
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !1003
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %122, i8* %125) #10, !dbg !1003
  unreachable, !dbg !1003

; <label>:126:                                    ; preds = %121, %117
  br i1 %53, label %152, label %127, !dbg !1004

; <label>:127:                                    ; preds = %115, %126
  %128 = phi i32* [ %116, %115 ], [ %118, %126 ], !dbg !990
  store i32 0, i32* %128, align 4, !dbg !1005, !tbaa !908
  %129 = tail call i32 @getegid() #10, !dbg !1006
  store i32 %129, i32* @egid, align 4, !dbg !1007, !tbaa !908
  %130 = icmp eq i32 %129, -1, !dbg !1008
  br i1 %130, label %131, label %136, !dbg !1010

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %128, align 4, !dbg !1011, !tbaa !908
  %133 = icmp eq i32 %132, 0, !dbg !1011
  br i1 %133, label %136, label %134, !dbg !1012

; <label>:134:                                    ; preds = %131
  %135 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1013
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %132, i8* %135) #10, !dbg !1013
  unreachable, !dbg !1013

; <label>:136:                                    ; preds = %131, %127
  store i32 0, i32* %128, align 4, !dbg !1014, !tbaa !908
  %137 = tail call i32 @getgid() #10, !dbg !1015
  store i32 %137, i32* @rgid, align 4, !dbg !1016, !tbaa !908
  %138 = icmp eq i32 %137, -1, !dbg !1017
  br i1 %138, label %139, label %177, !dbg !1019

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %128, align 4, !dbg !1020, !tbaa !908
  %141 = icmp eq i32 %140, 0, !dbg !1020
  br i1 %141, label %177, label %142, !dbg !1021

; <label>:142:                                    ; preds = %139
  %143 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1022
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %140, i8* %143) #10, !dbg !1022
  unreachable, !dbg !1022

; <label>:144:                                    ; preds = %87
  %145 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i64 0, i32 0, !dbg !1023
  %146 = load i8*, i8** %145, align 8, !dbg !1023, !tbaa !1024
  %147 = tail call noalias i8* @xstrdup(i8* %146) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %147, metadata !854, metadata !DIExpression()), !dbg !883
  %148 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i64 0, i32 2, !dbg !1027
  %149 = load i32, i32* %148, align 8, !dbg !1027, !tbaa !1028
  store i32 %149, i32* @euid, align 4, !dbg !1029, !tbaa !908
  store i32 %149, i32* @ruid, align 4, !dbg !1030, !tbaa !908
  %150 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i64 0, i32 3, !dbg !1031
  %151 = load i32, i32* %150, align 4, !dbg !1031, !tbaa !1032
  store i32 %151, i32* @egid, align 4, !dbg !1033, !tbaa !908
  store i32 %151, i32* @rgid, align 4, !dbg !1034, !tbaa !908
  call void @llvm.dbg.value(metadata i8* %147, metadata !854, metadata !DIExpression()), !dbg !883
  br i1 %53, label %152, label %177, !dbg !1035

; <label>:152:                                    ; preds = %112, %126, %144
  %153 = phi i32 [ %113, %112 ], [ %119, %126 ], [ %149, %144 ], !dbg !986
  %154 = icmp eq i8 %10, 0, !dbg !1036
  %155 = load i32, i32* @euid, align 4, !dbg !1037
  %156 = select i1 %154, i32 %155, i32 %153, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %156, metadata !1038, metadata !DIExpression()) #10, !dbg !1045
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1043, metadata !DIExpression()) #10, !dbg !1047
  %157 = load i1, i1* @use_name, align 1
  br i1 %157, label %160, label %158, !dbg !1048

; <label>:158:                                    ; preds = %152
  %159 = zext i32 %156 to i64, !dbg !1049
  br label %170, !dbg !1048

; <label>:160:                                    ; preds = %152
  %161 = tail call %struct.passwd* @getpwuid(i32 %156) #10, !dbg !1051
  call void @llvm.dbg.value(metadata %struct.passwd* %161, metadata !1043, metadata !DIExpression()) #10, !dbg !1047
  %162 = icmp eq %struct.passwd* %161, null, !dbg !1054
  br i1 %162, label %163, label %167, !dbg !1056

; <label>:163:                                    ; preds = %160
  %164 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1057
  %165 = zext i32 %156 to i64, !dbg !1059
  %166 = tail call i8* @umaxtostr(i64 %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1061
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %164, i8* %166) #10, !dbg !1062
  store i1 true, i1* @ok, align 1
  br label %170, !dbg !1063

; <label>:167:                                    ; preds = %160
  call void @llvm.dbg.value(metadata %struct.passwd* %161, metadata !1043, metadata !DIExpression()) #10, !dbg !1047
  %168 = getelementptr inbounds %struct.passwd, %struct.passwd* %161, i64 0, i32 0, !dbg !1064
  %169 = load i8*, i8** %168, align 8, !dbg !1064, !tbaa !1024
  br label %173, !dbg !1065

; <label>:170:                                    ; preds = %163, %158
  %171 = phi i64 [ %159, %158 ], [ %165, %163 ], !dbg !1049
  %172 = tail call i8* @umaxtostr(i64 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1066
  br label %173, !dbg !1065

; <label>:173:                                    ; preds = %167, %170
  %174 = phi i8* [ %169, %167 ], [ %172, %170 ], !dbg !1065
  call void @llvm.dbg.value(metadata i8* %174, metadata !1044, metadata !DIExpression()) #10, !dbg !1067
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1068, !tbaa !799
  %176 = tail call i32 @fputs_unlocked(i8* %174, %struct._IO_FILE* %175) #10, !dbg !1068
  br label %324, !dbg !1069

; <label>:177:                                    ; preds = %139, %136, %144
  %178 = phi i32 [ %151, %144 ], [ %137, %136 ], [ -1, %139 ]
  %179 = phi i8* [ %147, %144 ], [ null, %136 ], [ null, %139 ]
  br i1 %54, label %180, label %187, !dbg !1070

; <label>:180:                                    ; preds = %177
  %181 = icmp eq i8 %10, 0, !dbg !1071
  %182 = load i32, i32* @egid, align 4, !dbg !1075
  %183 = select i1 %181, i32 %182, i32 %178, !dbg !1071
  %184 = load i1, i1* @use_name, align 1
  %185 = tail call zeroext i1 @print_group(i32 %183, i1 zeroext %184) #10, !dbg !1076
  br i1 %185, label %324, label %186, !dbg !1077

; <label>:186:                                    ; preds = %180
  store i1 true, i1* @ok, align 1
  br label %324, !dbg !1078

; <label>:187:                                    ; preds = %177
  br i1 %56, label %188, label %196, !dbg !1079

; <label>:188:                                    ; preds = %187
  %189 = load i32, i32* @ruid, align 4, !dbg !1080, !tbaa !908
  %190 = load i32, i32* @egid, align 4, !dbg !1084, !tbaa !908
  %191 = load i1, i1* @use_name, align 1
  %192 = shl nuw nsw i8 %28, 5, !dbg !1085
  %193 = xor i8 %192, 32, !dbg !1085
  %194 = tail call zeroext i1 @print_group_list(i8* %179, i32 %189, i32 %178, i32 %190, i1 zeroext %191, i8 signext %193) #10, !dbg !1086
  br i1 %194, label %324, label %195, !dbg !1087

; <label>:195:                                    ; preds = %188
  store i1 true, i1* @ok, align 1
  br label %324, !dbg !1088

; <label>:196:                                    ; preds = %187
  call void @llvm.dbg.value(metadata i8* %147, metadata !1089, metadata !DIExpression()) #10, !dbg !1107
  %197 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1111
  call void @llvm.dbg.value(metadata i32* @ruid, metadata !43, metadata !DIExpression()) #10, !dbg !1112
  %198 = load i32, i32* @ruid, align 4, !dbg !1114, !tbaa !908
  %199 = zext i32 %198 to i64, !dbg !1114
  %200 = tail call i8* @umaxtostr(i64 %199, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1115
  %201 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %197, i8* %200) #10, !dbg !1111
  %202 = load i32, i32* @ruid, align 4, !dbg !1116, !tbaa !908
  %203 = tail call %struct.passwd* @getpwuid(i32 %202) #10, !dbg !1117
  call void @llvm.dbg.value(metadata %struct.passwd* %203, metadata !1092, metadata !DIExpression()) #10, !dbg !1118
  %204 = icmp eq %struct.passwd* %203, null, !dbg !1119
  br i1 %204, label %209, label %205, !dbg !1121

; <label>:205:                                    ; preds = %196
  %206 = getelementptr inbounds %struct.passwd, %struct.passwd* %203, i64 0, i32 0, !dbg !1122
  %207 = load i8*, i8** %206, align 8, !dbg !1122, !tbaa !1024
  %208 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %207) #10, !dbg !1122
  br label %209, !dbg !1122

; <label>:209:                                    ; preds = %205, %196
  %210 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1123
  call void @llvm.dbg.value(metadata i32* @rgid, metadata !55, metadata !DIExpression()) #10, !dbg !1124
  %211 = load i32, i32* @rgid, align 4, !dbg !1126, !tbaa !908
  %212 = zext i32 %211 to i64, !dbg !1126
  %213 = tail call i8* @umaxtostr(i64 %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1127
  %214 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %210, i8* %213) #10, !dbg !1123
  %215 = load i32, i32* @rgid, align 4, !dbg !1128, !tbaa !908
  %216 = tail call %struct.group* @getgrgid(i32 %215) #10, !dbg !1129
  call void @llvm.dbg.value(metadata %struct.group* %216, metadata !1093, metadata !DIExpression()) #10, !dbg !1130
  %217 = icmp eq %struct.group* %216, null, !dbg !1131
  br i1 %217, label %222, label %218, !dbg !1133

; <label>:218:                                    ; preds = %209
  %219 = getelementptr inbounds %struct.group, %struct.group* %216, i64 0, i32 0, !dbg !1134
  %220 = load i8*, i8** %219, align 8, !dbg !1134, !tbaa !1135
  %221 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %220) #10, !dbg !1134
  br label %222, !dbg !1134

; <label>:222:                                    ; preds = %218, %209
  %223 = load i32, i32* @euid, align 4, !dbg !1137, !tbaa !908
  %224 = load i32, i32* @ruid, align 4, !dbg !1139, !tbaa !908
  %225 = icmp eq i32 %223, %224, !dbg !1140
  br i1 %225, label %239, label %226, !dbg !1141

; <label>:226:                                    ; preds = %222
  %227 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i32* @euid, metadata !43, metadata !DIExpression()) #10, !dbg !1144
  %228 = load i32, i32* @euid, align 4, !dbg !1146, !tbaa !908
  %229 = zext i32 %228 to i64, !dbg !1146
  %230 = tail call i8* @umaxtostr(i64 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1147
  %231 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %227, i8* %230) #10, !dbg !1142
  %232 = load i32, i32* @euid, align 4, !dbg !1148, !tbaa !908
  %233 = tail call %struct.passwd* @getpwuid(i32 %232) #10, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.passwd* %233, metadata !1092, metadata !DIExpression()) #10, !dbg !1118
  %234 = icmp eq %struct.passwd* %233, null, !dbg !1150
  br i1 %234, label %239, label %235, !dbg !1152

; <label>:235:                                    ; preds = %226
  %236 = getelementptr inbounds %struct.passwd, %struct.passwd* %233, i64 0, i32 0, !dbg !1153
  %237 = load i8*, i8** %236, align 8, !dbg !1153, !tbaa !1024
  %238 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %237) #10, !dbg !1153
  br label %239, !dbg !1153

; <label>:239:                                    ; preds = %235, %226, %222
  %240 = phi %struct.passwd* [ %233, %235 ], [ null, %226 ], [ %203, %222 ], !dbg !1154
  call void @llvm.dbg.value(metadata %struct.passwd* %240, metadata !1092, metadata !DIExpression()) #10, !dbg !1118
  %241 = load i32, i32* @egid, align 4, !dbg !1155, !tbaa !908
  %242 = load i32, i32* @rgid, align 4, !dbg !1157, !tbaa !908
  %243 = icmp eq i32 %241, %242, !dbg !1158
  br i1 %243, label %257, label %244, !dbg !1159

; <label>:244:                                    ; preds = %239
  %245 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1160
  call void @llvm.dbg.value(metadata i32* @egid, metadata !55, metadata !DIExpression()) #10, !dbg !1162
  %246 = load i32, i32* @egid, align 4, !dbg !1164, !tbaa !908
  %247 = zext i32 %246 to i64, !dbg !1164
  %248 = tail call i8* @umaxtostr(i64 %247, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1165
  %249 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %245, i8* %248) #10, !dbg !1160
  %250 = load i32, i32* @egid, align 4, !dbg !1166, !tbaa !908
  %251 = tail call %struct.group* @getgrgid(i32 %250) #10, !dbg !1167
  call void @llvm.dbg.value(metadata %struct.group* %251, metadata !1093, metadata !DIExpression()) #10, !dbg !1130
  %252 = icmp eq %struct.group* %251, null, !dbg !1168
  br i1 %252, label %257, label %253, !dbg !1170

; <label>:253:                                    ; preds = %244
  %254 = getelementptr inbounds %struct.group, %struct.group* %251, i64 0, i32 0, !dbg !1171
  %255 = load i8*, i8** %254, align 8, !dbg !1171, !tbaa !1135
  %256 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %255) #10, !dbg !1171
  br label %257, !dbg !1171

; <label>:257:                                    ; preds = %253, %244, %239
  %258 = bitcast i32** %3 to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %258) #10, !dbg !1172
  %259 = icmp ne i8* %179, null, !dbg !1173
  br i1 %259, label %260, label %265, !dbg !1175

; <label>:260:                                    ; preds = %257
  %261 = icmp eq %struct.passwd* %240, null, !dbg !1176
  br i1 %261, label %267, label %262, !dbg !1176

; <label>:262:                                    ; preds = %260
  %263 = getelementptr inbounds %struct.passwd, %struct.passwd* %240, i64 0, i32 3, !dbg !1177
  %264 = load i32, i32* %263, align 4, !dbg !1177, !tbaa !1032
  br label %267, !dbg !1176

; <label>:265:                                    ; preds = %257
  %266 = load i32, i32* @egid, align 4, !dbg !1178, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %266, metadata !1103, metadata !DIExpression()) #10, !dbg !1179
  br label %267

; <label>:267:                                    ; preds = %265, %262, %260
  %268 = phi i32 [ %266, %265 ], [ %264, %262 ], [ -1, %260 ], !dbg !1180
  call void @llvm.dbg.value(metadata i32 %268, metadata !1103, metadata !DIExpression()) #10, !dbg !1179
  call void @llvm.dbg.value(metadata i32** %3, metadata !1101, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1181
  %269 = call i32 @xgetgroups(i8* %179, i32 %268, i32** nonnull %3) #10, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %269, metadata !1104, metadata !DIExpression()) #10, !dbg !1183
  %270 = icmp slt i32 %269, 0, !dbg !1184
  br i1 %270, label %271, label %280, !dbg !1186

; <label>:271:                                    ; preds = %267
  %272 = tail call i32* @__errno_location() #17, !dbg !1187
  %273 = load i32, i32* %272, align 4, !dbg !1187, !tbaa !908
  br i1 %259, label %274, label %277, !dbg !1190

; <label>:274:                                    ; preds = %271
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1191
  %276 = call i8* @quote(i8* nonnull %179) #10, !dbg !1192
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %273, i8* %275, i8* %276) #10, !dbg !1193
  br label %279, !dbg !1193

; <label>:277:                                    ; preds = %271
  %278 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1194
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %273, i8* %278) #10, !dbg !1195
  br label %279

; <label>:279:                                    ; preds = %277, %274
  store i1 true, i1* @ok, align 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %258) #10, !dbg !1196
  br label %324

; <label>:280:                                    ; preds = %267
  %281 = icmp eq i32 %269, 0, !dbg !1197
  br i1 %281, label %287, label %282, !dbg !1199

; <label>:282:                                    ; preds = %280
  %283 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1200
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1200, !tbaa !799
  %285 = call i32 @fputs_unlocked(i8* %283, %struct._IO_FILE* %284) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()) #10, !dbg !1201
  %286 = zext i32 %269 to i64
  br label %290, !dbg !1202

; <label>:287:                                    ; preds = %321, %280
  %288 = bitcast i32** %3 to i8**, !dbg !1206
  %289 = load i8*, i8** %288, align 8, !dbg !1206, !tbaa !799
  call void @llvm.dbg.value(metadata i32** %3, metadata !1101, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1181
  call void @free(i8* %289) #10, !dbg !1207
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %258) #10, !dbg !1196
  br label %324, !dbg !1208

; <label>:290:                                    ; preds = %321, %282
  %291 = phi i64 [ 0, %282 ], [ %322, %321 ]
  call void @llvm.dbg.value(metadata i64 %291, metadata !1105, metadata !DIExpression()) #10, !dbg !1201
  %292 = icmp eq i64 %291, 0, !dbg !1202
  br i1 %292, label %304, label %293, !dbg !1209

; <label>:293:                                    ; preds = %290
  call void @llvm.dbg.value(metadata i32 44, metadata !1210, metadata !DIExpression()) #10, !dbg !1216
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1218, !tbaa !799
  %295 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %294, i64 0, i32 5, !dbg !1218
  %296 = load i8*, i8** %295, align 8, !dbg !1218, !tbaa !1219
  %297 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %294, i64 0, i32 6, !dbg !1218
  %298 = load i8*, i8** %297, align 8, !dbg !1218, !tbaa !1223
  %299 = icmp ult i8* %296, %298, !dbg !1218
  br i1 %299, label %302, label %300, !dbg !1218, !prof !1224

; <label>:300:                                    ; preds = %293
  %301 = call i32 @__overflow(%struct._IO_FILE* %294, i32 44) #10, !dbg !1218
  br label %304, !dbg !1218

; <label>:302:                                    ; preds = %293
  %303 = getelementptr inbounds i8, i8* %296, i64 1, !dbg !1218
  store i8* %303, i8** %295, align 8, !dbg !1218, !tbaa !1219
  store i8 44, i8* %296, align 1, !dbg !1218, !tbaa !950
  br label %304, !dbg !1218

; <label>:304:                                    ; preds = %302, %300, %290
  %305 = load i32*, i32** %3, align 8, !dbg !1225, !tbaa !799
  call void @llvm.dbg.value(metadata i32* %305, metadata !1101, metadata !DIExpression()) #10, !dbg !1181
  %306 = getelementptr inbounds i32, i32* %305, i64 %291, !dbg !1225
  call void @llvm.dbg.value(metadata i32* %306, metadata !55, metadata !DIExpression()) #10, !dbg !1226
  %307 = load i32, i32* %306, align 4, !dbg !1228, !tbaa !908
  %308 = zext i32 %307 to i64, !dbg !1228
  %309 = call i8* @umaxtostr(i64 %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1229
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1225, !tbaa !799
  %311 = call i32 @fputs_unlocked(i8* %309, %struct._IO_FILE* %310) #10, !dbg !1225
  %312 = load i32*, i32** %3, align 8, !dbg !1230, !tbaa !799
  call void @llvm.dbg.value(metadata i32* %312, metadata !1101, metadata !DIExpression()) #10, !dbg !1181
  %313 = getelementptr inbounds i32, i32* %312, i64 %291, !dbg !1230
  %314 = load i32, i32* %313, align 4, !dbg !1230, !tbaa !908
  %315 = call %struct.group* @getgrgid(i32 %314) #10, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.group* %315, metadata !1093, metadata !DIExpression()) #10, !dbg !1130
  %316 = icmp eq %struct.group* %315, null, !dbg !1232
  br i1 %316, label %321, label %317, !dbg !1234

; <label>:317:                                    ; preds = %304
  %318 = getelementptr inbounds %struct.group, %struct.group* %315, i64 0, i32 0, !dbg !1235
  %319 = load i8*, i8** %318, align 8, !dbg !1235, !tbaa !1135
  %320 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %319) #10, !dbg !1235
  br label %321, !dbg !1235

; <label>:321:                                    ; preds = %317, %304
  %322 = add nuw nsw i64 %291, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i32 undef, metadata !1105, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1201
  %323 = icmp eq i64 %322, %286, !dbg !1237
  br i1 %323, label %287, label %290, !dbg !1238, !llvm.loop !1239

; <label>:324:                                    ; preds = %287, %279, %186, %180, %188, %195, %173
  %325 = icmp eq i8 %28, 0, !dbg !1242
  %326 = select i1 %325, i32 10, i32 0, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %326, metadata !1210, metadata !DIExpression()) #10, !dbg !1243
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !799
  %328 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %327, i64 0, i32 5, !dbg !1245
  %329 = load i8*, i8** %328, align 8, !dbg !1245, !tbaa !1219
  %330 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %327, i64 0, i32 6, !dbg !1245
  %331 = load i8*, i8** %330, align 8, !dbg !1245, !tbaa !1223
  %332 = icmp ult i8* %329, %331, !dbg !1245
  br i1 %332, label %335, label %333, !dbg !1245, !prof !1224

; <label>:333:                                    ; preds = %324
  %334 = call i32 @__overflow(%struct._IO_FILE* %327, i32 %326) #10, !dbg !1245
  br label %338, !dbg !1245

; <label>:335:                                    ; preds = %324
  %336 = trunc i32 %326 to i8, !dbg !1245
  %337 = getelementptr inbounds i8, i8* %329, i64 1, !dbg !1245
  store i8* %337, i8** %328, align 8, !dbg !1245, !tbaa !1219
  store i8 %336, i8* %329, align 1, !dbg !1245, !tbaa !950
  br label %338, !dbg !1245

; <label>:338:                                    ; preds = %333, %335
  %339 = load i1, i1* @ok, align 1
  %340 = zext i1 %339 to i32, !dbg !1246
  ret i32 %340, !dbg !1247
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

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #7 !dbg !1248 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1252, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %1, metadata !1253, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %2, metadata !1254, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i32 %3, metadata !1255, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i1 %4, metadata !1256, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %5, metadata !1257, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 1, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1259, metadata !DIExpression()), !dbg !1282
  %8 = icmp ne i8* %0, null, !dbg !1283
  br i1 %8, label %9, label %13, !dbg !1285

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !1286
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !1259, metadata !DIExpression()), !dbg !1282
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1288
  %12 = zext i1 %11 to i8, !dbg !1290
  br label %13, !dbg !1290

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1291
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !1291
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !1259, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %14, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i32 %2, metadata !1292, metadata !DIExpression()) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i1 %4, metadata !1297, metadata !DIExpression()) #10, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1298, metadata !DIExpression()) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()) #10, !dbg !1313
  br i1 %4, label %21, label %16, !dbg !1314

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1315
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1317
  call void @llvm.dbg.value(metadata i8* %27, metadata !1307, metadata !DIExpression()) #10, !dbg !1318
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1319, !tbaa !799
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !1319
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.group* %22, metadata !1298, metadata !DIExpression()) #10, !dbg !1312
  %23 = icmp eq %struct.group* %22, null, !dbg !1323
  br i1 %23, label %24, label %30, !dbg !1325

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %2, metadata !1292, metadata !DIExpression()) #10, !dbg !1308
  %26 = zext i32 %2 to i64, !dbg !1328
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !1329
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()) #10, !dbg !1313
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1317
  call void @llvm.dbg.value(metadata i8* %27, metadata !1307, metadata !DIExpression()) #10, !dbg !1318
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1319, !tbaa !799
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !1319
  br label %35, !dbg !1330

; <label>:30:                                     ; preds = %21
  call void @llvm.dbg.value(metadata %struct.group* %22, metadata !1298, metadata !DIExpression()) #10, !dbg !1312
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !1331
  %32 = load i8*, i8** %31, align 8, !dbg !1331, !tbaa !1135
  call void @llvm.dbg.value(metadata i8* %27, metadata !1307, metadata !DIExpression()) #10, !dbg !1318
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1319, !tbaa !799
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !1319
  br label %35, !dbg !1330

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  call void @llvm.dbg.value(metadata i8 %36, metadata !1258, metadata !DIExpression()), !dbg !1281
  %37 = icmp eq i32 %3, %2, !dbg !1332
  br i1 %37, label %70, label %38, !dbg !1334

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1335, !tbaa !799
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1335
  %41 = load i8*, i8** %40, align 8, !dbg !1335, !tbaa !1219
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1335
  %43 = load i8*, i8** %42, align 8, !dbg !1335, !tbaa !1223
  %44 = icmp ult i8* %41, %43, !dbg !1335
  br i1 %44, label %48, label %45, !dbg !1335, !prof !1224

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !1341
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !1335
  br label %50, !dbg !1335

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1335
  store i8* %49, i8** %40, align 8, !dbg !1335, !tbaa !1219
  store i8 %5, i8* %41, align 1, !dbg !1335, !tbaa !950
  br label %50, !dbg !1335

; <label>:50:                                     ; preds = %45, %48
  call void @llvm.dbg.value(metadata i32 %3, metadata !1292, metadata !DIExpression()) #10, !dbg !1342
  call void @llvm.dbg.value(metadata i1 %4, metadata !1297, metadata !DIExpression()) #10, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1298, metadata !DIExpression()) #10, !dbg !1346
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()) #10, !dbg !1347
  br i1 %4, label %56, label %51, !dbg !1348

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !1349
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %62, metadata !1307, metadata !DIExpression()) #10, !dbg !1352
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !799
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !1353
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !1354
  call void @llvm.dbg.value(metadata %struct.group* %57, metadata !1298, metadata !DIExpression()) #10, !dbg !1346
  %58 = icmp eq %struct.group* %57, null, !dbg !1355
  br i1 %58, label %59, label %65, !dbg !1356

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %3, metadata !1292, metadata !DIExpression()) #10, !dbg !1342
  %61 = zext i32 %3 to i64, !dbg !1358
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !1359
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()) #10, !dbg !1347
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %62, metadata !1307, metadata !DIExpression()) #10, !dbg !1352
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !799
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !1353
  br label %70, !dbg !1360

; <label>:65:                                     ; preds = %56
  call void @llvm.dbg.value(metadata %struct.group* %57, metadata !1298, metadata !DIExpression()) #10, !dbg !1346
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !1361
  %67 = load i8*, i8** %66, align 8, !dbg !1361, !tbaa !1135
  call void @llvm.dbg.value(metadata i8* %62, metadata !1307, metadata !DIExpression()) #10, !dbg !1352
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !799
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !1353
  br label %70, !dbg !1360

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ], !dbg !1362
  call void @llvm.dbg.value(metadata i8 %71, metadata !1258, metadata !DIExpression()), !dbg !1281
  %72 = bitcast i32** %7 to i8*, !dbg !1363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1363
  %73 = icmp eq %struct.passwd* %15, null, !dbg !1364
  br i1 %73, label %77, label %74, !dbg !1364

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1365
  %76 = load i32, i32* %75, align 4, !dbg !1365, !tbaa !1032
  br label %77, !dbg !1364

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !1364
  call void @llvm.dbg.value(metadata i32** %7, metadata !1270, metadata !DIExpression(DW_OP_deref)), !dbg !1366
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %79, metadata !1272, metadata !DIExpression()), !dbg !1368
  %80 = icmp slt i32 %79, 0, !dbg !1369
  br i1 %80, label %86, label %81, !dbg !1371

; <label>:81:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, metadata !1273, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %71, metadata !1258, metadata !DIExpression()), !dbg !1281
  %82 = icmp eq i32 %79, 0, !dbg !1373
  br i1 %82, label %142, label %83, !dbg !1375

; <label>:83:                                     ; preds = %81
  %84 = zext i8 %5 to i32
  %85 = zext i32 %79 to i64
  br label %94, !dbg !1375

; <label>:86:                                     ; preds = %77
  %87 = tail call i32* @__errno_location() #17, !dbg !1376
  %88 = load i32, i32* %87, align 4, !dbg !1376, !tbaa !908
  br i1 %8, label %89, label %92, !dbg !1380

; <label>:89:                                     ; preds = %86
  %90 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !1381
  %91 = call i8* @quote(i8* nonnull %0) #10, !dbg !1383
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %90, i8* %91) #10, !dbg !1384
  br label %141, !dbg !1385

; <label>:92:                                     ; preds = %86
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.18, i64 0, i64 0), i32 5) #10, !dbg !1386
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %93) #10, !dbg !1387
  br label %141

; <label>:94:                                     ; preds = %137, %83
  %95 = phi i64 [ 0, %83 ], [ %139, %137 ]
  %96 = phi i8 [ %71, %83 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !1273, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %96, metadata !1258, metadata !DIExpression()), !dbg !1281
  %97 = load i32*, i32** %7, align 8, !dbg !1388, !tbaa !799
  call void @llvm.dbg.value(metadata i32* %97, metadata !1270, metadata !DIExpression()), !dbg !1366
  %98 = getelementptr inbounds i32, i32* %97, i64 %95, !dbg !1388
  %99 = load i32, i32* %98, align 4, !dbg !1388, !tbaa !908
  %100 = icmp eq i32 %99, %2, !dbg !1390
  %101 = icmp eq i32 %99, %3, !dbg !1391
  %102 = or i1 %100, %101, !dbg !1392
  br i1 %102, label %137, label %103, !dbg !1392

; <label>:103:                                    ; preds = %94
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1393, !tbaa !799
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1393
  %106 = load i8*, i8** %105, align 8, !dbg !1393, !tbaa !1219
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1393
  %108 = load i8*, i8** %107, align 8, !dbg !1393, !tbaa !1223
  %109 = icmp ult i8* %106, %108, !dbg !1393
  br i1 %109, label %112, label %110, !dbg !1393, !prof !1224

; <label>:110:                                    ; preds = %103
  %111 = call i32 @__overflow(%struct._IO_FILE* %104, i32 %84) #10, !dbg !1393
  br label %114, !dbg !1393

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1393
  store i8* %113, i8** %105, align 8, !dbg !1393, !tbaa !1219
  store i8 %5, i8* %106, align 1, !dbg !1393, !tbaa !950
  br label %114, !dbg !1393

; <label>:114:                                    ; preds = %110, %112
  %115 = load i32*, i32** %7, align 8, !dbg !1396, !tbaa !799
  call void @llvm.dbg.value(metadata i32* %115, metadata !1270, metadata !DIExpression()), !dbg !1366
  %116 = getelementptr inbounds i32, i32* %115, i64 %95, !dbg !1396
  %117 = load i32, i32* %116, align 4, !dbg !1396, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %117, metadata !1292, metadata !DIExpression()) #10, !dbg !1398
  call void @llvm.dbg.value(metadata i1 %4, metadata !1297, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1298, metadata !DIExpression()) #10, !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()) #10, !dbg !1402
  br i1 %4, label %123, label %118, !dbg !1403

; <label>:118:                                    ; preds = %114
  %119 = zext i32 %117 to i64, !dbg !1404
  %120 = call i8* @umaxtostr(i64 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %129, metadata !1307, metadata !DIExpression()) #10, !dbg !1407
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1408, !tbaa !799
  %122 = call i32 @fputs_unlocked(i8* %120, %struct._IO_FILE* %121) #10, !dbg !1408
  br label %137

; <label>:123:                                    ; preds = %114
  %124 = call %struct.group* @getgrgid(i32 %117) #10, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.group* %124, metadata !1298, metadata !DIExpression()) #10, !dbg !1401
  %125 = icmp eq %struct.group* %124, null, !dbg !1410
  br i1 %125, label %126, label %132, !dbg !1411

; <label>:126:                                    ; preds = %123
  %127 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %117, metadata !1292, metadata !DIExpression()) #10, !dbg !1398
  %128 = zext i32 %117 to i64, !dbg !1413
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127, i64 %128) #10, !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()) #10, !dbg !1402
  %129 = call i8* @umaxtostr(i64 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %129, metadata !1307, metadata !DIExpression()) #10, !dbg !1407
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1408, !tbaa !799
  %131 = call i32 @fputs_unlocked(i8* %129, %struct._IO_FILE* %130) #10, !dbg !1408
  br label %137, !dbg !1415

; <label>:132:                                    ; preds = %123
  call void @llvm.dbg.value(metadata %struct.group* %124, metadata !1298, metadata !DIExpression()) #10, !dbg !1401
  %133 = getelementptr inbounds %struct.group, %struct.group* %124, i64 0, i32 0, !dbg !1416
  %134 = load i8*, i8** %133, align 8, !dbg !1416, !tbaa !1135
  call void @llvm.dbg.value(metadata i8* %129, metadata !1307, metadata !DIExpression()) #10, !dbg !1407
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1408, !tbaa !799
  %136 = call i32 @fputs_unlocked(i8* %134, %struct._IO_FILE* %135) #10, !dbg !1408
  br label %137, !dbg !1415

; <label>:137:                                    ; preds = %132, %118, %126, %94
  %138 = phi i8 [ %96, %94 ], [ 0, %126 ], [ %96, %118 ], [ %96, %132 ], !dbg !1362
  %139 = add nuw nsw i64 %95, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i32 undef, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %138, metadata !1258, metadata !DIExpression()), !dbg !1281
  %140 = icmp eq i64 %139, %85, !dbg !1373
  br i1 %140, label %142, label %94, !dbg !1375, !llvm.loop !1418

; <label>:141:                                    ; preds = %92, %89
  call void @llvm.dbg.value(metadata i8 undef, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1420
  br label %148

; <label>:142:                                    ; preds = %137, %81
  %143 = phi i8 [ %71, %81 ], [ %138, %137 ], !dbg !1421
  call void @llvm.dbg.value(metadata i8 %143, metadata !1258, metadata !DIExpression()), !dbg !1281
  %144 = bitcast i32** %7 to i8**, !dbg !1422
  %145 = load i8*, i8** %144, align 8, !dbg !1422, !tbaa !799
  call void @llvm.dbg.value(metadata i32** %7, metadata !1270, metadata !DIExpression(DW_OP_deref)), !dbg !1366
  call void @free(i8* %145) #10, !dbg !1423
  call void @llvm.dbg.value(metadata i8 undef, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !1420
  %146 = and i8 %143, 1, !dbg !1424
  %147 = icmp ne i8 %146, 0, !dbg !1424
  br label %148

; <label>:148:                                    ; preds = %141, %142
  %149 = phi i1 [ %147, %142 ], [ false, %141 ]
  ret i1 %149, !dbg !1425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #7 !dbg !1293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i1 %1, metadata !1297, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1298, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()), !dbg !1429
  br i1 %1, label %5, label %3, !dbg !1430

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1431
  br label %14, !dbg !1430

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1298, metadata !DIExpression()), !dbg !1428
  %7 = icmp eq %struct.group* %6, null, !dbg !1434
  br i1 %7, label %8, label %11, !dbg !1435

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1426
  %10 = zext i32 %0 to i64, !dbg !1437
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()), !dbg !1429
  br label %14, !dbg !1439

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1298, metadata !DIExpression()), !dbg !1428
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1440
  %13 = load i8*, i8** %12, align 8, !dbg !1440, !tbaa !1135
  br label %18, !dbg !1441

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1431
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1298, metadata !DIExpression()), !dbg !1428
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1442
  br label %18, !dbg !1441

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1441
  call void @llvm.dbg.value(metadata i8* %20, metadata !1307, metadata !DIExpression()), !dbg !1443
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1444, !tbaa !799
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1444
  ret i1 %19, !dbg !1445
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i8* %0, i8** @file_name, align 8, !dbg !1450, !tbaa !799
  ret void, !dbg !1451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1452 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1458, !tbaa !1459
  ret void, !dbg !1461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1462 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1469, !tbaa !799
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1470
  %3 = icmp eq i32 %2, 0, !dbg !1471
  br i1 %3, label %22, label %4, !dbg !1472

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1473, !tbaa !1459, !range !1474
  %6 = icmp eq i8 %5, 0, !dbg !1473
  br i1 %6, label %11, label %7, !dbg !1475

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1476
  %9 = load i32, i32* %8, align 4, !dbg !1476, !tbaa !908
  %10 = icmp eq i32 %9, 32, !dbg !1477
  br i1 %10, label %22, label %11, !dbg !1478

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %12, metadata !1466, metadata !DIExpression()), !dbg !1480
  %13 = load i8*, i8** @file_name, align 8, !dbg !1481, !tbaa !799
  %14 = icmp eq i8* %13, null, !dbg !1481
  %15 = tail call i32* @__errno_location() #17, !dbg !1483
  %16 = load i32, i32* %15, align 4, !dbg !1483, !tbaa !908
  br i1 %14, label %19, label %17, !dbg !1484

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1485
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.65, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1486
  br label %20, !dbg !1486

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.66, i64 0, i64 0), i8* %12) #10, !dbg !1487
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1488, !tbaa !908
  tail call void @_exit(i32 %21) #15, !dbg !1489
  unreachable, !dbg !1489

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1490, !tbaa !799
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1492
  %25 = icmp eq i32 %24, 0, !dbg !1493
  br i1 %25, label %28, label %26, !dbg !1494

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1495, !tbaa !908
  tail call void @_exit(i32 %27) #15, !dbg !1496
  unreachable, !dbg !1496

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1497
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1498 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1503, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8* %1, metadata !1504, metadata !DIExpression()), !dbg !1507
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %3, metadata !1505, metadata !DIExpression()), !dbg !1509
  store i8 0, i8* %3, align 1, !dbg !1510, !tbaa !950
  br label %4, !dbg !1511

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1512
  call void @llvm.dbg.value(metadata i8* %6, metadata !1505, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %5, metadata !1503, metadata !DIExpression()), !dbg !1506
  %7 = urem i64 %5, 10, !dbg !1515
  %8 = trunc i64 %7 to i8, !dbg !1516
  %9 = or i8 %8, 48, !dbg !1516
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %10, metadata !1505, metadata !DIExpression()), !dbg !1509
  store i8 %9, i8* %10, align 1, !dbg !1518, !tbaa !950
  %11 = udiv i64 %5, 10, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %11, metadata !1503, metadata !DIExpression()), !dbg !1506
  %12 = icmp ugt i64 %5, 9, !dbg !1520
  br i1 %12, label %4, label %13, !dbg !1521, !llvm.loop !1522

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1505, metadata !DIExpression()), !dbg !1509
  ret i8* %10, !dbg !1525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  %2 = icmp eq i8* %0, null, !dbg !1532
  br i1 %2, label %3, label %6, !dbg !1534

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1535, !tbaa !799
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1537
  tail call void @abort() #15, !dbg !1538
  unreachable, !dbg !1538

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %7, metadata !1529, metadata !DIExpression()), !dbg !1540
  %8 = icmp eq i8* %7, null, !dbg !1541
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1542
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %10, metadata !1530, metadata !DIExpression()), !dbg !1544
  %11 = ptrtoint i8* %10 to i64, !dbg !1545
  %12 = ptrtoint i8* %0 to i64, !dbg !1545
  %13 = sub i64 %11, %12, !dbg !1545
  %14 = icmp sgt i64 %13, 6, !dbg !1547
  br i1 %14, label %15, label %24, !dbg !1548

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1549
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #14, !dbg !1550
  %18 = icmp eq i32 %17, 0, !dbg !1551
  br i1 %18, label %19, label %24, !dbg !1552

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1528, metadata !DIExpression()), !dbg !1531
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #14, !dbg !1553
  %21 = icmp eq i32 %20, 0, !dbg !1556
  br i1 %21, label %22, label %24, !dbg !1557

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %23, metadata !1528, metadata !DIExpression()), !dbg !1531
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1560, !tbaa !799
  br label %24, !dbg !1561

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1528, metadata !DIExpression()), !dbg !1531
  store i8* %25, i8** @program_name, align 8, !dbg !1562, !tbaa !799
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1563, !tbaa !799
  ret void, !dbg !1564
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1565 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1570, metadata !DIExpression()), !dbg !1573
  %2 = tail call i32* @__errno_location() #17, !dbg !1574
  %3 = load i32, i32* %2, align 4, !dbg !1574, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %3, metadata !1571, metadata !DIExpression()), !dbg !1575
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1576
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1576
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1576
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1577
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1572, metadata !DIExpression()), !dbg !1578
  store i32 %3, i32* %2, align 4, !dbg !1579, !tbaa !908
  ret %struct.quoting_options* %8, !dbg !1580
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1581 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1587, metadata !DIExpression()), !dbg !1588
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1589
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1589
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1590
  %5 = load i32, i32* %4, align 8, !dbg !1590, !tbaa !1591
  ret i32 %5, !dbg !1593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1594 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1601
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1602
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1602
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1603
  store i32 %1, i32* %5, align 8, !dbg !1604, !tbaa !1591
  ret void, !dbg !1605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1606 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1610, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %1, metadata !1611, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %2, metadata !1612, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %1, metadata !1613, metadata !DIExpression()), !dbg !1621
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1622
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1622
  %6 = lshr i8 %1, 5, !dbg !1623
  %7 = zext i8 %6 to i64, !dbg !1623
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1624
  call void @llvm.dbg.value(metadata i32* %8, metadata !1614, metadata !DIExpression()), !dbg !1625
  %9 = and i8 %1, 31, !dbg !1626
  %10 = zext i8 %9 to i32, !dbg !1626
  call void @llvm.dbg.value(metadata i32 %10, metadata !1616, metadata !DIExpression()), !dbg !1627
  %11 = load i32, i32* %8, align 4, !dbg !1628, !tbaa !908
  %12 = lshr i32 %11, %10, !dbg !1629
  %13 = and i32 %12, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %13, metadata !1617, metadata !DIExpression()), !dbg !1631
  %14 = and i32 %2, 1, !dbg !1632
  %15 = xor i32 %13, %14, !dbg !1633
  %16 = shl i32 %15, %10, !dbg !1634
  %17 = xor i32 %16, %11, !dbg !1635
  store i32 %17, i32* %8, align 4, !dbg !1635, !tbaa !908
  ret i32 %13, !dbg !1636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1637 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()), !dbg !1645
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1646
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1641, metadata !DIExpression()), !dbg !1644
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1649
  %6 = load i32, i32* %5, align 4, !dbg !1649, !tbaa !1650
  call void @llvm.dbg.value(metadata i32 %6, metadata !1643, metadata !DIExpression()), !dbg !1651
  store i32 %1, i32* %5, align 4, !dbg !1652, !tbaa !1650
  ret i32 %6, !dbg !1653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1654 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()), !dbg !1663
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1664
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()), !dbg !1661
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1667
  store i32 10, i32* %6, align 8, !dbg !1668, !tbaa !1591
  %7 = icmp ne i8* %1, null, !dbg !1669
  %8 = icmp ne i8* %2, null, !dbg !1671
  %9 = and i1 %7, %8, !dbg !1672
  br i1 %9, label %11, label %10, !dbg !1672

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1673
  unreachable, !dbg !1673

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1674
  store i8* %1, i8** %12, align 8, !dbg !1675, !tbaa !1676
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1677
  store i8* %2, i8** %13, align 8, !dbg !1678, !tbaa !1679
  ret void, !dbg !1680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1681 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1685, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %1, metadata !1686, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %2, metadata !1687, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %3, metadata !1688, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1689, metadata !DIExpression()), !dbg !1697
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1698
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1690, metadata !DIExpression()), !dbg !1699
  %8 = tail call i32* @__errno_location() #17, !dbg !1700
  %9 = load i32, i32* %8, align 4, !dbg !1700, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %9, metadata !1691, metadata !DIExpression()), !dbg !1701
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1702
  %11 = load i32, i32* %10, align 8, !dbg !1702, !tbaa !1591
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1703
  %13 = load i32, i32* %12, align 4, !dbg !1703, !tbaa !1650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1704
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1705
  %16 = load i8*, i8** %15, align 8, !dbg !1705, !tbaa !1676
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1706
  %18 = load i8*, i8** %17, align 8, !dbg !1706, !tbaa !1679
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %19, metadata !1692, metadata !DIExpression()), !dbg !1708
  store i32 %9, i32* %8, align 4, !dbg !1709, !tbaa !908
  ret i64 %19, !dbg !1710
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1711 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1717, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %1, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %2, metadata !1719, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %3, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %4, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %5, metadata !1722, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i32* %6, metadata !1723, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* %7, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %8, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 0, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 0, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8* null, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1794
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1795
  %14 = icmp eq i64 %13, 1, !dbg !1796
  %15 = lshr i32 %5, 1, !dbg !1797
  %16 = trunc i32 %15 to i8, !dbg !1797
  %17 = and i8 %16, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i8 %17, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 1, metadata !1736, metadata !DIExpression()), !dbg !1800
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1801

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1791
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1792
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1793
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1794
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1802
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1798
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1799
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1800
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %39, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %38, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %37, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %36, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %35, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %34, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %33, metadata !1730, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* %32, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %31, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 0, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* %30, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %29, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %28, metadata !1721, metadata !DIExpression()), !dbg !1785
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
  ], !dbg !1804

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %36, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 5, metadata !1721, metadata !DIExpression()), !dbg !1785
  br label %93, !dbg !1805

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 5, metadata !1721, metadata !DIExpression()), !dbg !1785
  %43 = and i8 %36, 1, !dbg !1806
  %44 = icmp eq i8 %43, 0, !dbg !1806
  br i1 %44, label %45, label %93, !dbg !1805

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1808
  br i1 %46, label %93, label %47, !dbg !1811

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1808, !tbaa !950
  br label %93, !dbg !1808

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %28), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %49, metadata !1724, metadata !DIExpression()), !dbg !1788
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %28), !dbg !1816
  call void @llvm.dbg.value(metadata i8* %50, metadata !1725, metadata !DIExpression()), !dbg !1789
  br label %51, !dbg !1817

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %52, metadata !1724, metadata !DIExpression()), !dbg !1788
  %54 = and i8 %36, 1, !dbg !1818
  %55 = icmp eq i8 %54, 0, !dbg !1818
  br i1 %55, label %56, label %71, !dbg !1820

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 0, metadata !1727, metadata !DIExpression()), !dbg !1790
  %57 = load i8, i8* %52, align 1, !dbg !1821, !tbaa !950
  %58 = icmp eq i8 %57, 0, !dbg !1824
  br i1 %58, label %71, label %59, !dbg !1824

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %62, metadata !1727, metadata !DIExpression()), !dbg !1790
  %63 = icmp ult i64 %62, %40, !dbg !1825
  br i1 %63, label %64, label %66, !dbg !1828

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1825
  store i8 %60, i8* %65, align 1, !dbg !1825, !tbaa !950
  br label %66, !dbg !1825

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1828
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1829
  call void @llvm.dbg.value(metadata i8* %68, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %67, metadata !1727, metadata !DIExpression()), !dbg !1790
  %69 = load i8, i8* %68, align 1, !dbg !1821, !tbaa !950
  %70 = icmp eq i8 %69, 0, !dbg !1824
  br i1 %70, label %71, label %59, !dbg !1824, !llvm.loop !1830

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1790
  call void @llvm.dbg.value(metadata i64 %72, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 1, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %53, metadata !1729, metadata !DIExpression()), !dbg !1792
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %73, metadata !1730, metadata !DIExpression()), !dbg !1793
  br label %93, !dbg !1833

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1731, metadata !DIExpression()), !dbg !1794
  br label %75, !dbg !1834

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1802
  call void @llvm.dbg.value(metadata i8 %76, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1797
  br label %77, !dbg !1835

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1794
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1802
  call void @llvm.dbg.value(metadata i8 %79, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %78, metadata !1731, metadata !DIExpression()), !dbg !1794
  %80 = and i8 %79, 1, !dbg !1836
  %81 = icmp eq i8 %80, 0, !dbg !1836
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1838
  br label %83, !dbg !1838

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1839
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1797
  call void @llvm.dbg.value(metadata i8 %85, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %84, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  %86 = and i8 %85, 1, !dbg !1840
  %87 = icmp eq i8 %86, 0, !dbg !1840
  br i1 %87, label %88, label %93, !dbg !1842

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1843
  br i1 %89, label %93, label %90, !dbg !1846

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1843, !tbaa !950
  br label %93, !dbg !1843

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1797
  br label %93, !dbg !1847

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1848
  unreachable, !dbg !1848

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1790
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], !dbg !1802
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1802
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1802
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %101, metadata !1733, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %99, metadata !1730, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %97, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 0, metadata !1726, metadata !DIExpression()), !dbg !1850
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
  br label %121, !dbg !1851

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1852
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1790
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1791
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1798
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1799
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1800
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %122, metadata !1726, metadata !DIExpression()), !dbg !1850
  %130 = icmp eq i64 %125, -1, !dbg !1853
  br i1 %130, label %131, label %135, !dbg !1854

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1855
  %133 = load i8, i8* %132, align 1, !dbg !1855, !tbaa !950
  %134 = icmp eq i8 %133, 0, !dbg !1856
  br i1 %134, label %617, label %137, !dbg !1857

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1858
  br i1 %136, label %617, label %137, !dbg !1857

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1861
  br i1 %107, label %138, label %153, !dbg !1862

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1864
  %140 = and i1 %108, %130, !dbg !1865
  br i1 %140, label %141, label %143, !dbg !1865

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %142, metadata !1720, metadata !DIExpression()), !dbg !1784
  br label %143, !dbg !1867

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1720, metadata !DIExpression()), !dbg !1784
  %145 = icmp ugt i64 %139, %144, !dbg !1868
  br i1 %145, label %153, label %146, !dbg !1869

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1870
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1871
  %149 = icmp ne i32 %148, 0, !dbg !1872
  %150 = or i1 %149, %110, !dbg !1873
  %151 = xor i1 %149, true, !dbg !1873
  %152 = zext i1 %151 to i8, !dbg !1873
  br i1 %150, label %153, label %661, !dbg !1873

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1874
  call void @llvm.dbg.value(metadata i8 %155, metadata !1742, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %154, metadata !1720, metadata !DIExpression()), !dbg !1784
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1875
  %157 = load i8, i8* %156, align 1, !dbg !1875, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %157, metadata !1737, metadata !DIExpression()), !dbg !1876
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
  ], !dbg !1877

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1878

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1879

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1743, metadata !DIExpression()), !dbg !1860
  %161 = and i8 %126, 1, !dbg !1883
  %162 = icmp eq i8 %161, 0, !dbg !1883
  %163 = and i1 %114, %162, !dbg !1883
  br i1 %163, label %164, label %180, !dbg !1883

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1885
  br i1 %165, label %166, label %168, !dbg !1889

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1885
  store i8 39, i8* %167, align 1, !dbg !1885, !tbaa !950
  br label %168, !dbg !1885

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %169, metadata !1727, metadata !DIExpression()), !dbg !1790
  %170 = icmp ult i64 %169, %129, !dbg !1890
  br i1 %170, label %171, label %173, !dbg !1893

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1890
  store i8 36, i8* %172, align 1, !dbg !1890, !tbaa !950
  br label %173, !dbg !1890

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %174, metadata !1727, metadata !DIExpression()), !dbg !1790
  %175 = icmp ult i64 %174, %129, !dbg !1894
  br i1 %175, label %176, label %178, !dbg !1897

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1894
  store i8 39, i8* %177, align 1, !dbg !1894, !tbaa !950
  br label %178, !dbg !1894

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %179, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %180, !dbg !1898

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1849
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %182, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %181, metadata !1727, metadata !DIExpression()), !dbg !1790
  %183 = icmp ult i64 %181, %129, !dbg !1899
  br i1 %183, label %184, label %186, !dbg !1902

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1899
  store i8 92, i8* %185, align 1, !dbg !1899, !tbaa !950
  br label %186, !dbg !1899

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %187, metadata !1727, metadata !DIExpression()), !dbg !1790
  br i1 %104, label %188, label %478, !dbg !1903

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1905
  %190 = icmp ult i64 %189, %154, !dbg !1906
  br i1 %190, label %191, label %467, !dbg !1907

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1908
  %193 = load i8, i8* %192, align 1, !dbg !1908, !tbaa !950
  %194 = add i8 %193, -48, !dbg !1909
  %195 = icmp ult i8 %194, 10, !dbg !1909
  br i1 %195, label %196, label %467, !dbg !1909

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1910
  br i1 %197, label %198, label %200, !dbg !1914

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1910
  store i8 48, i8* %199, align 1, !dbg !1910, !tbaa !950
  br label %200, !dbg !1910

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %201, metadata !1727, metadata !DIExpression()), !dbg !1790
  %202 = icmp ult i64 %201, %129, !dbg !1915
  br i1 %202, label %203, label %205, !dbg !1918

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1915
  store i8 48, i8* %204, align 1, !dbg !1915, !tbaa !950
  br label %205, !dbg !1915

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %206, metadata !1727, metadata !DIExpression()), !dbg !1790
  br label %467, !dbg !1919

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1920

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1921

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1922

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1924

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1926
  %213 = icmp ult i64 %212, %154, !dbg !1927
  br i1 %213, label %214, label %467, !dbg !1928

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1929
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1930
  %217 = load i8, i8* %216, align 1, !dbg !1930, !tbaa !950
  %218 = icmp eq i8 %217, 63, !dbg !1931
  br i1 %218, label %219, label %467, !dbg !1932

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1933
  %221 = load i8, i8* %220, align 1, !dbg !1933, !tbaa !950
  %222 = sext i8 %221 to i32, !dbg !1933
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
  ], !dbg !1934

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1935

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %212, metadata !1726, metadata !DIExpression()), !dbg !1850
  %225 = icmp ult i64 %123, %129, !dbg !1937
  br i1 %225, label %226, label %228, !dbg !1940

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1937
  store i8 63, i8* %227, align 1, !dbg !1937, !tbaa !950
  br label %228, !dbg !1937

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %229, metadata !1727, metadata !DIExpression()), !dbg !1790
  %230 = icmp ult i64 %229, %129, !dbg !1941
  br i1 %230, label %231, label %233, !dbg !1944

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1941
  store i8 34, i8* %232, align 1, !dbg !1941, !tbaa !950
  br label %233, !dbg !1941

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %234, metadata !1727, metadata !DIExpression()), !dbg !1790
  %235 = icmp ult i64 %234, %129, !dbg !1945
  br i1 %235, label %236, label %238, !dbg !1948

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1945
  store i8 34, i8* %237, align 1, !dbg !1945, !tbaa !950
  br label %238, !dbg !1945

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %239, metadata !1727, metadata !DIExpression()), !dbg !1790
  %240 = icmp ult i64 %239, %129, !dbg !1949
  br i1 %240, label %241, label %243, !dbg !1952

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1949
  store i8 63, i8* %242, align 1, !dbg !1949, !tbaa !950
  br label %243, !dbg !1949

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %244, metadata !1727, metadata !DIExpression()), !dbg !1790
  br label %467, !dbg !1953

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1741, metadata !DIExpression()), !dbg !1954
  br label %255, !dbg !1955

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1741, metadata !DIExpression()), !dbg !1954
  br label %255, !dbg !1956

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1741, metadata !DIExpression()), !dbg !1954
  br label %253, !dbg !1957

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1741, metadata !DIExpression()), !dbg !1954
  br label %253, !dbg !1958

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1741, metadata !DIExpression()), !dbg !1954
  br label %255, !dbg !1959

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1741, metadata !DIExpression()), !dbg !1954
  br i1 %114, label %251, label %252, !dbg !1960

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1961

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1964

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1966
  call void @llvm.dbg.value(metadata i8 %254, metadata !1741, metadata !DIExpression()), !dbg !1954
  br i1 %113, label %255, label %661, !dbg !1967

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1966
  call void @llvm.dbg.value(metadata i8 %256, metadata !1741, metadata !DIExpression()), !dbg !1954
  br i1 %103, label %524, label %478, !dbg !1969

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1970
  br i1 %258, label %259, label %264, !dbg !1972

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1973, !tbaa !950
  %261 = icmp ne i8 %260, 0, !dbg !1974
  %262 = icmp ne i64 %122, 0, !dbg !1975
  %263 = or i1 %262, %261, !dbg !1977
  br i1 %263, label %467, label %270, !dbg !1977

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1978
  %266 = icmp ne i64 %122, 0, !dbg !1975
  %267 = or i1 %266, %265, !dbg !1972
  br i1 %267, label %467, label %270, !dbg !1972

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1975
  br i1 %269, label %270, label %467, !dbg !1979

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1744, metadata !DIExpression()), !dbg !1861
  br label %271, !dbg !1980

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1966
  call void @llvm.dbg.value(metadata i8 %272, metadata !1744, metadata !DIExpression()), !dbg !1861
  br i1 %113, label %467, label %661, !dbg !1981

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 1, metadata !1744, metadata !DIExpression()), !dbg !1861
  br i1 %114, label %274, label %467, !dbg !1983

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1984

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1987
  %277 = icmp ne i64 %124, 0, !dbg !1989
  %278 = or i1 %277, %276, !dbg !1990
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1990
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %280, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %279, metadata !1728, metadata !DIExpression()), !dbg !1791
  %281 = icmp ult i64 %123, %280, !dbg !1991
  br i1 %281, label %282, label %284, !dbg !1994

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1991
  store i8 39, i8* %283, align 1, !dbg !1991, !tbaa !950
  br label %284, !dbg !1991

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %285, metadata !1727, metadata !DIExpression()), !dbg !1790
  %286 = icmp ult i64 %285, %280, !dbg !1995
  br i1 %286, label %287, label %289, !dbg !1998

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1995
  store i8 92, i8* %288, align 1, !dbg !1995, !tbaa !950
  br label %289, !dbg !1995

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %290, metadata !1727, metadata !DIExpression()), !dbg !1790
  %291 = icmp ult i64 %290, %280, !dbg !1999
  br i1 %291, label %292, label %294, !dbg !2002

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1999
  store i8 39, i8* %293, align 1, !dbg !1999, !tbaa !950
  br label %294, !dbg !1999

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %295, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %467, !dbg !2003

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2004

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1745, metadata !DIExpression()), !dbg !2005
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2006
  %299 = load i16*, i16** %298, align 8, !dbg !2006, !tbaa !799
  %300 = zext i8 %157 to i64, !dbg !2006
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2006
  %302 = load i16, i16* %301, align 2, !dbg !2006, !tbaa !2008
  %303 = lshr i16 %302, 14, !dbg !2009
  %304 = trunc i16 %303 to i8, !dbg !2009
  %305 = and i8 %304, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i8 %305, metadata !1748, metadata !DIExpression()), !dbg !2010
  br label %359, !dbg !2011

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2012
  store i64 0, i64* %10, align 8, !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !2010
  %307 = icmp eq i64 %154, -1, !dbg !2014
  br i1 %307, label %308, label %310, !dbg !2016

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %309, metadata !1720, metadata !DIExpression()), !dbg !1784
  br label %310, !dbg !2018

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2019
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  br label %312, !dbg !2020

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2021
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2022
  call void @llvm.dbg.value(metadata i8 %314, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2023
  %315 = add i64 %313, %122, !dbg !2024
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2025
  %317 = sub i64 %311, %315, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1749, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  call void @llvm.dbg.value(metadata i32* %12, metadata !1767, metadata !DIExpression(DW_OP_deref)), !dbg !2028
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %318, metadata !1770, metadata !DIExpression()), !dbg !2030
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2031

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  %320 = icmp ugt i64 %311, %315, !dbg !2032
  br i1 %320, label %321, label %344, !dbg !2034

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1745, metadata !DIExpression()), !dbg !2005
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2035
  %325 = load i8, i8* %324, align 1, !dbg !2035, !tbaa !950
  %326 = icmp eq i8 %325, 0, !dbg !2034
  br i1 %326, label %344, label %327, !dbg !2036

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %328, metadata !1745, metadata !DIExpression()), !dbg !2005
  %329 = add i64 %328, %122, !dbg !2038
  %330 = icmp ult i64 %329, %311, !dbg !2032
  br i1 %330, label %321, label %344, !dbg !2034, !llvm.loop !2039

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2040
  %333 = and i1 %116, %332, !dbg !2043
  call void @llvm.dbg.value(metadata i64 1, metadata !1771, metadata !DIExpression()), !dbg !2044
  br i1 %333, label %334, label %347, !dbg !2043

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1771, metadata !DIExpression()), !dbg !2044
  %336 = add i64 %335, %315, !dbg !2045
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2046
  %338 = load i8, i8* %337, align 1, !dbg !2046, !tbaa !950
  %339 = sext i8 %338 to i32, !dbg !2046
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2047

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %341, metadata !1771, metadata !DIExpression()), !dbg !2044
  %342 = icmp ult i64 %341, %318, !dbg !2040
  br i1 %342, label %334, label %347, !dbg !2049, !llvm.loop !2050

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %314, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %313, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %314, metadata !1748, metadata !DIExpression()), !dbg !2010
  br label %344, !dbg !2052

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %352, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2052
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2053, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %348, metadata !1767, metadata !DIExpression()), !dbg !2028
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2055
  %350 = icmp eq i32 %349, 0, !dbg !2055
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2056
  call void @llvm.dbg.value(metadata i8 %351, metadata !1748, metadata !DIExpression()), !dbg !2010
  %352 = add i64 %318, %313, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %352, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %351, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %352, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1749, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2058
  %354 = icmp eq i32 %353, 0, !dbg !2059
  br i1 %354, label %312, label %355, !dbg !2060, !llvm.loop !2061

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2063
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 2, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %94, metadata !1721, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %100, metadata !1731, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %311, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %351, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %352, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2063
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2064
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2065
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2065
  call void @llvm.dbg.value(metadata i8 %362, metadata !1748, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %361, metadata !1745, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %360, metadata !1720, metadata !DIExpression()), !dbg !1784
  %363 = and i8 %362, 1, !dbg !2066
  %364 = icmp ne i8 %363, 0, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %363, metadata !1744, metadata !DIExpression()), !dbg !1861
  %365 = icmp ult i64 %361, 2, !dbg !2067
  %366 = or i1 %364, %115, !dbg !2068
  %367 = and i1 %365, %366, !dbg !2069
  br i1 %367, label %467, label %368, !dbg !2069

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %369, metadata !1778, metadata !DIExpression()), !dbg !2071
  br label %370, !dbg !2072

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2073
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2077
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1798
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2073
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2079
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1860
  call void @llvm.dbg.value(metadata i8 %376, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %375, metadata !1742, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %374, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %373, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %372, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %371, metadata !1726, metadata !DIExpression()), !dbg !1850
  br i1 %366, label %423, label %377, !dbg !2083

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2084

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1743, metadata !DIExpression()), !dbg !1860
  %379 = and i8 %373, 1, !dbg !2087
  %380 = icmp eq i8 %379, 0, !dbg !2087
  %381 = and i1 %114, %380, !dbg !2087
  br i1 %381, label %382, label %398, !dbg !2087

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2089
  br i1 %383, label %384, label %386, !dbg !2093

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2089
  store i8 39, i8* %385, align 1, !dbg !2089, !tbaa !950
  br label %386, !dbg !2089

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %387, metadata !1727, metadata !DIExpression()), !dbg !1790
  %388 = icmp ult i64 %387, %129, !dbg !2094
  br i1 %388, label %389, label %391, !dbg !2097

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2094
  store i8 36, i8* %390, align 1, !dbg !2094, !tbaa !950
  br label %391, !dbg !2094

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %392, metadata !1727, metadata !DIExpression()), !dbg !1790
  %393 = icmp ult i64 %392, %129, !dbg !2098
  br i1 %393, label %394, label %396, !dbg !2101

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2098
  store i8 39, i8* %395, align 1, !dbg !2098, !tbaa !950
  br label %396, !dbg !2098

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %397, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %398, !dbg !2102

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1849
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %400, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %399, metadata !1727, metadata !DIExpression()), !dbg !1790
  %401 = icmp ult i64 %399, %129, !dbg !2103
  br i1 %401, label %402, label %404, !dbg !2106

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2103
  store i8 92, i8* %403, align 1, !dbg !2103, !tbaa !950
  br label %404, !dbg !2103

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %405, metadata !1727, metadata !DIExpression()), !dbg !1790
  %406 = icmp ult i64 %405, %129, !dbg !2107
  br i1 %406, label %407, label %411, !dbg !2110

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2107
  %409 = or i8 %408, 48, !dbg !2107
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2107
  store i8 %409, i8* %410, align 1, !dbg !2107, !tbaa !950
  br label %411, !dbg !2107

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %412, metadata !1727, metadata !DIExpression()), !dbg !1790
  %413 = icmp ult i64 %412, %129, !dbg !2111
  br i1 %413, label %414, label %419, !dbg !2114

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2111
  %416 = and i8 %415, 7, !dbg !2111
  %417 = or i8 %416, 48, !dbg !2111
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2111
  store i8 %417, i8* %418, align 1, !dbg !2111, !tbaa !950
  br label %419, !dbg !2111

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %420, metadata !1727, metadata !DIExpression()), !dbg !1790
  %421 = and i8 %374, 7, !dbg !2115
  %422 = or i8 %421, 48, !dbg !2116
  call void @llvm.dbg.value(metadata i8 %422, metadata !1737, metadata !DIExpression()), !dbg !1876
  br label %432, !dbg !2117

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2118
  %425 = icmp eq i8 %424, 0, !dbg !2118
  br i1 %425, label %432, label %426, !dbg !2119

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2120
  br i1 %427, label %428, label %430, !dbg !2123

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2120
  store i8 92, i8* %429, align 1, !dbg !2120, !tbaa !950
  br label %430, !dbg !2120

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %431, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1859
  br label %432, !dbg !2124

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2125
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1798
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2126
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2127
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %437, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %436, metadata !1742, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %435, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %434, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %433, metadata !1727, metadata !DIExpression()), !dbg !1790
  %438 = add i64 %371, 1, !dbg !2130
  %439 = icmp ugt i64 %369, %438, !dbg !2132
  br i1 %439, label %440, label %562, !dbg !2133

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2134
  %442 = icmp ne i8 %441, 0, !dbg !2134
  %443 = and i8 %437, 1, !dbg !2134
  %444 = icmp eq i8 %443, 0, !dbg !2134
  %445 = and i1 %442, %444, !dbg !2134
  br i1 %445, label %446, label %457, !dbg !2134

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2137
  br i1 %447, label %448, label %450, !dbg !2141

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2137
  store i8 39, i8* %449, align 1, !dbg !2137, !tbaa !950
  br label %450, !dbg !2137

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %451, metadata !1727, metadata !DIExpression()), !dbg !1790
  %452 = icmp ult i64 %451, %129, !dbg !2142
  br i1 %452, label %453, label %455, !dbg !2145

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2142
  store i8 39, i8* %454, align 1, !dbg !2142, !tbaa !950
  br label %455, !dbg !2142

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %456, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %457, !dbg !2146

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2147
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %459, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %458, metadata !1727, metadata !DIExpression()), !dbg !1790
  %460 = icmp ult i64 %458, %129, !dbg !2148
  br i1 %460, label %461, label %463, !dbg !2150

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2148
  store i8 %435, i8* %462, align 1, !dbg !2148, !tbaa !950
  br label %463, !dbg !2148

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %464, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %438, metadata !1726, metadata !DIExpression()), !dbg !1850
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2151
  %466 = load i8, i8* %465, align 1, !dbg !2151, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %466, metadata !1737, metadata !DIExpression()), !dbg !1876
  br label %370, !dbg !2152, !llvm.loop !2153

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2156
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1849
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1791
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2157
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1849
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1849
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1874
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1874
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1874
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %476, metadata !1744, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %475, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %155, metadata !1742, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %474, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %473, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %472, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %471, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %470, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %469, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %468, metadata !1726, metadata !DIExpression()), !dbg !1850
  br i1 %105, label %489, label %478, !dbg !2158

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
  br i1 %112, label %490, label %512, !dbg !2160

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2161

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
  %501 = lshr i8 %494, 5, !dbg !2162
  %502 = zext i8 %501 to i64, !dbg !2162
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2163
  %504 = load i32, i32* %503, align 4, !dbg !2163, !tbaa !908
  %505 = and i8 %494, 31, !dbg !2164
  %506 = zext i8 %505 to i32, !dbg !2164
  %507 = shl i32 1, %506, !dbg !2165
  %508 = and i32 %504, %507, !dbg !2165
  %509 = icmp eq i32 %508, 0, !dbg !2165
  %510 = icmp eq i8 %155, 0, !dbg !2166
  %511 = and i1 %510, %509, !dbg !2167
  br i1 %511, label %562, label %524, !dbg !2167

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
  %523 = icmp eq i8 %155, 0, !dbg !2166
  br i1 %523, label %562, label %524, !dbg !2168

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2169
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1849
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1791
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2157
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1798
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1799
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2170
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1874
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %532, metadata !1744, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %531, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %530, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %529, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %528, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %527, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %526, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %525, metadata !1726, metadata !DIExpression()), !dbg !1850
  br i1 %110, label %534, label %661, !dbg !2173

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1743, metadata !DIExpression()), !dbg !1860
  %535 = and i8 %529, 1, !dbg !2175
  %536 = icmp eq i8 %535, 0, !dbg !2175
  %537 = and i1 %114, %536, !dbg !2175
  br i1 %537, label %538, label %554, !dbg !2175

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2177
  br i1 %539, label %540, label %542, !dbg !2181

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2177
  store i8 39, i8* %541, align 1, !dbg !2177, !tbaa !950
  br label %542, !dbg !2177

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %543, metadata !1727, metadata !DIExpression()), !dbg !1790
  %544 = icmp ult i64 %543, %533, !dbg !2182
  br i1 %544, label %545, label %547, !dbg !2185

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2182
  store i8 36, i8* %546, align 1, !dbg !2182, !tbaa !950
  br label %547, !dbg !2182

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %548, metadata !1727, metadata !DIExpression()), !dbg !1790
  %549 = icmp ult i64 %548, %533, !dbg !2186
  br i1 %549, label %550, label %552, !dbg !2189

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2186
  store i8 39, i8* %551, align 1, !dbg !2186, !tbaa !950
  br label %552, !dbg !2186

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %553, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %554, !dbg !2190

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2147
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %556, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %555, metadata !1727, metadata !DIExpression()), !dbg !1790
  %557 = icmp ult i64 %555, %533, !dbg !2191
  br i1 %557, label %558, label %560, !dbg !2194

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2191
  store i8 92, i8* %559, align 1, !dbg !2191, !tbaa !950
  br label %560, !dbg !2191

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %561, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %572, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %571, metadata !1744, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %570, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %569, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %568, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %567, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %566, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %565, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %564, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %563, metadata !1726, metadata !DIExpression()), !dbg !1850
  br label %589, !dbg !2195

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2169
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1849
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1791
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2157
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1798
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1799
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2198
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1874
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1874
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %571, metadata !1744, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %570, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %569, metadata !1737, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %568, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %567, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %566, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %565, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %564, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %563, metadata !1726, metadata !DIExpression()), !dbg !1850
  %573 = and i8 %567, 1, !dbg !2195
  %574 = icmp ne i8 %573, 0, !dbg !2195
  %575 = and i8 %570, 1, !dbg !2195
  %576 = icmp eq i8 %575, 0, !dbg !2195
  %577 = and i1 %574, %576, !dbg !2195
  br i1 %577, label %578, label %589, !dbg !2195

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2199
  br i1 %579, label %580, label %582, !dbg !2203

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2199
  store i8 39, i8* %581, align 1, !dbg !2199, !tbaa !950
  br label %582, !dbg !2199

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %583, metadata !1727, metadata !DIExpression()), !dbg !1790
  %584 = icmp ult i64 %583, %572, !dbg !2204
  br i1 %584, label %585, label %587, !dbg !2207

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2204
  store i8 39, i8* %586, align 1, !dbg !2204, !tbaa !950
  br label %587, !dbg !2204

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %588, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1798
  br label %589, !dbg !2208

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2147
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %598, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %597, metadata !1727, metadata !DIExpression()), !dbg !1790
  %599 = icmp ult i64 %597, %590, !dbg !2209
  br i1 %599, label %600, label %602, !dbg !2212

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2209
  store i8 %592, i8* %601, align 1, !dbg !2209, !tbaa !950
  br label %602, !dbg !2209

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %603, metadata !1727, metadata !DIExpression()), !dbg !1790
  %604 = and i8 %591, 1, !dbg !2213
  %605 = icmp eq i8 %604, 0, !dbg !2213
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2215
  call void @llvm.dbg.value(metadata i8 %606, metadata !1736, metadata !DIExpression()), !dbg !1800
  br label %607, !dbg !2216

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2169
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1849
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1791
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2157
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1798
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1849
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1800
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %614, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %613, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %612, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %611, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %610, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %609, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %608, metadata !1726, metadata !DIExpression()), !dbg !1850
  %616 = add i64 %608, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %616, metadata !1726, metadata !DIExpression()), !dbg !1850
  br label %121, !dbg !2218, !llvm.loop !2219

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %125, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %125, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %126, metadata !1734, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %127, metadata !1735, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %128, metadata !1736, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  %619 = icmp eq i64 %123, 0, !dbg !2221
  %620 = and i1 %114, %619, !dbg !2223
  %621 = xor i1 %620, true, !dbg !2223
  %622 = or i1 %110, %621, !dbg !2223
  br i1 %622, label %623, label %661, !dbg !2223

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2224
  %625 = xor i1 %624, true, !dbg !2224
  %626 = and i8 %127, 1, !dbg !2226
  %627 = icmp eq i8 %626, 0, !dbg !2226
  %628 = or i1 %627, %625, !dbg !2224
  br i1 %628, label %638, label %629, !dbg !2224

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2227
  %631 = icmp eq i8 %630, 0, !dbg !2227
  br i1 %631, label %634, label %632, !dbg !2230

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %618, metadata !1720, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %95, metadata !1724, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, metadata !1725, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %124, metadata !1728, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %125, metadata !1720, metadata !DIExpression()), !dbg !1784
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2231
  br label %671, !dbg !2232

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2233
  %636 = icmp ne i64 %124, 0, !dbg !2235
  %637 = and i1 %636, %635, !dbg !2236
  br i1 %637, label %27, label %638, !dbg !2236

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %129, metadata !1718, metadata !DIExpression()), !dbg !1782
  %639 = icmp ne i8* %98, null, !dbg !2237
  %640 = and i1 %639, %110, !dbg !2239
  br i1 %640, label %641, label %656, !dbg !2239

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, metadata !1727, metadata !DIExpression()), !dbg !1790
  %642 = load i8, i8* %98, align 1, !dbg !2240, !tbaa !950
  %643 = icmp eq i8 %642, 0, !dbg !2243
  br i1 %643, label %656, label %644, !dbg !2243

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %647, metadata !1727, metadata !DIExpression()), !dbg !1790
  %648 = icmp ult i64 %647, %129, !dbg !2244
  br i1 %648, label %649, label %651, !dbg !2247

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2244
  store i8 %645, i8* %650, align 1, !dbg !2244, !tbaa !950
  br label %651, !dbg !2244

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2247
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %653, metadata !1729, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %652, metadata !1727, metadata !DIExpression()), !dbg !1790
  %654 = load i8, i8* %653, align 1, !dbg !2240, !tbaa !950
  %655 = icmp eq i8 %654, 0, !dbg !2243
  br i1 %655, label %656, label %644, !dbg !2243, !llvm.loop !2249

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1790
  call void @llvm.dbg.value(metadata i64 %657, metadata !1727, metadata !DIExpression()), !dbg !1790
  %658 = icmp ult i64 %657, %129, !dbg !2251
  br i1 %658, label %659, label %671, !dbg !2253

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2254
  store i8 0, i8* %660, align 1, !dbg !2255, !tbaa !950
  br label %671, !dbg !2254

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1718, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %663, metadata !1720, metadata !DIExpression()), !dbg !1784
  %665 = icmp ne i32 %662, 2, !dbg !2256
  %666 = icmp eq i8 %102, 0, !dbg !2258
  %667 = or i1 %665, %666, !dbg !2259
  call void @llvm.dbg.value(metadata i32 4, metadata !1721, metadata !DIExpression()), !dbg !1785
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %668, metadata !1721, metadata !DIExpression()), !dbg !1785
  %669 = and i32 %5, -3, !dbg !2260
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2261
  br label %671, !dbg !2262

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2263
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2264 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2273
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2274
  call void @llvm.dbg.value(metadata i8* %3, metadata !2270, metadata !DIExpression()), !dbg !2275
  %4 = icmp eq i8* %3, %0, !dbg !2276
  br i1 %4, label %5, label %71, !dbg !2278

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %6, metadata !2271, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %6, metadata !2281, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* null, metadata !2287, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 85, metadata !2288, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 84, metadata !2289, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 70, metadata !2290, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 45, metadata !2291, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8 56, metadata !2292, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 0, metadata !2295, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2296, metadata !DIExpression()), !dbg !2309
  %7 = load i8, i8* %6, align 1, !dbg !2310, !tbaa !950
  %8 = and i8 %7, -33, !dbg !2310
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2310

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2312, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* null, metadata !2317, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 84, metadata !2318, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 70, metadata !2319, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 45, metadata !2320, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 56, metadata !2321, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2338
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2339
  %11 = load i8, i8* %10, align 1, !dbg !2339, !tbaa !950
  %12 = and i8 %11, -33, !dbg !2339
  %13 = icmp eq i8 %12, 84, !dbg !2339
  br i1 %13, label %14, label %68, !dbg !2339

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2341, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* null, metadata !2346, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 70, metadata !2347, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 45, metadata !2348, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 56, metadata !2349, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2352, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2365
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2366
  %16 = load i8, i8* %15, align 1, !dbg !2366, !tbaa !950
  %17 = and i8 %16, -33, !dbg !2366
  %18 = icmp eq i8 %17, 70, !dbg !2366
  br i1 %18, label %19, label %68, !dbg !2366

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* null, metadata !2373, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 45, metadata !2374, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 56, metadata !2375, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2376, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2390
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2391
  %21 = load i8, i8* %20, align 1, !dbg !2391, !tbaa !950
  %22 = icmp eq i8 %21, 45, !dbg !2391
  br i1 %22, label %23, label %68, !dbg !2393

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2394, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* null, metadata !2399, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 56, metadata !2400, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2402, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2414
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2415
  %25 = load i8, i8* %24, align 1, !dbg !2415, !tbaa !950
  %26 = icmp eq i8 %25, 56, !dbg !2415
  br i1 %26, label %27, label %68, !dbg !2417

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2418, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* null, metadata !2423, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !2424, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2436
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2437
  %29 = load i8, i8* %28, align 1, !dbg !2437, !tbaa !950
  %30 = icmp eq i8 %29, 0, !dbg !2437
  br i1 %30, label %31, label %68, !dbg !2439

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2440, !tbaa !950
  %33 = icmp eq i8 %32, 96, !dbg !2441
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !2440
  br label %71, !dbg !2442

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2312, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* null, metadata !2317, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 66, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 49, metadata !2319, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 56, metadata !2320, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 48, metadata !2321, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 51, metadata !2322, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 48, metadata !2323, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2455
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2456
  %37 = load i8, i8* %36, align 1, !dbg !2456, !tbaa !950
  %38 = and i8 %37, -33, !dbg !2456
  %39 = icmp eq i8 %38, 66, !dbg !2456
  br i1 %39, label %40, label %68, !dbg !2456

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2341, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* null, metadata !2346, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 49, metadata !2347, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 56, metadata !2348, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 48, metadata !2349, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 51, metadata !2350, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2351, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2352, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2466
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2467
  %42 = load i8, i8* %41, align 1, !dbg !2467, !tbaa !950
  %43 = icmp eq i8 %42, 49, !dbg !2467
  br i1 %43, label %44, label %68, !dbg !2468

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* null, metadata !2373, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 56, metadata !2374, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 48, metadata !2375, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 51, metadata !2376, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2477
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2478
  %46 = load i8, i8* %45, align 1, !dbg !2478, !tbaa !950
  %47 = icmp eq i8 %46, 56, !dbg !2478
  br i1 %47, label %48, label %68, !dbg !2479

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2394, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* null, metadata !2399, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 48, metadata !2400, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 51, metadata !2401, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 48, metadata !2402, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2487
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2488
  %50 = load i8, i8* %49, align 1, !dbg !2488, !tbaa !950
  %51 = icmp eq i8 %50, 48, !dbg !2488
  br i1 %51, label %52, label %68, !dbg !2489

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2418, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* null, metadata !2423, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 51, metadata !2424, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 48, metadata !2425, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2496
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2497
  %54 = load i8, i8* %53, align 1, !dbg !2497, !tbaa !950
  %55 = icmp eq i8 %54, 51, !dbg !2497
  br i1 %55, label %56, label %68, !dbg !2498

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2499, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* null, metadata !2504, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 48, metadata !2505, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2515
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2516
  %58 = load i8, i8* %57, align 1, !dbg !2516, !tbaa !950
  %59 = icmp eq i8 %58, 48, !dbg !2516
  br i1 %59, label %60, label %68, !dbg !2518

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2519, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* null, metadata !2524, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8 0, metadata !2526, metadata !DIExpression()), !dbg !2533
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2534
  %62 = load i8, i8* %61, align 1, !dbg !2534, !tbaa !950
  %63 = icmp eq i8 %62, 0, !dbg !2534
  br i1 %63, label %64, label %68, !dbg !2536

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2537, !tbaa !950
  %66 = icmp eq i8 %65, 96, !dbg !2538
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !2537
  br label %71, !dbg !2539

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2540
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !2541
  br label %71, !dbg !2542

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2543
  ret i8* %72, !dbg !2544
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %0, metadata !2555, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()) #10, !dbg !2570
  call void @llvm.dbg.value(metadata i64* null, metadata !2561, metadata !DIExpression()) #10, !dbg !2571
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2562, metadata !DIExpression()) #10, !dbg !2572
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2573
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2563, metadata !DIExpression()) #10, !dbg !2574
  %6 = tail call i32* @__errno_location() #17, !dbg !2575
  %7 = load i32, i32* %6, align 4, !dbg !2575, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %7, metadata !2564, metadata !DIExpression()) #10, !dbg !2576
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2577
  %9 = load i32, i32* %8, align 4, !dbg !2577, !tbaa !1650
  %10 = or i32 %9, 1, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %10, metadata !2565, metadata !DIExpression()) #10, !dbg !2579
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2580
  %12 = load i32, i32* %11, align 8, !dbg !2580, !tbaa !1591
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2581
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2582
  %15 = load i8*, i8** %14, align 8, !dbg !2582, !tbaa !1676
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2583
  %17 = load i8*, i8** %16, align 8, !dbg !2583, !tbaa !1679
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2584
  %19 = add i64 %18, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %19, metadata !2566, metadata !DIExpression()) #10, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %19, metadata !2587, metadata !DIExpression()) #10, !dbg !2592
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %20, metadata !2567, metadata !DIExpression()) #10, !dbg !2595
  %21 = load i32, i32* %11, align 8, !dbg !2596, !tbaa !1591
  %22 = load i8*, i8** %14, align 8, !dbg !2597, !tbaa !1676
  %23 = load i8*, i8** %16, align 8, !dbg !2598, !tbaa !1679
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2599
  store i32 %7, i32* %6, align 4, !dbg !2600, !tbaa !908
  ret i8* %20, !dbg !2601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2555, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64* %2, metadata !2561, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2562, metadata !DIExpression()), !dbg !2605
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2606
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2563, metadata !DIExpression()), !dbg !2607
  %7 = tail call i32* @__errno_location() #17, !dbg !2608
  %8 = load i32, i32* %7, align 4, !dbg !2608, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %8, metadata !2564, metadata !DIExpression()), !dbg !2609
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2610
  %10 = load i32, i32* %9, align 4, !dbg !2610, !tbaa !1650
  %11 = icmp ne i64* %2, null, !dbg !2611
  %12 = xor i1 %11, true, !dbg !2611
  %13 = zext i1 %12 to i32, !dbg !2611
  %14 = or i32 %10, %13, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %14, metadata !2565, metadata !DIExpression()), !dbg !2613
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2614
  %16 = load i32, i32* %15, align 8, !dbg !2614, !tbaa !1591
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2615
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2616
  %19 = load i8*, i8** %18, align 8, !dbg !2616, !tbaa !1676
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2617
  %21 = load i8*, i8** %20, align 8, !dbg !2617, !tbaa !1679
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2618
  %23 = add i64 %22, 1, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %23, metadata !2566, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %23, metadata !2587, metadata !DIExpression()) #10, !dbg !2621
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %24, metadata !2567, metadata !DIExpression()), !dbg !2624
  %25 = load i32, i32* %15, align 8, !dbg !2625, !tbaa !1591
  %26 = load i8*, i8** %18, align 8, !dbg !2626, !tbaa !1676
  %27 = load i8*, i8** %20, align 8, !dbg !2627, !tbaa !1679
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2628
  store i32 %8, i32* %7, align 4, !dbg !2629, !tbaa !908
  br i1 %11, label %29, label %30, !dbg !2630

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2631, !tbaa !2633
  br label %30, !dbg !2634

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2636 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2640, !tbaa !799
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 1, metadata !2639, metadata !DIExpression()), !dbg !2642
  %2 = load i32, i32* @nslots, align 4, !dbg !2643, !tbaa !908
  %3 = icmp sgt i32 %2, 1, !dbg !2646
  br i1 %3, label %4, label %12, !dbg !2647

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2639, metadata !DIExpression()), !dbg !2642
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2648
  %7 = load i8*, i8** %6, align 8, !dbg !2648, !tbaa !2649
  tail call void @free(i8* %7) #10, !dbg !2651
  %8 = add nuw nsw i64 %5, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i32 undef, metadata !2639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2642
  %9 = load i32, i32* @nslots, align 4, !dbg !2643, !tbaa !908
  %10 = sext i32 %9 to i64, !dbg !2646
  %11 = icmp slt i64 %8, %10, !dbg !2646
  br i1 %11, label %4, label %12, !dbg !2647, !llvm.loop !2653

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2655
  %14 = load i8*, i8** %13, align 8, !dbg !2655, !tbaa !2649
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2657
  br i1 %15, label %17, label %16, !dbg !2658

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2659
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2661, !tbaa !2662
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2663, !tbaa !2649
  br label %17, !dbg !2664

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2665
  br i1 %18, label %21, label %19, !dbg !2667

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2668
  tail call void @free(i8* %20) #10, !dbg !2670
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2671, !tbaa !799
  br label %21, !dbg !2672

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2673, !tbaa !908
  ret void, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2682
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2683
  ret i8* %3, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2689, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %1, metadata !2690, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %2, metadata !2691, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2692, metadata !DIExpression()), !dbg !2707
  %5 = tail call i32* @__errno_location() #17, !dbg !2708
  %6 = load i32, i32* %5, align 4, !dbg !2708, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %6, metadata !2693, metadata !DIExpression()), !dbg !2709
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2710, !tbaa !799
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2694, metadata !DIExpression()), !dbg !2711
  %8 = icmp slt i32 %0, 0, !dbg !2712
  br i1 %8, label %9, label %10, !dbg !2714

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2715
  unreachable, !dbg !2715

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2716, !tbaa !908
  %12 = icmp sgt i32 %11, %0, !dbg !2717
  br i1 %12, label %34, label %13, !dbg !2718

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2719
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2698, metadata !DIExpression()), !dbg !2720
  %15 = icmp eq i32 %0, 2147483647, !dbg !2721
  br i1 %15, label %16, label %17, !dbg !2723

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2724
  unreachable, !dbg !2724

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2725
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2725
  %20 = add nsw i32 %0, 1, !dbg !2726
  %21 = sext i32 %20 to i64, !dbg !2727
  %22 = shl nsw i64 %21, 4, !dbg !2728
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2729
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2694, metadata !DIExpression()), !dbg !2711
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2730, !tbaa !799
  br i1 %14, label %25, label %26, !dbg !2731

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2732, !tbaa.struct !2734
  br label %26, !dbg !2735

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2736, !tbaa !908
  %28 = sext i32 %27 to i64, !dbg !2737
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2737
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2738
  %31 = sub nsw i32 %20, %27, !dbg !2739
  %32 = sext i32 %31 to i64, !dbg !2740
  %33 = shl nsw i64 %32, 4, !dbg !2741
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2738
  store i32 %20, i32* @nslots, align 4, !dbg !2742, !tbaa !908
  br label %34, !dbg !2743

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2744
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2694, metadata !DIExpression()), !dbg !2711
  %36 = sext i32 %0 to i64, !dbg !2745
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2746
  %38 = load i64, i64* %37, align 8, !dbg !2746, !tbaa !2662
  call void @llvm.dbg.value(metadata i64 %38, metadata !2699, metadata !DIExpression()), !dbg !2747
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2748
  %40 = load i8*, i8** %39, align 8, !dbg !2748, !tbaa !2649
  call void @llvm.dbg.value(metadata i8* %40, metadata !2701, metadata !DIExpression()), !dbg !2749
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2750
  %42 = load i32, i32* %41, align 4, !dbg !2750, !tbaa !1650
  %43 = or i32 %42, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %43, metadata !2702, metadata !DIExpression()), !dbg !2752
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2753
  %45 = load i32, i32* %44, align 8, !dbg !2753, !tbaa !1591
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2754
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2755
  %48 = load i8*, i8** %47, align 8, !dbg !2755, !tbaa !1676
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2756
  %50 = load i8*, i8** %49, align 8, !dbg !2756, !tbaa !1679
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %51, metadata !2703, metadata !DIExpression()), !dbg !2758
  %52 = icmp ugt i64 %38, %51, !dbg !2759
  br i1 %52, label %63, label %53, !dbg !2761

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %54, metadata !2699, metadata !DIExpression()), !dbg !2747
  store i64 %54, i64* %37, align 8, !dbg !2764, !tbaa !2662
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2765
  br i1 %55, label %57, label %56, !dbg !2767

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2768
  br label %57, !dbg !2768

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2587, metadata !DIExpression()) #10, !dbg !2769
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %58, metadata !2701, metadata !DIExpression()), !dbg !2749
  store i8* %58, i8** %39, align 8, !dbg !2772, !tbaa !2649
  %59 = load i32, i32* %44, align 8, !dbg !2773, !tbaa !1591
  %60 = load i8*, i8** %47, align 8, !dbg !2774, !tbaa !1676
  %61 = load i8*, i8** %49, align 8, !dbg !2775, !tbaa !1679
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2776
  br label %63, !dbg !2777

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2778
  call void @llvm.dbg.value(metadata i8* %64, metadata !2701, metadata !DIExpression()), !dbg !2749
  store i32 %6, i32* %5, align 4, !dbg !2779, !tbaa !908
  ret i8* %64, !dbg !2780
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %2, metadata !2787, metadata !DIExpression()), !dbg !2790
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2791
  ret i8* %4, !dbg !2792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #10, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()) #10, !dbg !2801
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2802
  ret i8* %2, !dbg !2803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2804 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2785, metadata !DIExpression()) #10, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()) #10, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2787, metadata !DIExpression()) #10, !dbg !2815
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2816
  ret i8* %3, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2818 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()), !dbg !2828
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2829
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()) #10, !dbg !2837
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2839, !alias.scope !2840
  %6 = icmp eq i32 %1, 10, !dbg !2843
  br i1 %6, label %7, label %8, !dbg !2845

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2846, !noalias !2840
  unreachable, !dbg !2846

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2847
  store i32 %1, i32* %9, align 8, !dbg !2848, !tbaa !1591, !alias.scope !2840
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2830
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2839
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2850
  ret i8* %10, !dbg !2851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2852 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2856, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %2, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %3, metadata !2859, metadata !DIExpression()), !dbg !2864
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2860, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()) #10, !dbg !2867
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2869, !alias.scope !2870
  %7 = icmp eq i32 %1, 10, !dbg !2873
  br i1 %7, label %8, label %9, !dbg !2874

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2875, !noalias !2870
  unreachable, !dbg !2875

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2876
  store i32 %1, i32* %10, align 8, !dbg !2877, !tbaa !1591, !alias.scope !2870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2860, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2869
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2878
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2879
  ret i8* %11, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2881 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2822, metadata !DIExpression()) #10, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()) #10, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2824, metadata !DIExpression()) #10, !dbg !2892
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2893
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2825, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()) #10, !dbg !2895
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2897, !alias.scope !2898
  %5 = icmp eq i32 %0, 10, !dbg !2901
  br i1 %5, label %6, label %7, !dbg !2902

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2903, !noalias !2898
  unreachable, !dbg !2903

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2904
  store i32 %0, i32* %8, align 8, !dbg !2905, !tbaa !1591, !alias.scope !2898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2825, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2836, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2897
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2907
  ret i8* %9, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2909 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !2914, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %2, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2856, metadata !DIExpression()) #10, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2858, metadata !DIExpression()) #10, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()) #10, !dbg !2923
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2928, !alias.scope !2929
  %6 = icmp eq i32 %0, 10, !dbg !2932
  br i1 %6, label %7, label %8, !dbg !2933

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2934, !noalias !2929
  unreachable, !dbg !2934

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2935
  store i32 %0, i32* %9, align 8, !dbg !2936, !tbaa !1591, !alias.scope !2929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2836, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2928
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2937
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2938
  ret i8* %10, !dbg !2939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2940 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 %2, metadata !2946, metadata !DIExpression()), !dbg !2950
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2951
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2952, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1610, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %2, metadata !1611, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 1, metadata !1612, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %2, metadata !1613, metadata !DIExpression()), !dbg !2959
  %6 = lshr i8 %2, 5, !dbg !2960
  %7 = zext i8 %6 to i64, !dbg !2960
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2961
  call void @llvm.dbg.value(metadata i32* %8, metadata !1614, metadata !DIExpression()), !dbg !2962
  %9 = and i8 %2, 31, !dbg !2963
  %10 = zext i8 %9 to i32, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %10, metadata !1616, metadata !DIExpression()), !dbg !2964
  %11 = load i32, i32* %8, align 4, !dbg !2965, !tbaa !908
  %12 = lshr i32 %11, %10, !dbg !2966
  %13 = and i32 %12, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %13, metadata !1617, metadata !DIExpression()), !dbg !2968
  %14 = xor i32 %13, 1, !dbg !2969
  %15 = shl i32 %14, %10, !dbg !2970
  %16 = xor i32 %15, %11, !dbg !2971
  store i32 %16, i32* %8, align 4, !dbg !2971, !tbaa !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2972
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2973
  ret i8* %17, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2975 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %1, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #10, !dbg !2983
  call void @llvm.dbg.value(metadata i64 -1, metadata !2945, metadata !DIExpression()) #10, !dbg !2985
  call void @llvm.dbg.value(metadata i8 %1, metadata !2946, metadata !DIExpression()) #10, !dbg !2986
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2988, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1610, metadata !DIExpression()) #10, !dbg !2990
  call void @llvm.dbg.value(metadata i8 %1, metadata !1611, metadata !DIExpression()) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i32 1, metadata !1612, metadata !DIExpression()) #10, !dbg !2993
  call void @llvm.dbg.value(metadata i8 %1, metadata !1613, metadata !DIExpression()) #10, !dbg !2994
  %5 = lshr i8 %1, 5, !dbg !2995
  %6 = zext i8 %5 to i64, !dbg !2995
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2996
  call void @llvm.dbg.value(metadata i32* %7, metadata !1614, metadata !DIExpression()) #10, !dbg !2997
  %8 = and i8 %1, 31, !dbg !2998
  %9 = zext i8 %8 to i32, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %9, metadata !1616, metadata !DIExpression()) #10, !dbg !2999
  %10 = load i32, i32* %7, align 4, !dbg !3000, !tbaa !908
  %11 = lshr i32 %10, %9, !dbg !3001
  %12 = and i32 %11, 1, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %12, metadata !1617, metadata !DIExpression()) #10, !dbg !3003
  %13 = xor i32 %12, 1, !dbg !3004
  %14 = shl i32 %13, %9, !dbg !3005
  %15 = xor i32 %14, %10, !dbg !3006
  store i32 %15, i32* %7, align 4, !dbg !3006, !tbaa !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2989
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3008
  ret i8* %16, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3010 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !2980, metadata !DIExpression()) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #10, !dbg !3017
  call void @llvm.dbg.value(metadata i64 -1, metadata !2945, metadata !DIExpression()) #10, !dbg !3019
  call void @llvm.dbg.value(metadata i8 58, metadata !2946, metadata !DIExpression()) #10, !dbg !3020
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3022, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1610, metadata !DIExpression()) #10, !dbg !3024
  call void @llvm.dbg.value(metadata i8 58, metadata !1611, metadata !DIExpression()) #10, !dbg !3026
  call void @llvm.dbg.value(metadata i32 1, metadata !1612, metadata !DIExpression()) #10, !dbg !3027
  call void @llvm.dbg.value(metadata i8 58, metadata !1613, metadata !DIExpression()) #10, !dbg !3028
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3029
  call void @llvm.dbg.value(metadata i32* %4, metadata !1614, metadata !DIExpression()) #10, !dbg !3030
  call void @llvm.dbg.value(metadata i32 26, metadata !1616, metadata !DIExpression()) #10, !dbg !3031
  %5 = load i32, i32* %4, align 4, !dbg !3032, !tbaa !908
  %6 = or i32 %5, 67108864, !dbg !3033
  store i32 %6, i32* %4, align 4, !dbg !3033, !tbaa !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3023
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3035
  ret i8* %7, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3037 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #10, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()) #10, !dbg !3045
  call void @llvm.dbg.value(metadata i8 58, metadata !2946, metadata !DIExpression()) #10, !dbg !3046
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3047
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3048, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1610, metadata !DIExpression()) #10, !dbg !3050
  call void @llvm.dbg.value(metadata i8 58, metadata !1611, metadata !DIExpression()) #10, !dbg !3052
  call void @llvm.dbg.value(metadata i32 1, metadata !1612, metadata !DIExpression()) #10, !dbg !3053
  call void @llvm.dbg.value(metadata i8 58, metadata !1613, metadata !DIExpression()) #10, !dbg !3054
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3055
  call void @llvm.dbg.value(metadata i32* %5, metadata !1614, metadata !DIExpression()) #10, !dbg !3056
  call void @llvm.dbg.value(metadata i32 26, metadata !1616, metadata !DIExpression()) #10, !dbg !3057
  %6 = load i32, i32* %5, align 4, !dbg !3058, !tbaa !908
  %7 = or i32 %6, 67108864, !dbg !3059
  store i32 %7, i32* %5, align 4, !dbg !3059, !tbaa !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2947, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3049
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3061
  ret i8* %8, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3063 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %1, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %2, metadata !3067, metadata !DIExpression()), !dbg !3073
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3074
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()) #10, !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3069
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3069, !alias.scope !3077
  %8 = icmp eq i32 %1, 10, !dbg !3080
  br i1 %8, label %9, label %10, !dbg !3081

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3082, !noalias !3077
  unreachable, !dbg !3082

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3069
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3075
  store i32 %1, i32* %11, align 8, !dbg !3075
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3075
  %13 = bitcast i32* %12 to i8*, !dbg !3075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3068, metadata !DIExpression(DW_OP_deref)), !dbg !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1610, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8 58, metadata !1611, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 1, metadata !1612, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 58, metadata !1613, metadata !DIExpression()), !dbg !3088
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32* %14, metadata !1614, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 26, metadata !1616, metadata !DIExpression()), !dbg !3091
  %15 = load i32, i32* %14, align 4, !dbg !3092, !tbaa !908
  %16 = or i32 %15, 67108864, !dbg !3093
  store i32 %16, i32* %14, align 4, !dbg !3093, !tbaa !908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3068, metadata !DIExpression(DW_OP_deref)), !dbg !3083
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3095
  ret i8* %17, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3097 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3101, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* %3, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %0, metadata !3109, metadata !DIExpression()) #10, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %1, metadata !3114, metadata !DIExpression()) #10, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %2, metadata !3115, metadata !DIExpression()) #10, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %3, metadata !3116, metadata !DIExpression()) #10, !dbg !3123
  call void @llvm.dbg.value(metadata i64 -1, metadata !3117, metadata !DIExpression()) #10, !dbg !3124
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3125
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3126, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #10, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #10, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()) #10, !dbg !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #10, !dbg !3128
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3132
  store i32 10, i32* %7, align 8, !dbg !3133, !tbaa !1591
  %8 = icmp ne i8* %1, null, !dbg !3134
  %9 = icmp ne i8* %2, null, !dbg !3135
  %10 = and i1 %8, %9, !dbg !3136
  br i1 %10, label %12, label %11, !dbg !3136

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3137
  unreachable, !dbg !3137

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3138
  store i8* %1, i8** %13, align 8, !dbg !3139, !tbaa !1676
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3140
  store i8* %2, i8** %14, align 8, !dbg !3141, !tbaa !1679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3127
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3142
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3143
  ret i8* %15, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3110 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3109, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %1, metadata !3114, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %2, metadata !3115, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %3, metadata !3116, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %4, metadata !3117, metadata !DIExpression()), !dbg !3149
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3151, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3118, metadata !DIExpression(DW_OP_deref)), !dbg !3152
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1658, metadata !DIExpression()) #10, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #10, !dbg !3155
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()) #10, !dbg !3156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1658, metadata !DIExpression()) #10, !dbg !3153
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3157
  store i32 10, i32* %8, align 8, !dbg !3158, !tbaa !1591
  %9 = icmp ne i8* %1, null, !dbg !3159
  %10 = icmp ne i8* %2, null, !dbg !3160
  %11 = and i1 %9, %10, !dbg !3161
  br i1 %11, label %13, label %12, !dbg !3161

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3162
  unreachable, !dbg !3162

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3163
  store i8* %1, i8** %14, align 8, !dbg !3164, !tbaa !1676
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3165
  store i8* %2, i8** %15, align 8, !dbg !3166, !tbaa !1679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3118, metadata !DIExpression(DW_OP_deref)), !dbg !3152
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3168
  ret i8* %16, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3170 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3175, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8* %2, metadata !3176, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression()) #10, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #10, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3104, metadata !DIExpression()) #10, !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !3109, metadata !DIExpression()) #10, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()) #10, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3115, metadata !DIExpression()) #10, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()) #10, !dbg !3189
  call void @llvm.dbg.value(metadata i64 -1, metadata !3117, metadata !DIExpression()) #10, !dbg !3190
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3191
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3192, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1658, metadata !DIExpression()) #10, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !1659, metadata !DIExpression()) #10, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !1660, metadata !DIExpression()) #10, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1658, metadata !DIExpression()) #10, !dbg !3194
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3198
  store i32 10, i32* %6, align 8, !dbg !3199, !tbaa !1591
  %7 = icmp ne i8* %0, null, !dbg !3200
  %8 = icmp ne i8* %1, null, !dbg !3201
  %9 = and i1 %7, %8, !dbg !3202
  br i1 %9, label %11, label %10, !dbg !3202

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3203
  unreachable, !dbg !3203

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3204
  store i8* %0, i8** %12, align 8, !dbg !3205, !tbaa !1676
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3206
  store i8* %1, i8** %13, align 8, !dbg !3207, !tbaa !1679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3193
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3209
  ret i8* %14, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3211 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3215, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %2, metadata !3217, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %3, metadata !3218, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 0, metadata !3109, metadata !DIExpression()) #10, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()) #10, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %1, metadata !3115, metadata !DIExpression()) #10, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()) #10, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %3, metadata !3117, metadata !DIExpression()) #10, !dbg !3228
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3229
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3230, !tbaa.struct !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #10, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !1659, metadata !DIExpression()) #10, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !1660, metadata !DIExpression()) #10, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #10, !dbg !3232
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3236
  store i32 10, i32* %7, align 8, !dbg !3237, !tbaa !1591
  %8 = icmp ne i8* %0, null, !dbg !3238
  %9 = icmp ne i8* %1, null, !dbg !3239
  %10 = and i1 %8, %9, !dbg !3240
  br i1 %10, label %12, label %11, !dbg !3240

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3241
  unreachable, !dbg !3241

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3242
  store i8* %0, i8** %13, align 8, !dbg !3243, !tbaa !1676
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3244
  store i8* %1, i8** %14, align 8, !dbg !3245, !tbaa !1679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3118, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3231
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3247
  ret i8* %15, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %2, metadata !3255, metadata !DIExpression()), !dbg !3258
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3259
  ret i8* %4, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32 0, metadata !3253, metadata !DIExpression()) #10, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %0, metadata !3254, metadata !DIExpression()) #10, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()) #10, !dbg !3272
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3273
  ret i8* %3, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()) #10, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()) #10, !dbg !3285
  call void @llvm.dbg.value(metadata i64 -1, metadata !3255, metadata !DIExpression()) #10, !dbg !3286
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3287
  ret i8* %3, !dbg !3288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i32 0, metadata !3253, metadata !DIExpression()) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !3254, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata i64 -1, metadata !3255, metadata !DIExpression()) #10, !dbg !3301
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3302
  ret i8* %2, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #7 !dbg !3304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3308, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32* %1, metadata !3309, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32* %2, metadata !3310, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8** %3, metadata !3311, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8** %4, metadata !3312, metadata !DIExpression()), !dbg !3322
  %6 = icmp eq i32* %2, null, !dbg !3323
  br i1 %6, label %9, label %7, !dbg !3323

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #14, !dbg !3324
  br label %9, !dbg !3323

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3323
  call void @llvm.dbg.value(metadata i8* %10, metadata !3313, metadata !DIExpression()), !dbg !3325
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3326
  call void @llvm.dbg.value(metadata i8* %11, metadata !3314, metadata !DIExpression()), !dbg !3327
  %12 = icmp ne i32* %2, null, !dbg !3328
  %13 = icmp eq i8* %10, null, !dbg !3329
  %14 = and i1 %12, %13, !dbg !3330
  %15 = icmp ne i8* %11, null, !dbg !3331
  %16 = and i1 %14, %15, !dbg !3330
  br i1 %16, label %17, label %24, !dbg !3330

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #14, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %18, metadata !3315, metadata !DIExpression()), !dbg !3333
  %19 = icmp eq i8* %18, null, !dbg !3334
  br i1 %19, label %24, label %20, !dbg !3336

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3337
  %22 = icmp eq i8* %21, null, !dbg !3337
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3338
  ret i8* %23, !dbg !3338

; <label>:24:                                     ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !3314, metadata !DIExpression()), !dbg !3327
  ret i8* %11, !dbg !3339
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #7 !dbg !223 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !231, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8* %1, metadata !232, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32* %2, metadata !233, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32* %3, metadata !234, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8** %4, metadata !235, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8** %5, metadata !236, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* null, metadata !261, metadata !DIExpression()), !dbg !3346
  %10 = load i32, i32* %2, align 4, !dbg !3347, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %10, metadata !262, metadata !DIExpression()), !dbg !3348
  %11 = icmp ne i32* %3, null, !dbg !3349
  br i1 %11, label %12, label %14, !dbg !3349

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3350, !tbaa !908
  br label %14, !dbg !3349

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3349
  call void @llvm.dbg.value(metadata i32 %15, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8* null, metadata !237, metadata !DIExpression()), !dbg !3352
  %16 = icmp ne i8** %4, null, !dbg !3353
  br i1 %16, label %17, label %18, !dbg !3355

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3356, !tbaa !799
  br label %18, !dbg !3357

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3358
  br i1 %19, label %20, label %21, !dbg !3360

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3361, !tbaa !799
  br label %21, !dbg !3362

; <label>:21:                                     ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !259, metadata !DIExpression()), !dbg !3363
  %22 = icmp eq i8* %1, null, !dbg !3364
  br i1 %22, label %23, label %28, !dbg !3365

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3366, !tbaa !950
  %25 = icmp eq i8 %24, 0, !dbg !3366
  br i1 %25, label %137, label %26, !dbg !3369

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #10, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %27, metadata !259, metadata !DIExpression()), !dbg !3363
  br label %43, !dbg !3371

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3372
  %30 = ptrtoint i8* %0 to i64, !dbg !3372
  %31 = sub i64 %29, %30, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %31, metadata !264, metadata !DIExpression()), !dbg !3373
  %32 = icmp eq i64 %31, 0, !dbg !3374
  br i1 %32, label %37, label %33, !dbg !3376

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3377
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #10, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %35, metadata !259, metadata !DIExpression()), !dbg !3363
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3380
  store i8 0, i8* %36, align 1, !dbg !3381, !tbaa !950
  br label %37, !dbg !3382

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !3383
  call void @llvm.dbg.value(metadata i8* %38, metadata !259, metadata !DIExpression()), !dbg !3363
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3384
  %40 = load i8, i8* %39, align 1, !dbg !3385, !tbaa !950
  %41 = icmp eq i8 %40, 0, !dbg !3386
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3387
  br label %43, !dbg !3387

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3387
  call void @llvm.dbg.value(metadata i8* %45, metadata !260, metadata !DIExpression()), !dbg !3388
  %46 = icmp eq i8* %44, null, !dbg !3389
  br i1 %46, label %97, label %47, !dbg !3390

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3391, !tbaa !950
  %49 = icmp eq i8 %48, 43, !dbg !3392
  br i1 %49, label %53, label %50, !dbg !3391

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3393
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !238, metadata !DIExpression()), !dbg !3394
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3395
  br i1 %52, label %53, label %71, !dbg !3396

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3397
  %55 = icmp eq i8* %45, null, !dbg !3398
  %56 = and i1 %54, %55, !dbg !3399
  br i1 %56, label %92, label %57, !dbg !3400

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3401
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #10, !dbg !3401
  call void @llvm.dbg.value(metadata i64* %7, metadata !272, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.101, i64 0, i64 0)) #10, !dbg !3403
  %60 = icmp eq i32 %59, 0, !dbg !3405
  %61 = load i64, i64* %7, align 8, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %61, metadata !272, metadata !DIExpression()), !dbg !3402
  %62 = icmp ult i64 %61, 4294967296, !dbg !3407
  %63 = and i1 %60, %62, !dbg !3408
  br i1 %63, label %64, label %67, !dbg !3408

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3409
  %66 = icmp eq i32 %65, -1, !dbg !3410
  br i1 %66, label %67, label %68, !dbg !3411

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ], !dbg !3412
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i64 0, i64 0), %67 ], [ null, %64 ], !dbg !3413
  call void @llvm.dbg.value(metadata i8* %70, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %69, metadata !262, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #10, !dbg !3414
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3415
  %73 = load i32, i32* %72, align 8, !dbg !3415, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %73, metadata !262, metadata !DIExpression()), !dbg !3348
  %74 = icmp eq i8* %45, null, !dbg !3416
  %75 = icmp ne i8* %1, null, !dbg !3417
  %76 = and i1 %75, %74, !dbg !3418
  br i1 %76, label %77, label %92, !dbg !3418

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #10, !dbg !3419
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !275, metadata !DIExpression()), !dbg !3420
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3421
  %80 = load i32, i32* %79, align 4, !dbg !3421, !tbaa !1032
  call void @llvm.dbg.value(metadata i32 %80, metadata !263, metadata !DIExpression()), !dbg !3351
  %81 = tail call %struct.group* @getgrgid(i32 %80) #10, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.group* %81, metadata !250, metadata !DIExpression()), !dbg !3423
  %82 = icmp eq %struct.group* %81, null, !dbg !3424
  br i1 %82, label %86, label %83, !dbg !3424

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3425
  %85 = load i8*, i8** %84, align 8, !dbg !3425, !tbaa !1135
  br label %89, !dbg !3424

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3426
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #10, !dbg !3427
  br label %89, !dbg !3424

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3424
  %91 = call noalias i8* @xstrdup(i8* %90) #10, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %91, metadata !261, metadata !DIExpression()), !dbg !3346
  call void @endgrent() #10, !dbg !3429
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #10, !dbg !3430
  br label %92, !dbg !3431

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ], !dbg !3412
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ], !dbg !3432
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ], !dbg !3412
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.103, i64 0, i64 0), %53 ], [ %70, %68 ], !dbg !3412
  call void @llvm.dbg.value(metadata i8* %96, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %95, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %94, metadata !262, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %93, metadata !261, metadata !DIExpression()), !dbg !3346
  call void @endpwent() #10, !dbg !3433
  br label %97, !dbg !3434

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %93, %92 ], [ null, %43 ], !dbg !3346
  %99 = phi i32 [ %94, %92 ], [ %10, %43 ], !dbg !3348
  %100 = phi i32 [ %95, %92 ], [ %15, %43 ], !dbg !3351
  %101 = phi i8* [ %96, %92 ], [ null, %43 ], !dbg !3412
  call void @llvm.dbg.value(metadata i8* %101, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %100, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %99, metadata !262, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %98, metadata !261, metadata !DIExpression()), !dbg !3346
  %102 = icmp ne i8* %45, null, !dbg !3435
  %103 = icmp eq i8* %101, null, !dbg !3436
  %104 = and i1 %102, %103, !dbg !3437
  br i1 %104, label %105, label %132, !dbg !3437

; <label>:105:                                    ; preds = %97
  %106 = load i8, i8* %45, align 1, !dbg !3438, !tbaa !950
  %107 = icmp eq i8 %106, 43, !dbg !3439
  br i1 %107, label %111, label %108, !dbg !3438

; <label>:108:                                    ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* nonnull %45) #10, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !250, metadata !DIExpression()), !dbg !3423
  %110 = icmp eq %struct.group* %109, null, !dbg !3441
  br i1 %110, label %111, label %125, !dbg !3442

; <label>:111:                                    ; preds = %105, %108
  %112 = bitcast i64* %9 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3443
  call void @llvm.dbg.value(metadata i64* %9, metadata !279, metadata !DIExpression(DW_OP_deref)), !dbg !3444
  %113 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.101, i64 0, i64 0)) #10, !dbg !3445
  %114 = icmp eq i32 %113, 0, !dbg !3447
  %115 = load i64, i64* %9, align 8, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %115, metadata !279, metadata !DIExpression()), !dbg !3444
  %116 = icmp ult i64 %115, 4294967296, !dbg !3449
  %117 = and i1 %114, %116, !dbg !3450
  br i1 %117, label %118, label %121, !dbg !3450

; <label>:118:                                    ; preds = %111
  %119 = trunc i64 %115 to i32, !dbg !3451
  %120 = icmp eq i32 %119, -1, !dbg !3452
  br i1 %120, label %121, label %122, !dbg !3453

; <label>:121:                                    ; preds = %118, %111
  br label %122

; <label>:122:                                    ; preds = %118, %121
  %123 = phi i32 [ %100, %121 ], [ %119, %118 ], !dbg !3412
  %124 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.104, i64 0, i64 0), %121 ], [ null, %118 ], !dbg !3454
  call void @llvm.dbg.value(metadata i8* %124, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %123, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3455
  br label %128, !dbg !3456

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2, !dbg !3457
  %127 = load i32, i32* %126, align 8, !dbg !3457, !tbaa !3458
  call void @llvm.dbg.value(metadata i32 %127, metadata !263, metadata !DIExpression()), !dbg !3351
  br label %128

; <label>:128:                                    ; preds = %125, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %125 ], !dbg !3459
  %130 = phi i8* [ %124, %122 ], [ null, %125 ], !dbg !3460
  call void @llvm.dbg.value(metadata i8* %130, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %129, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @endgrent() #10, !dbg !3462
  %131 = call noalias i8* @xstrdup(i8* nonnull %45) #10, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %131, metadata !261, metadata !DIExpression()), !dbg !3346
  br label %132, !dbg !3464

; <label>:132:                                    ; preds = %128, %97
  %133 = phi i8* [ %131, %128 ], [ %98, %97 ], !dbg !3412
  %134 = phi i32 [ %129, %128 ], [ %100, %97 ], !dbg !3412
  %135 = phi i8* [ %130, %128 ], [ %101, %97 ], !dbg !3460
  call void @llvm.dbg.value(metadata i8* %135, metadata !237, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %134, metadata !263, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8* %133, metadata !261, metadata !DIExpression()), !dbg !3346
  %136 = icmp eq i8* %135, null, !dbg !3465
  br i1 %136, label %137, label %148, !dbg !3467

; <label>:137:                                    ; preds = %23, %132
  %138 = phi i32 [ %134, %132 ], [ %15, %23 ]
  %139 = phi i8* [ %133, %132 ], [ null, %23 ]
  %140 = phi i8* [ %44, %132 ], [ null, %23 ]
  %141 = phi i32 [ %99, %132 ], [ %10, %23 ]
  store i32 %141, i32* %2, align 4, !dbg !3468, !tbaa !908
  br i1 %11, label %142, label %143, !dbg !3470

; <label>:142:                                    ; preds = %137
  store i32 %138, i32* %3, align 4, !dbg !3471, !tbaa !908
  br label %143, !dbg !3473

; <label>:143:                                    ; preds = %142, %137
  br i1 %16, label %144, label %145, !dbg !3474

; <label>:144:                                    ; preds = %143
  store i8* %140, i8** %4, align 8, !dbg !3475, !tbaa !799
  call void @llvm.dbg.value(metadata i8* null, metadata !259, metadata !DIExpression()), !dbg !3363
  br label %145, !dbg !3478

; <label>:145:                                    ; preds = %144, %143
  %146 = phi i8* [ null, %144 ], [ %140, %143 ], !dbg !3479
  call void @llvm.dbg.value(metadata i8* %146, metadata !259, metadata !DIExpression()), !dbg !3363
  br i1 %19, label %147, label %148, !dbg !3480

; <label>:147:                                    ; preds = %145
  store i8* %139, i8** %5, align 8, !dbg !3481, !tbaa !799
  call void @llvm.dbg.value(metadata i8* null, metadata !261, metadata !DIExpression()), !dbg !3346
  br label %148, !dbg !3484

; <label>:148:                                    ; preds = %145, %147, %132
  %149 = phi i1 [ true, %147 ], [ true, %145 ], [ false, %132 ]
  %150 = phi i8* [ null, %147 ], [ null, %145 ], [ %135, %132 ]
  %151 = phi i8* [ %146, %147 ], [ %146, %145 ], [ %44, %132 ], !dbg !3479
  %152 = phi i8* [ null, %147 ], [ %139, %145 ], [ %133, %132 ], !dbg !3485
  call void @llvm.dbg.value(metadata i8* %152, metadata !261, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %151, metadata !259, metadata !DIExpression()), !dbg !3363
  call void @free(i8* %151) #10, !dbg !3486
  call void @free(i8* %152) #10, !dbg !3487
  br i1 %149, label %155, label %153, !dbg !3488

; <label>:153:                                    ; preds = %148
  %154 = call i8* @dcgettext(i8* null, i8* nonnull %150, i32 5) #10, !dbg !3489
  br label %155, !dbg !3488

; <label>:155:                                    ; preds = %148, %153
  %156 = phi i8* [ %154, %153 ], [ null, %148 ], !dbg !3488
  ret i8* %156, !dbg !3490
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3491 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3550, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8* %1, metadata !3551, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %2, metadata !3552, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %3, metadata !3553, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8** %4, metadata !3554, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 %5, metadata !3555, metadata !DIExpression()), !dbg !3561
  %7 = icmp eq i8* %1, null, !dbg !3562
  br i1 %7, label %10, label %8, !dbg !3564

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3565
  br label %12, !dbg !3565

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3566
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #10, !dbg !3567
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3567
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.108, i64 0, i64 0), i32 5) #10, !dbg !3568
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3568
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
  ], !dbg !3569

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3570
  unreachable, !dbg !3570

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #10, !dbg !3572
  %20 = load i8*, i8** %4, align 8, !dbg !3572, !tbaa !799
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3572
  br label %146, !dbg !3573

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.110, i64 0, i64 0), i32 5) #10, !dbg !3574
  %24 = load i8*, i8** %4, align 8, !dbg !3574, !tbaa !799
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3574
  %26 = load i8*, i8** %25, align 8, !dbg !3574, !tbaa !799
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3574
  br label %146, !dbg !3575

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #10, !dbg !3576
  %30 = load i8*, i8** %4, align 8, !dbg !3576, !tbaa !799
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3576
  %32 = load i8*, i8** %31, align 8, !dbg !3576, !tbaa !799
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3576
  %34 = load i8*, i8** %33, align 8, !dbg !3576, !tbaa !799
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3576
  br label %146, !dbg !3577

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #10, !dbg !3578
  %38 = load i8*, i8** %4, align 8, !dbg !3578, !tbaa !799
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3578
  %40 = load i8*, i8** %39, align 8, !dbg !3578, !tbaa !799
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3578
  %42 = load i8*, i8** %41, align 8, !dbg !3578, !tbaa !799
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3578
  %44 = load i8*, i8** %43, align 8, !dbg !3578, !tbaa !799
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3578
  br label %146, !dbg !3579

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #10, !dbg !3580
  %48 = load i8*, i8** %4, align 8, !dbg !3580, !tbaa !799
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3580
  %50 = load i8*, i8** %49, align 8, !dbg !3580, !tbaa !799
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3580
  %52 = load i8*, i8** %51, align 8, !dbg !3580, !tbaa !799
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3580
  %54 = load i8*, i8** %53, align 8, !dbg !3580, !tbaa !799
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3580
  %56 = load i8*, i8** %55, align 8, !dbg !3580, !tbaa !799
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3580
  br label %146, !dbg !3581

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #10, !dbg !3582
  %60 = load i8*, i8** %4, align 8, !dbg !3582, !tbaa !799
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3582
  %62 = load i8*, i8** %61, align 8, !dbg !3582, !tbaa !799
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3582
  %64 = load i8*, i8** %63, align 8, !dbg !3582, !tbaa !799
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3582
  %66 = load i8*, i8** %65, align 8, !dbg !3582, !tbaa !799
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3582
  %68 = load i8*, i8** %67, align 8, !dbg !3582, !tbaa !799
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3582
  %70 = load i8*, i8** %69, align 8, !dbg !3582, !tbaa !799
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3582
  br label %146, !dbg !3583

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #10, !dbg !3584
  %74 = load i8*, i8** %4, align 8, !dbg !3584, !tbaa !799
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3584
  %76 = load i8*, i8** %75, align 8, !dbg !3584, !tbaa !799
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3584
  %78 = load i8*, i8** %77, align 8, !dbg !3584, !tbaa !799
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3584
  %80 = load i8*, i8** %79, align 8, !dbg !3584, !tbaa !799
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3584
  %82 = load i8*, i8** %81, align 8, !dbg !3584, !tbaa !799
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3584
  %84 = load i8*, i8** %83, align 8, !dbg !3584, !tbaa !799
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3584
  %86 = load i8*, i8** %85, align 8, !dbg !3584, !tbaa !799
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3584
  br label %146, !dbg !3585

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #10, !dbg !3586
  %90 = load i8*, i8** %4, align 8, !dbg !3586, !tbaa !799
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3586
  %92 = load i8*, i8** %91, align 8, !dbg !3586, !tbaa !799
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3586
  %94 = load i8*, i8** %93, align 8, !dbg !3586, !tbaa !799
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3586
  %96 = load i8*, i8** %95, align 8, !dbg !3586, !tbaa !799
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3586
  %98 = load i8*, i8** %97, align 8, !dbg !3586, !tbaa !799
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3586
  %100 = load i8*, i8** %99, align 8, !dbg !3586, !tbaa !799
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3586
  %102 = load i8*, i8** %101, align 8, !dbg !3586, !tbaa !799
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3586
  %104 = load i8*, i8** %103, align 8, !dbg !3586, !tbaa !799
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3586
  br label %146, !dbg !3587

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #10, !dbg !3588
  %108 = load i8*, i8** %4, align 8, !dbg !3588, !tbaa !799
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3588
  %110 = load i8*, i8** %109, align 8, !dbg !3588, !tbaa !799
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3588
  %112 = load i8*, i8** %111, align 8, !dbg !3588, !tbaa !799
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3588
  %114 = load i8*, i8** %113, align 8, !dbg !3588, !tbaa !799
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3588
  %116 = load i8*, i8** %115, align 8, !dbg !3588, !tbaa !799
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3588
  %118 = load i8*, i8** %117, align 8, !dbg !3588, !tbaa !799
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3588
  %120 = load i8*, i8** %119, align 8, !dbg !3588, !tbaa !799
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3588
  %122 = load i8*, i8** %121, align 8, !dbg !3588, !tbaa !799
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3588
  %124 = load i8*, i8** %123, align 8, !dbg !3588, !tbaa !799
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3588
  br label %146, !dbg !3589

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #10, !dbg !3590
  %128 = load i8*, i8** %4, align 8, !dbg !3590, !tbaa !799
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3590
  %130 = load i8*, i8** %129, align 8, !dbg !3590, !tbaa !799
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3590
  %132 = load i8*, i8** %131, align 8, !dbg !3590, !tbaa !799
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3590
  %134 = load i8*, i8** %133, align 8, !dbg !3590, !tbaa !799
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3590
  %136 = load i8*, i8** %135, align 8, !dbg !3590, !tbaa !799
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3590
  %138 = load i8*, i8** %137, align 8, !dbg !3590, !tbaa !799
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3590
  %140 = load i8*, i8** %139, align 8, !dbg !3590, !tbaa !799
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3590
  %142 = load i8*, i8** %141, align 8, !dbg !3590, !tbaa !799
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3590
  %144 = load i8*, i8** %143, align 8, !dbg !3590, !tbaa !799
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3590
  br label %146, !dbg !3591

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3592
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3593 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3597, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8* %1, metadata !3598, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8* %2, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %3, metadata !3600, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8** %4, metadata !3601, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 0, metadata !3602, metadata !DIExpression()), !dbg !3608
  br label %6, !dbg !3609

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3611
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3613
  %9 = load i8*, i8** %8, align 8, !dbg !3613, !tbaa !799
  %10 = icmp eq i8* %9, null, !dbg !3614
  %11 = add i64 %7, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %11, metadata !3602, metadata !DIExpression()), !dbg !3608
  br i1 %10, label %12, label %6, !dbg !3614, !llvm.loop !3616

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %7, metadata !3602, metadata !DIExpression()), !dbg !3608
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3618
  ret void, !dbg !3619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3620 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3631, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %1, metadata !3632, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %2, metadata !3633, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %3, metadata !3634, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3635, metadata !DIExpression()), !dbg !3643
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3644
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3637, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 0, metadata !3636, metadata !DIExpression()), !dbg !3646
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3636, metadata !DIExpression()), !dbg !3646
  %11 = load i32, i32* %8, align 8, !dbg !3647
  %12 = icmp ult i32 %11, 41, !dbg !3647
  br i1 %12, label %13, label %18, !dbg !3647

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3647
  %15 = sext i32 %11 to i64, !dbg !3647
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3647
  %17 = add i32 %11, 8, !dbg !3647
  store i32 %17, i32* %8, align 8, !dbg !3647
  br label %21, !dbg !3647

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3647
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3647
  store i8* %20, i8** %10, align 8, !dbg !3647
  br label %21, !dbg !3647

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3647
  %25 = load i8*, i8** %24, align 8, !dbg !3647
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3650
  store i8* %25, i8** %26, align 16, !dbg !3651, !tbaa !799
  %27 = icmp eq i8* %25, null, !dbg !3652
  br i1 %27, label %30, label %28, !dbg !3653

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 1, metadata !3636, metadata !DIExpression()), !dbg !3646
  %29 = icmp ult i32 %22, 41, !dbg !3647
  br i1 %29, label %35, label %32, !dbg !3647

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3654
  call void @llvm.dbg.value(metadata i64 %31, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %31, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3655
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3656
  ret void, !dbg !3656

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3647
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3647
  store i8* %34, i8** %10, align 8, !dbg !3647
  br label %40, !dbg !3647

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3647
  %37 = sext i32 %22 to i64, !dbg !3647
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3647
  %39 = add i32 %22, 8, !dbg !3647
  store i32 %39, i32* %8, align 8, !dbg !3647
  br label %40, !dbg !3647

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3647
  %44 = load i8*, i8** %43, align 8, !dbg !3647
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3650
  store i8* %44, i8** %45, align 8, !dbg !3651, !tbaa !799
  %46 = icmp eq i8* %44, null, !dbg !3652
  br i1 %46, label %30, label %47, !dbg !3653

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 2, metadata !3636, metadata !DIExpression()), !dbg !3646
  %48 = icmp ult i32 %41, 41, !dbg !3647
  br i1 %48, label %52, label %49, !dbg !3647

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3647
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3647
  store i8* %51, i8** %10, align 8, !dbg !3647
  br label %57, !dbg !3647

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3647
  %54 = sext i32 %41 to i64, !dbg !3647
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3647
  %56 = add i32 %41, 8, !dbg !3647
  store i32 %56, i32* %8, align 8, !dbg !3647
  br label %57, !dbg !3647

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3647
  %61 = load i8*, i8** %60, align 8, !dbg !3647
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3650
  store i8* %61, i8** %62, align 16, !dbg !3651, !tbaa !799
  %63 = icmp eq i8* %61, null, !dbg !3652
  br i1 %63, label %30, label %64, !dbg !3653

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 3, metadata !3636, metadata !DIExpression()), !dbg !3646
  %65 = icmp ult i32 %58, 41, !dbg !3647
  br i1 %65, label %69, label %66, !dbg !3647

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3647
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3647
  store i8* %68, i8** %10, align 8, !dbg !3647
  br label %74, !dbg !3647

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3647
  %71 = sext i32 %58 to i64, !dbg !3647
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3647
  %73 = add i32 %58, 8, !dbg !3647
  store i32 %73, i32* %8, align 8, !dbg !3647
  br label %74, !dbg !3647

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3647
  %78 = load i8*, i8** %77, align 8, !dbg !3647
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3650
  store i8* %78, i8** %79, align 8, !dbg !3651, !tbaa !799
  %80 = icmp eq i8* %78, null, !dbg !3652
  br i1 %80, label %30, label %81, !dbg !3653

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 4, metadata !3636, metadata !DIExpression()), !dbg !3646
  %82 = icmp ult i32 %75, 41, !dbg !3647
  br i1 %82, label %86, label %83, !dbg !3647

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3647
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3647
  store i8* %85, i8** %10, align 8, !dbg !3647
  br label %91, !dbg !3647

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3647
  %88 = sext i32 %75 to i64, !dbg !3647
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3647
  %90 = add i32 %75, 8, !dbg !3647
  store i32 %90, i32* %8, align 8, !dbg !3647
  br label %91, !dbg !3647

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3647
  %95 = load i8*, i8** %94, align 8, !dbg !3647
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3650
  store i8* %95, i8** %96, align 16, !dbg !3651, !tbaa !799
  %97 = icmp eq i8* %95, null, !dbg !3652
  br i1 %97, label %30, label %98, !dbg !3653

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 5, metadata !3636, metadata !DIExpression()), !dbg !3646
  %99 = icmp ult i32 %92, 41, !dbg !3647
  br i1 %99, label %103, label %100, !dbg !3647

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3647
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3647
  store i8* %102, i8** %10, align 8, !dbg !3647
  br label %108, !dbg !3647

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3647
  %105 = sext i32 %92 to i64, !dbg !3647
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3647
  %107 = add i32 %92, 8, !dbg !3647
  store i32 %107, i32* %8, align 8, !dbg !3647
  br label %108, !dbg !3647

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3647
  %111 = load i8*, i8** %110, align 8, !dbg !3647
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3650
  store i8* %111, i8** %112, align 8, !dbg !3651, !tbaa !799
  %113 = icmp eq i8* %111, null, !dbg !3652
  br i1 %113, label %30, label %114, !dbg !3653

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 6, metadata !3636, metadata !DIExpression()), !dbg !3646
  %115 = load i8*, i8** %10, align 8, !dbg !3647
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3647
  store i8* %116, i8** %10, align 8, !dbg !3647
  %117 = bitcast i8* %115 to i8**, !dbg !3647
  %118 = load i8*, i8** %117, align 8, !dbg !3647
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3650
  store i8* %118, i8** %119, align 16, !dbg !3651, !tbaa !799
  %120 = icmp eq i8* %118, null, !dbg !3652
  br i1 %120, label %30, label %121, !dbg !3653

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 7, metadata !3636, metadata !DIExpression()), !dbg !3646
  %122 = load i8*, i8** %10, align 8, !dbg !3647
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3647
  store i8* %123, i8** %10, align 8, !dbg !3647
  %124 = bitcast i8* %122 to i8**, !dbg !3647
  %125 = load i8*, i8** %124, align 8, !dbg !3647
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3650
  store i8* %125, i8** %126, align 8, !dbg !3651, !tbaa !799
  %127 = icmp eq i8* %125, null, !dbg !3652
  br i1 %127, label %30, label %128, !dbg !3653

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 8, metadata !3636, metadata !DIExpression()), !dbg !3646
  %129 = load i8*, i8** %10, align 8, !dbg !3647
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3647
  store i8* %130, i8** %10, align 8, !dbg !3647
  %131 = bitcast i8* %129 to i8**, !dbg !3647
  %132 = load i8*, i8** %131, align 8, !dbg !3647
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3650
  store i8* %132, i8** %133, align 16, !dbg !3651, !tbaa !799
  %134 = icmp eq i8* %132, null, !dbg !3652
  br i1 %134, label %30, label %135, !dbg !3653

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 9, metadata !3636, metadata !DIExpression()), !dbg !3646
  %136 = load i8*, i8** %10, align 8, !dbg !3647
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3647
  store i8* %137, i8** %10, align 8, !dbg !3647
  %138 = bitcast i8* %136 to i8**, !dbg !3647
  %139 = load i8*, i8** %138, align 8, !dbg !3647
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3650
  store i8* %139, i8** %140, align 8, !dbg !3651, !tbaa !799
  %141 = icmp eq i8* %139, null, !dbg !3652
  %142 = select i1 %141, i64 9, i64 10, !dbg !3653
  br label %30, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3657 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3661, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i8* %3, metadata !3664, metadata !DIExpression()), !dbg !3675
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3676
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3665, metadata !DIExpression()), !dbg !3677
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3678
  call void @llvm.va_start(i8* nonnull %6), !dbg !3678
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3679
  call void @llvm.va_end(i8* nonnull %6), !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3681
  ret void, !dbg !3681
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3682 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.121, i64 0, i64 0), i32 5) #10, !dbg !3683
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.122, i64 0, i64 0)) #10, !dbg !3683
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.123, i64 0, i64 0), i32 5) #10, !dbg !3684
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.124, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.125, i64 0, i64 0)) #10, !dbg !3684
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.126, i64 0, i64 0), i32 5) #10, !dbg !3685
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3685, !tbaa !799
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3685
  ret void, !dbg !3686
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3687 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %1, metadata !3692, metadata !DIExpression()), !dbg !3694
  %3 = udiv i64 9223372036854775807, %1, !dbg !3695
  %4 = icmp ult i64 %3, %0, !dbg !3695
  br i1 %4, label %5, label %6, !dbg !3697

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3698
  unreachable, !dbg !3698

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()) #10, !dbg !3707
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %8, metadata !3706, metadata !DIExpression()) #10, !dbg !3710
  %9 = icmp eq i8* %8, null, !dbg !3711
  %10 = icmp ne i64 %7, 0, !dbg !3713
  %11 = and i1 %10, %9, !dbg !3714
  br i1 %11, label %12, label %13, !dbg !3714

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3715
  unreachable, !dbg !3715

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3716
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3701 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3700, metadata !DIExpression()), !dbg !3717
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %2, metadata !3706, metadata !DIExpression()), !dbg !3719
  %3 = icmp eq i8* %2, null, !dbg !3720
  %4 = icmp ne i64 %0, 0, !dbg !3721
  %5 = and i1 %4, %3, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3722

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3723
  unreachable, !dbg !3723

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3724
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %2, metadata !3731, metadata !DIExpression()), !dbg !3734
  %4 = udiv i64 9223372036854775807, %2, !dbg !3735
  %5 = icmp ult i64 %4, %1, !dbg !3735
  br i1 %5, label %6, label %7, !dbg !3737

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3738
  unreachable, !dbg !3738

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %8, metadata !3745, metadata !DIExpression()) #10, !dbg !3748
  %9 = icmp eq i64 %8, 0, !dbg !3749
  %10 = icmp ne i8* %0, null, !dbg !3751
  %11 = and i1 %10, %9, !dbg !3752
  br i1 %11, label %12, label %13, !dbg !3752

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3753
  br label %19, !dbg !3755

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %14, metadata !3740, metadata !DIExpression()) #10, !dbg !3746
  %15 = icmp eq i8* %14, null, !dbg !3757
  %16 = icmp ne i64 %8, 0, !dbg !3759
  %17 = and i1 %16, %15, !dbg !3760
  br i1 %17, label %18, label %19, !dbg !3760

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3761
  unreachable, !dbg !3761

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3762
  ret i8* %20, !dbg !3763
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3741 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3745, metadata !DIExpression()), !dbg !3765
  %3 = icmp eq i64 %1, 0, !dbg !3766
  %4 = icmp ne i8* %0, null, !dbg !3767
  %5 = and i1 %4, %3, !dbg !3768
  br i1 %5, label %6, label %7, !dbg !3768

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3769
  br label %13, !dbg !3770

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %8, metadata !3740, metadata !DIExpression()), !dbg !3764
  %9 = icmp eq i8* %8, null, !dbg !3772
  %10 = icmp ne i64 %1, 0, !dbg !3773
  %11 = and i1 %10, %9, !dbg !3774
  br i1 %11, label %12, label %13, !dbg !3774

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3775
  unreachable, !dbg !3775

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3776
  ret i8* %14, !dbg !3777
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !301 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64* %1, metadata !307, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %2, metadata !308, metadata !DIExpression()), !dbg !3780
  %4 = load i64, i64* %1, align 8, !dbg !3781, !tbaa !2633
  call void @llvm.dbg.value(metadata i64 %4, metadata !309, metadata !DIExpression()), !dbg !3782
  %5 = icmp eq i8* %0, null, !dbg !3783
  br i1 %5, label %6, label %20, !dbg !3785

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3786
  br i1 %7, label %8, label %13, !dbg !3789

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %9, metadata !309, metadata !DIExpression()), !dbg !3782
  %10 = icmp ugt i64 %2, 128, !dbg !3792
  %11 = zext i1 %10 to i64, !dbg !3792
  %12 = add nuw nsw i64 %9, %11, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %12, metadata !309, metadata !DIExpression()), !dbg !3782
  br label %13, !dbg !3794

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3795
  call void @llvm.dbg.value(metadata i64 %14, metadata !309, metadata !DIExpression()), !dbg !3782
  %15 = udiv i64 9223372036854775807, %2, !dbg !3796
  %16 = icmp ult i64 %15, %14, !dbg !3796
  br i1 %16, label %19, label %17, !dbg !3798

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !309, metadata !DIExpression()), !dbg !3782
  store i64 %14, i64* %1, align 8, !dbg !3799, !tbaa !2633
  %18 = mul i64 %14, %2, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #10, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %28, metadata !3745, metadata !DIExpression()) #10, !dbg !3803
  br label %31, !dbg !3804

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3805
  unreachable, !dbg !3805

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3806
  %22 = icmp ugt i64 %21, %4, !dbg !3809
  br i1 %22, label %24, label %23, !dbg !3810

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3811
  unreachable, !dbg !3811

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3812
  %26 = add i64 %4, 1, !dbg !3813
  %27 = add i64 %26, %25, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %27, metadata !309, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %27, metadata !309, metadata !DIExpression()), !dbg !3782
  store i64 %27, i64* %1, align 8, !dbg !3799, !tbaa !2633
  %28 = mul i64 %27, %2, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #10, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %28, metadata !3745, metadata !DIExpression()) #10, !dbg !3803
  %29 = icmp eq i64 %28, 0, !dbg !3815
  br i1 %29, label %30, label %31, !dbg !3804

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3816
  br label %38, !dbg !3817

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %33, metadata !3740, metadata !DIExpression()) #10, !dbg !3801
  %34 = icmp eq i8* %33, null, !dbg !3819
  %35 = icmp ne i64 %32, 0, !dbg !3820
  %36 = and i1 %35, %34, !dbg !3821
  br i1 %36, label %37, label %38, !dbg !3821

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3822
  unreachable, !dbg !3822

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3823
  ret i8* %39, !dbg !3824
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3825 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3827, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %0, metadata !3700, metadata !DIExpression()) #10, !dbg !3829
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %2, metadata !3706, metadata !DIExpression()) #10, !dbg !3832
  %3 = icmp eq i8* %2, null, !dbg !3833
  %4 = icmp ne i64 %0, 0, !dbg !3834
  %5 = and i1 %4, %3, !dbg !3835
  br i1 %5, label %6, label %7, !dbg !3835

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3836
  unreachable, !dbg !3836

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3837
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64* %1, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()) #10, !dbg !3846
  call void @llvm.dbg.value(metadata i64* %1, metadata !307, metadata !DIExpression()) #10, !dbg !3848
  call void @llvm.dbg.value(metadata i64 1, metadata !308, metadata !DIExpression()) #10, !dbg !3849
  %3 = load i64, i64* %1, align 8, !dbg !3850, !tbaa !2633
  call void @llvm.dbg.value(metadata i64 %3, metadata !309, metadata !DIExpression()) #10, !dbg !3851
  %4 = icmp eq i8* %0, null, !dbg !3852
  br i1 %4, label %5, label %12, !dbg !3853

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3854
  br i1 %6, label %9, label %7, !dbg !3855

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !309, metadata !DIExpression()) #10, !dbg !3851
  %8 = icmp slt i64 %3, 0, !dbg !3856
  br i1 %8, label %11, label %9, !dbg !3857

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !309, metadata !DIExpression()) #10, !dbg !3851
  store i64 %10, i64* %1, align 8, !dbg !3858, !tbaa !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #10, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %18, metadata !3745, metadata !DIExpression()) #10, !dbg !3861
  br label %21, !dbg !3862

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3863
  unreachable, !dbg !3863

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3864
  br i1 %13, label %15, label %14, !dbg !3865

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3866
  unreachable, !dbg !3866

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3867
  %17 = add i64 %3, 1, !dbg !3868
  %18 = add i64 %17, %16, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %18, metadata !309, metadata !DIExpression()) #10, !dbg !3851
  call void @llvm.dbg.value(metadata i64 %18, metadata !309, metadata !DIExpression()) #10, !dbg !3851
  store i64 %18, i64* %1, align 8, !dbg !3858, !tbaa !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #10, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %18, metadata !3745, metadata !DIExpression()) #10, !dbg !3861
  %19 = icmp eq i64 %18, 0, !dbg !3870
  br i1 %19, label %20, label %21, !dbg !3862

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3871
  br label %28, !dbg !3872

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3873
  call void @llvm.dbg.value(metadata i8* %23, metadata !3740, metadata !DIExpression()) #10, !dbg !3859
  %24 = icmp eq i8* %23, null, !dbg !3874
  %25 = icmp ne i64 %22, 0, !dbg !3875
  %26 = and i1 %25, %24, !dbg !3876
  br i1 %26, label %27, label %28, !dbg !3876

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3877
  unreachable, !dbg !3877

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3878
  ret i8* %29, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3880 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %0, metadata !3700, metadata !DIExpression()) #10, !dbg !3884
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %2, metadata !3706, metadata !DIExpression()) #10, !dbg !3887
  %3 = icmp eq i8* %2, null, !dbg !3888
  %4 = icmp ne i64 %0, 0, !dbg !3889
  %5 = and i1 %4, %3, !dbg !3890
  br i1 %5, label %6, label %7, !dbg !3890

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3891
  unreachable, !dbg !3891

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3892
  ret i8* %2, !dbg !3893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !3900
  %3 = udiv i64 9223372036854775807, %1, !dbg !3901
  %4 = icmp ult i64 %3, %0, !dbg !3901
  br i1 %4, label %8, label %5, !dbg !3903

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %6, metadata !3898, metadata !DIExpression()), !dbg !3905
  %7 = icmp eq i8* %6, null, !dbg !3906
  br i1 %7, label %8, label %9, !dbg !3907

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3908
  unreachable, !dbg !3908

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3916, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i64 %1, metadata !3917, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()) #10, !dbg !3920
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %3, metadata !3706, metadata !DIExpression()) #10, !dbg !3923
  %4 = icmp eq i8* %3, null, !dbg !3924
  %5 = icmp ne i64 %1, 0, !dbg !3925
  %6 = and i1 %5, %4, !dbg !3926
  br i1 %6, label %7, label %8, !dbg !3926

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3927
  unreachable, !dbg !3927

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3928
  ret i8* %3, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3932, metadata !DIExpression()), !dbg !3933
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3934
  %3 = add i64 %2, 1, !dbg !3935
  call void @llvm.dbg.value(metadata i8* %0, metadata !3916, metadata !DIExpression()) #10, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %3, metadata !3917, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata i64 %3, metadata !3700, metadata !DIExpression()) #10, !dbg !3939
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %4, metadata !3706, metadata !DIExpression()) #10, !dbg !3942
  %5 = icmp eq i8* %4, null, !dbg !3943
  %6 = icmp ne i64 %3, 0, !dbg !3944
  %7 = and i1 %6, %5, !dbg !3945
  br i1 %7, label %8, label %9, !dbg !3945

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3946
  unreachable, !dbg !3946

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3947
  ret i8* %4, !dbg !3948
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3949 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3951, !tbaa !908
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #10, !dbg !3952
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #10, !dbg !3953
  tail call void @abort() #15, !dbg !3954
  unreachable, !dbg !3954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #7 !dbg !3955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3958, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 %1, metadata !3959, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32** %2, metadata !3960, metadata !DIExpression()), !dbg !3964
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %4, metadata !3961, metadata !DIExpression()), !dbg !3966
  %5 = icmp eq i32 %4, -1, !dbg !3967
  br i1 %5, label %6, label %11, !dbg !3969

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3970
  %8 = load i32, i32* %7, align 4, !dbg !3970, !tbaa !908
  %9 = icmp eq i32 %8, 12, !dbg !3971
  br i1 %9, label %10, label %11, !dbg !3972

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3973
  unreachable, !dbg !3973

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3975 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8** %1, metadata !3983, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %2, metadata !3984, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64* %3, metadata !3985, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8* %4, metadata !3986, metadata !DIExpression()), !dbg !4004
  %7 = bitcast i8** %6 to i8*, !dbg !4005
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4005
  call void @llvm.dbg.value(metadata i32 0, metadata !3990, metadata !DIExpression()), !dbg !4006
  %8 = icmp ult i32 %2, 37, !dbg !4007
  br i1 %8, label %10, label %9, !dbg !4007

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.145, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.146, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !4007
  unreachable, !dbg !4007

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4010
  call void @llvm.dbg.value(metadata i8** %25, metadata !3988, metadata !DIExpression()), !dbg !4011
  %12 = tail call i32* @__errno_location() #17, !dbg !4012
  store i32 0, i32* %12, align 4, !dbg !4013, !tbaa !908
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i8* %0, metadata !3994, metadata !DIExpression(DW_OP_deref)), !dbg !4015
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4016
  %14 = load i16*, i16** %13, align 8, !tbaa !799
  br label %15, !dbg !4017

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4018
  %17 = load i8, i8* %16, align 1, !dbg !4018, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %17, metadata !3994, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %16, metadata !3991, metadata !DIExpression()), !dbg !4014
  %18 = zext i8 %17 to i64, !dbg !4016
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4016
  %20 = load i16, i16* %19, align 2, !dbg !4016, !tbaa !2008
  %21 = and i16 %20, 8192, !dbg !4016
  %22 = icmp eq i16 %21, 0, !dbg !4017
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %23, metadata !3991, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i8* %23, metadata !3994, metadata !DIExpression(DW_OP_deref)), !dbg !4015
  br i1 %22, label %24, label %15, !dbg !4017, !llvm.loop !4020

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4010
  %26 = icmp eq i8 %17, 45, !dbg !4022
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #10, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %28, metadata !3989, metadata !DIExpression()), !dbg !4025
  %29 = load i8*, i8** %25, align 8, !dbg !4026, !tbaa !799
  %30 = icmp eq i8* %29, %0, !dbg !4028
  br i1 %30, label %31, label %40, !dbg !4029

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4030
  br i1 %32, label %265, label %33, !dbg !4033

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4034, !tbaa !950
  %35 = icmp eq i8 %34, 0, !dbg !4034
  br i1 %35, label %265, label %36, !dbg !4035

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4034
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4036
  %39 = icmp eq i8* %38, null, !dbg !4036
  br i1 %39, label %265, label %47, !dbg !4037

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4038, !tbaa !908
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4040

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3990, metadata !DIExpression()), !dbg !4006
  br label %43, !dbg !4041

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4043
  call void @llvm.dbg.value(metadata i32 %44, metadata !3990, metadata !DIExpression()), !dbg !4006
  %45 = icmp eq i8* %4, null, !dbg !4044
  br i1 %45, label %46, label %47, !dbg !4046

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3989, metadata !DIExpression()), !dbg !4025
  store i64 %28, i64* %3, align 8, !dbg !4047, !tbaa !2633
  br label %265, !dbg !4049

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4050, !tbaa !950
  %51 = sext i8 %50 to i32, !dbg !4050
  %52 = icmp eq i8 %50, 0, !dbg !4051
  br i1 %52, label %262, label %53, !dbg !4052

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3995, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32 1, metadata !3998, metadata !DIExpression()), !dbg !4054
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4055
  %55 = icmp eq i8* %54, null, !dbg !4055
  br i1 %55, label %56, label %58, !dbg !4057

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3989, metadata !DIExpression()), !dbg !4025
  store i64 %49, i64* %3, align 8, !dbg !4058, !tbaa !2633
  %57 = or i32 %48, 2, !dbg !4060
  br label %265, !dbg !4061

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
  ], !dbg !4062

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4063
  %61 = icmp eq i8* %60, null, !dbg !4063
  br i1 %61, label %72, label %62, !dbg !4066

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4067
  %64 = load i8, i8* %63, align 1, !dbg !4067, !tbaa !950
  %65 = sext i8 %64 to i32, !dbg !4067
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4068

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4069
  %68 = load i8, i8* %67, align 1, !dbg !4069, !tbaa !950
  %69 = icmp eq i8 %68, 66, !dbg !4072
  %70 = select i1 %69, i64 3, i64 1, !dbg !4073
  br label %72, !dbg !4073

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3995, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32 2, metadata !3998, metadata !DIExpression()), !dbg !4054
  br label %72, !dbg !4074

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
  ], !dbg !4075

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4076, metadata !DIExpression()), !dbg !4082
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4085
  %77 = shl i64 %49, 9, !dbg !4087
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4088
  %79 = zext i1 %76 to i32, !dbg !4088
  call void @llvm.dbg.value(metadata i32 %79, metadata !3999, metadata !DIExpression()), !dbg !4089
  br label %253, !dbg !4090

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4076, metadata !DIExpression()), !dbg !4091
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4093
  %82 = shl i64 %49, 10, !dbg !4094
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4095
  %84 = zext i1 %81 to i32, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %84, metadata !3999, metadata !DIExpression()), !dbg !4089
  br label %253, !dbg !4096

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4107
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4105
  %87 = icmp ult i64 %86, %49, !dbg !4108
  %88 = mul i64 %49, %73, !dbg !4110
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4111
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4105
  %90 = icmp ult i64 %86, %89, !dbg !4108
  %91 = mul i64 %89, %73, !dbg !4110
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4111
  %93 = or i1 %87, %90, !dbg !4112
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4105
  %94 = icmp ult i64 %86, %92, !dbg !4108
  %95 = mul i64 %92, %73, !dbg !4110
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4111
  %97 = or i1 %93, %94, !dbg !4112
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4105
  %98 = icmp ult i64 %86, %96, !dbg !4108
  %99 = mul i64 %96, %73, !dbg !4110
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4111
  %101 = or i1 %97, %98, !dbg !4112
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4105
  %102 = icmp ult i64 %86, %100, !dbg !4108
  %103 = mul i64 %100, %73, !dbg !4110
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4111
  %105 = or i1 %101, %102, !dbg !4112
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4105
  %106 = icmp ult i64 %86, %104, !dbg !4108
  %107 = mul i64 %104, %73, !dbg !4110
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4111
  %109 = or i1 %105, %106, !dbg !4112
  %110 = zext i1 %109 to i32, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %110, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4105
  br label %253, !dbg !4113

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4116
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4114
  %113 = icmp ult i64 %112, %49, !dbg !4117
  %114 = mul i64 %49, %73, !dbg !4119
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4120
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4114
  %116 = icmp ult i64 %112, %115, !dbg !4117
  %117 = mul i64 %115, %73, !dbg !4119
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4120
  %119 = or i1 %113, %116, !dbg !4121
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4114
  %120 = icmp ult i64 %112, %118, !dbg !4117
  %121 = mul i64 %118, %73, !dbg !4119
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4120
  %123 = or i1 %119, %120, !dbg !4121
  %124 = zext i1 %123 to i32, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %124, metadata !4104, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4114
  br label %253, !dbg !4113

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4124
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 undef, metadata !4097, metadata !DIExpression()), !dbg !4122
  %127 = icmp ult i64 %126, %49, !dbg !4125
  %128 = mul i64 %49, %73, !dbg !4127
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4128
  %130 = zext i1 %127 to i32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %130, metadata !4104, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 undef, metadata !4097, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4122
  br label %253, !dbg !4113

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4131
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4129
  %133 = icmp ult i64 %132, %49, !dbg !4132
  %134 = mul i64 %49, %73, !dbg !4134
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4135
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4129
  %136 = icmp ult i64 %132, %135, !dbg !4132
  %137 = mul i64 %135, %73, !dbg !4134
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4135
  %139 = or i1 %133, %136, !dbg !4136
  %140 = zext i1 %139 to i32, !dbg !4136
  call void @llvm.dbg.value(metadata i32 %140, metadata !4104, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4129
  br label %253, !dbg !4113

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4139
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4137
  %143 = icmp ult i64 %142, %49, !dbg !4140
  %144 = mul i64 %49, %73, !dbg !4142
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4143
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4137
  %146 = icmp ult i64 %142, %145, !dbg !4140
  %147 = mul i64 %145, %73, !dbg !4142
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4143
  %149 = or i1 %143, %146, !dbg !4144
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4137
  %150 = icmp ult i64 %142, %148, !dbg !4140
  %151 = mul i64 %148, %73, !dbg !4142
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4143
  %153 = or i1 %149, %150, !dbg !4144
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4137
  %154 = icmp ult i64 %142, %152, !dbg !4140
  %155 = mul i64 %152, %73, !dbg !4142
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4143
  %157 = or i1 %153, %154, !dbg !4144
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4137
  %158 = icmp ult i64 %142, %156, !dbg !4140
  %159 = mul i64 %156, %73, !dbg !4142
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4143
  %161 = or i1 %157, %158, !dbg !4144
  %162 = zext i1 %161 to i32, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %162, metadata !4104, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4137
  br label %253, !dbg !4113

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4147
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4145
  %165 = icmp ult i64 %164, %49, !dbg !4148
  %166 = mul i64 %49, %73, !dbg !4150
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4151
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4145
  %168 = icmp ult i64 %164, %167, !dbg !4148
  %169 = mul i64 %167, %73, !dbg !4150
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4151
  %171 = or i1 %165, %168, !dbg !4152
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4145
  %172 = icmp ult i64 %164, %170, !dbg !4148
  %173 = mul i64 %170, %73, !dbg !4150
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4151
  %175 = or i1 %171, %172, !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4145
  %176 = icmp ult i64 %164, %174, !dbg !4148
  %177 = mul i64 %174, %73, !dbg !4150
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4151
  %179 = or i1 %175, %176, !dbg !4152
  %180 = zext i1 %179 to i32, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %180, metadata !4104, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4145
  br label %253, !dbg !4113

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4076, metadata !DIExpression()), !dbg !4153
  %182 = icmp slt i64 %49, 0, !dbg !4155
  %183 = shl i64 %49, 1, !dbg !4156
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4157
  %185 = lshr i64 %49, 63, !dbg !4157
  %186 = trunc i64 %185 to i32, !dbg !4157
  call void @llvm.dbg.value(metadata i32 %186, metadata !3999, metadata !DIExpression()), !dbg !4089
  br label %253, !dbg !4158

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4161
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i32 8, metadata !4097, metadata !DIExpression()), !dbg !4159
  %189 = icmp ult i64 %188, %49, !dbg !4162
  %190 = mul i64 %49, %73, !dbg !4164
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4165
  call void @llvm.dbg.value(metadata i32 7, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 7, metadata !4097, metadata !DIExpression()), !dbg !4159
  %192 = icmp ult i64 %188, %191, !dbg !4162
  %193 = mul i64 %191, %73, !dbg !4164
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4165
  %195 = or i1 %189, %192, !dbg !4166
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4159
  %196 = icmp ult i64 %188, %194, !dbg !4162
  %197 = mul i64 %194, %73, !dbg !4164
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4165
  %199 = or i1 %195, %196, !dbg !4166
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4159
  %200 = icmp ult i64 %188, %198, !dbg !4162
  %201 = mul i64 %198, %73, !dbg !4164
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4165
  %203 = or i1 %199, %200, !dbg !4166
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4159
  %204 = icmp ult i64 %188, %202, !dbg !4162
  %205 = mul i64 %202, %73, !dbg !4164
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4165
  %207 = or i1 %203, %204, !dbg !4166
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4159
  %208 = icmp ult i64 %188, %206, !dbg !4162
  %209 = mul i64 %206, %73, !dbg !4164
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4165
  %211 = or i1 %207, %208, !dbg !4166
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4159
  %212 = icmp ult i64 %188, %210, !dbg !4162
  %213 = mul i64 %210, %73, !dbg !4164
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4165
  %215 = or i1 %211, %212, !dbg !4166
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4159
  %216 = icmp ult i64 %188, %214, !dbg !4162
  %217 = mul i64 %214, %73, !dbg !4164
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4165
  %219 = or i1 %215, %216, !dbg !4166
  %220 = zext i1 %219 to i32, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %220, metadata !4104, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4159
  br label %253, !dbg !4113

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4169
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4104, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 7, metadata !4097, metadata !DIExpression()), !dbg !4167
  %223 = icmp ult i64 %222, %49, !dbg !4170
  %224 = mul i64 %49, %73, !dbg !4172
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4173
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 6, metadata !4097, metadata !DIExpression()), !dbg !4167
  %226 = icmp ult i64 %222, %225, !dbg !4170
  %227 = mul i64 %225, %73, !dbg !4172
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4173
  %229 = or i1 %223, %226, !dbg !4174
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 5, metadata !4097, metadata !DIExpression()), !dbg !4167
  %230 = icmp ult i64 %222, %228, !dbg !4170
  %231 = mul i64 %228, %73, !dbg !4172
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4173
  %233 = or i1 %229, %230, !dbg !4174
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 4, metadata !4097, metadata !DIExpression()), !dbg !4167
  %234 = icmp ult i64 %222, %232, !dbg !4170
  %235 = mul i64 %232, %73, !dbg !4172
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4173
  %237 = or i1 %233, %234, !dbg !4174
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 3, metadata !4097, metadata !DIExpression()), !dbg !4167
  %238 = icmp ult i64 %222, %236, !dbg !4170
  %239 = mul i64 %236, %73, !dbg !4172
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4173
  %241 = or i1 %237, %238, !dbg !4174
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 2, metadata !4097, metadata !DIExpression()), !dbg !4167
  %242 = icmp ult i64 %222, %240, !dbg !4170
  %243 = mul i64 %240, %73, !dbg !4172
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4173
  %245 = or i1 %241, %242, !dbg !4174
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 1, metadata !4097, metadata !DIExpression()), !dbg !4167
  %246 = icmp ult i64 %222, %244, !dbg !4170
  %247 = mul i64 %244, %73, !dbg !4172
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4173
  %249 = or i1 %245, %246, !dbg !4174
  %250 = zext i1 %249 to i32, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %250, metadata !4104, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4167
  br label %253, !dbg !4113

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3989, metadata !DIExpression()), !dbg !4025
  store i64 %49, i64* %3, align 8, !dbg !4175, !tbaa !2633
  %252 = or i32 %48, 2, !dbg !4176
  br label %265, !dbg !4177

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4178
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4179
  call void @llvm.dbg.value(metadata i32 %255, metadata !3999, metadata !DIExpression()), !dbg !4089
  %256 = or i32 %255, %48, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %256, metadata !3990, metadata !DIExpression()), !dbg !4006
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4180
  store i8* %257, i8** %25, align 8, !dbg !4180, !tbaa !799
  %258 = load i8, i8* %257, align 1, !dbg !4181, !tbaa !950
  %259 = icmp eq i8 %258, 0, !dbg !4181
  %260 = or i32 %256, 2, !dbg !4183
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4184
  call void @llvm.dbg.value(metadata i32 %261, metadata !3990, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %261, metadata !3990, metadata !DIExpression()), !dbg !4006
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4185
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4006
  call void @llvm.dbg.value(metadata i32 %264, metadata !3990, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %263, metadata !3989, metadata !DIExpression()), !dbg !4025
  store i64 %263, i64* %3, align 8, !dbg !4186, !tbaa !2633
  br label %265, !dbg !4187

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4189
  ret i32 %266, !dbg !4189
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4193, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 %1, metadata !4194, metadata !DIExpression()), !dbg !4200
  %3 = icmp eq i64 %0, 0, !dbg !4201
  %4 = icmp eq i64 %1, 0, !dbg !4202
  %5 = or i1 %3, %4, !dbg !4203
  br i1 %5, label %12, label %6, !dbg !4203

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %7, metadata !4196, metadata !DIExpression()), !dbg !4205
  %8 = udiv i64 %7, %1, !dbg !4206
  %9 = icmp eq i64 %8, %0, !dbg !4208
  br i1 %9, label %12, label %10, !dbg !4209

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4210
  store i32 12, i32* %11, align 4, !dbg !4212, !tbaa !908
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4193, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 %13, metadata !4194, metadata !DIExpression()), !dbg !4200
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4213
  call void @llvm.dbg.value(metadata i8* %15, metadata !4195, metadata !DIExpression()), !dbg !4214
  br label %16, !dbg !4215

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4216
  ret i8* %17, !dbg !4217
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4218 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4235, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i8* %1, metadata !4236, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %2, metadata !4237, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4238, metadata !DIExpression()), !dbg !4247
  %6 = bitcast i32* %5 to i8*, !dbg !4248
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4248
  %7 = icmp eq i32* %0, null, !dbg !4249
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4251
  call void @llvm.dbg.value(metadata i32* %8, metadata !4235, metadata !DIExpression()), !dbg !4244
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4252
  call void @llvm.dbg.value(metadata i64 %9, metadata !4239, metadata !DIExpression()), !dbg !4253
  %10 = icmp ugt i64 %9, -3, !dbg !4254
  %11 = icmp ne i64 %2, 0, !dbg !4255
  %12 = and i1 %11, %10, !dbg !4256
  br i1 %12, label %13, label %18, !dbg !4256

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4257
  br i1 %14, label %18, label %15, !dbg !4258

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4259, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %16, metadata !4241, metadata !DIExpression()), !dbg !4260
  %17 = zext i8 %16 to i32, !dbg !4261
  store i32 %17, i32* %8, align 4, !dbg !4262, !tbaa !908
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4263
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4264
  ret i64 %19, !dbg !4264
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4265 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4304, metadata !DIExpression()), !dbg !4309
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4310
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4311, metadata !DIExpression()), !dbg !4314
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4316
  %4 = load i32, i32* %3, align 8, !dbg !4316, !tbaa !4317
  %5 = and i32 %4, 32, !dbg !4316
  %6 = icmp eq i32 %5, 0, !dbg !4318
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4319
  %8 = icmp ne i32 %7, 0, !dbg !4320
  br i1 %6, label %9, label %19, !dbg !4321

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4323
  %11 = xor i1 %8, true, !dbg !4324
  %12 = or i1 %10, %11, !dbg !4324
  %13 = sext i1 %8 to i32, !dbg !4324
  br i1 %12, label %22, label %14, !dbg !4324

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4325
  %16 = load i32, i32* %15, align 4, !dbg !4325, !tbaa !908
  %17 = icmp ne i32 %16, 9, !dbg !4326
  %18 = sext i1 %17 to i32, !dbg !4327
  br label %22, !dbg !4327

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4328

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4330
  store i32 0, i32* %21, align 4, !dbg !4332, !tbaa !908
  br label %22, !dbg !4330

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4333
  ret i32 %23, !dbg !4334
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4340, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i8 1, metadata !4341, metadata !DIExpression()), !dbg !4344
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %2, metadata !4342, metadata !DIExpression()), !dbg !4346
  %3 = icmp eq i8* %2, null, !dbg !4347
  br i1 %3, label %11, label %4, !dbg !4349

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0)) #14, !dbg !4350
  %6 = icmp eq i32 %5, 0, !dbg !4355
  br i1 %6, label %10, label %7, !dbg !4356

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #14, !dbg !4357
  %9 = icmp eq i32 %8, 0, !dbg !4358
  br i1 %9, label %10, label %11, !dbg !4359

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4341, metadata !DIExpression()), !dbg !4344
  br label %11, !dbg !4360

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4362 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %1, metadata !4367, metadata !DIExpression()), !dbg !4369
  %2 = icmp eq i8* %1, null, !dbg !4370
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %1, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %3, metadata !4367, metadata !DIExpression()), !dbg !4369
  %4 = load i8, i8* %3, align 1, !dbg !4373, !tbaa !950
  %5 = icmp eq i8 %4, 0, !dbg !4377
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %3, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %6, metadata !4367, metadata !DIExpression()), !dbg !4369
  ret i8* %6, !dbg !4379
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #7 !dbg !724 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !729, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i32 %1, metadata !730, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i32** %2, metadata !731, metadata !DIExpression()), !dbg !4382
  %5 = bitcast i32* %4 to i8*, !dbg !4383
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !4383
  %6 = icmp eq i8* %0, null, !dbg !4384
  br i1 %6, label %43, label %7, !dbg !4385

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !732, metadata !DIExpression()), !dbg !4386
  store i32 10, i32* %4, align 4, !dbg !4387, !tbaa !908
  call void @llvm.dbg.value(metadata i32* null, metadata !4388, metadata !DIExpression()) #10, !dbg !4394
  call void @llvm.dbg.value(metadata i64 10, metadata !4393, metadata !DIExpression()) #10, !dbg !4396
  %8 = tail call i8* @malloc(i64 40), !dbg !4397
  call void @llvm.dbg.value(metadata i8* %8, metadata !734, metadata !DIExpression()), !dbg !4398
  %9 = icmp eq i8* %8, null, !dbg !4399
  br i1 %9, label %146, label %10, !dbg !4401

; <label>:10:                                     ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !4402
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ], !dbg !4403
  %13 = bitcast i8* %12 to i32*, !dbg !4403
  call void @llvm.dbg.value(metadata i32* %13, metadata !734, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %11, metadata !732, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 %11, metadata !739, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32* %4, metadata !732, metadata !DIExpression(DW_OP_deref)), !dbg !4386
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #10, !dbg !4405
  call void @llvm.dbg.value(metadata i32 %14, metadata !733, metadata !DIExpression()), !dbg !4406
  %15 = icmp slt i32 %14, 0, !dbg !4407
  %16 = load i32, i32* %4, align 4, !dbg !4409, !tbaa !908
  %17 = icmp eq i32 %11, %16, !dbg !4410
  %18 = and i1 %15, %17, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %16, metadata !732, metadata !DIExpression()), !dbg !4386
  br i1 %18, label %19, label %21, !dbg !4411

; <label>:19:                                     ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !4412
  call void @llvm.dbg.value(metadata i32 %20, metadata !732, metadata !DIExpression()), !dbg !4386
  store i32 %20, i32* %4, align 4, !dbg !4412, !tbaa !908
  br label %21, !dbg !4413

; <label>:21:                                     ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4414
  call void @llvm.dbg.value(metadata i32 %22, metadata !732, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32* %13, metadata !4388, metadata !DIExpression()) #10, !dbg !4415
  %23 = icmp slt i32 %22, 0, !dbg !4417
  br i1 %23, label %24, label %26, !dbg !4419

; <label>:24:                                     ; preds = %21
  %25 = tail call i32* @__errno_location() #17, !dbg !4420
  store i32 12, i32* %25, align 4, !dbg !4422, !tbaa !908
  call void @llvm.dbg.value(metadata i8* %29, metadata !735, metadata !DIExpression()), !dbg !4423
  br label %33, !dbg !4424

; <label>:26:                                     ; preds = %21
  %27 = sext i32 %22 to i64, !dbg !4414
  call void @llvm.dbg.value(metadata i64 %27, metadata !4393, metadata !DIExpression()) #10, !dbg !4425
  %28 = shl nsw i64 %27, 2, !dbg !4426
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #10, !dbg !4427
  %30 = icmp eq i8* %29, null, !dbg !4428
  br i1 %30, label %31, label %36, !dbg !4424

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #17, !dbg !4429
  br label %33, !dbg !4429

; <label>:33:                                     ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4429
  %35 = load i32, i32* %34, align 4, !dbg !4429, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %35, metadata !740, metadata !DIExpression()), !dbg !4430
  call void @free(i8* nonnull %12) #10, !dbg !4431
  store i32 %35, i32* %34, align 4, !dbg !4432, !tbaa !908
  br label %146

; <label>:36:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !735, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i8* %29, metadata !734, metadata !DIExpression()), !dbg !4398
  %37 = icmp sgt i32 %14, -1, !dbg !4433
  br i1 %37, label %40, label %38, !dbg !4435

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !4402, !tbaa !908
  br label %10, !dbg !4435

; <label>:40:                                     ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !4436
  store i8* %29, i8** %41, align 8, !dbg !4436, !tbaa !799
  %42 = load i32, i32* %4, align 4, !dbg !4438, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %42, metadata !732, metadata !DIExpression()), !dbg !4386
  br label %146, !dbg !4439

; <label>:43:                                     ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !4440
  call void @llvm.dbg.value(metadata i32 %44, metadata !732, metadata !DIExpression()), !dbg !4386
  store i32 %44, i32* %4, align 4, !dbg !4441, !tbaa !908
  %45 = icmp slt i32 %44, 0, !dbg !4442
  br i1 %45, label %46, label %58, !dbg !4444

; <label>:46:                                     ; preds = %43
  %47 = tail call i32* @__errno_location() #17, !dbg !4445
  %48 = load i32, i32* %47, align 4, !dbg !4445, !tbaa !908
  %49 = icmp eq i32 %48, 38, !dbg !4448
  br i1 %49, label %50, label %146, !dbg !4449

; <label>:50:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !4388, metadata !DIExpression()) #10, !dbg !4450
  call void @llvm.dbg.value(metadata i64 1, metadata !4393, metadata !DIExpression()) #10, !dbg !4452
  %51 = tail call i8* @malloc(i64 4), !dbg !4453
  %52 = icmp eq i8* %51, null, !dbg !4454
  br i1 %52, label %146, label %53, !dbg !4455

; <label>:53:                                     ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !4453
  call void @llvm.dbg.value(metadata i32* %54, metadata !734, metadata !DIExpression()), !dbg !4398
  %55 = bitcast i32** %2 to i8**, !dbg !4456
  store i8* %51, i8** %55, align 8, !dbg !4456, !tbaa !799
  store i32 %1, i32* %54, align 4, !dbg !4458, !tbaa !908
  %56 = icmp ne i32 %1, -1, !dbg !4459
  %57 = zext i1 %56 to i32, !dbg !4459
  br label %146, !dbg !4460

; <label>:58:                                     ; preds = %43
  %59 = icmp eq i32 %44, 0, !dbg !4461
  %60 = icmp ne i32 %1, -1, !dbg !4463
  %61 = or i1 %60, %59, !dbg !4464
  br i1 %61, label %62, label %67, !dbg !4464

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !732, metadata !DIExpression()), !dbg !4386
  %63 = add nsw i32 %44, 1, !dbg !4465
  call void @llvm.dbg.value(metadata i32 %63, metadata !732, metadata !DIExpression()), !dbg !4386
  store i32 %63, i32* %4, align 4, !dbg !4465, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %63, metadata !732, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32* null, metadata !4388, metadata !DIExpression()) #10, !dbg !4466
  %64 = icmp slt i32 %44, -1, !dbg !4468
  br i1 %64, label %65, label %67, !dbg !4469

; <label>:65:                                     ; preds = %62
  %66 = tail call i32* @__errno_location() #17, !dbg !4470
  store i32 12, i32* %66, align 4, !dbg !4471, !tbaa !908
  call void @llvm.dbg.value(metadata i32* %72, metadata !734, metadata !DIExpression()), !dbg !4398
  br label %146, !dbg !4472

; <label>:67:                                     ; preds = %58, %62
  %68 = phi i32 [ %63, %62 ], [ %44, %58 ]
  %69 = sext i32 %68 to i64, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %69, metadata !4393, metadata !DIExpression()) #10, !dbg !4474
  %70 = shl nsw i64 %69, 2, !dbg !4475
  %71 = tail call i8* @malloc(i64 %70), !dbg !4476
  %72 = bitcast i8* %71 to i32*, !dbg !4476
  call void @llvm.dbg.value(metadata i32* %72, metadata !734, metadata !DIExpression()), !dbg !4398
  %73 = icmp eq i8* %71, null, !dbg !4477
  br i1 %73, label %146, label %74, !dbg !4472

; <label>:74:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i32 %63, metadata !732, metadata !DIExpression()), !dbg !4386
  %75 = zext i1 %60 to i32, !dbg !4479
  %76 = sub nsw i32 %68, %75, !dbg !4480
  %77 = zext i1 %60 to i64, !dbg !4481
  %78 = getelementptr inbounds i32, i32* %72, i64 %77, !dbg !4481
  %79 = tail call i32 @getgroups(i32 %76, i32* nonnull %78) #10, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %79, metadata !733, metadata !DIExpression()), !dbg !4406
  %80 = icmp slt i32 %79, 0, !dbg !4483
  br i1 %80, label %81, label %84, !dbg !4484

; <label>:81:                                     ; preds = %74
  %82 = tail call i32* @__errno_location() #17, !dbg !4485
  %83 = load i32, i32* %82, align 4, !dbg !4485, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %83, metadata !743, metadata !DIExpression()), !dbg !4486
  tail call void @free(i8* nonnull %71) #10, !dbg !4487
  store i32 %83, i32* %82, align 4, !dbg !4488, !tbaa !908
  br label %146

; <label>:84:                                     ; preds = %74
  br i1 %60, label %85, label %87, !dbg !4489

; <label>:85:                                     ; preds = %84
  store i32 %1, i32* %72, align 4, !dbg !4491, !tbaa !908
  %86 = add nsw i32 %79, 1, !dbg !4493
  call void @llvm.dbg.value(metadata i32 %86, metadata !733, metadata !DIExpression()), !dbg !4406
  br label %87, !dbg !4494

; <label>:87:                                     ; preds = %84, %85
  %88 = phi i32 [ %86, %85 ], [ %79, %84 ], !dbg !4495
  call void @llvm.dbg.value(metadata i32 %88, metadata !733, metadata !DIExpression()), !dbg !4406
  %89 = bitcast i32** %2 to i8**, !dbg !4496
  store i8* %71, i8** %89, align 8, !dbg !4496, !tbaa !799
  %90 = icmp sgt i32 %88, 1, !dbg !4497
  br i1 %90, label %91, label %146, !dbg !4498

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %72, align 4, !dbg !4499, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %92, metadata !746, metadata !DIExpression()), !dbg !4500
  %93 = sext i32 %88 to i64, !dbg !4501
  %94 = getelementptr inbounds i32, i32* %72, i64 %93, !dbg !4501
  call void @llvm.dbg.value(metadata i32* %94, metadata !750, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32* %72, metadata !749, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4503
  %95 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !4504
  %96 = bitcast i8* %95 to i32*, !dbg !4504
  call void @llvm.dbg.value(metadata i32* %96, metadata !749, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %88, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %72, metadata !734, metadata !DIExpression()), !dbg !4398
  %97 = icmp ugt i32* %94, %96, !dbg !4507
  br i1 %97, label %98, label %146, !dbg !4508

; <label>:98:                                     ; preds = %91
  %99 = shl nsw i64 %93, 2, !dbg !4509
  %100 = add nsw i64 %99, -5, !dbg !4509
  %101 = and i64 %100, 4, !dbg !4509
  %102 = icmp eq i64 %101, 0, !dbg !4509
  br i1 %102, label %103, label %117, !dbg !4509

; <label>:103:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i32 %88, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %72, metadata !734, metadata !DIExpression()), !dbg !4398
  %104 = load i32, i32* %96, align 4, !dbg !4509, !tbaa !908
  %105 = icmp eq i32 %104, %92, !dbg !4512
  br i1 %105, label %109, label %106, !dbg !4513

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !4514
  %108 = bitcast i8* %107 to i32*, !dbg !4514
  call void @llvm.dbg.value(metadata i32* %108, metadata !734, metadata !DIExpression()), !dbg !4398
  store i32 %104, i32* %108, align 4, !dbg !4515, !tbaa !908
  br label %111

; <label>:109:                                    ; preds = %103
  %110 = add nsw i32 %88, -1, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %110, metadata !733, metadata !DIExpression()), !dbg !4406
  br label %111, !dbg !4517

; <label>:111:                                    ; preds = %109, %106
  %112 = phi i32 [ %92, %109 ], [ %104, %106 ]
  %113 = phi i32* [ %72, %109 ], [ %108, %106 ], !dbg !4518
  %114 = phi i32 [ %110, %109 ], [ %88, %106 ], !dbg !4519
  call void @llvm.dbg.value(metadata i32* %96, metadata !749, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4503
  %115 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !4504
  %116 = bitcast i8* %115 to i32*, !dbg !4504
  call void @llvm.dbg.value(metadata i32* %116, metadata !749, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %114, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %113, metadata !734, metadata !DIExpression()), !dbg !4398
  br label %117, !dbg !4508

; <label>:117:                                    ; preds = %111, %98
  %118 = phi i32 [ %92, %98 ], [ %112, %111 ]
  %119 = phi i32* [ %96, %98 ], [ %116, %111 ]
  %120 = phi i32 [ %88, %98 ], [ %114, %111 ]
  %121 = phi i32* [ %72, %98 ], [ %113, %111 ]
  %122 = phi i32 [ undef, %98 ], [ %114, %111 ]
  %123 = icmp eq i64 %100, 3, !dbg !4509
  br i1 %123, label %146, label %124, !dbg !4509

; <label>:124:                                    ; preds = %117, %152
  %125 = phi i32 [ %153, %152 ], [ %118, %117 ]
  %126 = phi i32* [ %156, %152 ], [ %119, %117 ]
  %127 = phi i32 [ %155, %152 ], [ %120, %117 ]
  %128 = phi i32* [ %154, %152 ], [ %121, %117 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %128, metadata !734, metadata !DIExpression()), !dbg !4398
  %129 = load i32, i32* %126, align 4, !dbg !4509, !tbaa !908
  %130 = icmp eq i32 %129, %92, !dbg !4520
  %131 = icmp eq i32 %129, %125, !dbg !4512
  %132 = or i1 %130, %131, !dbg !4513
  br i1 %132, label %133, label %135, !dbg !4513

; <label>:133:                                    ; preds = %124
  %134 = add nsw i32 %127, -1, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %134, metadata !733, metadata !DIExpression()), !dbg !4406
  br label %137, !dbg !4517

; <label>:135:                                    ; preds = %124
  %136 = getelementptr inbounds i32, i32* %128, i64 1, !dbg !4514
  call void @llvm.dbg.value(metadata i32* %136, metadata !734, metadata !DIExpression()), !dbg !4398
  store i32 %129, i32* %136, align 4, !dbg !4515, !tbaa !908
  br label %137

; <label>:137:                                    ; preds = %133, %135
  %138 = phi i32 [ %125, %133 ], [ %129, %135 ]
  %139 = phi i32* [ %128, %133 ], [ %136, %135 ], !dbg !4518
  %140 = phi i32 [ %134, %133 ], [ %127, %135 ], !dbg !4519
  call void @llvm.dbg.value(metadata i32* %126, metadata !749, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4503
  %141 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !4504
  call void @llvm.dbg.value(metadata i32* %141, metadata !749, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %140, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %139, metadata !734, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %140, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %139, metadata !734, metadata !DIExpression()), !dbg !4398
  %142 = load i32, i32* %141, align 4, !dbg !4509, !tbaa !908
  %143 = icmp eq i32 %142, %92, !dbg !4520
  %144 = icmp eq i32 %142, %138, !dbg !4512
  %145 = or i1 %143, %144, !dbg !4513
  br i1 %145, label %150, label %148, !dbg !4513

; <label>:146:                                    ; preds = %117, %152, %91, %40, %33, %65, %87, %67, %46, %50, %7, %81, %53
  %147 = phi i32 [ %57, %53 ], [ -1, %81 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %67 ], [ %88, %87 ], [ -1, %65 ], [ %42, %40 ], [ -1, %33 ], [ %88, %91 ], [ %122, %117 ], [ %155, %152 ], !dbg !4495
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !4521
  ret i32 %147, !dbg !4521

; <label>:148:                                    ; preds = %137
  %149 = getelementptr inbounds i32, i32* %139, i64 1, !dbg !4514
  call void @llvm.dbg.value(metadata i32* %149, metadata !734, metadata !DIExpression()), !dbg !4398
  store i32 %142, i32* %149, align 4, !dbg !4515, !tbaa !908
  br label %152

; <label>:150:                                    ; preds = %137
  %151 = add nsw i32 %140, -1, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %151, metadata !733, metadata !DIExpression()), !dbg !4406
  br label %152, !dbg !4517

; <label>:152:                                    ; preds = %150, %148
  %153 = phi i32 [ %138, %150 ], [ %142, %148 ]
  %154 = phi i32* [ %139, %150 ], [ %149, %148 ], !dbg !4518
  %155 = phi i32 [ %151, %150 ], [ %140, %148 ], !dbg !4519
  call void @llvm.dbg.value(metadata i32* %141, metadata !749, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4503
  %156 = getelementptr inbounds i32, i32* %126, i64 2, !dbg !4504
  call void @llvm.dbg.value(metadata i32* %156, metadata !749, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %155, metadata !733, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32* %154, metadata !734, metadata !DIExpression()), !dbg !4398
  %157 = icmp ult i32* %156, %94, !dbg !4507
  br i1 %157, label %124, label %146, !dbg !4508, !llvm.loop !4522
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4524 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4563, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i32 0, metadata !4564, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()), !dbg !4569
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4570
  call void @llvm.dbg.value(metadata i32 %2, metadata !4565, metadata !DIExpression()), !dbg !4571
  %3 = icmp slt i32 %2, 0, !dbg !4572
  br i1 %3, label %4, label %6, !dbg !4574

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4575
  br label %24, !dbg !4576

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4577
  %8 = icmp eq i32 %7, 0, !dbg !4577
  br i1 %8, label %13, label %9, !dbg !4579

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4580
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4581
  %12 = icmp eq i64 %11, -1, !dbg !4582
  br i1 %12, label %16, label %13, !dbg !4583

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4584
  %15 = icmp eq i32 %14, 0, !dbg !4584
  br i1 %15, label %16, label %18, !dbg !4585

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4564, metadata !DIExpression()), !dbg !4568
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4586
  call void @llvm.dbg.value(metadata i32 %21, metadata !4566, metadata !DIExpression()), !dbg !4569
  br label %24, !dbg !4587

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4588
  %20 = load i32, i32* %19, align 4, !dbg !4588, !tbaa !908
  call void @llvm.dbg.value(metadata i32 %20, metadata !4564, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i32 %20, metadata !4564, metadata !DIExpression()), !dbg !4568
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4586
  call void @llvm.dbg.value(metadata i32 %21, metadata !4566, metadata !DIExpression()), !dbg !4569
  %22 = icmp eq i32 %20, 0, !dbg !4589
  br i1 %22, label %24, label %23, !dbg !4587

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4591, !tbaa !908
  call void @llvm.dbg.value(metadata i32 -1, metadata !4566, metadata !DIExpression()), !dbg !4569
  br label %24, !dbg !4593

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4594
  ret i32 %25, !dbg !4595
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4596 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4635, metadata !DIExpression()), !dbg !4636
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4637
  br i1 %2, label %6, label %3, !dbg !4639

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4640
  %5 = icmp eq i32 %4, 0, !dbg !4640
  br i1 %5, label %6, label %8, !dbg !4641

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4642
  br label %17, !dbg !4643

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4644, metadata !DIExpression()) #10, !dbg !4649
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4651
  %10 = load i32, i32* %9, align 8, !dbg !4651, !tbaa !4317
  %11 = and i32 %10, 256, !dbg !4653
  %12 = icmp eq i32 %11, 0, !dbg !4653
  br i1 %12, label %15, label %13, !dbg !4654

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4655
  br label %15, !dbg !4655

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4656
  br label %17, !dbg !4657

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4658
  ret i32 %18, !dbg !4659
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4660 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4700, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata i64 %1, metadata !4701, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i32 %2, metadata !4702, metadata !DIExpression()), !dbg !4708
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4709
  %5 = load i8*, i8** %4, align 8, !dbg !4709, !tbaa !4710
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4711
  %7 = load i8*, i8** %6, align 8, !dbg !4711, !tbaa !4712
  %8 = icmp eq i8* %5, %7, !dbg !4713
  br i1 %8, label %9, label %28, !dbg !4714

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4715
  %11 = load i8*, i8** %10, align 8, !dbg !4715, !tbaa !1219
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4716
  %13 = load i8*, i8** %12, align 8, !dbg !4716, !tbaa !4717
  %14 = icmp eq i8* %11, %13, !dbg !4718
  br i1 %14, label %15, label %28, !dbg !4719

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4720
  %17 = load i8*, i8** %16, align 8, !dbg !4720, !tbaa !4721
  %18 = icmp eq i8* %17, null, !dbg !4722
  br i1 %18, label %19, label %28, !dbg !4723

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4724
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %21, metadata !4703, metadata !DIExpression()), !dbg !4726
  %22 = icmp eq i64 %21, -1, !dbg !4727
  br i1 %22, label %30, label %23, !dbg !4729

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4730
  %25 = load i32, i32* %24, align 8, !dbg !4731, !tbaa !4317
  %26 = and i32 %25, -17, !dbg !4731
  store i32 %26, i32* %24, align 8, !dbg !4731, !tbaa !4317
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4732
  store i64 %21, i64* %27, align 8, !dbg !4733, !tbaa !4734
  br label %30, !dbg !4735

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4736
  br label %30, !dbg !4737

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4738
  ret i32 %31, !dbg !4739
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

!llvm.dbg.cu = !{!2, !77, !85, !90, !98, !202, !105, !112, !208, !288, !195, !296, !313, !315, !317, !321, !323, !326, !328, !330, !719, !754, !756, !758}
!llvm.ident = !{!760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760, !760}
!llvm.module.flags = !{!761, !762, !763, !764, !765}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 64, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/id.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !18, !20, !24, !0, !26, !29, !31, !33, !35, !47}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 54, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !14, line: 79, baseType: !15)
!14 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 144, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 54, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 55, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !14, line: 64, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 145, baseType: !17)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 55, type: !22, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !28, isLocal: true, isDefinition: true)
!28 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 51, type: !28, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 62, type: !6, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 58, type: !28, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "buf", scope: !37, file: !3, line: 340, type: !44, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 338, type: !38, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !42)
!38 = !DISubroutineType(types: !39)
!39 = !{!6, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!42 = !{!43}
!43 = !DILocalVariable(name: "uid", arg: 1, scope: !37, file: !3, line: 338, type: !40)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 21)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "buf", scope: !49, file: !3, line: 329, type: !44, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 327, type: !50, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!50 = !DISubroutineType(types: !51)
!51 = !{!6, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!54 = !{!55}
!55 = !DILocalVariable(name: "gid", arg: 1, scope: !49, file: !3, line: 327, type: !52)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2560, elements: !69)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !59, line: 50, size: 256, elements: !60)
!59 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !{!61, !64, !66, !68}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 52, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !58, file: !59, line: 55, baseType: !65, size: 32, offset: 64)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !58, file: !59, line: 56, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !58, file: !59, line: 57, baseType: !65, size: 32, offset: 192)
!69 = !{!70}
!70 = !DISubrange(count: 10)
!71 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!72 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "buf", scope: !75, file: !76, line: 96, type: !44, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !76, file: !76, line: 94, type: !50, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !81)
!76 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !80)
!78 = !{!8, !79, !9}
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !{!73}
!81 = !{!82}
!82 = !DILocalVariable(name: "gid", arg: 1, scope: !75, file: !76, line: 94, type: !52)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "Version", scope: !85, file: !86, line: 2, type: !62, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !87)
!86 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!87 = !{!83}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "file_name", scope: !90, file: !95, line: 46, type: !62, isLocal: true, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !92)
!91 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!92 = !{!88, !93}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !90, file: !95, line: 56, type: !28, isLocal: true, isDefinition: true)
!95 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "exit_failure", scope: !98, file: !101, line: 24, type: !102, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !100)
!99 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!100 = !{!96}
!101 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "program_name", scope: !105, file: !109, line: 33, type: !62, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !108)
!106 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!8, !6}
!108 = !{!103}
!109 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !112, file: !156, line: 85, type: !189, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !149, globals: !153)
!113 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !{!115, !129, !134}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !116, line: 32, baseType: !17, size: 32, elements: !117)
!116 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!118 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!122 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!123 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!124 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!125 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!126 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!127 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!128 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !116, line: 242, baseType: !17, size: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 46, baseType: !17, size: 32, elements: !136)
!135 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!137 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!149 = !{!65, !150, !151, !6}
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 62, baseType: !79)
!152 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !{!110, !154, !159, !171, !173, !178, !185, !187}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !112, file: !156, line: 101, type: !157, isLocal: false, isDefinition: true)
!156 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !69)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !112, file: !156, line: 1052, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !156, line: 65, size: 448, elements: !162)
!162 = !{!163, !164, !165, !169, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !156, line: 68, baseType: !115, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !156, line: 71, baseType: !65, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !156, line: 75, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !156, line: 78, baseType: !62, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !156, line: 81, baseType: !62, size: 64, offset: 384)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !112, file: !156, line: 116, type: !161, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slot0", scope: !112, file: !156, line: 842, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 256)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !112, file: !156, line: 845, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !156, line: 834, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !156, line: 836, baseType: !151, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !156, line: 837, baseType: !6, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !112, file: !156, line: 843, type: !65, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !112, file: !156, line: 844, type: !181, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 704, elements: !191)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!191 = !{!192}
!192 = !DISubrange(count: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !195, file: !198, line: 26, type: !199, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !197)
!196 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = !{!193}
!198 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 376, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 47)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !204)
!203 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !206, line: 102, baseType: !207)
!206 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !16, line: 72, baseType: !79)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !219, globals: !220)
!209 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !212, line: 26, baseType: !17, size: 32, elements: !213)
!212 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!215 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!216 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!217 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!218 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!219 = !{!8, !13, !22}
!220 = !{!221, !284, !286}
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !223, file: !224, line: 106, type: !62, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "parse_with_separator", scope: !224, file: !224, line: 102, type: !225, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !230)
!224 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !DISubroutineType(types: !226)
!226 = !{!62, !62, !62, !227, !228, !229, !229}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !250, !259, !260, !261, !262, !263, !264, !267, !272, !275, !279}
!231 = !DILocalVariable(name: "spec", arg: 1, scope: !223, file: !224, line: 102, type: !62)
!232 = !DILocalVariable(name: "separator", arg: 2, scope: !223, file: !224, line: 102, type: !62)
!233 = !DILocalVariable(name: "uid", arg: 3, scope: !223, file: !224, line: 103, type: !227)
!234 = !DILocalVariable(name: "gid", arg: 4, scope: !223, file: !224, line: 103, type: !228)
!235 = !DILocalVariable(name: "username", arg: 5, scope: !223, file: !224, line: 104, type: !229)
!236 = !DILocalVariable(name: "groupname", arg: 6, scope: !223, file: !224, line: 104, type: !229)
!237 = !DILocalVariable(name: "error_msg", scope: !223, file: !224, line: 110, type: !62)
!238 = !DILocalVariable(name: "pwd", scope: !223, file: !224, line: 111, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !241, line: 49, size: 384, elements: !242)
!241 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!242 = !{!243, !244, !245, !246, !247, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !240, file: !241, line: 51, baseType: !6, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !240, file: !241, line: 52, baseType: !6, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !240, file: !241, line: 54, baseType: !15, size: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !240, file: !241, line: 55, baseType: !23, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !240, file: !241, line: 56, baseType: !6, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !240, file: !241, line: 57, baseType: !6, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !240, file: !241, line: 58, baseType: !6, size: 64, offset: 320)
!250 = !DILocalVariable(name: "grp", scope: !223, file: !224, line: 112, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !253, line: 42, size: 256, elements: !254)
!253 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !252, file: !253, line: 44, baseType: !6, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !252, file: !253, line: 45, baseType: !6, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !252, file: !253, line: 46, baseType: !23, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !252, file: !253, line: 47, baseType: !229, size: 64, offset: 192)
!259 = !DILocalVariable(name: "u", scope: !223, file: !224, line: 113, type: !6)
!260 = !DILocalVariable(name: "g", scope: !223, file: !224, line: 114, type: !62)
!261 = !DILocalVariable(name: "gname", scope: !223, file: !224, line: 115, type: !6)
!262 = !DILocalVariable(name: "unum", scope: !223, file: !224, line: 116, type: !13)
!263 = !DILocalVariable(name: "gnum", scope: !223, file: !224, line: 117, type: !22)
!264 = !DILocalVariable(name: "ulen", scope: !265, file: !224, line: 137, type: !151)
!265 = distinct !DILexicalBlock(scope: !266, file: !224, line: 136, column: 5)
!266 = distinct !DILexicalBlock(scope: !223, file: !224, line: 130, column: 7)
!267 = !DILocalVariable(name: "use_login_group", scope: !268, file: !224, line: 164, type: !28)
!268 = distinct !DILexicalBlock(scope: !269, file: !224, line: 163, column: 9)
!269 = distinct !DILexicalBlock(scope: !270, file: !224, line: 162, column: 11)
!270 = distinct !DILexicalBlock(scope: !271, file: !224, line: 159, column: 5)
!271 = distinct !DILexicalBlock(scope: !223, file: !224, line: 158, column: 7)
!272 = !DILocalVariable(name: "tmp", scope: !273, file: !224, line: 173, type: !79)
!273 = distinct !DILexicalBlock(scope: !274, file: !224, line: 172, column: 13)
!274 = distinct !DILexicalBlock(scope: !268, file: !224, line: 165, column: 15)
!275 = !DILocalVariable(name: "buf", scope: !276, file: !224, line: 188, type: !44)
!276 = distinct !DILexicalBlock(scope: !277, file: !224, line: 185, column: 13)
!277 = distinct !DILexicalBlock(scope: !278, file: !224, line: 184, column: 15)
!278 = distinct !DILexicalBlock(scope: !269, file: !224, line: 182, column: 9)
!279 = !DILocalVariable(name: "tmp", scope: !280, file: !224, line: 205, type: !79)
!280 = distinct !DILexicalBlock(scope: !281, file: !224, line: 204, column: 9)
!281 = distinct !DILexicalBlock(scope: !282, file: !224, line: 203, column: 11)
!282 = distinct !DILexicalBlock(scope: !283, file: !224, line: 199, column: 5)
!283 = distinct !DILexicalBlock(scope: !223, file: !224, line: 198, column: 7)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !223, file: !224, line: 107, type: !62, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !223, file: !224, line: 108, type: !62, isLocal: true, isDefinition: true)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !290, retainedTypes: !295)
!289 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = !{!291}
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 41, baseType: !17, size: 32, elements: !293)
!292 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!294}
!294 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!295 = !{!8}
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !298, retainedTypes: !312)
!297 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!298 = !{!299}
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !301, file: !300, line: 186, baseType: !17, size: 32, elements: !310)
!300 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!301 = distinct !DISubprogram(name: "x2nrealloc", scope: !300, file: !300, line: 174, type: !302, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !305)
!302 = !DISubroutineType(types: !303)
!303 = !{!8, !8, !304, !151}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!305 = !{!306, !307, !308, !309}
!306 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !300, line: 174, type: !8)
!307 = !DILocalVariable(name: "pn", arg: 2, scope: !301, file: !300, line: 174, type: !304)
!308 = !DILocalVariable(name: "s", arg: 3, scope: !301, file: !300, line: 174, type: !151)
!309 = !DILocalVariable(name: "n", scope: !301, file: !300, line: 176, type: !151)
!310 = !{!311}
!311 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!312 = !{!151, !6, !8}
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!314 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!316 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !319, retainedTypes: !320)
!318 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!319 = !{!211, !134}
!320 = !{!65, !150}
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !295)
!322 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !325)
!324 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!325 = !{!151}
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!327 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!329 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !332, retainedTypes: !295)
!331 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!332 = !{!333}
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !334, line: 41, baseType: !17, size: 32, elements: !335)
!334 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!336 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!337 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!338 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!339 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!340 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!341 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!342 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!343 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!344 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!345 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!346 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!347 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!348 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!349 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!350 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!351 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!352 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!353 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!354 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!355 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!356 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!357 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!358 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!359 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!360 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!361 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!362 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!363 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!364 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!365 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!366 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!367 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!368 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!369 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!370 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!371 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!372 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!373 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!374 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!375 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!376 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!377 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!378 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!379 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!380 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!381 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!382 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!383 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!384 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!385 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!444 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!447 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!448 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!449 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!450 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!451 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!452 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!453 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!454 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!455 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!456 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!457 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!458 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!531 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!604 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!605 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!606 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!607 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!608 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!609 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!610 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!611 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!612 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!613 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!614 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!615 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!616 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!617 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!618 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!620 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!621 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!622 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!623 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!624 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!625 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!651 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!652 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!653 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!654 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!655 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!660 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!661 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!662 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!663 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !721, retainedTypes: !753)
!720 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!721 = !{!722}
!722 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !724, file: !723, line: 83, baseType: !17, size: 32, elements: !751)
!723 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!724 = distinct !DISubprogram(name: "mgetgroups", scope: !723, file: !723, line: 66, type: !725, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !719, retainedNodes: !728)
!725 = !DISubroutineType(types: !726)
!726 = !{!65, !62, !22, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !739, !740, !743, !746, !749, !750}
!729 = !DILocalVariable(name: "username", arg: 1, scope: !724, file: !723, line: 66, type: !62)
!730 = !DILocalVariable(name: "gid", arg: 2, scope: !724, file: !723, line: 66, type: !22)
!731 = !DILocalVariable(name: "groups", arg: 3, scope: !724, file: !723, line: 66, type: !727)
!732 = !DILocalVariable(name: "max_n_groups", scope: !724, file: !723, line: 68, type: !65)
!733 = !DILocalVariable(name: "ng", scope: !724, file: !723, line: 69, type: !65)
!734 = !DILocalVariable(name: "g", scope: !724, file: !723, line: 70, type: !228)
!735 = !DILocalVariable(name: "h", scope: !736, file: !723, line: 92, type: !228)
!736 = distinct !DILexicalBlock(scope: !737, file: !723, line: 91, column: 9)
!737 = distinct !DILexicalBlock(scope: !738, file: !723, line: 82, column: 5)
!738 = distinct !DILexicalBlock(scope: !724, file: !723, line: 81, column: 7)
!739 = !DILocalVariable(name: "last_n_groups", scope: !736, file: !723, line: 93, type: !65)
!740 = !DILocalVariable(name: "saved_errno", scope: !741, file: !723, line: 105, type: !65)
!741 = distinct !DILexicalBlock(scope: !742, file: !723, line: 104, column: 13)
!742 = distinct !DILexicalBlock(scope: !736, file: !723, line: 103, column: 15)
!743 = !DILocalVariable(name: "saved_errno", scope: !744, file: !723, line: 156, type: !65)
!744 = distinct !DILexicalBlock(scope: !745, file: !723, line: 154, column: 5)
!745 = distinct !DILexicalBlock(scope: !724, file: !723, line: 153, column: 7)
!746 = !DILocalVariable(name: "first", scope: !747, file: !723, line: 187, type: !22)
!747 = distinct !DILexicalBlock(scope: !748, file: !723, line: 186, column: 5)
!748 = distinct !DILexicalBlock(scope: !724, file: !723, line: 185, column: 7)
!749 = !DILocalVariable(name: "next", scope: !747, file: !723, line: 188, type: !228)
!750 = !DILocalVariable(name: "groups_end", scope: !747, file: !723, line: 189, type: !228)
!751 = !{!752}
!752 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!753 = !{!8, !22, !151}
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!755 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!756 = distinct !DICompileUnit(language: DW_LANG_C99, file: !757, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !295)
!757 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!758 = distinct !DICompileUnit(language: DW_LANG_C99, file: !759, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !295)
!759 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!760 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!761 = !{i32 2, !"Dwarf Version", i32 4}
!762 = !{i32 2, !"Debug Info Version", i32 3}
!763 = !{i32 1, !"wchar_size", i32 4}
!764 = !{i32 7, !"PIC Level", i32 2}
!765 = !{i32 7, !"PIE Level", i32 2}
!766 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 79, type: !767, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !65}
!769 = !{!770}
!770 = !DILocalVariable(name: "status", arg: 1, scope: !766, file: !3, line: 79, type: !65)
!771 = !DILocalVariable(name: "infomap", scope: !772, file: !773, line: 632, type: !787)
!772 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !773, file: !773, line: 630, type: !774, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !776)
!773 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!774 = !DISubroutineType(types: !775)
!775 = !{null, !62}
!776 = !{!777, !771, !778, !779, !786}
!777 = !DILocalVariable(name: "program", arg: 1, scope: !772, file: !773, line: 630, type: !62)
!778 = !DILocalVariable(name: "node", scope: !772, file: !773, line: 642, type: !62)
!779 = !DILocalVariable(name: "map_prog", scope: !772, file: !773, line: 643, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !772, file: !773, line: 632, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !782, file: !773, line: 632, baseType: !62, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !782, file: !773, line: 632, baseType: !62, size: 64, offset: 64)
!786 = !DILocalVariable(name: "lc_messages", scope: !772, file: !773, line: 655, type: !62)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 896, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 7)
!790 = !DILocation(line: 632, column: 67, scope: !772, inlinedAt: !791)
!791 = distinct !DILocation(line: 108, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 84, column: 5)
!793 = distinct !DILexicalBlock(scope: !766, file: !3, line: 81, column: 7)
!794 = !DILocation(line: 79, column: 12, scope: !766)
!795 = !DILocation(line: 81, column: 14, scope: !793)
!796 = !DILocation(line: 81, column: 7, scope: !766)
!797 = !DILocation(line: 82, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !3, line: 82, column: 5)
!799 = !{!800, !800, i64 0}
!800 = !{!"any pointer", !801, i64 0}
!801 = !{!"omnipotent char", !802, i64 0}
!802 = !{!"Simple C/C++ TBAA"}
!803 = !DILocation(line: 85, column: 7, scope: !792)
!804 = !DILocation(line: 86, column: 7, scope: !792)
!805 = !DILocation(line: 91, column: 7, scope: !792)
!806 = !DILocation(line: 102, column: 7, scope: !792)
!807 = !DILocation(line: 103, column: 7, scope: !792)
!808 = !DILocation(line: 104, column: 7, scope: !792)
!809 = !DILocation(line: 632, column: 3, scope: !772, inlinedAt: !791)
!810 = !DILocation(line: 643, column: 36, scope: !772, inlinedAt: !791)
!811 = !DILocation(line: 643, column: 25, scope: !772, inlinedAt: !791)
!812 = !DILocation(line: 645, column: 33, scope: !772, inlinedAt: !791)
!813 = !DILocation(line: 645, column: 3, scope: !772, inlinedAt: !791)
!814 = !DILocation(line: 646, column: 13, scope: !772, inlinedAt: !791)
!815 = !DILocation(line: 645, column: 20, scope: !772, inlinedAt: !791)
!816 = !{!817, !800, i64 0}
!817 = !{!"infomap", !800, i64 0, !800, i64 8}
!818 = !DILocation(line: 645, column: 10, scope: !772, inlinedAt: !791)
!819 = !DILocation(line: 645, column: 28, scope: !772, inlinedAt: !791)
!820 = distinct !{!820, !821, !822}
!821 = !DILocation(line: 645, column: 3, scope: !772)
!822 = !DILocation(line: 646, column: 13, scope: !772)
!823 = !DILocation(line: 648, column: 17, scope: !824, inlinedAt: !791)
!824 = distinct !DILexicalBlock(scope: !772, file: !773, line: 648, column: 7)
!825 = !{!817, !800, i64 8}
!826 = !DILocation(line: 648, column: 7, scope: !824, inlinedAt: !791)
!827 = !DILocation(line: 648, column: 7, scope: !772, inlinedAt: !791)
!828 = !DILocation(line: 642, column: 15, scope: !772, inlinedAt: !791)
!829 = !DILocation(line: 651, column: 3, scope: !772, inlinedAt: !791)
!830 = !DILocation(line: 655, column: 29, scope: !772, inlinedAt: !791)
!831 = !DILocation(line: 655, column: 15, scope: !772, inlinedAt: !791)
!832 = !DILocation(line: 656, column: 7, scope: !833, inlinedAt: !791)
!833 = distinct !DILexicalBlock(scope: !772, file: !773, line: 656, column: 7)
!834 = !DILocation(line: 656, column: 19, scope: !833, inlinedAt: !791)
!835 = !DILocation(line: 656, column: 22, scope: !833, inlinedAt: !791)
!836 = !DILocation(line: 656, column: 7, scope: !772, inlinedAt: !791)
!837 = !DILocation(line: 662, column: 7, scope: !838, inlinedAt: !791)
!838 = distinct !DILexicalBlock(scope: !833, file: !773, line: 657, column: 5)
!839 = !DILocation(line: 664, column: 5, scope: !838, inlinedAt: !791)
!840 = !DILocation(line: 665, column: 3, scope: !772, inlinedAt: !791)
!841 = !DILocation(line: 667, column: 3, scope: !772, inlinedAt: !791)
!842 = !DILocation(line: 669, column: 1, scope: !772, inlinedAt: !791)
!843 = !DILocation(line: 110, column: 3, scope: !766)
!844 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 114, type: !845, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{!65, !65, !229}
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !874, !875, !877}
!848 = !DILocalVariable(name: "argc", arg: 1, scope: !844, file: !3, line: 114, type: !65)
!849 = !DILocalVariable(name: "argv", arg: 2, scope: !844, file: !3, line: 114, type: !229)
!850 = !DILocalVariable(name: "optc", scope: !844, file: !3, line: 116, type: !65)
!851 = !DILocalVariable(name: "selinux_enabled", scope: !844, file: !3, line: 117, type: !65)
!852 = !DILocalVariable(name: "smack_enabled", scope: !844, file: !3, line: 118, type: !28)
!853 = !DILocalVariable(name: "opt_zero", scope: !844, file: !3, line: 119, type: !28)
!854 = !DILocalVariable(name: "pw_name", scope: !844, file: !3, line: 120, type: !6)
!855 = !DILocalVariable(name: "just_group_list", scope: !844, file: !3, line: 123, type: !28)
!856 = !DILocalVariable(name: "just_group", scope: !844, file: !3, line: 125, type: !28)
!857 = !DILocalVariable(name: "use_real", scope: !844, file: !3, line: 127, type: !28)
!858 = !DILocalVariable(name: "just_user", scope: !844, file: !3, line: 129, type: !28)
!859 = !DILocalVariable(name: "n_ids", scope: !844, file: !3, line: 187, type: !151)
!860 = !DILocalVariable(name: "default_format", scope: !844, file: !3, line: 201, type: !28)
!861 = !DILocalVariable(name: "pwd", scope: !862, file: !3, line: 233, type: !864)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 232, column: 5)
!863 = distinct !DILexicalBlock(scope: !844, file: !3, line: 231, column: 7)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !241, line: 49, size: 384, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !865, file: !241, line: 51, baseType: !6, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !865, file: !241, line: 52, baseType: !6, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !865, file: !241, line: 54, baseType: !15, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !865, file: !241, line: 55, baseType: !23, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !865, file: !241, line: 56, baseType: !6, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !865, file: !241, line: 57, baseType: !6, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !865, file: !241, line: 58, baseType: !6, size: 64, offset: 320)
!874 = !DILocalVariable(name: "spec", scope: !862, file: !3, line: 234, type: !62)
!875 = !DILocalVariable(name: "NO_UID", scope: !876, file: !3, line: 259, type: !13)
!876 = distinct !DILexicalBlock(scope: !863, file: !3, line: 255, column: 5)
!877 = !DILocalVariable(name: "NO_GID", scope: !876, file: !3, line: 260, type: !22)
!878 = !DILocation(line: 114, column: 11, scope: !844)
!879 = !DILocation(line: 114, column: 24, scope: !844)
!880 = !DILocation(line: 117, column: 7, scope: !844)
!881 = !DILocation(line: 118, column: 8, scope: !844)
!882 = !DILocation(line: 119, column: 8, scope: !844)
!883 = !DILocation(line: 120, column: 9, scope: !844)
!884 = !DILocation(line: 123, column: 8, scope: !844)
!885 = !DILocation(line: 125, column: 8, scope: !844)
!886 = !DILocation(line: 127, column: 8, scope: !844)
!887 = !DILocation(line: 129, column: 8, scope: !844)
!888 = !DILocation(line: 132, column: 21, scope: !844)
!889 = !DILocation(line: 132, column: 3, scope: !844)
!890 = !DILocation(line: 133, column: 3, scope: !844)
!891 = !DILocation(line: 134, column: 3, scope: !844)
!892 = !DILocation(line: 135, column: 3, scope: !844)
!893 = !DILocation(line: 137, column: 3, scope: !844)
!894 = !DILocation(line: 139, column: 3, scope: !844)
!895 = !DILocation(line: 139, column: 18, scope: !844)
!896 = !DILocation(line: 116, column: 7, scope: !844)
!897 = distinct !{!897, !894, !898}
!898 = !DILocation(line: 185, column: 5, scope: !844)
!899 = !DILocation(line: 156, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 155, column: 15)
!901 = distinct !DILexicalBlock(scope: !902, file: !3, line: 142, column: 9)
!902 = distinct !DILexicalBlock(scope: !844, file: !3, line: 140, column: 5)
!903 = !DILocation(line: 167, column: 11, scope: !901)
!904 = !DILocation(line: 180, column: 9, scope: !901)
!905 = !DILocation(line: 181, column: 9, scope: !901)
!906 = !DILocation(line: 183, column: 11, scope: !901)
!907 = !DILocation(line: 187, column: 25, scope: !844)
!908 = !{!909, !909, i64 0}
!909 = !{!"int", !801, i64 0}
!910 = !DILocation(line: 187, column: 23, scope: !844)
!911 = !DILocation(line: 188, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !844, file: !3, line: 188, column: 7)
!913 = !DILocation(line: 188, column: 7, scope: !844)
!914 = !DILocation(line: 190, column: 20, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 189, column: 5)
!916 = !DILocation(line: 190, column: 55, scope: !915)
!917 = !DILocation(line: 190, column: 62, scope: !915)
!918 = !DILocation(line: 190, column: 50, scope: !915)
!919 = !DILocation(line: 190, column: 43, scope: !915)
!920 = !DILocation(line: 190, column: 7, scope: !915)
!921 = !DILocation(line: 191, column: 7, scope: !915)
!922 = !DILocation(line: 198, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !844, file: !3, line: 198, column: 7)
!924 = !DILocation(line: 198, column: 19, scope: !923)
!925 = !DILocation(line: 198, column: 17, scope: !923)
!926 = !DILocation(line: 198, column: 32, scope: !923)
!927 = !DILocation(line: 198, column: 30, scope: !923)
!928 = !DILocation(line: 198, column: 63, scope: !923)
!929 = !DILocation(line: 198, column: 7, scope: !844)
!930 = !DILocation(line: 199, column: 5, scope: !923)
!931 = !DILocation(line: 202, column: 28, scope: !844)
!932 = !DILocation(line: 204, column: 28, scope: !844)
!933 = !DILocation(line: 206, column: 22, scope: !934)
!934 = distinct !DILexicalBlock(scope: !844, file: !3, line: 206, column: 7)
!935 = !DILocation(line: 206, column: 26, scope: !934)
!936 = !DILocation(line: 206, column: 35, scope: !934)
!937 = !DILocation(line: 206, column: 7, scope: !844)
!938 = !DILocation(line: 207, column: 5, scope: !934)
!939 = !DILocation(line: 210, column: 25, scope: !940)
!940 = distinct !DILexicalBlock(scope: !844, file: !3, line: 210, column: 7)
!941 = !DILocation(line: 210, column: 22, scope: !940)
!942 = !DILocation(line: 211, column: 5, scope: !940)
!943 = !DILocation(line: 231, column: 13, scope: !863)
!944 = !DILocation(line: 231, column: 7, scope: !844)
!945 = !DILocation(line: 233, column: 22, scope: !862)
!946 = !DILocation(line: 234, column: 26, scope: !862)
!947 = !DILocation(line: 234, column: 19, scope: !862)
!948 = !DILocation(line: 238, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !862, file: !3, line: 238, column: 11)
!950 = !{!801, !801, i64 0}
!951 = !DILocation(line: 238, column: 11, scope: !862)
!952 = !DILocation(line: 240, column: 15, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 240, column: 15)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 239, column: 9)
!955 = !DILocation(line: 240, column: 63, scope: !953)
!956 = !DILocation(line: 240, column: 15, scope: !954)
!957 = !DILocation(line: 245, column: 31, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 241, column: 13)
!959 = !DILocation(line: 245, column: 21, scope: !958)
!960 = !DILocation(line: 248, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !862, file: !3, line: 248, column: 11)
!962 = !DILocation(line: 248, column: 11, scope: !862)
!963 = !DILocation(line: 249, column: 9, scope: !961)
!964 = !DILocation(line: 259, column: 13, scope: !876)
!965 = !DILocation(line: 260, column: 13, scope: !876)
!966 = !DILocation(line: 262, column: 11, scope: !876)
!967 = !DILocation(line: 262, column: 24, scope: !968)
!968 = distinct !DILexicalBlock(scope: !876, file: !3, line: 262, column: 11)
!969 = !DILocation(line: 262, column: 11, scope: !968)
!970 = !DILocation(line: 263, column: 25, scope: !968)
!971 = !DILocation(line: 265, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !3, line: 264, column: 9)
!973 = !DILocation(line: 265, column: 17, scope: !972)
!974 = !DILocation(line: 266, column: 18, scope: !972)
!975 = !DILocation(line: 266, column: 16, scope: !972)
!976 = !DILocation(line: 267, column: 20, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !3, line: 267, column: 15)
!978 = !DILocation(line: 267, column: 30, scope: !977)
!979 = !DILocation(line: 267, column: 33, scope: !977)
!980 = !DILocation(line: 267, column: 15, scope: !972)
!981 = !DILocation(line: 268, column: 13, scope: !977)
!982 = !DILocation(line: 271, column: 11, scope: !876)
!983 = !DILocation(line: 271, column: 23, scope: !984)
!984 = distinct !DILexicalBlock(scope: !876, file: !3, line: 271, column: 11)
!985 = !DILocation(line: 271, column: 11, scope: !984)
!986 = !DILocation(line: 296, column: 30, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 295, column: 5)
!988 = distinct !DILexicalBlock(scope: !844, file: !3, line: 294, column: 7)
!989 = !DILocation(line: 272, column: 25, scope: !984)
!990 = !DILocation(line: 282, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 281, column: 9)
!992 = distinct !DILexicalBlock(scope: !876, file: !3, line: 280, column: 11)
!993 = !DILocation(line: 274, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !984, file: !3, line: 273, column: 9)
!995 = !DILocation(line: 274, column: 17, scope: !994)
!996 = !DILocation(line: 275, column: 18, scope: !994)
!997 = !DILocation(line: 275, column: 16, scope: !994)
!998 = !DILocation(line: 276, column: 20, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 276, column: 15)
!1000 = !DILocation(line: 276, column: 30, scope: !999)
!1001 = !DILocation(line: 276, column: 33, scope: !999)
!1002 = !DILocation(line: 276, column: 15, scope: !994)
!1003 = !DILocation(line: 277, column: 13, scope: !999)
!1004 = !DILocation(line: 280, column: 22, scope: !992)
!1005 = !DILocation(line: 282, column: 17, scope: !991)
!1006 = !DILocation(line: 283, column: 18, scope: !991)
!1007 = !DILocation(line: 283, column: 16, scope: !991)
!1008 = !DILocation(line: 284, column: 20, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !991, file: !3, line: 284, column: 15)
!1010 = !DILocation(line: 284, column: 30, scope: !1009)
!1011 = !DILocation(line: 284, column: 33, scope: !1009)
!1012 = !DILocation(line: 284, column: 15, scope: !991)
!1013 = !DILocation(line: 285, column: 13, scope: !1009)
!1014 = !DILocation(line: 287, column: 17, scope: !991)
!1015 = !DILocation(line: 288, column: 18, scope: !991)
!1016 = !DILocation(line: 288, column: 16, scope: !991)
!1017 = !DILocation(line: 289, column: 20, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !991, file: !3, line: 289, column: 15)
!1019 = !DILocation(line: 289, column: 30, scope: !1018)
!1020 = !DILocation(line: 289, column: 33, scope: !1018)
!1021 = !DILocation(line: 289, column: 15, scope: !991)
!1022 = !DILocation(line: 290, column: 13, scope: !1018)
!1023 = !DILocation(line: 250, column: 31, scope: !862)
!1024 = !{!1025, !800, i64 0}
!1025 = !{!"passwd", !800, i64 0, !800, i64 8, !909, i64 16, !909, i64 20, !800, i64 24, !800, i64 32, !800, i64 40}
!1026 = !DILocation(line: 250, column: 17, scope: !862)
!1027 = !DILocation(line: 251, column: 26, scope: !862)
!1028 = !{!1025, !909, i64 16}
!1029 = !DILocation(line: 251, column: 19, scope: !862)
!1030 = !DILocation(line: 251, column: 12, scope: !862)
!1031 = !DILocation(line: 252, column: 26, scope: !862)
!1032 = !{!1025, !909, i64 20}
!1033 = !DILocation(line: 252, column: 19, scope: !862)
!1034 = !DILocation(line: 252, column: 12, scope: !862)
!1035 = !DILocation(line: 294, column: 7, scope: !844)
!1036 = !DILocation(line: 296, column: 19, scope: !987)
!1037 = !DILocation(line: 296, column: 37, scope: !987)
!1038 = !DILocalVariable(name: "uid", arg: 1, scope: !1039, file: !3, line: 348, type: !13)
!1039 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 348, type: !1040, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !13}
!1042 = !{!1038, !1043, !1044}
!1043 = !DILocalVariable(name: "pwd", scope: !1039, file: !3, line: 350, type: !864)
!1044 = !DILocalVariable(name: "s", scope: !1039, file: !3, line: 363, type: !6)
!1045 = !DILocation(line: 348, column: 19, scope: !1039, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 296, column: 7, scope: !987)
!1047 = !DILocation(line: 350, column: 18, scope: !1039, inlinedAt: !1046)
!1048 = !DILocation(line: 352, column: 7, scope: !1039, inlinedAt: !1046)
!1049 = !DILocation(line: 341, column: 21, scope: !37, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 363, column: 34, scope: !1039, inlinedAt: !1046)
!1051 = !DILocation(line: 354, column: 13, scope: !1052, inlinedAt: !1046)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 353, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 352, column: 7)
!1054 = !DILocation(line: 355, column: 15, scope: !1055, inlinedAt: !1046)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 355, column: 11)
!1056 = !DILocation(line: 355, column: 11, scope: !1052, inlinedAt: !1046)
!1057 = !DILocation(line: 357, column: 24, scope: !1058, inlinedAt: !1046)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 356, column: 9)
!1059 = !DILocation(line: 341, column: 21, scope: !37, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 358, column: 18, scope: !1058, inlinedAt: !1046)
!1061 = !DILocation(line: 341, column: 10, scope: !37, inlinedAt: !1060)
!1062 = !DILocation(line: 357, column: 11, scope: !1058, inlinedAt: !1046)
!1063 = !DILocation(line: 360, column: 9, scope: !1058, inlinedAt: !1046)
!1064 = !DILocation(line: 363, column: 24, scope: !1039, inlinedAt: !1046)
!1065 = !DILocation(line: 363, column: 13, scope: !1039, inlinedAt: !1046)
!1066 = !DILocation(line: 341, column: 10, scope: !37, inlinedAt: !1050)
!1067 = !DILocation(line: 363, column: 9, scope: !1039, inlinedAt: !1046)
!1068 = !DILocation(line: 364, column: 3, scope: !1039, inlinedAt: !1046)
!1069 = !DILocation(line: 297, column: 5, scope: !987)
!1070 = !DILocation(line: 298, column: 12, scope: !988)
!1071 = !DILocation(line: 300, column: 25, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 300, column: 11)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 299, column: 5)
!1074 = distinct !DILexicalBlock(scope: !988, file: !3, line: 298, column: 12)
!1075 = !DILocation(line: 300, column: 43, scope: !1072)
!1076 = !DILocation(line: 300, column: 12, scope: !1072)
!1077 = !DILocation(line: 300, column: 11, scope: !1073)
!1078 = !DILocation(line: 301, column: 9, scope: !1072)
!1079 = !DILocation(line: 303, column: 12, scope: !1074)
!1080 = !DILocation(line: 305, column: 39, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 305, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 304, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 303, column: 12)
!1084 = !DILocation(line: 305, column: 51, scope: !1081)
!1085 = !DILocation(line: 306, column: 30, scope: !1081)
!1086 = !DILocation(line: 305, column: 12, scope: !1081)
!1087 = !DILocation(line: 305, column: 11, scope: !1082)
!1088 = !DILocation(line: 307, column: 9, scope: !1081)
!1089 = !DILocalVariable(name: "username", arg: 1, scope: !1090, file: !3, line: 370, type: !62)
!1090 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 370, type: !774, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1091)
!1091 = !{!1089, !1092, !1093, !1101, !1103, !1104, !1105}
!1092 = !DILocalVariable(name: "pwd", scope: !1090, file: !3, line: 372, type: !864)
!1093 = !DILocalVariable(name: "grp", scope: !1090, file: !3, line: 373, type: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !253, line: 42, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1095, file: !253, line: 44, baseType: !6, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1095, file: !253, line: 45, baseType: !6, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1095, file: !253, line: 46, baseType: !23, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1095, file: !253, line: 47, baseType: !229, size: 64, offset: 192)
!1101 = !DILocalVariable(name: "groups", scope: !1102, file: !3, line: 402, type: !228)
!1102 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 401, column: 3)
!1103 = !DILocalVariable(name: "primary_group", scope: !1102, file: !3, line: 404, type: !22)
!1104 = !DILocalVariable(name: "n_groups", scope: !1102, file: !3, line: 410, type: !65)
!1105 = !DILocalVariable(name: "i", scope: !1106, file: !3, line: 424, type: !65)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 424, column: 5)
!1107 = !DILocation(line: 370, column: 30, scope: !1090, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 315, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 314, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 309, column: 12)
!1111 = !DILocation(line: 375, column: 3, scope: !1090, inlinedAt: !1108)
!1112 = !DILocation(line: 338, column: 28, scope: !37, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 375, column: 3, scope: !1090, inlinedAt: !1108)
!1114 = !DILocation(line: 341, column: 21, scope: !37, inlinedAt: !1113)
!1115 = !DILocation(line: 341, column: 10, scope: !37, inlinedAt: !1113)
!1116 = !DILocation(line: 376, column: 19, scope: !1090, inlinedAt: !1108)
!1117 = !DILocation(line: 376, column: 9, scope: !1090, inlinedAt: !1108)
!1118 = !DILocation(line: 372, column: 18, scope: !1090, inlinedAt: !1108)
!1119 = !DILocation(line: 377, column: 7, scope: !1120, inlinedAt: !1108)
!1120 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 377, column: 7)
!1121 = !DILocation(line: 377, column: 7, scope: !1090, inlinedAt: !1108)
!1122 = !DILocation(line: 378, column: 5, scope: !1120, inlinedAt: !1108)
!1123 = !DILocation(line: 380, column: 3, scope: !1090, inlinedAt: !1108)
!1124 = !DILocation(line: 327, column: 28, scope: !49, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 380, column: 3, scope: !1090, inlinedAt: !1108)
!1126 = !DILocation(line: 330, column: 21, scope: !49, inlinedAt: !1125)
!1127 = !DILocation(line: 330, column: 10, scope: !49, inlinedAt: !1125)
!1128 = !DILocation(line: 381, column: 19, scope: !1090, inlinedAt: !1108)
!1129 = !DILocation(line: 381, column: 9, scope: !1090, inlinedAt: !1108)
!1130 = !DILocation(line: 373, column: 17, scope: !1090, inlinedAt: !1108)
!1131 = !DILocation(line: 382, column: 7, scope: !1132, inlinedAt: !1108)
!1132 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 382, column: 7)
!1133 = !DILocation(line: 382, column: 7, scope: !1090, inlinedAt: !1108)
!1134 = !DILocation(line: 383, column: 5, scope: !1132, inlinedAt: !1108)
!1135 = !{!1136, !800, i64 0}
!1136 = !{!"group", !800, i64 0, !800, i64 8, !909, i64 16, !800, i64 24}
!1137 = !DILocation(line: 385, column: 7, scope: !1138, inlinedAt: !1108)
!1138 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 385, column: 7)
!1139 = !DILocation(line: 385, column: 15, scope: !1138, inlinedAt: !1108)
!1140 = !DILocation(line: 385, column: 12, scope: !1138, inlinedAt: !1108)
!1141 = !DILocation(line: 385, column: 7, scope: !1090, inlinedAt: !1108)
!1142 = !DILocation(line: 387, column: 7, scope: !1143, inlinedAt: !1108)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 386, column: 5)
!1144 = !DILocation(line: 338, column: 28, scope: !37, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 387, column: 7, scope: !1143, inlinedAt: !1108)
!1146 = !DILocation(line: 341, column: 21, scope: !37, inlinedAt: !1145)
!1147 = !DILocation(line: 341, column: 10, scope: !37, inlinedAt: !1145)
!1148 = !DILocation(line: 388, column: 23, scope: !1143, inlinedAt: !1108)
!1149 = !DILocation(line: 388, column: 13, scope: !1143, inlinedAt: !1108)
!1150 = !DILocation(line: 389, column: 11, scope: !1151, inlinedAt: !1108)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 389, column: 11)
!1152 = !DILocation(line: 389, column: 11, scope: !1143, inlinedAt: !1108)
!1153 = !DILocation(line: 390, column: 9, scope: !1151, inlinedAt: !1108)
!1154 = !DILocation(line: 0, scope: !1090, inlinedAt: !1108)
!1155 = !DILocation(line: 393, column: 7, scope: !1156, inlinedAt: !1108)
!1156 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 393, column: 7)
!1157 = !DILocation(line: 393, column: 15, scope: !1156, inlinedAt: !1108)
!1158 = !DILocation(line: 393, column: 12, scope: !1156, inlinedAt: !1108)
!1159 = !DILocation(line: 393, column: 7, scope: !1090, inlinedAt: !1108)
!1160 = !DILocation(line: 395, column: 7, scope: !1161, inlinedAt: !1108)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 394, column: 5)
!1162 = !DILocation(line: 327, column: 28, scope: !49, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 395, column: 7, scope: !1161, inlinedAt: !1108)
!1164 = !DILocation(line: 330, column: 21, scope: !49, inlinedAt: !1163)
!1165 = !DILocation(line: 330, column: 10, scope: !49, inlinedAt: !1163)
!1166 = !DILocation(line: 396, column: 23, scope: !1161, inlinedAt: !1108)
!1167 = !DILocation(line: 396, column: 13, scope: !1161, inlinedAt: !1108)
!1168 = !DILocation(line: 397, column: 11, scope: !1169, inlinedAt: !1108)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 397, column: 11)
!1170 = !DILocation(line: 397, column: 11, scope: !1161, inlinedAt: !1108)
!1171 = !DILocation(line: 398, column: 9, scope: !1169, inlinedAt: !1108)
!1172 = !DILocation(line: 402, column: 5, scope: !1102, inlinedAt: !1108)
!1173 = !DILocation(line: 405, column: 9, scope: !1174, inlinedAt: !1108)
!1174 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 405, column: 9)
!1175 = !DILocation(line: 405, column: 9, scope: !1102, inlinedAt: !1108)
!1176 = !DILocation(line: 406, column: 23, scope: !1174, inlinedAt: !1108)
!1177 = !DILocation(line: 406, column: 34, scope: !1174, inlinedAt: !1108)
!1178 = !DILocation(line: 408, column: 23, scope: !1174, inlinedAt: !1108)
!1179 = !DILocation(line: 404, column: 11, scope: !1102, inlinedAt: !1108)
!1180 = !DILocation(line: 0, scope: !1174, inlinedAt: !1108)
!1181 = !DILocation(line: 402, column: 12, scope: !1102, inlinedAt: !1108)
!1182 = !DILocation(line: 410, column: 20, scope: !1102, inlinedAt: !1108)
!1183 = !DILocation(line: 410, column: 9, scope: !1102, inlinedAt: !1108)
!1184 = !DILocation(line: 411, column: 18, scope: !1185, inlinedAt: !1108)
!1185 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 411, column: 9)
!1186 = !DILocation(line: 411, column: 9, scope: !1102, inlinedAt: !1108)
!1187 = !DILocation(line: 0, scope: !1188, inlinedAt: !1108)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 413, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 412, column: 7)
!1190 = !DILocation(line: 413, column: 13, scope: !1189, inlinedAt: !1108)
!1191 = !DILocation(line: 414, column: 28, scope: !1188, inlinedAt: !1108)
!1192 = !DILocation(line: 415, column: 18, scope: !1188, inlinedAt: !1108)
!1193 = !DILocation(line: 414, column: 11, scope: !1188, inlinedAt: !1108)
!1194 = !DILocation(line: 417, column: 28, scope: !1188, inlinedAt: !1108)
!1195 = !DILocation(line: 417, column: 11, scope: !1188, inlinedAt: !1108)
!1196 = !DILocation(line: 434, column: 3, scope: !1090, inlinedAt: !1108)
!1197 = !DILocation(line: 422, column: 18, scope: !1198, inlinedAt: !1108)
!1198 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 422, column: 9)
!1199 = !DILocation(line: 422, column: 9, scope: !1102, inlinedAt: !1108)
!1200 = !DILocation(line: 423, column: 7, scope: !1198, inlinedAt: !1108)
!1201 = !DILocation(line: 424, column: 14, scope: !1106, inlinedAt: !1108)
!1202 = !DILocation(line: 426, column: 15, scope: !1203, inlinedAt: !1108)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 426, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 425, column: 7)
!1205 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 424, column: 5)
!1206 = !DILocation(line: 433, column: 11, scope: !1102, inlinedAt: !1108)
!1207 = !DILocation(line: 433, column: 5, scope: !1102, inlinedAt: !1108)
!1208 = !DILocation(line: 440, column: 1, scope: !1090, inlinedAt: !1108)
!1209 = !DILocation(line: 426, column: 13, scope: !1204, inlinedAt: !1108)
!1210 = !DILocalVariable(name: "__c", arg: 1, scope: !1211, file: !1212, line: 108, type: !65)
!1211 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1212, file: !1212, line: 108, type: !1213, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1215)
!1212 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!65, !65}
!1215 = !{!1210}
!1216 = !DILocation(line: 108, column: 23, scope: !1211, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 427, column: 11, scope: !1203, inlinedAt: !1108)
!1218 = !DILocation(line: 110, column: 10, scope: !1211, inlinedAt: !1217)
!1219 = !{!1220, !800, i64 40}
!1220 = !{!"_IO_FILE", !909, i64 0, !800, i64 8, !800, i64 16, !800, i64 24, !800, i64 32, !800, i64 40, !800, i64 48, !800, i64 56, !800, i64 64, !800, i64 72, !800, i64 80, !800, i64 88, !800, i64 96, !800, i64 104, !909, i64 112, !909, i64 116, !1221, i64 120, !1222, i64 128, !801, i64 130, !801, i64 131, !800, i64 136, !1221, i64 144, !800, i64 152, !800, i64 160, !800, i64 168, !800, i64 176, !1221, i64 184, !909, i64 192, !801, i64 196}
!1221 = !{!"long", !801, i64 0}
!1222 = !{!"short", !801, i64 0}
!1223 = !{!1220, !800, i64 48}
!1224 = !{!"branch_weights", i32 2000, i32 1}
!1225 = !DILocation(line: 428, column: 9, scope: !1204, inlinedAt: !1108)
!1226 = !DILocation(line: 327, column: 28, scope: !49, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 428, column: 9, scope: !1204, inlinedAt: !1108)
!1228 = !DILocation(line: 330, column: 21, scope: !49, inlinedAt: !1227)
!1229 = !DILocation(line: 330, column: 10, scope: !49, inlinedAt: !1227)
!1230 = !DILocation(line: 429, column: 25, scope: !1204, inlinedAt: !1108)
!1231 = !DILocation(line: 429, column: 15, scope: !1204, inlinedAt: !1108)
!1232 = !DILocation(line: 430, column: 13, scope: !1233, inlinedAt: !1108)
!1233 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 430, column: 13)
!1234 = !DILocation(line: 430, column: 13, scope: !1204, inlinedAt: !1108)
!1235 = !DILocation(line: 431, column: 11, scope: !1233, inlinedAt: !1108)
!1236 = !DILocation(line: 424, column: 36, scope: !1205, inlinedAt: !1108)
!1237 = !DILocation(line: 424, column: 23, scope: !1205, inlinedAt: !1108)
!1238 = !DILocation(line: 424, column: 5, scope: !1106, inlinedAt: !1108)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 424, column: 5, scope: !1106)
!1241 = !DILocation(line: 432, column: 7, scope: !1106)
!1242 = !DILocation(line: 317, column: 3, scope: !844)
!1243 = !DILocation(line: 108, column: 23, scope: !1211, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 317, column: 3, scope: !844)
!1245 = !DILocation(line: 110, column: 10, scope: !1211, inlinedAt: !1244)
!1246 = !DILocation(line: 320, column: 10, scope: !844)
!1247 = !DILocation(line: 321, column: 1, scope: !844)
!1248 = distinct !DISubprogram(name: "print_group_list", scope: !76, file: !76, line: 36, type: !1249, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!28, !62, !13, !22, !22, !28, !7}
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1270, !1272, !1273}
!1252 = !DILocalVariable(name: "username", arg: 1, scope: !1248, file: !76, line: 36, type: !62)
!1253 = !DILocalVariable(name: "ruid", arg: 2, scope: !1248, file: !76, line: 37, type: !13)
!1254 = !DILocalVariable(name: "rgid", arg: 3, scope: !1248, file: !76, line: 37, type: !22)
!1255 = !DILocalVariable(name: "egid", arg: 4, scope: !1248, file: !76, line: 37, type: !22)
!1256 = !DILocalVariable(name: "use_names", arg: 5, scope: !1248, file: !76, line: 38, type: !28)
!1257 = !DILocalVariable(name: "delim", arg: 6, scope: !1248, file: !76, line: 38, type: !7)
!1258 = !DILocalVariable(name: "ok", scope: !1248, file: !76, line: 40, type: !28)
!1259 = !DILocalVariable(name: "pwd", scope: !1248, file: !76, line: 41, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !241, line: 49, size: 384, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1261, file: !241, line: 51, baseType: !6, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1261, file: !241, line: 52, baseType: !6, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1261, file: !241, line: 54, baseType: !15, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1261, file: !241, line: 55, baseType: !23, size: 32, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1261, file: !241, line: 56, baseType: !6, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1261, file: !241, line: 57, baseType: !6, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1261, file: !241, line: 58, baseType: !6, size: 64, offset: 320)
!1270 = !DILocalVariable(name: "groups", scope: !1271, file: !76, line: 61, type: !228)
!1271 = distinct !DILexicalBlock(scope: !1248, file: !76, line: 60, column: 3)
!1272 = !DILocalVariable(name: "n_groups", scope: !1271, file: !76, line: 63, type: !65)
!1273 = !DILocalVariable(name: "i", scope: !1274, file: !76, line: 78, type: !65)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !76, line: 78, column: 5)
!1275 = !DILocation(line: 36, column: 31, scope: !1248)
!1276 = !DILocation(line: 37, column: 25, scope: !1248)
!1277 = !DILocation(line: 37, column: 37, scope: !1248)
!1278 = !DILocation(line: 37, column: 49, scope: !1248)
!1279 = !DILocation(line: 38, column: 24, scope: !1248)
!1280 = !DILocation(line: 38, column: 40, scope: !1248)
!1281 = !DILocation(line: 40, column: 8, scope: !1248)
!1282 = !DILocation(line: 41, column: 18, scope: !1248)
!1283 = !DILocation(line: 43, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1248, file: !76, line: 43, column: 7)
!1285 = !DILocation(line: 43, column: 7, scope: !1248)
!1286 = !DILocation(line: 45, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !76, line: 44, column: 5)
!1288 = !DILocation(line: 46, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1287, file: !76, line: 46, column: 11)
!1290 = !DILocation(line: 46, column: 11, scope: !1287)
!1291 = !DILocation(line: 0, scope: !1248)
!1292 = !DILocalVariable(name: "gid", arg: 1, scope: !1293, file: !76, line: 103, type: !22)
!1293 = distinct !DISubprogram(name: "print_group", scope: !76, file: !76, line: 103, type: !1294, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!28, !22, !28}
!1296 = !{!1292, !1297, !1298, !1306, !1307}
!1297 = !DILocalVariable(name: "use_name", arg: 2, scope: !1293, file: !76, line: 103, type: !28)
!1298 = !DILocalVariable(name: "grp", scope: !1293, file: !76, line: 105, type: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !253, line: 42, size: 256, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1300, file: !253, line: 44, baseType: !6, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1300, file: !253, line: 45, baseType: !6, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1300, file: !253, line: 46, baseType: !23, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1300, file: !253, line: 47, baseType: !229, size: 64, offset: 192)
!1306 = !DILocalVariable(name: "ok", scope: !1293, file: !76, line: 106, type: !28)
!1307 = !DILocalVariable(name: "s", scope: !1293, file: !76, line: 119, type: !6)
!1308 = !DILocation(line: 103, column: 20, scope: !1293, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 50, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1248, file: !76, line: 50, column: 7)
!1311 = !DILocation(line: 103, column: 30, scope: !1293, inlinedAt: !1309)
!1312 = !DILocation(line: 105, column: 17, scope: !1293, inlinedAt: !1309)
!1313 = !DILocation(line: 106, column: 8, scope: !1293, inlinedAt: !1309)
!1314 = !DILocation(line: 108, column: 7, scope: !1293, inlinedAt: !1309)
!1315 = !DILocation(line: 97, column: 21, scope: !75, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 119, column: 34, scope: !1293, inlinedAt: !1309)
!1317 = !DILocation(line: 97, column: 10, scope: !75, inlinedAt: !1316)
!1318 = !DILocation(line: 119, column: 9, scope: !1293, inlinedAt: !1309)
!1319 = !DILocation(line: 120, column: 3, scope: !1293, inlinedAt: !1309)
!1320 = !DILocation(line: 110, column: 13, scope: !1321, inlinedAt: !1309)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !76, line: 109, column: 5)
!1322 = distinct !DILexicalBlock(scope: !1293, file: !76, line: 108, column: 7)
!1323 = !DILocation(line: 111, column: 15, scope: !1324, inlinedAt: !1309)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !76, line: 111, column: 11)
!1325 = !DILocation(line: 111, column: 11, scope: !1321, inlinedAt: !1309)
!1326 = !DILocation(line: 113, column: 24, scope: !1327, inlinedAt: !1309)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !76, line: 112, column: 9)
!1328 = !DILocation(line: 114, column: 18, scope: !1327, inlinedAt: !1309)
!1329 = !DILocation(line: 113, column: 11, scope: !1327, inlinedAt: !1309)
!1330 = !DILocation(line: 50, column: 7, scope: !1248)
!1331 = !DILocation(line: 119, column: 24, scope: !1293, inlinedAt: !1309)
!1332 = !DILocation(line: 53, column: 12, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1248, file: !76, line: 53, column: 7)
!1334 = !DILocation(line: 53, column: 7, scope: !1248)
!1335 = !DILocation(line: 110, column: 10, scope: !1336, inlinedAt: !1339)
!1336 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1212, file: !1212, line: 108, type: !1213, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1337)
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "__c", arg: 1, scope: !1336, file: !1212, line: 108, type: !65)
!1339 = distinct !DILocation(line: 55, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1333, file: !76, line: 54, column: 5)
!1341 = !DILocation(line: 55, column: 7, scope: !1340)
!1342 = !DILocation(line: 103, column: 20, scope: !1293, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 56, column: 12, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !76, line: 56, column: 11)
!1345 = !DILocation(line: 103, column: 30, scope: !1293, inlinedAt: !1343)
!1346 = !DILocation(line: 105, column: 17, scope: !1293, inlinedAt: !1343)
!1347 = !DILocation(line: 106, column: 8, scope: !1293, inlinedAt: !1343)
!1348 = !DILocation(line: 108, column: 7, scope: !1293, inlinedAt: !1343)
!1349 = !DILocation(line: 97, column: 21, scope: !75, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 119, column: 34, scope: !1293, inlinedAt: !1343)
!1351 = !DILocation(line: 97, column: 10, scope: !75, inlinedAt: !1350)
!1352 = !DILocation(line: 119, column: 9, scope: !1293, inlinedAt: !1343)
!1353 = !DILocation(line: 120, column: 3, scope: !1293, inlinedAt: !1343)
!1354 = !DILocation(line: 110, column: 13, scope: !1321, inlinedAt: !1343)
!1355 = !DILocation(line: 111, column: 15, scope: !1324, inlinedAt: !1343)
!1356 = !DILocation(line: 111, column: 11, scope: !1321, inlinedAt: !1343)
!1357 = !DILocation(line: 113, column: 24, scope: !1327, inlinedAt: !1343)
!1358 = !DILocation(line: 114, column: 18, scope: !1327, inlinedAt: !1343)
!1359 = !DILocation(line: 113, column: 11, scope: !1327, inlinedAt: !1343)
!1360 = !DILocation(line: 56, column: 11, scope: !1340)
!1361 = !DILocation(line: 119, column: 24, scope: !1293, inlinedAt: !1343)
!1362 = !DILocation(line: 0, scope: !1289)
!1363 = !DILocation(line: 61, column: 5, scope: !1271)
!1364 = !DILocation(line: 63, column: 43, scope: !1271)
!1365 = !DILocation(line: 63, column: 54, scope: !1271)
!1366 = !DILocation(line: 61, column: 12, scope: !1271)
!1367 = !DILocation(line: 63, column: 20, scope: !1271)
!1368 = !DILocation(line: 63, column: 9, scope: !1271)
!1369 = !DILocation(line: 64, column: 18, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1271, file: !76, line: 64, column: 9)
!1371 = !DILocation(line: 64, column: 9, scope: !1271)
!1372 = !DILocation(line: 78, column: 14, scope: !1274)
!1373 = !DILocation(line: 78, column: 23, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1274, file: !76, line: 78, column: 5)
!1375 = !DILocation(line: 78, column: 5, scope: !1274)
!1376 = !DILocation(line: 0, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !76, line: 72, column: 11)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !76, line: 66, column: 13)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 65, column: 7)
!1380 = !DILocation(line: 66, column: 13, scope: !1379)
!1381 = !DILocation(line: 68, column: 30, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !76, line: 67, column: 11)
!1383 = !DILocation(line: 69, column: 20, scope: !1382)
!1384 = !DILocation(line: 68, column: 13, scope: !1382)
!1385 = !DILocation(line: 70, column: 11, scope: !1382)
!1386 = !DILocation(line: 73, column: 30, scope: !1377)
!1387 = !DILocation(line: 73, column: 13, scope: !1377)
!1388 = !DILocation(line: 79, column: 11, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1374, file: !76, line: 79, column: 11)
!1390 = !DILocation(line: 79, column: 21, scope: !1389)
!1391 = !DILocation(line: 79, column: 42, scope: !1389)
!1392 = !DILocation(line: 79, column: 29, scope: !1389)
!1393 = !DILocation(line: 110, column: 10, scope: !1336, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 81, column: 11, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !76, line: 80, column: 9)
!1396 = !DILocation(line: 82, column: 29, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1395, file: !76, line: 82, column: 15)
!1398 = !DILocation(line: 103, column: 20, scope: !1293, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 82, column: 16, scope: !1397)
!1400 = !DILocation(line: 103, column: 30, scope: !1293, inlinedAt: !1399)
!1401 = !DILocation(line: 105, column: 17, scope: !1293, inlinedAt: !1399)
!1402 = !DILocation(line: 106, column: 8, scope: !1293, inlinedAt: !1399)
!1403 = !DILocation(line: 108, column: 7, scope: !1293, inlinedAt: !1399)
!1404 = !DILocation(line: 97, column: 21, scope: !75, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 119, column: 34, scope: !1293, inlinedAt: !1399)
!1406 = !DILocation(line: 97, column: 10, scope: !75, inlinedAt: !1405)
!1407 = !DILocation(line: 119, column: 9, scope: !1293, inlinedAt: !1399)
!1408 = !DILocation(line: 120, column: 3, scope: !1293, inlinedAt: !1399)
!1409 = !DILocation(line: 110, column: 13, scope: !1321, inlinedAt: !1399)
!1410 = !DILocation(line: 111, column: 15, scope: !1324, inlinedAt: !1399)
!1411 = !DILocation(line: 111, column: 11, scope: !1321, inlinedAt: !1399)
!1412 = !DILocation(line: 113, column: 24, scope: !1327, inlinedAt: !1399)
!1413 = !DILocation(line: 114, column: 18, scope: !1327, inlinedAt: !1399)
!1414 = !DILocation(line: 113, column: 11, scope: !1327, inlinedAt: !1399)
!1415 = !DILocation(line: 82, column: 15, scope: !1395)
!1416 = !DILocation(line: 119, column: 24, scope: !1293, inlinedAt: !1399)
!1417 = !DILocation(line: 78, column: 36, scope: !1374)
!1418 = distinct !{!1418, !1375, !1419}
!1419 = !DILocation(line: 84, column: 9, scope: !1274)
!1420 = !DILocation(line: 86, column: 3, scope: !1248)
!1421 = !DILocation(line: 47, column: 12, scope: !1289)
!1422 = !DILocation(line: 85, column: 11, scope: !1271)
!1423 = !DILocation(line: 85, column: 5, scope: !1271)
!1424 = !DILocation(line: 87, column: 10, scope: !1248)
!1425 = !DILocation(line: 88, column: 1, scope: !1248)
!1426 = !DILocation(line: 103, column: 20, scope: !1293)
!1427 = !DILocation(line: 103, column: 30, scope: !1293)
!1428 = !DILocation(line: 105, column: 17, scope: !1293)
!1429 = !DILocation(line: 106, column: 8, scope: !1293)
!1430 = !DILocation(line: 108, column: 7, scope: !1293)
!1431 = !DILocation(line: 97, column: 21, scope: !75, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 119, column: 34, scope: !1293)
!1433 = !DILocation(line: 110, column: 13, scope: !1321)
!1434 = !DILocation(line: 111, column: 15, scope: !1324)
!1435 = !DILocation(line: 111, column: 11, scope: !1321)
!1436 = !DILocation(line: 113, column: 24, scope: !1327)
!1437 = !DILocation(line: 114, column: 18, scope: !1327)
!1438 = !DILocation(line: 113, column: 11, scope: !1327)
!1439 = !DILocation(line: 116, column: 9, scope: !1327)
!1440 = !DILocation(line: 119, column: 24, scope: !1293)
!1441 = !DILocation(line: 119, column: 13, scope: !1293)
!1442 = !DILocation(line: 97, column: 10, scope: !75, inlinedAt: !1432)
!1443 = !DILocation(line: 119, column: 9, scope: !1293)
!1444 = !DILocation(line: 120, column: 3, scope: !1293)
!1445 = !DILocation(line: 121, column: 3, scope: !1293)
!1446 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !95, file: !95, line: 51, type: !774, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1447)
!1447 = !{!1448}
!1448 = !DILocalVariable(name: "file", arg: 1, scope: !1446, file: !95, line: 51, type: !62)
!1449 = !DILocation(line: 51, column: 41, scope: !1446)
!1450 = !DILocation(line: 53, column: 13, scope: !1446)
!1451 = !DILocation(line: 54, column: 1, scope: !1446)
!1452 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !95, file: !95, line: 88, type: !1453, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !28}
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "ignore", arg: 1, scope: !1452, file: !95, line: 88, type: !28)
!1457 = !DILocation(line: 88, column: 37, scope: !1452)
!1458 = !DILocation(line: 90, column: 16, scope: !1452)
!1459 = !{!1460, !1460, i64 0}
!1460 = !{!"_Bool", !801, i64 0}
!1461 = !DILocation(line: 91, column: 1, scope: !1452)
!1462 = distinct !DISubprogram(name: "close_stdout", scope: !95, file: !95, line: 117, type: !1463, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null}
!1465 = !{!1466}
!1466 = !DILocalVariable(name: "write_error", scope: !1467, file: !95, line: 122, type: !62)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 121, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !95, line: 119, column: 7)
!1469 = !DILocation(line: 119, column: 21, scope: !1468)
!1470 = !DILocation(line: 119, column: 7, scope: !1468)
!1471 = !DILocation(line: 119, column: 29, scope: !1468)
!1472 = !DILocation(line: 120, column: 7, scope: !1468)
!1473 = !DILocation(line: 120, column: 12, scope: !1468)
!1474 = !{i8 0, i8 2}
!1475 = !DILocation(line: 120, column: 25, scope: !1468)
!1476 = !DILocation(line: 120, column: 28, scope: !1468)
!1477 = !DILocation(line: 120, column: 34, scope: !1468)
!1478 = !DILocation(line: 119, column: 7, scope: !1462)
!1479 = !DILocation(line: 122, column: 33, scope: !1467)
!1480 = !DILocation(line: 122, column: 19, scope: !1467)
!1481 = !DILocation(line: 123, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1467, file: !95, line: 123, column: 11)
!1483 = !DILocation(line: 0, scope: !1482)
!1484 = !DILocation(line: 123, column: 11, scope: !1467)
!1485 = !DILocation(line: 124, column: 36, scope: !1482)
!1486 = !DILocation(line: 124, column: 9, scope: !1482)
!1487 = !DILocation(line: 127, column: 9, scope: !1482)
!1488 = !DILocation(line: 129, column: 14, scope: !1467)
!1489 = !DILocation(line: 129, column: 7, scope: !1467)
!1490 = !DILocation(line: 134, column: 42, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1462, file: !95, line: 134, column: 7)
!1492 = !DILocation(line: 134, column: 28, scope: !1491)
!1493 = !DILocation(line: 134, column: 50, scope: !1491)
!1494 = !DILocation(line: 134, column: 7, scope: !1462)
!1495 = !DILocation(line: 135, column: 12, scope: !1491)
!1496 = !DILocation(line: 135, column: 5, scope: !1491)
!1497 = !DILocation(line: 136, column: 1, scope: !1462)
!1498 = distinct !DISubprogram(name: "umaxtostr", scope: !1499, file: !1499, line: 36, type: !1500, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !1502)
!1499 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!6, !205, !6}
!1502 = !{!1503, !1504, !1505}
!1503 = !DILocalVariable(name: "i", arg: 1, scope: !1498, file: !1499, line: 36, type: !205)
!1504 = !DILocalVariable(name: "buf", arg: 2, scope: !1498, file: !1499, line: 36, type: !6)
!1505 = !DILocalVariable(name: "p", scope: !1498, file: !1499, line: 38, type: !6)
!1506 = !DILocation(line: 36, column: 19, scope: !1498)
!1507 = !DILocation(line: 36, column: 28, scope: !1498)
!1508 = !DILocation(line: 38, column: 17, scope: !1498)
!1509 = !DILocation(line: 38, column: 9, scope: !1498)
!1510 = !DILocation(line: 39, column: 6, scope: !1498)
!1511 = !DILocation(line: 41, column: 7, scope: !1498)
!1512 = !DILocation(line: 0, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !1499, line: 50, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1498, file: !1499, line: 41, column: 7)
!1515 = !DILocation(line: 52, column: 24, scope: !1513)
!1516 = !DILocation(line: 52, column: 16, scope: !1513)
!1517 = !DILocation(line: 52, column: 10, scope: !1513)
!1518 = !DILocation(line: 52, column: 14, scope: !1513)
!1519 = !DILocation(line: 53, column: 17, scope: !1513)
!1520 = !DILocation(line: 53, column: 24, scope: !1513)
!1521 = !DILocation(line: 52, column: 9, scope: !1513)
!1522 = distinct !{!1522, !1523, !1524}
!1523 = !DILocation(line: 51, column: 7, scope: !1513)
!1524 = !DILocation(line: 53, column: 28, scope: !1513)
!1525 = !DILocation(line: 56, column: 3, scope: !1498)
!1526 = distinct !DISubprogram(name: "set_program_name", scope: !109, file: !109, line: 39, type: !774, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !105, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "argv0", arg: 1, scope: !1526, file: !109, line: 39, type: !62)
!1529 = !DILocalVariable(name: "slash", scope: !1526, file: !109, line: 46, type: !62)
!1530 = !DILocalVariable(name: "base", scope: !1526, file: !109, line: 47, type: !62)
!1531 = !DILocation(line: 39, column: 31, scope: !1526)
!1532 = !DILocation(line: 51, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1526, file: !109, line: 51, column: 7)
!1534 = !DILocation(line: 51, column: 7, scope: !1526)
!1535 = !DILocation(line: 55, column: 14, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !109, line: 52, column: 5)
!1537 = !DILocation(line: 54, column: 7, scope: !1536)
!1538 = !DILocation(line: 56, column: 7, scope: !1536)
!1539 = !DILocation(line: 59, column: 11, scope: !1526)
!1540 = !DILocation(line: 46, column: 15, scope: !1526)
!1541 = !DILocation(line: 60, column: 17, scope: !1526)
!1542 = !DILocation(line: 60, column: 33, scope: !1526)
!1543 = !DILocation(line: 60, column: 11, scope: !1526)
!1544 = !DILocation(line: 47, column: 15, scope: !1526)
!1545 = !DILocation(line: 61, column: 12, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1526, file: !109, line: 61, column: 7)
!1547 = !DILocation(line: 61, column: 20, scope: !1546)
!1548 = !DILocation(line: 61, column: 25, scope: !1546)
!1549 = !DILocation(line: 61, column: 42, scope: !1546)
!1550 = !DILocation(line: 61, column: 28, scope: !1546)
!1551 = !DILocation(line: 61, column: 61, scope: !1546)
!1552 = !DILocation(line: 61, column: 7, scope: !1526)
!1553 = !DILocation(line: 64, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !109, line: 64, column: 11)
!1555 = distinct !DILexicalBlock(scope: !1546, file: !109, line: 62, column: 5)
!1556 = !DILocation(line: 64, column: 36, scope: !1554)
!1557 = !DILocation(line: 64, column: 11, scope: !1555)
!1558 = !DILocation(line: 66, column: 24, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !109, line: 65, column: 9)
!1560 = !DILocation(line: 70, column: 41, scope: !1559)
!1561 = !DILocation(line: 72, column: 9, scope: !1559)
!1562 = !DILocation(line: 84, column: 16, scope: !1526)
!1563 = !DILocation(line: 90, column: 27, scope: !1526)
!1564 = !DILocation(line: 92, column: 1, scope: !1526)
!1565 = distinct !DISubprogram(name: "clone_quoting_options", scope: !156, file: !156, line: 122, type: !1566, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1569)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1568, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1569 = !{!1570, !1571, !1572}
!1570 = !DILocalVariable(name: "o", arg: 1, scope: !1565, file: !156, line: 122, type: !1568)
!1571 = !DILocalVariable(name: "e", scope: !1565, file: !156, line: 124, type: !65)
!1572 = !DILocalVariable(name: "p", scope: !1565, file: !156, line: 125, type: !1568)
!1573 = !DILocation(line: 122, column: 48, scope: !1565)
!1574 = !DILocation(line: 124, column: 11, scope: !1565)
!1575 = !DILocation(line: 124, column: 7, scope: !1565)
!1576 = !DILocation(line: 125, column: 40, scope: !1565)
!1577 = !DILocation(line: 125, column: 31, scope: !1565)
!1578 = !DILocation(line: 125, column: 27, scope: !1565)
!1579 = !DILocation(line: 127, column: 9, scope: !1565)
!1580 = !DILocation(line: 128, column: 3, scope: !1565)
!1581 = distinct !DISubprogram(name: "get_quoting_style", scope: !156, file: !156, line: 133, type: !1582, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1586)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!115, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1586 = !{!1587}
!1587 = !DILocalVariable(name: "o", arg: 1, scope: !1581, file: !156, line: 133, type: !1584)
!1588 = !DILocation(line: 133, column: 50, scope: !1581)
!1589 = !DILocation(line: 135, column: 11, scope: !1581)
!1590 = !DILocation(line: 135, column: 46, scope: !1581)
!1591 = !{!1592, !801, i64 0}
!1592 = !{!"quoting_options", !801, i64 0, !909, i64 4, !801, i64 8, !800, i64 40, !800, i64 48}
!1593 = !DILocation(line: 135, column: 3, scope: !1581)
!1594 = distinct !DISubprogram(name: "set_quoting_style", scope: !156, file: !156, line: 141, type: !1595, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1568, !115}
!1597 = !{!1598, !1599}
!1598 = !DILocalVariable(name: "o", arg: 1, scope: !1594, file: !156, line: 141, type: !1568)
!1599 = !DILocalVariable(name: "s", arg: 2, scope: !1594, file: !156, line: 141, type: !115)
!1600 = !DILocation(line: 141, column: 44, scope: !1594)
!1601 = !DILocation(line: 141, column: 66, scope: !1594)
!1602 = !DILocation(line: 143, column: 4, scope: !1594)
!1603 = !DILocation(line: 143, column: 39, scope: !1594)
!1604 = !DILocation(line: 143, column: 45, scope: !1594)
!1605 = !DILocation(line: 144, column: 1, scope: !1594)
!1606 = distinct !DISubprogram(name: "set_char_quoting", scope: !156, file: !156, line: 152, type: !1607, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!65, !1568, !7, !65}
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1616, !1617}
!1610 = !DILocalVariable(name: "o", arg: 1, scope: !1606, file: !156, line: 152, type: !1568)
!1611 = !DILocalVariable(name: "c", arg: 2, scope: !1606, file: !156, line: 152, type: !7)
!1612 = !DILocalVariable(name: "i", arg: 3, scope: !1606, file: !156, line: 152, type: !65)
!1613 = !DILocalVariable(name: "uc", scope: !1606, file: !156, line: 154, type: !9)
!1614 = !DILocalVariable(name: "p", scope: !1606, file: !156, line: 155, type: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1616 = !DILocalVariable(name: "shift", scope: !1606, file: !156, line: 157, type: !65)
!1617 = !DILocalVariable(name: "r", scope: !1606, file: !156, line: 158, type: !65)
!1618 = !DILocation(line: 152, column: 43, scope: !1606)
!1619 = !DILocation(line: 152, column: 51, scope: !1606)
!1620 = !DILocation(line: 152, column: 58, scope: !1606)
!1621 = !DILocation(line: 154, column: 17, scope: !1606)
!1622 = !DILocation(line: 156, column: 6, scope: !1606)
!1623 = !DILocation(line: 156, column: 62, scope: !1606)
!1624 = !DILocation(line: 156, column: 57, scope: !1606)
!1625 = !DILocation(line: 155, column: 17, scope: !1606)
!1626 = !DILocation(line: 157, column: 15, scope: !1606)
!1627 = !DILocation(line: 157, column: 7, scope: !1606)
!1628 = !DILocation(line: 158, column: 12, scope: !1606)
!1629 = !DILocation(line: 158, column: 15, scope: !1606)
!1630 = !DILocation(line: 158, column: 25, scope: !1606)
!1631 = !DILocation(line: 158, column: 7, scope: !1606)
!1632 = !DILocation(line: 159, column: 13, scope: !1606)
!1633 = !DILocation(line: 159, column: 18, scope: !1606)
!1634 = !DILocation(line: 159, column: 23, scope: !1606)
!1635 = !DILocation(line: 159, column: 6, scope: !1606)
!1636 = !DILocation(line: 160, column: 3, scope: !1606)
!1637 = distinct !DISubprogram(name: "set_quoting_flags", scope: !156, file: !156, line: 168, type: !1638, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!65, !1568, !65}
!1640 = !{!1641, !1642, !1643}
!1641 = !DILocalVariable(name: "o", arg: 1, scope: !1637, file: !156, line: 168, type: !1568)
!1642 = !DILocalVariable(name: "i", arg: 2, scope: !1637, file: !156, line: 168, type: !65)
!1643 = !DILocalVariable(name: "r", scope: !1637, file: !156, line: 170, type: !65)
!1644 = !DILocation(line: 168, column: 44, scope: !1637)
!1645 = !DILocation(line: 168, column: 51, scope: !1637)
!1646 = !DILocation(line: 171, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !156, line: 171, column: 7)
!1648 = !DILocation(line: 171, column: 7, scope: !1637)
!1649 = !DILocation(line: 173, column: 10, scope: !1637)
!1650 = !{!1592, !909, i64 4}
!1651 = !DILocation(line: 170, column: 7, scope: !1637)
!1652 = !DILocation(line: 174, column: 12, scope: !1637)
!1653 = !DILocation(line: 175, column: 3, scope: !1637)
!1654 = distinct !DISubprogram(name: "set_custom_quoting", scope: !156, file: !156, line: 179, type: !1655, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1568, !62, !62}
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !156, line: 179, type: !1568)
!1659 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1654, file: !156, line: 180, type: !62)
!1660 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1654, file: !156, line: 180, type: !62)
!1661 = !DILocation(line: 179, column: 45, scope: !1654)
!1662 = !DILocation(line: 180, column: 33, scope: !1654)
!1663 = !DILocation(line: 180, column: 57, scope: !1654)
!1664 = !DILocation(line: 182, column: 8, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1654, file: !156, line: 182, column: 7)
!1666 = !DILocation(line: 182, column: 7, scope: !1654)
!1667 = !DILocation(line: 184, column: 6, scope: !1654)
!1668 = !DILocation(line: 184, column: 12, scope: !1654)
!1669 = !DILocation(line: 185, column: 8, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1654, file: !156, line: 185, column: 7)
!1671 = !DILocation(line: 185, column: 23, scope: !1670)
!1672 = !DILocation(line: 185, column: 19, scope: !1670)
!1673 = !DILocation(line: 186, column: 5, scope: !1670)
!1674 = !DILocation(line: 187, column: 6, scope: !1654)
!1675 = !DILocation(line: 187, column: 17, scope: !1654)
!1676 = !{!1592, !800, i64 40}
!1677 = !DILocation(line: 188, column: 6, scope: !1654)
!1678 = !DILocation(line: 188, column: 18, scope: !1654)
!1679 = !{!1592, !800, i64 48}
!1680 = !DILocation(line: 189, column: 1, scope: !1654)
!1681 = distinct !DISubprogram(name: "quotearg_buffer", scope: !156, file: !156, line: 784, type: !1682, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!151, !6, !151, !62, !151, !1584}
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1685 = !DILocalVariable(name: "buffer", arg: 1, scope: !1681, file: !156, line: 784, type: !6)
!1686 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1681, file: !156, line: 784, type: !151)
!1687 = !DILocalVariable(name: "arg", arg: 3, scope: !1681, file: !156, line: 785, type: !62)
!1688 = !DILocalVariable(name: "argsize", arg: 4, scope: !1681, file: !156, line: 785, type: !151)
!1689 = !DILocalVariable(name: "o", arg: 5, scope: !1681, file: !156, line: 786, type: !1584)
!1690 = !DILocalVariable(name: "p", scope: !1681, file: !156, line: 788, type: !1584)
!1691 = !DILocalVariable(name: "e", scope: !1681, file: !156, line: 789, type: !65)
!1692 = !DILocalVariable(name: "r", scope: !1681, file: !156, line: 790, type: !151)
!1693 = !DILocation(line: 784, column: 24, scope: !1681)
!1694 = !DILocation(line: 784, column: 39, scope: !1681)
!1695 = !DILocation(line: 785, column: 30, scope: !1681)
!1696 = !DILocation(line: 785, column: 42, scope: !1681)
!1697 = !DILocation(line: 786, column: 48, scope: !1681)
!1698 = !DILocation(line: 788, column: 37, scope: !1681)
!1699 = !DILocation(line: 788, column: 33, scope: !1681)
!1700 = !DILocation(line: 789, column: 11, scope: !1681)
!1701 = !DILocation(line: 789, column: 7, scope: !1681)
!1702 = !DILocation(line: 791, column: 43, scope: !1681)
!1703 = !DILocation(line: 791, column: 53, scope: !1681)
!1704 = !DILocation(line: 791, column: 60, scope: !1681)
!1705 = !DILocation(line: 792, column: 43, scope: !1681)
!1706 = !DILocation(line: 792, column: 58, scope: !1681)
!1707 = !DILocation(line: 790, column: 14, scope: !1681)
!1708 = !DILocation(line: 790, column: 10, scope: !1681)
!1709 = !DILocation(line: 793, column: 9, scope: !1681)
!1710 = !DILocation(line: 794, column: 3, scope: !1681)
!1711 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !156, file: !156, line: 256, type: !1712, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1716)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!151, !6, !151, !62, !151, !115, !65, !1714, !62, !62}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1741, !1742, !1743, !1744, !1745, !1748, !1749, !1767, !1770, !1771, !1778}
!1717 = !DILocalVariable(name: "buffer", arg: 1, scope: !1711, file: !156, line: 256, type: !6)
!1718 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1711, file: !156, line: 256, type: !151)
!1719 = !DILocalVariable(name: "arg", arg: 3, scope: !1711, file: !156, line: 257, type: !62)
!1720 = !DILocalVariable(name: "argsize", arg: 4, scope: !1711, file: !156, line: 257, type: !151)
!1721 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1711, file: !156, line: 258, type: !115)
!1722 = !DILocalVariable(name: "flags", arg: 6, scope: !1711, file: !156, line: 258, type: !65)
!1723 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1711, file: !156, line: 259, type: !1714)
!1724 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1711, file: !156, line: 260, type: !62)
!1725 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1711, file: !156, line: 261, type: !62)
!1726 = !DILocalVariable(name: "i", scope: !1711, file: !156, line: 263, type: !151)
!1727 = !DILocalVariable(name: "len", scope: !1711, file: !156, line: 264, type: !151)
!1728 = !DILocalVariable(name: "orig_buffersize", scope: !1711, file: !156, line: 265, type: !151)
!1729 = !DILocalVariable(name: "quote_string", scope: !1711, file: !156, line: 266, type: !62)
!1730 = !DILocalVariable(name: "quote_string_len", scope: !1711, file: !156, line: 267, type: !151)
!1731 = !DILocalVariable(name: "backslash_escapes", scope: !1711, file: !156, line: 268, type: !28)
!1732 = !DILocalVariable(name: "unibyte_locale", scope: !1711, file: !156, line: 269, type: !28)
!1733 = !DILocalVariable(name: "elide_outer_quotes", scope: !1711, file: !156, line: 270, type: !28)
!1734 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1711, file: !156, line: 271, type: !28)
!1735 = !DILocalVariable(name: "encountered_single_quote", scope: !1711, file: !156, line: 272, type: !28)
!1736 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1711, file: !156, line: 273, type: !28)
!1737 = !DILocalVariable(name: "c", scope: !1738, file: !156, line: 402, type: !9)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !156, line: 401, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !156, line: 400, column: 3)
!1740 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 400, column: 3)
!1741 = !DILocalVariable(name: "esc", scope: !1738, file: !156, line: 403, type: !9)
!1742 = !DILocalVariable(name: "is_right_quote", scope: !1738, file: !156, line: 404, type: !28)
!1743 = !DILocalVariable(name: "escaping", scope: !1738, file: !156, line: 405, type: !28)
!1744 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1738, file: !156, line: 406, type: !28)
!1745 = !DILocalVariable(name: "m", scope: !1746, file: !156, line: 610, type: !151)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 608, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 426, column: 9)
!1748 = !DILocalVariable(name: "printable", scope: !1746, file: !156, line: 612, type: !28)
!1749 = !DILocalVariable(name: "mbstate", scope: !1750, file: !156, line: 621, type: !1752)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 620, column: 15)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !156, line: 614, column: 17)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1753, line: 6, baseType: !1754)
!1753 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1755, line: 21, baseType: !1756)
!1755 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1755, line: 13, size: 64, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1756, file: !1755, line: 15, baseType: !65, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1756, file: !1755, line: 20, baseType: !1760, size: 32, offset: 32)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !1755, line: 16, size: 32, elements: !1761)
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1760, file: !1755, line: 18, baseType: !17, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1760, file: !1755, line: 19, baseType: !1764, size: 32)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 4)
!1767 = !DILocalVariable(name: "w", scope: !1768, file: !156, line: 631, type: !1769)
!1768 = distinct !DILexicalBlock(scope: !1750, file: !156, line: 630, column: 19)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !152, line: 90, baseType: !65)
!1770 = !DILocalVariable(name: "bytes", scope: !1768, file: !156, line: 632, type: !151)
!1771 = !DILocalVariable(name: "j", scope: !1772, file: !156, line: 657, type: !151)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !156, line: 656, column: 27)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !156, line: 654, column: 29)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !156, line: 649, column: 23)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !156, line: 641, column: 30)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !156, line: 636, column: 30)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !156, line: 634, column: 25)
!1778 = !DILocalVariable(name: "ilim", scope: !1779, file: !156, line: 684, type: !151)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !156, line: 681, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1746, file: !156, line: 680, column: 17)
!1781 = !DILocation(line: 256, column: 33, scope: !1711)
!1782 = !DILocation(line: 256, column: 48, scope: !1711)
!1783 = !DILocation(line: 257, column: 39, scope: !1711)
!1784 = !DILocation(line: 257, column: 51, scope: !1711)
!1785 = !DILocation(line: 258, column: 46, scope: !1711)
!1786 = !DILocation(line: 258, column: 65, scope: !1711)
!1787 = !DILocation(line: 259, column: 47, scope: !1711)
!1788 = !DILocation(line: 260, column: 39, scope: !1711)
!1789 = !DILocation(line: 261, column: 39, scope: !1711)
!1790 = !DILocation(line: 264, column: 10, scope: !1711)
!1791 = !DILocation(line: 265, column: 10, scope: !1711)
!1792 = !DILocation(line: 266, column: 15, scope: !1711)
!1793 = !DILocation(line: 267, column: 10, scope: !1711)
!1794 = !DILocation(line: 268, column: 8, scope: !1711)
!1795 = !DILocation(line: 269, column: 25, scope: !1711)
!1796 = !DILocation(line: 269, column: 36, scope: !1711)
!1797 = !DILocation(line: 270, column: 8, scope: !1711)
!1798 = !DILocation(line: 271, column: 8, scope: !1711)
!1799 = !DILocation(line: 272, column: 8, scope: !1711)
!1800 = !DILocation(line: 273, column: 8, scope: !1711)
!1801 = !DILocation(line: 273, column: 3, scope: !1711)
!1802 = !DILocation(line: 0, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 317, column: 5)
!1804 = !DILocation(line: 316, column: 3, scope: !1711)
!1805 = !DILocation(line: 323, column: 11, scope: !1803)
!1806 = !DILocation(line: 323, column: 12, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !156, line: 323, column: 11)
!1808 = !DILocation(line: 324, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !156, line: 324, column: 9)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !156, line: 324, column: 9)
!1811 = !DILocation(line: 324, column: 9, scope: !1810)
!1812 = !DILocation(line: 362, column: 26, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !156, line: 340, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !156, line: 339, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1803, file: !156, line: 338, column: 7)
!1816 = !DILocation(line: 363, column: 27, scope: !1813)
!1817 = !DILocation(line: 364, column: 11, scope: !1813)
!1818 = !DILocation(line: 365, column: 14, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !156, line: 365, column: 13)
!1820 = !DILocation(line: 365, column: 13, scope: !1815)
!1821 = !DILocation(line: 366, column: 43, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !156, line: 366, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !156, line: 366, column: 11)
!1824 = !DILocation(line: 366, column: 11, scope: !1823)
!1825 = !DILocation(line: 367, column: 13, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !156, line: 367, column: 13)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !156, line: 367, column: 13)
!1828 = !DILocation(line: 367, column: 13, scope: !1827)
!1829 = !DILocation(line: 366, column: 70, scope: !1822)
!1830 = distinct !{!1830, !1824, !1831}
!1831 = !DILocation(line: 367, column: 13, scope: !1823)
!1832 = !DILocation(line: 370, column: 28, scope: !1815)
!1833 = !DILocation(line: 372, column: 7, scope: !1803)
!1834 = !DILocation(line: 376, column: 7, scope: !1803)
!1835 = !DILocation(line: 379, column: 7, scope: !1803)
!1836 = !DILocation(line: 381, column: 12, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1803, file: !156, line: 381, column: 11)
!1838 = !DILocation(line: 381, column: 11, scope: !1803)
!1839 = !DILocation(line: 0, scope: !1837)
!1840 = !DILocation(line: 386, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1803, file: !156, line: 386, column: 11)
!1842 = !DILocation(line: 386, column: 11, scope: !1803)
!1843 = !DILocation(line: 387, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !156, line: 387, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !156, line: 387, column: 9)
!1846 = !DILocation(line: 387, column: 9, scope: !1845)
!1847 = !DILocation(line: 394, column: 7, scope: !1803)
!1848 = !DILocation(line: 397, column: 7, scope: !1803)
!1849 = !DILocation(line: 0, scope: !1711)
!1850 = !DILocation(line: 263, column: 10, scope: !1711)
!1851 = !DILocation(line: 400, column: 8, scope: !1740)
!1852 = !DILocation(line: 0, scope: !1739)
!1853 = !DILocation(line: 400, column: 27, scope: !1739)
!1854 = !DILocation(line: 400, column: 19, scope: !1739)
!1855 = !DILocation(line: 400, column: 41, scope: !1739)
!1856 = !DILocation(line: 400, column: 48, scope: !1739)
!1857 = !DILocation(line: 400, column: 3, scope: !1740)
!1858 = !DILocation(line: 400, column: 60, scope: !1739)
!1859 = !DILocation(line: 404, column: 12, scope: !1738)
!1860 = !DILocation(line: 405, column: 12, scope: !1738)
!1861 = !DILocation(line: 406, column: 12, scope: !1738)
!1862 = !DILocation(line: 409, column: 11, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 408, column: 11)
!1864 = !DILocation(line: 411, column: 17, scope: !1863)
!1865 = !DILocation(line: 412, column: 39, scope: !1863)
!1866 = !DILocation(line: 416, column: 32, scope: !1863)
!1867 = !DILocation(line: 412, column: 19, scope: !1863)
!1868 = !DILocation(line: 412, column: 15, scope: !1863)
!1869 = !DILocation(line: 417, column: 11, scope: !1863)
!1870 = !DILocation(line: 417, column: 26, scope: !1863)
!1871 = !DILocation(line: 417, column: 14, scope: !1863)
!1872 = !DILocation(line: 417, column: 63, scope: !1863)
!1873 = !DILocation(line: 408, column: 11, scope: !1738)
!1874 = !DILocation(line: 0, scope: !1738)
!1875 = !DILocation(line: 424, column: 11, scope: !1738)
!1876 = !DILocation(line: 402, column: 21, scope: !1738)
!1877 = !DILocation(line: 425, column: 7, scope: !1738)
!1878 = !DILocation(line: 428, column: 15, scope: !1747)
!1879 = !DILocation(line: 430, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !156, line: 430, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !156, line: 429, column: 13)
!1882 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 428, column: 15)
!1883 = !DILocation(line: 430, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !156, line: 430, column: 15)
!1885 = !DILocation(line: 430, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !156, line: 430, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !156, line: 430, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !156, line: 430, column: 15)
!1889 = !DILocation(line: 430, column: 15, scope: !1887)
!1890 = !DILocation(line: 430, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !156, line: 430, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !156, line: 430, column: 15)
!1893 = !DILocation(line: 430, column: 15, scope: !1892)
!1894 = !DILocation(line: 430, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !156, line: 430, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !156, line: 430, column: 15)
!1897 = !DILocation(line: 430, column: 15, scope: !1896)
!1898 = !DILocation(line: 430, column: 15, scope: !1888)
!1899 = !DILocation(line: 430, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !156, line: 430, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1880, file: !156, line: 430, column: 15)
!1902 = !DILocation(line: 430, column: 15, scope: !1901)
!1903 = !DILocation(line: 438, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1881, file: !156, line: 437, column: 19)
!1905 = !DILocation(line: 438, column: 24, scope: !1904)
!1906 = !DILocation(line: 438, column: 28, scope: !1904)
!1907 = !DILocation(line: 438, column: 38, scope: !1904)
!1908 = !DILocation(line: 438, column: 48, scope: !1904)
!1909 = !DILocation(line: 438, column: 59, scope: !1904)
!1910 = !DILocation(line: 440, column: 19, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !156, line: 440, column: 19)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !156, line: 440, column: 19)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !156, line: 439, column: 17)
!1914 = !DILocation(line: 440, column: 19, scope: !1912)
!1915 = !DILocation(line: 441, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !156, line: 441, column: 19)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !156, line: 441, column: 19)
!1918 = !DILocation(line: 441, column: 19, scope: !1917)
!1919 = !DILocation(line: 442, column: 17, scope: !1913)
!1920 = !DILocation(line: 449, column: 20, scope: !1882)
!1921 = !DILocation(line: 454, column: 11, scope: !1747)
!1922 = !DILocation(line: 457, column: 19, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 455, column: 13)
!1924 = !DILocation(line: 463, column: 19, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !156, line: 462, column: 19)
!1926 = !DILocation(line: 463, column: 24, scope: !1925)
!1927 = !DILocation(line: 463, column: 28, scope: !1925)
!1928 = !DILocation(line: 463, column: 38, scope: !1925)
!1929 = !DILocation(line: 463, column: 47, scope: !1925)
!1930 = !DILocation(line: 463, column: 41, scope: !1925)
!1931 = !DILocation(line: 463, column: 52, scope: !1925)
!1932 = !DILocation(line: 462, column: 19, scope: !1923)
!1933 = !DILocation(line: 464, column: 25, scope: !1925)
!1934 = !DILocation(line: 464, column: 17, scope: !1925)
!1935 = !DILocation(line: 471, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !156, line: 465, column: 19)
!1937 = !DILocation(line: 475, column: 21, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !156, line: 475, column: 21)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !156, line: 475, column: 21)
!1940 = !DILocation(line: 475, column: 21, scope: !1939)
!1941 = !DILocation(line: 476, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !156, line: 476, column: 21)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !156, line: 476, column: 21)
!1944 = !DILocation(line: 476, column: 21, scope: !1943)
!1945 = !DILocation(line: 477, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !156, line: 477, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1936, file: !156, line: 477, column: 21)
!1948 = !DILocation(line: 477, column: 21, scope: !1947)
!1949 = !DILocation(line: 478, column: 21, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !156, line: 478, column: 21)
!1951 = distinct !DILexicalBlock(scope: !1936, file: !156, line: 478, column: 21)
!1952 = !DILocation(line: 478, column: 21, scope: !1951)
!1953 = !DILocation(line: 479, column: 21, scope: !1936)
!1954 = !DILocation(line: 403, column: 21, scope: !1738)
!1955 = !DILocation(line: 492, column: 31, scope: !1747)
!1956 = !DILocation(line: 493, column: 31, scope: !1747)
!1957 = !DILocation(line: 495, column: 31, scope: !1747)
!1958 = !DILocation(line: 496, column: 31, scope: !1747)
!1959 = !DILocation(line: 497, column: 31, scope: !1747)
!1960 = !DILocation(line: 500, column: 15, scope: !1747)
!1961 = !DILocation(line: 502, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !156, line: 501, column: 13)
!1963 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 500, column: 15)
!1964 = !DILocation(line: 509, column: 33, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 509, column: 15)
!1966 = !DILocation(line: 0, scope: !1747)
!1967 = !DILocation(line: 514, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 513, column: 15)
!1969 = !DILocation(line: 518, column: 15, scope: !1747)
!1970 = !DILocation(line: 526, column: 26, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 526, column: 15)
!1972 = !DILocation(line: 526, column: 15, scope: !1747)
!1973 = !DILocation(line: 526, column: 40, scope: !1971)
!1974 = !DILocation(line: 526, column: 47, scope: !1971)
!1975 = !DILocation(line: 530, column: 17, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 530, column: 15)
!1977 = !DILocation(line: 526, column: 18, scope: !1971)
!1978 = !DILocation(line: 526, column: 65, scope: !1971)
!1979 = !DILocation(line: 530, column: 15, scope: !1747)
!1980 = !DILocation(line: 535, column: 11, scope: !1747)
!1981 = !DILocation(line: 549, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 548, column: 15)
!1983 = !DILocation(line: 556, column: 15, scope: !1747)
!1984 = !DILocation(line: 558, column: 19, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !156, line: 557, column: 13)
!1986 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 556, column: 15)
!1987 = !DILocation(line: 561, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !156, line: 561, column: 19)
!1989 = !DILocation(line: 561, column: 35, scope: !1988)
!1990 = !DILocation(line: 561, column: 30, scope: !1988)
!1991 = !DILocation(line: 570, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !156, line: 570, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !156, line: 570, column: 15)
!1994 = !DILocation(line: 570, column: 15, scope: !1993)
!1995 = !DILocation(line: 571, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !156, line: 571, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1985, file: !156, line: 571, column: 15)
!1998 = !DILocation(line: 571, column: 15, scope: !1997)
!1999 = !DILocation(line: 572, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !156, line: 572, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1985, file: !156, line: 572, column: 15)
!2002 = !DILocation(line: 572, column: 15, scope: !2001)
!2003 = !DILocation(line: 574, column: 13, scope: !1985)
!2004 = !DILocation(line: 614, column: 17, scope: !1746)
!2005 = !DILocation(line: 610, column: 20, scope: !1746)
!2006 = !DILocation(line: 617, column: 29, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1751, file: !156, line: 615, column: 15)
!2008 = !{!1222, !1222, i64 0}
!2009 = !DILocation(line: 617, column: 27, scope: !2007)
!2010 = !DILocation(line: 612, column: 18, scope: !1746)
!2011 = !DILocation(line: 618, column: 15, scope: !2007)
!2012 = !DILocation(line: 621, column: 17, scope: !1750)
!2013 = !DILocation(line: 622, column: 17, scope: !1750)
!2014 = !DILocation(line: 626, column: 29, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1750, file: !156, line: 626, column: 21)
!2016 = !DILocation(line: 626, column: 21, scope: !1750)
!2017 = !DILocation(line: 627, column: 29, scope: !2015)
!2018 = !DILocation(line: 627, column: 19, scope: !2015)
!2019 = !DILocation(line: 0, scope: !1863)
!2020 = !DILocation(line: 629, column: 17, scope: !1750)
!2021 = !DILocation(line: 624, column: 19, scope: !1750)
!2022 = !DILocation(line: 625, column: 27, scope: !1750)
!2023 = !DILocation(line: 631, column: 21, scope: !1768)
!2024 = !DILocation(line: 632, column: 56, scope: !1768)
!2025 = !DILocation(line: 632, column: 50, scope: !1768)
!2026 = !DILocation(line: 633, column: 53, scope: !1768)
!2027 = !DILocation(line: 621, column: 27, scope: !1750)
!2028 = !DILocation(line: 631, column: 29, scope: !1768)
!2029 = !DILocation(line: 632, column: 36, scope: !1768)
!2030 = !DILocation(line: 632, column: 28, scope: !1768)
!2031 = !DILocation(line: 634, column: 25, scope: !1768)
!2032 = !DILocation(line: 644, column: 38, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1775, file: !156, line: 642, column: 23)
!2034 = !DILocation(line: 644, column: 48, scope: !2033)
!2035 = !DILocation(line: 644, column: 51, scope: !2033)
!2036 = !DILocation(line: 644, column: 25, scope: !2033)
!2037 = !DILocation(line: 645, column: 28, scope: !2033)
!2038 = !DILocation(line: 644, column: 34, scope: !2033)
!2039 = distinct !{!2039, !2036, !2037}
!2040 = !DILocation(line: 658, column: 43, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !156, line: 658, column: 29)
!2042 = distinct !DILexicalBlock(scope: !1772, file: !156, line: 658, column: 29)
!2043 = !DILocation(line: 655, column: 29, scope: !1773)
!2044 = !DILocation(line: 657, column: 36, scope: !1772)
!2045 = !DILocation(line: 659, column: 49, scope: !2041)
!2046 = !DILocation(line: 659, column: 39, scope: !2041)
!2047 = !DILocation(line: 659, column: 31, scope: !2041)
!2048 = !DILocation(line: 658, column: 53, scope: !2041)
!2049 = !DILocation(line: 658, column: 29, scope: !2042)
!2050 = distinct !{!2050, !2049, !2051}
!2051 = !DILocation(line: 667, column: 33, scope: !2042)
!2052 = !DILocation(line: 674, column: 19, scope: !1750)
!2053 = !DILocation(line: 670, column: 41, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1774, file: !156, line: 670, column: 29)
!2055 = !DILocation(line: 670, column: 31, scope: !2054)
!2056 = !DILocation(line: 670, column: 29, scope: !1774)
!2057 = !DILocation(line: 672, column: 27, scope: !1774)
!2058 = !DILocation(line: 675, column: 26, scope: !1750)
!2059 = !DILocation(line: 675, column: 24, scope: !1750)
!2060 = !DILocation(line: 674, column: 19, scope: !1768)
!2061 = distinct !{!2061, !2020, !2062}
!2062 = !DILocation(line: 675, column: 44, scope: !1750)
!2063 = !DILocation(line: 676, column: 15, scope: !1751)
!2064 = !DILocation(line: 0, scope: !2015)
!2065 = !DILocation(line: 0, scope: !1750)
!2066 = !DILocation(line: 678, column: 40, scope: !1746)
!2067 = !DILocation(line: 680, column: 19, scope: !1780)
!2068 = !DILocation(line: 680, column: 45, scope: !1780)
!2069 = !DILocation(line: 680, column: 23, scope: !1780)
!2070 = !DILocation(line: 684, column: 33, scope: !1779)
!2071 = !DILocation(line: 684, column: 24, scope: !1779)
!2072 = !DILocation(line: 686, column: 17, scope: !1779)
!2073 = !DILocation(line: 0, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !156, line: 687, column: 19)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !156, line: 686, column: 17)
!2076 = distinct !DILexicalBlock(scope: !1779, file: !156, line: 686, column: 17)
!2077 = !DILocation(line: 0, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !156, line: 703, column: 21)
!2079 = !DILocation(line: 0, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !156, line: 696, column: 23)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !156, line: 695, column: 30)
!2082 = distinct !DILexicalBlock(scope: !2074, file: !156, line: 688, column: 25)
!2083 = !DILocation(line: 688, column: 43, scope: !2082)
!2084 = !DILocation(line: 690, column: 25, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !156, line: 690, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !156, line: 689, column: 23)
!2087 = !DILocation(line: 690, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !156, line: 690, column: 25)
!2089 = !DILocation(line: 690, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !156, line: 690, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !156, line: 690, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !156, line: 690, column: 25)
!2093 = !DILocation(line: 690, column: 25, scope: !2091)
!2094 = !DILocation(line: 690, column: 25, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !156, line: 690, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !156, line: 690, column: 25)
!2097 = !DILocation(line: 690, column: 25, scope: !2096)
!2098 = !DILocation(line: 690, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !156, line: 690, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2092, file: !156, line: 690, column: 25)
!2101 = !DILocation(line: 690, column: 25, scope: !2100)
!2102 = !DILocation(line: 690, column: 25, scope: !2092)
!2103 = !DILocation(line: 690, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !156, line: 690, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2085, file: !156, line: 690, column: 25)
!2106 = !DILocation(line: 690, column: 25, scope: !2105)
!2107 = !DILocation(line: 691, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !156, line: 691, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2086, file: !156, line: 691, column: 25)
!2110 = !DILocation(line: 691, column: 25, scope: !2109)
!2111 = !DILocation(line: 692, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !156, line: 692, column: 25)
!2113 = distinct !DILexicalBlock(scope: !2086, file: !156, line: 692, column: 25)
!2114 = !DILocation(line: 692, column: 25, scope: !2113)
!2115 = !DILocation(line: 693, column: 38, scope: !2086)
!2116 = !DILocation(line: 693, column: 33, scope: !2086)
!2117 = !DILocation(line: 694, column: 23, scope: !2086)
!2118 = !DILocation(line: 695, column: 30, scope: !2081)
!2119 = !DILocation(line: 695, column: 30, scope: !2082)
!2120 = !DILocation(line: 697, column: 25, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !156, line: 697, column: 25)
!2122 = distinct !DILexicalBlock(scope: !2080, file: !156, line: 697, column: 25)
!2123 = !DILocation(line: 697, column: 25, scope: !2122)
!2124 = !DILocation(line: 699, column: 23, scope: !2080)
!2125 = !DILocation(line: 0, scope: !2113)
!2126 = !DILocation(line: 0, scope: !2086)
!2127 = !DILocation(line: 0, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1863, file: !156, line: 418, column: 9)
!2129 = !DILocation(line: 0, scope: !2085)
!2130 = !DILocation(line: 700, column: 35, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2074, file: !156, line: 700, column: 25)
!2132 = !DILocation(line: 700, column: 30, scope: !2131)
!2133 = !DILocation(line: 700, column: 25, scope: !2074)
!2134 = !DILocation(line: 702, column: 21, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !156, line: 702, column: 21)
!2136 = distinct !DILexicalBlock(scope: !2074, file: !156, line: 702, column: 21)
!2137 = !DILocation(line: 702, column: 21, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !156, line: 702, column: 21)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !156, line: 702, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !156, line: 702, column: 21)
!2141 = !DILocation(line: 702, column: 21, scope: !2139)
!2142 = !DILocation(line: 702, column: 21, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !156, line: 702, column: 21)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !156, line: 702, column: 21)
!2145 = !DILocation(line: 702, column: 21, scope: !2144)
!2146 = !DILocation(line: 702, column: 21, scope: !2140)
!2147 = !DILocation(line: 0, scope: !2122)
!2148 = !DILocation(line: 703, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2078, file: !156, line: 703, column: 21)
!2150 = !DILocation(line: 703, column: 21, scope: !2078)
!2151 = !DILocation(line: 704, column: 25, scope: !2074)
!2152 = !DILocation(line: 686, column: 17, scope: !2075)
!2153 = distinct !{!2153, !2154, !2155}
!2154 = !DILocation(line: 686, column: 17, scope: !2076)
!2155 = !DILocation(line: 705, column: 19, scope: !2076)
!2156 = !DILocation(line: 0, scope: !1740)
!2157 = !DILocation(line: 416, column: 30, scope: !1863)
!2158 = !DILocation(line: 712, column: 34, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 712, column: 11)
!2160 = !DILocation(line: 714, column: 14, scope: !2159)
!2161 = !DILocation(line: 715, column: 14, scope: !2159)
!2162 = !DILocation(line: 715, column: 35, scope: !2159)
!2163 = !DILocation(line: 715, column: 17, scope: !2159)
!2164 = !DILocation(line: 715, column: 47, scope: !2159)
!2165 = !DILocation(line: 715, column: 65, scope: !2159)
!2166 = !DILocation(line: 716, column: 15, scope: !2159)
!2167 = !DILocation(line: 716, column: 11, scope: !2159)
!2168 = !DILocation(line: 712, column: 11, scope: !1738)
!2169 = !DILocation(line: 400, column: 10, scope: !1740)
!2170 = !DILocation(line: 0, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !156, line: 519, column: 13)
!2172 = distinct !DILexicalBlock(scope: !1747, file: !156, line: 518, column: 15)
!2173 = !DILocation(line: 720, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 720, column: 7)
!2175 = !DILocation(line: 720, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2174, file: !156, line: 720, column: 7)
!2177 = !DILocation(line: 720, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !156, line: 720, column: 7)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !156, line: 720, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !156, line: 720, column: 7)
!2181 = !DILocation(line: 720, column: 7, scope: !2179)
!2182 = !DILocation(line: 720, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !156, line: 720, column: 7)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !156, line: 720, column: 7)
!2185 = !DILocation(line: 720, column: 7, scope: !2184)
!2186 = !DILocation(line: 720, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !156, line: 720, column: 7)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !156, line: 720, column: 7)
!2189 = !DILocation(line: 720, column: 7, scope: !2188)
!2190 = !DILocation(line: 720, column: 7, scope: !2180)
!2191 = !DILocation(line: 720, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !156, line: 720, column: 7)
!2193 = distinct !DILexicalBlock(scope: !2174, file: !156, line: 720, column: 7)
!2194 = !DILocation(line: 720, column: 7, scope: !2193)
!2195 = !DILocation(line: 723, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !156, line: 723, column: 7)
!2197 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 723, column: 7)
!2198 = !DILocation(line: 424, column: 9, scope: !1738)
!2199 = !DILocation(line: 723, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !156, line: 723, column: 7)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !156, line: 723, column: 7)
!2202 = distinct !DILexicalBlock(scope: !2196, file: !156, line: 723, column: 7)
!2203 = !DILocation(line: 723, column: 7, scope: !2201)
!2204 = !DILocation(line: 723, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !156, line: 723, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !156, line: 723, column: 7)
!2207 = !DILocation(line: 723, column: 7, scope: !2206)
!2208 = !DILocation(line: 723, column: 7, scope: !2202)
!2209 = !DILocation(line: 724, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !156, line: 724, column: 7)
!2211 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 724, column: 7)
!2212 = !DILocation(line: 724, column: 7, scope: !2211)
!2213 = !DILocation(line: 726, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1738, file: !156, line: 726, column: 11)
!2215 = !DILocation(line: 726, column: 11, scope: !1738)
!2216 = !DILocation(line: 728, column: 5, scope: !1739)
!2217 = !DILocation(line: 400, column: 75, scope: !1739)
!2218 = !DILocation(line: 400, column: 3, scope: !1739)
!2219 = distinct !{!2219, !1857, !2220}
!2220 = !DILocation(line: 728, column: 5, scope: !1740)
!2221 = !DILocation(line: 730, column: 11, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 730, column: 7)
!2223 = !DILocation(line: 730, column: 16, scope: !2222)
!2224 = !DILocation(line: 738, column: 51, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 738, column: 7)
!2226 = !DILocation(line: 739, column: 10, scope: !2225)
!2227 = !DILocation(line: 741, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !156, line: 741, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !156, line: 740, column: 5)
!2230 = !DILocation(line: 741, column: 11, scope: !2229)
!2231 = !DILocation(line: 742, column: 16, scope: !2228)
!2232 = !DILocation(line: 742, column: 9, scope: !2228)
!2233 = !DILocation(line: 746, column: 18, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !156, line: 746, column: 16)
!2235 = !DILocation(line: 746, column: 32, scope: !2234)
!2236 = !DILocation(line: 746, column: 29, scope: !2234)
!2237 = !DILocation(line: 755, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 755, column: 7)
!2239 = !DILocation(line: 755, column: 20, scope: !2238)
!2240 = !DILocation(line: 756, column: 12, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !156, line: 756, column: 5)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !156, line: 756, column: 5)
!2243 = !DILocation(line: 756, column: 5, scope: !2242)
!2244 = !DILocation(line: 757, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !156, line: 757, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !156, line: 757, column: 7)
!2247 = !DILocation(line: 757, column: 7, scope: !2246)
!2248 = !DILocation(line: 756, column: 39, scope: !2241)
!2249 = distinct !{!2249, !2243, !2250}
!2250 = !DILocation(line: 757, column: 7, scope: !2242)
!2251 = !DILocation(line: 759, column: 11, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 759, column: 7)
!2253 = !DILocation(line: 759, column: 7, scope: !1711)
!2254 = !DILocation(line: 760, column: 5, scope: !2252)
!2255 = !DILocation(line: 760, column: 17, scope: !2252)
!2256 = !DILocation(line: 766, column: 21, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1711, file: !156, line: 766, column: 7)
!2258 = !DILocation(line: 766, column: 54, scope: !2257)
!2259 = !DILocation(line: 766, column: 51, scope: !2257)
!2260 = !DILocation(line: 770, column: 42, scope: !1711)
!2261 = !DILocation(line: 768, column: 10, scope: !1711)
!2262 = !DILocation(line: 768, column: 3, scope: !1711)
!2263 = !DILocation(line: 772, column: 1, scope: !1711)
!2264 = distinct !DISubprogram(name: "gettext_quote", scope: !156, file: !156, line: 207, type: !2265, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!62, !62, !115}
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "msgid", arg: 1, scope: !2264, file: !156, line: 207, type: !62)
!2269 = !DILocalVariable(name: "s", arg: 2, scope: !2264, file: !156, line: 207, type: !115)
!2270 = !DILocalVariable(name: "translation", scope: !2264, file: !156, line: 209, type: !62)
!2271 = !DILocalVariable(name: "locale_code", scope: !2264, file: !156, line: 210, type: !62)
!2272 = !DILocation(line: 207, column: 28, scope: !2264)
!2273 = !DILocation(line: 207, column: 54, scope: !2264)
!2274 = !DILocation(line: 209, column: 29, scope: !2264)
!2275 = !DILocation(line: 209, column: 15, scope: !2264)
!2276 = !DILocation(line: 212, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2264, file: !156, line: 212, column: 7)
!2278 = !DILocation(line: 212, column: 7, scope: !2264)
!2279 = !DILocation(line: 233, column: 17, scope: !2264)
!2280 = !DILocation(line: 210, column: 15, scope: !2264)
!2281 = !DILocalVariable(name: "s1", arg: 1, scope: !2282, file: !2283, line: 160, type: !62)
!2282 = distinct !DISubprogram(name: "strcaseeq0", scope: !2283, file: !2283, line: 160, type: !2284, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2286)
!2283 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!65, !62, !62, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2286 = !{!2281, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2287 = !DILocalVariable(name: "s2", arg: 2, scope: !2282, file: !2283, line: 160, type: !62)
!2288 = !DILocalVariable(name: "s20", arg: 3, scope: !2282, file: !2283, line: 160, type: !7)
!2289 = !DILocalVariable(name: "s21", arg: 4, scope: !2282, file: !2283, line: 160, type: !7)
!2290 = !DILocalVariable(name: "s22", arg: 5, scope: !2282, file: !2283, line: 160, type: !7)
!2291 = !DILocalVariable(name: "s23", arg: 6, scope: !2282, file: !2283, line: 160, type: !7)
!2292 = !DILocalVariable(name: "s24", arg: 7, scope: !2282, file: !2283, line: 160, type: !7)
!2293 = !DILocalVariable(name: "s25", arg: 8, scope: !2282, file: !2283, line: 160, type: !7)
!2294 = !DILocalVariable(name: "s26", arg: 9, scope: !2282, file: !2283, line: 160, type: !7)
!2295 = !DILocalVariable(name: "s27", arg: 10, scope: !2282, file: !2283, line: 160, type: !7)
!2296 = !DILocalVariable(name: "s28", arg: 11, scope: !2282, file: !2283, line: 160, type: !7)
!2297 = !DILocation(line: 160, column: 25, scope: !2282, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 234, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2264, file: !156, line: 234, column: 7)
!2300 = !DILocation(line: 160, column: 41, scope: !2282, inlinedAt: !2298)
!2301 = !DILocation(line: 160, column: 50, scope: !2282, inlinedAt: !2298)
!2302 = !DILocation(line: 160, column: 60, scope: !2282, inlinedAt: !2298)
!2303 = !DILocation(line: 160, column: 70, scope: !2282, inlinedAt: !2298)
!2304 = !DILocation(line: 160, column: 80, scope: !2282, inlinedAt: !2298)
!2305 = !DILocation(line: 160, column: 90, scope: !2282, inlinedAt: !2298)
!2306 = !DILocation(line: 160, column: 100, scope: !2282, inlinedAt: !2298)
!2307 = !DILocation(line: 160, column: 110, scope: !2282, inlinedAt: !2298)
!2308 = !DILocation(line: 160, column: 120, scope: !2282, inlinedAt: !2298)
!2309 = !DILocation(line: 160, column: 130, scope: !2282, inlinedAt: !2298)
!2310 = !DILocation(line: 162, column: 7, scope: !2311, inlinedAt: !2298)
!2311 = distinct !DILexicalBlock(scope: !2282, file: !2283, line: 162, column: 7)
!2312 = !DILocalVariable(name: "s1", arg: 1, scope: !2313, file: !2283, line: 146, type: !62)
!2313 = distinct !DISubprogram(name: "strcaseeq1", scope: !2283, file: !2283, line: 146, type: !2314, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!65, !62, !62, !7, !7, !7, !7, !7, !7, !7, !7}
!2316 = !{!2312, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2317 = !DILocalVariable(name: "s2", arg: 2, scope: !2313, file: !2283, line: 146, type: !62)
!2318 = !DILocalVariable(name: "s21", arg: 3, scope: !2313, file: !2283, line: 146, type: !7)
!2319 = !DILocalVariable(name: "s22", arg: 4, scope: !2313, file: !2283, line: 146, type: !7)
!2320 = !DILocalVariable(name: "s23", arg: 5, scope: !2313, file: !2283, line: 146, type: !7)
!2321 = !DILocalVariable(name: "s24", arg: 6, scope: !2313, file: !2283, line: 146, type: !7)
!2322 = !DILocalVariable(name: "s25", arg: 7, scope: !2313, file: !2283, line: 146, type: !7)
!2323 = !DILocalVariable(name: "s26", arg: 8, scope: !2313, file: !2283, line: 146, type: !7)
!2324 = !DILocalVariable(name: "s27", arg: 9, scope: !2313, file: !2283, line: 146, type: !7)
!2325 = !DILocalVariable(name: "s28", arg: 10, scope: !2313, file: !2283, line: 146, type: !7)
!2326 = !DILocation(line: 146, column: 25, scope: !2313, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 167, column: 16, scope: !2328, inlinedAt: !2298)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2283, line: 164, column: 11)
!2329 = distinct !DILexicalBlock(scope: !2311, file: !2283, line: 163, column: 5)
!2330 = !DILocation(line: 146, column: 41, scope: !2313, inlinedAt: !2327)
!2331 = !DILocation(line: 146, column: 50, scope: !2313, inlinedAt: !2327)
!2332 = !DILocation(line: 146, column: 60, scope: !2313, inlinedAt: !2327)
!2333 = !DILocation(line: 146, column: 70, scope: !2313, inlinedAt: !2327)
!2334 = !DILocation(line: 146, column: 80, scope: !2313, inlinedAt: !2327)
!2335 = !DILocation(line: 146, column: 90, scope: !2313, inlinedAt: !2327)
!2336 = !DILocation(line: 146, column: 100, scope: !2313, inlinedAt: !2327)
!2337 = !DILocation(line: 146, column: 110, scope: !2313, inlinedAt: !2327)
!2338 = !DILocation(line: 146, column: 120, scope: !2313, inlinedAt: !2327)
!2339 = !DILocation(line: 148, column: 7, scope: !2340, inlinedAt: !2327)
!2340 = distinct !DILexicalBlock(scope: !2313, file: !2283, line: 148, column: 7)
!2341 = !DILocalVariable(name: "s1", arg: 1, scope: !2342, file: !2283, line: 132, type: !62)
!2342 = distinct !DISubprogram(name: "strcaseeq2", scope: !2283, file: !2283, line: 132, type: !2343, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!65, !62, !62, !7, !7, !7, !7, !7, !7, !7}
!2345 = !{!2341, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2346 = !DILocalVariable(name: "s2", arg: 2, scope: !2342, file: !2283, line: 132, type: !62)
!2347 = !DILocalVariable(name: "s22", arg: 3, scope: !2342, file: !2283, line: 132, type: !7)
!2348 = !DILocalVariable(name: "s23", arg: 4, scope: !2342, file: !2283, line: 132, type: !7)
!2349 = !DILocalVariable(name: "s24", arg: 5, scope: !2342, file: !2283, line: 132, type: !7)
!2350 = !DILocalVariable(name: "s25", arg: 6, scope: !2342, file: !2283, line: 132, type: !7)
!2351 = !DILocalVariable(name: "s26", arg: 7, scope: !2342, file: !2283, line: 132, type: !7)
!2352 = !DILocalVariable(name: "s27", arg: 8, scope: !2342, file: !2283, line: 132, type: !7)
!2353 = !DILocalVariable(name: "s28", arg: 9, scope: !2342, file: !2283, line: 132, type: !7)
!2354 = !DILocation(line: 132, column: 25, scope: !2342, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 153, column: 16, scope: !2356, inlinedAt: !2327)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2283, line: 150, column: 11)
!2357 = distinct !DILexicalBlock(scope: !2340, file: !2283, line: 149, column: 5)
!2358 = !DILocation(line: 132, column: 41, scope: !2342, inlinedAt: !2355)
!2359 = !DILocation(line: 132, column: 50, scope: !2342, inlinedAt: !2355)
!2360 = !DILocation(line: 132, column: 60, scope: !2342, inlinedAt: !2355)
!2361 = !DILocation(line: 132, column: 70, scope: !2342, inlinedAt: !2355)
!2362 = !DILocation(line: 132, column: 80, scope: !2342, inlinedAt: !2355)
!2363 = !DILocation(line: 132, column: 90, scope: !2342, inlinedAt: !2355)
!2364 = !DILocation(line: 132, column: 100, scope: !2342, inlinedAt: !2355)
!2365 = !DILocation(line: 132, column: 110, scope: !2342, inlinedAt: !2355)
!2366 = !DILocation(line: 134, column: 7, scope: !2367, inlinedAt: !2355)
!2367 = distinct !DILexicalBlock(scope: !2342, file: !2283, line: 134, column: 7)
!2368 = !DILocalVariable(name: "s1", arg: 1, scope: !2369, file: !2283, line: 118, type: !62)
!2369 = distinct !DISubprogram(name: "strcaseeq3", scope: !2283, file: !2283, line: 118, type: !2370, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!65, !62, !62, !7, !7, !7, !7, !7, !7}
!2372 = !{!2368, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2373 = !DILocalVariable(name: "s2", arg: 2, scope: !2369, file: !2283, line: 118, type: !62)
!2374 = !DILocalVariable(name: "s23", arg: 3, scope: !2369, file: !2283, line: 118, type: !7)
!2375 = !DILocalVariable(name: "s24", arg: 4, scope: !2369, file: !2283, line: 118, type: !7)
!2376 = !DILocalVariable(name: "s25", arg: 5, scope: !2369, file: !2283, line: 118, type: !7)
!2377 = !DILocalVariable(name: "s26", arg: 6, scope: !2369, file: !2283, line: 118, type: !7)
!2378 = !DILocalVariable(name: "s27", arg: 7, scope: !2369, file: !2283, line: 118, type: !7)
!2379 = !DILocalVariable(name: "s28", arg: 8, scope: !2369, file: !2283, line: 118, type: !7)
!2380 = !DILocation(line: 118, column: 25, scope: !2369, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 139, column: 16, scope: !2382, inlinedAt: !2355)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2283, line: 136, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2367, file: !2283, line: 135, column: 5)
!2384 = !DILocation(line: 118, column: 41, scope: !2369, inlinedAt: !2381)
!2385 = !DILocation(line: 118, column: 50, scope: !2369, inlinedAt: !2381)
!2386 = !DILocation(line: 118, column: 60, scope: !2369, inlinedAt: !2381)
!2387 = !DILocation(line: 118, column: 70, scope: !2369, inlinedAt: !2381)
!2388 = !DILocation(line: 118, column: 80, scope: !2369, inlinedAt: !2381)
!2389 = !DILocation(line: 118, column: 90, scope: !2369, inlinedAt: !2381)
!2390 = !DILocation(line: 118, column: 100, scope: !2369, inlinedAt: !2381)
!2391 = !DILocation(line: 120, column: 7, scope: !2392, inlinedAt: !2381)
!2392 = distinct !DILexicalBlock(scope: !2369, file: !2283, line: 120, column: 7)
!2393 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2381)
!2394 = !DILocalVariable(name: "s1", arg: 1, scope: !2395, file: !2283, line: 104, type: !62)
!2395 = distinct !DISubprogram(name: "strcaseeq4", scope: !2283, file: !2283, line: 104, type: !2396, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!65, !62, !62, !7, !7, !7, !7, !7}
!2398 = !{!2394, !2399, !2400, !2401, !2402, !2403, !2404}
!2399 = !DILocalVariable(name: "s2", arg: 2, scope: !2395, file: !2283, line: 104, type: !62)
!2400 = !DILocalVariable(name: "s24", arg: 3, scope: !2395, file: !2283, line: 104, type: !7)
!2401 = !DILocalVariable(name: "s25", arg: 4, scope: !2395, file: !2283, line: 104, type: !7)
!2402 = !DILocalVariable(name: "s26", arg: 5, scope: !2395, file: !2283, line: 104, type: !7)
!2403 = !DILocalVariable(name: "s27", arg: 6, scope: !2395, file: !2283, line: 104, type: !7)
!2404 = !DILocalVariable(name: "s28", arg: 7, scope: !2395, file: !2283, line: 104, type: !7)
!2405 = !DILocation(line: 104, column: 25, scope: !2395, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 125, column: 16, scope: !2407, inlinedAt: !2381)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2283, line: 122, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2392, file: !2283, line: 121, column: 5)
!2409 = !DILocation(line: 104, column: 41, scope: !2395, inlinedAt: !2406)
!2410 = !DILocation(line: 104, column: 50, scope: !2395, inlinedAt: !2406)
!2411 = !DILocation(line: 104, column: 60, scope: !2395, inlinedAt: !2406)
!2412 = !DILocation(line: 104, column: 70, scope: !2395, inlinedAt: !2406)
!2413 = !DILocation(line: 104, column: 80, scope: !2395, inlinedAt: !2406)
!2414 = !DILocation(line: 104, column: 90, scope: !2395, inlinedAt: !2406)
!2415 = !DILocation(line: 106, column: 7, scope: !2416, inlinedAt: !2406)
!2416 = distinct !DILexicalBlock(scope: !2395, file: !2283, line: 106, column: 7)
!2417 = !DILocation(line: 106, column: 7, scope: !2395, inlinedAt: !2406)
!2418 = !DILocalVariable(name: "s1", arg: 1, scope: !2419, file: !2283, line: 90, type: !62)
!2419 = distinct !DISubprogram(name: "strcaseeq5", scope: !2283, file: !2283, line: 90, type: !2420, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!65, !62, !62, !7, !7, !7, !7}
!2422 = !{!2418, !2423, !2424, !2425, !2426, !2427}
!2423 = !DILocalVariable(name: "s2", arg: 2, scope: !2419, file: !2283, line: 90, type: !62)
!2424 = !DILocalVariable(name: "s25", arg: 3, scope: !2419, file: !2283, line: 90, type: !7)
!2425 = !DILocalVariable(name: "s26", arg: 4, scope: !2419, file: !2283, line: 90, type: !7)
!2426 = !DILocalVariable(name: "s27", arg: 5, scope: !2419, file: !2283, line: 90, type: !7)
!2427 = !DILocalVariable(name: "s28", arg: 6, scope: !2419, file: !2283, line: 90, type: !7)
!2428 = !DILocation(line: 90, column: 25, scope: !2419, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 111, column: 16, scope: !2430, inlinedAt: !2406)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !2283, line: 108, column: 11)
!2431 = distinct !DILexicalBlock(scope: !2416, file: !2283, line: 107, column: 5)
!2432 = !DILocation(line: 90, column: 41, scope: !2419, inlinedAt: !2429)
!2433 = !DILocation(line: 90, column: 50, scope: !2419, inlinedAt: !2429)
!2434 = !DILocation(line: 90, column: 60, scope: !2419, inlinedAt: !2429)
!2435 = !DILocation(line: 90, column: 70, scope: !2419, inlinedAt: !2429)
!2436 = !DILocation(line: 90, column: 80, scope: !2419, inlinedAt: !2429)
!2437 = !DILocation(line: 92, column: 7, scope: !2438, inlinedAt: !2429)
!2438 = distinct !DILexicalBlock(scope: !2419, file: !2283, line: 92, column: 7)
!2439 = !DILocation(line: 92, column: 7, scope: !2419, inlinedAt: !2429)
!2440 = !DILocation(line: 235, column: 12, scope: !2299)
!2441 = !DILocation(line: 235, column: 21, scope: !2299)
!2442 = !DILocation(line: 235, column: 5, scope: !2299)
!2443 = !DILocation(line: 146, column: 25, scope: !2313, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 167, column: 16, scope: !2328, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 236, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2264, file: !156, line: 236, column: 7)
!2447 = !DILocation(line: 146, column: 41, scope: !2313, inlinedAt: !2444)
!2448 = !DILocation(line: 146, column: 50, scope: !2313, inlinedAt: !2444)
!2449 = !DILocation(line: 146, column: 60, scope: !2313, inlinedAt: !2444)
!2450 = !DILocation(line: 146, column: 70, scope: !2313, inlinedAt: !2444)
!2451 = !DILocation(line: 146, column: 80, scope: !2313, inlinedAt: !2444)
!2452 = !DILocation(line: 146, column: 90, scope: !2313, inlinedAt: !2444)
!2453 = !DILocation(line: 146, column: 100, scope: !2313, inlinedAt: !2444)
!2454 = !DILocation(line: 146, column: 110, scope: !2313, inlinedAt: !2444)
!2455 = !DILocation(line: 146, column: 120, scope: !2313, inlinedAt: !2444)
!2456 = !DILocation(line: 148, column: 7, scope: !2340, inlinedAt: !2444)
!2457 = !DILocation(line: 132, column: 25, scope: !2342, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 153, column: 16, scope: !2356, inlinedAt: !2444)
!2459 = !DILocation(line: 132, column: 41, scope: !2342, inlinedAt: !2458)
!2460 = !DILocation(line: 132, column: 50, scope: !2342, inlinedAt: !2458)
!2461 = !DILocation(line: 132, column: 60, scope: !2342, inlinedAt: !2458)
!2462 = !DILocation(line: 132, column: 70, scope: !2342, inlinedAt: !2458)
!2463 = !DILocation(line: 132, column: 80, scope: !2342, inlinedAt: !2458)
!2464 = !DILocation(line: 132, column: 90, scope: !2342, inlinedAt: !2458)
!2465 = !DILocation(line: 132, column: 100, scope: !2342, inlinedAt: !2458)
!2466 = !DILocation(line: 132, column: 110, scope: !2342, inlinedAt: !2458)
!2467 = !DILocation(line: 134, column: 7, scope: !2367, inlinedAt: !2458)
!2468 = !DILocation(line: 134, column: 7, scope: !2342, inlinedAt: !2458)
!2469 = !DILocation(line: 118, column: 25, scope: !2369, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 139, column: 16, scope: !2382, inlinedAt: !2458)
!2471 = !DILocation(line: 118, column: 41, scope: !2369, inlinedAt: !2470)
!2472 = !DILocation(line: 118, column: 50, scope: !2369, inlinedAt: !2470)
!2473 = !DILocation(line: 118, column: 60, scope: !2369, inlinedAt: !2470)
!2474 = !DILocation(line: 118, column: 70, scope: !2369, inlinedAt: !2470)
!2475 = !DILocation(line: 118, column: 80, scope: !2369, inlinedAt: !2470)
!2476 = !DILocation(line: 118, column: 90, scope: !2369, inlinedAt: !2470)
!2477 = !DILocation(line: 118, column: 100, scope: !2369, inlinedAt: !2470)
!2478 = !DILocation(line: 120, column: 7, scope: !2392, inlinedAt: !2470)
!2479 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2470)
!2480 = !DILocation(line: 104, column: 25, scope: !2395, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 125, column: 16, scope: !2407, inlinedAt: !2470)
!2482 = !DILocation(line: 104, column: 41, scope: !2395, inlinedAt: !2481)
!2483 = !DILocation(line: 104, column: 50, scope: !2395, inlinedAt: !2481)
!2484 = !DILocation(line: 104, column: 60, scope: !2395, inlinedAt: !2481)
!2485 = !DILocation(line: 104, column: 70, scope: !2395, inlinedAt: !2481)
!2486 = !DILocation(line: 104, column: 80, scope: !2395, inlinedAt: !2481)
!2487 = !DILocation(line: 104, column: 90, scope: !2395, inlinedAt: !2481)
!2488 = !DILocation(line: 106, column: 7, scope: !2416, inlinedAt: !2481)
!2489 = !DILocation(line: 106, column: 7, scope: !2395, inlinedAt: !2481)
!2490 = !DILocation(line: 90, column: 25, scope: !2419, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 111, column: 16, scope: !2430, inlinedAt: !2481)
!2492 = !DILocation(line: 90, column: 41, scope: !2419, inlinedAt: !2491)
!2493 = !DILocation(line: 90, column: 50, scope: !2419, inlinedAt: !2491)
!2494 = !DILocation(line: 90, column: 60, scope: !2419, inlinedAt: !2491)
!2495 = !DILocation(line: 90, column: 70, scope: !2419, inlinedAt: !2491)
!2496 = !DILocation(line: 90, column: 80, scope: !2419, inlinedAt: !2491)
!2497 = !DILocation(line: 92, column: 7, scope: !2438, inlinedAt: !2491)
!2498 = !DILocation(line: 92, column: 7, scope: !2419, inlinedAt: !2491)
!2499 = !DILocalVariable(name: "s1", arg: 1, scope: !2500, file: !2283, line: 76, type: !62)
!2500 = distinct !DISubprogram(name: "strcaseeq6", scope: !2283, file: !2283, line: 76, type: !2501, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!65, !62, !62, !7, !7, !7}
!2503 = !{!2499, !2504, !2505, !2506, !2507}
!2504 = !DILocalVariable(name: "s2", arg: 2, scope: !2500, file: !2283, line: 76, type: !62)
!2505 = !DILocalVariable(name: "s26", arg: 3, scope: !2500, file: !2283, line: 76, type: !7)
!2506 = !DILocalVariable(name: "s27", arg: 4, scope: !2500, file: !2283, line: 76, type: !7)
!2507 = !DILocalVariable(name: "s28", arg: 5, scope: !2500, file: !2283, line: 76, type: !7)
!2508 = !DILocation(line: 76, column: 25, scope: !2500, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 97, column: 16, scope: !2510, inlinedAt: !2491)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2283, line: 94, column: 11)
!2511 = distinct !DILexicalBlock(scope: !2438, file: !2283, line: 93, column: 5)
!2512 = !DILocation(line: 76, column: 41, scope: !2500, inlinedAt: !2509)
!2513 = !DILocation(line: 76, column: 50, scope: !2500, inlinedAt: !2509)
!2514 = !DILocation(line: 76, column: 60, scope: !2500, inlinedAt: !2509)
!2515 = !DILocation(line: 76, column: 70, scope: !2500, inlinedAt: !2509)
!2516 = !DILocation(line: 78, column: 7, scope: !2517, inlinedAt: !2509)
!2517 = distinct !DILexicalBlock(scope: !2500, file: !2283, line: 78, column: 7)
!2518 = !DILocation(line: 78, column: 7, scope: !2500, inlinedAt: !2509)
!2519 = !DILocalVariable(name: "s1", arg: 1, scope: !2520, file: !2283, line: 62, type: !62)
!2520 = distinct !DISubprogram(name: "strcaseeq7", scope: !2283, file: !2283, line: 62, type: !2521, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!65, !62, !62, !7, !7}
!2523 = !{!2519, !2524, !2525, !2526}
!2524 = !DILocalVariable(name: "s2", arg: 2, scope: !2520, file: !2283, line: 62, type: !62)
!2525 = !DILocalVariable(name: "s27", arg: 3, scope: !2520, file: !2283, line: 62, type: !7)
!2526 = !DILocalVariable(name: "s28", arg: 4, scope: !2520, file: !2283, line: 62, type: !7)
!2527 = !DILocation(line: 62, column: 25, scope: !2520, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 83, column: 16, scope: !2529, inlinedAt: !2509)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !2283, line: 80, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2517, file: !2283, line: 79, column: 5)
!2531 = !DILocation(line: 62, column: 41, scope: !2520, inlinedAt: !2528)
!2532 = !DILocation(line: 62, column: 50, scope: !2520, inlinedAt: !2528)
!2533 = !DILocation(line: 62, column: 60, scope: !2520, inlinedAt: !2528)
!2534 = !DILocation(line: 64, column: 7, scope: !2535, inlinedAt: !2528)
!2535 = distinct !DILexicalBlock(scope: !2520, file: !2283, line: 64, column: 7)
!2536 = !DILocation(line: 236, column: 7, scope: !2264)
!2537 = !DILocation(line: 237, column: 12, scope: !2446)
!2538 = !DILocation(line: 237, column: 21, scope: !2446)
!2539 = !DILocation(line: 237, column: 5, scope: !2446)
!2540 = !DILocation(line: 239, column: 13, scope: !2264)
!2541 = !DILocation(line: 239, column: 11, scope: !2264)
!2542 = !DILocation(line: 239, column: 3, scope: !2264)
!2543 = !DILocation(line: 0, scope: !2264)
!2544 = !DILocation(line: 240, column: 1, scope: !2264)
!2545 = distinct !DISubprogram(name: "quotearg_alloc", scope: !156, file: !156, line: 799, type: !2546, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!6, !62, !151, !1584}
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !156, line: 799, type: !62)
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !156, line: 799, type: !151)
!2551 = !DILocalVariable(name: "o", arg: 3, scope: !2545, file: !156, line: 800, type: !1584)
!2552 = !DILocation(line: 799, column: 29, scope: !2545)
!2553 = !DILocation(line: 799, column: 41, scope: !2545)
!2554 = !DILocation(line: 800, column: 47, scope: !2545)
!2555 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !156, line: 812, type: !62)
!2556 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !156, file: !156, line: 812, type: !2557, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!6, !62, !151, !304, !1584}
!2559 = !{!2555, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567}
!2560 = !DILocalVariable(name: "argsize", arg: 2, scope: !2556, file: !156, line: 812, type: !151)
!2561 = !DILocalVariable(name: "size", arg: 3, scope: !2556, file: !156, line: 812, type: !304)
!2562 = !DILocalVariable(name: "o", arg: 4, scope: !2556, file: !156, line: 813, type: !1584)
!2563 = !DILocalVariable(name: "p", scope: !2556, file: !156, line: 815, type: !1584)
!2564 = !DILocalVariable(name: "e", scope: !2556, file: !156, line: 816, type: !65)
!2565 = !DILocalVariable(name: "flags", scope: !2556, file: !156, line: 818, type: !65)
!2566 = !DILocalVariable(name: "bufsize", scope: !2556, file: !156, line: 819, type: !151)
!2567 = !DILocalVariable(name: "buf", scope: !2556, file: !156, line: 823, type: !6)
!2568 = !DILocation(line: 812, column: 33, scope: !2556, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 802, column: 10, scope: !2545)
!2570 = !DILocation(line: 812, column: 45, scope: !2556, inlinedAt: !2569)
!2571 = !DILocation(line: 812, column: 62, scope: !2556, inlinedAt: !2569)
!2572 = !DILocation(line: 813, column: 51, scope: !2556, inlinedAt: !2569)
!2573 = !DILocation(line: 815, column: 37, scope: !2556, inlinedAt: !2569)
!2574 = !DILocation(line: 815, column: 33, scope: !2556, inlinedAt: !2569)
!2575 = !DILocation(line: 816, column: 11, scope: !2556, inlinedAt: !2569)
!2576 = !DILocation(line: 816, column: 7, scope: !2556, inlinedAt: !2569)
!2577 = !DILocation(line: 818, column: 18, scope: !2556, inlinedAt: !2569)
!2578 = !DILocation(line: 818, column: 24, scope: !2556, inlinedAt: !2569)
!2579 = !DILocation(line: 818, column: 7, scope: !2556, inlinedAt: !2569)
!2580 = !DILocation(line: 819, column: 69, scope: !2556, inlinedAt: !2569)
!2581 = !DILocation(line: 820, column: 53, scope: !2556, inlinedAt: !2569)
!2582 = !DILocation(line: 821, column: 49, scope: !2556, inlinedAt: !2569)
!2583 = !DILocation(line: 822, column: 49, scope: !2556, inlinedAt: !2569)
!2584 = !DILocation(line: 819, column: 20, scope: !2556, inlinedAt: !2569)
!2585 = !DILocation(line: 822, column: 62, scope: !2556, inlinedAt: !2569)
!2586 = !DILocation(line: 819, column: 10, scope: !2556, inlinedAt: !2569)
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !300, line: 216, type: !151)
!2588 = distinct !DISubprogram(name: "xcharalloc", scope: !300, file: !300, line: 216, type: !2589, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!6, !151}
!2591 = !{!2587}
!2592 = !DILocation(line: 216, column: 20, scope: !2588, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 823, column: 15, scope: !2556, inlinedAt: !2569)
!2594 = !DILocation(line: 218, column: 10, scope: !2588, inlinedAt: !2593)
!2595 = !DILocation(line: 823, column: 9, scope: !2556, inlinedAt: !2569)
!2596 = !DILocation(line: 824, column: 60, scope: !2556, inlinedAt: !2569)
!2597 = !DILocation(line: 826, column: 32, scope: !2556, inlinedAt: !2569)
!2598 = !DILocation(line: 826, column: 47, scope: !2556, inlinedAt: !2569)
!2599 = !DILocation(line: 824, column: 3, scope: !2556, inlinedAt: !2569)
!2600 = !DILocation(line: 827, column: 9, scope: !2556, inlinedAt: !2569)
!2601 = !DILocation(line: 802, column: 3, scope: !2545)
!2602 = !DILocation(line: 812, column: 33, scope: !2556)
!2603 = !DILocation(line: 812, column: 45, scope: !2556)
!2604 = !DILocation(line: 812, column: 62, scope: !2556)
!2605 = !DILocation(line: 813, column: 51, scope: !2556)
!2606 = !DILocation(line: 815, column: 37, scope: !2556)
!2607 = !DILocation(line: 815, column: 33, scope: !2556)
!2608 = !DILocation(line: 816, column: 11, scope: !2556)
!2609 = !DILocation(line: 816, column: 7, scope: !2556)
!2610 = !DILocation(line: 818, column: 18, scope: !2556)
!2611 = !DILocation(line: 818, column: 27, scope: !2556)
!2612 = !DILocation(line: 818, column: 24, scope: !2556)
!2613 = !DILocation(line: 818, column: 7, scope: !2556)
!2614 = !DILocation(line: 819, column: 69, scope: !2556)
!2615 = !DILocation(line: 820, column: 53, scope: !2556)
!2616 = !DILocation(line: 821, column: 49, scope: !2556)
!2617 = !DILocation(line: 822, column: 49, scope: !2556)
!2618 = !DILocation(line: 819, column: 20, scope: !2556)
!2619 = !DILocation(line: 822, column: 62, scope: !2556)
!2620 = !DILocation(line: 819, column: 10, scope: !2556)
!2621 = !DILocation(line: 216, column: 20, scope: !2588, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 823, column: 15, scope: !2556)
!2623 = !DILocation(line: 218, column: 10, scope: !2588, inlinedAt: !2622)
!2624 = !DILocation(line: 823, column: 9, scope: !2556)
!2625 = !DILocation(line: 824, column: 60, scope: !2556)
!2626 = !DILocation(line: 826, column: 32, scope: !2556)
!2627 = !DILocation(line: 826, column: 47, scope: !2556)
!2628 = !DILocation(line: 824, column: 3, scope: !2556)
!2629 = !DILocation(line: 827, column: 9, scope: !2556)
!2630 = !DILocation(line: 828, column: 7, scope: !2556)
!2631 = !DILocation(line: 829, column: 11, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2556, file: !156, line: 828, column: 7)
!2633 = !{!1221, !1221, i64 0}
!2634 = !DILocation(line: 829, column: 5, scope: !2632)
!2635 = !DILocation(line: 830, column: 3, scope: !2556)
!2636 = distinct !DISubprogram(name: "quotearg_free", scope: !156, file: !156, line: 848, type: !1463, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2637)
!2637 = !{!2638, !2639}
!2638 = !DILocalVariable(name: "sv", scope: !2636, file: !156, line: 850, type: !180)
!2639 = !DILocalVariable(name: "i", scope: !2636, file: !156, line: 851, type: !65)
!2640 = !DILocation(line: 850, column: 24, scope: !2636)
!2641 = !DILocation(line: 850, column: 19, scope: !2636)
!2642 = !DILocation(line: 851, column: 7, scope: !2636)
!2643 = !DILocation(line: 852, column: 19, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !156, line: 852, column: 3)
!2645 = distinct !DILexicalBlock(scope: !2636, file: !156, line: 852, column: 3)
!2646 = !DILocation(line: 852, column: 17, scope: !2644)
!2647 = !DILocation(line: 852, column: 3, scope: !2645)
!2648 = !DILocation(line: 853, column: 17, scope: !2644)
!2649 = !{!2650, !800, i64 8}
!2650 = !{!"slotvec", !1221, i64 0, !800, i64 8}
!2651 = !DILocation(line: 853, column: 5, scope: !2644)
!2652 = !DILocation(line: 852, column: 28, scope: !2644)
!2653 = distinct !{!2653, !2647, !2654}
!2654 = !DILocation(line: 853, column: 20, scope: !2645)
!2655 = !DILocation(line: 854, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2636, file: !156, line: 854, column: 7)
!2657 = !DILocation(line: 854, column: 17, scope: !2656)
!2658 = !DILocation(line: 854, column: 7, scope: !2636)
!2659 = !DILocation(line: 856, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !156, line: 855, column: 5)
!2661 = !DILocation(line: 857, column: 21, scope: !2660)
!2662 = !{!2650, !1221, i64 0}
!2663 = !DILocation(line: 858, column: 20, scope: !2660)
!2664 = !DILocation(line: 859, column: 5, scope: !2660)
!2665 = !DILocation(line: 860, column: 10, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2636, file: !156, line: 860, column: 7)
!2667 = !DILocation(line: 860, column: 7, scope: !2636)
!2668 = !DILocation(line: 862, column: 13, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !156, line: 861, column: 5)
!2670 = !DILocation(line: 862, column: 7, scope: !2669)
!2671 = !DILocation(line: 863, column: 15, scope: !2669)
!2672 = !DILocation(line: 864, column: 5, scope: !2669)
!2673 = !DILocation(line: 865, column: 10, scope: !2636)
!2674 = !DILocation(line: 866, column: 1, scope: !2636)
!2675 = distinct !DISubprogram(name: "quotearg_n", scope: !156, file: !156, line: 931, type: !2676, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!6, !65, !62}
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !156, line: 931, type: !65)
!2680 = !DILocalVariable(name: "arg", arg: 2, scope: !2675, file: !156, line: 931, type: !62)
!2681 = !DILocation(line: 931, column: 17, scope: !2675)
!2682 = !DILocation(line: 931, column: 32, scope: !2675)
!2683 = !DILocation(line: 933, column: 10, scope: !2675)
!2684 = !DILocation(line: 933, column: 3, scope: !2675)
!2685 = distinct !DISubprogram(name: "quotearg_n_options", scope: !156, file: !156, line: 877, type: !2686, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!6, !65, !62, !151, !1584}
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695, !2698, !2699, !2701, !2702, !2703}
!2689 = !DILocalVariable(name: "n", arg: 1, scope: !2685, file: !156, line: 877, type: !65)
!2690 = !DILocalVariable(name: "arg", arg: 2, scope: !2685, file: !156, line: 877, type: !62)
!2691 = !DILocalVariable(name: "argsize", arg: 3, scope: !2685, file: !156, line: 877, type: !151)
!2692 = !DILocalVariable(name: "options", arg: 4, scope: !2685, file: !156, line: 878, type: !1584)
!2693 = !DILocalVariable(name: "e", scope: !2685, file: !156, line: 880, type: !65)
!2694 = !DILocalVariable(name: "sv", scope: !2685, file: !156, line: 882, type: !180)
!2695 = !DILocalVariable(name: "preallocated", scope: !2696, file: !156, line: 889, type: !28)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !156, line: 888, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2685, file: !156, line: 887, column: 7)
!2698 = !DILocalVariable(name: "nmax", scope: !2696, file: !156, line: 890, type: !65)
!2699 = !DILocalVariable(name: "size", scope: !2700, file: !156, line: 903, type: !151)
!2700 = distinct !DILexicalBlock(scope: !2685, file: !156, line: 902, column: 3)
!2701 = !DILocalVariable(name: "val", scope: !2700, file: !156, line: 904, type: !6)
!2702 = !DILocalVariable(name: "flags", scope: !2700, file: !156, line: 906, type: !65)
!2703 = !DILocalVariable(name: "qsize", scope: !2700, file: !156, line: 907, type: !151)
!2704 = !DILocation(line: 877, column: 25, scope: !2685)
!2705 = !DILocation(line: 877, column: 40, scope: !2685)
!2706 = !DILocation(line: 877, column: 52, scope: !2685)
!2707 = !DILocation(line: 878, column: 51, scope: !2685)
!2708 = !DILocation(line: 880, column: 11, scope: !2685)
!2709 = !DILocation(line: 880, column: 7, scope: !2685)
!2710 = !DILocation(line: 882, column: 24, scope: !2685)
!2711 = !DILocation(line: 882, column: 19, scope: !2685)
!2712 = !DILocation(line: 884, column: 9, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2685, file: !156, line: 884, column: 7)
!2714 = !DILocation(line: 884, column: 7, scope: !2685)
!2715 = !DILocation(line: 885, column: 5, scope: !2713)
!2716 = !DILocation(line: 887, column: 7, scope: !2697)
!2717 = !DILocation(line: 887, column: 14, scope: !2697)
!2718 = !DILocation(line: 887, column: 7, scope: !2685)
!2719 = !DILocation(line: 889, column: 31, scope: !2696)
!2720 = !DILocation(line: 890, column: 11, scope: !2696)
!2721 = !DILocation(line: 892, column: 16, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2696, file: !156, line: 892, column: 11)
!2723 = !DILocation(line: 892, column: 11, scope: !2696)
!2724 = !DILocation(line: 893, column: 9, scope: !2722)
!2725 = !DILocation(line: 895, column: 32, scope: !2696)
!2726 = !DILocation(line: 895, column: 61, scope: !2696)
!2727 = !DILocation(line: 895, column: 58, scope: !2696)
!2728 = !DILocation(line: 895, column: 66, scope: !2696)
!2729 = !DILocation(line: 895, column: 22, scope: !2696)
!2730 = !DILocation(line: 895, column: 15, scope: !2696)
!2731 = !DILocation(line: 896, column: 11, scope: !2696)
!2732 = !DILocation(line: 897, column: 15, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2696, file: !156, line: 896, column: 11)
!2734 = !{i64 0, i64 8, !2633, i64 8, i64 8, !799}
!2735 = !DILocation(line: 897, column: 9, scope: !2733)
!2736 = !DILocation(line: 898, column: 20, scope: !2696)
!2737 = !DILocation(line: 898, column: 18, scope: !2696)
!2738 = !DILocation(line: 898, column: 7, scope: !2696)
!2739 = !DILocation(line: 898, column: 38, scope: !2696)
!2740 = !DILocation(line: 898, column: 31, scope: !2696)
!2741 = !DILocation(line: 898, column: 48, scope: !2696)
!2742 = !DILocation(line: 899, column: 14, scope: !2696)
!2743 = !DILocation(line: 900, column: 5, scope: !2696)
!2744 = !DILocation(line: 0, scope: !2685)
!2745 = !DILocation(line: 903, column: 19, scope: !2700)
!2746 = !DILocation(line: 903, column: 25, scope: !2700)
!2747 = !DILocation(line: 903, column: 12, scope: !2700)
!2748 = !DILocation(line: 904, column: 23, scope: !2700)
!2749 = !DILocation(line: 904, column: 11, scope: !2700)
!2750 = !DILocation(line: 906, column: 26, scope: !2700)
!2751 = !DILocation(line: 906, column: 32, scope: !2700)
!2752 = !DILocation(line: 906, column: 9, scope: !2700)
!2753 = !DILocation(line: 908, column: 55, scope: !2700)
!2754 = !DILocation(line: 909, column: 46, scope: !2700)
!2755 = !DILocation(line: 910, column: 55, scope: !2700)
!2756 = !DILocation(line: 911, column: 55, scope: !2700)
!2757 = !DILocation(line: 907, column: 20, scope: !2700)
!2758 = !DILocation(line: 907, column: 12, scope: !2700)
!2759 = !DILocation(line: 913, column: 14, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2700, file: !156, line: 913, column: 9)
!2761 = !DILocation(line: 913, column: 9, scope: !2700)
!2762 = !DILocation(line: 915, column: 35, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !156, line: 914, column: 7)
!2764 = !DILocation(line: 915, column: 20, scope: !2763)
!2765 = !DILocation(line: 916, column: 17, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !156, line: 916, column: 13)
!2767 = !DILocation(line: 916, column: 13, scope: !2763)
!2768 = !DILocation(line: 917, column: 11, scope: !2766)
!2769 = !DILocation(line: 216, column: 20, scope: !2588, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 918, column: 27, scope: !2763)
!2771 = !DILocation(line: 218, column: 10, scope: !2588, inlinedAt: !2770)
!2772 = !DILocation(line: 918, column: 19, scope: !2763)
!2773 = !DILocation(line: 919, column: 69, scope: !2763)
!2774 = !DILocation(line: 921, column: 44, scope: !2763)
!2775 = !DILocation(line: 922, column: 44, scope: !2763)
!2776 = !DILocation(line: 919, column: 9, scope: !2763)
!2777 = !DILocation(line: 923, column: 7, scope: !2763)
!2778 = !DILocation(line: 0, scope: !2700)
!2779 = !DILocation(line: 925, column: 11, scope: !2700)
!2780 = !DILocation(line: 926, column: 5, scope: !2700)
!2781 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !156, file: !156, line: 937, type: !2782, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!6, !65, !62, !151}
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !156, line: 937, type: !65)
!2786 = !DILocalVariable(name: "arg", arg: 2, scope: !2781, file: !156, line: 937, type: !62)
!2787 = !DILocalVariable(name: "argsize", arg: 3, scope: !2781, file: !156, line: 937, type: !151)
!2788 = !DILocation(line: 937, column: 21, scope: !2781)
!2789 = !DILocation(line: 937, column: 36, scope: !2781)
!2790 = !DILocation(line: 937, column: 48, scope: !2781)
!2791 = !DILocation(line: 939, column: 10, scope: !2781)
!2792 = !DILocation(line: 939, column: 3, scope: !2781)
!2793 = distinct !DISubprogram(name: "quotearg", scope: !156, file: !156, line: 943, type: !2794, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!6, !62}
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "arg", arg: 1, scope: !2793, file: !156, line: 943, type: !62)
!2798 = !DILocation(line: 943, column: 23, scope: !2793)
!2799 = !DILocation(line: 931, column: 17, scope: !2675, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 945, column: 10, scope: !2793)
!2801 = !DILocation(line: 931, column: 32, scope: !2675, inlinedAt: !2800)
!2802 = !DILocation(line: 933, column: 10, scope: !2675, inlinedAt: !2800)
!2803 = !DILocation(line: 945, column: 3, scope: !2793)
!2804 = distinct !DISubprogram(name: "quotearg_mem", scope: !156, file: !156, line: 949, type: !2805, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!6, !62, !151}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "arg", arg: 1, scope: !2804, file: !156, line: 949, type: !62)
!2809 = !DILocalVariable(name: "argsize", arg: 2, scope: !2804, file: !156, line: 949, type: !151)
!2810 = !DILocation(line: 949, column: 27, scope: !2804)
!2811 = !DILocation(line: 949, column: 39, scope: !2804)
!2812 = !DILocation(line: 937, column: 21, scope: !2781, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 951, column: 10, scope: !2804)
!2814 = !DILocation(line: 937, column: 36, scope: !2781, inlinedAt: !2813)
!2815 = !DILocation(line: 937, column: 48, scope: !2781, inlinedAt: !2813)
!2816 = !DILocation(line: 939, column: 10, scope: !2781, inlinedAt: !2813)
!2817 = !DILocation(line: 951, column: 3, scope: !2804)
!2818 = distinct !DISubprogram(name: "quotearg_n_style", scope: !156, file: !156, line: 955, type: !2819, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!6, !65, !115, !62}
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !156, line: 955, type: !65)
!2823 = !DILocalVariable(name: "s", arg: 2, scope: !2818, file: !156, line: 955, type: !115)
!2824 = !DILocalVariable(name: "arg", arg: 3, scope: !2818, file: !156, line: 955, type: !62)
!2825 = !DILocalVariable(name: "o", scope: !2818, file: !156, line: 957, type: !1585)
!2826 = !DILocation(line: 955, column: 23, scope: !2818)
!2827 = !DILocation(line: 955, column: 45, scope: !2818)
!2828 = !DILocation(line: 955, column: 60, scope: !2818)
!2829 = !DILocation(line: 957, column: 3, scope: !2818)
!2830 = !DILocation(line: 957, column: 32, scope: !2818)
!2831 = !DILocalVariable(name: "style", arg: 1, scope: !2832, file: !156, line: 193, type: !115)
!2832 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !156, file: !156, line: 193, type: !2833, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!161, !115}
!2835 = !{!2831, !2836}
!2836 = !DILocalVariable(name: "o", scope: !2832, file: !156, line: 195, type: !161)
!2837 = !DILocation(line: 193, column: 48, scope: !2832, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 957, column: 36, scope: !2818)
!2839 = !DILocation(line: 195, column: 26, scope: !2832, inlinedAt: !2838)
!2840 = !{!2841}
!2841 = distinct !{!2841, !2842, !"quoting_options_from_style: argument 0"}
!2842 = distinct !{!2842, !"quoting_options_from_style"}
!2843 = !DILocation(line: 196, column: 13, scope: !2844, inlinedAt: !2838)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !156, line: 196, column: 7)
!2845 = !DILocation(line: 196, column: 7, scope: !2832, inlinedAt: !2838)
!2846 = !DILocation(line: 197, column: 5, scope: !2844, inlinedAt: !2838)
!2847 = !DILocation(line: 198, column: 5, scope: !2832, inlinedAt: !2838)
!2848 = !DILocation(line: 198, column: 11, scope: !2832, inlinedAt: !2838)
!2849 = !DILocation(line: 958, column: 10, scope: !2818)
!2850 = !DILocation(line: 959, column: 1, scope: !2818)
!2851 = !DILocation(line: 958, column: 3, scope: !2818)
!2852 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !156, file: !156, line: 962, type: !2853, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!6, !65, !115, !62, !151}
!2855 = !{!2856, !2857, !2858, !2859, !2860}
!2856 = !DILocalVariable(name: "n", arg: 1, scope: !2852, file: !156, line: 962, type: !65)
!2857 = !DILocalVariable(name: "s", arg: 2, scope: !2852, file: !156, line: 962, type: !115)
!2858 = !DILocalVariable(name: "arg", arg: 3, scope: !2852, file: !156, line: 963, type: !62)
!2859 = !DILocalVariable(name: "argsize", arg: 4, scope: !2852, file: !156, line: 963, type: !151)
!2860 = !DILocalVariable(name: "o", scope: !2852, file: !156, line: 965, type: !1585)
!2861 = !DILocation(line: 962, column: 27, scope: !2852)
!2862 = !DILocation(line: 962, column: 49, scope: !2852)
!2863 = !DILocation(line: 963, column: 35, scope: !2852)
!2864 = !DILocation(line: 963, column: 47, scope: !2852)
!2865 = !DILocation(line: 965, column: 3, scope: !2852)
!2866 = !DILocation(line: 965, column: 32, scope: !2852)
!2867 = !DILocation(line: 193, column: 48, scope: !2832, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 965, column: 36, scope: !2852)
!2869 = !DILocation(line: 195, column: 26, scope: !2832, inlinedAt: !2868)
!2870 = !{!2871}
!2871 = distinct !{!2871, !2872, !"quoting_options_from_style: argument 0"}
!2872 = distinct !{!2872, !"quoting_options_from_style"}
!2873 = !DILocation(line: 196, column: 13, scope: !2844, inlinedAt: !2868)
!2874 = !DILocation(line: 196, column: 7, scope: !2832, inlinedAt: !2868)
!2875 = !DILocation(line: 197, column: 5, scope: !2844, inlinedAt: !2868)
!2876 = !DILocation(line: 198, column: 5, scope: !2832, inlinedAt: !2868)
!2877 = !DILocation(line: 198, column: 11, scope: !2832, inlinedAt: !2868)
!2878 = !DILocation(line: 966, column: 10, scope: !2852)
!2879 = !DILocation(line: 967, column: 1, scope: !2852)
!2880 = !DILocation(line: 966, column: 3, scope: !2852)
!2881 = distinct !DISubprogram(name: "quotearg_style", scope: !156, file: !156, line: 970, type: !2882, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!6, !115, !62}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "s", arg: 1, scope: !2881, file: !156, line: 970, type: !115)
!2886 = !DILocalVariable(name: "arg", arg: 2, scope: !2881, file: !156, line: 970, type: !62)
!2887 = !DILocation(line: 970, column: 36, scope: !2881)
!2888 = !DILocation(line: 970, column: 51, scope: !2881)
!2889 = !DILocation(line: 955, column: 23, scope: !2818, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 972, column: 10, scope: !2881)
!2891 = !DILocation(line: 955, column: 45, scope: !2818, inlinedAt: !2890)
!2892 = !DILocation(line: 955, column: 60, scope: !2818, inlinedAt: !2890)
!2893 = !DILocation(line: 957, column: 3, scope: !2818, inlinedAt: !2890)
!2894 = !DILocation(line: 957, column: 32, scope: !2818, inlinedAt: !2890)
!2895 = !DILocation(line: 193, column: 48, scope: !2832, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 957, column: 36, scope: !2818, inlinedAt: !2890)
!2897 = !DILocation(line: 195, column: 26, scope: !2832, inlinedAt: !2896)
!2898 = !{!2899}
!2899 = distinct !{!2899, !2900, !"quoting_options_from_style: argument 0"}
!2900 = distinct !{!2900, !"quoting_options_from_style"}
!2901 = !DILocation(line: 196, column: 13, scope: !2844, inlinedAt: !2896)
!2902 = !DILocation(line: 196, column: 7, scope: !2832, inlinedAt: !2896)
!2903 = !DILocation(line: 197, column: 5, scope: !2844, inlinedAt: !2896)
!2904 = !DILocation(line: 198, column: 5, scope: !2832, inlinedAt: !2896)
!2905 = !DILocation(line: 198, column: 11, scope: !2832, inlinedAt: !2896)
!2906 = !DILocation(line: 958, column: 10, scope: !2818, inlinedAt: !2890)
!2907 = !DILocation(line: 959, column: 1, scope: !2818, inlinedAt: !2890)
!2908 = !DILocation(line: 972, column: 3, scope: !2881)
!2909 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !156, file: !156, line: 976, type: !2910, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!6, !115, !62, !151}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "s", arg: 1, scope: !2909, file: !156, line: 976, type: !115)
!2914 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !156, line: 976, type: !62)
!2915 = !DILocalVariable(name: "argsize", arg: 3, scope: !2909, file: !156, line: 976, type: !151)
!2916 = !DILocation(line: 976, column: 40, scope: !2909)
!2917 = !DILocation(line: 976, column: 55, scope: !2909)
!2918 = !DILocation(line: 976, column: 67, scope: !2909)
!2919 = !DILocation(line: 962, column: 27, scope: !2852, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 978, column: 10, scope: !2909)
!2921 = !DILocation(line: 962, column: 49, scope: !2852, inlinedAt: !2920)
!2922 = !DILocation(line: 963, column: 35, scope: !2852, inlinedAt: !2920)
!2923 = !DILocation(line: 963, column: 47, scope: !2852, inlinedAt: !2920)
!2924 = !DILocation(line: 965, column: 3, scope: !2852, inlinedAt: !2920)
!2925 = !DILocation(line: 965, column: 32, scope: !2852, inlinedAt: !2920)
!2926 = !DILocation(line: 193, column: 48, scope: !2832, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 965, column: 36, scope: !2852, inlinedAt: !2920)
!2928 = !DILocation(line: 195, column: 26, scope: !2832, inlinedAt: !2927)
!2929 = !{!2930}
!2930 = distinct !{!2930, !2931, !"quoting_options_from_style: argument 0"}
!2931 = distinct !{!2931, !"quoting_options_from_style"}
!2932 = !DILocation(line: 196, column: 13, scope: !2844, inlinedAt: !2927)
!2933 = !DILocation(line: 196, column: 7, scope: !2832, inlinedAt: !2927)
!2934 = !DILocation(line: 197, column: 5, scope: !2844, inlinedAt: !2927)
!2935 = !DILocation(line: 198, column: 5, scope: !2832, inlinedAt: !2927)
!2936 = !DILocation(line: 198, column: 11, scope: !2832, inlinedAt: !2927)
!2937 = !DILocation(line: 966, column: 10, scope: !2852, inlinedAt: !2920)
!2938 = !DILocation(line: 967, column: 1, scope: !2852, inlinedAt: !2920)
!2939 = !DILocation(line: 978, column: 3, scope: !2909)
!2940 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !156, file: !156, line: 982, type: !2941, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!6, !62, !151, !7}
!2943 = !{!2944, !2945, !2946, !2947}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2940, file: !156, line: 982, type: !62)
!2945 = !DILocalVariable(name: "argsize", arg: 2, scope: !2940, file: !156, line: 982, type: !151)
!2946 = !DILocalVariable(name: "ch", arg: 3, scope: !2940, file: !156, line: 982, type: !7)
!2947 = !DILocalVariable(name: "options", scope: !2940, file: !156, line: 984, type: !161)
!2948 = !DILocation(line: 982, column: 32, scope: !2940)
!2949 = !DILocation(line: 982, column: 44, scope: !2940)
!2950 = !DILocation(line: 982, column: 58, scope: !2940)
!2951 = !DILocation(line: 984, column: 3, scope: !2940)
!2952 = !DILocation(line: 985, column: 13, scope: !2940)
!2953 = !{i64 0, i64 4, !950, i64 4, i64 4, !908, i64 8, i64 32, !950, i64 40, i64 8, !799, i64 48, i64 8, !799}
!2954 = !DILocation(line: 984, column: 26, scope: !2940)
!2955 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 986, column: 3, scope: !2940)
!2957 = !DILocation(line: 152, column: 51, scope: !1606, inlinedAt: !2956)
!2958 = !DILocation(line: 152, column: 58, scope: !1606, inlinedAt: !2956)
!2959 = !DILocation(line: 154, column: 17, scope: !1606, inlinedAt: !2956)
!2960 = !DILocation(line: 156, column: 62, scope: !1606, inlinedAt: !2956)
!2961 = !DILocation(line: 156, column: 57, scope: !1606, inlinedAt: !2956)
!2962 = !DILocation(line: 155, column: 17, scope: !1606, inlinedAt: !2956)
!2963 = !DILocation(line: 157, column: 15, scope: !1606, inlinedAt: !2956)
!2964 = !DILocation(line: 157, column: 7, scope: !1606, inlinedAt: !2956)
!2965 = !DILocation(line: 158, column: 12, scope: !1606, inlinedAt: !2956)
!2966 = !DILocation(line: 158, column: 15, scope: !1606, inlinedAt: !2956)
!2967 = !DILocation(line: 158, column: 25, scope: !1606, inlinedAt: !2956)
!2968 = !DILocation(line: 158, column: 7, scope: !1606, inlinedAt: !2956)
!2969 = !DILocation(line: 159, column: 18, scope: !1606, inlinedAt: !2956)
!2970 = !DILocation(line: 159, column: 23, scope: !1606, inlinedAt: !2956)
!2971 = !DILocation(line: 159, column: 6, scope: !1606, inlinedAt: !2956)
!2972 = !DILocation(line: 987, column: 10, scope: !2940)
!2973 = !DILocation(line: 988, column: 1, scope: !2940)
!2974 = !DILocation(line: 987, column: 3, scope: !2940)
!2975 = distinct !DISubprogram(name: "quotearg_char", scope: !156, file: !156, line: 991, type: !2976, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!6, !62, !7}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "arg", arg: 1, scope: !2975, file: !156, line: 991, type: !62)
!2980 = !DILocalVariable(name: "ch", arg: 2, scope: !2975, file: !156, line: 991, type: !7)
!2981 = !DILocation(line: 991, column: 28, scope: !2975)
!2982 = !DILocation(line: 991, column: 38, scope: !2975)
!2983 = !DILocation(line: 982, column: 32, scope: !2940, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 993, column: 10, scope: !2975)
!2985 = !DILocation(line: 982, column: 44, scope: !2940, inlinedAt: !2984)
!2986 = !DILocation(line: 982, column: 58, scope: !2940, inlinedAt: !2984)
!2987 = !DILocation(line: 984, column: 3, scope: !2940, inlinedAt: !2984)
!2988 = !DILocation(line: 985, column: 13, scope: !2940, inlinedAt: !2984)
!2989 = !DILocation(line: 984, column: 26, scope: !2940, inlinedAt: !2984)
!2990 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 986, column: 3, scope: !2940, inlinedAt: !2984)
!2992 = !DILocation(line: 152, column: 51, scope: !1606, inlinedAt: !2991)
!2993 = !DILocation(line: 152, column: 58, scope: !1606, inlinedAt: !2991)
!2994 = !DILocation(line: 154, column: 17, scope: !1606, inlinedAt: !2991)
!2995 = !DILocation(line: 156, column: 62, scope: !1606, inlinedAt: !2991)
!2996 = !DILocation(line: 156, column: 57, scope: !1606, inlinedAt: !2991)
!2997 = !DILocation(line: 155, column: 17, scope: !1606, inlinedAt: !2991)
!2998 = !DILocation(line: 157, column: 15, scope: !1606, inlinedAt: !2991)
!2999 = !DILocation(line: 157, column: 7, scope: !1606, inlinedAt: !2991)
!3000 = !DILocation(line: 158, column: 12, scope: !1606, inlinedAt: !2991)
!3001 = !DILocation(line: 158, column: 15, scope: !1606, inlinedAt: !2991)
!3002 = !DILocation(line: 158, column: 25, scope: !1606, inlinedAt: !2991)
!3003 = !DILocation(line: 158, column: 7, scope: !1606, inlinedAt: !2991)
!3004 = !DILocation(line: 159, column: 18, scope: !1606, inlinedAt: !2991)
!3005 = !DILocation(line: 159, column: 23, scope: !1606, inlinedAt: !2991)
!3006 = !DILocation(line: 159, column: 6, scope: !1606, inlinedAt: !2991)
!3007 = !DILocation(line: 987, column: 10, scope: !2940, inlinedAt: !2984)
!3008 = !DILocation(line: 988, column: 1, scope: !2940, inlinedAt: !2984)
!3009 = !DILocation(line: 993, column: 3, scope: !2975)
!3010 = distinct !DISubprogram(name: "quotearg_colon", scope: !156, file: !156, line: 997, type: !2794, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3011)
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "arg", arg: 1, scope: !3010, file: !156, line: 997, type: !62)
!3013 = !DILocation(line: 997, column: 29, scope: !3010)
!3014 = !DILocation(line: 991, column: 28, scope: !2975, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 999, column: 10, scope: !3010)
!3016 = !DILocation(line: 991, column: 38, scope: !2975, inlinedAt: !3015)
!3017 = !DILocation(line: 982, column: 32, scope: !2940, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 993, column: 10, scope: !2975, inlinedAt: !3015)
!3019 = !DILocation(line: 982, column: 44, scope: !2940, inlinedAt: !3018)
!3020 = !DILocation(line: 982, column: 58, scope: !2940, inlinedAt: !3018)
!3021 = !DILocation(line: 984, column: 3, scope: !2940, inlinedAt: !3018)
!3022 = !DILocation(line: 985, column: 13, scope: !2940, inlinedAt: !3018)
!3023 = !DILocation(line: 984, column: 26, scope: !2940, inlinedAt: !3018)
!3024 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 986, column: 3, scope: !2940, inlinedAt: !3018)
!3026 = !DILocation(line: 152, column: 51, scope: !1606, inlinedAt: !3025)
!3027 = !DILocation(line: 152, column: 58, scope: !1606, inlinedAt: !3025)
!3028 = !DILocation(line: 154, column: 17, scope: !1606, inlinedAt: !3025)
!3029 = !DILocation(line: 156, column: 57, scope: !1606, inlinedAt: !3025)
!3030 = !DILocation(line: 155, column: 17, scope: !1606, inlinedAt: !3025)
!3031 = !DILocation(line: 157, column: 7, scope: !1606, inlinedAt: !3025)
!3032 = !DILocation(line: 158, column: 12, scope: !1606, inlinedAt: !3025)
!3033 = !DILocation(line: 159, column: 6, scope: !1606, inlinedAt: !3025)
!3034 = !DILocation(line: 987, column: 10, scope: !2940, inlinedAt: !3018)
!3035 = !DILocation(line: 988, column: 1, scope: !2940, inlinedAt: !3018)
!3036 = !DILocation(line: 999, column: 3, scope: !3010)
!3037 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !156, file: !156, line: 1003, type: !2805, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3038)
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3037, file: !156, line: 1003, type: !62)
!3040 = !DILocalVariable(name: "argsize", arg: 2, scope: !3037, file: !156, line: 1003, type: !151)
!3041 = !DILocation(line: 1003, column: 33, scope: !3037)
!3042 = !DILocation(line: 1003, column: 45, scope: !3037)
!3043 = !DILocation(line: 982, column: 32, scope: !2940, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1005, column: 10, scope: !3037)
!3045 = !DILocation(line: 982, column: 44, scope: !2940, inlinedAt: !3044)
!3046 = !DILocation(line: 982, column: 58, scope: !2940, inlinedAt: !3044)
!3047 = !DILocation(line: 984, column: 3, scope: !2940, inlinedAt: !3044)
!3048 = !DILocation(line: 985, column: 13, scope: !2940, inlinedAt: !3044)
!3049 = !DILocation(line: 984, column: 26, scope: !2940, inlinedAt: !3044)
!3050 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 986, column: 3, scope: !2940, inlinedAt: !3044)
!3052 = !DILocation(line: 152, column: 51, scope: !1606, inlinedAt: !3051)
!3053 = !DILocation(line: 152, column: 58, scope: !1606, inlinedAt: !3051)
!3054 = !DILocation(line: 154, column: 17, scope: !1606, inlinedAt: !3051)
!3055 = !DILocation(line: 156, column: 57, scope: !1606, inlinedAt: !3051)
!3056 = !DILocation(line: 155, column: 17, scope: !1606, inlinedAt: !3051)
!3057 = !DILocation(line: 157, column: 7, scope: !1606, inlinedAt: !3051)
!3058 = !DILocation(line: 158, column: 12, scope: !1606, inlinedAt: !3051)
!3059 = !DILocation(line: 159, column: 6, scope: !1606, inlinedAt: !3051)
!3060 = !DILocation(line: 987, column: 10, scope: !2940, inlinedAt: !3044)
!3061 = !DILocation(line: 988, column: 1, scope: !2940, inlinedAt: !3044)
!3062 = !DILocation(line: 1005, column: 3, scope: !3037)
!3063 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !156, file: !156, line: 1009, type: !2819, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3064)
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !156, line: 1009, type: !65)
!3066 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !156, line: 1009, type: !115)
!3067 = !DILocalVariable(name: "arg", arg: 3, scope: !3063, file: !156, line: 1009, type: !62)
!3068 = !DILocalVariable(name: "options", scope: !3063, file: !156, line: 1011, type: !161)
!3069 = !DILocation(line: 195, column: 26, scope: !2832, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1012, column: 13, scope: !3063)
!3071 = !DILocation(line: 1009, column: 29, scope: !3063)
!3072 = !DILocation(line: 1009, column: 51, scope: !3063)
!3073 = !DILocation(line: 1009, column: 66, scope: !3063)
!3074 = !DILocation(line: 1011, column: 3, scope: !3063)
!3075 = !DILocation(line: 1012, column: 13, scope: !3063)
!3076 = !DILocation(line: 193, column: 48, scope: !2832, inlinedAt: !3070)
!3077 = !{!3078}
!3078 = distinct !{!3078, !3079, !"quoting_options_from_style: argument 0"}
!3079 = distinct !{!3079, !"quoting_options_from_style"}
!3080 = !DILocation(line: 196, column: 13, scope: !2844, inlinedAt: !3070)
!3081 = !DILocation(line: 196, column: 7, scope: !2832, inlinedAt: !3070)
!3082 = !DILocation(line: 197, column: 5, scope: !2844, inlinedAt: !3070)
!3083 = !DILocation(line: 1011, column: 26, scope: !3063)
!3084 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1013, column: 3, scope: !3063)
!3086 = !DILocation(line: 152, column: 51, scope: !1606, inlinedAt: !3085)
!3087 = !DILocation(line: 152, column: 58, scope: !1606, inlinedAt: !3085)
!3088 = !DILocation(line: 154, column: 17, scope: !1606, inlinedAt: !3085)
!3089 = !DILocation(line: 156, column: 57, scope: !1606, inlinedAt: !3085)
!3090 = !DILocation(line: 155, column: 17, scope: !1606, inlinedAt: !3085)
!3091 = !DILocation(line: 157, column: 7, scope: !1606, inlinedAt: !3085)
!3092 = !DILocation(line: 158, column: 12, scope: !1606, inlinedAt: !3085)
!3093 = !DILocation(line: 159, column: 6, scope: !1606, inlinedAt: !3085)
!3094 = !DILocation(line: 1014, column: 10, scope: !3063)
!3095 = !DILocation(line: 1015, column: 1, scope: !3063)
!3096 = !DILocation(line: 1014, column: 3, scope: !3063)
!3097 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !156, file: !156, line: 1018, type: !3098, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!6, !65, !62, !62, !62}
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !156, line: 1018, type: !65)
!3102 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3097, file: !156, line: 1018, type: !62)
!3103 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3097, file: !156, line: 1019, type: !62)
!3104 = !DILocalVariable(name: "arg", arg: 4, scope: !3097, file: !156, line: 1019, type: !62)
!3105 = !DILocation(line: 1018, column: 24, scope: !3097)
!3106 = !DILocation(line: 1018, column: 39, scope: !3097)
!3107 = !DILocation(line: 1019, column: 32, scope: !3097)
!3108 = !DILocation(line: 1019, column: 57, scope: !3097)
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3110, file: !156, line: 1026, type: !65)
!3110 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !156, file: !156, line: 1026, type: !3111, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!6, !65, !62, !62, !62, !151}
!3113 = !{!3109, !3114, !3115, !3116, !3117, !3118}
!3114 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3110, file: !156, line: 1026, type: !62)
!3115 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3110, file: !156, line: 1027, type: !62)
!3116 = !DILocalVariable(name: "arg", arg: 4, scope: !3110, file: !156, line: 1028, type: !62)
!3117 = !DILocalVariable(name: "argsize", arg: 5, scope: !3110, file: !156, line: 1028, type: !151)
!3118 = !DILocalVariable(name: "o", scope: !3110, file: !156, line: 1030, type: !161)
!3119 = !DILocation(line: 1026, column: 28, scope: !3110, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1021, column: 10, scope: !3097)
!3121 = !DILocation(line: 1026, column: 43, scope: !3110, inlinedAt: !3120)
!3122 = !DILocation(line: 1027, column: 36, scope: !3110, inlinedAt: !3120)
!3123 = !DILocation(line: 1028, column: 36, scope: !3110, inlinedAt: !3120)
!3124 = !DILocation(line: 1028, column: 48, scope: !3110, inlinedAt: !3120)
!3125 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3120)
!3126 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3120)
!3127 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3120)
!3128 = !DILocation(line: 179, column: 45, scope: !1654, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3120)
!3130 = !DILocation(line: 180, column: 33, scope: !1654, inlinedAt: !3129)
!3131 = !DILocation(line: 180, column: 57, scope: !1654, inlinedAt: !3129)
!3132 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !3129)
!3133 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !3129)
!3134 = !DILocation(line: 185, column: 8, scope: !1670, inlinedAt: !3129)
!3135 = !DILocation(line: 185, column: 23, scope: !1670, inlinedAt: !3129)
!3136 = !DILocation(line: 185, column: 19, scope: !1670, inlinedAt: !3129)
!3137 = !DILocation(line: 186, column: 5, scope: !1670, inlinedAt: !3129)
!3138 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !3129)
!3139 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !3129)
!3140 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !3129)
!3141 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !3129)
!3142 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3120)
!3143 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3120)
!3144 = !DILocation(line: 1021, column: 3, scope: !3097)
!3145 = !DILocation(line: 1026, column: 28, scope: !3110)
!3146 = !DILocation(line: 1026, column: 43, scope: !3110)
!3147 = !DILocation(line: 1027, column: 36, scope: !3110)
!3148 = !DILocation(line: 1028, column: 36, scope: !3110)
!3149 = !DILocation(line: 1028, column: 48, scope: !3110)
!3150 = !DILocation(line: 1030, column: 3, scope: !3110)
!3151 = !DILocation(line: 1030, column: 30, scope: !3110)
!3152 = !DILocation(line: 1030, column: 26, scope: !3110)
!3153 = !DILocation(line: 179, column: 45, scope: !1654, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1031, column: 3, scope: !3110)
!3155 = !DILocation(line: 180, column: 33, scope: !1654, inlinedAt: !3154)
!3156 = !DILocation(line: 180, column: 57, scope: !1654, inlinedAt: !3154)
!3157 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !3154)
!3158 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !3154)
!3159 = !DILocation(line: 185, column: 8, scope: !1670, inlinedAt: !3154)
!3160 = !DILocation(line: 185, column: 23, scope: !1670, inlinedAt: !3154)
!3161 = !DILocation(line: 185, column: 19, scope: !1670, inlinedAt: !3154)
!3162 = !DILocation(line: 186, column: 5, scope: !1670, inlinedAt: !3154)
!3163 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !3154)
!3164 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !3154)
!3165 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !3154)
!3166 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !3154)
!3167 = !DILocation(line: 1032, column: 10, scope: !3110)
!3168 = !DILocation(line: 1033, column: 1, scope: !3110)
!3169 = !DILocation(line: 1032, column: 3, scope: !3110)
!3170 = distinct !DISubprogram(name: "quotearg_custom", scope: !156, file: !156, line: 1036, type: !3171, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!6, !62, !62, !62}
!3173 = !{!3174, !3175, !3176}
!3174 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3170, file: !156, line: 1036, type: !62)
!3175 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3170, file: !156, line: 1036, type: !62)
!3176 = !DILocalVariable(name: "arg", arg: 3, scope: !3170, file: !156, line: 1037, type: !62)
!3177 = !DILocation(line: 1036, column: 30, scope: !3170)
!3178 = !DILocation(line: 1036, column: 54, scope: !3170)
!3179 = !DILocation(line: 1037, column: 30, scope: !3170)
!3180 = !DILocation(line: 1018, column: 24, scope: !3097, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 1039, column: 10, scope: !3170)
!3182 = !DILocation(line: 1018, column: 39, scope: !3097, inlinedAt: !3181)
!3183 = !DILocation(line: 1019, column: 32, scope: !3097, inlinedAt: !3181)
!3184 = !DILocation(line: 1019, column: 57, scope: !3097, inlinedAt: !3181)
!3185 = !DILocation(line: 1026, column: 28, scope: !3110, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1021, column: 10, scope: !3097, inlinedAt: !3181)
!3187 = !DILocation(line: 1026, column: 43, scope: !3110, inlinedAt: !3186)
!3188 = !DILocation(line: 1027, column: 36, scope: !3110, inlinedAt: !3186)
!3189 = !DILocation(line: 1028, column: 36, scope: !3110, inlinedAt: !3186)
!3190 = !DILocation(line: 1028, column: 48, scope: !3110, inlinedAt: !3186)
!3191 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3186)
!3192 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3186)
!3193 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3186)
!3194 = !DILocation(line: 179, column: 45, scope: !1654, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3186)
!3196 = !DILocation(line: 180, column: 33, scope: !1654, inlinedAt: !3195)
!3197 = !DILocation(line: 180, column: 57, scope: !1654, inlinedAt: !3195)
!3198 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !3195)
!3199 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !3195)
!3200 = !DILocation(line: 185, column: 8, scope: !1670, inlinedAt: !3195)
!3201 = !DILocation(line: 185, column: 23, scope: !1670, inlinedAt: !3195)
!3202 = !DILocation(line: 185, column: 19, scope: !1670, inlinedAt: !3195)
!3203 = !DILocation(line: 186, column: 5, scope: !1670, inlinedAt: !3195)
!3204 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !3195)
!3205 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !3195)
!3206 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !3195)
!3207 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !3195)
!3208 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3186)
!3209 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3186)
!3210 = !DILocation(line: 1039, column: 3, scope: !3170)
!3211 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !156, file: !156, line: 1043, type: !3212, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!6, !62, !62, !62, !151}
!3214 = !{!3215, !3216, !3217, !3218}
!3215 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3211, file: !156, line: 1043, type: !62)
!3216 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3211, file: !156, line: 1043, type: !62)
!3217 = !DILocalVariable(name: "arg", arg: 3, scope: !3211, file: !156, line: 1044, type: !62)
!3218 = !DILocalVariable(name: "argsize", arg: 4, scope: !3211, file: !156, line: 1044, type: !151)
!3219 = !DILocation(line: 1043, column: 34, scope: !3211)
!3220 = !DILocation(line: 1043, column: 58, scope: !3211)
!3221 = !DILocation(line: 1044, column: 34, scope: !3211)
!3222 = !DILocation(line: 1044, column: 46, scope: !3211)
!3223 = !DILocation(line: 1026, column: 28, scope: !3110, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 1046, column: 10, scope: !3211)
!3225 = !DILocation(line: 1026, column: 43, scope: !3110, inlinedAt: !3224)
!3226 = !DILocation(line: 1027, column: 36, scope: !3110, inlinedAt: !3224)
!3227 = !DILocation(line: 1028, column: 36, scope: !3110, inlinedAt: !3224)
!3228 = !DILocation(line: 1028, column: 48, scope: !3110, inlinedAt: !3224)
!3229 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3224)
!3230 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3224)
!3231 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3224)
!3232 = !DILocation(line: 179, column: 45, scope: !1654, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3224)
!3234 = !DILocation(line: 180, column: 33, scope: !1654, inlinedAt: !3233)
!3235 = !DILocation(line: 180, column: 57, scope: !1654, inlinedAt: !3233)
!3236 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !3233)
!3237 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !3233)
!3238 = !DILocation(line: 185, column: 8, scope: !1670, inlinedAt: !3233)
!3239 = !DILocation(line: 185, column: 23, scope: !1670, inlinedAt: !3233)
!3240 = !DILocation(line: 185, column: 19, scope: !1670, inlinedAt: !3233)
!3241 = !DILocation(line: 186, column: 5, scope: !1670, inlinedAt: !3233)
!3242 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !3233)
!3243 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !3233)
!3244 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !3233)
!3245 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !3233)
!3246 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3224)
!3247 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3224)
!3248 = !DILocation(line: 1046, column: 3, scope: !3211)
!3249 = distinct !DISubprogram(name: "quote_n_mem", scope: !156, file: !156, line: 1061, type: !3250, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!62, !65, !62, !151}
!3252 = !{!3253, !3254, !3255}
!3253 = !DILocalVariable(name: "n", arg: 1, scope: !3249, file: !156, line: 1061, type: !65)
!3254 = !DILocalVariable(name: "arg", arg: 2, scope: !3249, file: !156, line: 1061, type: !62)
!3255 = !DILocalVariable(name: "argsize", arg: 3, scope: !3249, file: !156, line: 1061, type: !151)
!3256 = !DILocation(line: 1061, column: 18, scope: !3249)
!3257 = !DILocation(line: 1061, column: 33, scope: !3249)
!3258 = !DILocation(line: 1061, column: 45, scope: !3249)
!3259 = !DILocation(line: 1063, column: 10, scope: !3249)
!3260 = !DILocation(line: 1063, column: 3, scope: !3249)
!3261 = distinct !DISubprogram(name: "quote_mem", scope: !156, file: !156, line: 1067, type: !3262, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!62, !62, !151}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "arg", arg: 1, scope: !3261, file: !156, line: 1067, type: !62)
!3266 = !DILocalVariable(name: "argsize", arg: 2, scope: !3261, file: !156, line: 1067, type: !151)
!3267 = !DILocation(line: 1067, column: 24, scope: !3261)
!3268 = !DILocation(line: 1067, column: 36, scope: !3261)
!3269 = !DILocation(line: 1061, column: 18, scope: !3249, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 1069, column: 10, scope: !3261)
!3271 = !DILocation(line: 1061, column: 33, scope: !3249, inlinedAt: !3270)
!3272 = !DILocation(line: 1061, column: 45, scope: !3249, inlinedAt: !3270)
!3273 = !DILocation(line: 1063, column: 10, scope: !3249, inlinedAt: !3270)
!3274 = !DILocation(line: 1069, column: 3, scope: !3261)
!3275 = distinct !DISubprogram(name: "quote_n", scope: !156, file: !156, line: 1073, type: !3276, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!62, !65, !62}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "n", arg: 1, scope: !3275, file: !156, line: 1073, type: !65)
!3280 = !DILocalVariable(name: "arg", arg: 2, scope: !3275, file: !156, line: 1073, type: !62)
!3281 = !DILocation(line: 1073, column: 14, scope: !3275)
!3282 = !DILocation(line: 1073, column: 29, scope: !3275)
!3283 = !DILocation(line: 1061, column: 18, scope: !3249, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1075, column: 10, scope: !3275)
!3285 = !DILocation(line: 1061, column: 33, scope: !3249, inlinedAt: !3284)
!3286 = !DILocation(line: 1061, column: 45, scope: !3249, inlinedAt: !3284)
!3287 = !DILocation(line: 1063, column: 10, scope: !3249, inlinedAt: !3284)
!3288 = !DILocation(line: 1075, column: 3, scope: !3275)
!3289 = distinct !DISubprogram(name: "quote", scope: !156, file: !156, line: 1079, type: !3290, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!62, !62}
!3292 = !{!3293}
!3293 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !156, line: 1079, type: !62)
!3294 = !DILocation(line: 1079, column: 20, scope: !3289)
!3295 = !DILocation(line: 1073, column: 14, scope: !3275, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1081, column: 10, scope: !3289)
!3297 = !DILocation(line: 1073, column: 29, scope: !3275, inlinedAt: !3296)
!3298 = !DILocation(line: 1061, column: 18, scope: !3249, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 1075, column: 10, scope: !3275, inlinedAt: !3296)
!3300 = !DILocation(line: 1061, column: 33, scope: !3249, inlinedAt: !3299)
!3301 = !DILocation(line: 1061, column: 45, scope: !3249, inlinedAt: !3299)
!3302 = !DILocation(line: 1063, column: 10, scope: !3249, inlinedAt: !3299)
!3303 = !DILocation(line: 1081, column: 3, scope: !3289)
!3304 = distinct !DISubprogram(name: "parse_user_spec", scope: !224, file: !224, line: 259, type: !3305, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!62, !62, !227, !228, !229, !229}
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3308 = !DILocalVariable(name: "spec", arg: 1, scope: !3304, file: !224, line: 259, type: !62)
!3309 = !DILocalVariable(name: "uid", arg: 2, scope: !3304, file: !224, line: 259, type: !227)
!3310 = !DILocalVariable(name: "gid", arg: 3, scope: !3304, file: !224, line: 259, type: !228)
!3311 = !DILocalVariable(name: "username", arg: 4, scope: !3304, file: !224, line: 260, type: !229)
!3312 = !DILocalVariable(name: "groupname", arg: 5, scope: !3304, file: !224, line: 260, type: !229)
!3313 = !DILocalVariable(name: "colon", scope: !3304, file: !224, line: 262, type: !62)
!3314 = !DILocalVariable(name: "error_msg", scope: !3304, file: !224, line: 263, type: !62)
!3315 = !DILocalVariable(name: "dot", scope: !3316, file: !224, line: 274, type: !62)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !224, line: 267, column: 5)
!3317 = distinct !DILexicalBlock(scope: !3304, file: !224, line: 266, column: 7)
!3318 = !DILocation(line: 259, column: 30, scope: !3304)
!3319 = !DILocation(line: 259, column: 43, scope: !3304)
!3320 = !DILocation(line: 259, column: 55, scope: !3304)
!3321 = !DILocation(line: 260, column: 25, scope: !3304)
!3322 = !DILocation(line: 260, column: 42, scope: !3304)
!3323 = !DILocation(line: 262, column: 23, scope: !3304)
!3324 = !DILocation(line: 262, column: 29, scope: !3304)
!3325 = !DILocation(line: 262, column: 15, scope: !3304)
!3326 = !DILocation(line: 264, column: 5, scope: !3304)
!3327 = !DILocation(line: 263, column: 15, scope: !3304)
!3328 = !DILocation(line: 266, column: 7, scope: !3317)
!3329 = !DILocation(line: 266, column: 15, scope: !3317)
!3330 = !DILocation(line: 266, column: 11, scope: !3317)
!3331 = !DILocation(line: 266, column: 24, scope: !3317)
!3332 = !DILocation(line: 274, column: 25, scope: !3316)
!3333 = !DILocation(line: 274, column: 19, scope: !3316)
!3334 = !DILocation(line: 275, column: 11, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3316, file: !224, line: 275, column: 11)
!3336 = !DILocation(line: 276, column: 11, scope: !3335)
!3337 = !DILocation(line: 276, column: 16, scope: !3335)
!3338 = !DILocation(line: 275, column: 11, scope: !3316)
!3339 = !DILocation(line: 280, column: 3, scope: !3304)
!3340 = !DILocation(line: 102, column: 35, scope: !223)
!3341 = !DILocation(line: 102, column: 53, scope: !223)
!3342 = !DILocation(line: 103, column: 30, scope: !223)
!3343 = !DILocation(line: 103, column: 42, scope: !223)
!3344 = !DILocation(line: 104, column: 30, scope: !223)
!3345 = !DILocation(line: 104, column: 47, scope: !223)
!3346 = !DILocation(line: 115, column: 9, scope: !223)
!3347 = !DILocation(line: 116, column: 16, scope: !223)
!3348 = !DILocation(line: 116, column: 9, scope: !223)
!3349 = !DILocation(line: 117, column: 16, scope: !223)
!3350 = !DILocation(line: 117, column: 22, scope: !223)
!3351 = !DILocation(line: 117, column: 9, scope: !223)
!3352 = !DILocation(line: 110, column: 15, scope: !223)
!3353 = !DILocation(line: 120, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !223, file: !224, line: 120, column: 7)
!3355 = !DILocation(line: 120, column: 7, scope: !223)
!3356 = !DILocation(line: 121, column: 15, scope: !3354)
!3357 = !DILocation(line: 121, column: 5, scope: !3354)
!3358 = !DILocation(line: 122, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !223, file: !224, line: 122, column: 7)
!3360 = !DILocation(line: 122, column: 7, scope: !223)
!3361 = !DILocation(line: 123, column: 16, scope: !3359)
!3362 = !DILocation(line: 123, column: 5, scope: !3359)
!3363 = !DILocation(line: 113, column: 9, scope: !223)
!3364 = !DILocation(line: 130, column: 17, scope: !266)
!3365 = !DILocation(line: 130, column: 7, scope: !223)
!3366 = !DILocation(line: 132, column: 11, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !224, line: 132, column: 11)
!3368 = distinct !DILexicalBlock(scope: !266, file: !224, line: 131, column: 5)
!3369 = !DILocation(line: 132, column: 11, scope: !3368)
!3370 = !DILocation(line: 133, column: 13, scope: !3367)
!3371 = !DILocation(line: 133, column: 9, scope: !3367)
!3372 = !DILocation(line: 137, column: 31, scope: !265)
!3373 = !DILocation(line: 137, column: 14, scope: !265)
!3374 = !DILocation(line: 138, column: 16, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !265, file: !224, line: 138, column: 11)
!3376 = !DILocation(line: 138, column: 11, scope: !265)
!3377 = !DILocation(line: 140, column: 35, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !224, line: 139, column: 9)
!3379 = !DILocation(line: 140, column: 15, scope: !3378)
!3380 = !DILocation(line: 141, column: 11, scope: !3378)
!3381 = !DILocation(line: 141, column: 19, scope: !3378)
!3382 = !DILocation(line: 142, column: 9, scope: !3378)
!3383 = !DILocation(line: 0, scope: !3378)
!3384 = !DILocation(line: 145, column: 41, scope: !223)
!3385 = !DILocation(line: 145, column: 29, scope: !223)
!3386 = !DILocation(line: 145, column: 46, scope: !223)
!3387 = !DILocation(line: 145, column: 8, scope: !223)
!3388 = !DILocation(line: 114, column: 15, scope: !223)
!3389 = !DILocation(line: 158, column: 9, scope: !271)
!3390 = !DILocation(line: 158, column: 7, scope: !223)
!3391 = !DILocation(line: 161, column: 14, scope: !270)
!3392 = !DILocation(line: 161, column: 17, scope: !270)
!3393 = !DILocation(line: 161, column: 33, scope: !270)
!3394 = !DILocation(line: 111, column: 18, scope: !223)
!3395 = !DILocation(line: 162, column: 15, scope: !269)
!3396 = !DILocation(line: 162, column: 11, scope: !270)
!3397 = !DILocation(line: 164, column: 45, scope: !268)
!3398 = !DILocation(line: 164, column: 58, scope: !268)
!3399 = !DILocation(line: 164, column: 53, scope: !268)
!3400 = !DILocation(line: 165, column: 15, scope: !268)
!3401 = !DILocation(line: 173, column: 15, scope: !273)
!3402 = !DILocation(line: 173, column: 33, scope: !273)
!3403 = !DILocation(line: 174, column: 19, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !273, file: !224, line: 174, column: 19)
!3405 = !DILocation(line: 174, column: 52, scope: !3404)
!3406 = !DILocation(line: 175, column: 22, scope: !3404)
!3407 = !DILocation(line: 175, column: 26, scope: !3404)
!3408 = !DILocation(line: 175, column: 19, scope: !3404)
!3409 = !DILocation(line: 175, column: 39, scope: !3404)
!3410 = !DILocation(line: 175, column: 51, scope: !3404)
!3411 = !DILocation(line: 174, column: 19, scope: !273)
!3412 = !DILocation(line: 0, scope: !223)
!3413 = !DILocation(line: 0, scope: !3404)
!3414 = !DILocation(line: 179, column: 13, scope: !274)
!3415 = !DILocation(line: 183, column: 23, scope: !278)
!3416 = !DILocation(line: 184, column: 17, scope: !277)
!3417 = !DILocation(line: 184, column: 38, scope: !277)
!3418 = !DILocation(line: 184, column: 25, scope: !277)
!3419 = !DILocation(line: 188, column: 15, scope: !276)
!3420 = !DILocation(line: 188, column: 20, scope: !276)
!3421 = !DILocation(line: 189, column: 27, scope: !276)
!3422 = !DILocation(line: 190, column: 21, scope: !276)
!3423 = !DILocation(line: 112, column: 17, scope: !223)
!3424 = !DILocation(line: 191, column: 32, scope: !276)
!3425 = !DILocation(line: 191, column: 43, scope: !276)
!3426 = !DILocation(line: 191, column: 64, scope: !276)
!3427 = !DILocation(line: 191, column: 53, scope: !276)
!3428 = !DILocation(line: 191, column: 23, scope: !276)
!3429 = !DILocation(line: 192, column: 15, scope: !276)
!3430 = !DILocation(line: 193, column: 13, scope: !277)
!3431 = !DILocation(line: 193, column: 13, scope: !276)
!3432 = !DILocation(line: 0, scope: !278)
!3433 = !DILocation(line: 195, column: 7, scope: !270)
!3434 = !DILocation(line: 196, column: 5, scope: !270)
!3435 = !DILocation(line: 198, column: 9, scope: !283)
!3436 = !DILocation(line: 198, column: 30, scope: !283)
!3437 = !DILocation(line: 198, column: 17, scope: !283)
!3438 = !DILocation(line: 202, column: 14, scope: !282)
!3439 = !DILocation(line: 202, column: 17, scope: !282)
!3440 = !DILocation(line: 202, column: 33, scope: !282)
!3441 = !DILocation(line: 203, column: 15, scope: !281)
!3442 = !DILocation(line: 203, column: 11, scope: !282)
!3443 = !DILocation(line: 205, column: 11, scope: !280)
!3444 = !DILocation(line: 205, column: 29, scope: !280)
!3445 = !DILocation(line: 206, column: 15, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !280, file: !224, line: 206, column: 15)
!3447 = !DILocation(line: 206, column: 48, scope: !3446)
!3448 = !DILocation(line: 207, column: 18, scope: !3446)
!3449 = !DILocation(line: 207, column: 22, scope: !3446)
!3450 = !DILocation(line: 207, column: 15, scope: !3446)
!3451 = !DILocation(line: 207, column: 35, scope: !3446)
!3452 = !DILocation(line: 207, column: 47, scope: !3446)
!3453 = !DILocation(line: 206, column: 15, scope: !280)
!3454 = !DILocation(line: 0, scope: !3446)
!3455 = !DILocation(line: 211, column: 9, scope: !281)
!3456 = !DILocation(line: 211, column: 9, scope: !280)
!3457 = !DILocation(line: 213, column: 21, scope: !281)
!3458 = !{!1136, !909, i64 16}
!3459 = !DILocation(line: 0, scope: !281)
!3460 = !DILocation(line: 169, column: 25, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !274, file: !224, line: 166, column: 13)
!3462 = !DILocation(line: 214, column: 7, scope: !282)
!3463 = !DILocation(line: 215, column: 15, scope: !282)
!3464 = !DILocation(line: 216, column: 5, scope: !282)
!3465 = !DILocation(line: 218, column: 17, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !223, file: !224, line: 218, column: 7)
!3467 = !DILocation(line: 218, column: 7, scope: !223)
!3468 = !DILocation(line: 220, column: 12, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !224, line: 219, column: 5)
!3470 = !DILocation(line: 221, column: 11, scope: !3469)
!3471 = !DILocation(line: 222, column: 14, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !224, line: 221, column: 11)
!3473 = !DILocation(line: 222, column: 9, scope: !3472)
!3474 = !DILocation(line: 223, column: 11, scope: !3469)
!3475 = !DILocation(line: 225, column: 21, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 224, column: 9)
!3477 = distinct !DILexicalBlock(scope: !3469, file: !224, line: 223, column: 11)
!3478 = !DILocation(line: 227, column: 9, scope: !3476)
!3479 = !DILocation(line: 0, scope: !3367)
!3480 = !DILocation(line: 228, column: 11, scope: !3469)
!3481 = !DILocation(line: 230, column: 22, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !224, line: 229, column: 9)
!3483 = distinct !DILexicalBlock(scope: !3469, file: !224, line: 228, column: 11)
!3484 = !DILocation(line: 232, column: 9, scope: !3482)
!3485 = !DILocation(line: 0, scope: !282)
!3486 = !DILocation(line: 235, column: 3, scope: !223)
!3487 = !DILocation(line: 236, column: 3, scope: !223)
!3488 = !DILocation(line: 237, column: 10, scope: !223)
!3489 = !DILocation(line: 237, column: 22, scope: !223)
!3490 = !DILocation(line: 237, column: 3, scope: !223)
!3491 = distinct !DISubprogram(name: "version_etc_arn", scope: !292, file: !292, line: 62, type: !3492, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3549)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3494, !62, !62, !62, !3548, !151}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3496, line: 7, baseType: !3497)
!3496 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3498, line: 49, size: 1728, elements: !3499)
!3498 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3515, !3517, !3518, !3519, !3522, !3523, !3525, !3529, !3532, !3534, !3537, !3540, !3541, !3542, !3543, !3544}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3497, file: !3498, line: 51, baseType: !65, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3497, file: !3498, line: 54, baseType: !6, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3497, file: !3498, line: 55, baseType: !6, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3497, file: !3498, line: 56, baseType: !6, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3497, file: !3498, line: 57, baseType: !6, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3497, file: !3498, line: 58, baseType: !6, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3497, file: !3498, line: 59, baseType: !6, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3497, file: !3498, line: 60, baseType: !6, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3497, file: !3498, line: 61, baseType: !6, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3497, file: !3498, line: 64, baseType: !6, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3497, file: !3498, line: 65, baseType: !6, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3497, file: !3498, line: 66, baseType: !6, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3497, file: !3498, line: 68, baseType: !3513, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3498, line: 36, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3497, file: !3498, line: 70, baseType: !3516, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3497, file: !3498, line: 72, baseType: !65, size: 32, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3497, file: !3498, line: 73, baseType: !65, size: 32, offset: 928)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3497, file: !3498, line: 74, baseType: !3520, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 150, baseType: !3521)
!3521 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3497, file: !3498, line: 77, baseType: !150, size: 16, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3497, file: !3498, line: 78, baseType: !3524, size: 8, offset: 1040)
!3524 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3497, file: !3498, line: 79, baseType: !3526, size: 8, offset: 1048)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3527)
!3527 = !{!3528}
!3528 = !DISubrange(count: 1)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3497, file: !3498, line: 81, baseType: !3530, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3498, line: 43, baseType: null)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3497, file: !3498, line: 89, baseType: !3533, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 151, baseType: !3521)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3497, file: !3498, line: 91, baseType: !3535, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3498, line: 37, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3497, file: !3498, line: 92, baseType: !3538, size: 64, offset: 1280)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3498, line: 38, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3497, file: !3498, line: 93, baseType: !3516, size: 64, offset: 1344)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3497, file: !3498, line: 94, baseType: !8, size: 64, offset: 1408)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3497, file: !3498, line: 95, baseType: !151, size: 64, offset: 1472)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3497, file: !3498, line: 96, baseType: !65, size: 32, offset: 1536)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3497, file: !3498, line: 98, baseType: !3545, size: 160, offset: 1568)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3546)
!3546 = !{!3547}
!3547 = !DISubrange(count: 20)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555}
!3550 = !DILocalVariable(name: "stream", arg: 1, scope: !3491, file: !292, line: 62, type: !3494)
!3551 = !DILocalVariable(name: "command_name", arg: 2, scope: !3491, file: !292, line: 63, type: !62)
!3552 = !DILocalVariable(name: "package", arg: 3, scope: !3491, file: !292, line: 63, type: !62)
!3553 = !DILocalVariable(name: "version", arg: 4, scope: !3491, file: !292, line: 64, type: !62)
!3554 = !DILocalVariable(name: "authors", arg: 5, scope: !3491, file: !292, line: 65, type: !3548)
!3555 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3491, file: !292, line: 65, type: !151)
!3556 = !DILocation(line: 62, column: 24, scope: !3491)
!3557 = !DILocation(line: 63, column: 30, scope: !3491)
!3558 = !DILocation(line: 63, column: 56, scope: !3491)
!3559 = !DILocation(line: 64, column: 30, scope: !3491)
!3560 = !DILocation(line: 65, column: 39, scope: !3491)
!3561 = !DILocation(line: 65, column: 55, scope: !3491)
!3562 = !DILocation(line: 67, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3491, file: !292, line: 67, column: 7)
!3564 = !DILocation(line: 67, column: 7, scope: !3491)
!3565 = !DILocation(line: 68, column: 5, scope: !3563)
!3566 = !DILocation(line: 70, column: 5, scope: !3563)
!3567 = !DILocation(line: 84, column: 3, scope: !3491)
!3568 = !DILocation(line: 86, column: 3, scope: !3491)
!3569 = !DILocation(line: 95, column: 3, scope: !3491)
!3570 = !DILocation(line: 99, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3491, file: !292, line: 96, column: 5)
!3572 = !DILocation(line: 102, column: 7, scope: !3571)
!3573 = !DILocation(line: 103, column: 7, scope: !3571)
!3574 = !DILocation(line: 106, column: 7, scope: !3571)
!3575 = !DILocation(line: 107, column: 7, scope: !3571)
!3576 = !DILocation(line: 110, column: 7, scope: !3571)
!3577 = !DILocation(line: 112, column: 7, scope: !3571)
!3578 = !DILocation(line: 117, column: 7, scope: !3571)
!3579 = !DILocation(line: 119, column: 7, scope: !3571)
!3580 = !DILocation(line: 124, column: 7, scope: !3571)
!3581 = !DILocation(line: 126, column: 7, scope: !3571)
!3582 = !DILocation(line: 131, column: 7, scope: !3571)
!3583 = !DILocation(line: 134, column: 7, scope: !3571)
!3584 = !DILocation(line: 139, column: 7, scope: !3571)
!3585 = !DILocation(line: 142, column: 7, scope: !3571)
!3586 = !DILocation(line: 147, column: 7, scope: !3571)
!3587 = !DILocation(line: 151, column: 7, scope: !3571)
!3588 = !DILocation(line: 156, column: 7, scope: !3571)
!3589 = !DILocation(line: 160, column: 7, scope: !3571)
!3590 = !DILocation(line: 167, column: 7, scope: !3571)
!3591 = !DILocation(line: 171, column: 7, scope: !3571)
!3592 = !DILocation(line: 173, column: 1, scope: !3491)
!3593 = distinct !DISubprogram(name: "version_etc_ar", scope: !292, file: !292, line: 180, type: !3594, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3494, !62, !62, !62, !3548}
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602}
!3597 = !DILocalVariable(name: "stream", arg: 1, scope: !3593, file: !292, line: 180, type: !3494)
!3598 = !DILocalVariable(name: "command_name", arg: 2, scope: !3593, file: !292, line: 181, type: !62)
!3599 = !DILocalVariable(name: "package", arg: 3, scope: !3593, file: !292, line: 181, type: !62)
!3600 = !DILocalVariable(name: "version", arg: 4, scope: !3593, file: !292, line: 182, type: !62)
!3601 = !DILocalVariable(name: "authors", arg: 5, scope: !3593, file: !292, line: 182, type: !3548)
!3602 = !DILocalVariable(name: "n_authors", scope: !3593, file: !292, line: 184, type: !151)
!3603 = !DILocation(line: 180, column: 23, scope: !3593)
!3604 = !DILocation(line: 181, column: 29, scope: !3593)
!3605 = !DILocation(line: 181, column: 55, scope: !3593)
!3606 = !DILocation(line: 182, column: 29, scope: !3593)
!3607 = !DILocation(line: 182, column: 59, scope: !3593)
!3608 = !DILocation(line: 184, column: 10, scope: !3593)
!3609 = !DILocation(line: 186, column: 8, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3593, file: !292, line: 186, column: 3)
!3611 = !DILocation(line: 0, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3610, file: !292, line: 186, column: 3)
!3613 = !DILocation(line: 186, column: 23, scope: !3612)
!3614 = !DILocation(line: 186, column: 3, scope: !3610)
!3615 = !DILocation(line: 186, column: 52, scope: !3612)
!3616 = distinct !{!3616, !3614, !3617}
!3617 = !DILocation(line: 187, column: 5, scope: !3610)
!3618 = !DILocation(line: 188, column: 3, scope: !3593)
!3619 = !DILocation(line: 189, column: 1, scope: !3593)
!3620 = distinct !DISubprogram(name: "version_etc_va", scope: !292, file: !292, line: 196, type: !3621, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3630)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3494, !62, !62, !62, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !289, line: 189, size: 192, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3624, file: !289, line: 189, baseType: !17, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3624, file: !289, line: 189, baseType: !17, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3624, file: !289, line: 189, baseType: !8, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3624, file: !289, line: 189, baseType: !8, size: 64, offset: 128)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637}
!3631 = !DILocalVariable(name: "stream", arg: 1, scope: !3620, file: !292, line: 196, type: !3494)
!3632 = !DILocalVariable(name: "command_name", arg: 2, scope: !3620, file: !292, line: 197, type: !62)
!3633 = !DILocalVariable(name: "package", arg: 3, scope: !3620, file: !292, line: 197, type: !62)
!3634 = !DILocalVariable(name: "version", arg: 4, scope: !3620, file: !292, line: 198, type: !62)
!3635 = !DILocalVariable(name: "authors", arg: 5, scope: !3620, file: !292, line: 198, type: !3623)
!3636 = !DILocalVariable(name: "n_authors", scope: !3620, file: !292, line: 200, type: !151)
!3637 = !DILocalVariable(name: "authtab", scope: !3620, file: !292, line: 201, type: !3638)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !69)
!3639 = !DILocation(line: 196, column: 23, scope: !3620)
!3640 = !DILocation(line: 197, column: 29, scope: !3620)
!3641 = !DILocation(line: 197, column: 55, scope: !3620)
!3642 = !DILocation(line: 198, column: 29, scope: !3620)
!3643 = !DILocation(line: 198, column: 46, scope: !3620)
!3644 = !DILocation(line: 201, column: 3, scope: !3620)
!3645 = !DILocation(line: 201, column: 15, scope: !3620)
!3646 = !DILocation(line: 200, column: 10, scope: !3620)
!3647 = !DILocation(line: 205, column: 35, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !292, line: 203, column: 3)
!3649 = distinct !DILexicalBlock(scope: !3620, file: !292, line: 203, column: 3)
!3650 = !DILocation(line: 205, column: 14, scope: !3648)
!3651 = !DILocation(line: 205, column: 33, scope: !3648)
!3652 = !DILocation(line: 205, column: 67, scope: !3648)
!3653 = !DILocation(line: 203, column: 3, scope: !3649)
!3654 = !DILocation(line: 0, scope: !3648)
!3655 = !DILocation(line: 208, column: 3, scope: !3620)
!3656 = !DILocation(line: 210, column: 1, scope: !3620)
!3657 = distinct !DISubprogram(name: "version_etc", scope: !292, file: !292, line: 227, type: !3658, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3494, !62, !62, !62, null}
!3660 = !{!3661, !3662, !3663, !3664, !3665}
!3661 = !DILocalVariable(name: "stream", arg: 1, scope: !3657, file: !292, line: 227, type: !3494)
!3662 = !DILocalVariable(name: "command_name", arg: 2, scope: !3657, file: !292, line: 228, type: !62)
!3663 = !DILocalVariable(name: "package", arg: 3, scope: !3657, file: !292, line: 228, type: !62)
!3664 = !DILocalVariable(name: "version", arg: 4, scope: !3657, file: !292, line: 229, type: !62)
!3665 = !DILocalVariable(name: "authors", scope: !3657, file: !292, line: 231, type: !3666)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3667, line: 52, baseType: !3668)
!3667 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3669, line: 48, baseType: !3670)
!3669 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !289, line: 231, baseType: !3671)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3624, size: 192, elements: !3527)
!3672 = !DILocation(line: 227, column: 20, scope: !3657)
!3673 = !DILocation(line: 228, column: 26, scope: !3657)
!3674 = !DILocation(line: 228, column: 52, scope: !3657)
!3675 = !DILocation(line: 229, column: 26, scope: !3657)
!3676 = !DILocation(line: 231, column: 3, scope: !3657)
!3677 = !DILocation(line: 231, column: 11, scope: !3657)
!3678 = !DILocation(line: 233, column: 3, scope: !3657)
!3679 = !DILocation(line: 234, column: 3, scope: !3657)
!3680 = !DILocation(line: 235, column: 3, scope: !3657)
!3681 = !DILocation(line: 236, column: 1, scope: !3657)
!3682 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !292, file: !292, line: 239, type: !1463, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4)
!3683 = !DILocation(line: 245, column: 3, scope: !3682)
!3684 = !DILocation(line: 251, column: 3, scope: !3682)
!3685 = !DILocation(line: 256, column: 3, scope: !3682)
!3686 = !DILocation(line: 258, column: 1, scope: !3682)
!3687 = distinct !DISubprogram(name: "xnmalloc", scope: !300, file: !300, line: 99, type: !3688, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!8, !151, !151}
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !300, line: 99, type: !151)
!3692 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !300, line: 99, type: !151)
!3693 = !DILocation(line: 99, column: 18, scope: !3687)
!3694 = !DILocation(line: 99, column: 28, scope: !3687)
!3695 = !DILocation(line: 101, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3687, file: !300, line: 101, column: 7)
!3697 = !DILocation(line: 101, column: 7, scope: !3687)
!3698 = !DILocation(line: 102, column: 5, scope: !3696)
!3699 = !DILocation(line: 103, column: 21, scope: !3687)
!3700 = !DILocalVariable(name: "n", arg: 1, scope: !3701, file: !3702, line: 39, type: !151)
!3701 = distinct !DISubprogram(name: "xmalloc", scope: !3702, file: !3702, line: 39, type: !3703, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3705)
!3702 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!8, !151}
!3705 = !{!3700, !3706}
!3706 = !DILocalVariable(name: "p", scope: !3701, file: !3702, line: 41, type: !8)
!3707 = !DILocation(line: 39, column: 17, scope: !3701, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 103, column: 10, scope: !3687)
!3709 = !DILocation(line: 41, column: 13, scope: !3701, inlinedAt: !3708)
!3710 = !DILocation(line: 41, column: 9, scope: !3701, inlinedAt: !3708)
!3711 = !DILocation(line: 42, column: 8, scope: !3712, inlinedAt: !3708)
!3712 = distinct !DILexicalBlock(scope: !3701, file: !3702, line: 42, column: 7)
!3713 = !DILocation(line: 42, column: 15, scope: !3712, inlinedAt: !3708)
!3714 = !DILocation(line: 42, column: 10, scope: !3712, inlinedAt: !3708)
!3715 = !DILocation(line: 43, column: 5, scope: !3712, inlinedAt: !3708)
!3716 = !DILocation(line: 103, column: 3, scope: !3687)
!3717 = !DILocation(line: 39, column: 17, scope: !3701)
!3718 = !DILocation(line: 41, column: 13, scope: !3701)
!3719 = !DILocation(line: 41, column: 9, scope: !3701)
!3720 = !DILocation(line: 42, column: 8, scope: !3712)
!3721 = !DILocation(line: 42, column: 15, scope: !3712)
!3722 = !DILocation(line: 42, column: 10, scope: !3712)
!3723 = !DILocation(line: 43, column: 5, scope: !3712)
!3724 = !DILocation(line: 44, column: 3, scope: !3701)
!3725 = distinct !DISubprogram(name: "xnrealloc", scope: !300, file: !300, line: 112, type: !3726, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!8, !8, !151, !151}
!3728 = !{!3729, !3730, !3731}
!3729 = !DILocalVariable(name: "p", arg: 1, scope: !3725, file: !300, line: 112, type: !8)
!3730 = !DILocalVariable(name: "n", arg: 2, scope: !3725, file: !300, line: 112, type: !151)
!3731 = !DILocalVariable(name: "s", arg: 3, scope: !3725, file: !300, line: 112, type: !151)
!3732 = !DILocation(line: 112, column: 18, scope: !3725)
!3733 = !DILocation(line: 112, column: 28, scope: !3725)
!3734 = !DILocation(line: 112, column: 38, scope: !3725)
!3735 = !DILocation(line: 114, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3725, file: !300, line: 114, column: 7)
!3737 = !DILocation(line: 114, column: 7, scope: !3725)
!3738 = !DILocation(line: 115, column: 5, scope: !3736)
!3739 = !DILocation(line: 116, column: 25, scope: !3725)
!3740 = !DILocalVariable(name: "p", arg: 1, scope: !3741, file: !3702, line: 51, type: !8)
!3741 = distinct !DISubprogram(name: "xrealloc", scope: !3702, file: !3702, line: 51, type: !3742, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!8, !8, !151}
!3744 = !{!3740, !3745}
!3745 = !DILocalVariable(name: "n", arg: 2, scope: !3741, file: !3702, line: 51, type: !151)
!3746 = !DILocation(line: 51, column: 17, scope: !3741, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 116, column: 10, scope: !3725)
!3748 = !DILocation(line: 51, column: 27, scope: !3741, inlinedAt: !3747)
!3749 = !DILocation(line: 53, column: 8, scope: !3750, inlinedAt: !3747)
!3750 = distinct !DILexicalBlock(scope: !3741, file: !3702, line: 53, column: 7)
!3751 = !DILocation(line: 53, column: 13, scope: !3750, inlinedAt: !3747)
!3752 = !DILocation(line: 53, column: 10, scope: !3750, inlinedAt: !3747)
!3753 = !DILocation(line: 57, column: 7, scope: !3754, inlinedAt: !3747)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3702, line: 54, column: 5)
!3755 = !DILocation(line: 58, column: 7, scope: !3754, inlinedAt: !3747)
!3756 = !DILocation(line: 61, column: 7, scope: !3741, inlinedAt: !3747)
!3757 = !DILocation(line: 62, column: 8, scope: !3758, inlinedAt: !3747)
!3758 = distinct !DILexicalBlock(scope: !3741, file: !3702, line: 62, column: 7)
!3759 = !DILocation(line: 62, column: 13, scope: !3758, inlinedAt: !3747)
!3760 = !DILocation(line: 62, column: 10, scope: !3758, inlinedAt: !3747)
!3761 = !DILocation(line: 63, column: 5, scope: !3758, inlinedAt: !3747)
!3762 = !DILocation(line: 0, scope: !3741, inlinedAt: !3747)
!3763 = !DILocation(line: 116, column: 3, scope: !3725)
!3764 = !DILocation(line: 51, column: 17, scope: !3741)
!3765 = !DILocation(line: 51, column: 27, scope: !3741)
!3766 = !DILocation(line: 53, column: 8, scope: !3750)
!3767 = !DILocation(line: 53, column: 13, scope: !3750)
!3768 = !DILocation(line: 53, column: 10, scope: !3750)
!3769 = !DILocation(line: 57, column: 7, scope: !3754)
!3770 = !DILocation(line: 58, column: 7, scope: !3754)
!3771 = !DILocation(line: 61, column: 7, scope: !3741)
!3772 = !DILocation(line: 62, column: 8, scope: !3758)
!3773 = !DILocation(line: 62, column: 13, scope: !3758)
!3774 = !DILocation(line: 62, column: 10, scope: !3758)
!3775 = !DILocation(line: 63, column: 5, scope: !3758)
!3776 = !DILocation(line: 0, scope: !3741)
!3777 = !DILocation(line: 65, column: 1, scope: !3741)
!3778 = !DILocation(line: 174, column: 19, scope: !301)
!3779 = !DILocation(line: 174, column: 30, scope: !301)
!3780 = !DILocation(line: 174, column: 41, scope: !301)
!3781 = !DILocation(line: 176, column: 14, scope: !301)
!3782 = !DILocation(line: 176, column: 10, scope: !301)
!3783 = !DILocation(line: 178, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !301, file: !300, line: 178, column: 7)
!3785 = !DILocation(line: 178, column: 7, scope: !301)
!3786 = !DILocation(line: 180, column: 13, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !300, line: 180, column: 11)
!3788 = distinct !DILexicalBlock(scope: !3784, file: !300, line: 179, column: 5)
!3789 = !DILocation(line: 180, column: 11, scope: !3788)
!3790 = !DILocation(line: 188, column: 30, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !300, line: 181, column: 9)
!3792 = !DILocation(line: 189, column: 16, scope: !3791)
!3793 = !DILocation(line: 189, column: 13, scope: !3791)
!3794 = !DILocation(line: 190, column: 9, scope: !3791)
!3795 = !DILocation(line: 0, scope: !3791)
!3796 = !DILocation(line: 191, column: 11, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3788, file: !300, line: 191, column: 11)
!3798 = !DILocation(line: 191, column: 11, scope: !3788)
!3799 = !DILocation(line: 206, column: 7, scope: !301)
!3800 = !DILocation(line: 207, column: 25, scope: !301)
!3801 = !DILocation(line: 51, column: 17, scope: !3741, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 207, column: 10, scope: !301)
!3803 = !DILocation(line: 51, column: 27, scope: !3741, inlinedAt: !3802)
!3804 = !DILocation(line: 53, column: 10, scope: !3750, inlinedAt: !3802)
!3805 = !DILocation(line: 192, column: 9, scope: !3797)
!3806 = !DILocation(line: 200, column: 69, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !300, line: 200, column: 11)
!3808 = distinct !DILexicalBlock(scope: !3784, file: !300, line: 195, column: 5)
!3809 = !DILocation(line: 201, column: 11, scope: !3807)
!3810 = !DILocation(line: 200, column: 11, scope: !3808)
!3811 = !DILocation(line: 202, column: 9, scope: !3807)
!3812 = !DILocation(line: 203, column: 14, scope: !3808)
!3813 = !DILocation(line: 203, column: 18, scope: !3808)
!3814 = !DILocation(line: 203, column: 9, scope: !3808)
!3815 = !DILocation(line: 53, column: 8, scope: !3750, inlinedAt: !3802)
!3816 = !DILocation(line: 57, column: 7, scope: !3754, inlinedAt: !3802)
!3817 = !DILocation(line: 58, column: 7, scope: !3754, inlinedAt: !3802)
!3818 = !DILocation(line: 61, column: 7, scope: !3741, inlinedAt: !3802)
!3819 = !DILocation(line: 62, column: 8, scope: !3758, inlinedAt: !3802)
!3820 = !DILocation(line: 62, column: 13, scope: !3758, inlinedAt: !3802)
!3821 = !DILocation(line: 62, column: 10, scope: !3758, inlinedAt: !3802)
!3822 = !DILocation(line: 63, column: 5, scope: !3758, inlinedAt: !3802)
!3823 = !DILocation(line: 0, scope: !3741, inlinedAt: !3802)
!3824 = !DILocation(line: 207, column: 3, scope: !301)
!3825 = distinct !DISubprogram(name: "xcharalloc", scope: !300, file: !300, line: 216, type: !2589, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3826)
!3826 = !{!3827}
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3825, file: !300, line: 216, type: !151)
!3828 = !DILocation(line: 216, column: 20, scope: !3825)
!3829 = !DILocation(line: 39, column: 17, scope: !3701, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 218, column: 10, scope: !3825)
!3831 = !DILocation(line: 41, column: 13, scope: !3701, inlinedAt: !3830)
!3832 = !DILocation(line: 41, column: 9, scope: !3701, inlinedAt: !3830)
!3833 = !DILocation(line: 42, column: 8, scope: !3712, inlinedAt: !3830)
!3834 = !DILocation(line: 42, column: 15, scope: !3712, inlinedAt: !3830)
!3835 = !DILocation(line: 42, column: 10, scope: !3712, inlinedAt: !3830)
!3836 = !DILocation(line: 43, column: 5, scope: !3712, inlinedAt: !3830)
!3837 = !DILocation(line: 218, column: 3, scope: !3825)
!3838 = distinct !DISubprogram(name: "x2realloc", scope: !3702, file: !3702, line: 74, type: !3839, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!8, !8, !304}
!3841 = !{!3842, !3843}
!3842 = !DILocalVariable(name: "p", arg: 1, scope: !3838, file: !3702, line: 74, type: !8)
!3843 = !DILocalVariable(name: "pn", arg: 2, scope: !3838, file: !3702, line: 74, type: !304)
!3844 = !DILocation(line: 74, column: 18, scope: !3838)
!3845 = !DILocation(line: 74, column: 29, scope: !3838)
!3846 = !DILocation(line: 174, column: 19, scope: !301, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 76, column: 10, scope: !3838)
!3848 = !DILocation(line: 174, column: 30, scope: !301, inlinedAt: !3847)
!3849 = !DILocation(line: 174, column: 41, scope: !301, inlinedAt: !3847)
!3850 = !DILocation(line: 176, column: 14, scope: !301, inlinedAt: !3847)
!3851 = !DILocation(line: 176, column: 10, scope: !301, inlinedAt: !3847)
!3852 = !DILocation(line: 178, column: 9, scope: !3784, inlinedAt: !3847)
!3853 = !DILocation(line: 178, column: 7, scope: !301, inlinedAt: !3847)
!3854 = !DILocation(line: 180, column: 13, scope: !3787, inlinedAt: !3847)
!3855 = !DILocation(line: 180, column: 11, scope: !3788, inlinedAt: !3847)
!3856 = !DILocation(line: 191, column: 11, scope: !3797, inlinedAt: !3847)
!3857 = !DILocation(line: 191, column: 11, scope: !3788, inlinedAt: !3847)
!3858 = !DILocation(line: 206, column: 7, scope: !301, inlinedAt: !3847)
!3859 = !DILocation(line: 51, column: 17, scope: !3741, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 207, column: 10, scope: !301, inlinedAt: !3847)
!3861 = !DILocation(line: 51, column: 27, scope: !3741, inlinedAt: !3860)
!3862 = !DILocation(line: 53, column: 10, scope: !3750, inlinedAt: !3860)
!3863 = !DILocation(line: 192, column: 9, scope: !3797, inlinedAt: !3847)
!3864 = !DILocation(line: 201, column: 11, scope: !3807, inlinedAt: !3847)
!3865 = !DILocation(line: 200, column: 11, scope: !3808, inlinedAt: !3847)
!3866 = !DILocation(line: 202, column: 9, scope: !3807, inlinedAt: !3847)
!3867 = !DILocation(line: 203, column: 14, scope: !3808, inlinedAt: !3847)
!3868 = !DILocation(line: 203, column: 18, scope: !3808, inlinedAt: !3847)
!3869 = !DILocation(line: 203, column: 9, scope: !3808, inlinedAt: !3847)
!3870 = !DILocation(line: 53, column: 8, scope: !3750, inlinedAt: !3860)
!3871 = !DILocation(line: 57, column: 7, scope: !3754, inlinedAt: !3860)
!3872 = !DILocation(line: 58, column: 7, scope: !3754, inlinedAt: !3860)
!3873 = !DILocation(line: 61, column: 7, scope: !3741, inlinedAt: !3860)
!3874 = !DILocation(line: 62, column: 8, scope: !3758, inlinedAt: !3860)
!3875 = !DILocation(line: 62, column: 13, scope: !3758, inlinedAt: !3860)
!3876 = !DILocation(line: 62, column: 10, scope: !3758, inlinedAt: !3860)
!3877 = !DILocation(line: 63, column: 5, scope: !3758, inlinedAt: !3860)
!3878 = !DILocation(line: 0, scope: !3741, inlinedAt: !3860)
!3879 = !DILocation(line: 76, column: 3, scope: !3838)
!3880 = distinct !DISubprogram(name: "xzalloc", scope: !3702, file: !3702, line: 84, type: !3703, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3881)
!3881 = !{!3882}
!3882 = !DILocalVariable(name: "s", arg: 1, scope: !3880, file: !3702, line: 84, type: !151)
!3883 = !DILocation(line: 84, column: 17, scope: !3880)
!3884 = !DILocation(line: 39, column: 17, scope: !3701, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 86, column: 18, scope: !3880)
!3886 = !DILocation(line: 41, column: 13, scope: !3701, inlinedAt: !3885)
!3887 = !DILocation(line: 41, column: 9, scope: !3701, inlinedAt: !3885)
!3888 = !DILocation(line: 42, column: 8, scope: !3712, inlinedAt: !3885)
!3889 = !DILocation(line: 42, column: 15, scope: !3712, inlinedAt: !3885)
!3890 = !DILocation(line: 42, column: 10, scope: !3712, inlinedAt: !3885)
!3891 = !DILocation(line: 43, column: 5, scope: !3712, inlinedAt: !3885)
!3892 = !DILocation(line: 86, column: 10, scope: !3880)
!3893 = !DILocation(line: 86, column: 3, scope: !3880)
!3894 = distinct !DISubprogram(name: "xcalloc", scope: !3702, file: !3702, line: 93, type: !3688, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !3702, line: 93, type: !151)
!3897 = !DILocalVariable(name: "s", arg: 2, scope: !3894, file: !3702, line: 93, type: !151)
!3898 = !DILocalVariable(name: "p", scope: !3894, file: !3702, line: 95, type: !8)
!3899 = !DILocation(line: 93, column: 17, scope: !3894)
!3900 = !DILocation(line: 93, column: 27, scope: !3894)
!3901 = !DILocation(line: 100, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !3702, line: 100, column: 7)
!3903 = !DILocation(line: 101, column: 7, scope: !3902)
!3904 = !DILocation(line: 101, column: 18, scope: !3902)
!3905 = !DILocation(line: 95, column: 9, scope: !3894)
!3906 = !DILocation(line: 101, column: 16, scope: !3902)
!3907 = !DILocation(line: 100, column: 7, scope: !3894)
!3908 = !DILocation(line: 102, column: 5, scope: !3902)
!3909 = !DILocation(line: 103, column: 3, scope: !3894)
!3910 = distinct !DISubprogram(name: "xmemdup", scope: !3702, file: !3702, line: 111, type: !3911, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3915)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!8, !3913, !151}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3915 = !{!3916, !3917}
!3916 = !DILocalVariable(name: "p", arg: 1, scope: !3910, file: !3702, line: 111, type: !3913)
!3917 = !DILocalVariable(name: "s", arg: 2, scope: !3910, file: !3702, line: 111, type: !151)
!3918 = !DILocation(line: 111, column: 22, scope: !3910)
!3919 = !DILocation(line: 111, column: 32, scope: !3910)
!3920 = !DILocation(line: 39, column: 17, scope: !3701, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 113, column: 18, scope: !3910)
!3922 = !DILocation(line: 41, column: 13, scope: !3701, inlinedAt: !3921)
!3923 = !DILocation(line: 41, column: 9, scope: !3701, inlinedAt: !3921)
!3924 = !DILocation(line: 42, column: 8, scope: !3712, inlinedAt: !3921)
!3925 = !DILocation(line: 42, column: 15, scope: !3712, inlinedAt: !3921)
!3926 = !DILocation(line: 42, column: 10, scope: !3712, inlinedAt: !3921)
!3927 = !DILocation(line: 43, column: 5, scope: !3712, inlinedAt: !3921)
!3928 = !DILocation(line: 113, column: 10, scope: !3910)
!3929 = !DILocation(line: 113, column: 3, scope: !3910)
!3930 = distinct !DISubprogram(name: "xstrdup", scope: !3702, file: !3702, line: 119, type: !2794, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "string", arg: 1, scope: !3930, file: !3702, line: 119, type: !62)
!3933 = !DILocation(line: 119, column: 22, scope: !3930)
!3934 = !DILocation(line: 121, column: 27, scope: !3930)
!3935 = !DILocation(line: 121, column: 43, scope: !3930)
!3936 = !DILocation(line: 111, column: 22, scope: !3910, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 121, column: 10, scope: !3930)
!3938 = !DILocation(line: 111, column: 32, scope: !3910, inlinedAt: !3937)
!3939 = !DILocation(line: 39, column: 17, scope: !3701, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 113, column: 18, scope: !3910, inlinedAt: !3937)
!3941 = !DILocation(line: 41, column: 13, scope: !3701, inlinedAt: !3940)
!3942 = !DILocation(line: 41, column: 9, scope: !3701, inlinedAt: !3940)
!3943 = !DILocation(line: 42, column: 8, scope: !3712, inlinedAt: !3940)
!3944 = !DILocation(line: 42, column: 15, scope: !3712, inlinedAt: !3940)
!3945 = !DILocation(line: 42, column: 10, scope: !3712, inlinedAt: !3940)
!3946 = !DILocation(line: 43, column: 5, scope: !3712, inlinedAt: !3940)
!3947 = !DILocation(line: 113, column: 10, scope: !3910, inlinedAt: !3937)
!3948 = !DILocation(line: 121, column: 3, scope: !3930)
!3949 = distinct !DISubprogram(name: "xalloc_die", scope: !3950, file: !3950, line: 32, type: !1463, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !313, retainedNodes: !4)
!3950 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3951 = !DILocation(line: 34, column: 10, scope: !3949)
!3952 = !DILocation(line: 34, column: 33, scope: !3949)
!3953 = !DILocation(line: 34, column: 3, scope: !3949)
!3954 = !DILocation(line: 40, column: 3, scope: !3949)
!3955 = distinct !DISubprogram(name: "xgetgroups", scope: !3956, file: !3956, line: 31, type: !725, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !315, retainedNodes: !3957)
!3956 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DILocalVariable(name: "username", arg: 1, scope: !3955, file: !3956, line: 31, type: !62)
!3959 = !DILocalVariable(name: "gid", arg: 2, scope: !3955, file: !3956, line: 31, type: !22)
!3960 = !DILocalVariable(name: "groups", arg: 3, scope: !3955, file: !3956, line: 31, type: !727)
!3961 = !DILocalVariable(name: "result", scope: !3955, file: !3956, line: 33, type: !65)
!3962 = !DILocation(line: 31, column: 25, scope: !3955)
!3963 = !DILocation(line: 31, column: 41, scope: !3955)
!3964 = !DILocation(line: 31, column: 54, scope: !3955)
!3965 = !DILocation(line: 33, column: 16, scope: !3955)
!3966 = !DILocation(line: 33, column: 7, scope: !3955)
!3967 = !DILocation(line: 34, column: 14, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 34, column: 7)
!3969 = !DILocation(line: 34, column: 20, scope: !3968)
!3970 = !DILocation(line: 34, column: 23, scope: !3968)
!3971 = !DILocation(line: 34, column: 29, scope: !3968)
!3972 = !DILocation(line: 34, column: 7, scope: !3955)
!3973 = !DILocation(line: 35, column: 5, scope: !3968)
!3974 = !DILocation(line: 36, column: 3, scope: !3955)
!3975 = distinct !DISubprogram(name: "xstrtoul", scope: !3976, file: !3976, line: 88, type: !3977, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !317, retainedNodes: !3981)
!3976 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!3979, !62, !229, !65, !3980, !62}
!3979 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !212, line: 39, baseType: !211)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3994, !3995, !3998, !3999}
!3982 = !DILocalVariable(name: "s", arg: 1, scope: !3975, file: !3976, line: 88, type: !62)
!3983 = !DILocalVariable(name: "ptr", arg: 2, scope: !3975, file: !3976, line: 88, type: !229)
!3984 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3975, file: !3976, line: 88, type: !65)
!3985 = !DILocalVariable(name: "val", arg: 4, scope: !3975, file: !3976, line: 89, type: !3980)
!3986 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3975, file: !3976, line: 89, type: !62)
!3987 = !DILocalVariable(name: "t_ptr", scope: !3975, file: !3976, line: 91, type: !6)
!3988 = !DILocalVariable(name: "p", scope: !3975, file: !3976, line: 92, type: !229)
!3989 = !DILocalVariable(name: "tmp", scope: !3975, file: !3976, line: 93, type: !79)
!3990 = !DILocalVariable(name: "err", scope: !3975, file: !3976, line: 94, type: !3979)
!3991 = !DILocalVariable(name: "q", scope: !3992, file: !3976, line: 104, type: !62)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3976, line: 103, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 102, column: 7)
!3994 = !DILocalVariable(name: "ch", scope: !3992, file: !3976, line: 105, type: !9)
!3995 = !DILocalVariable(name: "base", scope: !3996, file: !3976, line: 141, type: !65)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3976, line: 140, column: 5)
!3997 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 139, column: 7)
!3998 = !DILocalVariable(name: "suffixes", scope: !3996, file: !3976, line: 142, type: !65)
!3999 = !DILocalVariable(name: "overflow", scope: !3996, file: !3976, line: 143, type: !3979)
!4000 = !DILocation(line: 88, column: 24, scope: !3975)
!4001 = !DILocation(line: 88, column: 34, scope: !3975)
!4002 = !DILocation(line: 88, column: 43, scope: !3975)
!4003 = !DILocation(line: 89, column: 24, scope: !3975)
!4004 = !DILocation(line: 89, column: 41, scope: !3975)
!4005 = !DILocation(line: 91, column: 3, scope: !3975)
!4006 = !DILocation(line: 94, column: 16, scope: !3975)
!4007 = !DILocation(line: 96, column: 3, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3976, line: 96, column: 3)
!4009 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 96, column: 3)
!4010 = !DILocation(line: 98, column: 8, scope: !3975)
!4011 = !DILocation(line: 92, column: 10, scope: !3975)
!4012 = !DILocation(line: 100, column: 3, scope: !3975)
!4013 = !DILocation(line: 100, column: 9, scope: !3975)
!4014 = !DILocation(line: 104, column: 19, scope: !3992)
!4015 = !DILocation(line: 105, column: 21, scope: !3992)
!4016 = !DILocation(line: 106, column: 14, scope: !3992)
!4017 = !DILocation(line: 106, column: 7, scope: !3992)
!4018 = !DILocation(line: 0, scope: !3992)
!4019 = !DILocation(line: 107, column: 15, scope: !3992)
!4020 = distinct !{!4020, !4017, !4021}
!4021 = !DILocation(line: 107, column: 17, scope: !3992)
!4022 = !DILocation(line: 108, column: 14, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3992, file: !3976, line: 108, column: 11)
!4024 = !DILocation(line: 112, column: 9, scope: !3975)
!4025 = !DILocation(line: 93, column: 14, scope: !3975)
!4026 = !DILocation(line: 114, column: 7, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 114, column: 7)
!4028 = !DILocation(line: 114, column: 10, scope: !4027)
!4029 = !DILocation(line: 114, column: 7, scope: !3975)
!4030 = !DILocation(line: 118, column: 11, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !3976, line: 118, column: 11)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !3976, line: 115, column: 5)
!4033 = !DILocation(line: 118, column: 26, scope: !4031)
!4034 = !DILocation(line: 118, column: 29, scope: !4031)
!4035 = !DILocation(line: 118, column: 33, scope: !4031)
!4036 = !DILocation(line: 118, column: 36, scope: !4031)
!4037 = !DILocation(line: 118, column: 11, scope: !4032)
!4038 = !DILocation(line: 123, column: 12, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4027, file: !3976, line: 123, column: 12)
!4040 = !DILocation(line: 123, column: 12, scope: !4027)
!4041 = !DILocation(line: 128, column: 5, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !3976, line: 124, column: 5)
!4043 = !DILocation(line: 0, scope: !3975)
!4044 = !DILocation(line: 133, column: 8, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 133, column: 7)
!4046 = !DILocation(line: 133, column: 7, scope: !3975)
!4047 = !DILocation(line: 135, column: 12, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3976, line: 134, column: 5)
!4049 = !DILocation(line: 136, column: 7, scope: !4048)
!4050 = !DILocation(line: 139, column: 7, scope: !3997)
!4051 = !DILocation(line: 139, column: 11, scope: !3997)
!4052 = !DILocation(line: 139, column: 7, scope: !3975)
!4053 = !DILocation(line: 141, column: 11, scope: !3996)
!4054 = !DILocation(line: 142, column: 11, scope: !3996)
!4055 = !DILocation(line: 145, column: 12, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 145, column: 11)
!4057 = !DILocation(line: 145, column: 11, scope: !3996)
!4058 = !DILocation(line: 147, column: 16, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !3976, line: 146, column: 9)
!4060 = !DILocation(line: 148, column: 22, scope: !4059)
!4061 = !DILocation(line: 148, column: 11, scope: !4059)
!4062 = !DILocation(line: 151, column: 7, scope: !3996)
!4063 = !DILocation(line: 163, column: 15, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3976, line: 163, column: 15)
!4065 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 152, column: 9)
!4066 = !DILocation(line: 163, column: 15, scope: !4065)
!4067 = !DILocation(line: 164, column: 21, scope: !4064)
!4068 = !DILocation(line: 164, column: 13, scope: !4064)
!4069 = !DILocation(line: 167, column: 21, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !3976, line: 167, column: 21)
!4071 = distinct !DILexicalBlock(scope: !4064, file: !3976, line: 165, column: 15)
!4072 = !DILocation(line: 167, column: 29, scope: !4070)
!4073 = !DILocation(line: 167, column: 21, scope: !4071)
!4074 = !DILocation(line: 175, column: 17, scope: !4071)
!4075 = !DILocation(line: 179, column: 7, scope: !3996)
!4076 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4077, file: !3976, line: 60, type: !65)
!4077 = distinct !DISubprogram(name: "bkm_scale", scope: !3976, file: !3976, line: 60, type: !4078, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !317, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!3979, !3980, !65}
!4080 = !{!4081, !4076}
!4081 = !DILocalVariable(name: "x", arg: 1, scope: !4077, file: !3976, line: 60, type: !3980)
!4082 = !DILocation(line: 60, column: 31, scope: !4077, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 182, column: 22, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 180, column: 9)
!4085 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4083)
!4086 = distinct !DILexicalBlock(scope: !4077, file: !3976, line: 67, column: 7)
!4087 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4083)
!4088 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4083)
!4089 = !DILocation(line: 143, column: 20, scope: !3996)
!4090 = !DILocation(line: 183, column: 11, scope: !4084)
!4091 = !DILocation(line: 60, column: 31, scope: !4077, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 189, column: 22, scope: !4084)
!4093 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4092)
!4094 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4092)
!4095 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4092)
!4096 = !DILocation(line: 190, column: 11, scope: !4084)
!4097 = !DILocalVariable(name: "power", arg: 3, scope: !4098, file: !3976, line: 77, type: !65)
!4098 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3976, file: !3976, line: 77, type: !4099, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !317, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!3979, !3980, !65, !65}
!4101 = !{!4102, !4103, !4097, !4104}
!4102 = !DILocalVariable(name: "x", arg: 1, scope: !4098, file: !3976, line: 77, type: !3980)
!4103 = !DILocalVariable(name: "base", arg: 2, scope: !4098, file: !3976, line: 77, type: !65)
!4104 = !DILocalVariable(name: "err", scope: !4098, file: !3976, line: 79, type: !3979)
!4105 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 197, column: 22, scope: !4084)
!4107 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4106)
!4108 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4106)
!4110 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4109)
!4111 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4109)
!4112 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4106)
!4113 = !DILocation(line: 241, column: 11, scope: !3996)
!4114 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 202, column: 22, scope: !4084)
!4116 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4115)
!4117 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4115)
!4119 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4118)
!4120 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4118)
!4121 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4115)
!4122 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 207, column: 22, scope: !4084)
!4124 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4123)
!4125 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4123)
!4127 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4126)
!4128 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4126)
!4129 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 212, column: 22, scope: !4084)
!4131 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4130)
!4132 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4130)
!4134 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4133)
!4135 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4133)
!4136 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4130)
!4137 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 216, column: 22, scope: !4084)
!4139 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4138)
!4140 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4138)
!4142 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4141)
!4143 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4141)
!4144 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4138)
!4145 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 221, column: 22, scope: !4084)
!4147 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4146)
!4148 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4146)
!4150 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4149)
!4151 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4149)
!4152 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4146)
!4153 = !DILocation(line: 60, column: 31, scope: !4077, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 225, column: 22, scope: !4084)
!4155 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4154)
!4156 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4154)
!4157 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4154)
!4158 = !DILocation(line: 226, column: 11, scope: !4084)
!4159 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 229, column: 22, scope: !4084)
!4161 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4160)
!4162 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4160)
!4164 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4163)
!4165 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4163)
!4166 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4160)
!4167 = !DILocation(line: 77, column: 50, scope: !4098, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 233, column: 22, scope: !4084)
!4169 = !DILocation(line: 79, column: 16, scope: !4098, inlinedAt: !4168)
!4170 = !DILocation(line: 67, column: 39, scope: !4086, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 81, column: 12, scope: !4098, inlinedAt: !4168)
!4172 = !DILocation(line: 72, column: 6, scope: !4077, inlinedAt: !4171)
!4173 = !DILocation(line: 67, column: 7, scope: !4077, inlinedAt: !4171)
!4174 = !DILocation(line: 81, column: 9, scope: !4098, inlinedAt: !4168)
!4175 = !DILocation(line: 237, column: 16, scope: !4084)
!4176 = !DILocation(line: 238, column: 22, scope: !4084)
!4177 = !DILocation(line: 238, column: 11, scope: !4084)
!4178 = !DILocation(line: 0, scope: !4031)
!4179 = !DILocation(line: 0, scope: !4084)
!4180 = !DILocation(line: 242, column: 10, scope: !3996)
!4181 = !DILocation(line: 243, column: 11, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 243, column: 11)
!4183 = !DILocation(line: 244, column: 13, scope: !4182)
!4184 = !DILocation(line: 243, column: 11, scope: !3996)
!4185 = !DILocation(line: 119, column: 13, scope: !4031)
!4186 = !DILocation(line: 247, column: 8, scope: !3975)
!4187 = !DILocation(line: 248, column: 3, scope: !3975)
!4188 = !DILocation(line: 0, scope: !4023)
!4189 = !DILocation(line: 249, column: 1, scope: !3975)
!4190 = distinct !DISubprogram(name: "rpl_calloc", scope: !4191, file: !4191, line: 42, type: !3688, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !321, retainedNodes: !4192)
!4191 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4192 = !{!4193, !4194, !4195, !4196}
!4193 = !DILocalVariable(name: "n", arg: 1, scope: !4190, file: !4191, line: 42, type: !151)
!4194 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !4191, line: 42, type: !151)
!4195 = !DILocalVariable(name: "result", scope: !4190, file: !4191, line: 44, type: !8)
!4196 = !DILocalVariable(name: "bytes", scope: !4197, file: !4191, line: 56, type: !151)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !4191, line: 53, column: 5)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !4191, line: 47, column: 7)
!4199 = !DILocation(line: 42, column: 20, scope: !4190)
!4200 = !DILocation(line: 42, column: 30, scope: !4190)
!4201 = !DILocation(line: 47, column: 9, scope: !4198)
!4202 = !DILocation(line: 47, column: 19, scope: !4198)
!4203 = !DILocation(line: 47, column: 14, scope: !4198)
!4204 = !DILocation(line: 56, column: 24, scope: !4197)
!4205 = !DILocation(line: 56, column: 14, scope: !4197)
!4206 = !DILocation(line: 57, column: 17, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4197, file: !4191, line: 57, column: 11)
!4208 = !DILocation(line: 57, column: 21, scope: !4207)
!4209 = !DILocation(line: 57, column: 11, scope: !4197)
!4210 = !DILocation(line: 59, column: 11, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4207, file: !4191, line: 58, column: 9)
!4212 = !DILocation(line: 59, column: 17, scope: !4211)
!4213 = !DILocation(line: 65, column: 12, scope: !4190)
!4214 = !DILocation(line: 44, column: 9, scope: !4190)
!4215 = !DILocation(line: 72, column: 3, scope: !4190)
!4216 = !DILocation(line: 0, scope: !4211)
!4217 = !DILocation(line: 73, column: 1, scope: !4190)
!4218 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4219, file: !4219, line: 385, type: !4220, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !323, retainedNodes: !4234)
!4219 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!151, !4222, !62, !151, !4223}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1753, line: 6, baseType: !4225)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1755, line: 21, baseType: !4226)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1755, line: 13, size: 64, elements: !4227)
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4226, file: !1755, line: 15, baseType: !65, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4226, file: !1755, line: 20, baseType: !4230, size: 32, offset: 32)
!4230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4226, file: !1755, line: 16, size: 32, elements: !4231)
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4230, file: !1755, line: 18, baseType: !17, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4230, file: !1755, line: 19, baseType: !1764, size: 32)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4235 = !DILocalVariable(name: "pwc", arg: 1, scope: !4218, file: !4219, line: 385, type: !4222)
!4236 = !DILocalVariable(name: "s", arg: 2, scope: !4218, file: !4219, line: 385, type: !62)
!4237 = !DILocalVariable(name: "n", arg: 3, scope: !4218, file: !4219, line: 385, type: !151)
!4238 = !DILocalVariable(name: "ps", arg: 4, scope: !4218, file: !4219, line: 385, type: !4223)
!4239 = !DILocalVariable(name: "ret", scope: !4218, file: !4219, line: 387, type: !151)
!4240 = !DILocalVariable(name: "wc", scope: !4218, file: !4219, line: 388, type: !1769)
!4241 = !DILocalVariable(name: "uc", scope: !4242, file: !4219, line: 449, type: !9)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !4219, line: 448, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4218, file: !4219, line: 447, column: 7)
!4244 = !DILocation(line: 385, column: 23, scope: !4218)
!4245 = !DILocation(line: 385, column: 40, scope: !4218)
!4246 = !DILocation(line: 385, column: 50, scope: !4218)
!4247 = !DILocation(line: 385, column: 64, scope: !4218)
!4248 = !DILocation(line: 388, column: 3, scope: !4218)
!4249 = !DILocation(line: 404, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4218, file: !4219, line: 404, column: 7)
!4251 = !DILocation(line: 404, column: 7, scope: !4218)
!4252 = !DILocation(line: 439, column: 9, scope: !4218)
!4253 = !DILocation(line: 387, column: 10, scope: !4218)
!4254 = !DILocation(line: 447, column: 19, scope: !4243)
!4255 = !DILocation(line: 447, column: 31, scope: !4243)
!4256 = !DILocation(line: 447, column: 26, scope: !4243)
!4257 = !DILocation(line: 447, column: 41, scope: !4243)
!4258 = !DILocation(line: 447, column: 7, scope: !4218)
!4259 = !DILocation(line: 449, column: 26, scope: !4242)
!4260 = !DILocation(line: 449, column: 21, scope: !4242)
!4261 = !DILocation(line: 450, column: 14, scope: !4242)
!4262 = !DILocation(line: 450, column: 12, scope: !4242)
!4263 = !DILocation(line: 0, scope: !4242)
!4264 = !DILocation(line: 456, column: 1, scope: !4218)
!4265 = distinct !DISubprogram(name: "close_stream", scope: !4266, file: !4266, line: 56, type: !4267, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !326, retainedNodes: !4303)
!4266 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!65, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3496, line: 7, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3498, line: 49, size: 1728, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4271, file: !3498, line: 51, baseType: !65, size: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4271, file: !3498, line: 54, baseType: !6, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4271, file: !3498, line: 55, baseType: !6, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4271, file: !3498, line: 56, baseType: !6, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4271, file: !3498, line: 57, baseType: !6, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4271, file: !3498, line: 58, baseType: !6, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4271, file: !3498, line: 59, baseType: !6, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4271, file: !3498, line: 60, baseType: !6, size: 64, offset: 448)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4271, file: !3498, line: 61, baseType: !6, size: 64, offset: 512)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4271, file: !3498, line: 64, baseType: !6, size: 64, offset: 576)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4271, file: !3498, line: 65, baseType: !6, size: 64, offset: 640)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4271, file: !3498, line: 66, baseType: !6, size: 64, offset: 704)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4271, file: !3498, line: 68, baseType: !3513, size: 64, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4271, file: !3498, line: 70, baseType: !4287, size: 64, offset: 832)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4271, file: !3498, line: 72, baseType: !65, size: 32, offset: 896)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4271, file: !3498, line: 73, baseType: !65, size: 32, offset: 928)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4271, file: !3498, line: 74, baseType: !3520, size: 64, offset: 960)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4271, file: !3498, line: 77, baseType: !150, size: 16, offset: 1024)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4271, file: !3498, line: 78, baseType: !3524, size: 8, offset: 1040)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4271, file: !3498, line: 79, baseType: !3526, size: 8, offset: 1048)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4271, file: !3498, line: 81, baseType: !3530, size: 64, offset: 1088)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4271, file: !3498, line: 89, baseType: !3533, size: 64, offset: 1152)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4271, file: !3498, line: 91, baseType: !3535, size: 64, offset: 1216)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4271, file: !3498, line: 92, baseType: !3538, size: 64, offset: 1280)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4271, file: !3498, line: 93, baseType: !4287, size: 64, offset: 1344)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4271, file: !3498, line: 94, baseType: !8, size: 64, offset: 1408)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4271, file: !3498, line: 95, baseType: !151, size: 64, offset: 1472)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4271, file: !3498, line: 96, baseType: !65, size: 32, offset: 1536)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4271, file: !3498, line: 98, baseType: !3545, size: 160, offset: 1568)
!4303 = !{!4304, !4305, !4307, !4308}
!4304 = !DILocalVariable(name: "stream", arg: 1, scope: !4265, file: !4266, line: 56, type: !4269)
!4305 = !DILocalVariable(name: "some_pending", scope: !4265, file: !4266, line: 58, type: !4306)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4307 = !DILocalVariable(name: "prev_fail", scope: !4265, file: !4266, line: 59, type: !4306)
!4308 = !DILocalVariable(name: "fclose_fail", scope: !4265, file: !4266, line: 60, type: !4306)
!4309 = !DILocation(line: 56, column: 21, scope: !4265)
!4310 = !DILocation(line: 58, column: 30, scope: !4265)
!4311 = !DILocalVariable(name: "__stream", arg: 1, scope: !4312, file: !1212, line: 135, type: !4269)
!4312 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1212, file: !1212, line: 135, type: !4267, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !326, retainedNodes: !4313)
!4313 = !{!4311}
!4314 = !DILocation(line: 135, column: 1, scope: !4312, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 59, column: 27, scope: !4265)
!4316 = !DILocation(line: 137, column: 10, scope: !4312, inlinedAt: !4315)
!4317 = !{!1220, !909, i64 0}
!4318 = !DILocation(line: 59, column: 43, scope: !4265)
!4319 = !DILocation(line: 60, column: 29, scope: !4265)
!4320 = !DILocation(line: 60, column: 45, scope: !4265)
!4321 = !DILocation(line: 70, column: 17, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4265, file: !4266, line: 70, column: 7)
!4323 = !DILocation(line: 58, column: 50, scope: !4265)
!4324 = !DILocation(line: 70, column: 33, scope: !4322)
!4325 = !DILocation(line: 70, column: 53, scope: !4322)
!4326 = !DILocation(line: 70, column: 59, scope: !4322)
!4327 = !DILocation(line: 70, column: 7, scope: !4265)
!4328 = !DILocation(line: 72, column: 11, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4322, file: !4266, line: 71, column: 5)
!4330 = !DILocation(line: 73, column: 9, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4329, file: !4266, line: 72, column: 11)
!4332 = !DILocation(line: 73, column: 15, scope: !4331)
!4333 = !DILocation(line: 0, scope: !4265)
!4334 = !DILocation(line: 78, column: 1, scope: !4265)
!4335 = distinct !DISubprogram(name: "hard_locale", scope: !4336, file: !4336, line: 38, type: !4337, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !328, retainedNodes: !4339)
!4336 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!28, !65}
!4339 = !{!4340, !4341, !4342}
!4340 = !DILocalVariable(name: "category", arg: 1, scope: !4335, file: !4336, line: 38, type: !65)
!4341 = !DILocalVariable(name: "hard", scope: !4335, file: !4336, line: 40, type: !28)
!4342 = !DILocalVariable(name: "p", scope: !4335, file: !4336, line: 41, type: !62)
!4343 = !DILocation(line: 38, column: 18, scope: !4335)
!4344 = !DILocation(line: 40, column: 8, scope: !4335)
!4345 = !DILocation(line: 41, column: 19, scope: !4335)
!4346 = !DILocation(line: 41, column: 15, scope: !4335)
!4347 = !DILocation(line: 43, column: 7, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4335, file: !4336, line: 43, column: 7)
!4349 = !DILocation(line: 43, column: 7, scope: !4335)
!4350 = !DILocation(line: 47, column: 15, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !4336, line: 47, column: 15)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !4336, line: 46, column: 9)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !4336, line: 45, column: 11)
!4354 = distinct !DILexicalBlock(scope: !4348, file: !4336, line: 44, column: 5)
!4355 = !DILocation(line: 47, column: 31, scope: !4351)
!4356 = !DILocation(line: 47, column: 36, scope: !4351)
!4357 = !DILocation(line: 47, column: 39, scope: !4351)
!4358 = !DILocation(line: 47, column: 59, scope: !4351)
!4359 = !DILocation(line: 47, column: 15, scope: !4352)
!4360 = !DILocation(line: 48, column: 13, scope: !4351)
!4361 = !DILocation(line: 71, column: 3, scope: !4335)
!4362 = distinct !DISubprogram(name: "locale_charset", scope: !4363, file: !4363, line: 687, type: !4364, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !4366)
!4363 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!62}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "codeset", scope: !4362, file: !4363, line: 689, type: !62)
!4368 = !DILocation(line: 696, column: 13, scope: !4362)
!4369 = !DILocation(line: 689, column: 15, scope: !4362)
!4370 = !DILocation(line: 754, column: 15, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4362, file: !4363, line: 754, column: 7)
!4372 = !DILocation(line: 754, column: 7, scope: !4362)
!4373 = !DILocation(line: 907, column: 13, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !4363, line: 907, column: 13)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !4363, line: 897, column: 7)
!4376 = distinct !DILexicalBlock(scope: !4362, file: !4363, line: 856, column: 3)
!4377 = !DILocation(line: 907, column: 24, scope: !4374)
!4378 = !DILocation(line: 907, column: 13, scope: !4375)
!4379 = !DILocation(line: 995, column: 3, scope: !4362)
!4380 = !DILocation(line: 66, column: 25, scope: !724)
!4381 = !DILocation(line: 66, column: 41, scope: !724)
!4382 = !DILocation(line: 66, column: 54, scope: !724)
!4383 = !DILocation(line: 68, column: 3, scope: !724)
!4384 = !DILocation(line: 81, column: 7, scope: !738)
!4385 = !DILocation(line: 81, column: 7, scope: !724)
!4386 = !DILocation(line: 68, column: 7, scope: !724)
!4387 = !DILocation(line: 84, column: 20, scope: !737)
!4388 = !DILocalVariable(name: "g", arg: 1, scope: !4389, file: !723, line: 43, type: !228)
!4389 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !723, file: !723, line: 43, type: !4390, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !719, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!228, !228, !151}
!4392 = !{!4388, !4393}
!4393 = !DILocalVariable(name: "num", arg: 2, scope: !4389, file: !723, line: 43, type: !151)
!4394 = !DILocation(line: 43, column: 26, scope: !4389, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 86, column: 11, scope: !737)
!4396 = !DILocation(line: 43, column: 36, scope: !4389, inlinedAt: !4395)
!4397 = !DILocation(line: 51, column: 10, scope: !4389, inlinedAt: !4395)
!4398 = !DILocation(line: 70, column: 10, scope: !724)
!4399 = !DILocation(line: 87, column: 13, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !737, file: !723, line: 87, column: 11)
!4401 = !DILocation(line: 87, column: 11, scope: !737)
!4402 = !DILocation(line: 93, column: 31, scope: !736)
!4403 = !DILocation(line: 86, column: 9, scope: !737)
!4404 = !DILocation(line: 93, column: 15, scope: !736)
!4405 = !DILocation(line: 96, column: 16, scope: !736)
!4406 = !DILocation(line: 69, column: 7, scope: !724)
!4407 = !DILocation(line: 100, column: 18, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !736, file: !723, line: 100, column: 15)
!4409 = !DILocation(line: 0, scope: !742)
!4410 = !DILocation(line: 100, column: 39, scope: !4408)
!4411 = !DILocation(line: 100, column: 22, scope: !4408)
!4412 = !DILocation(line: 101, column: 26, scope: !4408)
!4413 = !DILocation(line: 101, column: 13, scope: !4408)
!4414 = !DILocation(line: 103, column: 41, scope: !742)
!4415 = !DILocation(line: 43, column: 26, scope: !4389, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 103, column: 20, scope: !742)
!4417 = !DILocation(line: 45, column: 7, scope: !4418, inlinedAt: !4416)
!4418 = distinct !DILexicalBlock(scope: !4389, file: !723, line: 45, column: 7)
!4419 = !DILocation(line: 45, column: 7, scope: !4389, inlinedAt: !4416)
!4420 = !DILocation(line: 47, column: 7, scope: !4421, inlinedAt: !4416)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !723, line: 46, column: 5)
!4422 = !DILocation(line: 47, column: 13, scope: !4421, inlinedAt: !4416)
!4423 = !DILocation(line: 92, column: 18, scope: !736)
!4424 = !DILocation(line: 103, column: 15, scope: !736)
!4425 = !DILocation(line: 43, column: 36, scope: !4389, inlinedAt: !4416)
!4426 = !DILocation(line: 51, column: 26, scope: !4389, inlinedAt: !4416)
!4427 = !DILocation(line: 51, column: 10, scope: !4389, inlinedAt: !4416)
!4428 = !DILocation(line: 103, column: 56, scope: !742)
!4429 = !DILocation(line: 105, column: 33, scope: !741)
!4430 = !DILocation(line: 105, column: 19, scope: !741)
!4431 = !DILocation(line: 106, column: 15, scope: !741)
!4432 = !DILocation(line: 107, column: 21, scope: !741)
!4433 = !DILocation(line: 112, column: 17, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !736, file: !723, line: 112, column: 15)
!4435 = !DILocation(line: 112, column: 15, scope: !736)
!4436 = !DILocation(line: 114, column: 23, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !723, line: 113, column: 13)
!4438 = !DILocation(line: 117, column: 22, scope: !4437)
!4439 = !DILocation(line: 117, column: 15, scope: !4437)
!4440 = !DILocation(line: 126, column: 21, scope: !724)
!4441 = !DILocation(line: 124, column: 16, scope: !724)
!4442 = !DILocation(line: 131, column: 20, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !724, file: !723, line: 131, column: 7)
!4444 = !DILocation(line: 131, column: 7, scope: !724)
!4445 = !DILocation(line: 133, column: 11, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !723, line: 133, column: 11)
!4447 = distinct !DILexicalBlock(scope: !4443, file: !723, line: 132, column: 5)
!4448 = !DILocation(line: 133, column: 17, scope: !4446)
!4449 = !DILocation(line: 133, column: 27, scope: !4446)
!4450 = !DILocation(line: 43, column: 26, scope: !4389, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 133, column: 35, scope: !4446)
!4452 = !DILocation(line: 43, column: 36, scope: !4389, inlinedAt: !4451)
!4453 = !DILocation(line: 51, column: 10, scope: !4389, inlinedAt: !4451)
!4454 = !DILocation(line: 133, column: 33, scope: !4446)
!4455 = !DILocation(line: 133, column: 11, scope: !4447)
!4456 = !DILocation(line: 135, column: 19, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4446, file: !723, line: 134, column: 9)
!4458 = !DILocation(line: 136, column: 14, scope: !4457)
!4459 = !DILocation(line: 137, column: 22, scope: !4457)
!4460 = !DILocation(line: 137, column: 11, scope: !4457)
!4461 = !DILocation(line: 142, column: 20, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !724, file: !723, line: 142, column: 7)
!4463 = !DILocation(line: 142, column: 46, scope: !4462)
!4464 = !DILocation(line: 142, column: 25, scope: !4462)
!4465 = !DILocation(line: 143, column: 17, scope: !4462)
!4466 = !DILocation(line: 43, column: 26, scope: !4389, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 144, column: 7, scope: !724)
!4468 = !DILocation(line: 45, column: 7, scope: !4418, inlinedAt: !4467)
!4469 = !DILocation(line: 45, column: 7, scope: !4389, inlinedAt: !4467)
!4470 = !DILocation(line: 47, column: 7, scope: !4421, inlinedAt: !4467)
!4471 = !DILocation(line: 47, column: 13, scope: !4421, inlinedAt: !4467)
!4472 = !DILocation(line: 145, column: 7, scope: !724)
!4473 = !DILocation(line: 144, column: 31, scope: !724)
!4474 = !DILocation(line: 43, column: 36, scope: !4389, inlinedAt: !4467)
!4475 = !DILocation(line: 51, column: 26, scope: !4389, inlinedAt: !4467)
!4476 = !DILocation(line: 51, column: 10, scope: !4389, inlinedAt: !4467)
!4477 = !DILocation(line: 145, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !724, file: !723, line: 145, column: 7)
!4479 = !DILocation(line: 150, column: 42, scope: !724)
!4480 = !DILocation(line: 150, column: 35, scope: !724)
!4481 = !DILocation(line: 151, column: 35, scope: !724)
!4482 = !DILocation(line: 150, column: 11, scope: !724)
!4483 = !DILocation(line: 153, column: 10, scope: !745)
!4484 = !DILocation(line: 153, column: 7, scope: !724)
!4485 = !DILocation(line: 156, column: 25, scope: !744)
!4486 = !DILocation(line: 156, column: 11, scope: !744)
!4487 = !DILocation(line: 157, column: 7, scope: !744)
!4488 = !DILocation(line: 158, column: 13, scope: !744)
!4489 = !DILocation(line: 162, column: 17, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !724, file: !723, line: 162, column: 7)
!4491 = !DILocation(line: 164, column: 10, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4490, file: !723, line: 163, column: 5)
!4493 = !DILocation(line: 165, column: 9, scope: !4492)
!4494 = !DILocation(line: 166, column: 5, scope: !4492)
!4495 = !DILocation(line: 0, scope: !724)
!4496 = !DILocation(line: 167, column: 11, scope: !724)
!4497 = !DILocation(line: 185, column: 9, scope: !748)
!4498 = !DILocation(line: 185, column: 7, scope: !724)
!4499 = !DILocation(line: 187, column: 21, scope: !747)
!4500 = !DILocation(line: 187, column: 13, scope: !747)
!4501 = !DILocation(line: 189, column: 29, scope: !747)
!4502 = !DILocation(line: 189, column: 14, scope: !747)
!4503 = !DILocation(line: 188, column: 14, scope: !747)
!4504 = !DILocation(line: 0, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !723, line: 191, column: 7)
!4506 = distinct !DILexicalBlock(scope: !747, file: !723, line: 191, column: 7)
!4507 = !DILocation(line: 191, column: 31, scope: !4505)
!4508 = !DILocation(line: 191, column: 7, scope: !4506)
!4509 = !DILocation(line: 193, column: 15, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !723, line: 193, column: 15)
!4511 = distinct !DILexicalBlock(scope: !4505, file: !723, line: 192, column: 9)
!4512 = !DILocation(line: 193, column: 39, scope: !4510)
!4513 = !DILocation(line: 193, column: 30, scope: !4510)
!4514 = !DILocation(line: 196, column: 14, scope: !4510)
!4515 = !DILocation(line: 196, column: 18, scope: !4510)
!4516 = !DILocation(line: 194, column: 15, scope: !4510)
!4517 = !DILocation(line: 194, column: 13, scope: !4510)
!4518 = !DILocation(line: 0, scope: !4510)
!4519 = !DILocation(line: 0, scope: !4492)
!4520 = !DILocation(line: 193, column: 21, scope: !4510)
!4521 = !DILocation(line: 201, column: 1, scope: !724)
!4522 = distinct !{!4522, !4508, !4523}
!4523 = !DILocation(line: 197, column: 9, scope: !4506)
!4524 = distinct !DISubprogram(name: "rpl_fclose", scope: !4525, file: !4525, line: 58, type: !4526, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !754, retainedNodes: !4562)
!4525 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!65, !4528}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3496, line: 7, baseType: !4530)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3498, line: 49, size: 1728, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4530, file: !3498, line: 51, baseType: !65, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4530, file: !3498, line: 54, baseType: !6, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4530, file: !3498, line: 55, baseType: !6, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4530, file: !3498, line: 56, baseType: !6, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4530, file: !3498, line: 57, baseType: !6, size: 64, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4530, file: !3498, line: 58, baseType: !6, size: 64, offset: 320)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4530, file: !3498, line: 59, baseType: !6, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4530, file: !3498, line: 60, baseType: !6, size: 64, offset: 448)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4530, file: !3498, line: 61, baseType: !6, size: 64, offset: 512)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4530, file: !3498, line: 64, baseType: !6, size: 64, offset: 576)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4530, file: !3498, line: 65, baseType: !6, size: 64, offset: 640)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4530, file: !3498, line: 66, baseType: !6, size: 64, offset: 704)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4530, file: !3498, line: 68, baseType: !3513, size: 64, offset: 768)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4530, file: !3498, line: 70, baseType: !4546, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4530, file: !3498, line: 72, baseType: !65, size: 32, offset: 896)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4530, file: !3498, line: 73, baseType: !65, size: 32, offset: 928)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4530, file: !3498, line: 74, baseType: !3520, size: 64, offset: 960)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4530, file: !3498, line: 77, baseType: !150, size: 16, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4530, file: !3498, line: 78, baseType: !3524, size: 8, offset: 1040)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4530, file: !3498, line: 79, baseType: !3526, size: 8, offset: 1048)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4530, file: !3498, line: 81, baseType: !3530, size: 64, offset: 1088)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4530, file: !3498, line: 89, baseType: !3533, size: 64, offset: 1152)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4530, file: !3498, line: 91, baseType: !3535, size: 64, offset: 1216)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4530, file: !3498, line: 92, baseType: !3538, size: 64, offset: 1280)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4530, file: !3498, line: 93, baseType: !4546, size: 64, offset: 1344)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4530, file: !3498, line: 94, baseType: !8, size: 64, offset: 1408)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4530, file: !3498, line: 95, baseType: !151, size: 64, offset: 1472)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4530, file: !3498, line: 96, baseType: !65, size: 32, offset: 1536)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4530, file: !3498, line: 98, baseType: !3545, size: 160, offset: 1568)
!4562 = !{!4563, !4564, !4565, !4566}
!4563 = !DILocalVariable(name: "fp", arg: 1, scope: !4524, file: !4525, line: 58, type: !4528)
!4564 = !DILocalVariable(name: "saved_errno", scope: !4524, file: !4525, line: 60, type: !65)
!4565 = !DILocalVariable(name: "fd", scope: !4524, file: !4525, line: 61, type: !65)
!4566 = !DILocalVariable(name: "result", scope: !4524, file: !4525, line: 62, type: !65)
!4567 = !DILocation(line: 58, column: 19, scope: !4524)
!4568 = !DILocation(line: 60, column: 7, scope: !4524)
!4569 = !DILocation(line: 62, column: 7, scope: !4524)
!4570 = !DILocation(line: 65, column: 8, scope: !4524)
!4571 = !DILocation(line: 61, column: 7, scope: !4524)
!4572 = !DILocation(line: 66, column: 10, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 66, column: 7)
!4574 = !DILocation(line: 66, column: 7, scope: !4524)
!4575 = !DILocation(line: 67, column: 12, scope: !4573)
!4576 = !DILocation(line: 67, column: 5, scope: !4573)
!4577 = !DILocation(line: 72, column: 9, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 72, column: 7)
!4579 = !DILocation(line: 72, column: 23, scope: !4578)
!4580 = !DILocation(line: 72, column: 33, scope: !4578)
!4581 = !DILocation(line: 72, column: 26, scope: !4578)
!4582 = !DILocation(line: 72, column: 59, scope: !4578)
!4583 = !DILocation(line: 73, column: 7, scope: !4578)
!4584 = !DILocation(line: 73, column: 10, scope: !4578)
!4585 = !DILocation(line: 72, column: 7, scope: !4524)
!4586 = !DILocation(line: 100, column: 12, scope: !4524)
!4587 = !DILocation(line: 105, column: 7, scope: !4524)
!4588 = !DILocation(line: 74, column: 19, scope: !4578)
!4589 = !DILocation(line: 105, column: 19, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 105, column: 7)
!4591 = !DILocation(line: 107, column: 13, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4590, file: !4525, line: 106, column: 5)
!4593 = !DILocation(line: 109, column: 5, scope: !4592)
!4594 = !DILocation(line: 0, scope: !4524)
!4595 = !DILocation(line: 112, column: 1, scope: !4524)
!4596 = distinct !DISubprogram(name: "rpl_fflush", scope: !4597, file: !4597, line: 129, type: !4598, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !756, retainedNodes: !4634)
!4597 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!65, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3496, line: 7, baseType: !4602)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3498, line: 49, size: 1728, elements: !4603)
!4603 = !{!4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4602, file: !3498, line: 51, baseType: !65, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4602, file: !3498, line: 54, baseType: !6, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4602, file: !3498, line: 55, baseType: !6, size: 64, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4602, file: !3498, line: 56, baseType: !6, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4602, file: !3498, line: 57, baseType: !6, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4602, file: !3498, line: 58, baseType: !6, size: 64, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4602, file: !3498, line: 59, baseType: !6, size: 64, offset: 384)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4602, file: !3498, line: 60, baseType: !6, size: 64, offset: 448)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4602, file: !3498, line: 61, baseType: !6, size: 64, offset: 512)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4602, file: !3498, line: 64, baseType: !6, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4602, file: !3498, line: 65, baseType: !6, size: 64, offset: 640)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4602, file: !3498, line: 66, baseType: !6, size: 64, offset: 704)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4602, file: !3498, line: 68, baseType: !3513, size: 64, offset: 768)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4602, file: !3498, line: 70, baseType: !4618, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4602, file: !3498, line: 72, baseType: !65, size: 32, offset: 896)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4602, file: !3498, line: 73, baseType: !65, size: 32, offset: 928)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4602, file: !3498, line: 74, baseType: !3520, size: 64, offset: 960)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4602, file: !3498, line: 77, baseType: !150, size: 16, offset: 1024)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4602, file: !3498, line: 78, baseType: !3524, size: 8, offset: 1040)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4602, file: !3498, line: 79, baseType: !3526, size: 8, offset: 1048)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4602, file: !3498, line: 81, baseType: !3530, size: 64, offset: 1088)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4602, file: !3498, line: 89, baseType: !3533, size: 64, offset: 1152)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4602, file: !3498, line: 91, baseType: !3535, size: 64, offset: 1216)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4602, file: !3498, line: 92, baseType: !3538, size: 64, offset: 1280)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4602, file: !3498, line: 93, baseType: !4618, size: 64, offset: 1344)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4602, file: !3498, line: 94, baseType: !8, size: 64, offset: 1408)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4602, file: !3498, line: 95, baseType: !151, size: 64, offset: 1472)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4602, file: !3498, line: 96, baseType: !65, size: 32, offset: 1536)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4602, file: !3498, line: 98, baseType: !3545, size: 160, offset: 1568)
!4634 = !{!4635}
!4635 = !DILocalVariable(name: "stream", arg: 1, scope: !4596, file: !4597, line: 129, type: !4600)
!4636 = !DILocation(line: 129, column: 19, scope: !4596)
!4637 = !DILocation(line: 150, column: 14, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4596, file: !4597, line: 150, column: 7)
!4639 = !DILocation(line: 150, column: 22, scope: !4638)
!4640 = !DILocation(line: 150, column: 27, scope: !4638)
!4641 = !DILocation(line: 150, column: 7, scope: !4596)
!4642 = !DILocation(line: 151, column: 12, scope: !4638)
!4643 = !DILocation(line: 151, column: 5, scope: !4638)
!4644 = !DILocalVariable(name: "fp", arg: 1, scope: !4645, file: !4597, line: 41, type: !4600)
!4645 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4597, file: !4597, line: 41, type: !4646, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !756, retainedNodes: !4648)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !4600}
!4648 = !{!4644}
!4649 = !DILocation(line: 41, column: 48, scope: !4645, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 156, column: 3, scope: !4596)
!4651 = !DILocation(line: 43, column: 11, scope: !4652, inlinedAt: !4650)
!4652 = distinct !DILexicalBlock(scope: !4645, file: !4597, line: 43, column: 7)
!4653 = !DILocation(line: 43, column: 18, scope: !4652, inlinedAt: !4650)
!4654 = !DILocation(line: 43, column: 7, scope: !4645, inlinedAt: !4650)
!4655 = !DILocation(line: 45, column: 5, scope: !4652, inlinedAt: !4650)
!4656 = !DILocation(line: 158, column: 10, scope: !4596)
!4657 = !DILocation(line: 158, column: 3, scope: !4596)
!4658 = !DILocation(line: 0, scope: !4596)
!4659 = !DILocation(line: 232, column: 1, scope: !4596)
!4660 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4661, file: !4661, line: 28, type: !4662, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !758, retainedNodes: !4699)
!4661 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!65, !4664, !4698, !65}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3496, line: 7, baseType: !4666)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3498, line: 49, size: 1728, elements: !4667)
!4667 = !{!4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4666, file: !3498, line: 51, baseType: !65, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4666, file: !3498, line: 54, baseType: !6, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4666, file: !3498, line: 55, baseType: !6, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4666, file: !3498, line: 56, baseType: !6, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4666, file: !3498, line: 57, baseType: !6, size: 64, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4666, file: !3498, line: 58, baseType: !6, size: 64, offset: 320)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4666, file: !3498, line: 59, baseType: !6, size: 64, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4666, file: !3498, line: 60, baseType: !6, size: 64, offset: 448)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4666, file: !3498, line: 61, baseType: !6, size: 64, offset: 512)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4666, file: !3498, line: 64, baseType: !6, size: 64, offset: 576)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4666, file: !3498, line: 65, baseType: !6, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4666, file: !3498, line: 66, baseType: !6, size: 64, offset: 704)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4666, file: !3498, line: 68, baseType: !3513, size: 64, offset: 768)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4666, file: !3498, line: 70, baseType: !4682, size: 64, offset: 832)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4666, file: !3498, line: 72, baseType: !65, size: 32, offset: 896)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4666, file: !3498, line: 73, baseType: !65, size: 32, offset: 928)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4666, file: !3498, line: 74, baseType: !3520, size: 64, offset: 960)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4666, file: !3498, line: 77, baseType: !150, size: 16, offset: 1024)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4666, file: !3498, line: 78, baseType: !3524, size: 8, offset: 1040)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4666, file: !3498, line: 79, baseType: !3526, size: 8, offset: 1048)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4666, file: !3498, line: 81, baseType: !3530, size: 64, offset: 1088)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4666, file: !3498, line: 89, baseType: !3533, size: 64, offset: 1152)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4666, file: !3498, line: 91, baseType: !3535, size: 64, offset: 1216)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4666, file: !3498, line: 92, baseType: !3538, size: 64, offset: 1280)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4666, file: !3498, line: 93, baseType: !4682, size: 64, offset: 1344)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4666, file: !3498, line: 94, baseType: !8, size: 64, offset: 1408)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4666, file: !3498, line: 95, baseType: !151, size: 64, offset: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4666, file: !3498, line: 96, baseType: !65, size: 32, offset: 1536)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4666, file: !3498, line: 98, baseType: !3545, size: 160, offset: 1568)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3667, line: 63, baseType: !3520)
!4699 = !{!4700, !4701, !4702, !4703}
!4700 = !DILocalVariable(name: "fp", arg: 1, scope: !4660, file: !4661, line: 28, type: !4664)
!4701 = !DILocalVariable(name: "offset", arg: 2, scope: !4660, file: !4661, line: 28, type: !4698)
!4702 = !DILocalVariable(name: "whence", arg: 3, scope: !4660, file: !4661, line: 28, type: !65)
!4703 = !DILocalVariable(name: "pos", scope: !4704, file: !4661, line: 117, type: !4698)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !4661, line: 113, column: 5)
!4705 = distinct !DILexicalBlock(scope: !4660, file: !4661, line: 52, column: 7)
!4706 = !DILocation(line: 28, column: 15, scope: !4660)
!4707 = !DILocation(line: 28, column: 25, scope: !4660)
!4708 = !DILocation(line: 28, column: 37, scope: !4660)
!4709 = !DILocation(line: 52, column: 11, scope: !4705)
!4710 = !{!1220, !800, i64 16}
!4711 = !DILocation(line: 52, column: 31, scope: !4705)
!4712 = !{!1220, !800, i64 8}
!4713 = !DILocation(line: 52, column: 24, scope: !4705)
!4714 = !DILocation(line: 53, column: 7, scope: !4705)
!4715 = !DILocation(line: 53, column: 14, scope: !4705)
!4716 = !DILocation(line: 53, column: 35, scope: !4705)
!4717 = !{!1220, !800, i64 32}
!4718 = !DILocation(line: 53, column: 28, scope: !4705)
!4719 = !DILocation(line: 54, column: 7, scope: !4705)
!4720 = !DILocation(line: 54, column: 14, scope: !4705)
!4721 = !{!1220, !800, i64 72}
!4722 = !DILocation(line: 54, column: 28, scope: !4705)
!4723 = !DILocation(line: 52, column: 7, scope: !4660)
!4724 = !DILocation(line: 117, column: 26, scope: !4704)
!4725 = !DILocation(line: 117, column: 19, scope: !4704)
!4726 = !DILocation(line: 117, column: 13, scope: !4704)
!4727 = !DILocation(line: 118, column: 15, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4704, file: !4661, line: 118, column: 11)
!4729 = !DILocation(line: 118, column: 11, scope: !4704)
!4730 = !DILocation(line: 129, column: 11, scope: !4704)
!4731 = !DILocation(line: 129, column: 18, scope: !4704)
!4732 = !DILocation(line: 130, column: 11, scope: !4704)
!4733 = !DILocation(line: 130, column: 19, scope: !4704)
!4734 = !{!1220, !1221, i64 144}
!4735 = !DILocation(line: 161, column: 7, scope: !4704)
!4736 = !DILocation(line: 163, column: 10, scope: !4660)
!4737 = !DILocation(line: 163, column: 3, scope: !4660)
!4738 = !DILocation(line: 0, scope: !4660)
!4739 = !DILocation(line: 164, column: 1, scope: !4660)
