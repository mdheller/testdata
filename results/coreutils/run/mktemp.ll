; ModuleID = 'coreutils-8.30/src/mktemp.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.35 }
%union.anon.35 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timezone = type { i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [204 x i8] c"  -d, --directory     create a directory, not a file\0A  -u, --dry-run       do not create anything; merely print a name (unsafe)\0A  -q, --quiet         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [156 x i8] c"      --suffix=SUFF   append SUFF to TEMPLATE; SUFF must not contain a slash.\0A                        This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.7 = private unnamed_addr constant [363 x i8] c"  -p DIR, --tmpdir[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\0A                        specified, use $TMPDIR if set, else /tmp.  With\0A                        this option, TEMPLATE must not be an absolute name;\0A                        unlike with -t, TEMPLATE may contain slashes, but\0A                        mktemp creates only the final component\0A\00", align 1
@.str.8 = private unnamed_addr constant [225 x i8] c"  -t                  interpret TEMPLATE as a single file name component,\0A                        relative to a directory: $TMPDIR, if set; else the\0A                        directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal unnamed_addr global i1 false, align 1, !dbg !30
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), align 8, !dbg !31
@.str.53 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !36
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !41
@.str.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !44
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !51
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !58
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !104
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !111
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !121
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !128
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !135
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !123
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !137
@.str.2.97 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !143
@.str.100 = private unnamed_addr constant [35 x i8] c"! \22invalid KIND in __gen_tempname\22\00", align 1
@.str.1.101 = private unnamed_addr constant [15 x i8] c"lib/tempname.c\00", align 1
@__PRETTY_FUNCTION__.gen_tempname_len = private unnamed_addr constant [52 x i8] c"int gen_tempname_len(char *, int, int, int, size_t)\00", align 1
@switch.table.gen_tempname = private unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate]
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.105 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.118 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.119 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.120 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.121 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.122 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.123 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !152
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.165 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.166 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.167 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !161

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !710 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !715, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 %0, metadata !714, metadata !DIExpression()), !dbg !738
  %3 = icmp eq i32 %0, 0, !dbg !739
  br i1 %3, label %9, label %4, !dbg !740

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !741, !tbaa !743
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !741
  %7 = load i8*, i8** @program_name, align 8, !dbg !741, !tbaa !743
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !741
  br label %74, !dbg !741

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !747
  %11 = load i8*, i8** @program_name, align 8, !dbg !747, !tbaa !743
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !747
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !748
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !743
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !748
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !749
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !743
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !749
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !743
  %20 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %19), !dbg !750
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !751
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !743
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !751
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !752
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !743
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !752
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !753
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !743
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !753
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !754
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !743
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !754
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !755
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !743
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !755
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !756
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756, !tbaa !743
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !756
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #12, !dbg !757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %39, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !734
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !758
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !723, metadata !DIExpression()) #12, !dbg !759
  br label %41, !dbg !760

; <label>:41:                                     ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !723, metadata !DIExpression()) #12, !dbg !759
  %44 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %42) #14, !dbg !760
  %45 = icmp eq i32 %44, 0, !dbg !760
  br i1 %45, label %51, label %46, !dbg !761

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !762
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !723, metadata !DIExpression()) #12, !dbg !759
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !763
  %49 = load i8*, i8** %48, align 8, !dbg !763, !tbaa !764
  %50 = icmp eq i8* %49, null, !dbg !766
  br i1 %50, label %51, label %41, !dbg !767, !llvm.loop !768

; <label>:51:                                     ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !723, metadata !DIExpression()) #12, !dbg !759
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !723, metadata !DIExpression()) #12, !dbg !759
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !771
  %54 = load i8*, i8** %53, align 8, !dbg !771, !tbaa !773
  %55 = icmp eq i8* %54, null, !dbg !774
  %56 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %54, !dbg !775
  call void @llvm.dbg.value(metadata i8* %56, metadata !722, metadata !DIExpression()) #12, !dbg !776
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !777
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #12, !dbg !777
  %59 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !778
  call void @llvm.dbg.value(metadata i8* %59, metadata !730, metadata !DIExpression()) #12, !dbg !779
  %60 = icmp eq i8* %59, null, !dbg !780
  br i1 %60, label %67, label %61, !dbg !782

; <label>:61:                                     ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #14, !dbg !783
  %63 = icmp eq i32 %62, 0, !dbg !783
  br i1 %63, label %67, label %64, !dbg !784

; <label>:64:                                     ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.41, i64 0, i64 0), i32 5) #12, !dbg !785
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !785
  br label %67, !dbg !787

; <label>:67:                                     ; preds = %51, %61, %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !788
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !788
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !789
  %71 = icmp eq i8* %56, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), !dbg !789
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !789
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* %56, i8* %72) #12, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #12, !dbg !790
  br label %74

; <label>:74:                                     ; preds = %67, %4
  tail call void @exit(i32 %0) #15, !dbg !791
  unreachable, !dbg !791
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !797, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8** %1, metadata !798, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* null, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 0, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* null, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 0, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 0, metadata !807, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8 0, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 0, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !845
  %3 = load i8*, i8** %1, align 8, !dbg !846, !tbaa !743
  tail call void @set_program_name(i8* %3) #12, !dbg !847
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !848
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !849
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !850
  %7 = tail call i32 @atexit(void ()* nonnull @maybe_close_stdout) #12, !dbg !851
  br label %8, !dbg !852

; <label>:8:                                      ; preds = %36, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %36 ]
  %10 = phi i8 [ 0, %2 ], [ %16, %36 ]
  %11 = phi i8 [ 0, %2 ], [ %23, %36 ]
  %12 = phi i8* [ null, %2 ], [ %34, %36 ]
  %13 = phi i8 [ 0, %2 ], [ %37, %36 ]
  %14 = phi i8* [ null, %2 ], [ %32, %36 ]
  br label %15, !dbg !853

; <label>:15:                                     ; preds = %36, %8
  %16 = phi i8 [ %10, %8 ], [ 1, %36 ]
  %17 = phi i8 [ %11, %8 ], [ %23, %36 ]
  %18 = phi i8 [ %9, %8 ], [ %29, %36 ]
  %19 = phi i8* [ %12, %8 ], [ %34, %36 ]
  %20 = phi i8 [ %13, %8 ], [ %37, %36 ]
  %21 = phi i8* [ %14, %8 ], [ %32, %36 ]
  br label %22, !dbg !853

; <label>:22:                                     ; preds = %36, %15
  %23 = phi i8 [ %17, %15 ], [ 1, %36 ]
  %24 = phi i8 [ %18, %15 ], [ %29, %36 ]
  %25 = phi i8* [ %19, %15 ], [ %34, %36 ]
  %26 = phi i8 [ %20, %15 ], [ %37, %36 ]
  %27 = phi i8* [ %21, %15 ], [ %32, %36 ]
  br label %28, !dbg !853

; <label>:28:                                     ; preds = %22, %39
  %29 = phi i8 [ %24, %22 ], [ 1, %39 ]
  %30 = phi i8* [ %25, %22 ], [ %34, %39 ]
  %31 = phi i8 [ %26, %22 ], [ %37, %39 ]
  %32 = phi i8* [ %27, %22 ], [ %40, %39 ]
  br label %33, !dbg !853

; <label>:33:                                     ; preds = %28, %41
  %34 = phi i8* [ %30, %28 ], [ %42, %41 ]
  %35 = phi i8 [ %31, %28 ], [ %37, %41 ]
  br label %36, !dbg !853

; <label>:36:                                     ; preds = %36, %33
  %37 = phi i8 [ %35, %33 ], [ 1, %36 ], !dbg !839
  call void @llvm.dbg.value(metadata i8* %32, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %34, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 %29, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %23, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %16, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %9, metadata !807, metadata !DIExpression()), !dbg !842
  %38 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !853
  call void @llvm.dbg.value(metadata i32 %38, metadata !802, metadata !DIExpression()), !dbg !854
  switch i32 %38, label %47 [
    i32 -1, label %48
    i32 100, label %15
    i32 112, label %39
    i32 113, label %36
    i32 116, label %8
    i32 117, label %22
    i32 128, label %41
    i32 -130, label %43
    i32 86, label %44
    i32 -131, label %44
  ], !dbg !852, !llvm.loop !855

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  %40 = load i8*, i8** @optarg, align 8, !dbg !857, !tbaa !743
  call void @llvm.dbg.value(metadata i8* %40, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 1, metadata !806, metadata !DIExpression()), !dbg !841
  br label %28, !dbg !860, !llvm.loop !855

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  %42 = load i8*, i8** @optarg, align 8, !dbg !861, !tbaa !743
  call void @llvm.dbg.value(metadata i8* %42, metadata !805, metadata !DIExpression()), !dbg !840
  br label %33, !dbg !862, !llvm.loop !855

; <label>:43:                                     ; preds = %36
  tail call void @usage(i32 0) #16, !dbg !863
  unreachable, !dbg !863

; <label>:44:                                     ; preds = %36, %36
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !864, !tbaa !743
  %46 = load i8*, i8** @Version, align 8, !dbg !864, !tbaa !743
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* null) #12, !dbg !864
  tail call void @exit(i32 0) #15, !dbg !864
  unreachable, !dbg !864

; <label>:47:                                     ; preds = %36
  tail call void @usage(i32 1) #16, !dbg !865
  unreachable, !dbg !865

; <label>:48:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8 %9, metadata !807, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8 %16, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %23, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %29, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %34, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %32, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 %9, metadata !807, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8 %16, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %23, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %29, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %34, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %32, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 %9, metadata !807, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8 %16, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %23, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %29, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %34, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %32, metadata !800, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 %9, metadata !807, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8 %16, metadata !808, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %23, metadata !809, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %29, metadata !806, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %34, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8 %37, metadata !801, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %32, metadata !800, metadata !DIExpression()), !dbg !838
  %49 = load i32, i32* @optind, align 4, !dbg !866, !tbaa !867
  %50 = sub nsw i32 %0, %49, !dbg !869
  call void @llvm.dbg.value(metadata i32 %50, metadata !803, metadata !DIExpression()), !dbg !870
  %51 = icmp ugt i32 %50, 1, !dbg !871
  br i1 %51, label %52, label %54, !dbg !873

; <label>:52:                                     ; preds = %48
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !874
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %53) #12, !dbg !876
  tail call void @usage(i32 1) #16, !dbg !877
  unreachable, !dbg !877

; <label>:54:                                     ; preds = %48
  %55 = icmp eq i32 %50, 0, !dbg !878
  br i1 %55, label %60, label %56, !dbg !880

; <label>:56:                                     ; preds = %54
  %57 = sext i32 %49 to i64, !dbg !881
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !881
  %59 = load i8*, i8** %58, align 8, !dbg !881, !tbaa !743
  call void @llvm.dbg.value(metadata i8* %59, metadata !804, metadata !DIExpression()), !dbg !883
  br label %60

; <label>:60:                                     ; preds = %54, %56
  %61 = phi i8 [ %29, %56 ], [ 1, %54 ], !dbg !884
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), %54 ], !dbg !885
  call void @llvm.dbg.value(metadata i8* %62, metadata !804, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8 %61, metadata !806, metadata !DIExpression()), !dbg !841
  %63 = icmp eq i8* %34, null, !dbg !886
  br i1 %63, label %81, label %64, !dbg !887

; <label>:64:                                     ; preds = %60
  %65 = tail call i64 @strlen(i8* %62) #14, !dbg !888
  call void @llvm.dbg.value(metadata i64 %65, metadata !814, metadata !DIExpression()), !dbg !889
  %66 = icmp eq i64 %65, 0, !dbg !890
  br i1 %66, label %72, label %67, !dbg !892

; <label>:67:                                     ; preds = %64
  %68 = add i64 %65, -1, !dbg !893
  %69 = getelementptr inbounds i8, i8* %62, i64 %68, !dbg !894
  %70 = load i8, i8* %69, align 1, !dbg !894, !tbaa !895
  %71 = icmp eq i8 %70, 88, !dbg !896
  br i1 %71, label %75, label %72, !dbg !897

; <label>:72:                                     ; preds = %67, %64
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !898
  %74 = tail call i8* @quote(i8* %62) #12, !dbg !898
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %73, i8* %74) #12, !dbg !898
  unreachable, !dbg !898

; <label>:75:                                     ; preds = %67
  %76 = tail call i64 @strlen(i8* nonnull %34) #14, !dbg !900
  call void @llvm.dbg.value(metadata i64 %76, metadata !812, metadata !DIExpression()), !dbg !901
  %77 = add i64 %76, 1, !dbg !902
  %78 = add i64 %77, %65, !dbg !903
  call void @llvm.dbg.value(metadata i64 %78, metadata !904, metadata !DIExpression()) #12, !dbg !909
  %79 = tail call noalias i8* @xmalloc(i64 %78) #12, !dbg !911
  call void @llvm.dbg.value(metadata i8* %79, metadata !813, metadata !DIExpression()), !dbg !912
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* nonnull align 1 %62, i64 %65, i1 false), !dbg !913
  %80 = getelementptr inbounds i8, i8* %79, i64 %65, !dbg !914
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %80, i8* nonnull align 1 %34, i64 %77, i1 false), !dbg !915
  call void @llvm.dbg.value(metadata i8* %79, metadata !804, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %80, metadata !805, metadata !DIExpression()), !dbg !840
  br label %93, !dbg !916

; <label>:81:                                     ; preds = %60
  %82 = tail call noalias i8* @xstrdup(i8* %62) #12, !dbg !917
  call void @llvm.dbg.value(metadata i8* %82, metadata !804, metadata !DIExpression()), !dbg !883
  %83 = tail call i8* @strrchr(i8* %82, i32 88) #14, !dbg !919
  call void @llvm.dbg.value(metadata i8* %83, metadata !805, metadata !DIExpression()), !dbg !840
  %84 = icmp eq i8* %83, null, !dbg !920
  br i1 %84, label %85, label %88, !dbg !922

; <label>:85:                                     ; preds = %81
  %86 = tail call i64 @strlen(i8* %82), !dbg !923
  %87 = getelementptr i8, i8* %82, i64 %86, !dbg !923
  call void @llvm.dbg.value(metadata i8* %87, metadata !805, metadata !DIExpression()), !dbg !840
  br label %90, !dbg !924

; <label>:88:                                     ; preds = %81
  %89 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !925
  call void @llvm.dbg.value(metadata i8* %89, metadata !805, metadata !DIExpression()), !dbg !840
  br label %90

; <label>:90:                                     ; preds = %88, %85
  %91 = phi i8* [ %89, %88 ], [ %87, %85 ], !dbg !926
  call void @llvm.dbg.value(metadata i8* %91, metadata !805, metadata !DIExpression()), !dbg !840
  %92 = tail call i64 @strlen(i8* %91) #14, !dbg !927
  call void @llvm.dbg.value(metadata i64 %92, metadata !812, metadata !DIExpression()), !dbg !901
  br label %93

; <label>:93:                                     ; preds = %90, %75
  %94 = phi i64 [ %76, %75 ], [ %92, %90 ], !dbg !928
  %95 = phi i8* [ %80, %75 ], [ %91, %90 ], !dbg !926
  %96 = phi i8* [ %79, %75 ], [ %82, %90 ], !dbg !928
  call void @llvm.dbg.value(metadata i8* %96, metadata !804, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %95, metadata !805, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 %94, metadata !812, metadata !DIExpression()), !dbg !901
  %97 = icmp eq i64 %94, 0, !dbg !929
  br i1 %97, label %104, label %98, !dbg !931

; <label>:98:                                     ; preds = %93
  %99 = tail call i8* @last_component(i8* %95) #14, !dbg !932
  %100 = icmp eq i8* %99, %95, !dbg !933
  br i1 %100, label %104, label %101, !dbg !934

; <label>:101:                                    ; preds = %98
  %102 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !935
  %103 = tail call i8* @quote(i8* %95) #12, !dbg !935
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %102, i8* %103) #12, !dbg !935
  unreachable, !dbg !935

; <label>:104:                                    ; preds = %98, %93
  %105 = ptrtoint i8* %95 to i64, !dbg !937
  %106 = ptrtoint i8* %96 to i64, !dbg !937
  %107 = sub i64 %105, %106, !dbg !937
  call void @llvm.dbg.value(metadata i8* %96, metadata !938, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %107, metadata !943, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !948
  %108 = icmp eq i64 %107, 0, !dbg !949
  br i1 %108, label %122, label %109, !dbg !952

; <label>:109:                                    ; preds = %104, %116
  %110 = phi i64 [ %117, %116 ], [ 0, %104 ]
  %111 = phi i64 [ %112, %116 ], [ %107, %104 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !944, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %111, metadata !943, metadata !DIExpression()), !dbg !947
  %112 = add i64 %111, -1, !dbg !953
  %113 = getelementptr inbounds i8, i8* %96, i64 %112, !dbg !954
  %114 = load i8, i8* %113, align 1, !dbg !954, !tbaa !895
  %115 = icmp eq i8 %114, 88, !dbg !955
  br i1 %115, label %116, label %119, !dbg !956

; <label>:116:                                    ; preds = %109
  %117 = add nuw i64 %110, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %117, metadata !944, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %112, metadata !943, metadata !DIExpression()), !dbg !947
  %118 = icmp eq i64 %112, 0, !dbg !949
  br i1 %118, label %119, label %109, !dbg !952, !llvm.loop !958

; <label>:119:                                    ; preds = %109, %116
  %120 = phi i64 [ %117, %116 ], [ %110, %109 ], !dbg !961
  call void @llvm.dbg.value(metadata i64 %120, metadata !944, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %120, metadata !944, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %120, metadata !811, metadata !DIExpression()), !dbg !962
  %121 = icmp ult i64 %120, 3, !dbg !963
  br i1 %121, label %122, label %125, !dbg !965

; <label>:122:                                    ; preds = %104, %119
  %123 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !966
  %124 = tail call i8* @quote(i8* %96) #12, !dbg !966
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %123, i8* %124) #12, !dbg !966
  unreachable, !dbg !966

; <label>:125:                                    ; preds = %119
  %126 = and i8 %61, 1, !dbg !967
  %127 = icmp eq i8 %126, 0, !dbg !967
  br i1 %127, label %171, label %128, !dbg !968

; <label>:128:                                    ; preds = %125
  %129 = icmp eq i8 %9, 0, !dbg !969
  br i1 %129, label %149, label %130, !dbg !970

; <label>:130:                                    ; preds = %128
  %131 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %131, metadata !817, metadata !DIExpression()), !dbg !972
  %132 = icmp eq i8* %131, null, !dbg !973
  br i1 %132, label %136, label %133, !dbg !975

; <label>:133:                                    ; preds = %130
  %134 = load i8, i8* %131, align 1, !dbg !976, !tbaa !895
  %135 = icmp eq i8 %134, 0, !dbg !976
  br i1 %135, label %136, label %142, !dbg !977

; <label>:136:                                    ; preds = %133, %130
  %137 = icmp eq i8* %32, null, !dbg !978
  br i1 %137, label %141, label %138, !dbg !980

; <label>:138:                                    ; preds = %136
  %139 = load i8, i8* %32, align 1, !dbg !981, !tbaa !895
  %140 = icmp eq i8 %139, 0, !dbg !981
  br i1 %140, label %141, label %142, !dbg !982

; <label>:141:                                    ; preds = %138, %136
  br label %142

; <label>:142:                                    ; preds = %138, %133, %141
  %143 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %141 ], [ %131, %133 ], [ %32, %138 ], !dbg !983
  call void @llvm.dbg.value(metadata i8* %143, metadata !799, metadata !DIExpression()), !dbg !984
  %144 = tail call i8* @last_component(i8* nonnull %96) #14, !dbg !985
  %145 = icmp eq i8* %144, %96, !dbg !987
  br i1 %145, label %168, label %146, !dbg !988

; <label>:146:                                    ; preds = %142
  %147 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !989
  %148 = tail call i8* @quote(i8* nonnull %96) #12, !dbg !989
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147, i8* %148) #12, !dbg !989
  unreachable, !dbg !989

; <label>:149:                                    ; preds = %128
  %150 = icmp eq i8* %32, null, !dbg !990
  br i1 %150, label %154, label %151, !dbg !991

; <label>:151:                                    ; preds = %149
  %152 = load i8, i8* %32, align 1, !dbg !992, !tbaa !895
  %153 = icmp eq i8 %152, 0, !dbg !992
  br i1 %153, label %154, label %161, !dbg !993

; <label>:154:                                    ; preds = %151, %149
  %155 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !994
  call void @llvm.dbg.value(metadata i8* %155, metadata !822, metadata !DIExpression()), !dbg !995
  %156 = icmp eq i8* %155, null, !dbg !996
  br i1 %156, label %161, label %157, !dbg !997

; <label>:157:                                    ; preds = %154
  %158 = load i8, i8* %155, align 1, !dbg !998, !tbaa !895
  %159 = icmp eq i8 %158, 0, !dbg !998
  %160 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %155, !dbg !996
  br label %161, !dbg !996

; <label>:161:                                    ; preds = %157, %154, %151
  %162 = phi i8* [ %32, %151 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %154 ], [ %160, %157 ], !dbg !999
  call void @llvm.dbg.value(metadata i8* %162, metadata !799, metadata !DIExpression()), !dbg !984
  %163 = load i8, i8* %96, align 1, !dbg !1000, !tbaa !895
  %164 = icmp eq i8 %163, 47, !dbg !1000
  br i1 %164, label %165, label %168, !dbg !1002

; <label>:165:                                    ; preds = %161
  %166 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1003
  %167 = tail call i8* @quote(i8* nonnull %96) #12, !dbg !1003
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %166, i8* %167) #12, !dbg !1003
  unreachable, !dbg !1003

; <label>:168:                                    ; preds = %142, %161
  %169 = phi i8* [ %162, %161 ], [ %143, %142 ], !dbg !1004
  call void @llvm.dbg.value(metadata i8* %169, metadata !799, metadata !DIExpression()), !dbg !984
  %170 = tail call i8* @file_name_concat(i8* %169, i8* nonnull %96, i8** null) #12, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %170, metadata !813, metadata !DIExpression()), !dbg !912
  tail call void @free(i8* nonnull %96) #12, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %170, metadata !804, metadata !DIExpression()), !dbg !883
  br label %171, !dbg !1007

; <label>:171:                                    ; preds = %125, %168
  %172 = phi i8* [ %170, %168 ], [ %96, %125 ], !dbg !1008
  call void @llvm.dbg.value(metadata i8* %172, metadata !804, metadata !DIExpression()), !dbg !883
  %173 = tail call noalias i8* @xstrdup(i8* %172) #12, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %173, metadata !813, metadata !DIExpression()), !dbg !912
  %174 = icmp eq i8 %16, 0, !dbg !1010
  %175 = icmp ne i8 %23, 0, !dbg !1011
  %176 = trunc i64 %94 to i32, !dbg !1011
  br i1 %174, label %188, label %177, !dbg !1012

; <label>:177:                                    ; preds = %171
  call void @llvm.dbg.value(metadata i8* %173, metadata !1013, metadata !DIExpression()) #12, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %94, metadata !1018, metadata !DIExpression()) #12, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %120, metadata !1019, metadata !DIExpression()) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i1 %175, metadata !1020, metadata !DIExpression()) #12, !dbg !1025
  %178 = select i1 %175, i32 2, i32 1, !dbg !1026
  %179 = tail call i32 @gen_tempname_len(i8* %173, i32 %176, i32 0, i32 %178, i64 %120) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %179, metadata !826, metadata !DIExpression()), !dbg !1028
  %180 = icmp eq i32 %179, 0, !dbg !1029
  br i1 %180, label %208, label %181, !dbg !1031

; <label>:181:                                    ; preds = %177
  %182 = icmp eq i8 %37, 0, !dbg !1032
  br i1 %182, label %183, label %222, !dbg !1035

; <label>:183:                                    ; preds = %181
  %184 = tail call i32* @__errno_location() #17, !dbg !1036
  %185 = load i32, i32* %184, align 4, !dbg !1036, !tbaa !867
  %186 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1037
  %187 = tail call i8* @quote(i8* %172) #12, !dbg !1038
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %185, i8* %186, i8* %187) #12, !dbg !1039
  br label %222, !dbg !1039

; <label>:188:                                    ; preds = %171
  call void @llvm.dbg.value(metadata i8* %173, metadata !1040, metadata !DIExpression()) #12, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %94, metadata !1043, metadata !DIExpression()) #12, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %120, metadata !1044, metadata !DIExpression()) #12, !dbg !1049
  call void @llvm.dbg.value(metadata i1 %175, metadata !1045, metadata !DIExpression()) #12, !dbg !1050
  %189 = shl nuw nsw i8 %23, 1, !dbg !1051
  %190 = zext i8 %189 to i32, !dbg !1051
  %191 = tail call i32 @gen_tempname_len(i8* %173, i32 %176, i32 0, i32 %190, i64 %120) #12, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %191, metadata !829, metadata !DIExpression()), !dbg !1053
  %192 = icmp slt i32 %191, 0, !dbg !1054
  br i1 %192, label %201, label %193, !dbg !1056

; <label>:193:                                    ; preds = %188
  br i1 %175, label %194, label %196, !dbg !1057

; <label>:194:                                    ; preds = %193
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !845
  %195 = tail call i32 @puts(i8* %173), !dbg !1058
  br label %222, !dbg !1059

; <label>:196:                                    ; preds = %193
  %197 = tail call i32 @close(i32 %191) #12, !dbg !1060
  %198 = icmp eq i32 %197, 0, !dbg !1061
  br i1 %198, label %199, label %201, !dbg !1062

; <label>:199:                                    ; preds = %196
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !845
  %200 = tail call i32 @puts(i8* %173), !dbg !1058
  br label %211, !dbg !1059

; <label>:201:                                    ; preds = %196, %188
  %202 = icmp eq i8 %37, 0, !dbg !1063
  br i1 %202, label %203, label %222, !dbg !1066

; <label>:203:                                    ; preds = %201
  %204 = tail call i32* @__errno_location() #17, !dbg !1067
  %205 = load i32, i32* %204, align 4, !dbg !1067, !tbaa !867
  %206 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !1068
  %207 = tail call i8* @quote(i8* %172) #12, !dbg !1069
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %205, i8* %206, i8* %207) #12, !dbg !1070
  br label %222, !dbg !1070

; <label>:208:                                    ; preds = %177
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !845
  %209 = tail call i32 @puts(i8* %173), !dbg !1058
  %210 = icmp eq i8 %23, 0, !dbg !1071
  br i1 %210, label %211, label %222, !dbg !1059

; <label>:211:                                    ; preds = %199, %208
  store i1 true, i1* @stdout_closed, align 1
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1072, !tbaa !743
  %213 = tail call i32 @close_stream(%struct._IO_FILE* %212) #12, !dbg !1073
  %214 = icmp eq i32 %213, 0, !dbg !1074
  br i1 %214, label %222, label %215, !dbg !1075

; <label>:215:                                    ; preds = %211
  %216 = tail call i32* @__errno_location() #17, !dbg !1076
  %217 = load i32, i32* %216, align 4, !dbg !1076, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %217, metadata !831, metadata !DIExpression()), !dbg !1077
  %218 = tail call i32 @remove(i8* %173) #12, !dbg !1078
  %219 = icmp eq i8 %37, 0, !dbg !1079
  br i1 %219, label %220, label %222, !dbg !1081

; <label>:220:                                    ; preds = %215
  %221 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !1082
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %217, i8* %221) #12, !dbg !1083
  br label %222, !dbg !1083

; <label>:222:                                    ; preds = %203, %201, %183, %181, %194, %220, %215, %211, %208
  %223 = phi i32 [ 0, %208 ], [ 0, %211 ], [ 1, %215 ], [ 1, %220 ], [ 0, %194 ], [ 1, %181 ], [ 1, %183 ], [ 1, %201 ], [ 1, %203 ], !dbg !1084
  call void @llvm.dbg.value(metadata i32 %223, metadata !810, metadata !DIExpression()), !dbg !845
  ret i32 %223, !dbg !1085
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #7 !dbg !1086 {
  %1 = load i1, i1* @stdout_closed, align 1
  br i1 %1, label %3, label %2, !dbg !1089

; <label>:2:                                      ; preds = %0
  tail call void @close_stdout() #12, !dbg !1090
  br label %8, !dbg !1090

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1092, !tbaa !743
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #12, !dbg !1094
  %6 = icmp eq i32 %5, 0, !dbg !1095
  br i1 %6, label %8, label %7, !dbg !1096

; <label>:7:                                      ; preds = %3
  tail call void @_exit(i32 1) #15, !dbg !1097
  unreachable, !dbg !1097

; <label>:8:                                      ; preds = %3, %2
  ret void, !dbg !1098
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @remove(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !1099 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1156, metadata !DIExpression()), !dbg !1161
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !1162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1163, metadata !DIExpression()), !dbg !1167
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1169
  %4 = load i32, i32* %3, align 8, !dbg !1169, !tbaa !1170
  %5 = and i32 %4, 32, !dbg !1169
  %6 = icmp eq i32 %5, 0, !dbg !1174
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !1175
  %8 = icmp ne i32 %7, 0, !dbg !1176
  br i1 %6, label %9, label %19, !dbg !1177

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !1179
  %11 = xor i1 %8, true, !dbg !1180
  %12 = or i1 %10, %11, !dbg !1180
  %13 = sext i1 %8 to i32, !dbg !1180
  br i1 %12, label %22, label %14, !dbg !1180

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !1181
  %16 = load i32, i32* %15, align 4, !dbg !1181, !tbaa !867
  %17 = icmp ne i32 %16, 9, !dbg !1182
  %18 = sext i1 %17 to i32, !dbg !1183
  br label %22, !dbg !1183

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !1184

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !1186
  store i32 0, i32* %21, align 4, !dbg !1188, !tbaa !867
  br label %22, !dbg !1186

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !1189
  ret i32 %23, !dbg !1190
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i8* %0, i8** @file_name, align 8, !dbg !1195, !tbaa !743
  ret void, !dbg !1196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1197 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1203, !tbaa !1204
  ret void, !dbg !1206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() local_unnamed_addr #7 !dbg !1207 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1212, !tbaa !743
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1213
  %3 = icmp eq i32 %2, 0, !dbg !1214
  br i1 %3, label %22, label %4, !dbg !1215

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1216, !tbaa !1204, !range !1217
  %6 = icmp eq i8 %5, 0, !dbg !1216
  br i1 %6, label %11, label %7, !dbg !1218

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1219
  %9 = load i32, i32* %8, align 4, !dbg !1219, !tbaa !867
  %10 = icmp eq i32 %9, 32, !dbg !1220
  br i1 %10, label %22, label %11, !dbg !1221

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 5) #12, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %12, metadata !1209, metadata !DIExpression()), !dbg !1223
  %13 = load i8*, i8** @file_name, align 8, !dbg !1224, !tbaa !743
  %14 = icmp eq i8* %13, null, !dbg !1224
  %15 = tail call i32* @__errno_location() #17, !dbg !1226
  %16 = load i32, i32* %15, align 4, !dbg !1226, !tbaa !867
  br i1 %14, label %19, label %17, !dbg !1227

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1228
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1229
  br label %20, !dbg !1229

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.60, i64 0, i64 0), i8* %12) #12, !dbg !1230
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1231, !tbaa !867
  tail call void @_exit(i32 %21) #15, !dbg !1232
  unreachable, !dbg !1232

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1233, !tbaa !743
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1235
  %25 = icmp eq i32 %24, 0, !dbg !1236
  br i1 %25, label %28, label %26, !dbg !1237

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1238, !tbaa !867
  tail call void @_exit(i32 %27) #15, !dbg !1239
  unreachable, !dbg !1239

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1240
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !1241 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1246, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %0, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 0, metadata !1249, metadata !DIExpression()), !dbg !1252
  br label %2, !dbg !1253

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1254
  call void @llvm.dbg.value(metadata i8* %3, metadata !1247, metadata !DIExpression()), !dbg !1251
  %4 = load i8, i8* %3, align 1, !dbg !1255, !tbaa !895
  %5 = icmp eq i8 %4, 47, !dbg !1255
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %6, metadata !1247, metadata !DIExpression()), !dbg !1251
  br i1 %5, label %2, label %7, !dbg !1253, !llvm.loop !1257

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1258
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1251
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1261
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1262
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %10, metadata !1248, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1266

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !1267
  %14 = icmp eq i8 %13, 0, !dbg !1267
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1269
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1269
  br label %17, !dbg !1269

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1254
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1254
  call void @llvm.dbg.value(metadata i8 %19, metadata !1249, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %18, metadata !1247, metadata !DIExpression()), !dbg !1251
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %20, metadata !1248, metadata !DIExpression()), !dbg !1265
  %21 = load i8, i8* %20, align 1, !dbg !1258, !tbaa !895
  br label %7, !dbg !1271, !llvm.loop !1272

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1247, metadata !DIExpression()), !dbg !1251
  ret i8* %9, !dbg !1274
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !1275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1279, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 0, metadata !1281, metadata !DIExpression()), !dbg !1283
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %2, metadata !1280, metadata !DIExpression()), !dbg !1286
  br label %3, !dbg !1287

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1288
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  %5 = icmp ugt i64 %4, 1, !dbg !1290
  br i1 %5, label %6, label %11, !dbg !1291

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1292
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1292
  %9 = load i8, i8* %8, align 1, !dbg !1292, !tbaa !895
  %10 = icmp eq i8 %9, 47, !dbg !1292
  br i1 %10, label %3, label %11, !dbg !1293, !llvm.loop !1294

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %4, metadata !1280, metadata !DIExpression()), !dbg !1286
  ret i64 %4, !dbg !1296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1302, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %1, metadata !1303, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8** %2, metadata !1304, metadata !DIExpression()), !dbg !1308
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #12, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %4, metadata !1305, metadata !DIExpression()), !dbg !1310
  %5 = icmp eq i8* %4, null, !dbg !1311
  br i1 %5, label %6, label %7, !dbg !1313

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1314
  unreachable, !dbg !1314

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1316 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1319, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8** %2, metadata !1321, metadata !DIExpression()), !dbg !1331
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %4, metadata !1322, metadata !DIExpression()), !dbg !1333
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %5, metadata !1323, metadata !DIExpression()), !dbg !1335
  %6 = ptrtoint i8* %4 to i64, !dbg !1336
  %7 = ptrtoint i8* %0 to i64, !dbg !1336
  %8 = sub i64 %6, %7, !dbg !1336
  %9 = add i64 %8, %5, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %9, metadata !1324, metadata !DIExpression()), !dbg !1338
  %10 = tail call i64 @strlen(i8* %1) #14, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %10, metadata !1325, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 0, metadata !1326, metadata !DIExpression()), !dbg !1341
  %11 = icmp eq i64 %5, 0, !dbg !1342
  br i1 %11, label %21, label %12, !dbg !1344

; <label>:12:                                     ; preds = %3
  %13 = add i64 %9, -1, !dbg !1345
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1345
  %15 = load i8, i8* %14, align 1, !dbg !1345, !tbaa !895
  %16 = icmp eq i8 %15, 47, !dbg !1345
  br i1 %16, label %25, label %17, !dbg !1348

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1349, !tbaa !895
  %19 = icmp eq i8 %18, 47, !dbg !1349
  %20 = select i1 %19, i8 0, i8 47, !dbg !1350
  br label %25, !dbg !1350

; <label>:21:                                     ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1351, !tbaa !895
  %23 = icmp eq i8 %22, 47, !dbg !1351
  %24 = select i1 %23, i8 46, i8 0, !dbg !1353
  br label %25, !dbg !1353

; <label>:25:                                     ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1354
  call void @llvm.dbg.value(metadata i8 %26, metadata !1326, metadata !DIExpression()), !dbg !1341
  %27 = icmp ne i8 %26, 0, !dbg !1355
  %28 = zext i1 %27 to i64, !dbg !1356
  %29 = add i64 %10, 1, !dbg !1357
  %30 = add i64 %29, %9, !dbg !1358
  %31 = add i64 %30, %28, !dbg !1359
  %32 = tail call noalias i8* @malloc(i64 %31) #12, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %32, metadata !1327, metadata !DIExpression()), !dbg !1361
  %33 = icmp eq i8* %32, null, !dbg !1362
  br i1 %33, label %43, label %34, !dbg !1364

; <label>:34:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1365, metadata !DIExpression()) #12, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %0, metadata !1375, metadata !DIExpression()) #12, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %9, metadata !1376, metadata !DIExpression()) #12, !dbg !1377
  %35 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %32, i1 false, i1 true) #12, !dbg !1379
  %36 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 %35) #12, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %36, metadata !1328, metadata !DIExpression()), !dbg !1381
  store i8 %26, i8* %36, align 1, !dbg !1382, !tbaa !895
  %37 = getelementptr inbounds i8, i8* %36, i64 %28, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %37, metadata !1328, metadata !DIExpression()), !dbg !1381
  %38 = icmp eq i8** %2, null, !dbg !1384
  br i1 %38, label %40, label %39, !dbg !1386

; <label>:39:                                     ; preds = %34
  store i8* %37, i8** %2, align 8, !dbg !1387, !tbaa !743
  br label %40, !dbg !1388

; <label>:40:                                     ; preds = %34, %39
  call void @llvm.dbg.value(metadata i8* %37, metadata !1365, metadata !DIExpression()) #12, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %1, metadata !1375, metadata !DIExpression()) #12, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %10, metadata !1376, metadata !DIExpression()) #12, !dbg !1389
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %37, i1 false, i1 true) #12, !dbg !1391
  %42 = tail call i8* @__mempcpy_chk(i8* nonnull %37, i8* nonnull %1, i64 %10, i64 %41) #12, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %42, metadata !1328, metadata !DIExpression()), !dbg !1381
  store i8 0, i8* %42, align 1, !dbg !1393, !tbaa !895
  br label %43, !dbg !1394

; <label>:43:                                     ; preds = %25, %40
  ret i8* %32, !dbg !1395
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1398, metadata !DIExpression()), !dbg !1401
  %2 = icmp eq i8* %0, null, !dbg !1402
  br i1 %2, label %3, label %6, !dbg !1404

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1405, !tbaa !743
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1407
  tail call void @abort() #15, !dbg !1408
  unreachable, !dbg !1408

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %7, metadata !1399, metadata !DIExpression()), !dbg !1410
  %8 = icmp eq i8* %7, null, !dbg !1411
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1412
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %10, metadata !1400, metadata !DIExpression()), !dbg !1414
  %11 = ptrtoint i8* %10 to i64, !dbg !1415
  %12 = ptrtoint i8* %0 to i64, !dbg !1415
  %13 = sub i64 %11, %12, !dbg !1415
  %14 = icmp sgt i64 %13, 6, !dbg !1417
  br i1 %14, label %15, label %24, !dbg !1418

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1419
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #14, !dbg !1420
  %18 = icmp eq i32 %17, 0, !dbg !1421
  br i1 %18, label %19, label %24, !dbg !1422

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1398, metadata !DIExpression()), !dbg !1401
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #14, !dbg !1423
  %21 = icmp eq i32 %20, 0, !dbg !1426
  br i1 %21, label %22, label %24, !dbg !1427

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %23, metadata !1398, metadata !DIExpression()), !dbg !1401
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1430, !tbaa !743
  br label %24, !dbg !1431

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1398, metadata !DIExpression()), !dbg !1401
  store i8* %25, i8** @program_name, align 8, !dbg !1432, !tbaa !743
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1433, !tbaa !743
  ret void, !dbg !1434
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1435 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1440, metadata !DIExpression()), !dbg !1443
  %2 = tail call i32* @__errno_location() #17, !dbg !1444
  %3 = load i32, i32* %2, align 4, !dbg !1444, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %3, metadata !1441, metadata !DIExpression()), !dbg !1445
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1446
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1446
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1446
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1447
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1442, metadata !DIExpression()), !dbg !1448
  store i32 %3, i32* %2, align 4, !dbg !1449, !tbaa !867
  ret %struct.quoting_options* %8, !dbg !1450
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1451 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1457, metadata !DIExpression()), !dbg !1458
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1459
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1459
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1460
  %5 = load i32, i32* %4, align 8, !dbg !1460, !tbaa !1461
  ret i32 %5, !dbg !1463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1464 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1468, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %1, metadata !1469, metadata !DIExpression()), !dbg !1471
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1472
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1472
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1473
  store i32 %1, i32* %5, align 8, !dbg !1474, !tbaa !1461
  ret void, !dbg !1475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1476 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1480, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %2, metadata !1482, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %1, metadata !1483, metadata !DIExpression()), !dbg !1492
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1493
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1493
  %6 = lshr i8 %1, 5, !dbg !1494
  %7 = zext i8 %6 to i64, !dbg !1494
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1495
  call void @llvm.dbg.value(metadata i32* %8, metadata !1485, metadata !DIExpression()), !dbg !1496
  %9 = and i8 %1, 31, !dbg !1497
  %10 = zext i8 %9 to i32, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %10, metadata !1487, metadata !DIExpression()), !dbg !1498
  %11 = load i32, i32* %8, align 4, !dbg !1499, !tbaa !867
  %12 = lshr i32 %11, %10, !dbg !1500
  %13 = and i32 %12, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %13, metadata !1488, metadata !DIExpression()), !dbg !1502
  %14 = and i32 %2, 1, !dbg !1503
  %15 = xor i32 %13, %14, !dbg !1504
  %16 = shl i32 %15, %10, !dbg !1505
  %17 = xor i32 %16, %11, !dbg !1506
  store i32 %17, i32* %8, align 4, !dbg !1506, !tbaa !867
  ret i32 %13, !dbg !1507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1508 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %1, metadata !1513, metadata !DIExpression()), !dbg !1516
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1517
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1512, metadata !DIExpression()), !dbg !1515
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1520
  %6 = load i32, i32* %5, align 4, !dbg !1520, !tbaa !1521
  call void @llvm.dbg.value(metadata i32 %6, metadata !1514, metadata !DIExpression()), !dbg !1522
  store i32 %1, i32* %5, align 4, !dbg !1523, !tbaa !1521
  ret i32 %6, !dbg !1524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1525 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1529, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8* %1, metadata !1530, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* %2, metadata !1531, metadata !DIExpression()), !dbg !1534
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1535
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1529, metadata !DIExpression()), !dbg !1532
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1538
  store i32 10, i32* %6, align 8, !dbg !1539, !tbaa !1461
  %7 = icmp ne i8* %1, null, !dbg !1540
  %8 = icmp ne i8* %2, null, !dbg !1542
  %9 = and i1 %7, %8, !dbg !1543
  br i1 %9, label %11, label %10, !dbg !1543

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1544
  unreachable, !dbg !1544

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1545
  store i8* %1, i8** %12, align 8, !dbg !1546, !tbaa !1547
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1548
  store i8* %2, i8** %13, align 8, !dbg !1549, !tbaa !1550
  ret void, !dbg !1551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1556, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %1, metadata !1557, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %2, metadata !1558, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %3, metadata !1559, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1560, metadata !DIExpression()), !dbg !1568
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1569
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1561, metadata !DIExpression()), !dbg !1570
  %8 = tail call i32* @__errno_location() #17, !dbg !1571
  %9 = load i32, i32* %8, align 4, !dbg !1571, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %9, metadata !1562, metadata !DIExpression()), !dbg !1572
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1573
  %11 = load i32, i32* %10, align 8, !dbg !1573, !tbaa !1461
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1574
  %13 = load i32, i32* %12, align 4, !dbg !1574, !tbaa !1521
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1575
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1576
  %16 = load i8*, i8** %15, align 8, !dbg !1576, !tbaa !1547
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1577
  %18 = load i8*, i8** %17, align 8, !dbg !1577, !tbaa !1550
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1578
  call void @llvm.dbg.value(metadata i64 %19, metadata !1563, metadata !DIExpression()), !dbg !1579
  store i32 %9, i32* %8, align 4, !dbg !1580, !tbaa !867
  ret i64 %19, !dbg !1581
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1582 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %1, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %2, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %3, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %4, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %5, metadata !1593, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32* %6, metadata !1594, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %7, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %8, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* null, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1665
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1666
  %14 = icmp eq i64 %13, 1, !dbg !1667
  %15 = lshr i32 %5, 1, !dbg !1668
  %16 = trunc i32 %15 to i8, !dbg !1668
  %17 = and i8 %16, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i8 %17, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1671
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1672

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1662
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1663
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1664
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1665
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1673
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1669
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1670
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1671
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %39, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %38, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %37, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %36, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %35, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %34, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %33, metadata !1601, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %32, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %31, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %30, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %29, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %28, metadata !1592, metadata !DIExpression()), !dbg !1656
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
  ], !dbg !1675

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %36, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 5, metadata !1592, metadata !DIExpression()), !dbg !1656
  br label %93, !dbg !1676

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 5, metadata !1592, metadata !DIExpression()), !dbg !1656
  %43 = and i8 %36, 1, !dbg !1677
  %44 = icmp eq i8 %43, 0, !dbg !1677
  br i1 %44, label %45, label %93, !dbg !1676

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1679
  br i1 %46, label %93, label %47, !dbg !1682

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1679, !tbaa !895
  br label %93, !dbg !1679

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %49, metadata !1595, metadata !DIExpression()), !dbg !1659
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !1687
  call void @llvm.dbg.value(metadata i8* %50, metadata !1596, metadata !DIExpression()), !dbg !1660
  br label %51, !dbg !1688

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %52, metadata !1595, metadata !DIExpression()), !dbg !1659
  %54 = and i8 %36, 1, !dbg !1689
  %55 = icmp eq i8 %54, 0, !dbg !1689
  br i1 %55, label %56, label %71, !dbg !1691

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1661
  %57 = load i8, i8* %52, align 1, !dbg !1692, !tbaa !895
  %58 = icmp eq i8 %57, 0, !dbg !1695
  br i1 %58, label %71, label %59, !dbg !1695

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %62, metadata !1598, metadata !DIExpression()), !dbg !1661
  %63 = icmp ult i64 %62, %40, !dbg !1696
  br i1 %63, label %64, label %66, !dbg !1699

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1696
  store i8 %60, i8* %65, align 1, !dbg !1696, !tbaa !895
  br label %66, !dbg !1696

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1699
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %68, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %67, metadata !1598, metadata !DIExpression()), !dbg !1661
  %69 = load i8, i8* %68, align 1, !dbg !1692, !tbaa !895
  %70 = icmp eq i8 %69, 0, !dbg !1695
  br i1 %70, label %71, label %59, !dbg !1695, !llvm.loop !1701

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1661
  call void @llvm.dbg.value(metadata i64 %72, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8* %53, metadata !1600, metadata !DIExpression()), !dbg !1663
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %73, metadata !1601, metadata !DIExpression()), !dbg !1664
  br label %93, !dbg !1704

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1665
  br label %75, !dbg !1705

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1673
  call void @llvm.dbg.value(metadata i8 %76, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1668
  br label %77, !dbg !1706

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1665
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1673
  call void @llvm.dbg.value(metadata i8 %79, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %78, metadata !1602, metadata !DIExpression()), !dbg !1665
  %80 = and i8 %79, 1, !dbg !1707
  %81 = icmp eq i8 %80, 0, !dbg !1707
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1709
  br label %83, !dbg !1709

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1710
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1668
  call void @llvm.dbg.value(metadata i8 %85, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %84, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  %86 = and i8 %85, 1, !dbg !1711
  %87 = icmp eq i8 %86, 0, !dbg !1711
  br i1 %87, label %88, label %93, !dbg !1713

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1714
  br i1 %89, label %93, label %90, !dbg !1717

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1714, !tbaa !895
  br label %93, !dbg !1714

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1668
  br label %93, !dbg !1718

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1719
  unreachable, !dbg !1719

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1661
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ], !dbg !1673
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1673
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1673
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %101, metadata !1604, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %99, metadata !1601, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %97, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1721
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
  br label %121, !dbg !1722

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1723
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1661
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1662
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1669
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1670
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1671
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %122, metadata !1597, metadata !DIExpression()), !dbg !1721
  %130 = icmp eq i64 %125, -1, !dbg !1724
  br i1 %130, label %131, label %135, !dbg !1725

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1726
  %133 = load i8, i8* %132, align 1, !dbg !1726, !tbaa !895
  %134 = icmp eq i8 %133, 0, !dbg !1727
  br i1 %134, label %617, label %137, !dbg !1728

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1729
  br i1 %136, label %617, label %137, !dbg !1728

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1615, metadata !DIExpression()), !dbg !1732
  br i1 %107, label %138, label %153, !dbg !1733

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1735
  %140 = and i1 %108, %130, !dbg !1736
  br i1 %140, label %141, label %143, !dbg !1736

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %142, metadata !1591, metadata !DIExpression()), !dbg !1655
  br label %143, !dbg !1738

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1591, metadata !DIExpression()), !dbg !1655
  %145 = icmp ugt i64 %139, %144, !dbg !1739
  br i1 %145, label %153, label %146, !dbg !1740

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1741
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1742
  %149 = icmp ne i32 %148, 0, !dbg !1743
  %150 = or i1 %149, %110, !dbg !1744
  %151 = xor i1 %149, true, !dbg !1744
  %152 = zext i1 %151 to i8, !dbg !1744
  br i1 %150, label %153, label %661, !dbg !1744

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8 %155, metadata !1613, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %154, metadata !1591, metadata !DIExpression()), !dbg !1655
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1746
  %157 = load i8, i8* %156, align 1, !dbg !1746, !tbaa !895
  call void @llvm.dbg.value(metadata i8 %157, metadata !1608, metadata !DIExpression()), !dbg !1747
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
  ], !dbg !1748

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1749

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1750

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1731
  %161 = and i8 %126, 1, !dbg !1754
  %162 = icmp eq i8 %161, 0, !dbg !1754
  %163 = and i1 %114, %162, !dbg !1754
  br i1 %163, label %164, label %180, !dbg !1754

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1756
  br i1 %165, label %166, label %168, !dbg !1760

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1756
  store i8 39, i8* %167, align 1, !dbg !1756, !tbaa !895
  br label %168, !dbg !1756

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %169, metadata !1598, metadata !DIExpression()), !dbg !1661
  %170 = icmp ult i64 %169, %129, !dbg !1761
  br i1 %170, label %171, label %173, !dbg !1764

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1761
  store i8 36, i8* %172, align 1, !dbg !1761, !tbaa !895
  br label %173, !dbg !1761

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %174, metadata !1598, metadata !DIExpression()), !dbg !1661
  %175 = icmp ult i64 %174, %129, !dbg !1765
  br i1 %175, label %176, label %178, !dbg !1768

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1765
  store i8 39, i8* %177, align 1, !dbg !1765, !tbaa !895
  br label %178, !dbg !1765

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %179, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %180, !dbg !1769

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1720
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %182, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %181, metadata !1598, metadata !DIExpression()), !dbg !1661
  %183 = icmp ult i64 %181, %129, !dbg !1770
  br i1 %183, label %184, label %186, !dbg !1773

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1770
  store i8 92, i8* %185, align 1, !dbg !1770, !tbaa !895
  br label %186, !dbg !1770

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %187, metadata !1598, metadata !DIExpression()), !dbg !1661
  br i1 %104, label %188, label %478, !dbg !1774

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1776
  %190 = icmp ult i64 %189, %154, !dbg !1777
  br i1 %190, label %191, label %467, !dbg !1778

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1779
  %193 = load i8, i8* %192, align 1, !dbg !1779, !tbaa !895
  %194 = add i8 %193, -48, !dbg !1780
  %195 = icmp ult i8 %194, 10, !dbg !1780
  br i1 %195, label %196, label %467, !dbg !1780

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1781
  br i1 %197, label %198, label %200, !dbg !1785

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1781
  store i8 48, i8* %199, align 1, !dbg !1781, !tbaa !895
  br label %200, !dbg !1781

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %201, metadata !1598, metadata !DIExpression()), !dbg !1661
  %202 = icmp ult i64 %201, %129, !dbg !1786
  br i1 %202, label %203, label %205, !dbg !1789

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1786
  store i8 48, i8* %204, align 1, !dbg !1786, !tbaa !895
  br label %205, !dbg !1786

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %206, metadata !1598, metadata !DIExpression()), !dbg !1661
  br label %467, !dbg !1790

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1791

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1792

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1793

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1795

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1797
  %213 = icmp ult i64 %212, %154, !dbg !1798
  br i1 %213, label %214, label %467, !dbg !1799

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1800
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1801
  %217 = load i8, i8* %216, align 1, !dbg !1801, !tbaa !895
  %218 = icmp eq i8 %217, 63, !dbg !1802
  br i1 %218, label %219, label %467, !dbg !1803

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1804
  %221 = load i8, i8* %220, align 1, !dbg !1804, !tbaa !895
  %222 = sext i8 %221 to i32, !dbg !1804
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
  ], !dbg !1805

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1806

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %212, metadata !1597, metadata !DIExpression()), !dbg !1721
  %225 = icmp ult i64 %123, %129, !dbg !1808
  br i1 %225, label %226, label %228, !dbg !1811

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1808
  store i8 63, i8* %227, align 1, !dbg !1808, !tbaa !895
  br label %228, !dbg !1808

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %229, metadata !1598, metadata !DIExpression()), !dbg !1661
  %230 = icmp ult i64 %229, %129, !dbg !1812
  br i1 %230, label %231, label %233, !dbg !1815

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1812
  store i8 34, i8* %232, align 1, !dbg !1812, !tbaa !895
  br label %233, !dbg !1812

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %234, metadata !1598, metadata !DIExpression()), !dbg !1661
  %235 = icmp ult i64 %234, %129, !dbg !1816
  br i1 %235, label %236, label %238, !dbg !1819

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1816
  store i8 34, i8* %237, align 1, !dbg !1816, !tbaa !895
  br label %238, !dbg !1816

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %239, metadata !1598, metadata !DIExpression()), !dbg !1661
  %240 = icmp ult i64 %239, %129, !dbg !1820
  br i1 %240, label %241, label %243, !dbg !1823

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1820
  store i8 63, i8* %242, align 1, !dbg !1820, !tbaa !895
  br label %243, !dbg !1820

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %244, metadata !1598, metadata !DIExpression()), !dbg !1661
  br label %467, !dbg !1824

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1612, metadata !DIExpression()), !dbg !1825
  br label %255, !dbg !1826

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1612, metadata !DIExpression()), !dbg !1825
  br label %255, !dbg !1827

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1612, metadata !DIExpression()), !dbg !1825
  br label %253, !dbg !1828

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1612, metadata !DIExpression()), !dbg !1825
  br label %253, !dbg !1829

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1612, metadata !DIExpression()), !dbg !1825
  br label %255, !dbg !1830

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1612, metadata !DIExpression()), !dbg !1825
  br i1 %114, label %251, label %252, !dbg !1831

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1832

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1835

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1837
  call void @llvm.dbg.value(metadata i8 %254, metadata !1612, metadata !DIExpression()), !dbg !1825
  br i1 %113, label %255, label %661, !dbg !1838

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1837
  call void @llvm.dbg.value(metadata i8 %256, metadata !1612, metadata !DIExpression()), !dbg !1825
  br i1 %103, label %524, label %478, !dbg !1840

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1841
  br i1 %258, label %259, label %264, !dbg !1843

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1844, !tbaa !895
  %261 = icmp ne i8 %260, 0, !dbg !1845
  %262 = icmp ne i64 %122, 0, !dbg !1846
  %263 = or i1 %262, %261, !dbg !1848
  br i1 %263, label %467, label %270, !dbg !1848

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1849
  %266 = icmp ne i64 %122, 0, !dbg !1846
  %267 = or i1 %266, %265, !dbg !1843
  br i1 %267, label %467, label %270, !dbg !1843

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1846
  br i1 %269, label %270, label %467, !dbg !1850

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1732
  br label %271, !dbg !1851

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1837
  call void @llvm.dbg.value(metadata i8 %272, metadata !1615, metadata !DIExpression()), !dbg !1732
  br i1 %113, label %467, label %661, !dbg !1852

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1732
  br i1 %114, label %274, label %467, !dbg !1854

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1855

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1858
  %277 = icmp ne i64 %124, 0, !dbg !1860
  %278 = or i1 %277, %276, !dbg !1861
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1861
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %280, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %279, metadata !1599, metadata !DIExpression()), !dbg !1662
  %281 = icmp ult i64 %123, %280, !dbg !1862
  br i1 %281, label %282, label %284, !dbg !1865

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1862
  store i8 39, i8* %283, align 1, !dbg !1862, !tbaa !895
  br label %284, !dbg !1862

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %285, metadata !1598, metadata !DIExpression()), !dbg !1661
  %286 = icmp ult i64 %285, %280, !dbg !1866
  br i1 %286, label %287, label %289, !dbg !1869

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1866
  store i8 92, i8* %288, align 1, !dbg !1866, !tbaa !895
  br label %289, !dbg !1866

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %290, metadata !1598, metadata !DIExpression()), !dbg !1661
  %291 = icmp ult i64 %290, %280, !dbg !1870
  br i1 %291, label %292, label %294, !dbg !1873

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1870
  store i8 39, i8* %293, align 1, !dbg !1870, !tbaa !895
  br label %294, !dbg !1870

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %295, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %467, !dbg !1874

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1875

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1616, metadata !DIExpression()), !dbg !1876
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1877
  %299 = load i16*, i16** %298, align 8, !dbg !1877, !tbaa !743
  %300 = zext i8 %157 to i64, !dbg !1877
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1877
  %302 = load i16, i16* %301, align 2, !dbg !1877, !tbaa !1879
  %303 = lshr i16 %302, 14, !dbg !1880
  %304 = trunc i16 %303 to i8, !dbg !1880
  %305 = and i8 %304, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %305, metadata !1619, metadata !DIExpression()), !dbg !1881
  br label %359, !dbg !1882

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1883
  store i64 0, i64* %10, align 8, !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1881
  %307 = icmp eq i64 %154, -1, !dbg !1885
  br i1 %307, label %308, label %310, !dbg !1887

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %309, metadata !1591, metadata !DIExpression()), !dbg !1655
  br label %310, !dbg !1889

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  br label %312, !dbg !1891

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1892
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1893
  call void @llvm.dbg.value(metadata i8 %314, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1894
  %315 = add i64 %313, %122, !dbg !1895
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1896
  %317 = sub i64 %311, %315, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1620, metadata !DIExpression(DW_OP_deref)), !dbg !1898
  call void @llvm.dbg.value(metadata i32* %12, metadata !1638, metadata !DIExpression(DW_OP_deref)), !dbg !1899
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %318, metadata !1641, metadata !DIExpression()), !dbg !1901
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1902

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  %320 = icmp ugt i64 %311, %315, !dbg !1903
  br i1 %320, label %321, label %344, !dbg !1905

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1616, metadata !DIExpression()), !dbg !1876
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1906
  %325 = load i8, i8* %324, align 1, !dbg !1906, !tbaa !895
  %326 = icmp eq i8 %325, 0, !dbg !1905
  br i1 %326, label %344, label %327, !dbg !1907

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %328, metadata !1616, metadata !DIExpression()), !dbg !1876
  %329 = add i64 %328, %122, !dbg !1909
  %330 = icmp ult i64 %329, %311, !dbg !1903
  br i1 %330, label %321, label %344, !dbg !1905, !llvm.loop !1910

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1911
  %333 = and i1 %116, %332, !dbg !1914
  call void @llvm.dbg.value(metadata i64 1, metadata !1642, metadata !DIExpression()), !dbg !1915
  br i1 %333, label %334, label %347, !dbg !1914

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1642, metadata !DIExpression()), !dbg !1915
  %336 = add i64 %335, %315, !dbg !1916
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1917
  %338 = load i8, i8* %337, align 1, !dbg !1917, !tbaa !895
  %339 = sext i8 %338 to i32, !dbg !1917
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1918

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %341, metadata !1642, metadata !DIExpression()), !dbg !1915
  %342 = icmp ult i64 %341, %318, !dbg !1911
  br i1 %342, label %334, label %347, !dbg !1920, !llvm.loop !1921

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %314, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %313, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %314, metadata !1619, metadata !DIExpression()), !dbg !1881
  br label %344, !dbg !1923

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %352, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1923
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1924, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %348, metadata !1638, metadata !DIExpression()), !dbg !1899
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !1926
  %350 = icmp eq i32 %349, 0, !dbg !1926
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1927
  call void @llvm.dbg.value(metadata i8 %351, metadata !1619, metadata !DIExpression()), !dbg !1881
  %352 = add i64 %318, %313, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %352, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %351, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %352, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1620, metadata !DIExpression(DW_OP_deref)), !dbg !1898
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1929
  %354 = icmp eq i32 %353, 0, !dbg !1930
  br i1 %354, label %312, label %355, !dbg !1931, !llvm.loop !1932

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1934
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %94, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %100, metadata !1602, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %311, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %351, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %352, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1934
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1935
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1936
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1936
  call void @llvm.dbg.value(metadata i8 %362, metadata !1619, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %361, metadata !1616, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %360, metadata !1591, metadata !DIExpression()), !dbg !1655
  %363 = and i8 %362, 1, !dbg !1937
  %364 = icmp ne i8 %363, 0, !dbg !1937
  call void @llvm.dbg.value(metadata i8 %363, metadata !1615, metadata !DIExpression()), !dbg !1732
  %365 = icmp ult i64 %361, 2, !dbg !1938
  %366 = or i1 %364, %115, !dbg !1939
  %367 = and i1 %365, %366, !dbg !1940
  br i1 %367, label %467, label %368, !dbg !1940

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %369, metadata !1649, metadata !DIExpression()), !dbg !1942
  br label %370, !dbg !1943

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1944
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1948
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1669
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1944
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1950
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1731
  call void @llvm.dbg.value(metadata i8 %376, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %375, metadata !1613, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %374, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %373, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %372, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %371, metadata !1597, metadata !DIExpression()), !dbg !1721
  br i1 %366, label %423, label %377, !dbg !1954

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1955

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1731
  %379 = and i8 %373, 1, !dbg !1958
  %380 = icmp eq i8 %379, 0, !dbg !1958
  %381 = and i1 %114, %380, !dbg !1958
  br i1 %381, label %382, label %398, !dbg !1958

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1960
  br i1 %383, label %384, label %386, !dbg !1964

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1960
  store i8 39, i8* %385, align 1, !dbg !1960, !tbaa !895
  br label %386, !dbg !1960

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %387, metadata !1598, metadata !DIExpression()), !dbg !1661
  %388 = icmp ult i64 %387, %129, !dbg !1965
  br i1 %388, label %389, label %391, !dbg !1968

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1965
  store i8 36, i8* %390, align 1, !dbg !1965, !tbaa !895
  br label %391, !dbg !1965

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %392, metadata !1598, metadata !DIExpression()), !dbg !1661
  %393 = icmp ult i64 %392, %129, !dbg !1969
  br i1 %393, label %394, label %396, !dbg !1972

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1969
  store i8 39, i8* %395, align 1, !dbg !1969, !tbaa !895
  br label %396, !dbg !1969

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %397, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %398, !dbg !1973

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1720
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %400, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %399, metadata !1598, metadata !DIExpression()), !dbg !1661
  %401 = icmp ult i64 %399, %129, !dbg !1974
  br i1 %401, label %402, label %404, !dbg !1977

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1974
  store i8 92, i8* %403, align 1, !dbg !1974, !tbaa !895
  br label %404, !dbg !1974

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %405, metadata !1598, metadata !DIExpression()), !dbg !1661
  %406 = icmp ult i64 %405, %129, !dbg !1978
  br i1 %406, label %407, label %411, !dbg !1981

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1978
  %409 = or i8 %408, 48, !dbg !1978
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1978
  store i8 %409, i8* %410, align 1, !dbg !1978, !tbaa !895
  br label %411, !dbg !1978

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %412, metadata !1598, metadata !DIExpression()), !dbg !1661
  %413 = icmp ult i64 %412, %129, !dbg !1982
  br i1 %413, label %414, label %419, !dbg !1985

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1982
  %416 = and i8 %415, 7, !dbg !1982
  %417 = or i8 %416, 48, !dbg !1982
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1982
  store i8 %417, i8* %418, align 1, !dbg !1982, !tbaa !895
  br label %419, !dbg !1982

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %420, metadata !1598, metadata !DIExpression()), !dbg !1661
  %421 = and i8 %374, 7, !dbg !1986
  %422 = or i8 %421, 48, !dbg !1987
  call void @llvm.dbg.value(metadata i8 %422, metadata !1608, metadata !DIExpression()), !dbg !1747
  br label %432, !dbg !1988

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1989
  %425 = icmp eq i8 %424, 0, !dbg !1989
  br i1 %425, label %432, label %426, !dbg !1990

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1991
  br i1 %427, label %428, label %430, !dbg !1994

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1991
  store i8 92, i8* %429, align 1, !dbg !1991, !tbaa !895
  br label %430, !dbg !1991

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %431, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1730
  br label %432, !dbg !1995

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1996
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1669
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1997
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1998
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2000
  call void @llvm.dbg.value(metadata i8 %437, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %436, metadata !1613, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %435, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %434, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %433, metadata !1598, metadata !DIExpression()), !dbg !1661
  %438 = add i64 %371, 1, !dbg !2001
  %439 = icmp ugt i64 %369, %438, !dbg !2003
  br i1 %439, label %440, label %562, !dbg !2004

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2005
  %442 = icmp ne i8 %441, 0, !dbg !2005
  %443 = and i8 %437, 1, !dbg !2005
  %444 = icmp eq i8 %443, 0, !dbg !2005
  %445 = and i1 %442, %444, !dbg !2005
  br i1 %445, label %446, label %457, !dbg !2005

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2008
  br i1 %447, label %448, label %450, !dbg !2012

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2008
  store i8 39, i8* %449, align 1, !dbg !2008, !tbaa !895
  br label %450, !dbg !2008

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %451, metadata !1598, metadata !DIExpression()), !dbg !1661
  %452 = icmp ult i64 %451, %129, !dbg !2013
  br i1 %452, label %453, label %455, !dbg !2016

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2013
  store i8 39, i8* %454, align 1, !dbg !2013, !tbaa !895
  br label %455, !dbg !2013

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %456, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %457, !dbg !2017

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2018
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %459, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %458, metadata !1598, metadata !DIExpression()), !dbg !1661
  %460 = icmp ult i64 %458, %129, !dbg !2019
  br i1 %460, label %461, label %463, !dbg !2021

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2019
  store i8 %435, i8* %462, align 1, !dbg !2019, !tbaa !895
  br label %463, !dbg !2019

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %464, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %438, metadata !1597, metadata !DIExpression()), !dbg !1721
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2022
  %466 = load i8, i8* %465, align 1, !dbg !2022, !tbaa !895
  call void @llvm.dbg.value(metadata i8 %466, metadata !1608, metadata !DIExpression()), !dbg !1747
  br label %370, !dbg !2023, !llvm.loop !2024

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2027
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1720
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1662
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2028
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1720
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1720
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1745
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1745
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1745
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %476, metadata !1615, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %475, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %155, metadata !1613, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %474, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %473, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %472, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %471, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %470, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %469, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %468, metadata !1597, metadata !DIExpression()), !dbg !1721
  br i1 %105, label %489, label %478, !dbg !2029

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
  br i1 %112, label %490, label %512, !dbg !2031

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2032

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
  %501 = lshr i8 %494, 5, !dbg !2033
  %502 = zext i8 %501 to i64, !dbg !2033
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2034
  %504 = load i32, i32* %503, align 4, !dbg !2034, !tbaa !867
  %505 = and i8 %494, 31, !dbg !2035
  %506 = zext i8 %505 to i32, !dbg !2035
  %507 = shl i32 1, %506, !dbg !2036
  %508 = and i32 %504, %507, !dbg !2036
  %509 = icmp eq i32 %508, 0, !dbg !2036
  %510 = icmp eq i8 %155, 0, !dbg !2037
  %511 = and i1 %510, %509, !dbg !2038
  br i1 %511, label %562, label %524, !dbg !2038

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
  %523 = icmp eq i8 %155, 0, !dbg !2037
  br i1 %523, label %562, label %524, !dbg !2039

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2040
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1720
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1662
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2028
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1669
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1670
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2041
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1745
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %532, metadata !1615, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %531, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %530, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %529, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %528, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %527, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %526, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %525, metadata !1597, metadata !DIExpression()), !dbg !1721
  br i1 %110, label %534, label %661, !dbg !2044

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1731
  %535 = and i8 %529, 1, !dbg !2046
  %536 = icmp eq i8 %535, 0, !dbg !2046
  %537 = and i1 %114, %536, !dbg !2046
  br i1 %537, label %538, label %554, !dbg !2046

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2048
  br i1 %539, label %540, label %542, !dbg !2052

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2048
  store i8 39, i8* %541, align 1, !dbg !2048, !tbaa !895
  br label %542, !dbg !2048

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %543, metadata !1598, metadata !DIExpression()), !dbg !1661
  %544 = icmp ult i64 %543, %533, !dbg !2053
  br i1 %544, label %545, label %547, !dbg !2056

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2053
  store i8 36, i8* %546, align 1, !dbg !2053, !tbaa !895
  br label %547, !dbg !2053

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %548, metadata !1598, metadata !DIExpression()), !dbg !1661
  %549 = icmp ult i64 %548, %533, !dbg !2057
  br i1 %549, label %550, label %552, !dbg !2060

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2057
  store i8 39, i8* %551, align 1, !dbg !2057, !tbaa !895
  br label %552, !dbg !2057

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %553, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %554, !dbg !2061

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2018
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %556, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %555, metadata !1598, metadata !DIExpression()), !dbg !1661
  %557 = icmp ult i64 %555, %533, !dbg !2062
  br i1 %557, label %558, label %560, !dbg !2065

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2062
  store i8 92, i8* %559, align 1, !dbg !2062, !tbaa !895
  br label %560, !dbg !2062

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %561, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %572, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %571, metadata !1615, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %570, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %569, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %568, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %567, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %566, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %565, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %564, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %563, metadata !1597, metadata !DIExpression()), !dbg !1721
  br label %589, !dbg !2066

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2040
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1720
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1662
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2028
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1669
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1670
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2069
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1745
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1745
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %571, metadata !1615, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %570, metadata !1614, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %569, metadata !1608, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %568, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %567, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %566, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %565, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %564, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %563, metadata !1597, metadata !DIExpression()), !dbg !1721
  %573 = and i8 %567, 1, !dbg !2066
  %574 = icmp ne i8 %573, 0, !dbg !2066
  %575 = and i8 %570, 1, !dbg !2066
  %576 = icmp eq i8 %575, 0, !dbg !2066
  %577 = and i1 %574, %576, !dbg !2066
  br i1 %577, label %578, label %589, !dbg !2066

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2070
  br i1 %579, label %580, label %582, !dbg !2074

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2070
  store i8 39, i8* %581, align 1, !dbg !2070, !tbaa !895
  br label %582, !dbg !2070

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %583, metadata !1598, metadata !DIExpression()), !dbg !1661
  %584 = icmp ult i64 %583, %572, !dbg !2075
  br i1 %584, label %585, label %587, !dbg !2078

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2075
  store i8 39, i8* %586, align 1, !dbg !2075, !tbaa !895
  br label %587, !dbg !2075

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %588, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1669
  br label %589, !dbg !2079

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2018
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %598, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %597, metadata !1598, metadata !DIExpression()), !dbg !1661
  %599 = icmp ult i64 %597, %590, !dbg !2080
  br i1 %599, label %600, label %602, !dbg !2083

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2080
  store i8 %592, i8* %601, align 1, !dbg !2080, !tbaa !895
  br label %602, !dbg !2080

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %603, metadata !1598, metadata !DIExpression()), !dbg !1661
  %604 = and i8 %591, 1, !dbg !2084
  %605 = icmp eq i8 %604, 0, !dbg !2084
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %606, metadata !1607, metadata !DIExpression()), !dbg !1671
  br label %607, !dbg !2087

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2040
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1720
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1662
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2028
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1669
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1720
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1671
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %614, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %613, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %612, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %611, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %610, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %609, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %608, metadata !1597, metadata !DIExpression()), !dbg !1721
  %616 = add i64 %608, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %616, metadata !1597, metadata !DIExpression()), !dbg !1721
  br label %121, !dbg !2089, !llvm.loop !2090

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %126, metadata !1605, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %127, metadata !1606, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %128, metadata !1607, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  %619 = icmp eq i64 %123, 0, !dbg !2092
  %620 = and i1 %114, %619, !dbg !2094
  %621 = xor i1 %620, true, !dbg !2094
  %622 = or i1 %110, %621, !dbg !2094
  br i1 %622, label %623, label %661, !dbg !2094

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2095
  %625 = xor i1 %624, true, !dbg !2095
  %626 = and i8 %127, 1, !dbg !2097
  %627 = icmp eq i8 %626, 0, !dbg !2097
  %628 = or i1 %627, %625, !dbg !2095
  br i1 %628, label %638, label %629, !dbg !2095

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2098
  %631 = icmp eq i8 %630, 0, !dbg !2098
  br i1 %631, label %634, label %632, !dbg !2101

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %618, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1595, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %96, metadata !1596, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1655
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2102
  br label %671, !dbg !2103

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2104
  %636 = icmp ne i64 %124, 0, !dbg !2106
  %637 = and i1 %636, %635, !dbg !2107
  br i1 %637, label %27, label %638, !dbg !2107

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1653
  %639 = icmp ne i8* %98, null, !dbg !2108
  %640 = and i1 %639, %110, !dbg !2110
  br i1 %640, label %641, label %656, !dbg !2110

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1661
  %642 = load i8, i8* %98, align 1, !dbg !2111, !tbaa !895
  %643 = icmp eq i8 %642, 0, !dbg !2114
  br i1 %643, label %656, label %644, !dbg !2114

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %647, metadata !1598, metadata !DIExpression()), !dbg !1661
  %648 = icmp ult i64 %647, %129, !dbg !2115
  br i1 %648, label %649, label %651, !dbg !2118

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2115
  store i8 %645, i8* %650, align 1, !dbg !2115, !tbaa !895
  br label %651, !dbg !2115

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2118
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2119
  call void @llvm.dbg.value(metadata i8* %653, metadata !1600, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %652, metadata !1598, metadata !DIExpression()), !dbg !1661
  %654 = load i8, i8* %653, align 1, !dbg !2111, !tbaa !895
  %655 = icmp eq i8 %654, 0, !dbg !2114
  br i1 %655, label %656, label %644, !dbg !2114, !llvm.loop !2120

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1661
  call void @llvm.dbg.value(metadata i64 %657, metadata !1598, metadata !DIExpression()), !dbg !1661
  %658 = icmp ult i64 %657, %129, !dbg !2122
  br i1 %658, label %659, label %671, !dbg !2124

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2125
  store i8 0, i8* %660, align 1, !dbg !2126, !tbaa !895
  br label %671, !dbg !2125

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %663, metadata !1591, metadata !DIExpression()), !dbg !1655
  %665 = icmp ne i32 %662, 2, !dbg !2127
  %666 = icmp eq i8 %102, 0, !dbg !2129
  %667 = or i1 %665, %666, !dbg !2130
  call void @llvm.dbg.value(metadata i32 4, metadata !1592, metadata !DIExpression()), !dbg !1656
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %668, metadata !1592, metadata !DIExpression()), !dbg !1656
  %669 = and i32 %5, -3, !dbg !2131
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2132
  br label %671, !dbg !2133

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2134
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %1, metadata !2140, metadata !DIExpression()), !dbg !2144
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %3, metadata !2141, metadata !DIExpression()), !dbg !2146
  %4 = icmp eq i8* %3, %0, !dbg !2147
  br i1 %4, label %5, label %71, !dbg !2149

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* %6, metadata !2152, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* null, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 85, metadata !2159, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 84, metadata !2160, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 70, metadata !2161, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 45, metadata !2162, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 56, metadata !2163, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2164, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2165, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2166, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2180
  %7 = load i8, i8* %6, align 1, !dbg !2181, !tbaa !895
  %8 = and i8 %7, -33, !dbg !2181
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2181

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2183, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* null, metadata !2188, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 84, metadata !2189, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 70, metadata !2190, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 45, metadata !2191, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 56, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i8 0, metadata !2193, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2209
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2210
  %11 = load i8, i8* %10, align 1, !dbg !2210, !tbaa !895
  %12 = and i8 %11, -33, !dbg !2210
  %13 = icmp eq i8 %12, 84, !dbg !2210
  br i1 %13, label %14, label %68, !dbg !2210

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2212, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* null, metadata !2217, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 70, metadata !2218, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 45, metadata !2219, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 56, metadata !2220, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8 0, metadata !2221, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8 0, metadata !2222, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2223, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2236
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2237
  %16 = load i8, i8* %15, align 1, !dbg !2237, !tbaa !895
  %17 = and i8 %16, -33, !dbg !2237
  %18 = icmp eq i8 %17, 70, !dbg !2237
  br i1 %18, label %19, label %68, !dbg !2237

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2239, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* null, metadata !2244, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 45, metadata !2245, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8 56, metadata !2246, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8 0, metadata !2247, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 0, metadata !2248, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2261
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2262
  %21 = load i8, i8* %20, align 1, !dbg !2262, !tbaa !895
  %22 = icmp eq i8 %21, 45, !dbg !2262
  br i1 %22, label %23, label %68, !dbg !2264

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2265, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* null, metadata !2270, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 56, metadata !2271, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2285
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2286
  %25 = load i8, i8* %24, align 1, !dbg !2286, !tbaa !895
  %26 = icmp eq i8 %25, 56, !dbg !2286
  br i1 %26, label %27, label %68, !dbg !2288

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2289, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* null, metadata !2294, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 0, metadata !2295, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8 0, metadata !2296, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2307
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2308
  %29 = load i8, i8* %28, align 1, !dbg !2308, !tbaa !895
  %30 = icmp eq i8 %29, 0, !dbg !2308
  br i1 %30, label %31, label %68, !dbg !2310

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2311, !tbaa !895
  %33 = icmp eq i8 %32, 96, !dbg !2312
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !2311
  br label %71, !dbg !2313

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2183, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8* null, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 66, metadata !2189, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 49, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 56, metadata !2191, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8 48, metadata !2192, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 51, metadata !2193, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8 48, metadata !2194, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2326
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2327
  %37 = load i8, i8* %36, align 1, !dbg !2327, !tbaa !895
  %38 = and i8 %37, -33, !dbg !2327
  %39 = icmp eq i8 %38, 66, !dbg !2327
  br i1 %39, label %40, label %68, !dbg !2327

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2212, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* null, metadata !2217, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 49, metadata !2218, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 56, metadata !2219, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 48, metadata !2220, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 51, metadata !2221, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 48, metadata !2222, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 0, metadata !2223, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2337
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2338
  %42 = load i8, i8* %41, align 1, !dbg !2338, !tbaa !895
  %43 = icmp eq i8 %42, 49, !dbg !2338
  br i1 %43, label %44, label %68, !dbg !2339

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2239, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* null, metadata !2244, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 56, metadata !2245, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 48, metadata !2246, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 51, metadata !2247, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 48, metadata !2248, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2348
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2349
  %46 = load i8, i8* %45, align 1, !dbg !2349, !tbaa !895
  %47 = icmp eq i8 %46, 56, !dbg !2349
  br i1 %47, label %48, label %68, !dbg !2350

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2265, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* null, metadata !2270, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 48, metadata !2271, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 51, metadata !2272, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8 48, metadata !2273, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2358
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2359
  %50 = load i8, i8* %49, align 1, !dbg !2359, !tbaa !895
  %51 = icmp eq i8 %50, 48, !dbg !2359
  br i1 %51, label %52, label %68, !dbg !2360

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2289, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* null, metadata !2294, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 51, metadata !2295, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 48, metadata !2296, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2367
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2368
  %54 = load i8, i8* %53, align 1, !dbg !2368, !tbaa !895
  %55 = icmp eq i8 %54, 51, !dbg !2368
  br i1 %55, label %56, label %68, !dbg !2369

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* null, metadata !2375, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 48, metadata !2376, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2386
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2387
  %58 = load i8, i8* %57, align 1, !dbg !2387, !tbaa !895
  %59 = icmp eq i8 %58, 48, !dbg !2387
  br i1 %59, label %60, label %68, !dbg !2389

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2390, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8* null, metadata !2395, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2404
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2405
  %62 = load i8, i8* %61, align 1, !dbg !2405, !tbaa !895
  %63 = icmp eq i8 %62, 0, !dbg !2405
  br i1 %63, label %64, label %68, !dbg !2407

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2408, !tbaa !895
  %66 = icmp eq i8 %65, 96, !dbg !2409
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !2408
  br label %71, !dbg !2410

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2411
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !2412
  br label %71, !dbg !2413

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2414
  ret i8* %72, !dbg !2415
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %1, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()) #12, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2431, metadata !DIExpression()) #12, !dbg !2441
  call void @llvm.dbg.value(metadata i64* null, metadata !2432, metadata !DIExpression()) #12, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2433, metadata !DIExpression()) #12, !dbg !2443
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2444
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2434, metadata !DIExpression()) #12, !dbg !2445
  %6 = tail call i32* @__errno_location() #17, !dbg !2446
  %7 = load i32, i32* %6, align 4, !dbg !2446, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %7, metadata !2435, metadata !DIExpression()) #12, !dbg !2447
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2448
  %9 = load i32, i32* %8, align 4, !dbg !2448, !tbaa !1521
  %10 = or i32 %9, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %10, metadata !2436, metadata !DIExpression()) #12, !dbg !2450
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2451
  %12 = load i32, i32* %11, align 8, !dbg !2451, !tbaa !1461
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2452
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2453
  %15 = load i8*, i8** %14, align 8, !dbg !2453, !tbaa !1547
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2454
  %17 = load i8*, i8** %16, align 8, !dbg !2454, !tbaa !1550
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2455
  %19 = add i64 %18, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %19, metadata !2437, metadata !DIExpression()) #12, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %19, metadata !2458, metadata !DIExpression()) #12, !dbg !2461
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %20, metadata !2438, metadata !DIExpression()) #12, !dbg !2464
  %21 = load i32, i32* %11, align 8, !dbg !2465, !tbaa !1461
  %22 = load i8*, i8** %14, align 8, !dbg !2466, !tbaa !1547
  %23 = load i8*, i8** %16, align 8, !dbg !2467, !tbaa !1550
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2468
  store i32 %7, i32* %6, align 4, !dbg !2469, !tbaa !867
  ret i8* %20, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2427 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %1, metadata !2431, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64* %2, metadata !2432, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2433, metadata !DIExpression()), !dbg !2474
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2475
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2434, metadata !DIExpression()), !dbg !2476
  %7 = tail call i32* @__errno_location() #17, !dbg !2477
  %8 = load i32, i32* %7, align 4, !dbg !2477, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %8, metadata !2435, metadata !DIExpression()), !dbg !2478
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2479
  %10 = load i32, i32* %9, align 4, !dbg !2479, !tbaa !1521
  %11 = icmp ne i64* %2, null, !dbg !2480
  %12 = xor i1 %11, true, !dbg !2480
  %13 = zext i1 %12 to i32, !dbg !2480
  %14 = or i32 %10, %13, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %14, metadata !2436, metadata !DIExpression()), !dbg !2482
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2483
  %16 = load i32, i32* %15, align 8, !dbg !2483, !tbaa !1461
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2484
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2485
  %19 = load i8*, i8** %18, align 8, !dbg !2485, !tbaa !1547
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2486
  %21 = load i8*, i8** %20, align 8, !dbg !2486, !tbaa !1550
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2487
  %23 = add i64 %22, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %23, metadata !2437, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %23, metadata !2458, metadata !DIExpression()) #12, !dbg !2490
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %24, metadata !2438, metadata !DIExpression()), !dbg !2493
  %25 = load i32, i32* %15, align 8, !dbg !2494, !tbaa !1461
  %26 = load i8*, i8** %18, align 8, !dbg !2495, !tbaa !1547
  %27 = load i8*, i8** %20, align 8, !dbg !2496, !tbaa !1550
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2497
  store i32 %8, i32* %7, align 4, !dbg !2498, !tbaa !867
  br i1 %11, label %29, label %30, !dbg !2499

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2500, !tbaa !2502
  br label %30, !dbg !2503

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2505 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2509, !tbaa !743
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !2508, metadata !DIExpression()), !dbg !2511
  %2 = load i32, i32* @nslots, align 4, !dbg !2512, !tbaa !867
  %3 = icmp sgt i32 %2, 1, !dbg !2515
  br i1 %3, label %4, label %12, !dbg !2516

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2508, metadata !DIExpression()), !dbg !2511
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2517
  %7 = load i8*, i8** %6, align 8, !dbg !2517, !tbaa !2518
  tail call void @free(i8* %7) #12, !dbg !2520
  %8 = add nuw nsw i64 %5, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i32 undef, metadata !2508, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2511
  %9 = load i32, i32* @nslots, align 4, !dbg !2512, !tbaa !867
  %10 = sext i32 %9 to i64, !dbg !2515
  %11 = icmp slt i64 %8, %10, !dbg !2515
  br i1 %11, label %4, label %12, !dbg !2516, !llvm.loop !2522

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2524
  %14 = load i8*, i8** %13, align 8, !dbg !2524, !tbaa !2518
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2526
  br i1 %15, label %17, label %16, !dbg !2527

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2528
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2530, !tbaa !2531
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2532, !tbaa !2518
  br label %17, !dbg !2533

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2534
  br i1 %18, label %21, label %19, !dbg !2536

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2537
  tail call void @free(i8* %20) #12, !dbg !2539
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2540, !tbaa !743
  br label %21, !dbg !2541

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2542, !tbaa !867
  ret void, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()), !dbg !2551
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2552
  ret i8* %3, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %2, metadata !2560, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2561, metadata !DIExpression()), !dbg !2576
  %5 = tail call i32* @__errno_location() #17, !dbg !2577
  %6 = load i32, i32* %5, align 4, !dbg !2577, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %6, metadata !2562, metadata !DIExpression()), !dbg !2578
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2579, !tbaa !743
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2563, metadata !DIExpression()), !dbg !2580
  %8 = icmp slt i32 %0, 0, !dbg !2581
  br i1 %8, label %9, label %10, !dbg !2583

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2584
  unreachable, !dbg !2584

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2585, !tbaa !867
  %12 = icmp sgt i32 %11, %0, !dbg !2586
  br i1 %12, label %34, label %13, !dbg !2587

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2588
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2567, metadata !DIExpression()), !dbg !2589
  %15 = icmp eq i32 %0, 2147483647, !dbg !2590
  br i1 %15, label %16, label %17, !dbg !2592

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2593
  unreachable, !dbg !2593

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2594
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2594
  %20 = add nsw i32 %0, 1, !dbg !2595
  %21 = sext i32 %20 to i64, !dbg !2596
  %22 = shl nsw i64 %21, 4, !dbg !2597
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2598
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2563, metadata !DIExpression()), !dbg !2580
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2599, !tbaa !743
  br i1 %14, label %25, label %26, !dbg !2600

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2601, !tbaa.struct !2603
  br label %26, !dbg !2604

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2605, !tbaa !867
  %28 = sext i32 %27 to i64, !dbg !2606
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2606
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2607
  %31 = sub nsw i32 %20, %27, !dbg !2608
  %32 = sext i32 %31 to i64, !dbg !2609
  %33 = shl nsw i64 %32, 4, !dbg !2610
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2607
  store i32 %20, i32* @nslots, align 4, !dbg !2611, !tbaa !867
  br label %34, !dbg !2612

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2613
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2563, metadata !DIExpression()), !dbg !2580
  %36 = sext i32 %0 to i64, !dbg !2614
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2615
  %38 = load i64, i64* %37, align 8, !dbg !2615, !tbaa !2531
  call void @llvm.dbg.value(metadata i64 %38, metadata !2568, metadata !DIExpression()), !dbg !2616
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2617
  %40 = load i8*, i8** %39, align 8, !dbg !2617, !tbaa !2518
  call void @llvm.dbg.value(metadata i8* %40, metadata !2570, metadata !DIExpression()), !dbg !2618
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2619
  %42 = load i32, i32* %41, align 4, !dbg !2619, !tbaa !1521
  %43 = or i32 %42, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %43, metadata !2571, metadata !DIExpression()), !dbg !2621
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2622
  %45 = load i32, i32* %44, align 8, !dbg !2622, !tbaa !1461
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2623
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2624
  %48 = load i8*, i8** %47, align 8, !dbg !2624, !tbaa !1547
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2625
  %50 = load i8*, i8** %49, align 8, !dbg !2625, !tbaa !1550
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2626
  call void @llvm.dbg.value(metadata i64 %51, metadata !2572, metadata !DIExpression()), !dbg !2627
  %52 = icmp ugt i64 %38, %51, !dbg !2628
  br i1 %52, label %63, label %53, !dbg !2630

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %54, metadata !2568, metadata !DIExpression()), !dbg !2616
  store i64 %54, i64* %37, align 8, !dbg !2633, !tbaa !2531
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2634
  br i1 %55, label %57, label %56, !dbg !2636

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2637
  br label %57, !dbg !2637

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2458, metadata !DIExpression()) #12, !dbg !2638
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %58, metadata !2570, metadata !DIExpression()), !dbg !2618
  store i8* %58, i8** %39, align 8, !dbg !2641, !tbaa !2518
  %59 = load i32, i32* %44, align 8, !dbg !2642, !tbaa !1461
  %60 = load i8*, i8** %47, align 8, !dbg !2643, !tbaa !1547
  %61 = load i8*, i8** %49, align 8, !dbg !2644, !tbaa !1550
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2645
  br label %63, !dbg !2646

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2647
  call void @llvm.dbg.value(metadata i8* %64, metadata !2570, metadata !DIExpression()), !dbg !2618
  store i32 %6, i32* %5, align 4, !dbg !2648, !tbaa !867
  ret i8* %64, !dbg !2649
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %2, metadata !2656, metadata !DIExpression()), !dbg !2659
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2660
  ret i8* %4, !dbg !2661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()) #12, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()) #12, !dbg !2668
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2669
  ret i8* %2, !dbg !2670
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2671 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %1, metadata !2676, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 0, metadata !2654, metadata !DIExpression()) #12, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #12, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()) #12, !dbg !2682
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2683
  ret i8* %3, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2685 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2690, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2691, metadata !DIExpression()), !dbg !2695
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()) #12, !dbg !2704
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2706, !alias.scope !2707
  %6 = icmp eq i32 %1, 10, !dbg !2710
  br i1 %6, label %7, label %8, !dbg !2712

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2713, !noalias !2707
  unreachable, !dbg !2713

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2714
  store i32 %1, i32* %9, align 8, !dbg !2715, !tbaa !1461, !alias.scope !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2706
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2717
  ret i8* %10, !dbg !2718
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2719 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %1, metadata !2724, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %2, metadata !2725, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %3, metadata !2726, metadata !DIExpression()), !dbg !2731
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2727, metadata !DIExpression(DW_OP_deref)), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()) #12, !dbg !2734
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2736, !alias.scope !2737
  %7 = icmp eq i32 %1, 10, !dbg !2740
  br i1 %7, label %8, label %9, !dbg !2741

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2742, !noalias !2737
  unreachable, !dbg !2742

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  store i32 %1, i32* %10, align 8, !dbg !2744, !tbaa !1461, !alias.scope !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2727, metadata !DIExpression(DW_OP_deref)), !dbg !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2736
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2746
  ret i8* %11, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2748 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2689, metadata !DIExpression()) #12, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()) #12, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2691, metadata !DIExpression()) #12, !dbg !2759
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2760
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2692, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()) #12, !dbg !2762
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2764, !alias.scope !2765
  %5 = icmp eq i32 %0, 10, !dbg !2768
  br i1 %5, label %6, label %7, !dbg !2769

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2770, !noalias !2765
  unreachable, !dbg !2770

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2771
  store i32 %0, i32* %8, align 8, !dbg !2772, !tbaa !1461, !alias.scope !2765
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2692, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2703, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2764
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2774
  ret i8* %9, !dbg !2775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2776 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %2, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()) #12, !dbg !2786
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()) #12, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()) #12, !dbg !2790
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2727, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()) #12, !dbg !2793
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2795, !alias.scope !2796
  %6 = icmp eq i32 %0, 10, !dbg !2799
  br i1 %6, label %7, label %8, !dbg !2800

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2801, !noalias !2796
  unreachable, !dbg !2801

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2802
  store i32 %0, i32* %9, align 8, !dbg !2803, !tbaa !1461, !alias.scope !2796
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2727, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2703, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2795
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2805
  ret i8* %10, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2807 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %2, metadata !2813, metadata !DIExpression()), !dbg !2817
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2819, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2814, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1480, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8 %2, metadata !1481, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %2, metadata !1483, metadata !DIExpression()), !dbg !2826
  %6 = lshr i8 %2, 5, !dbg !2827
  %7 = zext i8 %6 to i64, !dbg !2827
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2828
  call void @llvm.dbg.value(metadata i32* %8, metadata !1485, metadata !DIExpression()), !dbg !2829
  %9 = and i8 %2, 31, !dbg !2830
  %10 = zext i8 %9 to i32, !dbg !2830
  call void @llvm.dbg.value(metadata i32 %10, metadata !1487, metadata !DIExpression()), !dbg !2831
  %11 = load i32, i32* %8, align 4, !dbg !2832, !tbaa !867
  %12 = lshr i32 %11, %10, !dbg !2833
  %13 = and i32 %12, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %13, metadata !1488, metadata !DIExpression()), !dbg !2835
  %14 = xor i32 %13, 1, !dbg !2836
  %15 = shl i32 %14, %10, !dbg !2837
  %16 = xor i32 %15, %11, !dbg !2838
  store i32 %16, i32* %8, align 4, !dbg !2838, !tbaa !867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2814, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2840
  ret i8* %17, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2842 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %1, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()) #12, !dbg !2850
  call void @llvm.dbg.value(metadata i64 -1, metadata !2812, metadata !DIExpression()) #12, !dbg !2852
  call void @llvm.dbg.value(metadata i8 %1, metadata !2813, metadata !DIExpression()) #12, !dbg !2853
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2854
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2855, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1480, metadata !DIExpression()) #12, !dbg !2857
  call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()) #12, !dbg !2859
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()) #12, !dbg !2860
  call void @llvm.dbg.value(metadata i8 %1, metadata !1483, metadata !DIExpression()) #12, !dbg !2861
  %5 = lshr i8 %1, 5, !dbg !2862
  %6 = zext i8 %5 to i64, !dbg !2862
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2863
  call void @llvm.dbg.value(metadata i32* %7, metadata !1485, metadata !DIExpression()) #12, !dbg !2864
  %8 = and i8 %1, 31, !dbg !2865
  %9 = zext i8 %8 to i32, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %9, metadata !1487, metadata !DIExpression()) #12, !dbg !2866
  %10 = load i32, i32* %7, align 4, !dbg !2867, !tbaa !867
  %11 = lshr i32 %10, %9, !dbg !2868
  %12 = and i32 %11, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %12, metadata !1488, metadata !DIExpression()) #12, !dbg !2870
  %13 = xor i32 %12, 1, !dbg !2871
  %14 = shl i32 %13, %9, !dbg !2872
  %15 = xor i32 %14, %10, !dbg !2873
  store i32 %15, i32* %7, align 4, !dbg !2873, !tbaa !867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2856
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2875
  ret i8* %16, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2877 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %0, metadata !2846, metadata !DIExpression()) #12, !dbg !2881
  call void @llvm.dbg.value(metadata i8 58, metadata !2847, metadata !DIExpression()) #12, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()) #12, !dbg !2884
  call void @llvm.dbg.value(metadata i64 -1, metadata !2812, metadata !DIExpression()) #12, !dbg !2886
  call void @llvm.dbg.value(metadata i8 58, metadata !2813, metadata !DIExpression()) #12, !dbg !2887
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2889, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1480, metadata !DIExpression()) #12, !dbg !2891
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()) #12, !dbg !2893
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()) #12, !dbg !2894
  call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()) #12, !dbg !2895
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2896
  call void @llvm.dbg.value(metadata i32* %4, metadata !1485, metadata !DIExpression()) #12, !dbg !2897
  call void @llvm.dbg.value(metadata i32 26, metadata !1487, metadata !DIExpression()) #12, !dbg !2898
  %5 = load i32, i32* %4, align 4, !dbg !2899, !tbaa !867
  %6 = or i32 %5, 67108864, !dbg !2900
  store i32 %6, i32* %4, align 4, !dbg !2900, !tbaa !867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2890
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2901
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2902
  ret i8* %7, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2904 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %1, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()) #12, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()) #12, !dbg !2912
  call void @llvm.dbg.value(metadata i8 58, metadata !2813, metadata !DIExpression()) #12, !dbg !2913
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2915, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1480, metadata !DIExpression()) #12, !dbg !2917
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()) #12, !dbg !2919
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()) #12, !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()) #12, !dbg !2921
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata i32* %5, metadata !1485, metadata !DIExpression()) #12, !dbg !2923
  call void @llvm.dbg.value(metadata i32 26, metadata !1487, metadata !DIExpression()) #12, !dbg !2924
  %6 = load i32, i32* %5, align 4, !dbg !2925, !tbaa !867
  %7 = or i32 %6, 67108864, !dbg !2926
  store i32 %7, i32* %5, align 4, !dbg !2926, !tbaa !867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2916
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2928
  ret i8* %8, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2930 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %1, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8* %2, metadata !2934, metadata !DIExpression()), !dbg !2940
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2941
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()) #12, !dbg !2943
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2936
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2936, !alias.scope !2944
  %8 = icmp eq i32 %1, 10, !dbg !2947
  br i1 %8, label %9, label %10, !dbg !2948

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2949, !noalias !2944
  unreachable, !dbg !2949

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2936
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2942
  store i32 %1, i32* %11, align 8, !dbg !2942
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2942
  %13 = bitcast i32* %12 to i8*, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2942
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1480, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()), !dbg !2955
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata i32* %14, metadata !1485, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 26, metadata !1487, metadata !DIExpression()), !dbg !2958
  %15 = load i32, i32* %14, align 4, !dbg !2959, !tbaa !867
  %16 = or i32 %15, 67108864, !dbg !2960
  store i32 %16, i32* %14, align 4, !dbg !2960, !tbaa !867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2950
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2962
  ret i8* %17, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2964 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %2, metadata !2970, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %3, metadata !2971, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()) #12, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()) #12, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !2982, metadata !DIExpression()) #12, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %3, metadata !2983, metadata !DIExpression()) #12, !dbg !2990
  call void @llvm.dbg.value(metadata i64 -1, metadata !2984, metadata !DIExpression()) #12, !dbg !2991
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2993, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1529, metadata !DIExpression()) #12, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !1530, metadata !DIExpression()) #12, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %2, metadata !1531, metadata !DIExpression()) #12, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1529, metadata !DIExpression()) #12, !dbg !2995
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2999
  store i32 10, i32* %7, align 8, !dbg !3000, !tbaa !1461
  %8 = icmp ne i8* %1, null, !dbg !3001
  %9 = icmp ne i8* %2, null, !dbg !3002
  %10 = and i1 %8, %9, !dbg !3003
  br i1 %10, label %12, label %11, !dbg !3003

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3004
  unreachable, !dbg !3004

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3005
  store i8* %1, i8** %13, align 8, !dbg !3006, !tbaa !1547
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3007
  store i8* %2, i8** %14, align 8, !dbg !3008, !tbaa !1550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2994
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3009
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3010
  ret i8* %15, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2977 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8* %2, metadata !2982, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %3, metadata !2983, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %4, metadata !2984, metadata !DIExpression()), !dbg !3016
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3018, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2985, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1529, metadata !DIExpression()) #12, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %1, metadata !1530, metadata !DIExpression()) #12, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %2, metadata !1531, metadata !DIExpression()) #12, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1529, metadata !DIExpression()) #12, !dbg !3020
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3024
  store i32 10, i32* %8, align 8, !dbg !3025, !tbaa !1461
  %9 = icmp ne i8* %1, null, !dbg !3026
  %10 = icmp ne i8* %2, null, !dbg !3027
  %11 = and i1 %9, %10, !dbg !3028
  br i1 %11, label %13, label %12, !dbg !3028

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3029
  unreachable, !dbg !3029

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3030
  store i8* %1, i8** %14, align 8, !dbg !3031, !tbaa !1547
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3032
  store i8* %2, i8** %15, align 8, !dbg !3033, !tbaa !1550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2985, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3035
  ret i8* %16, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3037 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3043, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !2968, metadata !DIExpression()) #12, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()) #12, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %1, metadata !2970, metadata !DIExpression()) #12, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %2, metadata !2971, metadata !DIExpression()) #12, !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()) #12, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()) #12, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %1, metadata !2982, metadata !DIExpression()) #12, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()) #12, !dbg !3056
  call void @llvm.dbg.value(metadata i64 -1, metadata !2984, metadata !DIExpression()) #12, !dbg !3057
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3058
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3059, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1529, metadata !DIExpression()) #12, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %0, metadata !1530, metadata !DIExpression()) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %1, metadata !1531, metadata !DIExpression()) #12, !dbg !3064
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1529, metadata !DIExpression()) #12, !dbg !3061
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3065
  store i32 10, i32* %6, align 8, !dbg !3066, !tbaa !1461
  %7 = icmp ne i8* %0, null, !dbg !3067
  %8 = icmp ne i8* %1, null, !dbg !3068
  %9 = and i1 %7, %8, !dbg !3069
  br i1 %9, label %11, label %10, !dbg !3069

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3070
  unreachable, !dbg !3070

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3071
  store i8* %0, i8** %12, align 8, !dbg !3072, !tbaa !1547
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3073
  store i8* %1, i8** %13, align 8, !dbg !3074, !tbaa !1550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3060
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3076
  ret i8* %14, !dbg !3077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3078 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %2, metadata !3084, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %3, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()) #12, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()) #12, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %1, metadata !2982, metadata !DIExpression()) #12, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()) #12, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %3, metadata !2984, metadata !DIExpression()) #12, !dbg !3095
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3097, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1529, metadata !DIExpression()) #12, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %0, metadata !1530, metadata !DIExpression()) #12, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %1, metadata !1531, metadata !DIExpression()) #12, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1529, metadata !DIExpression()) #12, !dbg !3099
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3103
  store i32 10, i32* %7, align 8, !dbg !3104, !tbaa !1461
  %8 = icmp ne i8* %0, null, !dbg !3105
  %9 = icmp ne i8* %1, null, !dbg !3106
  %10 = and i1 %8, %9, !dbg !3107
  br i1 %10, label %12, label %11, !dbg !3107

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3108
  unreachable, !dbg !3108

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3109
  store i8* %0, i8** %13, align 8, !dbg !3110, !tbaa !1547
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3111
  store i8* %1, i8** %14, align 8, !dbg !3112, !tbaa !1550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2985, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3098
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3114
  ret i8* %15, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3120, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %1, metadata !3121, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %2, metadata !3122, metadata !DIExpression()), !dbg !3125
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3126
  ret i8* %4, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 0, metadata !3120, metadata !DIExpression()) #12, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %0, metadata !3121, metadata !DIExpression()) #12, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()) #12, !dbg !3139
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3140
  ret i8* %3, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 %0, metadata !3120, metadata !DIExpression()) #12, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %1, metadata !3121, metadata !DIExpression()) #12, !dbg !3152
  call void @llvm.dbg.value(metadata i64 -1, metadata !3122, metadata !DIExpression()) #12, !dbg !3153
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3154
  ret i8* %3, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 0, metadata !3146, metadata !DIExpression()) #12, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #12, !dbg !3164
  call void @llvm.dbg.value(metadata i32 0, metadata !3120, metadata !DIExpression()) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %0, metadata !3121, metadata !DIExpression()) #12, !dbg !3167
  call void @llvm.dbg.value(metadata i64 -1, metadata !3122, metadata !DIExpression()) #12, !dbg !3168
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3169
  ret i8* %2, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname_len(i8*, i32, i8*, i32 (i8*, i8*)* nocapture, i64) local_unnamed_addr #7 !dbg !3171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %1, metadata !3179, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3180, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3181, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %4, metadata !3182, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 -1, metadata !3186, metadata !DIExpression()), !dbg !3204
  %6 = tail call i32* @__errno_location() #17, !dbg !3205
  %7 = load i32, i32* %6, align 4, !dbg !3205, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %7, metadata !3187, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 238328, metadata !3192, metadata !DIExpression()), !dbg !3207
  %8 = tail call i64 @strlen(i8* %0) #14, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %8, metadata !3183, metadata !DIExpression()), !dbg !3209
  %9 = sext i32 %1 to i64, !dbg !3210
  %10 = add i64 %9, %4, !dbg !3212
  %11 = icmp ult i64 %8, %10, !dbg !3213
  br i1 %11, label %48, label %12, !dbg !3214

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %8, %10, !dbg !3215
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %14, metadata !3217, metadata !DIExpression()) #12, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %4, metadata !3222, metadata !DIExpression()) #12, !dbg !3225
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.97, i64 0, i64 0)) #14, !dbg !3226
  %16 = icmp ult i64 %15, %4, !dbg !3227
  br i1 %16, label %48, label %17, !dbg !3228

; <label>:17:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i8* %14, metadata !3184, metadata !DIExpression()), !dbg !3229
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #12, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.randint_source* %18, metadata !3188, metadata !DIExpression()), !dbg !3231
  %19 = icmp eq %struct.randint_source* %18, null, !dbg !3232
  br i1 %19, label %51, label %20, !dbg !3234

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()), !dbg !3235
  %21 = icmp eq i64 %4, 0
  br label %24, !dbg !3236

; <label>:22:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i32 %41, metadata !3185, metadata !DIExpression()), !dbg !3235
  %23 = icmp ult i32 %41, 238328, !dbg !3237
  br i1 %23, label %24, label %42, !dbg !3236, !llvm.loop !3238

; <label>:24:                                     ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %41, %22 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !3185, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 0, metadata !3193, metadata !DIExpression()), !dbg !3240
  br i1 %21, label %34, label %26, !dbg !3241

; <label>:26:                                     ; preds = %24, %26
  %27 = phi i64 [ %32, %26 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !3193, metadata !DIExpression()), !dbg !3240
  %28 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #12, !dbg !3243
  %29 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %28, !dbg !3245
  %30 = load i8, i8* %29, align 1, !dbg !3245, !tbaa !895
  %31 = getelementptr inbounds i8, i8* %14, i64 %27, !dbg !3246
  store i8 %30, i8* %31, align 1, !dbg !3247, !tbaa !895
  %32 = add nuw i64 %27, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %32, metadata !3193, metadata !DIExpression()), !dbg !3240
  %33 = icmp eq i64 %32, %4, !dbg !3249
  br i1 %33, label %34, label %26, !dbg !3241, !llvm.loop !3250

; <label>:34:                                     ; preds = %26, %24
  %35 = tail call i32 %3(i8* %0, i8* %2) #12, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %35, metadata !3186, metadata !DIExpression()), !dbg !3204
  %36 = icmp sgt i32 %35, -1, !dbg !3253
  br i1 %36, label %37, label %38, !dbg !3255

; <label>:37:                                     ; preds = %34
  store i32 %7, i32* %6, align 4, !dbg !3256, !tbaa !867
  br label %44, !dbg !3258

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %6, align 4, !dbg !3259, !tbaa !867
  %40 = icmp eq i32 %39, 17, !dbg !3261
  %41 = add nuw nsw i32 %25, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %41, metadata !3185, metadata !DIExpression()), !dbg !3235
  br i1 %40, label %22, label %44

; <label>:42:                                     ; preds = %22
  %43 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #12, !dbg !3263
  br label %48, !dbg !3264

; <label>:44:                                     ; preds = %38, %37
  %45 = phi i32 [ %7, %37 ], [ %39, %38 ], !dbg !3265
  %46 = phi i32 [ %35, %37 ], [ -1, %38 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !3197, metadata !DIExpression()), !dbg !3266
  %47 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #12, !dbg !3267
  br label %48, !dbg !3268

; <label>:48:                                     ; preds = %5, %12, %42, %44
  %49 = phi i32 [ %45, %44 ], [ 17, %42 ], [ 22, %12 ], [ 22, %5 ]
  %50 = phi i32 [ %46, %44 ], [ -1, %42 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %49, i32* %6, align 4, !dbg !3269, !tbaa !867
  br label %51, !dbg !3271

; <label>:51:                                     ; preds = %48, %17
  %52 = phi i32 [ -1, %17 ], [ %50, %48 ]
  ret i32 %52, !dbg !3271
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname_len(i8*, i32, i32, i32, i64) local_unnamed_addr #7 !dbg !3272 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %1, metadata !3277, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %2, metadata !3278, metadata !DIExpression()), !dbg !3284
  store i32 %2, i32* %6, align 4, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %3, metadata !3279, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %4, metadata !3280, metadata !DIExpression()), !dbg !3286
  %7 = icmp ult i32 %3, 3, !dbg !3287
  br i1 %7, label %9, label %8, !dbg !3287

; <label>:8:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15, !dbg !3288
  unreachable, !dbg !3288

; <label>:9:                                      ; preds = %5
  %10 = sext i32 %3 to i64, !dbg !3287
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3287
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3287
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3281, metadata !DIExpression()), !dbg !3292
  %13 = bitcast i32* %6 to i8*, !dbg !3293
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* nonnull %12, i64 %4), !dbg !3294
  ret i32 %14, !dbg !3295
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly, i8* nocapture readonly) #7 !dbg !3296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3298, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8* %1, metadata !3299, metadata !DIExpression()), !dbg !3302
  %3 = bitcast i8* %1 to i32*, !dbg !3303
  call void @llvm.dbg.value(metadata i32* %3, metadata !3300, metadata !DIExpression()), !dbg !3304
  %4 = load i32, i32* %3, align 4, !dbg !3305, !tbaa !867
  %5 = and i32 %4, -196, !dbg !3306
  %6 = or i32 %5, 194, !dbg !3307
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #12, !dbg !3308
  ret i32 %7, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly, i8* nocapture readnone) #7 !dbg !3310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3313, metadata !DIExpression()), !dbg !3315
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #12, !dbg !3316
  ret i32 %3, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8*, i8* nocapture readnone) #7 !dbg !3318 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3321, metadata !DIExpression()), !dbg !3360
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3361
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %4) #12, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !3322, metadata !DIExpression(DW_OP_deref)), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #12, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !3370, metadata !DIExpression()) #12, !dbg !3371
  %5 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %3) #12, !dbg !3374
  %6 = icmp eq i32 %5, 0, !dbg !3375
  %7 = tail call i32* @__errno_location() #17, !dbg !3376
  br i1 %6, label %11, label %8, !dbg !3377

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %7, align 4, !dbg !3378, !tbaa !867
  %10 = icmp eq i32 %9, 75, !dbg !3379
  br i1 %10, label %11, label %12, !dbg !3380

; <label>:11:                                     ; preds = %2, %8
  store i32 17, i32* %7, align 4, !dbg !3381, !tbaa !867
  br label %12, !dbg !3381

; <label>:12:                                     ; preds = %11, %8
  %13 = load i32, i32* %7, align 4, !dbg !3382, !tbaa !867
  %14 = icmp ne i32 %13, 2, !dbg !3383
  %15 = sext i1 %14 to i32, !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %4) #12, !dbg !3384
  ret i32 %15, !dbg !3385
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname(i8*, i32, i32, i32) local_unnamed_addr #7 !dbg !3386 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %1, metadata !3391, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %2, metadata !3392, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %3, metadata !3393, metadata !DIExpression()), !dbg !3397
  %6 = bitcast i32* %5 to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %1, metadata !3277, metadata !DIExpression()) #12, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %2, metadata !3278, metadata !DIExpression()) #12, !dbg !3401
  store i32 %2, i32* %5, align 4, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %3, metadata !3279, metadata !DIExpression()) #12, !dbg !3402
  call void @llvm.dbg.value(metadata i64 6, metadata !3280, metadata !DIExpression()) #12, !dbg !3403
  %7 = icmp ult i32 %3, 3, !dbg !3404
  br i1 %7, label %9, label %8, !dbg !3404

; <label>:8:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15, !dbg !3405
  unreachable, !dbg !3405

; <label>:9:                                      ; preds = %4
  %10 = sext i32 %3 to i64, !dbg !3404
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3404
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3404
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3281, metadata !DIExpression()) #12, !dbg !3406
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* nonnull %12, i64 6) #12, !dbg !3407
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !3408
  ret i32 %13, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname(i8*, i32, i8*, i32 (i8*, i8*)* nocapture) local_unnamed_addr #7 !dbg !3410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i32 %1, metadata !3415, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3417, metadata !DIExpression()), !dbg !3421
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6), !dbg !3422
  ret i32 %5, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3424 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3463, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %1, metadata !3464, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8* %2, metadata !3465, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* %3, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8** %4, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %5, metadata !3468, metadata !DIExpression()), !dbg !3474
  %7 = icmp eq i8* %1, null, !dbg !3475
  br i1 %7, label %10, label %8, !dbg !3477

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3478
  br label %12, !dbg !3478

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3479
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #12, !dbg !3480
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3480
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.105, i64 0, i64 0), i32 5) #12, !dbg !3481
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3481
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
  ], !dbg !3482

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3483
  unreachable, !dbg !3483

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #12, !dbg !3485
  %20 = load i8*, i8** %4, align 8, !dbg !3485, !tbaa !743
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3485
  br label %146, !dbg !3486

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.107, i64 0, i64 0), i32 5) #12, !dbg !3487
  %24 = load i8*, i8** %4, align 8, !dbg !3487, !tbaa !743
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3487
  %26 = load i8*, i8** %25, align 8, !dbg !3487, !tbaa !743
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3487
  br label %146, !dbg !3488

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #12, !dbg !3489
  %30 = load i8*, i8** %4, align 8, !dbg !3489, !tbaa !743
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3489
  %32 = load i8*, i8** %31, align 8, !dbg !3489, !tbaa !743
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3489
  %34 = load i8*, i8** %33, align 8, !dbg !3489, !tbaa !743
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3489
  br label %146, !dbg !3490

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #12, !dbg !3491
  %38 = load i8*, i8** %4, align 8, !dbg !3491, !tbaa !743
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3491
  %40 = load i8*, i8** %39, align 8, !dbg !3491, !tbaa !743
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3491
  %42 = load i8*, i8** %41, align 8, !dbg !3491, !tbaa !743
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3491
  %44 = load i8*, i8** %43, align 8, !dbg !3491, !tbaa !743
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3491
  br label %146, !dbg !3492

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #12, !dbg !3493
  %48 = load i8*, i8** %4, align 8, !dbg !3493, !tbaa !743
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3493
  %50 = load i8*, i8** %49, align 8, !dbg !3493, !tbaa !743
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3493
  %52 = load i8*, i8** %51, align 8, !dbg !3493, !tbaa !743
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3493
  %54 = load i8*, i8** %53, align 8, !dbg !3493, !tbaa !743
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3493
  %56 = load i8*, i8** %55, align 8, !dbg !3493, !tbaa !743
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3493
  br label %146, !dbg !3494

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #12, !dbg !3495
  %60 = load i8*, i8** %4, align 8, !dbg !3495, !tbaa !743
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3495
  %62 = load i8*, i8** %61, align 8, !dbg !3495, !tbaa !743
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3495
  %64 = load i8*, i8** %63, align 8, !dbg !3495, !tbaa !743
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3495
  %66 = load i8*, i8** %65, align 8, !dbg !3495, !tbaa !743
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3495
  %68 = load i8*, i8** %67, align 8, !dbg !3495, !tbaa !743
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3495
  %70 = load i8*, i8** %69, align 8, !dbg !3495, !tbaa !743
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3495
  br label %146, !dbg !3496

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #12, !dbg !3497
  %74 = load i8*, i8** %4, align 8, !dbg !3497, !tbaa !743
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3497
  %76 = load i8*, i8** %75, align 8, !dbg !3497, !tbaa !743
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3497
  %78 = load i8*, i8** %77, align 8, !dbg !3497, !tbaa !743
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3497
  %80 = load i8*, i8** %79, align 8, !dbg !3497, !tbaa !743
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3497
  %82 = load i8*, i8** %81, align 8, !dbg !3497, !tbaa !743
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3497
  %84 = load i8*, i8** %83, align 8, !dbg !3497, !tbaa !743
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3497
  %86 = load i8*, i8** %85, align 8, !dbg !3497, !tbaa !743
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3497
  br label %146, !dbg !3498

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #12, !dbg !3499
  %90 = load i8*, i8** %4, align 8, !dbg !3499, !tbaa !743
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3499
  %92 = load i8*, i8** %91, align 8, !dbg !3499, !tbaa !743
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3499
  %94 = load i8*, i8** %93, align 8, !dbg !3499, !tbaa !743
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3499
  %96 = load i8*, i8** %95, align 8, !dbg !3499, !tbaa !743
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3499
  %98 = load i8*, i8** %97, align 8, !dbg !3499, !tbaa !743
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3499
  %100 = load i8*, i8** %99, align 8, !dbg !3499, !tbaa !743
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3499
  %102 = load i8*, i8** %101, align 8, !dbg !3499, !tbaa !743
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3499
  %104 = load i8*, i8** %103, align 8, !dbg !3499, !tbaa !743
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3499
  br label %146, !dbg !3500

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #12, !dbg !3501
  %108 = load i8*, i8** %4, align 8, !dbg !3501, !tbaa !743
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3501
  %110 = load i8*, i8** %109, align 8, !dbg !3501, !tbaa !743
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3501
  %112 = load i8*, i8** %111, align 8, !dbg !3501, !tbaa !743
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3501
  %114 = load i8*, i8** %113, align 8, !dbg !3501, !tbaa !743
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3501
  %116 = load i8*, i8** %115, align 8, !dbg !3501, !tbaa !743
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3501
  %118 = load i8*, i8** %117, align 8, !dbg !3501, !tbaa !743
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3501
  %120 = load i8*, i8** %119, align 8, !dbg !3501, !tbaa !743
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3501
  %122 = load i8*, i8** %121, align 8, !dbg !3501, !tbaa !743
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3501
  %124 = load i8*, i8** %123, align 8, !dbg !3501, !tbaa !743
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3501
  br label %146, !dbg !3502

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #12, !dbg !3503
  %128 = load i8*, i8** %4, align 8, !dbg !3503, !tbaa !743
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3503
  %130 = load i8*, i8** %129, align 8, !dbg !3503, !tbaa !743
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3503
  %132 = load i8*, i8** %131, align 8, !dbg !3503, !tbaa !743
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3503
  %134 = load i8*, i8** %133, align 8, !dbg !3503, !tbaa !743
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3503
  %136 = load i8*, i8** %135, align 8, !dbg !3503, !tbaa !743
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3503
  %138 = load i8*, i8** %137, align 8, !dbg !3503, !tbaa !743
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3503
  %140 = load i8*, i8** %139, align 8, !dbg !3503, !tbaa !743
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3503
  %142 = load i8*, i8** %141, align 8, !dbg !3503, !tbaa !743
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3503
  %144 = load i8*, i8** %143, align 8, !dbg !3503, !tbaa !743
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3503
  br label %146, !dbg !3504

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3506 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3510, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8* %1, metadata !3511, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8* %2, metadata !3512, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8** %4, metadata !3514, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 0, metadata !3515, metadata !DIExpression()), !dbg !3521
  br label %6, !dbg !3522

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3524
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3526
  %9 = load i8*, i8** %8, align 8, !dbg !3526, !tbaa !743
  %10 = icmp eq i8* %9, null, !dbg !3527
  %11 = add i64 %7, 1, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %11, metadata !3515, metadata !DIExpression()), !dbg !3521
  br i1 %10, label %12, label %6, !dbg !3527, !llvm.loop !3529

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3515, metadata !DIExpression()), !dbg !3521
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3531
  ret void, !dbg !3532
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3533 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i8* %1, metadata !3545, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %2, metadata !3546, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %3, metadata !3547, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3548, metadata !DIExpression()), !dbg !3556
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3557
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3557
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3550, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 0, metadata !3549, metadata !DIExpression()), !dbg !3559
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3549, metadata !DIExpression()), !dbg !3559
  %11 = load i32, i32* %8, align 8, !dbg !3560
  %12 = icmp ult i32 %11, 41, !dbg !3560
  br i1 %12, label %13, label %18, !dbg !3560

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3560
  %15 = sext i32 %11 to i64, !dbg !3560
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3560
  %17 = add i32 %11, 8, !dbg !3560
  store i32 %17, i32* %8, align 8, !dbg !3560
  br label %21, !dbg !3560

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3560
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3560
  store i8* %20, i8** %10, align 8, !dbg !3560
  br label %21, !dbg !3560

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3560
  %25 = load i8*, i8** %24, align 8, !dbg !3560
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3563
  store i8* %25, i8** %26, align 16, !dbg !3564, !tbaa !743
  %27 = icmp eq i8* %25, null, !dbg !3565
  br i1 %27, label %30, label %28, !dbg !3566

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 1, metadata !3549, metadata !DIExpression()), !dbg !3559
  %29 = icmp ult i32 %22, 41, !dbg !3560
  br i1 %29, label %35, label %32, !dbg !3560

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3567
  call void @llvm.dbg.value(metadata i64 %31, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %31, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3569
  ret void, !dbg !3569

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3560
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3560
  store i8* %34, i8** %10, align 8, !dbg !3560
  br label %40, !dbg !3560

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3560
  %37 = sext i32 %22 to i64, !dbg !3560
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3560
  %39 = add i32 %22, 8, !dbg !3560
  store i32 %39, i32* %8, align 8, !dbg !3560
  br label %40, !dbg !3560

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3560
  %44 = load i8*, i8** %43, align 8, !dbg !3560
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3563
  store i8* %44, i8** %45, align 8, !dbg !3564, !tbaa !743
  %46 = icmp eq i8* %44, null, !dbg !3565
  br i1 %46, label %30, label %47, !dbg !3566

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 2, metadata !3549, metadata !DIExpression()), !dbg !3559
  %48 = icmp ult i32 %41, 41, !dbg !3560
  br i1 %48, label %52, label %49, !dbg !3560

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3560
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3560
  store i8* %51, i8** %10, align 8, !dbg !3560
  br label %57, !dbg !3560

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3560
  %54 = sext i32 %41 to i64, !dbg !3560
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3560
  %56 = add i32 %41, 8, !dbg !3560
  store i32 %56, i32* %8, align 8, !dbg !3560
  br label %57, !dbg !3560

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3560
  %61 = load i8*, i8** %60, align 8, !dbg !3560
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3563
  store i8* %61, i8** %62, align 16, !dbg !3564, !tbaa !743
  %63 = icmp eq i8* %61, null, !dbg !3565
  br i1 %63, label %30, label %64, !dbg !3566

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 3, metadata !3549, metadata !DIExpression()), !dbg !3559
  %65 = icmp ult i32 %58, 41, !dbg !3560
  br i1 %65, label %69, label %66, !dbg !3560

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3560
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3560
  store i8* %68, i8** %10, align 8, !dbg !3560
  br label %74, !dbg !3560

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3560
  %71 = sext i32 %58 to i64, !dbg !3560
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3560
  %73 = add i32 %58, 8, !dbg !3560
  store i32 %73, i32* %8, align 8, !dbg !3560
  br label %74, !dbg !3560

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3560
  %78 = load i8*, i8** %77, align 8, !dbg !3560
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3563
  store i8* %78, i8** %79, align 8, !dbg !3564, !tbaa !743
  %80 = icmp eq i8* %78, null, !dbg !3565
  br i1 %80, label %30, label %81, !dbg !3566

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 4, metadata !3549, metadata !DIExpression()), !dbg !3559
  %82 = icmp ult i32 %75, 41, !dbg !3560
  br i1 %82, label %86, label %83, !dbg !3560

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3560
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3560
  store i8* %85, i8** %10, align 8, !dbg !3560
  br label %91, !dbg !3560

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3560
  %88 = sext i32 %75 to i64, !dbg !3560
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3560
  %90 = add i32 %75, 8, !dbg !3560
  store i32 %90, i32* %8, align 8, !dbg !3560
  br label %91, !dbg !3560

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3560
  %95 = load i8*, i8** %94, align 8, !dbg !3560
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3563
  store i8* %95, i8** %96, align 16, !dbg !3564, !tbaa !743
  %97 = icmp eq i8* %95, null, !dbg !3565
  br i1 %97, label %30, label %98, !dbg !3566

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 5, metadata !3549, metadata !DIExpression()), !dbg !3559
  %99 = icmp ult i32 %92, 41, !dbg !3560
  br i1 %99, label %103, label %100, !dbg !3560

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3560
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3560
  store i8* %102, i8** %10, align 8, !dbg !3560
  br label %108, !dbg !3560

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3560
  %105 = sext i32 %92 to i64, !dbg !3560
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3560
  %107 = add i32 %92, 8, !dbg !3560
  store i32 %107, i32* %8, align 8, !dbg !3560
  br label %108, !dbg !3560

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3560
  %111 = load i8*, i8** %110, align 8, !dbg !3560
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3563
  store i8* %111, i8** %112, align 8, !dbg !3564, !tbaa !743
  %113 = icmp eq i8* %111, null, !dbg !3565
  br i1 %113, label %30, label %114, !dbg !3566

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 6, metadata !3549, metadata !DIExpression()), !dbg !3559
  %115 = load i8*, i8** %10, align 8, !dbg !3560
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3560
  store i8* %116, i8** %10, align 8, !dbg !3560
  %117 = bitcast i8* %115 to i8**, !dbg !3560
  %118 = load i8*, i8** %117, align 8, !dbg !3560
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3563
  store i8* %118, i8** %119, align 16, !dbg !3564, !tbaa !743
  %120 = icmp eq i8* %118, null, !dbg !3565
  br i1 %120, label %30, label %121, !dbg !3566

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 7, metadata !3549, metadata !DIExpression()), !dbg !3559
  %122 = load i8*, i8** %10, align 8, !dbg !3560
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3560
  store i8* %123, i8** %10, align 8, !dbg !3560
  %124 = bitcast i8* %122 to i8**, !dbg !3560
  %125 = load i8*, i8** %124, align 8, !dbg !3560
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3563
  store i8* %125, i8** %126, align 8, !dbg !3564, !tbaa !743
  %127 = icmp eq i8* %125, null, !dbg !3565
  br i1 %127, label %30, label %128, !dbg !3566

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 8, metadata !3549, metadata !DIExpression()), !dbg !3559
  %129 = load i8*, i8** %10, align 8, !dbg !3560
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3560
  store i8* %130, i8** %10, align 8, !dbg !3560
  %131 = bitcast i8* %129 to i8**, !dbg !3560
  %132 = load i8*, i8** %131, align 8, !dbg !3560
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3563
  store i8* %132, i8** %133, align 16, !dbg !3564, !tbaa !743
  %134 = icmp eq i8* %132, null, !dbg !3565
  br i1 %134, label %30, label %135, !dbg !3566

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 9, metadata !3549, metadata !DIExpression()), !dbg !3559
  %136 = load i8*, i8** %10, align 8, !dbg !3560
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3560
  store i8* %137, i8** %10, align 8, !dbg !3560
  %138 = bitcast i8* %136 to i8**, !dbg !3560
  %139 = load i8*, i8** %138, align 8, !dbg !3560
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3563
  store i8* %139, i8** %140, align 8, !dbg !3564, !tbaa !743
  %141 = icmp eq i8* %139, null, !dbg !3565
  %142 = select i1 %141, i64 9, i64 10, !dbg !3566
  br label %30, !dbg !3566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3570 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3574, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3575, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %2, metadata !3576, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %3, metadata !3577, metadata !DIExpression()), !dbg !3587
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3588
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3578, metadata !DIExpression()), !dbg !3589
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3590
  call void @llvm.va_start(i8* nonnull %6), !dbg !3590
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3591
  call void @llvm.va_end(i8* nonnull %6), !dbg !3592
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3593
  ret void, !dbg !3593
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3594 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #12, !dbg !3595
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.119, i64 0, i64 0)) #12, !dbg !3595
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #12, !dbg !3596
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.121, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.122, i64 0, i64 0)) #12, !dbg !3596
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.123, i64 0, i64 0), i32 5) #12, !dbg !3597
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3597, !tbaa !743
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3597
  ret void, !dbg !3598
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3599 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3603, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3604, metadata !DIExpression()), !dbg !3606
  %3 = udiv i64 9223372036854775807, %1, !dbg !3607
  %4 = icmp ult i64 %3, %0, !dbg !3607
  br i1 %4, label %5, label %6, !dbg !3609

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3610
  unreachable, !dbg !3610

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %7, metadata !3612, metadata !DIExpression()) #12, !dbg !3619
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %8, metadata !3618, metadata !DIExpression()) #12, !dbg !3622
  %9 = icmp eq i8* %8, null, !dbg !3623
  %10 = icmp ne i64 %7, 0, !dbg !3625
  %11 = and i1 %10, %9, !dbg !3626
  br i1 %11, label %12, label %13, !dbg !3626

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3627
  unreachable, !dbg !3627

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3613 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3612, metadata !DIExpression()), !dbg !3629
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %2, metadata !3618, metadata !DIExpression()), !dbg !3631
  %3 = icmp eq i8* %2, null, !dbg !3632
  %4 = icmp ne i64 %0, 0, !dbg !3633
  %5 = and i1 %4, %3, !dbg !3634
  br i1 %5, label %6, label %7, !dbg !3634

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3635
  unreachable, !dbg !3635

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3636
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3641, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %2, metadata !3643, metadata !DIExpression()), !dbg !3646
  %4 = udiv i64 9223372036854775807, %2, !dbg !3647
  %5 = icmp ult i64 %4, %1, !dbg !3647
  br i1 %5, label %6, label %7, !dbg !3649

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3650
  unreachable, !dbg !3650

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #12, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %8, metadata !3657, metadata !DIExpression()) #12, !dbg !3660
  %9 = icmp eq i64 %8, 0, !dbg !3661
  %10 = icmp ne i8* %0, null, !dbg !3663
  %11 = and i1 %10, %9, !dbg !3664
  br i1 %11, label %12, label %13, !dbg !3664

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3665
  br label %19, !dbg !3667

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %14, metadata !3652, metadata !DIExpression()) #12, !dbg !3658
  %15 = icmp eq i8* %14, null, !dbg !3669
  %16 = icmp ne i64 %8, 0, !dbg !3671
  %17 = and i1 %16, %15, !dbg !3672
  br i1 %17, label %18, label %19, !dbg !3672

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3673
  unreachable, !dbg !3673

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3674
  ret i8* %20, !dbg !3675
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3657, metadata !DIExpression()), !dbg !3677
  %3 = icmp eq i64 %1, 0, !dbg !3678
  %4 = icmp ne i8* %0, null, !dbg !3679
  %5 = and i1 %4, %3, !dbg !3680
  br i1 %5, label %6, label %7, !dbg !3680

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3681
  br label %13, !dbg !3682

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %8, metadata !3652, metadata !DIExpression()), !dbg !3676
  %9 = icmp eq i8* %8, null, !dbg !3684
  %10 = icmp ne i64 %1, 0, !dbg !3685
  %11 = and i1 %10, %9, !dbg !3686
  br i1 %11, label %12, label %13, !dbg !3686

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3687
  unreachable, !dbg !3687

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3688
  ret i8* %14, !dbg !3689
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !220 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64* %1, metadata !226, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %2, metadata !227, metadata !DIExpression()), !dbg !3692
  %4 = load i64, i64* %1, align 8, !dbg !3693, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %4, metadata !228, metadata !DIExpression()), !dbg !3694
  %5 = icmp eq i8* %0, null, !dbg !3695
  br i1 %5, label %6, label %20, !dbg !3697

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3698
  br i1 %7, label %8, label %13, !dbg !3701

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %9, metadata !228, metadata !DIExpression()), !dbg !3694
  %10 = icmp ugt i64 %2, 128, !dbg !3704
  %11 = zext i1 %10 to i64, !dbg !3704
  %12 = add nuw nsw i64 %9, %11, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %12, metadata !228, metadata !DIExpression()), !dbg !3694
  br label %13, !dbg !3706

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3707
  call void @llvm.dbg.value(metadata i64 %14, metadata !228, metadata !DIExpression()), !dbg !3694
  %15 = udiv i64 9223372036854775807, %2, !dbg !3708
  %16 = icmp ult i64 %15, %14, !dbg !3708
  br i1 %16, label %19, label %17, !dbg !3710

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !228, metadata !DIExpression()), !dbg !3694
  store i64 %14, i64* %1, align 8, !dbg !3711, !tbaa !2502
  %18 = mul i64 %14, %2, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #12, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %28, metadata !3657, metadata !DIExpression()) #12, !dbg !3715
  br label %31, !dbg !3716

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3717
  unreachable, !dbg !3717

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3718
  %22 = icmp ugt i64 %21, %4, !dbg !3721
  br i1 %22, label %24, label %23, !dbg !3722

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3723
  unreachable, !dbg !3723

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3724
  %26 = add i64 %4, 1, !dbg !3725
  %27 = add i64 %26, %25, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %27, metadata !228, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %27, metadata !228, metadata !DIExpression()), !dbg !3694
  store i64 %27, i64* %1, align 8, !dbg !3711, !tbaa !2502
  %28 = mul i64 %27, %2, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #12, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %28, metadata !3657, metadata !DIExpression()) #12, !dbg !3715
  %29 = icmp eq i64 %28, 0, !dbg !3727
  br i1 %29, label %30, label %31, !dbg !3716

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3728
  br label %38, !dbg !3729

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %33, metadata !3652, metadata !DIExpression()) #12, !dbg !3713
  %34 = icmp eq i8* %33, null, !dbg !3731
  %35 = icmp ne i64 %32, 0, !dbg !3732
  %36 = and i1 %35, %34, !dbg !3733
  br i1 %36, label %37, label %38, !dbg !3733

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3734
  unreachable, !dbg !3734

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3735
  ret i8* %39, !dbg !3736
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %0, metadata !3612, metadata !DIExpression()) #12, !dbg !3741
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %2, metadata !3618, metadata !DIExpression()) #12, !dbg !3744
  %3 = icmp eq i8* %2, null, !dbg !3745
  %4 = icmp ne i64 %0, 0, !dbg !3746
  %5 = and i1 %4, %3, !dbg !3747
  br i1 %5, label %6, label %7, !dbg !3747

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3748
  unreachable, !dbg !3748

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3750 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3754, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64* %1, metadata !3755, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()) #12, !dbg !3758
  call void @llvm.dbg.value(metadata i64* %1, metadata !226, metadata !DIExpression()) #12, !dbg !3760
  call void @llvm.dbg.value(metadata i64 1, metadata !227, metadata !DIExpression()) #12, !dbg !3761
  %3 = load i64, i64* %1, align 8, !dbg !3762, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %3, metadata !228, metadata !DIExpression()) #12, !dbg !3763
  %4 = icmp eq i8* %0, null, !dbg !3764
  br i1 %4, label %5, label %12, !dbg !3765

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3766
  br i1 %6, label %9, label %7, !dbg !3767

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !228, metadata !DIExpression()) #12, !dbg !3763
  %8 = icmp slt i64 %3, 0, !dbg !3768
  br i1 %8, label %11, label %9, !dbg !3769

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !228, metadata !DIExpression()) #12, !dbg !3763
  store i64 %10, i64* %1, align 8, !dbg !3770, !tbaa !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #12, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %18, metadata !3657, metadata !DIExpression()) #12, !dbg !3773
  br label %21, !dbg !3774

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3775
  unreachable, !dbg !3775

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3776
  br i1 %13, label %15, label %14, !dbg !3777

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3778
  unreachable, !dbg !3778

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3779
  %17 = add i64 %3, 1, !dbg !3780
  %18 = add i64 %17, %16, !dbg !3781
  call void @llvm.dbg.value(metadata i64 %18, metadata !228, metadata !DIExpression()) #12, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %18, metadata !228, metadata !DIExpression()) #12, !dbg !3763
  store i64 %18, i64* %1, align 8, !dbg !3770, !tbaa !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #12, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %18, metadata !3657, metadata !DIExpression()) #12, !dbg !3773
  %19 = icmp eq i64 %18, 0, !dbg !3782
  br i1 %19, label %20, label %21, !dbg !3774

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3783
  br label %28, !dbg !3784

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3785
  call void @llvm.dbg.value(metadata i8* %23, metadata !3652, metadata !DIExpression()) #12, !dbg !3771
  %24 = icmp eq i8* %23, null, !dbg !3786
  %25 = icmp ne i64 %22, 0, !dbg !3787
  %26 = and i1 %25, %24, !dbg !3788
  br i1 %26, label %27, label %28, !dbg !3788

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3789
  unreachable, !dbg !3789

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3790
  ret i8* %29, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3792 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %0, metadata !3612, metadata !DIExpression()) #12, !dbg !3796
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3798
  call void @llvm.dbg.value(metadata i8* %2, metadata !3618, metadata !DIExpression()) #12, !dbg !3799
  %3 = icmp eq i8* %2, null, !dbg !3800
  %4 = icmp ne i64 %0, 0, !dbg !3801
  %5 = and i1 %4, %3, !dbg !3802
  br i1 %5, label %6, label %7, !dbg !3802

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3803
  unreachable, !dbg !3803

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3804
  ret i8* %2, !dbg !3805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3806 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3809, metadata !DIExpression()), !dbg !3812
  %3 = udiv i64 9223372036854775807, %1, !dbg !3813
  %4 = icmp ult i64 %3, %0, !dbg !3813
  br i1 %4, label %8, label %5, !dbg !3815

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %6, metadata !3810, metadata !DIExpression()), !dbg !3817
  %7 = icmp eq i8* %6, null, !dbg !3818
  br i1 %7, label %8, label %9, !dbg !3819

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3820
  unreachable, !dbg !3820

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3822 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %1, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()) #12, !dbg !3830
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %3, metadata !3618, metadata !DIExpression()) #12, !dbg !3833
  %4 = icmp eq i8* %3, null, !dbg !3834
  %5 = icmp ne i64 %1, 0, !dbg !3835
  %6 = and i1 %5, %4, !dbg !3836
  br i1 %6, label %7, label %8, !dbg !3836

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3837
  unreachable, !dbg !3837

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3838
  ret i8* %3, !dbg !3839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3840 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()), !dbg !3843
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3844
  %3 = add i64 %2, 1, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !3826, metadata !DIExpression()) #12, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %3, metadata !3827, metadata !DIExpression()) #12, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %3, metadata !3612, metadata !DIExpression()) #12, !dbg !3849
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %4, metadata !3618, metadata !DIExpression()) #12, !dbg !3852
  %5 = icmp eq i8* %4, null, !dbg !3853
  %6 = icmp ne i64 %3, 0, !dbg !3854
  %7 = and i1 %6, %5, !dbg !3855
  br i1 %7, label %8, label %9, !dbg !3855

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3856
  unreachable, !dbg !3856

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3857
  ret i8* %4, !dbg !3858
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3859 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3861, !tbaa !867
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #12, !dbg !3862
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #12, !dbg !3863
  tail call void @abort() #15, !dbg !3864
  unreachable, !dbg !3864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3865 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3868, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %1, metadata !3869, metadata !DIExpression()), !dbg !3875
  %3 = icmp eq i64 %0, 0, !dbg !3876
  %4 = icmp eq i64 %1, 0, !dbg !3877
  %5 = or i1 %3, %4, !dbg !3878
  br i1 %5, label %12, label %6, !dbg !3878

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %7, metadata !3871, metadata !DIExpression()), !dbg !3880
  %8 = udiv i64 %7, %1, !dbg !3881
  %9 = icmp eq i64 %8, %0, !dbg !3883
  br i1 %9, label %12, label %10, !dbg !3884

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3885
  store i32 12, i32* %11, align 4, !dbg !3887, !tbaa !867
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3868, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %13, metadata !3869, metadata !DIExpression()), !dbg !3875
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %15, metadata !3870, metadata !DIExpression()), !dbg !3889
  br label %16, !dbg !3890

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3891
  ret i8* %17, !dbg !3892
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3893 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3932, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i32 0, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 0, metadata !3935, metadata !DIExpression()), !dbg !3938
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3939
  call void @llvm.dbg.value(metadata i32 %2, metadata !3934, metadata !DIExpression()), !dbg !3940
  %3 = icmp slt i32 %2, 0, !dbg !3941
  br i1 %3, label %4, label %6, !dbg !3943

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3944
  br label %24, !dbg !3945

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3946
  %8 = icmp eq i32 %7, 0, !dbg !3946
  br i1 %8, label %13, label %9, !dbg !3948

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3949
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3950
  %12 = icmp eq i64 %11, -1, !dbg !3951
  br i1 %12, label %16, label %13, !dbg !3952

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3953
  %15 = icmp eq i32 %14, 0, !dbg !3953
  br i1 %15, label %16, label %18, !dbg !3954

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3933, metadata !DIExpression()), !dbg !3937
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3955
  call void @llvm.dbg.value(metadata i32 %21, metadata !3935, metadata !DIExpression()), !dbg !3938
  br label %24, !dbg !3956

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3957
  %20 = load i32, i32* %19, align 4, !dbg !3957, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %20, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %20, metadata !3933, metadata !DIExpression()), !dbg !3937
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3955
  call void @llvm.dbg.value(metadata i32 %21, metadata !3935, metadata !DIExpression()), !dbg !3938
  %22 = icmp eq i32 %20, 0, !dbg !3958
  br i1 %22, label %24, label %23, !dbg !3956

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3960, !tbaa !867
  call void @llvm.dbg.value(metadata i32 -1, metadata !3935, metadata !DIExpression()), !dbg !3938
  br label %24, !dbg !3962

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3963
  ret i32 %25, !dbg !3964
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3965 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4004, metadata !DIExpression()), !dbg !4005
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4006
  br i1 %2, label %6, label %3, !dbg !4008

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4009
  %5 = icmp eq i32 %4, 0, !dbg !4009
  br i1 %5, label %6, label %8, !dbg !4010

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4011
  br label %17, !dbg !4012

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4013, metadata !DIExpression()) #12, !dbg !4018
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4020
  %10 = load i32, i32* %9, align 8, !dbg !4020, !tbaa !1170
  %11 = and i32 %10, 256, !dbg !4022
  %12 = icmp eq i32 %11, 0, !dbg !4022
  br i1 %12, label %15, label %13, !dbg !4023

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4024
  br label %15, !dbg !4024

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4025
  br label %17, !dbg !4026

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4027
  ret i32 %18, !dbg !4028
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4029 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4069, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %2, metadata !4071, metadata !DIExpression()), !dbg !4077
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4078
  %5 = load i8*, i8** %4, align 8, !dbg !4078, !tbaa !4079
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4080
  %7 = load i8*, i8** %6, align 8, !dbg !4080, !tbaa !4081
  %8 = icmp eq i8* %5, %7, !dbg !4082
  br i1 %8, label %9, label %28, !dbg !4083

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4084
  %11 = load i8*, i8** %10, align 8, !dbg !4084, !tbaa !4085
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4086
  %13 = load i8*, i8** %12, align 8, !dbg !4086, !tbaa !4087
  %14 = icmp eq i8* %11, %13, !dbg !4088
  br i1 %14, label %15, label %28, !dbg !4089

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4090
  %17 = load i8*, i8** %16, align 8, !dbg !4090, !tbaa !4091
  %18 = icmp eq i8* %17, null, !dbg !4092
  br i1 %18, label %19, label %28, !dbg !4093

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4094
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %21, metadata !4072, metadata !DIExpression()), !dbg !4096
  %22 = icmp eq i64 %21, -1, !dbg !4097
  br i1 %22, label %30, label %23, !dbg !4099

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4100
  %25 = load i32, i32* %24, align 8, !dbg !4101, !tbaa !1170
  %26 = and i32 %25, -17, !dbg !4101
  store i32 %26, i32* %24, align 8, !dbg !4101, !tbaa !1170
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4102
  store i64 %21, i64* %27, align 8, !dbg !4103, !tbaa !4104
  br label %30, !dbg !4105

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4106
  br label %30, !dbg !4107

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4108
  ret i32 %31, !dbg !4109
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4110 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4127, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i8* %1, metadata !4128, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %2, metadata !4129, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4130, metadata !DIExpression()), !dbg !4139
  %6 = bitcast i32* %5 to i8*, !dbg !4140
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4140
  %7 = icmp eq i32* %0, null, !dbg !4141
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4143
  call void @llvm.dbg.value(metadata i32* %8, metadata !4127, metadata !DIExpression()), !dbg !4136
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %9, metadata !4131, metadata !DIExpression()), !dbg !4145
  %10 = icmp ugt i64 %9, -3, !dbg !4146
  %11 = icmp ne i64 %2, 0, !dbg !4147
  %12 = and i1 %11, %10, !dbg !4148
  br i1 %12, label %13, label %18, !dbg !4148

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4149
  br i1 %14, label %18, label %15, !dbg !4150

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4151, !tbaa !895
  call void @llvm.dbg.value(metadata i8 %16, metadata !4133, metadata !DIExpression()), !dbg !4152
  %17 = zext i8 %16 to i32, !dbg !4153
  store i32 %17, i32* %8, align 4, !dbg !4154, !tbaa !867
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4155
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4156
  ret i64 %19, !dbg !4156
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i8 1, metadata !4163, metadata !DIExpression()), !dbg !4166
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %2, metadata !4164, metadata !DIExpression()), !dbg !4168
  %3 = icmp eq i8* %2, null, !dbg !4169
  br i1 %3, label %11, label %4, !dbg !4171

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0)) #14, !dbg !4172
  %6 = icmp eq i32 %5, 0, !dbg !4177
  br i1 %6, label %10, label %7, !dbg !4178

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0)) #14, !dbg !4179
  %9 = icmp eq i32 %8, 0, !dbg !4180
  br i1 %9, label %10, label %11, !dbg !4181

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4163, metadata !DIExpression()), !dbg !4166
  br label %11, !dbg !4182

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4183
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4184 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4190
  call void @llvm.dbg.value(metadata i8* %1, metadata !4189, metadata !DIExpression()), !dbg !4191
  %2 = icmp eq i8* %1, null, !dbg !4192
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %3, metadata !4189, metadata !DIExpression()), !dbg !4191
  %4 = load i8, i8* %3, align 1, !dbg !4195, !tbaa !895
  %5 = icmp eq i8 %4, 0, !dbg !4199
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %6, metadata !4189, metadata !DIExpression()), !dbg !4191
  ret i8* %6, !dbg !4201
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_new(%struct.randread_source*) local_unnamed_addr #7 !dbg !4202 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4219, metadata !DIExpression()), !dbg !4221
  %2 = tail call noalias i8* @xmalloc(i64 24) #12, !dbg !4222
  %3 = bitcast i8* %2 to %struct.randint_source*, !dbg !4222
  call void @llvm.dbg.value(metadata %struct.randint_source* %3, metadata !4220, metadata !DIExpression()), !dbg !4223
  %4 = bitcast i8* %2 to %struct.randread_source**, !dbg !4224
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8, !dbg !4225, !tbaa !4226
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !4228
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 16, i1 false), !dbg !4229
  ret %struct.randint_source* %3, !dbg !4230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_all_new(i8*, i64) local_unnamed_addr #7 !dbg !4231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4239
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #12, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !4237, metadata !DIExpression()), !dbg !4241
  %4 = icmp eq %struct.randread_source* %3, null, !dbg !4242
  br i1 %4, label %10, label %5, !dbg !4242

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !4219, metadata !DIExpression()) #12, !dbg !4243
  %6 = tail call noalias i8* @xmalloc(i64 24) #12, !dbg !4245
  %7 = bitcast i8* %6 to %struct.randint_source*, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.randint_source* %7, metadata !4220, metadata !DIExpression()) #12, !dbg !4246
  %8 = bitcast i8* %6 to %struct.randread_source**, !dbg !4247
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8, !dbg !4248, !tbaa !4226
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !4249
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %9, i8 0, i64 16, i1 false) #12, !dbg !4250
  br label %10, !dbg !4242

; <label>:10:                                     ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ], !dbg !4242
  ret %struct.randint_source* %11, !dbg !4251
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly) local_unnamed_addr #11 !dbg !4252 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4258, metadata !DIExpression()), !dbg !4259
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4260
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4260, !tbaa !4226
  ret %struct.randread_source* %3, !dbg !4261
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @randint_genmax(%struct.randint_source* nocapture, i64) local_unnamed_addr #7 !dbg !4262 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4266, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4267, metadata !DIExpression()), !dbg !4286
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4287
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8, !dbg !4287, !tbaa !4226
  call void @llvm.dbg.value(metadata %struct.randread_source* %5, metadata !4268, metadata !DIExpression()), !dbg !4288
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1, !dbg !4289
  %7 = load i64, i64* %6, align 8, !dbg !4289, !tbaa !4290
  call void @llvm.dbg.value(metadata i64 %7, metadata !4269, metadata !DIExpression()), !dbg !4291
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2, !dbg !4292
  %9 = load i64, i64* %8, align 8, !dbg !4292, !tbaa !4293
  call void @llvm.dbg.value(metadata i64 %9, metadata !4270, metadata !DIExpression()), !dbg !4294
  %10 = add i64 %1, 1, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %10, metadata !4271, metadata !DIExpression()), !dbg !4296
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12, !dbg !4297

; <label>:12:                                     ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %53, %45 ], !dbg !4298
  %14 = phi i64 [ %7, %2 ], [ %50, %45 ], !dbg !4298
  call void @llvm.dbg.value(metadata i64 %14, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %13, metadata !4270, metadata !DIExpression()), !dbg !4294
  %15 = icmp ult i64 %13, %1, !dbg !4300
  br i1 %15, label %16, label %39, !dbg !4301

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i64 0, metadata !4272, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %13, metadata !4276, metadata !DIExpression()), !dbg !4303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !4304
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !4277, metadata !DIExpression()), !dbg !4305
  br label %17, !dbg !4306

; <label>:17:                                     ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ], !dbg !4307
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ], !dbg !4307
  call void @llvm.dbg.value(metadata i64 %19, metadata !4272, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %18, metadata !4276, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %18, metadata !4309, metadata !DIExpression()), !dbg !4314
  %20 = shl i64 %18, 8, !dbg !4316
  %21 = or i64 %20, 255, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %21, metadata !4276, metadata !DIExpression()), !dbg !4303
  %22 = add i64 %19, 1, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %22, metadata !4272, metadata !DIExpression()), !dbg !4302
  %23 = icmp ult i64 %21, %1, !dbg !4319
  br i1 %23, label %17, label %24, !dbg !4320, !llvm.loop !4321

; <label>:24:                                     ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #12, !dbg !4323
  call void @llvm.dbg.value(metadata i64 0, metadata !4272, metadata !DIExpression()), !dbg !4302
  br label %25, !dbg !4324

; <label>:25:                                     ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ], !dbg !4298
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ], !dbg !4298
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ], !dbg !4298
  call void @llvm.dbg.value(metadata i64 %28, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %27, metadata !4270, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i64 %26, metadata !4272, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %28, metadata !4309, metadata !DIExpression()), !dbg !4325
  %29 = shl i64 %28, 8, !dbg !4327
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26, !dbg !4328
  %31 = load i8, i8* %30, align 1, !dbg !4328, !tbaa !895
  %32 = zext i8 %31 to i64, !dbg !4328
  %33 = or i64 %29, %32, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %33, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %27, metadata !4309, metadata !DIExpression()), !dbg !4330
  %34 = shl i64 %27, 8, !dbg !4332
  %35 = or i64 %34, 255, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %35, metadata !4270, metadata !DIExpression()), !dbg !4294
  %36 = add i64 %26, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %36, metadata !4272, metadata !DIExpression()), !dbg !4302
  %37 = icmp ult i64 %35, %1, !dbg !4335
  br i1 %37, label %25, label %38, !dbg !4336, !llvm.loop !4337

; <label>:38:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !4339
  br label %39, !dbg !4340

; <label>:39:                                     ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ], !dbg !4341
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ], !dbg !4341
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %40, metadata !4270, metadata !DIExpression()), !dbg !4294
  %42 = icmp eq i64 %40, %1, !dbg !4342
  br i1 %42, label %43, label %45, !dbg !4343

; <label>:43:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  %44 = bitcast i64* %6 to i8*, !dbg !4344
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %44, i8 0, i64 16, i1 false), !dbg !4346
  br label %55, !dbg !4344

; <label>:45:                                     ; preds = %39
  %46 = sub i64 %40, %1, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %46, metadata !4279, metadata !DIExpression()), !dbg !4348
  %47 = urem i64 %46, %10, !dbg !4349
  %48 = udiv i64 %46, %10, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %47, metadata !4282, metadata !DIExpression()), !dbg !4353
  %49 = sub i64 %40, %47, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %49, metadata !4283, metadata !DIExpression()), !dbg !4355
  %50 = urem i64 %41, %10, !dbg !4356
  %51 = udiv i64 %41, %10, !dbg !4357
  call void @llvm.dbg.value(metadata i64 %50, metadata !4284, metadata !DIExpression()), !dbg !4358
  %52 = icmp ugt i64 %41, %49, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %50, metadata !4269, metadata !DIExpression()), !dbg !4291
  %53 = add i64 %47, -1, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %53, metadata !4270, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i64 %50, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %53, metadata !4270, metadata !DIExpression()), !dbg !4294
  br i1 %52, label %12, label %54, !dbg !4361

; <label>:54:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %41, metadata !4269, metadata !DIExpression()), !dbg !4291
  store i64 %51, i64* %6, align 8, !dbg !4362, !tbaa !4290
  store i64 %48, i64* %8, align 8, !dbg !4363, !tbaa !4293
  call void @llvm.dbg.value(metadata i64 %50, metadata !4269, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %53, metadata !4270, metadata !DIExpression()), !dbg !4294
  br label %55

; <label>:55:                                     ; preds = %54, %43
  %56 = phi i64 [ %41, %43 ], [ %50, %54 ], !dbg !4364
  ret i64 %56, !dbg !4365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randint_free(%struct.randint_source*) local_unnamed_addr #7 !dbg !4366 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4370, metadata !DIExpression()), !dbg !4371
  %2 = bitcast %struct.randint_source* %0 to i8*, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %2, metadata !4373, metadata !DIExpression()) #12, !dbg !4379
  call void @llvm.dbg.value(metadata i64 24, metadata !4378, metadata !DIExpression()) #12, !dbg !4379
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #12, !dbg !4381
  tail call void @__explicit_bzero_chk(i8* nonnull %2, i64 24, i64 %3) #12, !dbg !4382
  tail call void @free(i8* %2) #12, !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: nounwind
declare void @__explicit_bzero_chk(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randint_all_free(%struct.randint_source*) local_unnamed_addr #7 !dbg !4385 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4389, metadata !DIExpression()), !dbg !4392
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4393
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4393, !tbaa !4226
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #12, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %4, metadata !4390, metadata !DIExpression()), !dbg !4395
  %5 = tail call i32* @__errno_location() #17, !dbg !4396
  %6 = load i32, i32* %5, align 4, !dbg !4396, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %6, metadata !4391, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4370, metadata !DIExpression()) #12, !dbg !4398
  %7 = bitcast %struct.randint_source* %0 to i8*, !dbg !4400
  call void @llvm.dbg.value(metadata i8* %7, metadata !4373, metadata !DIExpression()) #12, !dbg !4401
  call void @llvm.dbg.value(metadata i64 24, metadata !4378, metadata !DIExpression()) #12, !dbg !4401
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %7, i1 false, i1 true) #12, !dbg !4403
  tail call void @__explicit_bzero_chk(i8* nonnull %7, i64 24, i64 %8) #12, !dbg !4404
  tail call void @free(i8* %7) #12, !dbg !4405
  store i32 %6, i32* %5, align 4, !dbg !4406, !tbaa !867
  ret i32 %4, !dbg !4407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #7 !dbg !4408 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4482, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %1, metadata !4483, metadata !DIExpression()), !dbg !4489
  %8 = icmp eq i64 %1, 0, !dbg !4490
  br i1 %8, label %9, label %17, !dbg !4491

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4492, metadata !DIExpression()) #12, !dbg !4499
  call void @llvm.dbg.value(metadata i8* null, metadata !4497, metadata !DIExpression()) #12, !dbg !4501
  %10 = tail call noalias i8* @xmalloc(i64 4152) #12, !dbg !4502
  %11 = bitcast i8* %10 to %struct.randread_source*, !dbg !4502
  call void @llvm.dbg.value(metadata %struct.randread_source* %11, metadata !4498, metadata !DIExpression()) #12, !dbg !4503
  %12 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !4504
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !4505, !tbaa !4506
  %13 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !4508
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !4508
  store void (i8*)* @randread_error, void (i8*)** %14, align 8, !dbg !4509, !tbaa !4510
  %15 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !4511
  %16 = bitcast i8* %15 to i8**, !dbg !4511
  store i8* null, i8** %16, align 8, !dbg !4512, !tbaa !4513
  br label %96, !dbg !4514

; <label>:17:                                     ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4484, metadata !DIExpression()), !dbg !4515
  %18 = icmp eq i8* %0, null, !dbg !4516
  br i1 %18, label %22, label %19, !dbg !4518

; <label>:19:                                     ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i64 0, i64 0)) #12, !dbg !4519
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !4484, metadata !DIExpression()), !dbg !4515
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !4521
  br i1 %21, label %96, label %22, !dbg !4522

; <label>:22:                                     ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ], !dbg !4523
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4484, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4492, metadata !DIExpression()) #12, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %0, metadata !4497, metadata !DIExpression()) #12, !dbg !4526
  %24 = tail call noalias i8* @xmalloc(i64 4152) #12, !dbg !4527
  %25 = bitcast i8* %24 to %struct.randread_source*, !dbg !4527
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4498, metadata !DIExpression()) #12, !dbg !4528
  %26 = bitcast i8* %24 to %struct._IO_FILE**, !dbg !4529
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8, !dbg !4530, !tbaa !4506
  %27 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !4531
  %28 = bitcast i8* %27 to void (i8*)**, !dbg !4531
  store void (i8*)* @randread_error, void (i8*)** %28, align 8, !dbg !4532, !tbaa !4510
  %29 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !4533
  %30 = bitcast i8* %29 to i8**, !dbg !4533
  store i8* %0, i8** %30, align 8, !dbg !4534, !tbaa !4513
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4487, metadata !DIExpression()), !dbg !4535
  %31 = icmp eq %struct._IO_FILE* %23, null, !dbg !4536
  %32 = getelementptr inbounds i8, i8* %24, i64 24, !dbg !4538
  br i1 %31, label %37, label %33, !dbg !4539

; <label>:33:                                     ; preds = %22
  %34 = icmp ult i64 %1, 4096, !dbg !4540
  %35 = select i1 %34, i64 %1, i64 4096, !dbg !4540
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* nonnull %32, i32 0, i64 %35) #12, !dbg !4541
  br label %96, !dbg !4541

; <label>:37:                                     ; preds = %22
  %38 = bitcast i8* %32 to i64*, !dbg !4542
  store i64 0, i64* %38, align 8, !dbg !4544, !tbaa !895
  %39 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !4545
  %40 = bitcast i8* %39 to %struct.isaac_state*, !dbg !4545
  call void @llvm.dbg.value(metadata i8* %39, metadata !4546, metadata !DIExpression()) #12, !dbg !4588
  call void @llvm.dbg.value(metadata i64 2048, metadata !4551, metadata !DIExpression()) #12, !dbg !4590
  call void @llvm.dbg.value(metadata i64 %1, metadata !4552, metadata !DIExpression()) #12, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %39, metadata !4553, metadata !DIExpression()) #12, !dbg !4592
  call void @llvm.dbg.value(metadata i64 0, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.165, i64 0, i64 0), i32 0) #12, !dbg !4594
  call void @llvm.dbg.value(metadata i32 %41, metadata !4558, metadata !DIExpression()) #12, !dbg !4595
  %42 = icmp sgt i32 %41, -1, !dbg !4596
  br i1 %42, label %43, label %51, !dbg !4598

; <label>:43:                                     ; preds = %37
  %44 = icmp ult i64 %1, 2048, !dbg !4599
  %45 = select i1 %44, i64 %1, i64 2048, !dbg !4599
  %46 = tail call i64 @read(i32 %41, i8* nonnull %39, i64 %45) #12, !dbg !4601
  call void @llvm.dbg.value(metadata i64 %46, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %47 = icmp sgt i64 %46, 0, !dbg !4602
  %48 = tail call i32 @close(i32 %41) #12, !dbg !4603
  br i1 %47, label %49, label %51

; <label>:49:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %46, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %50 = icmp ult i64 %46, 2048, !dbg !4604
  br i1 %50, label %51, label %95, !dbg !4605

; <label>:51:                                     ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*, !dbg !4606
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #12, !dbg !4606
  %54 = sub nsw i64 2048, %52, !dbg !4606
  %55 = icmp ult i64 %54, 16, !dbg !4606
  %56 = select i1 %55, i64 %54, i64 16, !dbg !4606
  call void @llvm.dbg.value(metadata i64 %56, metadata !4568, metadata !DIExpression()) #12, !dbg !4606
  call void @llvm.dbg.value(metadata %struct.timespec* %3, metadata !4559, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4606
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, %struct.timezone* null) #12, !dbg !4606
  %58 = getelementptr inbounds i8, i8* %39, i64 %52, !dbg !4606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %58, i8* nonnull align 8 %53, i64 %56, i1 false) #12, !dbg !4606
  %59 = add i64 %56, %52, !dbg !4606
  call void @llvm.dbg.value(metadata i64 %59, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #12, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %59, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %60 = icmp ult i64 %59, 2048, !dbg !4607
  br i1 %60, label %61, label %95, !dbg !4608

; <label>:61:                                     ; preds = %51
  %62 = bitcast i32* %4 to i8*, !dbg !4609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62), !dbg !4609
  %63 = sub i64 2048, %59, !dbg !4609
  %64 = icmp ult i64 %63, 4, !dbg !4609
  %65 = select i1 %64, i64 %63, i64 4, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %65, metadata !4574, metadata !DIExpression()) #12, !dbg !4609
  %66 = tail call i32 @getpid() #12, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %66, metadata !4569, metadata !DIExpression()) #12, !dbg !4609
  store i32 %66, i32* %4, align 4, !dbg !4609, !tbaa !867
  %67 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !4609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %67, i8* nonnull align 4 %62, i64 %65, i1 false) #12, !dbg !4609
  %68 = add i64 %65, %59, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %68, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %68, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %69 = icmp ult i64 %68, 2048, !dbg !4610
  br i1 %69, label %70, label %95, !dbg !4611

; <label>:70:                                     ; preds = %61
  %71 = bitcast i32* %5 to i8*, !dbg !4612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71), !dbg !4612
  %72 = sub i64 2048, %68, !dbg !4612
  %73 = icmp ult i64 %72, 4, !dbg !4612
  %74 = select i1 %73, i64 %72, i64 4, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %74, metadata !4578, metadata !DIExpression()) #12, !dbg !4612
  %75 = tail call i32 @getppid() #12, !dbg !4612
  call void @llvm.dbg.value(metadata i32 %75, metadata !4575, metadata !DIExpression()) #12, !dbg !4612
  store i32 %75, i32* %5, align 4, !dbg !4612, !tbaa !867
  %76 = getelementptr inbounds i8, i8* %39, i64 %68, !dbg !4612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %76, i8* nonnull align 4 %71, i64 %74, i1 false) #12, !dbg !4612
  %77 = add i64 %74, %68, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %77, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %77, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %78 = icmp ult i64 %77, 2048, !dbg !4613
  br i1 %78, label %79, label %95, !dbg !4614

; <label>:79:                                     ; preds = %70
  %80 = bitcast i32* %6 to i8*, !dbg !4615
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80), !dbg !4615
  %81 = sub i64 2048, %77, !dbg !4615
  %82 = icmp ult i64 %81, 4, !dbg !4615
  %83 = select i1 %82, i64 %81, i64 4, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %83, metadata !4583, metadata !DIExpression()) #12, !dbg !4615
  %84 = tail call i32 @getuid() #12, !dbg !4615
  call void @llvm.dbg.value(metadata i32 %84, metadata !4579, metadata !DIExpression()) #12, !dbg !4615
  store i32 %84, i32* %6, align 4, !dbg !4615, !tbaa !867
  %85 = getelementptr inbounds i8, i8* %39, i64 %77, !dbg !4615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %85, i8* nonnull align 4 %80, i64 %83, i1 false) #12, !dbg !4615
  %86 = add i64 %83, %77, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %86, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %86, metadata !4554, metadata !DIExpression()) #12, !dbg !4593
  %87 = icmp ult i64 %86, 2048, !dbg !4616
  br i1 %87, label %88, label %95, !dbg !4617

; <label>:88:                                     ; preds = %79
  %89 = bitcast i32* %7 to i8*, !dbg !4618
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89), !dbg !4618
  %90 = sub i64 2048, %86, !dbg !4618
  %91 = icmp ult i64 %90, 4, !dbg !4618
  %92 = select i1 %91, i64 %90, i64 4, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %92, metadata !4587, metadata !DIExpression()) #12, !dbg !4618
  %93 = tail call i32 @getgid() #12, !dbg !4618
  call void @llvm.dbg.value(metadata i32 %93, metadata !4584, metadata !DIExpression()) #12, !dbg !4618
  store i32 %93, i32* %7, align 4, !dbg !4618, !tbaa !867
  %94 = getelementptr inbounds i8, i8* %39, i64 %86, !dbg !4618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %94, i8* nonnull align 4 %89, i64 %92, i1 false) #12, !dbg !4618
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89), !dbg !4616
  br label %95, !dbg !4618

; <label>:95:                                     ; preds = %49, %51, %61, %70, %79, %88
  tail call void @isaac_seed(%struct.isaac_state* nonnull %40) #12, !dbg !4619
  br label %96

; <label>:96:                                     ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ], !dbg !4523
  ret %struct.randread_source* %97, !dbg !4620
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8*) #0 !dbg !4621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4623, metadata !DIExpression()), !dbg !4624
  %2 = icmp eq i8* %0, null, !dbg !4625
  br i1 %2, label %11, label %3, !dbg !4627

; <label>:3:                                      ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4628, !tbaa !867
  %5 = tail call i32* @__errno_location() #17, !dbg !4629
  %6 = load i32, i32* %5, align 4, !dbg !4629, !tbaa !867
  %7 = icmp eq i32 %6, 0, !dbg !4630
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.166, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.167, i64 0, i64 0), !dbg !4631
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #12, !dbg !4632
  %10 = tail call i8* @quote(i8* nonnull %0) #12, !dbg !4633
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #12, !dbg !4634
  br label %11, !dbg !4634

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #15, !dbg !4635
  unreachable, !dbg !4635
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randread_set_handler(%struct.randread_source* nocapture, void (i8*)*) local_unnamed_addr #7 !dbg !4636 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4640, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4641, metadata !DIExpression()), !dbg !4643
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !4644
  store void (i8*)* %1, void (i8*)** %3, align 8, !dbg !4645, !tbaa !4510
  ret void, !dbg !4646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randread_set_handler_arg(%struct.randread_source* nocapture, i8*) local_unnamed_addr #7 !dbg !4647 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4651, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i8* %1, metadata !4652, metadata !DIExpression()), !dbg !4654
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !4655
  store i8* %1, i8** %3, align 8, !dbg !4656, !tbaa !4513
  ret void, !dbg !4657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randread(%struct.randread_source*, i8*, i64) local_unnamed_addr #7 !dbg !4658 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4662, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i8* %1, metadata !4663, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %2, metadata !4664, metadata !DIExpression()), !dbg !4667
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4668
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4668, !tbaa !4506
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !4670
  br i1 %6, label %33, label %7, !dbg !4671

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4672, metadata !DIExpression()) #12, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %1, metadata !4678, metadata !DIExpression()) #12, !dbg !4685
  call void @llvm.dbg.value(metadata i64 %2, metadata !4679, metadata !DIExpression()) #12, !dbg !4686
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #12, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %8, metadata !4680, metadata !DIExpression()) #12, !dbg !4688
  %9 = tail call i32* @__errno_location() #17, !dbg !4689
  %10 = sub i64 %2, %8, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %10, metadata !4679, metadata !DIExpression()) #12, !dbg !4686
  %11 = icmp eq i64 %10, 0, !dbg !4691
  br i1 %11, label %78, label %12, !dbg !4693

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15, !dbg !4693

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !4678, metadata !DIExpression()) #12, !dbg !4685
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !4694
  %20 = load i32, i32* %9, align 4, !dbg !4689, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %20, metadata !4682, metadata !DIExpression()) #12, !dbg !4695
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4696, !tbaa !4506
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !4697, metadata !DIExpression()) #12, !dbg !4702
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !4704
  %23 = load i32, i32* %22, align 8, !dbg !4704, !tbaa !1170
  %24 = and i32 %23, 32, !dbg !4704
  %25 = icmp eq i32 %24, 0, !dbg !4696
  %26 = select i1 %25, i32 0, i32 %20, !dbg !4696
  store i32 %26, i32* %9, align 4, !dbg !4705, !tbaa !867
  %27 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !4706, !tbaa !4510
  %28 = load i8*, i8** %14, align 8, !dbg !4707, !tbaa !4513
  tail call void %27(i8* %28) #12, !dbg !4708
  call void @llvm.dbg.value(metadata i8* %19, metadata !4678, metadata !DIExpression()) #12, !dbg !4685
  call void @llvm.dbg.value(metadata i64 %16, metadata !4679, metadata !DIExpression()) #12, !dbg !4686
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4687, !tbaa !4506
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #12, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %30, metadata !4680, metadata !DIExpression()) #12, !dbg !4688
  %31 = sub i64 %16, %30, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %31, metadata !4679, metadata !DIExpression()) #12, !dbg !4686
  %32 = icmp eq i64 %31, 0, !dbg !4691
  br i1 %32, label %78, label %15, !dbg !4693

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4709, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)) #12, !dbg !4723
  call void @llvm.dbg.value(metadata i8* %1, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %2, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0, !dbg !4727
  %35 = load i64, i64* %34, align 8, !dbg !4727, !tbaa !4728
  call void @llvm.dbg.value(metadata i64 %35, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i8* %1, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %2, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i8* %1, metadata !4718, metadata !DIExpression()) #12, !dbg !4732
  %36 = icmp ult i64 %35, %2, !dbg !4733
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2, !dbg !4735
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1, !dbg !4735
  %39 = bitcast %union.anon.0* %38 to i8*, !dbg !4735
  %40 = sub i64 0, %35, !dbg !4735
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !4735
  br i1 %36, label %42, label %46, !dbg !4736

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0* %37 to i8*
  br label %52, !dbg !4736

; <label>:46:                                     ; preds = %74, %72, %33
  %47 = phi i64 [ %2, %33 ], [ %65, %72 ], [ %58, %74 ]
  %48 = phi i64 [ %35, %33 ], [ 2048, %72 ], [ 2048, %74 ], !dbg !4731
  %49 = phi i8* [ %1, %33 ], [ %73, %72 ], [ %57, %74 ]
  %50 = phi i8* [ %41, %33 ], [ %45, %72 ], [ %45, %74 ], !dbg !4735
  call void @llvm.dbg.value(metadata i64 %47, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64 %48, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i8* %49, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %50, i64 %47, i1 false) #12, !dbg !4737
  %51 = sub i64 %48, %47, !dbg !4739
  br label %76, !dbg !4740

; <label>:52:                                     ; preds = %74, %42
  %53 = phi i8* [ %41, %42 ], [ %45, %74 ]
  %54 = phi i8* [ %1, %42 ], [ %57, %74 ]
  %55 = phi i64 [ %35, %42 ], [ 2048, %74 ]
  %56 = phi i64 [ %2, %42 ], [ %58, %74 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %55, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i64 %56, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %53, i64 %55, i1 false) #12, !dbg !4741
  %57 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !4742
  call void @llvm.dbg.value(metadata i8* %57, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  %58 = sub i64 %56, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %58, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  %59 = ptrtoint i8* %57 to i64, !dbg !4744
  %60 = and i64 %59, 7, !dbg !4744
  %61 = icmp eq i64 %60, 0, !dbg !4744
  br i1 %61, label %62, label %74, !dbg !4745

; <label>:62:                                     ; preds = %52
  %63 = bitcast i8* %57 to i64*, !dbg !4746
  call void @llvm.dbg.value(metadata i64* %63, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  br label %64, !dbg !4748

; <label>:64:                                     ; preds = %68, %62
  %65 = phi i64 [ %58, %62 ], [ %70, %68 ], !dbg !4749
  %66 = phi i64* [ %63, %62 ], [ %69, %68 ], !dbg !4749
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  %67 = icmp ugt i64 %65, 2047, !dbg !4751
  br i1 %67, label %68, label %72, !dbg !4748

; <label>:68:                                     ; preds = %64
  tail call void @isaac_refill(%struct.isaac_state* nonnull %43, i64* %66) #12, !dbg !4752
  %69 = getelementptr inbounds i64, i64* %66, i64 256, !dbg !4753
  call void @llvm.dbg.value(metadata i64* %69, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  %70 = add i64 %65, -2048, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %70, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  %71 = icmp eq i64 %70, 0, !dbg !4755
  br i1 %71, label %76, label %64, !dbg !4757, !llvm.loop !4758

; <label>:72:                                     ; preds = %64
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %65, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i64* %66, metadata !4720, metadata !DIExpression()) #12, !dbg !4747
  %73 = bitcast i64* %66 to i8*, !dbg !4761
  call void @llvm.dbg.value(metadata i8* %73, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i8* %57, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  tail call void @isaac_refill(%struct.isaac_state* nonnull %43, i64* nonnull %44) #12, !dbg !4762
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i8* %57, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i64 %58, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i8* %57, metadata !4718, metadata !DIExpression()) #12, !dbg !4732
  br label %46, !dbg !4736

; <label>:74:                                     ; preds = %52
  tail call void @isaac_refill(%struct.isaac_state* nonnull %43, i64* nonnull %44) #12, !dbg !4762
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i8* %57, metadata !4715, metadata !DIExpression()) #12, !dbg !4725
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i64 %58, metadata !4716, metadata !DIExpression()) #12, !dbg !4726
  call void @llvm.dbg.value(metadata i8* %57, metadata !4718, metadata !DIExpression()) #12, !dbg !4732
  %75 = icmp ugt i64 %58, 2048, !dbg !4733
  br i1 %75, label %52, label %46, !dbg !4736

; <label>:76:                                     ; preds = %68, %46
  %77 = phi i64 [ %51, %46 ], [ 0, %68 ]
  store i64 %77, i64* %34, align 8, !dbg !4763, !tbaa !4728
  call void @llvm.dbg.value(metadata i64 2048, metadata !4717, metadata !DIExpression()) #12, !dbg !4731
  br label %78

; <label>:78:                                     ; preds = %15, %7, %76
  ret void, !dbg !4765
}

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randread_free(%struct.randread_source*) local_unnamed_addr #7 !dbg !4766 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4770, metadata !DIExpression()), !dbg !4772
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4773
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4773, !tbaa !4506
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !4771, metadata !DIExpression()), !dbg !4774
  %4 = bitcast %struct.randread_source* %0 to i8*, !dbg !4775
  call void @llvm.dbg.value(metadata i8* %4, metadata !4776, metadata !DIExpression()) #12, !dbg !4780
  call void @llvm.dbg.value(metadata i64 4152, metadata !4779, metadata !DIExpression()) #12, !dbg !4780
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %4, i1 false, i1 true) #12, !dbg !4782
  tail call void @__explicit_bzero_chk(i8* nonnull %4, i64 4152, i64 %5) #12, !dbg !4783
  tail call void @free(i8* %4) #12, !dbg !4784
  %6 = icmp eq %struct._IO_FILE* %3, null, !dbg !4785
  br i1 %6, label %9, label %7, !dbg !4785

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !4786
  br label %9, !dbg !4785

; <label>:9:                                      ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4785
  ret i32 %10, !dbg !4787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @isaac_refill(%struct.isaac_state*, i64* nocapture) local_unnamed_addr #7 !dbg !645 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !665, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64* %1, metadata !666, metadata !DIExpression()), !dbg !4789
  %3 = ptrtoint %struct.isaac_state* %0 to i64
  %4 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4790
  %5 = load i64, i64* %4, align 8, !dbg !4790, !tbaa !4791
  call void @llvm.dbg.value(metadata i64 %5, metadata !667, metadata !DIExpression()), !dbg !4792
  %6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2, !dbg !4793
  %7 = load i64, i64* %6, align 8, !dbg !4793, !tbaa !4794
  %8 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3, !dbg !4795
  %9 = load i64, i64* %8, align 8, !dbg !4796, !tbaa !4797
  %10 = add i64 %9, 1, !dbg !4796
  store i64 %10, i64* %8, align 8, !dbg !4796, !tbaa !4797
  %11 = add i64 %10, %7, !dbg !4798
  call void @llvm.dbg.value(metadata i64 %11, metadata !668, metadata !DIExpression()), !dbg !4799
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0, !dbg !4800
  call void @llvm.dbg.value(metadata i64* %12, metadata !669, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64* %1, metadata !670, metadata !DIExpression()), !dbg !4802
  %13 = bitcast %struct.isaac_state* %0 to i8*
  %14 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  %15 = ptrtoint i64* %14 to i64
  %16 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 4, !dbg !4803
  %17 = ptrtoint i64* %16 to i64
  %18 = icmp ugt i64 %15, %17, !dbg !4803
  %19 = select i1 %18, i64 %15, i64 %17, !dbg !4803
  %20 = inttoptr i64 %19 to i8*
  %21 = xor i64 %3, -1, !dbg !4803
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !4803
  %23 = ptrtoint i8* %22 to i64
  %24 = lshr i64 %23, 5, !dbg !4803
  %25 = shl nuw nsw i64 %24, 2, !dbg !4803
  %26 = add nuw nsw i64 %25, 4, !dbg !4803
  %27 = getelementptr i64, i64* %1, i64 %26, !dbg !4803
  br label %28, !dbg !4803

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64* [ %1, %2 ], [ %112, %28 ], !dbg !4804
  %30 = phi i64* [ %12, %2 ], [ %113, %28 ], !dbg !4805
  %31 = phi i64 [ %11, %2 ], [ %110, %28 ], !dbg !4806
  %32 = phi i64 [ %5, %2 ], [ %96, %28 ], !dbg !4806
  call void @llvm.dbg.value(metadata i64 %32, metadata !667, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i64 %31, metadata !668, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i64* %30, metadata !669, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64* %29, metadata !670, metadata !DIExpression()), !dbg !4802
  %33 = shl i64 %32, 21, !dbg !4807
  %34 = xor i64 %32, -1, !dbg !4807
  %35 = xor i64 %33, %34, !dbg !4807
  %36 = getelementptr inbounds i64, i64* %30, i64 128, !dbg !4807
  %37 = load i64, i64* %36, align 8, !dbg !4807, !tbaa !2502
  %38 = add i64 %35, %37, !dbg !4807
  call void @llvm.dbg.value(metadata i64 %38, metadata !667, metadata !DIExpression()), !dbg !4792
  %39 = load i64, i64* %30, align 8, !dbg !4807, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %39, metadata !671, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 %39, metadata !4815, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4826
  %40 = and i64 %39, 2040, !dbg !4827
  %41 = getelementptr inbounds i8, i8* %13, i64 %40, !dbg !4828
  call void @llvm.dbg.value(metadata i8* %41, metadata !4820, metadata !DIExpression()), !dbg !4829
  %42 = bitcast i8* %41 to i64*, !dbg !4830
  call void @llvm.dbg.value(metadata i64* %42, metadata !4821, metadata !DIExpression()), !dbg !4831
  %43 = load i64, i64* %42, align 8, !dbg !4832, !tbaa !2502
  %44 = add i64 %38, %31, !dbg !4807
  %45 = add i64 %44, %43, !dbg !4807
  call void @llvm.dbg.value(metadata i64 %45, metadata !674, metadata !DIExpression()), !dbg !4807
  store i64 %45, i64* %30, align 8, !dbg !4807, !tbaa !2502
  %46 = lshr i64 %45, 8, !dbg !4807
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i64 %46, metadata !4815, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4837
  %47 = and i64 %46, 2040, !dbg !4838
  %48 = getelementptr inbounds i8, i8* %13, i64 %47, !dbg !4839
  call void @llvm.dbg.value(metadata i8* %48, metadata !4820, metadata !DIExpression()), !dbg !4840
  %49 = bitcast i8* %48 to i64*, !dbg !4841
  call void @llvm.dbg.value(metadata i64* %49, metadata !4821, metadata !DIExpression()), !dbg !4842
  %50 = load i64, i64* %49, align 8, !dbg !4843, !tbaa !2502
  %51 = add i64 %50, %39, !dbg !4807
  call void @llvm.dbg.value(metadata i64 %51, metadata !668, metadata !DIExpression()), !dbg !4799
  store i64 %51, i64* %29, align 8, !dbg !4807, !tbaa !2502
  %52 = lshr i64 %38, 5, !dbg !4844
  %53 = xor i64 %52, %38, !dbg !4844
  %54 = getelementptr inbounds i64, i64* %30, i64 129, !dbg !4844
  %55 = load i64, i64* %54, align 8, !dbg !4844, !tbaa !2502
  %56 = add i64 %55, %53, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %56, metadata !667, metadata !DIExpression()), !dbg !4792
  %57 = getelementptr inbounds i64, i64* %30, i64 1, !dbg !4844
  %58 = load i64, i64* %57, align 8, !dbg !4844, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %58, metadata !675, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata i64 %58, metadata !4815, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4849
  %59 = and i64 %58, 2040, !dbg !4850
  %60 = getelementptr inbounds i8, i8* %13, i64 %59, !dbg !4851
  call void @llvm.dbg.value(metadata i8* %60, metadata !4820, metadata !DIExpression()), !dbg !4852
  %61 = bitcast i8* %60 to i64*, !dbg !4853
  call void @llvm.dbg.value(metadata i64* %61, metadata !4821, metadata !DIExpression()), !dbg !4854
  %62 = load i64, i64* %61, align 8, !dbg !4855, !tbaa !2502
  %63 = add i64 %56, %51, !dbg !4844
  %64 = add i64 %63, %62, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %64, metadata !677, metadata !DIExpression()), !dbg !4844
  store i64 %64, i64* %57, align 8, !dbg !4844, !tbaa !2502
  %65 = lshr i64 %64, 8, !dbg !4844
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i64 %65, metadata !4815, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4860
  %66 = and i64 %65, 2040, !dbg !4861
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !4862
  call void @llvm.dbg.value(metadata i8* %67, metadata !4820, metadata !DIExpression()), !dbg !4863
  %68 = bitcast i8* %67 to i64*, !dbg !4864
  call void @llvm.dbg.value(metadata i64* %68, metadata !4821, metadata !DIExpression()), !dbg !4865
  %69 = load i64, i64* %68, align 8, !dbg !4866, !tbaa !2502
  %70 = add i64 %69, %58, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %70, metadata !668, metadata !DIExpression()), !dbg !4799
  %71 = getelementptr inbounds i64, i64* %29, i64 1, !dbg !4844
  store i64 %70, i64* %71, align 8, !dbg !4844, !tbaa !2502
  %72 = shl i64 %56, 12, !dbg !4867
  %73 = xor i64 %72, %56, !dbg !4867
  %74 = getelementptr inbounds i64, i64* %30, i64 130, !dbg !4867
  %75 = load i64, i64* %74, align 8, !dbg !4867, !tbaa !2502
  %76 = add i64 %75, %73, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %76, metadata !667, metadata !DIExpression()), !dbg !4792
  %77 = getelementptr inbounds i64, i64* %30, i64 2, !dbg !4867
  %78 = load i64, i64* %77, align 8, !dbg !4867, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %78, metadata !678, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %78, metadata !4815, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4872
  %79 = and i64 %78, 2040, !dbg !4873
  %80 = getelementptr inbounds i8, i8* %13, i64 %79, !dbg !4874
  call void @llvm.dbg.value(metadata i8* %80, metadata !4820, metadata !DIExpression()), !dbg !4875
  %81 = bitcast i8* %80 to i64*, !dbg !4876
  call void @llvm.dbg.value(metadata i64* %81, metadata !4821, metadata !DIExpression()), !dbg !4877
  %82 = load i64, i64* %81, align 8, !dbg !4878, !tbaa !2502
  %83 = add i64 %76, %70, !dbg !4867
  %84 = add i64 %83, %82, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %84, metadata !680, metadata !DIExpression()), !dbg !4867
  store i64 %84, i64* %77, align 8, !dbg !4867, !tbaa !2502
  %85 = lshr i64 %84, 8, !dbg !4867
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %85, metadata !4815, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4883
  %86 = and i64 %85, 2040, !dbg !4884
  %87 = getelementptr inbounds i8, i8* %13, i64 %86, !dbg !4885
  call void @llvm.dbg.value(metadata i8* %87, metadata !4820, metadata !DIExpression()), !dbg !4886
  %88 = bitcast i8* %87 to i64*, !dbg !4887
  call void @llvm.dbg.value(metadata i64* %88, metadata !4821, metadata !DIExpression()), !dbg !4888
  %89 = load i64, i64* %88, align 8, !dbg !4889, !tbaa !2502
  %90 = add i64 %89, %78, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %90, metadata !668, metadata !DIExpression()), !dbg !4799
  %91 = getelementptr inbounds i64, i64* %29, i64 2, !dbg !4867
  store i64 %90, i64* %91, align 8, !dbg !4867, !tbaa !2502
  %92 = lshr i64 %76, 33, !dbg !4890
  %93 = xor i64 %92, %76, !dbg !4890
  %94 = getelementptr inbounds i64, i64* %30, i64 131, !dbg !4890
  %95 = load i64, i64* %94, align 8, !dbg !4890, !tbaa !2502
  %96 = add i64 %95, %93, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %96, metadata !667, metadata !DIExpression()), !dbg !4792
  %97 = getelementptr inbounds i64, i64* %30, i64 3, !dbg !4890
  %98 = load i64, i64* %97, align 8, !dbg !4890, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %98, metadata !681, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i64 %98, metadata !4815, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4895
  %99 = and i64 %98, 2040, !dbg !4896
  %100 = getelementptr inbounds i8, i8* %13, i64 %99, !dbg !4897
  call void @llvm.dbg.value(metadata i8* %100, metadata !4820, metadata !DIExpression()), !dbg !4898
  %101 = bitcast i8* %100 to i64*, !dbg !4899
  call void @llvm.dbg.value(metadata i64* %101, metadata !4821, metadata !DIExpression()), !dbg !4900
  %102 = load i64, i64* %101, align 8, !dbg !4901, !tbaa !2502
  %103 = add i64 %96, %90, !dbg !4890
  %104 = add i64 %103, %102, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %104, metadata !683, metadata !DIExpression()), !dbg !4890
  store i64 %104, i64* %97, align 8, !dbg !4890, !tbaa !2502
  %105 = lshr i64 %104, 8, !dbg !4890
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %105, metadata !4815, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4906
  %106 = and i64 %105, 2040, !dbg !4907
  %107 = getelementptr inbounds i8, i8* %13, i64 %106, !dbg !4908
  call void @llvm.dbg.value(metadata i8* %107, metadata !4820, metadata !DIExpression()), !dbg !4909
  %108 = bitcast i8* %107 to i64*, !dbg !4910
  call void @llvm.dbg.value(metadata i64* %108, metadata !4821, metadata !DIExpression()), !dbg !4911
  %109 = load i64, i64* %108, align 8, !dbg !4912, !tbaa !2502
  %110 = add i64 %109, %98, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %110, metadata !668, metadata !DIExpression()), !dbg !4799
  %111 = getelementptr inbounds i64, i64* %29, i64 3, !dbg !4890
  store i64 %110, i64* %111, align 8, !dbg !4890, !tbaa !2502
  %112 = getelementptr inbounds i64, i64* %29, i64 4, !dbg !4913
  call void @llvm.dbg.value(metadata i64* %112, metadata !670, metadata !DIExpression()), !dbg !4802
  %113 = getelementptr inbounds i64, i64* %30, i64 4, !dbg !4914
  call void @llvm.dbg.value(metadata i64* %113, metadata !669, metadata !DIExpression()), !dbg !4801
  %114 = icmp ult i64* %113, %14, !dbg !4915
  br i1 %114, label %28, label %115, !dbg !4916, !llvm.loop !4917

; <label>:115:                                    ; preds = %28
  %116 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %26, !dbg !4803
  %117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %118, !dbg !4919

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64* [ %202, %118 ], [ %27, %115 ], !dbg !4920
  %120 = phi i64* [ %203, %118 ], [ %116, %115 ], !dbg !4805
  %121 = phi i64 [ %200, %118 ], [ %110, %115 ], !dbg !4921
  %122 = phi i64 [ %186, %118 ], [ %96, %115 ], !dbg !4921
  call void @llvm.dbg.value(metadata i64 %122, metadata !667, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i64 %121, metadata !668, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i64* %120, metadata !669, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64* %119, metadata !670, metadata !DIExpression()), !dbg !4802
  %123 = shl i64 %122, 21, !dbg !4919
  %124 = xor i64 %122, -1, !dbg !4919
  %125 = xor i64 %123, %124, !dbg !4919
  %126 = getelementptr inbounds i64, i64* %120, i64 -128, !dbg !4919
  %127 = load i64, i64* %126, align 8, !dbg !4919, !tbaa !2502
  %128 = add i64 %125, %127, !dbg !4919
  call void @llvm.dbg.value(metadata i64 %128, metadata !667, metadata !DIExpression()), !dbg !4792
  %129 = load i64, i64* %120, align 8, !dbg !4919, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %129, metadata !684, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %129, metadata !4815, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4926
  %130 = and i64 %129, 2040, !dbg !4927
  %131 = getelementptr inbounds i8, i8* %13, i64 %130, !dbg !4928
  call void @llvm.dbg.value(metadata i8* %131, metadata !4820, metadata !DIExpression()), !dbg !4929
  %132 = bitcast i8* %131 to i64*, !dbg !4930
  call void @llvm.dbg.value(metadata i64* %132, metadata !4821, metadata !DIExpression()), !dbg !4931
  %133 = load i64, i64* %132, align 8, !dbg !4932, !tbaa !2502
  %134 = add i64 %128, %121, !dbg !4919
  %135 = add i64 %134, %133, !dbg !4919
  call void @llvm.dbg.value(metadata i64 %135, metadata !687, metadata !DIExpression()), !dbg !4919
  store i64 %135, i64* %120, align 8, !dbg !4919, !tbaa !2502
  %136 = lshr i64 %135, 8, !dbg !4919
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.value(metadata i64 %136, metadata !4815, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4937
  %137 = and i64 %136, 2040, !dbg !4938
  %138 = getelementptr inbounds i8, i8* %13, i64 %137, !dbg !4939
  call void @llvm.dbg.value(metadata i8* %138, metadata !4820, metadata !DIExpression()), !dbg !4940
  %139 = bitcast i8* %138 to i64*, !dbg !4941
  call void @llvm.dbg.value(metadata i64* %139, metadata !4821, metadata !DIExpression()), !dbg !4942
  %140 = load i64, i64* %139, align 8, !dbg !4943, !tbaa !2502
  %141 = add i64 %140, %129, !dbg !4919
  call void @llvm.dbg.value(metadata i64 %141, metadata !668, metadata !DIExpression()), !dbg !4799
  store i64 %141, i64* %119, align 8, !dbg !4919, !tbaa !2502
  %142 = lshr i64 %128, 5, !dbg !4944
  %143 = xor i64 %142, %128, !dbg !4944
  %144 = getelementptr inbounds i64, i64* %120, i64 -127, !dbg !4944
  %145 = load i64, i64* %144, align 8, !dbg !4944, !tbaa !2502
  %146 = add i64 %145, %143, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %146, metadata !667, metadata !DIExpression()), !dbg !4792
  %147 = getelementptr inbounds i64, i64* %120, i64 1, !dbg !4944
  %148 = load i64, i64* %147, align 8, !dbg !4944, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %148, metadata !688, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %148, metadata !4815, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4949
  %149 = and i64 %148, 2040, !dbg !4950
  %150 = getelementptr inbounds i8, i8* %13, i64 %149, !dbg !4951
  call void @llvm.dbg.value(metadata i8* %150, metadata !4820, metadata !DIExpression()), !dbg !4952
  %151 = bitcast i8* %150 to i64*, !dbg !4953
  call void @llvm.dbg.value(metadata i64* %151, metadata !4821, metadata !DIExpression()), !dbg !4954
  %152 = load i64, i64* %151, align 8, !dbg !4955, !tbaa !2502
  %153 = add i64 %146, %141, !dbg !4944
  %154 = add i64 %153, %152, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %154, metadata !690, metadata !DIExpression()), !dbg !4944
  store i64 %154, i64* %147, align 8, !dbg !4944, !tbaa !2502
  %155 = lshr i64 %154, 8, !dbg !4944
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i64 %155, metadata !4815, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4960
  %156 = and i64 %155, 2040, !dbg !4961
  %157 = getelementptr inbounds i8, i8* %13, i64 %156, !dbg !4962
  call void @llvm.dbg.value(metadata i8* %157, metadata !4820, metadata !DIExpression()), !dbg !4963
  %158 = bitcast i8* %157 to i64*, !dbg !4964
  call void @llvm.dbg.value(metadata i64* %158, metadata !4821, metadata !DIExpression()), !dbg !4965
  %159 = load i64, i64* %158, align 8, !dbg !4966, !tbaa !2502
  %160 = add i64 %159, %148, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %160, metadata !668, metadata !DIExpression()), !dbg !4799
  %161 = getelementptr inbounds i64, i64* %119, i64 1, !dbg !4944
  store i64 %160, i64* %161, align 8, !dbg !4944, !tbaa !2502
  %162 = shl i64 %146, 12, !dbg !4967
  %163 = xor i64 %162, %146, !dbg !4967
  %164 = getelementptr inbounds i64, i64* %120, i64 -126, !dbg !4967
  %165 = load i64, i64* %164, align 8, !dbg !4967, !tbaa !2502
  %166 = add i64 %165, %163, !dbg !4967
  call void @llvm.dbg.value(metadata i64 %166, metadata !667, metadata !DIExpression()), !dbg !4792
  %167 = getelementptr inbounds i64, i64* %120, i64 2, !dbg !4967
  %168 = load i64, i64* %167, align 8, !dbg !4967, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %168, metadata !691, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %168, metadata !4815, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4972
  %169 = and i64 %168, 2040, !dbg !4973
  %170 = getelementptr inbounds i8, i8* %13, i64 %169, !dbg !4974
  call void @llvm.dbg.value(metadata i8* %170, metadata !4820, metadata !DIExpression()), !dbg !4975
  %171 = bitcast i8* %170 to i64*, !dbg !4976
  call void @llvm.dbg.value(metadata i64* %171, metadata !4821, metadata !DIExpression()), !dbg !4977
  %172 = load i64, i64* %171, align 8, !dbg !4978, !tbaa !2502
  %173 = add i64 %166, %160, !dbg !4967
  %174 = add i64 %173, %172, !dbg !4967
  call void @llvm.dbg.value(metadata i64 %174, metadata !693, metadata !DIExpression()), !dbg !4967
  store i64 %174, i64* %167, align 8, !dbg !4967, !tbaa !2502
  %175 = lshr i64 %174, 8, !dbg !4967
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %175, metadata !4815, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4983
  %176 = and i64 %175, 2040, !dbg !4984
  %177 = getelementptr inbounds i8, i8* %13, i64 %176, !dbg !4985
  call void @llvm.dbg.value(metadata i8* %177, metadata !4820, metadata !DIExpression()), !dbg !4986
  %178 = bitcast i8* %177 to i64*, !dbg !4987
  call void @llvm.dbg.value(metadata i64* %178, metadata !4821, metadata !DIExpression()), !dbg !4988
  %179 = load i64, i64* %178, align 8, !dbg !4989, !tbaa !2502
  %180 = add i64 %179, %168, !dbg !4967
  call void @llvm.dbg.value(metadata i64 %180, metadata !668, metadata !DIExpression()), !dbg !4799
  %181 = getelementptr inbounds i64, i64* %119, i64 2, !dbg !4967
  store i64 %180, i64* %181, align 8, !dbg !4967, !tbaa !2502
  %182 = lshr i64 %166, 33, !dbg !4990
  %183 = xor i64 %182, %166, !dbg !4990
  %184 = getelementptr inbounds i64, i64* %120, i64 -125, !dbg !4990
  %185 = load i64, i64* %184, align 8, !dbg !4990, !tbaa !2502
  %186 = add i64 %185, %183, !dbg !4990
  call void @llvm.dbg.value(metadata i64 %186, metadata !667, metadata !DIExpression()), !dbg !4792
  %187 = getelementptr inbounds i64, i64* %120, i64 3, !dbg !4990
  %188 = load i64, i64* %187, align 8, !dbg !4990, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %188, metadata !694, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata i64 %188, metadata !4815, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !4995
  %189 = and i64 %188, 2040, !dbg !4996
  %190 = getelementptr inbounds i8, i8* %13, i64 %189, !dbg !4997
  call void @llvm.dbg.value(metadata i8* %190, metadata !4820, metadata !DIExpression()), !dbg !4998
  %191 = bitcast i8* %190 to i64*, !dbg !4999
  call void @llvm.dbg.value(metadata i64* %191, metadata !4821, metadata !DIExpression()), !dbg !5000
  %192 = load i64, i64* %191, align 8, !dbg !5001, !tbaa !2502
  %193 = add i64 %186, %180, !dbg !4990
  %194 = add i64 %193, %192, !dbg !4990
  call void @llvm.dbg.value(metadata i64 %194, metadata !696, metadata !DIExpression()), !dbg !4990
  store i64 %194, i64* %187, align 8, !dbg !4990, !tbaa !2502
  %195 = lshr i64 %194, 8, !dbg !4990
  call void @llvm.dbg.value(metadata i64* %12, metadata !4808, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata i64 %195, metadata !4815, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.value(metadata i8* %13, metadata !4816, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.value(metadata i8* %13, metadata !4819, metadata !DIExpression()), !dbg !5006
  %196 = and i64 %195, 2040, !dbg !5007
  %197 = getelementptr inbounds i8, i8* %13, i64 %196, !dbg !5008
  call void @llvm.dbg.value(metadata i8* %197, metadata !4820, metadata !DIExpression()), !dbg !5009
  %198 = bitcast i8* %197 to i64*, !dbg !5010
  call void @llvm.dbg.value(metadata i64* %198, metadata !4821, metadata !DIExpression()), !dbg !5011
  %199 = load i64, i64* %198, align 8, !dbg !5012, !tbaa !2502
  %200 = add i64 %199, %188, !dbg !4990
  call void @llvm.dbg.value(metadata i64 %200, metadata !668, metadata !DIExpression()), !dbg !4799
  %201 = getelementptr inbounds i64, i64* %119, i64 3, !dbg !4990
  store i64 %200, i64* %201, align 8, !dbg !4990, !tbaa !2502
  %202 = getelementptr inbounds i64, i64* %119, i64 4, !dbg !5013
  call void @llvm.dbg.value(metadata i64* %202, metadata !670, metadata !DIExpression()), !dbg !4802
  %203 = getelementptr inbounds i64, i64* %120, i64 4, !dbg !5014
  call void @llvm.dbg.value(metadata i64* %203, metadata !669, metadata !DIExpression()), !dbg !4801
  %204 = icmp ult i64* %203, %117, !dbg !5015
  br i1 %204, label %118, label %205, !dbg !5016, !llvm.loop !5017

; <label>:205:                                    ; preds = %118
  store i64 %186, i64* %4, align 8, !dbg !5020, !tbaa !4791
  store i64 %200, i64* %6, align 8, !dbg !5021, !tbaa !4794
  ret void, !dbg !5022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @isaac_seed(%struct.isaac_state* nocapture) local_unnamed_addr #7 !dbg !5023 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !5027, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata i64 7240739780546808700, metadata !5028, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 -5046086420515862430, metadata !5029, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 -8354558816804203872, metadata !5030, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 -5576812576440232668, metadata !5031, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 -9011610652101975858, metadata !5032, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 5259722845879046933, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 -5865837416287532563, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 -7424904924229222229, metadata !5035, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i32 0, metadata !5036, metadata !DIExpression()), !dbg !5049
  br label %2, !dbg !5050

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !5036, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i64 %4, metadata !5035, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %5, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %6, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %7, metadata !5032, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 %8, metadata !5031, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %9, metadata !5030, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %10, metadata !5029, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 %11, metadata !5028, metadata !DIExpression()), !dbg !5041
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3, !dbg !5052
  %13 = load i64, i64* %12, align 8, !dbg !5052, !tbaa !2502
  %14 = add i64 %13, %11, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %14, metadata !5028, metadata !DIExpression()), !dbg !5041
  %15 = or i64 %3, 1, !dbg !5052
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15, !dbg !5052
  %17 = load i64, i64* %16, align 8, !dbg !5052, !tbaa !2502
  %18 = add i64 %17, %10, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %18, metadata !5029, metadata !DIExpression()), !dbg !5042
  %19 = or i64 %3, 2, !dbg !5052
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19, !dbg !5052
  %21 = load i64, i64* %20, align 8, !dbg !5052, !tbaa !2502
  %22 = add i64 %21, %9, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %22, metadata !5030, metadata !DIExpression()), !dbg !5043
  %23 = or i64 %3, 3, !dbg !5052
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23, !dbg !5052
  %25 = load i64, i64* %24, align 8, !dbg !5052, !tbaa !2502
  %26 = add i64 %25, %8, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %26, metadata !5031, metadata !DIExpression()), !dbg !5044
  %27 = or i64 %3, 4, !dbg !5052
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27, !dbg !5052
  %29 = load i64, i64* %28, align 8, !dbg !5052, !tbaa !2502
  %30 = add i64 %29, %7, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %30, metadata !5032, metadata !DIExpression()), !dbg !5045
  %31 = or i64 %3, 5, !dbg !5052
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31, !dbg !5052
  %33 = load i64, i64* %32, align 8, !dbg !5052, !tbaa !2502
  %34 = add i64 %33, %6, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %34, metadata !5033, metadata !DIExpression()), !dbg !5046
  %35 = or i64 %3, 6, !dbg !5052
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35, !dbg !5052
  %37 = load i64, i64* %36, align 8, !dbg !5052, !tbaa !2502
  %38 = add i64 %37, %5, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %38, metadata !5034, metadata !DIExpression()), !dbg !5047
  %39 = or i64 %3, 7, !dbg !5052
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39, !dbg !5052
  %41 = load i64, i64* %40, align 8, !dbg !5052, !tbaa !2502
  %42 = add i64 %41, %4, !dbg !5052
  call void @llvm.dbg.value(metadata i64 %42, metadata !5035, metadata !DIExpression()), !dbg !5048
  %43 = sub i64 %14, %30, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %43, metadata !5028, metadata !DIExpression()), !dbg !5041
  %44 = lshr i64 %42, 9, !dbg !5055
  %45 = xor i64 %44, %34, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %45, metadata !5033, metadata !DIExpression()), !dbg !5046
  %46 = add i64 %42, %43, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %46, metadata !5035, metadata !DIExpression()), !dbg !5048
  %47 = sub i64 %18, %45, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %47, metadata !5029, metadata !DIExpression()), !dbg !5042
  %48 = shl i64 %43, 9, !dbg !5055
  %49 = xor i64 %38, %48, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %49, metadata !5034, metadata !DIExpression()), !dbg !5047
  %50 = add i64 %47, %43, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %50, metadata !5028, metadata !DIExpression()), !dbg !5041
  %51 = sub i64 %22, %49, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %51, metadata !5030, metadata !DIExpression()), !dbg !5043
  %52 = lshr i64 %47, 23, !dbg !5055
  %53 = xor i64 %52, %46, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %53, metadata !5035, metadata !DIExpression()), !dbg !5048
  %54 = add i64 %47, %51, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %54, metadata !5029, metadata !DIExpression()), !dbg !5042
  %55 = sub i64 %26, %53, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %55, metadata !5031, metadata !DIExpression()), !dbg !5044
  %56 = shl i64 %51, 15, !dbg !5055
  %57 = xor i64 %50, %56, !dbg !5055
  %58 = add i64 %55, %51, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %58, metadata !5030, metadata !DIExpression()), !dbg !5043
  %59 = sub i64 %30, %57, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %59, metadata !5032, metadata !DIExpression()), !dbg !5045
  %60 = lshr i64 %55, 14, !dbg !5055
  %61 = xor i64 %60, %54, !dbg !5055
  %62 = add i64 %55, %59, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %62, metadata !5031, metadata !DIExpression()), !dbg !5044
  %63 = sub i64 %45, %61, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %63, metadata !5033, metadata !DIExpression()), !dbg !5046
  %64 = shl i64 %59, 20, !dbg !5055
  %65 = xor i64 %58, %64, !dbg !5055
  %66 = add i64 %63, %59, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %66, metadata !5032, metadata !DIExpression()), !dbg !5045
  %67 = sub i64 %49, %65, !dbg !5055
  call void @llvm.dbg.value(metadata i64 %67, metadata !5034, metadata !DIExpression()), !dbg !5047
  %68 = lshr i64 %63, 17, !dbg !5055
  %69 = xor i64 %68, %62, !dbg !5055
  %70 = add i64 %63, %67, !dbg !5055
  %71 = sub i64 %53, %69, !dbg !5055
  %72 = shl i64 %67, 14, !dbg !5055
  %73 = xor i64 %66, %72, !dbg !5055
  %74 = add i64 %71, %67, !dbg !5055
  store i64 %57, i64* %12, align 8, !dbg !5052, !tbaa !2502
  store i64 %61, i64* %16, align 8, !dbg !5052, !tbaa !2502
  store i64 %65, i64* %20, align 8, !dbg !5052, !tbaa !2502
  store i64 %69, i64* %24, align 8, !dbg !5052, !tbaa !2502
  store i64 %73, i64* %28, align 8, !dbg !5052, !tbaa !2502
  store i64 %70, i64* %32, align 8, !dbg !5052, !tbaa !2502
  store i64 %74, i64* %36, align 8, !dbg !5052, !tbaa !2502
  store i64 %71, i64* %40, align 8, !dbg !5052, !tbaa !2502
  %75 = add nuw nsw i64 %3, 8, !dbg !5057
  call void @llvm.dbg.value(metadata i32 undef, metadata !5036, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i64 %71, metadata !5035, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %74, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %70, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %73, metadata !5032, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 %69, metadata !5031, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %65, metadata !5030, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %61, metadata !5029, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 %57, metadata !5028, metadata !DIExpression()), !dbg !5041
  %76 = icmp ult i64 %75, 256, !dbg !5057
  br i1 %76, label %2, label %77, !dbg !5050, !llvm.loop !5058

; <label>:77:                                     ; preds = %2, %77
  %78 = phi i64 [ %150, %77 ], [ 0, %2 ]
  %79 = phi i64 [ %146, %77 ], [ %71, %2 ]
  %80 = phi i64 [ %149, %77 ], [ %74, %2 ]
  %81 = phi i64 [ %145, %77 ], [ %70, %2 ]
  %82 = phi i64 [ %148, %77 ], [ %73, %2 ]
  %83 = phi i64 [ %144, %77 ], [ %69, %2 ]
  %84 = phi i64 [ %140, %77 ], [ %65, %2 ]
  %85 = phi i64 [ %136, %77 ], [ %61, %2 ]
  %86 = phi i64 [ %132, %77 ], [ %57, %2 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !5038, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i64 %79, metadata !5035, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %80, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %81, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %82, metadata !5032, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 %83, metadata !5031, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %84, metadata !5030, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %85, metadata !5029, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 %86, metadata !5028, metadata !DIExpression()), !dbg !5041
  %87 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %78, !dbg !5060
  %88 = load i64, i64* %87, align 8, !dbg !5060, !tbaa !2502
  %89 = add i64 %88, %86, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %89, metadata !5028, metadata !DIExpression()), !dbg !5041
  %90 = or i64 %78, 1, !dbg !5060
  %91 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %90, !dbg !5060
  %92 = load i64, i64* %91, align 8, !dbg !5060, !tbaa !2502
  %93 = add i64 %92, %85, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %93, metadata !5029, metadata !DIExpression()), !dbg !5042
  %94 = or i64 %78, 2, !dbg !5060
  %95 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %94, !dbg !5060
  %96 = load i64, i64* %95, align 8, !dbg !5060, !tbaa !2502
  %97 = add i64 %96, %84, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %97, metadata !5030, metadata !DIExpression()), !dbg !5043
  %98 = or i64 %78, 3, !dbg !5060
  %99 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %98, !dbg !5060
  %100 = load i64, i64* %99, align 8, !dbg !5060, !tbaa !2502
  %101 = add i64 %100, %83, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %101, metadata !5031, metadata !DIExpression()), !dbg !5044
  %102 = or i64 %78, 4, !dbg !5060
  %103 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %102, !dbg !5060
  %104 = load i64, i64* %103, align 8, !dbg !5060, !tbaa !2502
  %105 = add i64 %104, %82, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %105, metadata !5032, metadata !DIExpression()), !dbg !5045
  %106 = or i64 %78, 5, !dbg !5060
  %107 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %106, !dbg !5060
  %108 = load i64, i64* %107, align 8, !dbg !5060, !tbaa !2502
  %109 = add i64 %108, %81, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %109, metadata !5033, metadata !DIExpression()), !dbg !5046
  %110 = or i64 %78, 6, !dbg !5060
  %111 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %110, !dbg !5060
  %112 = load i64, i64* %111, align 8, !dbg !5060, !tbaa !2502
  %113 = add i64 %112, %80, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %113, metadata !5034, metadata !DIExpression()), !dbg !5047
  %114 = or i64 %78, 7, !dbg !5060
  %115 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %114, !dbg !5060
  %116 = load i64, i64* %115, align 8, !dbg !5060, !tbaa !2502
  %117 = add i64 %116, %79, !dbg !5060
  call void @llvm.dbg.value(metadata i64 %117, metadata !5035, metadata !DIExpression()), !dbg !5048
  %118 = sub i64 %89, %105, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %118, metadata !5028, metadata !DIExpression()), !dbg !5041
  %119 = lshr i64 %117, 9, !dbg !5064
  %120 = xor i64 %119, %109, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %120, metadata !5033, metadata !DIExpression()), !dbg !5046
  %121 = add i64 %117, %118, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %121, metadata !5035, metadata !DIExpression()), !dbg !5048
  %122 = sub i64 %93, %120, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %122, metadata !5029, metadata !DIExpression()), !dbg !5042
  %123 = shl i64 %118, 9, !dbg !5064
  %124 = xor i64 %113, %123, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %124, metadata !5034, metadata !DIExpression()), !dbg !5047
  %125 = add i64 %122, %118, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %125, metadata !5028, metadata !DIExpression()), !dbg !5041
  %126 = sub i64 %97, %124, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %126, metadata !5030, metadata !DIExpression()), !dbg !5043
  %127 = lshr i64 %122, 23, !dbg !5064
  %128 = xor i64 %127, %121, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %128, metadata !5035, metadata !DIExpression()), !dbg !5048
  %129 = add i64 %122, %126, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %129, metadata !5029, metadata !DIExpression()), !dbg !5042
  %130 = sub i64 %101, %128, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %130, metadata !5031, metadata !DIExpression()), !dbg !5044
  %131 = shl i64 %126, 15, !dbg !5064
  %132 = xor i64 %125, %131, !dbg !5064
  %133 = add i64 %130, %126, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %133, metadata !5030, metadata !DIExpression()), !dbg !5043
  %134 = sub i64 %105, %132, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %134, metadata !5032, metadata !DIExpression()), !dbg !5045
  %135 = lshr i64 %130, 14, !dbg !5064
  %136 = xor i64 %135, %129, !dbg !5064
  %137 = add i64 %130, %134, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %137, metadata !5031, metadata !DIExpression()), !dbg !5044
  %138 = sub i64 %120, %136, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %138, metadata !5033, metadata !DIExpression()), !dbg !5046
  %139 = shl i64 %134, 20, !dbg !5064
  %140 = xor i64 %133, %139, !dbg !5064
  %141 = add i64 %138, %134, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %141, metadata !5032, metadata !DIExpression()), !dbg !5045
  %142 = sub i64 %124, %140, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %142, metadata !5034, metadata !DIExpression()), !dbg !5047
  %143 = lshr i64 %138, 17, !dbg !5064
  %144 = xor i64 %143, %137, !dbg !5064
  %145 = add i64 %138, %142, !dbg !5064
  %146 = sub i64 %128, %144, !dbg !5064
  %147 = shl i64 %142, 14, !dbg !5064
  %148 = xor i64 %141, %147, !dbg !5064
  %149 = add i64 %146, %142, !dbg !5064
  store i64 %132, i64* %87, align 8, !dbg !5060, !tbaa !2502
  store i64 %136, i64* %91, align 8, !dbg !5060, !tbaa !2502
  store i64 %140, i64* %95, align 8, !dbg !5060, !tbaa !2502
  store i64 %144, i64* %99, align 8, !dbg !5060, !tbaa !2502
  store i64 %148, i64* %103, align 8, !dbg !5060, !tbaa !2502
  store i64 %145, i64* %107, align 8, !dbg !5060, !tbaa !2502
  store i64 %149, i64* %111, align 8, !dbg !5060, !tbaa !2502
  store i64 %146, i64* %115, align 8, !dbg !5060, !tbaa !2502
  %150 = add nuw nsw i64 %78, 8, !dbg !5066
  call void @llvm.dbg.value(metadata i32 undef, metadata !5038, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !5059
  call void @llvm.dbg.value(metadata i64 %146, metadata !5035, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %149, metadata !5034, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %145, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %148, metadata !5032, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 %144, metadata !5031, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %140, metadata !5030, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %136, metadata !5029, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 %132, metadata !5028, metadata !DIExpression()), !dbg !5041
  %151 = icmp ult i64 %150, 256, !dbg !5066
  br i1 %151, label %77, label %152, !dbg !5067, !llvm.loop !5068

; <label>:152:                                    ; preds = %77
  %153 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !5069
  %154 = bitcast i64* %153 to i8*, !dbg !5070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %154, i8 0, i64 24, i1 false), !dbg !5071
  ret void, !dbg !5070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !5072 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5111, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata i8* %1, metadata !5112, metadata !DIExpression()), !dbg !5127
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !5128
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !5113, metadata !DIExpression()), !dbg !5129
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !5130
  br i1 %4, label %25, label %5, !dbg !5131

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !5132
  call void @llvm.dbg.value(metadata i32 %6, metadata !5114, metadata !DIExpression()), !dbg !5133
  %7 = icmp ult i32 %6, 3, !dbg !5134
  br i1 %7, label %8, label %25, !dbg !5134

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !5135
  call void @llvm.dbg.value(metadata i32 %9, metadata !5117, metadata !DIExpression()), !dbg !5136
  %10 = icmp slt i32 %9, 0, !dbg !5137
  br i1 %10, label %11, label %15, !dbg !5138

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !5139
  %13 = load i32, i32* %12, align 4, !dbg !5139, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %13, metadata !5120, metadata !DIExpression()), !dbg !5140
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !5141
  store i32 %13, i32* %12, align 4, !dbg !5142, !tbaa !867
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !5143
  %17 = icmp eq i32 %16, 0, !dbg !5144
  br i1 %17, label %18, label %21, !dbg !5145

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !5146
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !5113, metadata !DIExpression()), !dbg !5129
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !5147
  br i1 %20, label %21, label %25, !dbg !5148

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !5149
  %23 = load i32, i32* %22, align 4, !dbg !5149, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %23, metadata !5123, metadata !DIExpression()), !dbg !5150
  %24 = tail call i32 @close(i32 %9) #12, !dbg !5151
  store i32 %23, i32* %22, align 4, !dbg !5152, !tbaa !867
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !5153
  ret %struct._IO_FILE* %26, !dbg !5154
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !5155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5160, metadata !DIExpression()), !dbg !5161
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !5162
  ret i32 %2, !dbg !5163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !163 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !5164
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !5165
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5166
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !5166
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !173, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i32 -1, metadata !186, metadata !DIExpression()), !dbg !5168
  call void @llvm.va_start(i8* nonnull %4), !dbg !5169
  %5 = icmp eq i32 %1, 1030, !dbg !5170
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5171
  %7 = load i32, i32* %6, align 16, !dbg !5171
  %8 = icmp ult i32 %7, 41, !dbg !5171
  br i1 %5, label %9, label %58, !dbg !5170

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5172

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5172
  %12 = load i8*, i8** %11, align 16, !dbg !5172
  %13 = sext i32 %7 to i64, !dbg !5172
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5172
  %15 = add i32 %7, 8, !dbg !5172
  store i32 %15, i32* %6, align 16, !dbg !5172
  br label %20, !dbg !5172

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5172
  %18 = load i8*, i8** %17, align 8, !dbg !5172
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5172
  store i8* %19, i8** %17, align 8, !dbg !5172
  br label %20, !dbg !5172

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5172
  %23 = load i32, i32* %22, align 4, !dbg !5172
  call void @llvm.dbg.value(metadata i32 %23, metadata !187, metadata !DIExpression()), !dbg !5173
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5174, !tbaa !867
  %25 = icmp sgt i32 %24, -1, !dbg !5176
  br i1 %25, label %26, label %38, !dbg !5177

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !5178
  call void @llvm.dbg.value(metadata i32 %27, metadata !186, metadata !DIExpression()), !dbg !5168
  %28 = icmp sgt i32 %27, -1, !dbg !5180
  br i1 %28, label %33, label %29, !dbg !5182

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !5183
  %31 = load i32, i32* %30, align 4, !dbg !5183, !tbaa !867
  %32 = icmp eq i32 %31, 22, !dbg !5184
  br i1 %32, label %34, label %33, !dbg !5185

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5186, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %44, metadata !186, metadata !DIExpression()), !dbg !5168
  br label %74, !dbg !5188

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5189
  call void @llvm.dbg.value(metadata i32 %35, metadata !186, metadata !DIExpression()), !dbg !5168
  %36 = icmp slt i32 %35, 0, !dbg !5191
  br i1 %36, label %74, label %37, !dbg !5193

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5194, !tbaa !867
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5195
  call void @llvm.dbg.value(metadata i32 %39, metadata !186, metadata !DIExpression()), !dbg !5168
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5196
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !5197
  call void @llvm.dbg.value(metadata i32 %44, metadata !186, metadata !DIExpression()), !dbg !5168
  %45 = icmp sgt i32 %44, -1, !dbg !5198
  %46 = and i1 %45, %43, !dbg !5188
  br i1 %46, label %47, label %74, !dbg !5188

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !5199
  call void @llvm.dbg.value(metadata i32 %48, metadata !190, metadata !DIExpression()), !dbg !5200
  %49 = icmp slt i32 %48, 0, !dbg !5201
  br i1 %49, label %54, label %50, !dbg !5202

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !5203
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #12, !dbg !5204
  %53 = icmp eq i32 %52, -1, !dbg !5205
  br i1 %53, label %54, label %74, !dbg !5206

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !5207
  %56 = load i32, i32* %55, align 4, !dbg !5207, !tbaa !867
  call void @llvm.dbg.value(metadata i32 %56, metadata !193, metadata !DIExpression()), !dbg !5208
  %57 = call i32 @close(i32 %44) #12, !dbg !5209
  store i32 %56, i32* %55, align 4, !dbg !5210, !tbaa !867
  call void @llvm.dbg.value(metadata i32 -1, metadata !186, metadata !DIExpression()), !dbg !5168
  br label %74, !dbg !5211

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !5212

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5212
  %61 = load i8*, i8** %60, align 16, !dbg !5212
  %62 = sext i32 %7 to i64, !dbg !5212
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !5212
  %64 = add i32 %7, 8, !dbg !5212
  store i32 %64, i32* %6, align 16, !dbg !5212
  br label %69, !dbg !5212

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5212
  %67 = load i8*, i8** %66, align 8, !dbg !5212
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5212
  store i8* %68, i8** %66, align 8, !dbg !5212
  br label %69, !dbg !5212

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !5212
  %72 = load i8*, i8** %71, align 8, !dbg !5212
  call void @llvm.dbg.value(metadata i8* %72, metadata !196, metadata !DIExpression()), !dbg !5213
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #12, !dbg !5214
  call void @llvm.dbg.value(metadata i32 %73, metadata !186, metadata !DIExpression()), !dbg !5168
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !5171
  call void @llvm.dbg.value(metadata i32 %75, metadata !186, metadata !DIExpression()), !dbg !5168
  call void @llvm.va_end(i8* nonnull %4), !dbg !5215
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !5216
  ret i32 %75, !dbg !5217
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

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

!llvm.dbg.cu = !{!2, !33, !198, !38, !200, !46, !203, !206, !53, !60, !145, !208, !154, !215, !232, !234, !236, !238, !240, !242, !245, !247, !636, !638, !640, !700, !702, !167}
!llvm.ident = !{!704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704}
!llvm.module.flags = !{!705, !706, !707, !708, !709}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!10, !0, !13}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 130, type: !12, isLocal: true, isDefinition: true)
!12 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 39, type: !15, isLocal: true, isDefinition: true)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !28)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !20, line: 50, size: 256, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!21 = !{!22, !23, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 52, baseType: !15, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !19, file: !20, line: 55, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !19, file: !20, line: 56, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !20, line: 57, baseType: !24, size: 32, offset: 192)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "Version", scope: !33, file: !34, line: 2, type: !15, isLocal: false, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35)
!34 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!35 = !{!31}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "file_name", scope: !38, file: !43, line: 46, type: !15, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !40)
!39 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!40 = !{!36, !41}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !38, file: !43, line: 56, type: !12, isLocal: true, isDefinition: true)
!43 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "exit_failure", scope: !46, file: !49, line: 24, type: !50, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !48)
!47 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!48 = !{!44}
!49 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "program_name", scope: !53, file: !57, line: 33, type: !15, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !56)
!54 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!55 = !{!8, !6}
!56 = !{!51}
!57 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !60, file: !106, line: 85, type: !139, isLocal: false, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !98, globals: !103)
!61 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!62 = !{!63, !78, !83}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !64, line: 32, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!67 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!73 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!74 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!75 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!76 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!77 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !64, line: 242, baseType: !65, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 46, baseType: !65, size: 32, elements: !85)
!84 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!98 = !{!24, !99, !100, !6}
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !{!58, !104, !111, !121, !123, !128, !135, !137}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !60, file: !106, line: 101, type: !107, isLocal: false, isDefinition: true)
!106 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, elements: !109)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!109 = !{!110}
!110 = !DISubrange(count: 10)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !60, file: !106, line: 1052, type: !113, isLocal: false, isDefinition: true)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !106, line: 65, size: 448, elements: !114)
!114 = !{!115, !116, !117, !119, !120}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !113, file: !106, line: 68, baseType: !63, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !106, line: 71, baseType: !24, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !113, file: !106, line: 75, baseType: !118, size: 256, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !28)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !113, file: !106, line: 78, baseType: !15, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !113, file: !106, line: 81, baseType: !15, size: 64, offset: 384)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !60, file: !106, line: 116, type: !113, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "slot0", scope: !60, file: !106, line: 842, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "slotvec", scope: !60, file: !106, line: 845, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !106, line: 834, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !131, file: !106, line: 836, baseType: !100, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !106, line: 837, baseType: !6, size: 64, offset: 64)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "nslots", scope: !60, file: !106, line: 843, type: !24, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "slotvec0", scope: !60, file: !106, line: 844, type: !131, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 704, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!141 = !{!142}
!142 = !DISubrange(count: 11)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "letters", scope: !145, file: !148, line: 184, type: !149, isLocal: true, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !147)
!146 = !DIFile(filename: "./lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!147 = !{!143}
!148 = !DIFile(filename: "lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 504, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 63)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !154, file: !157, line: 26, type: !158, isLocal: false, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !156)
!155 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!156 = !{!152}
!157 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 376, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 47)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !163, file: !164, line: 339, type: !24, isLocal: true, isDefinition: true)
!163 = distinct !DISubprogram(name: "rpl_fcntl", scope: !164, file: !164, line: 276, type: !165, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !167, retainedNodes: !170)
!164 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = !DISubroutineType(types: !166)
!166 = !{!24, !24, !24, null}
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !169)
!168 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{!161}
!170 = !{!171, !172, !173, !186, !187, !190, !193, !196}
!171 = !DILocalVariable(name: "fd", arg: 1, scope: !163, file: !164, line: 276, type: !24)
!172 = !DILocalVariable(name: "action", arg: 2, scope: !163, file: !164, line: 276, type: !24)
!173 = !DILocalVariable(name: "arg", scope: !163, file: !164, line: 278, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !175, line: 30, baseType: !176)
!175 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !168, line: 278, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 192, elements: !184)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !168, line: 278, size: 192, elements: !179)
!179 = !{!180, !181, !182, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !178, file: !168, line: 278, baseType: !65, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !178, file: !168, line: 278, baseType: !65, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !178, file: !168, line: 278, baseType: !8, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !178, file: !168, line: 278, baseType: !8, size: 64, offset: 128)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DILocalVariable(name: "result", scope: !163, file: !164, line: 279, type: !24)
!187 = !DILocalVariable(name: "target", scope: !188, file: !164, line: 326, type: !24)
!188 = distinct !DILexicalBlock(scope: !189, file: !164, line: 325, column: 7)
!189 = distinct !DILexicalBlock(scope: !163, file: !164, line: 282, column: 5)
!190 = !DILocalVariable(name: "flags", scope: !191, file: !164, line: 363, type: !24)
!191 = distinct !DILexicalBlock(scope: !192, file: !164, line: 362, column: 11)
!192 = distinct !DILexicalBlock(scope: !188, file: !164, line: 361, column: 13)
!193 = !DILocalVariable(name: "saved_errno", scope: !194, file: !164, line: 366, type: !24)
!194 = distinct !DILexicalBlock(scope: !195, file: !164, line: 365, column: 15)
!195 = distinct !DILexicalBlock(scope: !191, file: !164, line: 364, column: 17)
!196 = !DILocalVariable(name: "p", scope: !197, file: !164, line: 408, type: !8)
!197 = distinct !DILexicalBlock(scope: !189, file: !164, line: 406, column: 7)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!199 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!201 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = !{!6}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205)
!204 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = !{!8}
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205)
!207 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !205)
!209 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 41, baseType: !65, size: 32, elements: !213)
!212 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = !{!214}
!214 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !231)
!216 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !{!218}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !220, file: !219, line: 186, baseType: !65, size: 32, elements: !229)
!219 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DISubprogram(name: "x2nrealloc", scope: !219, file: !219, line: 174, type: !221, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !224)
!221 = !DISubroutineType(types: !222)
!222 = !{!8, !8, !223, !100}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!224 = !{!225, !226, !227, !228}
!225 = !DILocalVariable(name: "p", arg: 1, scope: !220, file: !219, line: 174, type: !8)
!226 = !DILocalVariable(name: "pn", arg: 2, scope: !220, file: !219, line: 174, type: !223)
!227 = !DILocalVariable(name: "s", arg: 3, scope: !220, file: !219, line: 174, type: !100)
!228 = !DILocalVariable(name: "n", scope: !220, file: !219, line: 176, type: !100)
!229 = !{!230}
!230 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!231 = !{!100, !6, !8}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!233 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205)
!235 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!237 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205)
!239 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205)
!241 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !244)
!243 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!244 = !{!100}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!246 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !205)
!248 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!249 = !{!250}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 41, baseType: !65, size: 32, elements: !252)
!251 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!253 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!254 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!255 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!256 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!257 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!258 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!259 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!260 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!261 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!262 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!263 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!264 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!265 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!266 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!268 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!269 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!270 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!271 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!272 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!273 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!274 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!275 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!276 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!277 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!280 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!281 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!282 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!283 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!284 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!285 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!286 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!287 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!288 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!289 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!291 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!292 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!293 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!294 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!295 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!296 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!297 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!298 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!299 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!300 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!301 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!302 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!361 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!365 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!366 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!367 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!368 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!369 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!370 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!371 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!372 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!373 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!374 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!448 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!522 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!523 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!524 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!525 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!526 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!527 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!529 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!530 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!531 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!532 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!533 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!534 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!535 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!537 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!538 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!540 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!541 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!542 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!568 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!569 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!570 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!571 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!572 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!577 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!578 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!579 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!580 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!637 = !DIFile(filename: "./lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !244)
!639 = !DIFile(filename: "./lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !642, retainedTypes: !699)
!641 = !DIFile(filename: "./lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!642 = !{!643}
!643 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !645, file: !644, line: 100, baseType: !65, size: 32, elements: !697)
!644 = !DIFile(filename: "lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!645 = distinct !DISubprogram(name: "isaac_refill", scope: !644, file: !644, line: 90, type: !646, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !640, retainedNodes: !664)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648, !663}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !650, line: 56, size: 16576, elements: !651)
!650 = !DIFile(filename: "./lib/rand-isaac.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!651 = !{!652, !660, !661, !662}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !649, file: !650, line: 58, baseType: !653, size: 16384)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 16384, elements: !126)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "isaac_word", file: !650, line: 44, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !656, line: 52, baseType: !657)
!656 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !658, line: 58, baseType: !659)
!658 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !658, line: 44, baseType: !102)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !649, file: !650, line: 59, baseType: !654, size: 64, offset: 16384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !649, file: !650, line: 59, baseType: !654, size: 64, offset: 16448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !649, file: !650, line: 59, baseType: !654, size: 64, offset: 16512)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !674, !675, !677, !678, !680, !681, !683, !684, !687, !688, !690, !691, !693, !694, !696}
!665 = !DILocalVariable(name: "s", arg: 1, scope: !645, file: !644, line: 90, type: !648)
!666 = !DILocalVariable(name: "result", arg: 2, scope: !645, file: !644, line: 90, type: !663)
!667 = !DILocalVariable(name: "a", scope: !645, file: !644, line: 93, type: !654)
!668 = !DILocalVariable(name: "b", scope: !645, file: !644, line: 94, type: !654)
!669 = !DILocalVariable(name: "m", scope: !645, file: !644, line: 97, type: !663)
!670 = !DILocalVariable(name: "r", scope: !645, file: !644, line: 98, type: !663)
!671 = !DILocalVariable(name: "x", scope: !672, file: !644, line: 118, type: !654)
!672 = distinct !DILexicalBlock(scope: !673, file: !644, line: 118, column: 7)
!673 = distinct !DILexicalBlock(scope: !645, file: !644, line: 117, column: 5)
!674 = !DILocalVariable(name: "y", scope: !672, file: !644, line: 118, type: !654)
!675 = !DILocalVariable(name: "x", scope: !676, file: !644, line: 119, type: !654)
!676 = distinct !DILexicalBlock(scope: !673, file: !644, line: 119, column: 7)
!677 = !DILocalVariable(name: "y", scope: !676, file: !644, line: 119, type: !654)
!678 = !DILocalVariable(name: "x", scope: !679, file: !644, line: 120, type: !654)
!679 = distinct !DILexicalBlock(scope: !673, file: !644, line: 120, column: 7)
!680 = !DILocalVariable(name: "y", scope: !679, file: !644, line: 120, type: !654)
!681 = !DILocalVariable(name: "x", scope: !682, file: !644, line: 121, type: !654)
!682 = distinct !DILexicalBlock(scope: !673, file: !644, line: 121, column: 7)
!683 = !DILocalVariable(name: "y", scope: !682, file: !644, line: 121, type: !654)
!684 = !DILocalVariable(name: "x", scope: !685, file: !644, line: 128, type: !654)
!685 = distinct !DILexicalBlock(scope: !686, file: !644, line: 128, column: 7)
!686 = distinct !DILexicalBlock(scope: !645, file: !644, line: 127, column: 5)
!687 = !DILocalVariable(name: "y", scope: !685, file: !644, line: 128, type: !654)
!688 = !DILocalVariable(name: "x", scope: !689, file: !644, line: 129, type: !654)
!689 = distinct !DILexicalBlock(scope: !686, file: !644, line: 129, column: 7)
!690 = !DILocalVariable(name: "y", scope: !689, file: !644, line: 129, type: !654)
!691 = !DILocalVariable(name: "x", scope: !692, file: !644, line: 130, type: !654)
!692 = distinct !DILexicalBlock(scope: !686, file: !644, line: 130, column: 7)
!693 = !DILocalVariable(name: "y", scope: !692, file: !644, line: 130, type: !654)
!694 = !DILocalVariable(name: "x", scope: !695, file: !644, line: 131, type: !654)
!695 = distinct !DILexicalBlock(scope: !686, file: !644, line: 131, column: 7)
!696 = !DILocalVariable(name: "y", scope: !695, file: !644, line: 131, type: !654)
!697 = !{!698}
!698 = !DIEnumerator(name: "HALF", value: 128, isUnsigned: true)
!699 = !{!654}
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!701 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!703 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!704 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!705 = !{i32 2, !"Dwarf Version", i32 4}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 7, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 61, type: !711, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !24}
!713 = !{!714}
!714 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !3, line: 61, type: !24)
!715 = !DILocalVariable(name: "infomap", scope: !716, file: !717, line: 632, type: !731)
!716 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !717, file: !717, line: 630, type: !718, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !720)
!717 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!718 = !DISubroutineType(types: !719)
!719 = !{null, !15}
!720 = !{!721, !715, !722, !723, !730}
!721 = !DILocalVariable(name: "program", arg: 1, scope: !716, file: !717, line: 630, type: !15)
!722 = !DILocalVariable(name: "node", scope: !716, file: !717, line: 642, type: !15)
!723 = !DILocalVariable(name: "map_prog", scope: !716, file: !717, line: 643, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !716, file: !717, line: 632, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !726, file: !717, line: 632, baseType: !15, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !717, line: 632, baseType: !15, size: 64, offset: 64)
!730 = !DILocalVariable(name: "lc_messages", scope: !716, file: !717, line: 655, type: !15)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 896, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 7)
!734 = !DILocation(line: 632, column: 67, scope: !716, inlinedAt: !735)
!735 = distinct !DILocation(line: 100, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 66, column: 5)
!737 = distinct !DILexicalBlock(scope: !710, file: !3, line: 63, column: 7)
!738 = !DILocation(line: 61, column: 12, scope: !710)
!739 = !DILocation(line: 63, column: 14, scope: !737)
!740 = !DILocation(line: 63, column: 7, scope: !710)
!741 = !DILocation(line: 64, column: 5, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !3, line: 64, column: 5)
!743 = !{!744, !744, i64 0}
!744 = !{!"any pointer", !745, i64 0}
!745 = !{!"omnipotent char", !746, i64 0}
!746 = !{!"Simple C/C++ TBAA"}
!747 = !DILocation(line: 67, column: 7, scope: !736)
!748 = !DILocation(line: 68, column: 7, scope: !736)
!749 = !DILocation(line: 73, column: 7, scope: !736)
!750 = !DILocation(line: 76, column: 7, scope: !736)
!751 = !DILocation(line: 77, column: 7, scope: !736)
!752 = !DILocation(line: 82, column: 7, scope: !736)
!753 = !DILocation(line: 86, column: 7, scope: !736)
!754 = !DILocation(line: 93, column: 7, scope: !736)
!755 = !DILocation(line: 98, column: 7, scope: !736)
!756 = !DILocation(line: 99, column: 7, scope: !736)
!757 = !DILocation(line: 632, column: 3, scope: !716, inlinedAt: !735)
!758 = !DILocation(line: 643, column: 36, scope: !716, inlinedAt: !735)
!759 = !DILocation(line: 643, column: 25, scope: !716, inlinedAt: !735)
!760 = !DILocation(line: 645, column: 33, scope: !716, inlinedAt: !735)
!761 = !DILocation(line: 645, column: 3, scope: !716, inlinedAt: !735)
!762 = !DILocation(line: 646, column: 13, scope: !716, inlinedAt: !735)
!763 = !DILocation(line: 645, column: 20, scope: !716, inlinedAt: !735)
!764 = !{!765, !744, i64 0}
!765 = !{!"infomap", !744, i64 0, !744, i64 8}
!766 = !DILocation(line: 645, column: 10, scope: !716, inlinedAt: !735)
!767 = !DILocation(line: 645, column: 28, scope: !716, inlinedAt: !735)
!768 = distinct !{!768, !769, !770}
!769 = !DILocation(line: 645, column: 3, scope: !716)
!770 = !DILocation(line: 646, column: 13, scope: !716)
!771 = !DILocation(line: 648, column: 17, scope: !772, inlinedAt: !735)
!772 = distinct !DILexicalBlock(scope: !716, file: !717, line: 648, column: 7)
!773 = !{!765, !744, i64 8}
!774 = !DILocation(line: 648, column: 7, scope: !772, inlinedAt: !735)
!775 = !DILocation(line: 648, column: 7, scope: !716, inlinedAt: !735)
!776 = !DILocation(line: 642, column: 15, scope: !716, inlinedAt: !735)
!777 = !DILocation(line: 651, column: 3, scope: !716, inlinedAt: !735)
!778 = !DILocation(line: 655, column: 29, scope: !716, inlinedAt: !735)
!779 = !DILocation(line: 655, column: 15, scope: !716, inlinedAt: !735)
!780 = !DILocation(line: 656, column: 7, scope: !781, inlinedAt: !735)
!781 = distinct !DILexicalBlock(scope: !716, file: !717, line: 656, column: 7)
!782 = !DILocation(line: 656, column: 19, scope: !781, inlinedAt: !735)
!783 = !DILocation(line: 656, column: 22, scope: !781, inlinedAt: !735)
!784 = !DILocation(line: 656, column: 7, scope: !716, inlinedAt: !735)
!785 = !DILocation(line: 662, column: 7, scope: !786, inlinedAt: !735)
!786 = distinct !DILexicalBlock(scope: !781, file: !717, line: 657, column: 5)
!787 = !DILocation(line: 664, column: 5, scope: !786, inlinedAt: !735)
!788 = !DILocation(line: 665, column: 3, scope: !716, inlinedAt: !735)
!789 = !DILocation(line: 667, column: 3, scope: !716, inlinedAt: !735)
!790 = !DILocation(line: 669, column: 1, scope: !716, inlinedAt: !735)
!791 = !DILocation(line: 103, column: 3, scope: !710)
!792 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 146, type: !793, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !796)
!793 = !DISubroutineType(types: !794)
!794 = !{!24, !24, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !817, !822, !826, !829, !831}
!797 = !DILocalVariable(name: "argc", arg: 1, scope: !792, file: !3, line: 146, type: !24)
!798 = !DILocalVariable(name: "argv", arg: 2, scope: !792, file: !3, line: 146, type: !795)
!799 = !DILocalVariable(name: "dest_dir", scope: !792, file: !3, line: 148, type: !15)
!800 = !DILocalVariable(name: "dest_dir_arg", scope: !792, file: !3, line: 149, type: !15)
!801 = !DILocalVariable(name: "suppress_file_err", scope: !792, file: !3, line: 150, type: !12)
!802 = !DILocalVariable(name: "c", scope: !792, file: !3, line: 151, type: !24)
!803 = !DILocalVariable(name: "n_args", scope: !792, file: !3, line: 152, type: !65)
!804 = !DILocalVariable(name: "template", scope: !792, file: !3, line: 153, type: !6)
!805 = !DILocalVariable(name: "suffix", scope: !792, file: !3, line: 154, type: !6)
!806 = !DILocalVariable(name: "use_dest_dir", scope: !792, file: !3, line: 155, type: !12)
!807 = !DILocalVariable(name: "deprecated_t_option", scope: !792, file: !3, line: 156, type: !12)
!808 = !DILocalVariable(name: "create_directory", scope: !792, file: !3, line: 157, type: !12)
!809 = !DILocalVariable(name: "dry_run", scope: !792, file: !3, line: 158, type: !12)
!810 = !DILocalVariable(name: "status", scope: !792, file: !3, line: 159, type: !24)
!811 = !DILocalVariable(name: "x_count", scope: !792, file: !3, line: 160, type: !100)
!812 = !DILocalVariable(name: "suffix_len", scope: !792, file: !3, line: 161, type: !100)
!813 = !DILocalVariable(name: "dest_name", scope: !792, file: !3, line: 162, type: !6)
!814 = !DILocalVariable(name: "len", scope: !815, file: !3, line: 227, type: !100)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 226, column: 5)
!816 = distinct !DILexicalBlock(scope: !792, file: !3, line: 225, column: 7)
!817 = !DILocalVariable(name: "env", scope: !818, file: !3, line: 267, type: !6)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 266, column: 9)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 265, column: 11)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 264, column: 5)
!821 = distinct !DILexicalBlock(scope: !792, file: !3, line: 263, column: 7)
!822 = !DILocalVariable(name: "env", scope: !823, file: !3, line: 286, type: !6)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 285, column: 13)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 282, column: 15)
!825 = distinct !DILexicalBlock(scope: !819, file: !3, line: 281, column: 9)
!826 = !DILocalVariable(name: "err", scope: !827, file: !3, line: 308, type: !24)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 307, column: 5)
!828 = distinct !DILexicalBlock(scope: !792, file: !3, line: 306, column: 7)
!829 = !DILocalVariable(name: "fd", scope: !830, file: !3, line: 319, type: !24)
!830 = distinct !DILexicalBlock(scope: !828, file: !3, line: 318, column: 5)
!831 = !DILocalVariable(name: "saved_errno", scope: !832, file: !3, line: 336, type: !24)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 335, column: 9)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 334, column: 11)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 330, column: 5)
!835 = distinct !DILexicalBlock(scope: !792, file: !3, line: 329, column: 7)
!836 = !DILocation(line: 146, column: 11, scope: !792)
!837 = !DILocation(line: 146, column: 24, scope: !792)
!838 = !DILocation(line: 149, column: 15, scope: !792)
!839 = !DILocation(line: 150, column: 8, scope: !792)
!840 = !DILocation(line: 154, column: 9, scope: !792)
!841 = !DILocation(line: 155, column: 8, scope: !792)
!842 = !DILocation(line: 156, column: 8, scope: !792)
!843 = !DILocation(line: 157, column: 8, scope: !792)
!844 = !DILocation(line: 158, column: 8, scope: !792)
!845 = !DILocation(line: 159, column: 7, scope: !792)
!846 = !DILocation(line: 165, column: 21, scope: !792)
!847 = !DILocation(line: 165, column: 3, scope: !792)
!848 = !DILocation(line: 166, column: 3, scope: !792)
!849 = !DILocation(line: 167, column: 3, scope: !792)
!850 = !DILocation(line: 168, column: 3, scope: !792)
!851 = !DILocation(line: 170, column: 3, scope: !792)
!852 = !DILocation(line: 172, column: 3, scope: !792)
!853 = !DILocation(line: 172, column: 15, scope: !792)
!854 = !DILocation(line: 151, column: 7, scope: !792)
!855 = distinct !{!855, !852, !856}
!856 = !DILocation(line: 206, column: 5, scope: !792)
!857 = !DILocation(line: 180, column: 26, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 175, column: 9)
!859 = distinct !DILexicalBlock(scope: !792, file: !3, line: 173, column: 5)
!860 = !DILocation(line: 182, column: 11, scope: !858)
!861 = !DILocation(line: 195, column: 20, scope: !858)
!862 = !DILocation(line: 196, column: 11, scope: !858)
!863 = !DILocation(line: 198, column: 9, scope: !858)
!864 = !DILocation(line: 202, column: 9, scope: !858)
!865 = !DILocation(line: 204, column: 11, scope: !858)
!866 = !DILocation(line: 208, column: 19, scope: !792)
!867 = !{!868, !868, i64 0}
!868 = !{!"int", !745, i64 0}
!869 = !DILocation(line: 208, column: 17, scope: !792)
!870 = !DILocation(line: 152, column: 16, scope: !792)
!871 = !DILocation(line: 209, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !792, file: !3, line: 209, column: 7)
!873 = !DILocation(line: 209, column: 7, scope: !792)
!874 = !DILocation(line: 211, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 210, column: 5)
!876 = !DILocation(line: 211, column: 7, scope: !875)
!877 = !DILocation(line: 212, column: 7, scope: !875)
!878 = !DILocation(line: 215, column: 14, scope: !879)
!879 = distinct !DILexicalBlock(scope: !792, file: !3, line: 215, column: 7)
!880 = !DILocation(line: 215, column: 7, scope: !792)
!881 = !DILocation(line: 222, column: 18, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 221, column: 5)
!883 = !DILocation(line: 153, column: 9, scope: !792)
!884 = !DILocation(line: 0, scope: !792)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 225, column: 7, scope: !816)
!887 = !DILocation(line: 225, column: 7, scope: !792)
!888 = !DILocation(line: 227, column: 20, scope: !815)
!889 = !DILocation(line: 227, column: 14, scope: !815)
!890 = !DILocation(line: 228, column: 12, scope: !891)
!891 = distinct !DILexicalBlock(scope: !815, file: !3, line: 228, column: 11)
!892 = !DILocation(line: 228, column: 16, scope: !891)
!893 = !DILocation(line: 228, column: 32, scope: !891)
!894 = !DILocation(line: 228, column: 19, scope: !891)
!895 = !{!745, !745, i64 0}
!896 = !DILocation(line: 228, column: 37, scope: !891)
!897 = !DILocation(line: 228, column: 11, scope: !815)
!898 = !DILocation(line: 230, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !891, file: !3, line: 229, column: 9)
!900 = !DILocation(line: 234, column: 20, scope: !815)
!901 = !DILocation(line: 161, column: 10, scope: !792)
!902 = !DILocation(line: 235, column: 35, scope: !815)
!903 = !DILocation(line: 235, column: 48, scope: !815)
!904 = !DILocalVariable(name: "n", arg: 1, scope: !905, file: !219, line: 216, type: !100)
!905 = distinct !DISubprogram(name: "xcharalloc", scope: !219, file: !219, line: 216, type: !906, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!6, !100}
!908 = !{!904}
!909 = !DILocation(line: 216, column: 20, scope: !905, inlinedAt: !910)
!910 = distinct !DILocation(line: 235, column: 19, scope: !815)
!911 = !DILocation(line: 218, column: 10, scope: !905, inlinedAt: !910)
!912 = !DILocation(line: 162, column: 9, scope: !792)
!913 = !DILocation(line: 236, column: 7, scope: !815)
!914 = !DILocation(line: 237, column: 25, scope: !815)
!915 = !DILocation(line: 237, column: 7, scope: !815)
!916 = !DILocation(line: 240, column: 5, scope: !815)
!917 = !DILocation(line: 243, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !816, file: !3, line: 242, column: 5)
!919 = !DILocation(line: 244, column: 16, scope: !918)
!920 = !DILocation(line: 245, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 245, column: 11)
!922 = !DILocation(line: 245, column: 11, scope: !918)
!923 = !DILocation(line: 246, column: 18, scope: !921)
!924 = !DILocation(line: 246, column: 9, scope: !921)
!925 = !DILocation(line: 248, column: 15, scope: !921)
!926 = !DILocation(line: 0, scope: !921)
!927 = !DILocation(line: 249, column: 20, scope: !918)
!928 = !DILocation(line: 0, scope: !918)
!929 = !DILocation(line: 253, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !792, file: !3, line: 253, column: 7)
!931 = !DILocation(line: 253, column: 18, scope: !930)
!932 = !DILocation(line: 253, column: 21, scope: !930)
!933 = !DILocation(line: 253, column: 45, scope: !930)
!934 = !DILocation(line: 253, column: 7, scope: !792)
!935 = !DILocation(line: 255, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 254, column: 5)
!937 = !DILocation(line: 259, column: 53, scope: !792)
!938 = !DILocalVariable(name: "s", arg: 1, scope: !939, file: !3, line: 107, type: !15)
!939 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 107, type: !940, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!100, !15, !100}
!942 = !{!938, !943, !944}
!943 = !DILocalVariable(name: "len", arg: 2, scope: !939, file: !3, line: 107, type: !100)
!944 = !DILocalVariable(name: "n", scope: !939, file: !3, line: 109, type: !100)
!945 = !DILocation(line: 107, column: 36, scope: !939, inlinedAt: !946)
!946 = distinct !DILocation(line: 259, column: 13, scope: !792)
!947 = !DILocation(line: 107, column: 46, scope: !939, inlinedAt: !946)
!948 = !DILocation(line: 109, column: 10, scope: !939, inlinedAt: !946)
!949 = !DILocation(line: 110, column: 11, scope: !950, inlinedAt: !946)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 110, column: 3)
!951 = distinct !DILexicalBlock(scope: !939, file: !3, line: 110, column: 3)
!952 = !DILocation(line: 110, column: 15, scope: !950, inlinedAt: !946)
!953 = !DILocation(line: 110, column: 23, scope: !950, inlinedAt: !946)
!954 = !DILocation(line: 110, column: 18, scope: !950, inlinedAt: !946)
!955 = !DILocation(line: 110, column: 27, scope: !950, inlinedAt: !946)
!956 = !DILocation(line: 110, column: 3, scope: !951, inlinedAt: !946)
!957 = !DILocation(line: 111, column: 5, scope: !950, inlinedAt: !946)
!958 = distinct !{!958, !959, !960}
!959 = !DILocation(line: 110, column: 3, scope: !951)
!960 = !DILocation(line: 111, column: 7, scope: !951)
!961 = !DILocation(line: 0, scope: !950, inlinedAt: !946)
!962 = !DILocation(line: 160, column: 10, scope: !792)
!963 = !DILocation(line: 260, column: 15, scope: !964)
!964 = distinct !DILexicalBlock(scope: !792, file: !3, line: 260, column: 7)
!965 = !DILocation(line: 260, column: 7, scope: !792)
!966 = !DILocation(line: 261, column: 5, scope: !964)
!967 = !DILocation(line: 263, column: 7, scope: !821)
!968 = !DILocation(line: 263, column: 7, scope: !792)
!969 = !DILocation(line: 265, column: 11, scope: !819)
!970 = !DILocation(line: 265, column: 11, scope: !820)
!971 = !DILocation(line: 267, column: 23, scope: !818)
!972 = !DILocation(line: 267, column: 17, scope: !818)
!973 = !DILocation(line: 268, column: 15, scope: !974)
!974 = distinct !DILexicalBlock(scope: !818, file: !3, line: 268, column: 15)
!975 = !DILocation(line: 268, column: 19, scope: !974)
!976 = !DILocation(line: 268, column: 22, scope: !974)
!977 = !DILocation(line: 268, column: 15, scope: !818)
!978 = !DILocation(line: 270, column: 20, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 270, column: 20)
!980 = !DILocation(line: 270, column: 33, scope: !979)
!981 = !DILocation(line: 270, column: 36, scope: !979)
!982 = !DILocation(line: 270, column: 20, scope: !974)
!983 = !DILocation(line: 0, scope: !979)
!984 = !DILocation(line: 148, column: 15, scope: !792)
!985 = !DILocation(line: 275, column: 15, scope: !986)
!986 = distinct !DILexicalBlock(scope: !818, file: !3, line: 275, column: 15)
!987 = !DILocation(line: 275, column: 41, scope: !986)
!988 = !DILocation(line: 275, column: 15, scope: !818)
!989 = !DILocation(line: 276, column: 13, scope: !986)
!990 = !DILocation(line: 282, column: 15, scope: !824)
!991 = !DILocation(line: 282, column: 28, scope: !824)
!992 = !DILocation(line: 282, column: 31, scope: !824)
!993 = !DILocation(line: 282, column: 15, scope: !825)
!994 = !DILocation(line: 286, column: 27, scope: !823)
!995 = !DILocation(line: 286, column: 21, scope: !823)
!996 = !DILocation(line: 287, column: 27, scope: !823)
!997 = !DILocation(line: 287, column: 31, scope: !823)
!998 = !DILocation(line: 287, column: 34, scope: !823)
!999 = !DILocation(line: 0, scope: !823)
!1000 = !DILocation(line: 289, column: 15, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !825, file: !3, line: 289, column: 15)
!1002 = !DILocation(line: 289, column: 15, scope: !825)
!1003 = !DILocation(line: 290, column: 13, scope: !1001)
!1004 = !DILocation(line: 0, scope: !824)
!1005 = !DILocation(line: 296, column: 19, scope: !820)
!1006 = !DILocation(line: 297, column: 7, scope: !820)
!1007 = !DILocation(line: 300, column: 5, scope: !820)
!1008 = !DILocation(line: 0, scope: !815)
!1009 = !DILocation(line: 304, column: 15, scope: !792)
!1010 = !DILocation(line: 306, column: 7, scope: !828)
!1011 = !DILocation(line: 0, scope: !827)
!1012 = !DILocation(line: 306, column: 7, scope: !792)
!1013 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1014, file: !3, line: 123, type: !6)
!1014 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 123, type: !1015, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!24, !6, !100, !100, !12}
!1017 = !{!1013, !1018, !1019, !1020}
!1018 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1014, file: !3, line: 123, type: !100)
!1019 = !DILocalVariable(name: "x_len", arg: 3, scope: !1014, file: !3, line: 123, type: !100)
!1020 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1014, file: !3, line: 123, type: !12)
!1021 = !DILocation(line: 123, column: 20, scope: !1014, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 308, column: 17, scope: !827)
!1023 = !DILocation(line: 123, column: 33, scope: !1014, inlinedAt: !1022)
!1024 = !DILocation(line: 123, column: 50, scope: !1014, inlinedAt: !1022)
!1025 = !DILocation(line: 123, column: 62, scope: !1014, inlinedAt: !1022)
!1026 = !DILocation(line: 125, column: 47, scope: !1014, inlinedAt: !1022)
!1027 = !DILocation(line: 125, column: 10, scope: !1014, inlinedAt: !1022)
!1028 = !DILocation(line: 308, column: 11, scope: !827)
!1029 = !DILocation(line: 309, column: 15, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !827, file: !3, line: 309, column: 11)
!1031 = !DILocation(line: 309, column: 11, scope: !827)
!1032 = !DILocation(line: 311, column: 16, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 311, column: 15)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 310, column: 9)
!1035 = !DILocation(line: 311, column: 15, scope: !1034)
!1036 = !DILocation(line: 312, column: 23, scope: !1033)
!1037 = !DILocation(line: 312, column: 30, scope: !1033)
!1038 = !DILocation(line: 313, column: 20, scope: !1033)
!1039 = !DILocation(line: 312, column: 13, scope: !1033)
!1040 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1041, file: !3, line: 116, type: !6)
!1041 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 116, type: !1015, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1042)
!1042 = !{!1040, !1043, !1044, !1045}
!1043 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1041, file: !3, line: 116, type: !100)
!1044 = !DILocalVariable(name: "x_len", arg: 3, scope: !1041, file: !3, line: 116, type: !100)
!1045 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1041, file: !3, line: 116, type: !12)
!1046 = !DILocation(line: 116, column: 20, scope: !1041, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 319, column: 16, scope: !830)
!1048 = !DILocation(line: 116, column: 33, scope: !1041, inlinedAt: !1047)
!1049 = !DILocation(line: 116, column: 50, scope: !1041, inlinedAt: !1047)
!1050 = !DILocation(line: 116, column: 62, scope: !1041, inlinedAt: !1047)
!1051 = !DILocation(line: 118, column: 47, scope: !1041, inlinedAt: !1047)
!1052 = !DILocation(line: 118, column: 10, scope: !1041, inlinedAt: !1047)
!1053 = !DILocation(line: 319, column: 11, scope: !830)
!1054 = !DILocation(line: 320, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !830, file: !3, line: 320, column: 11)
!1056 = !DILocation(line: 320, column: 18, scope: !1055)
!1057 = !DILocation(line: 320, column: 31, scope: !1055)
!1058 = !DILocation(line: 331, column: 7, scope: !834)
!1059 = !DILocation(line: 334, column: 20, scope: !833)
!1060 = !DILocation(line: 320, column: 34, scope: !1055)
!1061 = !DILocation(line: 320, column: 45, scope: !1055)
!1062 = !DILocation(line: 320, column: 11, scope: !830)
!1063 = !DILocation(line: 322, column: 16, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 322, column: 15)
!1065 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 321, column: 9)
!1066 = !DILocation(line: 322, column: 15, scope: !1065)
!1067 = !DILocation(line: 323, column: 23, scope: !1064)
!1068 = !DILocation(line: 323, column: 30, scope: !1064)
!1069 = !DILocation(line: 324, column: 20, scope: !1064)
!1070 = !DILocation(line: 323, column: 13, scope: !1064)
!1071 = !DILocation(line: 334, column: 12, scope: !833)
!1072 = !DILocation(line: 334, column: 62, scope: !833)
!1073 = !DILocation(line: 334, column: 48, scope: !833)
!1074 = !DILocation(line: 334, column: 70, scope: !833)
!1075 = !DILocation(line: 334, column: 11, scope: !834)
!1076 = !DILocation(line: 336, column: 29, scope: !832)
!1077 = !DILocation(line: 336, column: 15, scope: !832)
!1078 = !DILocation(line: 337, column: 11, scope: !832)
!1079 = !DILocation(line: 338, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !832, file: !3, line: 338, column: 15)
!1081 = !DILocation(line: 338, column: 15, scope: !832)
!1082 = !DILocation(line: 339, column: 36, scope: !1080)
!1083 = !DILocation(line: 339, column: 13, scope: !1080)
!1084 = !DILocation(line: 0, scope: !1034)
!1085 = !DILocation(line: 350, column: 1, scope: !792)
!1086 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 137, type: !1087, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null}
!1089 = !DILocation(line: 139, column: 7, scope: !1086)
!1090 = !DILocation(line: 140, column: 5, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 139, column: 7)
!1092 = !DILocation(line: 141, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 141, column: 12)
!1094 = !DILocation(line: 141, column: 12, scope: !1093)
!1095 = !DILocation(line: 141, column: 34, scope: !1093)
!1096 = !DILocation(line: 141, column: 12, scope: !1091)
!1097 = !DILocation(line: 142, column: 5, scope: !1093)
!1098 = !DILocation(line: 143, column: 1, scope: !1086)
!1099 = distinct !DISubprogram(name: "close_stream", scope: !1100, file: !1100, line: 56, type: !1101, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1155)
!1100 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!24, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !1106)
!1105 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !1108)
!1107 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1124, !1126, !1127, !1128, !1131, !1132, !1134, !1136, !1139, !1141, !1144, !1147, !1148, !1149, !1150, !1151}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1106, file: !1107, line: 51, baseType: !24, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1106, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1106, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1106, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1106, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1106, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1106, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1106, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1106, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1106, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1106, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1106, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1106, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1107, line: 36, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1106, file: !1107, line: 70, baseType: !1125, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1106, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1106, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1106, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !658, line: 150, baseType: !1130)
!1130 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1106, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1106, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!1133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1106, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1106, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1107, line: 43, baseType: null)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1106, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !658, line: 151, baseType: !1130)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1106, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1107, line: 37, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1106, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1107, line: 38, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1106, file: !1107, line: 93, baseType: !1125, size: 64, offset: 1344)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1106, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1106, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1106, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1106, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 20)
!1155 = !{!1156, !1157, !1159, !1160}
!1156 = !DILocalVariable(name: "stream", arg: 1, scope: !1099, file: !1100, line: 56, type: !1103)
!1157 = !DILocalVariable(name: "some_pending", scope: !1099, file: !1100, line: 58, type: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1159 = !DILocalVariable(name: "prev_fail", scope: !1099, file: !1100, line: 59, type: !1158)
!1160 = !DILocalVariable(name: "fclose_fail", scope: !1099, file: !1100, line: 60, type: !1158)
!1161 = !DILocation(line: 56, column: 21, scope: !1099)
!1162 = !DILocation(line: 58, column: 30, scope: !1099)
!1163 = !DILocalVariable(name: "__stream", arg: 1, scope: !1164, file: !1165, line: 135, type: !1103)
!1164 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1165, file: !1165, line: 135, type: !1101, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1166)
!1165 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1166 = !{!1163}
!1167 = !DILocation(line: 135, column: 1, scope: !1164, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 59, column: 27, scope: !1099)
!1169 = !DILocation(line: 137, column: 10, scope: !1164, inlinedAt: !1168)
!1170 = !{!1171, !868, i64 0}
!1171 = !{!"_IO_FILE", !868, i64 0, !744, i64 8, !744, i64 16, !744, i64 24, !744, i64 32, !744, i64 40, !744, i64 48, !744, i64 56, !744, i64 64, !744, i64 72, !744, i64 80, !744, i64 88, !744, i64 96, !744, i64 104, !868, i64 112, !868, i64 116, !1172, i64 120, !1173, i64 128, !745, i64 130, !745, i64 131, !744, i64 136, !1172, i64 144, !744, i64 152, !744, i64 160, !744, i64 168, !744, i64 176, !1172, i64 184, !868, i64 192, !745, i64 196}
!1172 = !{!"long", !745, i64 0}
!1173 = !{!"short", !745, i64 0}
!1174 = !DILocation(line: 59, column: 43, scope: !1099)
!1175 = !DILocation(line: 60, column: 29, scope: !1099)
!1176 = !DILocation(line: 60, column: 45, scope: !1099)
!1177 = !DILocation(line: 70, column: 17, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1099, file: !1100, line: 70, column: 7)
!1179 = !DILocation(line: 58, column: 50, scope: !1099)
!1180 = !DILocation(line: 70, column: 33, scope: !1178)
!1181 = !DILocation(line: 70, column: 53, scope: !1178)
!1182 = !DILocation(line: 70, column: 59, scope: !1178)
!1183 = !DILocation(line: 70, column: 7, scope: !1099)
!1184 = !DILocation(line: 72, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1178, file: !1100, line: 71, column: 5)
!1186 = !DILocation(line: 73, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !1100, line: 72, column: 11)
!1188 = !DILocation(line: 73, column: 15, scope: !1187)
!1189 = !DILocation(line: 0, scope: !1099)
!1190 = !DILocation(line: 78, column: 1, scope: !1099)
!1191 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !43, file: !43, line: 51, type: !718, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "file", arg: 1, scope: !1191, file: !43, line: 51, type: !15)
!1194 = !DILocation(line: 51, column: 41, scope: !1191)
!1195 = !DILocation(line: 53, column: 13, scope: !1191)
!1196 = !DILocation(line: 54, column: 1, scope: !1191)
!1197 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !43, file: !43, line: 88, type: !1198, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !12}
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "ignore", arg: 1, scope: !1197, file: !43, line: 88, type: !12)
!1202 = !DILocation(line: 88, column: 37, scope: !1197)
!1203 = !DILocation(line: 90, column: 16, scope: !1197)
!1204 = !{!1205, !1205, i64 0}
!1205 = !{!"_Bool", !745, i64 0}
!1206 = !DILocation(line: 91, column: 1, scope: !1197)
!1207 = distinct !DISubprogram(name: "close_stdout", scope: !43, file: !43, line: 117, type: !1087, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !38, retainedNodes: !1208)
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "write_error", scope: !1210, file: !43, line: 122, type: !15)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !43, line: 121, column: 5)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !43, line: 119, column: 7)
!1212 = !DILocation(line: 119, column: 21, scope: !1211)
!1213 = !DILocation(line: 119, column: 7, scope: !1211)
!1214 = !DILocation(line: 119, column: 29, scope: !1211)
!1215 = !DILocation(line: 120, column: 7, scope: !1211)
!1216 = !DILocation(line: 120, column: 12, scope: !1211)
!1217 = !{i8 0, i8 2}
!1218 = !DILocation(line: 120, column: 25, scope: !1211)
!1219 = !DILocation(line: 120, column: 28, scope: !1211)
!1220 = !DILocation(line: 120, column: 34, scope: !1211)
!1221 = !DILocation(line: 119, column: 7, scope: !1207)
!1222 = !DILocation(line: 122, column: 33, scope: !1210)
!1223 = !DILocation(line: 122, column: 19, scope: !1210)
!1224 = !DILocation(line: 123, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1210, file: !43, line: 123, column: 11)
!1226 = !DILocation(line: 0, scope: !1225)
!1227 = !DILocation(line: 123, column: 11, scope: !1210)
!1228 = !DILocation(line: 124, column: 36, scope: !1225)
!1229 = !DILocation(line: 124, column: 9, scope: !1225)
!1230 = !DILocation(line: 127, column: 9, scope: !1225)
!1231 = !DILocation(line: 129, column: 14, scope: !1210)
!1232 = !DILocation(line: 129, column: 7, scope: !1210)
!1233 = !DILocation(line: 134, column: 42, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1207, file: !43, line: 134, column: 7)
!1235 = !DILocation(line: 134, column: 28, scope: !1234)
!1236 = !DILocation(line: 134, column: 50, scope: !1234)
!1237 = !DILocation(line: 134, column: 7, scope: !1207)
!1238 = !DILocation(line: 135, column: 12, scope: !1234)
!1239 = !DILocation(line: 135, column: 5, scope: !1234)
!1240 = !DILocation(line: 136, column: 1, scope: !1207)
!1241 = distinct !DISubprogram(name: "last_component", scope: !1242, file: !1242, line: 30, type: !1243, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !1245)
!1242 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!6, !15}
!1245 = !{!1246, !1247, !1248, !1249}
!1246 = !DILocalVariable(name: "name", arg: 1, scope: !1241, file: !1242, line: 30, type: !15)
!1247 = !DILocalVariable(name: "base", scope: !1241, file: !1242, line: 32, type: !15)
!1248 = !DILocalVariable(name: "p", scope: !1241, file: !1242, line: 33, type: !15)
!1249 = !DILocalVariable(name: "saw_slash", scope: !1241, file: !1242, line: 34, type: !12)
!1250 = !DILocation(line: 30, column: 29, scope: !1241)
!1251 = !DILocation(line: 32, column: 15, scope: !1241)
!1252 = !DILocation(line: 34, column: 8, scope: !1241)
!1253 = !DILocation(line: 36, column: 3, scope: !1241)
!1254 = !DILocation(line: 0, scope: !1241)
!1255 = !DILocation(line: 36, column: 10, scope: !1241)
!1256 = !DILocation(line: 37, column: 9, scope: !1241)
!1257 = distinct !{!1257, !1253, !1256}
!1258 = !DILocation(line: 39, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !1242, line: 39, column: 3)
!1260 = distinct !DILexicalBlock(scope: !1241, file: !1242, line: 39, column: 3)
!1261 = !DILocation(line: 0, scope: !1259)
!1262 = !DILocation(line: 0, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1242, line: 41, column: 11)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !1242, line: 40, column: 5)
!1265 = !DILocation(line: 33, column: 15, scope: !1241)
!1266 = !DILocation(line: 39, column: 3, scope: !1260)
!1267 = !DILocation(line: 43, column: 16, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !1242, line: 43, column: 16)
!1269 = !DILocation(line: 43, column: 16, scope: !1263)
!1270 = !DILocation(line: 39, column: 23, scope: !1259)
!1271 = !DILocation(line: 39, column: 3, scope: !1259)
!1272 = distinct !{!1272, !1266, !1273}
!1273 = !DILocation(line: 48, column: 5, scope: !1260)
!1274 = !DILocation(line: 50, column: 3, scope: !1241)
!1275 = distinct !DISubprogram(name: "base_len", scope: !1242, file: !1242, line: 58, type: !1276, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!100, !15}
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "name", arg: 1, scope: !1275, file: !1242, line: 58, type: !15)
!1280 = !DILocalVariable(name: "len", scope: !1275, file: !1242, line: 60, type: !100)
!1281 = !DILocalVariable(name: "prefix_len", scope: !1275, file: !1242, line: 61, type: !100)
!1282 = !DILocation(line: 58, column: 23, scope: !1275)
!1283 = !DILocation(line: 61, column: 10, scope: !1275)
!1284 = !DILocation(line: 63, column: 14, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !1242, line: 63, column: 3)
!1286 = !DILocation(line: 60, column: 10, scope: !1275)
!1287 = !DILocation(line: 63, column: 8, scope: !1285)
!1288 = !DILocation(line: 0, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !1242, line: 63, column: 3)
!1290 = !DILocation(line: 63, column: 32, scope: !1289)
!1291 = !DILocation(line: 63, column: 38, scope: !1289)
!1292 = !DILocation(line: 63, column: 41, scope: !1289)
!1293 = !DILocation(line: 63, column: 3, scope: !1285)
!1294 = distinct !{!1294, !1293, !1295}
!1295 = !DILocation(line: 64, column: 5, scope: !1285)
!1296 = !DILocation(line: 74, column: 3, scope: !1275)
!1297 = distinct !DISubprogram(name: "file_name_concat", scope: !1298, file: !1298, line: 35, type: !1299, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !1301)
!1298 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!6, !15, !15, !795}
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DILocalVariable(name: "dir", arg: 1, scope: !1297, file: !1298, line: 35, type: !15)
!1303 = !DILocalVariable(name: "base", arg: 2, scope: !1297, file: !1298, line: 35, type: !15)
!1304 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1297, file: !1298, line: 35, type: !795)
!1305 = !DILocalVariable(name: "p", scope: !1297, file: !1298, line: 37, type: !6)
!1306 = !DILocation(line: 35, column: 31, scope: !1297)
!1307 = !DILocation(line: 35, column: 48, scope: !1297)
!1308 = !DILocation(line: 35, column: 61, scope: !1297)
!1309 = !DILocation(line: 37, column: 13, scope: !1297)
!1310 = !DILocation(line: 37, column: 9, scope: !1297)
!1311 = !DILocation(line: 38, column: 9, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1297, file: !1298, line: 38, column: 7)
!1313 = !DILocation(line: 38, column: 7, scope: !1297)
!1314 = !DILocation(line: 39, column: 5, scope: !1312)
!1315 = !DILocation(line: 40, column: 3, scope: !1297)
!1316 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1317, file: !1317, line: 47, type: !1299, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !206, retainedNodes: !1318)
!1317 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1319 = !DILocalVariable(name: "dir", arg: 1, scope: !1316, file: !1317, line: 47, type: !15)
!1320 = !DILocalVariable(name: "base", arg: 2, scope: !1316, file: !1317, line: 47, type: !15)
!1321 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1316, file: !1317, line: 47, type: !795)
!1322 = !DILocalVariable(name: "dirbase", scope: !1316, file: !1317, line: 49, type: !15)
!1323 = !DILocalVariable(name: "dirbaselen", scope: !1316, file: !1317, line: 50, type: !100)
!1324 = !DILocalVariable(name: "dirlen", scope: !1316, file: !1317, line: 51, type: !100)
!1325 = !DILocalVariable(name: "baselen", scope: !1316, file: !1317, line: 52, type: !100)
!1326 = !DILocalVariable(name: "sep", scope: !1316, file: !1317, line: 53, type: !7)
!1327 = !DILocalVariable(name: "p_concat", scope: !1316, file: !1317, line: 70, type: !6)
!1328 = !DILocalVariable(name: "p", scope: !1316, file: !1317, line: 71, type: !6)
!1329 = !DILocation(line: 47, column: 32, scope: !1316)
!1330 = !DILocation(line: 47, column: 49, scope: !1316)
!1331 = !DILocation(line: 47, column: 62, scope: !1316)
!1332 = !DILocation(line: 49, column: 25, scope: !1316)
!1333 = !DILocation(line: 49, column: 15, scope: !1316)
!1334 = !DILocation(line: 50, column: 23, scope: !1316)
!1335 = !DILocation(line: 50, column: 10, scope: !1316)
!1336 = !DILocation(line: 51, column: 27, scope: !1316)
!1337 = !DILocation(line: 51, column: 33, scope: !1316)
!1338 = !DILocation(line: 51, column: 10, scope: !1316)
!1339 = !DILocation(line: 52, column: 20, scope: !1316)
!1340 = !DILocation(line: 52, column: 10, scope: !1316)
!1341 = !DILocation(line: 53, column: 8, scope: !1316)
!1342 = !DILocation(line: 54, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1316, file: !1317, line: 54, column: 7)
!1344 = !DILocation(line: 54, column: 7, scope: !1316)
!1345 = !DILocation(line: 57, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !1317, line: 57, column: 11)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !1317, line: 55, column: 5)
!1348 = !DILocation(line: 57, column: 39, scope: !1346)
!1349 = !DILocation(line: 57, column: 44, scope: !1346)
!1350 = !DILocation(line: 57, column: 11, scope: !1347)
!1351 = !DILocation(line: 60, column: 12, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1343, file: !1317, line: 60, column: 12)
!1353 = !DILocation(line: 60, column: 12, scope: !1343)
!1354 = !DILocation(line: 0, scope: !1316)
!1355 = !DILocation(line: 70, column: 42, scope: !1316)
!1356 = !DILocation(line: 70, column: 37, scope: !1316)
!1357 = !DILocation(line: 70, column: 35, scope: !1316)
!1358 = !DILocation(line: 70, column: 52, scope: !1316)
!1359 = !DILocation(line: 70, column: 62, scope: !1316)
!1360 = !DILocation(line: 70, column: 20, scope: !1316)
!1361 = !DILocation(line: 70, column: 9, scope: !1316)
!1362 = !DILocation(line: 73, column: 16, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1316, file: !1317, line: 73, column: 7)
!1364 = !DILocation(line: 73, column: 7, scope: !1316)
!1365 = !DILocalVariable(name: "__dest", arg: 1, scope: !1366, file: !1367, line: 45, type: !1370)
!1366 = distinct !DISubprogram(name: "mempcpy", scope: !1367, file: !1367, line: 45, type: !1368, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !206, retainedNodes: !1374)
!1367 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!8, !1370, !1371, !100}
!1370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1374 = !{!1365, !1375, !1376}
!1375 = !DILocalVariable(name: "__src", arg: 2, scope: !1366, file: !1367, line: 45, type: !1371)
!1376 = !DILocalVariable(name: "__len", arg: 3, scope: !1366, file: !1367, line: 45, type: !100)
!1377 = !DILocation(line: 45, column: 1, scope: !1366, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 76, column: 7, scope: !1316)
!1379 = !DILocation(line: 48, column: 57, scope: !1366, inlinedAt: !1378)
!1380 = !DILocation(line: 48, column: 10, scope: !1366, inlinedAt: !1378)
!1381 = !DILocation(line: 71, column: 9, scope: !1316)
!1382 = !DILocation(line: 77, column: 6, scope: !1316)
!1383 = !DILocation(line: 78, column: 5, scope: !1316)
!1384 = !DILocation(line: 80, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1316, file: !1317, line: 80, column: 7)
!1386 = !DILocation(line: 80, column: 7, scope: !1316)
!1387 = !DILocation(line: 81, column: 21, scope: !1385)
!1388 = !DILocation(line: 81, column: 5, scope: !1385)
!1389 = !DILocation(line: 45, column: 1, scope: !1366, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 83, column: 7, scope: !1316)
!1391 = !DILocation(line: 48, column: 57, scope: !1366, inlinedAt: !1390)
!1392 = !DILocation(line: 48, column: 10, scope: !1366, inlinedAt: !1390)
!1393 = !DILocation(line: 84, column: 6, scope: !1316)
!1394 = !DILocation(line: 86, column: 3, scope: !1316)
!1395 = !DILocation(line: 87, column: 1, scope: !1316)
!1396 = distinct !DISubprogram(name: "set_program_name", scope: !57, file: !57, line: 39, type: !718, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !53, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DILocalVariable(name: "argv0", arg: 1, scope: !1396, file: !57, line: 39, type: !15)
!1399 = !DILocalVariable(name: "slash", scope: !1396, file: !57, line: 46, type: !15)
!1400 = !DILocalVariable(name: "base", scope: !1396, file: !57, line: 47, type: !15)
!1401 = !DILocation(line: 39, column: 31, scope: !1396)
!1402 = !DILocation(line: 51, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !57, line: 51, column: 7)
!1404 = !DILocation(line: 51, column: 7, scope: !1396)
!1405 = !DILocation(line: 55, column: 14, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !57, line: 52, column: 5)
!1407 = !DILocation(line: 54, column: 7, scope: !1406)
!1408 = !DILocation(line: 56, column: 7, scope: !1406)
!1409 = !DILocation(line: 59, column: 11, scope: !1396)
!1410 = !DILocation(line: 46, column: 15, scope: !1396)
!1411 = !DILocation(line: 60, column: 17, scope: !1396)
!1412 = !DILocation(line: 60, column: 33, scope: !1396)
!1413 = !DILocation(line: 60, column: 11, scope: !1396)
!1414 = !DILocation(line: 47, column: 15, scope: !1396)
!1415 = !DILocation(line: 61, column: 12, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1396, file: !57, line: 61, column: 7)
!1417 = !DILocation(line: 61, column: 20, scope: !1416)
!1418 = !DILocation(line: 61, column: 25, scope: !1416)
!1419 = !DILocation(line: 61, column: 42, scope: !1416)
!1420 = !DILocation(line: 61, column: 28, scope: !1416)
!1421 = !DILocation(line: 61, column: 61, scope: !1416)
!1422 = !DILocation(line: 61, column: 7, scope: !1396)
!1423 = !DILocation(line: 64, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !57, line: 64, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !57, line: 62, column: 5)
!1426 = !DILocation(line: 64, column: 36, scope: !1424)
!1427 = !DILocation(line: 64, column: 11, scope: !1425)
!1428 = !DILocation(line: 66, column: 24, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !57, line: 65, column: 9)
!1430 = !DILocation(line: 70, column: 41, scope: !1429)
!1431 = !DILocation(line: 72, column: 9, scope: !1429)
!1432 = !DILocation(line: 84, column: 16, scope: !1396)
!1433 = !DILocation(line: 90, column: 27, scope: !1396)
!1434 = !DILocation(line: 92, column: 1, scope: !1396)
!1435 = distinct !DISubprogram(name: "clone_quoting_options", scope: !106, file: !106, line: 122, type: !1436, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1439)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1439 = !{!1440, !1441, !1442}
!1440 = !DILocalVariable(name: "o", arg: 1, scope: !1435, file: !106, line: 122, type: !1438)
!1441 = !DILocalVariable(name: "e", scope: !1435, file: !106, line: 124, type: !24)
!1442 = !DILocalVariable(name: "p", scope: !1435, file: !106, line: 125, type: !1438)
!1443 = !DILocation(line: 122, column: 48, scope: !1435)
!1444 = !DILocation(line: 124, column: 11, scope: !1435)
!1445 = !DILocation(line: 124, column: 7, scope: !1435)
!1446 = !DILocation(line: 125, column: 40, scope: !1435)
!1447 = !DILocation(line: 125, column: 31, scope: !1435)
!1448 = !DILocation(line: 125, column: 27, scope: !1435)
!1449 = !DILocation(line: 127, column: 9, scope: !1435)
!1450 = !DILocation(line: 128, column: 3, scope: !1435)
!1451 = distinct !DISubprogram(name: "get_quoting_style", scope: !106, file: !106, line: 133, type: !1452, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1456)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!63, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1456 = !{!1457}
!1457 = !DILocalVariable(name: "o", arg: 1, scope: !1451, file: !106, line: 133, type: !1454)
!1458 = !DILocation(line: 133, column: 50, scope: !1451)
!1459 = !DILocation(line: 135, column: 11, scope: !1451)
!1460 = !DILocation(line: 135, column: 46, scope: !1451)
!1461 = !{!1462, !745, i64 0}
!1462 = !{!"quoting_options", !745, i64 0, !868, i64 4, !745, i64 8, !744, i64 40, !744, i64 48}
!1463 = !DILocation(line: 135, column: 3, scope: !1451)
!1464 = distinct !DISubprogram(name: "set_quoting_style", scope: !106, file: !106, line: 141, type: !1465, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1438, !63}
!1467 = !{!1468, !1469}
!1468 = !DILocalVariable(name: "o", arg: 1, scope: !1464, file: !106, line: 141, type: !1438)
!1469 = !DILocalVariable(name: "s", arg: 2, scope: !1464, file: !106, line: 141, type: !63)
!1470 = !DILocation(line: 141, column: 44, scope: !1464)
!1471 = !DILocation(line: 141, column: 66, scope: !1464)
!1472 = !DILocation(line: 143, column: 4, scope: !1464)
!1473 = !DILocation(line: 143, column: 39, scope: !1464)
!1474 = !DILocation(line: 143, column: 45, scope: !1464)
!1475 = !DILocation(line: 144, column: 1, scope: !1464)
!1476 = distinct !DISubprogram(name: "set_char_quoting", scope: !106, file: !106, line: 152, type: !1477, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!24, !1438, !7, !24}
!1479 = !{!1480, !1481, !1482, !1483, !1485, !1487, !1488}
!1480 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !106, line: 152, type: !1438)
!1481 = !DILocalVariable(name: "c", arg: 2, scope: !1476, file: !106, line: 152, type: !7)
!1482 = !DILocalVariable(name: "i", arg: 3, scope: !1476, file: !106, line: 152, type: !24)
!1483 = !DILocalVariable(name: "uc", scope: !1476, file: !106, line: 154, type: !1484)
!1484 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1485 = !DILocalVariable(name: "p", scope: !1476, file: !106, line: 155, type: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1487 = !DILocalVariable(name: "shift", scope: !1476, file: !106, line: 157, type: !24)
!1488 = !DILocalVariable(name: "r", scope: !1476, file: !106, line: 158, type: !24)
!1489 = !DILocation(line: 152, column: 43, scope: !1476)
!1490 = !DILocation(line: 152, column: 51, scope: !1476)
!1491 = !DILocation(line: 152, column: 58, scope: !1476)
!1492 = !DILocation(line: 154, column: 17, scope: !1476)
!1493 = !DILocation(line: 156, column: 6, scope: !1476)
!1494 = !DILocation(line: 156, column: 62, scope: !1476)
!1495 = !DILocation(line: 156, column: 57, scope: !1476)
!1496 = !DILocation(line: 155, column: 17, scope: !1476)
!1497 = !DILocation(line: 157, column: 15, scope: !1476)
!1498 = !DILocation(line: 157, column: 7, scope: !1476)
!1499 = !DILocation(line: 158, column: 12, scope: !1476)
!1500 = !DILocation(line: 158, column: 15, scope: !1476)
!1501 = !DILocation(line: 158, column: 25, scope: !1476)
!1502 = !DILocation(line: 158, column: 7, scope: !1476)
!1503 = !DILocation(line: 159, column: 13, scope: !1476)
!1504 = !DILocation(line: 159, column: 18, scope: !1476)
!1505 = !DILocation(line: 159, column: 23, scope: !1476)
!1506 = !DILocation(line: 159, column: 6, scope: !1476)
!1507 = !DILocation(line: 160, column: 3, scope: !1476)
!1508 = distinct !DISubprogram(name: "set_quoting_flags", scope: !106, file: !106, line: 168, type: !1509, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!24, !1438, !24}
!1511 = !{!1512, !1513, !1514}
!1512 = !DILocalVariable(name: "o", arg: 1, scope: !1508, file: !106, line: 168, type: !1438)
!1513 = !DILocalVariable(name: "i", arg: 2, scope: !1508, file: !106, line: 168, type: !24)
!1514 = !DILocalVariable(name: "r", scope: !1508, file: !106, line: 170, type: !24)
!1515 = !DILocation(line: 168, column: 44, scope: !1508)
!1516 = !DILocation(line: 168, column: 51, scope: !1508)
!1517 = !DILocation(line: 171, column: 8, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1508, file: !106, line: 171, column: 7)
!1519 = !DILocation(line: 171, column: 7, scope: !1508)
!1520 = !DILocation(line: 173, column: 10, scope: !1508)
!1521 = !{!1462, !868, i64 4}
!1522 = !DILocation(line: 170, column: 7, scope: !1508)
!1523 = !DILocation(line: 174, column: 12, scope: !1508)
!1524 = !DILocation(line: 175, column: 3, scope: !1508)
!1525 = distinct !DISubprogram(name: "set_custom_quoting", scope: !106, file: !106, line: 179, type: !1526, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1438, !15, !15}
!1528 = !{!1529, !1530, !1531}
!1529 = !DILocalVariable(name: "o", arg: 1, scope: !1525, file: !106, line: 179, type: !1438)
!1530 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1525, file: !106, line: 180, type: !15)
!1531 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1525, file: !106, line: 180, type: !15)
!1532 = !DILocation(line: 179, column: 45, scope: !1525)
!1533 = !DILocation(line: 180, column: 33, scope: !1525)
!1534 = !DILocation(line: 180, column: 57, scope: !1525)
!1535 = !DILocation(line: 182, column: 8, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !106, line: 182, column: 7)
!1537 = !DILocation(line: 182, column: 7, scope: !1525)
!1538 = !DILocation(line: 184, column: 6, scope: !1525)
!1539 = !DILocation(line: 184, column: 12, scope: !1525)
!1540 = !DILocation(line: 185, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1525, file: !106, line: 185, column: 7)
!1542 = !DILocation(line: 185, column: 23, scope: !1541)
!1543 = !DILocation(line: 185, column: 19, scope: !1541)
!1544 = !DILocation(line: 186, column: 5, scope: !1541)
!1545 = !DILocation(line: 187, column: 6, scope: !1525)
!1546 = !DILocation(line: 187, column: 17, scope: !1525)
!1547 = !{!1462, !744, i64 40}
!1548 = !DILocation(line: 188, column: 6, scope: !1525)
!1549 = !DILocation(line: 188, column: 18, scope: !1525)
!1550 = !{!1462, !744, i64 48}
!1551 = !DILocation(line: 189, column: 1, scope: !1525)
!1552 = distinct !DISubprogram(name: "quotearg_buffer", scope: !106, file: !106, line: 784, type: !1553, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!100, !6, !100, !15, !100, !1454}
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1556 = !DILocalVariable(name: "buffer", arg: 1, scope: !1552, file: !106, line: 784, type: !6)
!1557 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1552, file: !106, line: 784, type: !100)
!1558 = !DILocalVariable(name: "arg", arg: 3, scope: !1552, file: !106, line: 785, type: !15)
!1559 = !DILocalVariable(name: "argsize", arg: 4, scope: !1552, file: !106, line: 785, type: !100)
!1560 = !DILocalVariable(name: "o", arg: 5, scope: !1552, file: !106, line: 786, type: !1454)
!1561 = !DILocalVariable(name: "p", scope: !1552, file: !106, line: 788, type: !1454)
!1562 = !DILocalVariable(name: "e", scope: !1552, file: !106, line: 789, type: !24)
!1563 = !DILocalVariable(name: "r", scope: !1552, file: !106, line: 790, type: !100)
!1564 = !DILocation(line: 784, column: 24, scope: !1552)
!1565 = !DILocation(line: 784, column: 39, scope: !1552)
!1566 = !DILocation(line: 785, column: 30, scope: !1552)
!1567 = !DILocation(line: 785, column: 42, scope: !1552)
!1568 = !DILocation(line: 786, column: 48, scope: !1552)
!1569 = !DILocation(line: 788, column: 37, scope: !1552)
!1570 = !DILocation(line: 788, column: 33, scope: !1552)
!1571 = !DILocation(line: 789, column: 11, scope: !1552)
!1572 = !DILocation(line: 789, column: 7, scope: !1552)
!1573 = !DILocation(line: 791, column: 43, scope: !1552)
!1574 = !DILocation(line: 791, column: 53, scope: !1552)
!1575 = !DILocation(line: 791, column: 60, scope: !1552)
!1576 = !DILocation(line: 792, column: 43, scope: !1552)
!1577 = !DILocation(line: 792, column: 58, scope: !1552)
!1578 = !DILocation(line: 790, column: 14, scope: !1552)
!1579 = !DILocation(line: 790, column: 10, scope: !1552)
!1580 = !DILocation(line: 793, column: 9, scope: !1552)
!1581 = !DILocation(line: 794, column: 3, scope: !1552)
!1582 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !106, file: !106, line: 256, type: !1583, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1587)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!100, !6, !100, !15, !100, !63, !24, !1585, !15, !15}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1612, !1613, !1614, !1615, !1616, !1619, !1620, !1638, !1641, !1642, !1649}
!1588 = !DILocalVariable(name: "buffer", arg: 1, scope: !1582, file: !106, line: 256, type: !6)
!1589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1582, file: !106, line: 256, type: !100)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1582, file: !106, line: 257, type: !15)
!1591 = !DILocalVariable(name: "argsize", arg: 4, scope: !1582, file: !106, line: 257, type: !100)
!1592 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1582, file: !106, line: 258, type: !63)
!1593 = !DILocalVariable(name: "flags", arg: 6, scope: !1582, file: !106, line: 258, type: !24)
!1594 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1582, file: !106, line: 259, type: !1585)
!1595 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1582, file: !106, line: 260, type: !15)
!1596 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1582, file: !106, line: 261, type: !15)
!1597 = !DILocalVariable(name: "i", scope: !1582, file: !106, line: 263, type: !100)
!1598 = !DILocalVariable(name: "len", scope: !1582, file: !106, line: 264, type: !100)
!1599 = !DILocalVariable(name: "orig_buffersize", scope: !1582, file: !106, line: 265, type: !100)
!1600 = !DILocalVariable(name: "quote_string", scope: !1582, file: !106, line: 266, type: !15)
!1601 = !DILocalVariable(name: "quote_string_len", scope: !1582, file: !106, line: 267, type: !100)
!1602 = !DILocalVariable(name: "backslash_escapes", scope: !1582, file: !106, line: 268, type: !12)
!1603 = !DILocalVariable(name: "unibyte_locale", scope: !1582, file: !106, line: 269, type: !12)
!1604 = !DILocalVariable(name: "elide_outer_quotes", scope: !1582, file: !106, line: 270, type: !12)
!1605 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1582, file: !106, line: 271, type: !12)
!1606 = !DILocalVariable(name: "encountered_single_quote", scope: !1582, file: !106, line: 272, type: !12)
!1607 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1582, file: !106, line: 273, type: !12)
!1608 = !DILocalVariable(name: "c", scope: !1609, file: !106, line: 402, type: !1484)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !106, line: 401, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !106, line: 400, column: 3)
!1611 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 400, column: 3)
!1612 = !DILocalVariable(name: "esc", scope: !1609, file: !106, line: 403, type: !1484)
!1613 = !DILocalVariable(name: "is_right_quote", scope: !1609, file: !106, line: 404, type: !12)
!1614 = !DILocalVariable(name: "escaping", scope: !1609, file: !106, line: 405, type: !12)
!1615 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1609, file: !106, line: 406, type: !12)
!1616 = !DILocalVariable(name: "m", scope: !1617, file: !106, line: 610, type: !100)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 608, column: 11)
!1618 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 426, column: 9)
!1619 = !DILocalVariable(name: "printable", scope: !1617, file: !106, line: 612, type: !12)
!1620 = !DILocalVariable(name: "mbstate", scope: !1621, file: !106, line: 621, type: !1623)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !106, line: 620, column: 15)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !106, line: 614, column: 17)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1624, line: 6, baseType: !1625)
!1624 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1626, line: 21, baseType: !1627)
!1626 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1626, line: 13, size: 64, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1627, file: !1626, line: 15, baseType: !24, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1627, file: !1626, line: 20, baseType: !1631, size: 32, offset: 32)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1626, line: 16, size: 32, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1631, file: !1626, line: 18, baseType: !65, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1631, file: !1626, line: 19, baseType: !1635, size: 32)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1636)
!1636 = !{!1637}
!1637 = !DISubrange(count: 4)
!1638 = !DILocalVariable(name: "w", scope: !1639, file: !106, line: 631, type: !1640)
!1639 = distinct !DILexicalBlock(scope: !1621, file: !106, line: 630, column: 19)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 90, baseType: !24)
!1641 = !DILocalVariable(name: "bytes", scope: !1639, file: !106, line: 632, type: !100)
!1642 = !DILocalVariable(name: "j", scope: !1643, file: !106, line: 657, type: !100)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !106, line: 656, column: 27)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !106, line: 654, column: 29)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !106, line: 649, column: 23)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !106, line: 641, column: 30)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !106, line: 636, column: 30)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !106, line: 634, column: 25)
!1649 = !DILocalVariable(name: "ilim", scope: !1650, file: !106, line: 684, type: !100)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !106, line: 681, column: 15)
!1651 = distinct !DILexicalBlock(scope: !1617, file: !106, line: 680, column: 17)
!1652 = !DILocation(line: 256, column: 33, scope: !1582)
!1653 = !DILocation(line: 256, column: 48, scope: !1582)
!1654 = !DILocation(line: 257, column: 39, scope: !1582)
!1655 = !DILocation(line: 257, column: 51, scope: !1582)
!1656 = !DILocation(line: 258, column: 46, scope: !1582)
!1657 = !DILocation(line: 258, column: 65, scope: !1582)
!1658 = !DILocation(line: 259, column: 47, scope: !1582)
!1659 = !DILocation(line: 260, column: 39, scope: !1582)
!1660 = !DILocation(line: 261, column: 39, scope: !1582)
!1661 = !DILocation(line: 264, column: 10, scope: !1582)
!1662 = !DILocation(line: 265, column: 10, scope: !1582)
!1663 = !DILocation(line: 266, column: 15, scope: !1582)
!1664 = !DILocation(line: 267, column: 10, scope: !1582)
!1665 = !DILocation(line: 268, column: 8, scope: !1582)
!1666 = !DILocation(line: 269, column: 25, scope: !1582)
!1667 = !DILocation(line: 269, column: 36, scope: !1582)
!1668 = !DILocation(line: 270, column: 8, scope: !1582)
!1669 = !DILocation(line: 271, column: 8, scope: !1582)
!1670 = !DILocation(line: 272, column: 8, scope: !1582)
!1671 = !DILocation(line: 273, column: 8, scope: !1582)
!1672 = !DILocation(line: 273, column: 3, scope: !1582)
!1673 = !DILocation(line: 0, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 317, column: 5)
!1675 = !DILocation(line: 316, column: 3, scope: !1582)
!1676 = !DILocation(line: 323, column: 11, scope: !1674)
!1677 = !DILocation(line: 323, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !106, line: 323, column: 11)
!1679 = !DILocation(line: 324, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !106, line: 324, column: 9)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !106, line: 324, column: 9)
!1682 = !DILocation(line: 324, column: 9, scope: !1681)
!1683 = !DILocation(line: 362, column: 26, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !106, line: 340, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !106, line: 339, column: 13)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !106, line: 338, column: 7)
!1687 = !DILocation(line: 363, column: 27, scope: !1684)
!1688 = !DILocation(line: 364, column: 11, scope: !1684)
!1689 = !DILocation(line: 365, column: 14, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !106, line: 365, column: 13)
!1691 = !DILocation(line: 365, column: 13, scope: !1686)
!1692 = !DILocation(line: 366, column: 43, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !106, line: 366, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !106, line: 366, column: 11)
!1695 = !DILocation(line: 366, column: 11, scope: !1694)
!1696 = !DILocation(line: 367, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !106, line: 367, column: 13)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !106, line: 367, column: 13)
!1699 = !DILocation(line: 367, column: 13, scope: !1698)
!1700 = !DILocation(line: 366, column: 70, scope: !1693)
!1701 = distinct !{!1701, !1695, !1702}
!1702 = !DILocation(line: 367, column: 13, scope: !1694)
!1703 = !DILocation(line: 370, column: 28, scope: !1686)
!1704 = !DILocation(line: 372, column: 7, scope: !1674)
!1705 = !DILocation(line: 376, column: 7, scope: !1674)
!1706 = !DILocation(line: 379, column: 7, scope: !1674)
!1707 = !DILocation(line: 381, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1674, file: !106, line: 381, column: 11)
!1709 = !DILocation(line: 381, column: 11, scope: !1674)
!1710 = !DILocation(line: 0, scope: !1708)
!1711 = !DILocation(line: 386, column: 12, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1674, file: !106, line: 386, column: 11)
!1713 = !DILocation(line: 386, column: 11, scope: !1674)
!1714 = !DILocation(line: 387, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !106, line: 387, column: 9)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !106, line: 387, column: 9)
!1717 = !DILocation(line: 387, column: 9, scope: !1716)
!1718 = !DILocation(line: 394, column: 7, scope: !1674)
!1719 = !DILocation(line: 397, column: 7, scope: !1674)
!1720 = !DILocation(line: 0, scope: !1582)
!1721 = !DILocation(line: 263, column: 10, scope: !1582)
!1722 = !DILocation(line: 400, column: 8, scope: !1611)
!1723 = !DILocation(line: 0, scope: !1610)
!1724 = !DILocation(line: 400, column: 27, scope: !1610)
!1725 = !DILocation(line: 400, column: 19, scope: !1610)
!1726 = !DILocation(line: 400, column: 41, scope: !1610)
!1727 = !DILocation(line: 400, column: 48, scope: !1610)
!1728 = !DILocation(line: 400, column: 3, scope: !1611)
!1729 = !DILocation(line: 400, column: 60, scope: !1610)
!1730 = !DILocation(line: 404, column: 12, scope: !1609)
!1731 = !DILocation(line: 405, column: 12, scope: !1609)
!1732 = !DILocation(line: 406, column: 12, scope: !1609)
!1733 = !DILocation(line: 409, column: 11, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 408, column: 11)
!1735 = !DILocation(line: 411, column: 17, scope: !1734)
!1736 = !DILocation(line: 412, column: 39, scope: !1734)
!1737 = !DILocation(line: 416, column: 32, scope: !1734)
!1738 = !DILocation(line: 412, column: 19, scope: !1734)
!1739 = !DILocation(line: 412, column: 15, scope: !1734)
!1740 = !DILocation(line: 417, column: 11, scope: !1734)
!1741 = !DILocation(line: 417, column: 26, scope: !1734)
!1742 = !DILocation(line: 417, column: 14, scope: !1734)
!1743 = !DILocation(line: 417, column: 63, scope: !1734)
!1744 = !DILocation(line: 408, column: 11, scope: !1609)
!1745 = !DILocation(line: 0, scope: !1609)
!1746 = !DILocation(line: 424, column: 11, scope: !1609)
!1747 = !DILocation(line: 402, column: 21, scope: !1609)
!1748 = !DILocation(line: 425, column: 7, scope: !1609)
!1749 = !DILocation(line: 428, column: 15, scope: !1618)
!1750 = !DILocation(line: 430, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !106, line: 430, column: 15)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !106, line: 429, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 428, column: 15)
!1754 = !DILocation(line: 430, column: 15, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !106, line: 430, column: 15)
!1756 = !DILocation(line: 430, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !106, line: 430, column: 15)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !106, line: 430, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !106, line: 430, column: 15)
!1760 = !DILocation(line: 430, column: 15, scope: !1758)
!1761 = !DILocation(line: 430, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !106, line: 430, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !106, line: 430, column: 15)
!1764 = !DILocation(line: 430, column: 15, scope: !1763)
!1765 = !DILocation(line: 430, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !106, line: 430, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1759, file: !106, line: 430, column: 15)
!1768 = !DILocation(line: 430, column: 15, scope: !1767)
!1769 = !DILocation(line: 430, column: 15, scope: !1759)
!1770 = !DILocation(line: 430, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !106, line: 430, column: 15)
!1772 = distinct !DILexicalBlock(scope: !1751, file: !106, line: 430, column: 15)
!1773 = !DILocation(line: 430, column: 15, scope: !1772)
!1774 = !DILocation(line: 438, column: 19, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1752, file: !106, line: 437, column: 19)
!1776 = !DILocation(line: 438, column: 24, scope: !1775)
!1777 = !DILocation(line: 438, column: 28, scope: !1775)
!1778 = !DILocation(line: 438, column: 38, scope: !1775)
!1779 = !DILocation(line: 438, column: 48, scope: !1775)
!1780 = !DILocation(line: 438, column: 59, scope: !1775)
!1781 = !DILocation(line: 440, column: 19, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !106, line: 440, column: 19)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !106, line: 440, column: 19)
!1784 = distinct !DILexicalBlock(scope: !1775, file: !106, line: 439, column: 17)
!1785 = !DILocation(line: 440, column: 19, scope: !1783)
!1786 = !DILocation(line: 441, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !106, line: 441, column: 19)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !106, line: 441, column: 19)
!1789 = !DILocation(line: 441, column: 19, scope: !1788)
!1790 = !DILocation(line: 442, column: 17, scope: !1784)
!1791 = !DILocation(line: 449, column: 20, scope: !1753)
!1792 = !DILocation(line: 454, column: 11, scope: !1618)
!1793 = !DILocation(line: 457, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 455, column: 13)
!1795 = !DILocation(line: 463, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !106, line: 462, column: 19)
!1797 = !DILocation(line: 463, column: 24, scope: !1796)
!1798 = !DILocation(line: 463, column: 28, scope: !1796)
!1799 = !DILocation(line: 463, column: 38, scope: !1796)
!1800 = !DILocation(line: 463, column: 47, scope: !1796)
!1801 = !DILocation(line: 463, column: 41, scope: !1796)
!1802 = !DILocation(line: 463, column: 52, scope: !1796)
!1803 = !DILocation(line: 462, column: 19, scope: !1794)
!1804 = !DILocation(line: 464, column: 25, scope: !1796)
!1805 = !DILocation(line: 464, column: 17, scope: !1796)
!1806 = !DILocation(line: 471, column: 25, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1796, file: !106, line: 465, column: 19)
!1808 = !DILocation(line: 475, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !106, line: 475, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !106, line: 475, column: 21)
!1811 = !DILocation(line: 475, column: 21, scope: !1810)
!1812 = !DILocation(line: 476, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !106, line: 476, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !106, line: 476, column: 21)
!1815 = !DILocation(line: 476, column: 21, scope: !1814)
!1816 = !DILocation(line: 477, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !106, line: 477, column: 21)
!1818 = distinct !DILexicalBlock(scope: !1807, file: !106, line: 477, column: 21)
!1819 = !DILocation(line: 477, column: 21, scope: !1818)
!1820 = !DILocation(line: 478, column: 21, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !106, line: 478, column: 21)
!1822 = distinct !DILexicalBlock(scope: !1807, file: !106, line: 478, column: 21)
!1823 = !DILocation(line: 478, column: 21, scope: !1822)
!1824 = !DILocation(line: 479, column: 21, scope: !1807)
!1825 = !DILocation(line: 403, column: 21, scope: !1609)
!1826 = !DILocation(line: 492, column: 31, scope: !1618)
!1827 = !DILocation(line: 493, column: 31, scope: !1618)
!1828 = !DILocation(line: 495, column: 31, scope: !1618)
!1829 = !DILocation(line: 496, column: 31, scope: !1618)
!1830 = !DILocation(line: 497, column: 31, scope: !1618)
!1831 = !DILocation(line: 500, column: 15, scope: !1618)
!1832 = !DILocation(line: 502, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !106, line: 501, column: 13)
!1834 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 500, column: 15)
!1835 = !DILocation(line: 509, column: 33, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 509, column: 15)
!1837 = !DILocation(line: 0, scope: !1618)
!1838 = !DILocation(line: 514, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 513, column: 15)
!1840 = !DILocation(line: 518, column: 15, scope: !1618)
!1841 = !DILocation(line: 526, column: 26, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 526, column: 15)
!1843 = !DILocation(line: 526, column: 15, scope: !1618)
!1844 = !DILocation(line: 526, column: 40, scope: !1842)
!1845 = !DILocation(line: 526, column: 47, scope: !1842)
!1846 = !DILocation(line: 530, column: 17, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 530, column: 15)
!1848 = !DILocation(line: 526, column: 18, scope: !1842)
!1849 = !DILocation(line: 526, column: 65, scope: !1842)
!1850 = !DILocation(line: 530, column: 15, scope: !1618)
!1851 = !DILocation(line: 535, column: 11, scope: !1618)
!1852 = !DILocation(line: 549, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 548, column: 15)
!1854 = !DILocation(line: 556, column: 15, scope: !1618)
!1855 = !DILocation(line: 558, column: 19, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !106, line: 557, column: 13)
!1857 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 556, column: 15)
!1858 = !DILocation(line: 561, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !106, line: 561, column: 19)
!1860 = !DILocation(line: 561, column: 35, scope: !1859)
!1861 = !DILocation(line: 561, column: 30, scope: !1859)
!1862 = !DILocation(line: 570, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !106, line: 570, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !106, line: 570, column: 15)
!1865 = !DILocation(line: 570, column: 15, scope: !1864)
!1866 = !DILocation(line: 571, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !106, line: 571, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1856, file: !106, line: 571, column: 15)
!1869 = !DILocation(line: 571, column: 15, scope: !1868)
!1870 = !DILocation(line: 572, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !106, line: 572, column: 15)
!1872 = distinct !DILexicalBlock(scope: !1856, file: !106, line: 572, column: 15)
!1873 = !DILocation(line: 572, column: 15, scope: !1872)
!1874 = !DILocation(line: 574, column: 13, scope: !1856)
!1875 = !DILocation(line: 614, column: 17, scope: !1617)
!1876 = !DILocation(line: 610, column: 20, scope: !1617)
!1877 = !DILocation(line: 617, column: 29, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1622, file: !106, line: 615, column: 15)
!1879 = !{!1173, !1173, i64 0}
!1880 = !DILocation(line: 617, column: 27, scope: !1878)
!1881 = !DILocation(line: 612, column: 18, scope: !1617)
!1882 = !DILocation(line: 618, column: 15, scope: !1878)
!1883 = !DILocation(line: 621, column: 17, scope: !1621)
!1884 = !DILocation(line: 622, column: 17, scope: !1621)
!1885 = !DILocation(line: 626, column: 29, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1621, file: !106, line: 626, column: 21)
!1887 = !DILocation(line: 626, column: 21, scope: !1621)
!1888 = !DILocation(line: 627, column: 29, scope: !1886)
!1889 = !DILocation(line: 627, column: 19, scope: !1886)
!1890 = !DILocation(line: 0, scope: !1734)
!1891 = !DILocation(line: 629, column: 17, scope: !1621)
!1892 = !DILocation(line: 624, column: 19, scope: !1621)
!1893 = !DILocation(line: 625, column: 27, scope: !1621)
!1894 = !DILocation(line: 631, column: 21, scope: !1639)
!1895 = !DILocation(line: 632, column: 56, scope: !1639)
!1896 = !DILocation(line: 632, column: 50, scope: !1639)
!1897 = !DILocation(line: 633, column: 53, scope: !1639)
!1898 = !DILocation(line: 621, column: 27, scope: !1621)
!1899 = !DILocation(line: 631, column: 29, scope: !1639)
!1900 = !DILocation(line: 632, column: 36, scope: !1639)
!1901 = !DILocation(line: 632, column: 28, scope: !1639)
!1902 = !DILocation(line: 634, column: 25, scope: !1639)
!1903 = !DILocation(line: 644, column: 38, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1646, file: !106, line: 642, column: 23)
!1905 = !DILocation(line: 644, column: 48, scope: !1904)
!1906 = !DILocation(line: 644, column: 51, scope: !1904)
!1907 = !DILocation(line: 644, column: 25, scope: !1904)
!1908 = !DILocation(line: 645, column: 28, scope: !1904)
!1909 = !DILocation(line: 644, column: 34, scope: !1904)
!1910 = distinct !{!1910, !1907, !1908}
!1911 = !DILocation(line: 658, column: 43, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !106, line: 658, column: 29)
!1913 = distinct !DILexicalBlock(scope: !1643, file: !106, line: 658, column: 29)
!1914 = !DILocation(line: 655, column: 29, scope: !1644)
!1915 = !DILocation(line: 657, column: 36, scope: !1643)
!1916 = !DILocation(line: 659, column: 49, scope: !1912)
!1917 = !DILocation(line: 659, column: 39, scope: !1912)
!1918 = !DILocation(line: 659, column: 31, scope: !1912)
!1919 = !DILocation(line: 658, column: 53, scope: !1912)
!1920 = !DILocation(line: 658, column: 29, scope: !1913)
!1921 = distinct !{!1921, !1920, !1922}
!1922 = !DILocation(line: 667, column: 33, scope: !1913)
!1923 = !DILocation(line: 674, column: 19, scope: !1621)
!1924 = !DILocation(line: 670, column: 41, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1645, file: !106, line: 670, column: 29)
!1926 = !DILocation(line: 670, column: 31, scope: !1925)
!1927 = !DILocation(line: 670, column: 29, scope: !1645)
!1928 = !DILocation(line: 672, column: 27, scope: !1645)
!1929 = !DILocation(line: 675, column: 26, scope: !1621)
!1930 = !DILocation(line: 675, column: 24, scope: !1621)
!1931 = !DILocation(line: 674, column: 19, scope: !1639)
!1932 = distinct !{!1932, !1891, !1933}
!1933 = !DILocation(line: 675, column: 44, scope: !1621)
!1934 = !DILocation(line: 676, column: 15, scope: !1622)
!1935 = !DILocation(line: 0, scope: !1886)
!1936 = !DILocation(line: 0, scope: !1621)
!1937 = !DILocation(line: 678, column: 40, scope: !1617)
!1938 = !DILocation(line: 680, column: 19, scope: !1651)
!1939 = !DILocation(line: 680, column: 45, scope: !1651)
!1940 = !DILocation(line: 680, column: 23, scope: !1651)
!1941 = !DILocation(line: 684, column: 33, scope: !1650)
!1942 = !DILocation(line: 684, column: 24, scope: !1650)
!1943 = !DILocation(line: 686, column: 17, scope: !1650)
!1944 = !DILocation(line: 0, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !106, line: 687, column: 19)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !106, line: 686, column: 17)
!1947 = distinct !DILexicalBlock(scope: !1650, file: !106, line: 686, column: 17)
!1948 = !DILocation(line: 0, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !106, line: 703, column: 21)
!1950 = !DILocation(line: 0, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !106, line: 696, column: 23)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !106, line: 695, column: 30)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !106, line: 688, column: 25)
!1954 = !DILocation(line: 688, column: 43, scope: !1953)
!1955 = !DILocation(line: 690, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !106, line: 690, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !106, line: 689, column: 23)
!1958 = !DILocation(line: 690, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !106, line: 690, column: 25)
!1960 = !DILocation(line: 690, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !106, line: 690, column: 25)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !106, line: 690, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !106, line: 690, column: 25)
!1964 = !DILocation(line: 690, column: 25, scope: !1962)
!1965 = !DILocation(line: 690, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !106, line: 690, column: 25)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !106, line: 690, column: 25)
!1968 = !DILocation(line: 690, column: 25, scope: !1967)
!1969 = !DILocation(line: 690, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !106, line: 690, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !106, line: 690, column: 25)
!1972 = !DILocation(line: 690, column: 25, scope: !1971)
!1973 = !DILocation(line: 690, column: 25, scope: !1963)
!1974 = !DILocation(line: 690, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !106, line: 690, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1956, file: !106, line: 690, column: 25)
!1977 = !DILocation(line: 690, column: 25, scope: !1976)
!1978 = !DILocation(line: 691, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !106, line: 691, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1957, file: !106, line: 691, column: 25)
!1981 = !DILocation(line: 691, column: 25, scope: !1980)
!1982 = !DILocation(line: 692, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !106, line: 692, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1957, file: !106, line: 692, column: 25)
!1985 = !DILocation(line: 692, column: 25, scope: !1984)
!1986 = !DILocation(line: 693, column: 38, scope: !1957)
!1987 = !DILocation(line: 693, column: 33, scope: !1957)
!1988 = !DILocation(line: 694, column: 23, scope: !1957)
!1989 = !DILocation(line: 695, column: 30, scope: !1952)
!1990 = !DILocation(line: 695, column: 30, scope: !1953)
!1991 = !DILocation(line: 697, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !106, line: 697, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1951, file: !106, line: 697, column: 25)
!1994 = !DILocation(line: 697, column: 25, scope: !1993)
!1995 = !DILocation(line: 699, column: 23, scope: !1951)
!1996 = !DILocation(line: 0, scope: !1984)
!1997 = !DILocation(line: 0, scope: !1957)
!1998 = !DILocation(line: 0, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1734, file: !106, line: 418, column: 9)
!2000 = !DILocation(line: 0, scope: !1956)
!2001 = !DILocation(line: 700, column: 35, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1945, file: !106, line: 700, column: 25)
!2003 = !DILocation(line: 700, column: 30, scope: !2002)
!2004 = !DILocation(line: 700, column: 25, scope: !1945)
!2005 = !DILocation(line: 702, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !106, line: 702, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1945, file: !106, line: 702, column: 21)
!2008 = !DILocation(line: 702, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !106, line: 702, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !106, line: 702, column: 21)
!2011 = distinct !DILexicalBlock(scope: !2006, file: !106, line: 702, column: 21)
!2012 = !DILocation(line: 702, column: 21, scope: !2010)
!2013 = !DILocation(line: 702, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !106, line: 702, column: 21)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !106, line: 702, column: 21)
!2016 = !DILocation(line: 702, column: 21, scope: !2015)
!2017 = !DILocation(line: 702, column: 21, scope: !2011)
!2018 = !DILocation(line: 0, scope: !1993)
!2019 = !DILocation(line: 703, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1949, file: !106, line: 703, column: 21)
!2021 = !DILocation(line: 703, column: 21, scope: !1949)
!2022 = !DILocation(line: 704, column: 25, scope: !1945)
!2023 = !DILocation(line: 686, column: 17, scope: !1946)
!2024 = distinct !{!2024, !2025, !2026}
!2025 = !DILocation(line: 686, column: 17, scope: !1947)
!2026 = !DILocation(line: 705, column: 19, scope: !1947)
!2027 = !DILocation(line: 0, scope: !1611)
!2028 = !DILocation(line: 416, column: 30, scope: !1734)
!2029 = !DILocation(line: 712, column: 34, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 712, column: 11)
!2031 = !DILocation(line: 714, column: 14, scope: !2030)
!2032 = !DILocation(line: 715, column: 14, scope: !2030)
!2033 = !DILocation(line: 715, column: 35, scope: !2030)
!2034 = !DILocation(line: 715, column: 17, scope: !2030)
!2035 = !DILocation(line: 715, column: 47, scope: !2030)
!2036 = !DILocation(line: 715, column: 65, scope: !2030)
!2037 = !DILocation(line: 716, column: 15, scope: !2030)
!2038 = !DILocation(line: 716, column: 11, scope: !2030)
!2039 = !DILocation(line: 712, column: 11, scope: !1609)
!2040 = !DILocation(line: 400, column: 10, scope: !1611)
!2041 = !DILocation(line: 0, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !106, line: 519, column: 13)
!2043 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 518, column: 15)
!2044 = !DILocation(line: 720, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 720, column: 7)
!2046 = !DILocation(line: 720, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2045, file: !106, line: 720, column: 7)
!2048 = !DILocation(line: 720, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !106, line: 720, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !106, line: 720, column: 7)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !106, line: 720, column: 7)
!2052 = !DILocation(line: 720, column: 7, scope: !2050)
!2053 = !DILocation(line: 720, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !106, line: 720, column: 7)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !106, line: 720, column: 7)
!2056 = !DILocation(line: 720, column: 7, scope: !2055)
!2057 = !DILocation(line: 720, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !106, line: 720, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !106, line: 720, column: 7)
!2060 = !DILocation(line: 720, column: 7, scope: !2059)
!2061 = !DILocation(line: 720, column: 7, scope: !2051)
!2062 = !DILocation(line: 720, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !106, line: 720, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2045, file: !106, line: 720, column: 7)
!2065 = !DILocation(line: 720, column: 7, scope: !2064)
!2066 = !DILocation(line: 723, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !106, line: 723, column: 7)
!2068 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 723, column: 7)
!2069 = !DILocation(line: 424, column: 9, scope: !1609)
!2070 = !DILocation(line: 723, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !106, line: 723, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !106, line: 723, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !106, line: 723, column: 7)
!2074 = !DILocation(line: 723, column: 7, scope: !2072)
!2075 = !DILocation(line: 723, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !106, line: 723, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !106, line: 723, column: 7)
!2078 = !DILocation(line: 723, column: 7, scope: !2077)
!2079 = !DILocation(line: 723, column: 7, scope: !2073)
!2080 = !DILocation(line: 724, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !106, line: 724, column: 7)
!2082 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 724, column: 7)
!2083 = !DILocation(line: 724, column: 7, scope: !2082)
!2084 = !DILocation(line: 726, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1609, file: !106, line: 726, column: 11)
!2086 = !DILocation(line: 726, column: 11, scope: !1609)
!2087 = !DILocation(line: 728, column: 5, scope: !1610)
!2088 = !DILocation(line: 400, column: 75, scope: !1610)
!2089 = !DILocation(line: 400, column: 3, scope: !1610)
!2090 = distinct !{!2090, !1728, !2091}
!2091 = !DILocation(line: 728, column: 5, scope: !1611)
!2092 = !DILocation(line: 730, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 730, column: 7)
!2094 = !DILocation(line: 730, column: 16, scope: !2093)
!2095 = !DILocation(line: 738, column: 51, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 738, column: 7)
!2097 = !DILocation(line: 739, column: 10, scope: !2096)
!2098 = !DILocation(line: 741, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !106, line: 741, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !106, line: 740, column: 5)
!2101 = !DILocation(line: 741, column: 11, scope: !2100)
!2102 = !DILocation(line: 742, column: 16, scope: !2099)
!2103 = !DILocation(line: 742, column: 9, scope: !2099)
!2104 = !DILocation(line: 746, column: 18, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !106, line: 746, column: 16)
!2106 = !DILocation(line: 746, column: 32, scope: !2105)
!2107 = !DILocation(line: 746, column: 29, scope: !2105)
!2108 = !DILocation(line: 755, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 755, column: 7)
!2110 = !DILocation(line: 755, column: 20, scope: !2109)
!2111 = !DILocation(line: 756, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !106, line: 756, column: 5)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !106, line: 756, column: 5)
!2114 = !DILocation(line: 756, column: 5, scope: !2113)
!2115 = !DILocation(line: 757, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !106, line: 757, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !106, line: 757, column: 7)
!2118 = !DILocation(line: 757, column: 7, scope: !2117)
!2119 = !DILocation(line: 756, column: 39, scope: !2112)
!2120 = distinct !{!2120, !2114, !2121}
!2121 = !DILocation(line: 757, column: 7, scope: !2113)
!2122 = !DILocation(line: 759, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 759, column: 7)
!2124 = !DILocation(line: 759, column: 7, scope: !1582)
!2125 = !DILocation(line: 760, column: 5, scope: !2123)
!2126 = !DILocation(line: 760, column: 17, scope: !2123)
!2127 = !DILocation(line: 766, column: 21, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1582, file: !106, line: 766, column: 7)
!2129 = !DILocation(line: 766, column: 54, scope: !2128)
!2130 = !DILocation(line: 766, column: 51, scope: !2128)
!2131 = !DILocation(line: 770, column: 42, scope: !1582)
!2132 = !DILocation(line: 768, column: 10, scope: !1582)
!2133 = !DILocation(line: 768, column: 3, scope: !1582)
!2134 = !DILocation(line: 772, column: 1, scope: !1582)
!2135 = distinct !DISubprogram(name: "gettext_quote", scope: !106, file: !106, line: 207, type: !2136, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!15, !15, !63}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "msgid", arg: 1, scope: !2135, file: !106, line: 207, type: !15)
!2140 = !DILocalVariable(name: "s", arg: 2, scope: !2135, file: !106, line: 207, type: !63)
!2141 = !DILocalVariable(name: "translation", scope: !2135, file: !106, line: 209, type: !15)
!2142 = !DILocalVariable(name: "locale_code", scope: !2135, file: !106, line: 210, type: !15)
!2143 = !DILocation(line: 207, column: 28, scope: !2135)
!2144 = !DILocation(line: 207, column: 54, scope: !2135)
!2145 = !DILocation(line: 209, column: 29, scope: !2135)
!2146 = !DILocation(line: 209, column: 15, scope: !2135)
!2147 = !DILocation(line: 212, column: 19, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2135, file: !106, line: 212, column: 7)
!2149 = !DILocation(line: 212, column: 7, scope: !2135)
!2150 = !DILocation(line: 233, column: 17, scope: !2135)
!2151 = !DILocation(line: 210, column: 15, scope: !2135)
!2152 = !DILocalVariable(name: "s1", arg: 1, scope: !2153, file: !2154, line: 160, type: !15)
!2153 = distinct !DISubprogram(name: "strcaseeq0", scope: !2154, file: !2154, line: 160, type: !2155, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2157)
!2154 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2157 = !{!2152, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2153, file: !2154, line: 160, type: !15)
!2159 = !DILocalVariable(name: "s20", arg: 3, scope: !2153, file: !2154, line: 160, type: !7)
!2160 = !DILocalVariable(name: "s21", arg: 4, scope: !2153, file: !2154, line: 160, type: !7)
!2161 = !DILocalVariable(name: "s22", arg: 5, scope: !2153, file: !2154, line: 160, type: !7)
!2162 = !DILocalVariable(name: "s23", arg: 6, scope: !2153, file: !2154, line: 160, type: !7)
!2163 = !DILocalVariable(name: "s24", arg: 7, scope: !2153, file: !2154, line: 160, type: !7)
!2164 = !DILocalVariable(name: "s25", arg: 8, scope: !2153, file: !2154, line: 160, type: !7)
!2165 = !DILocalVariable(name: "s26", arg: 9, scope: !2153, file: !2154, line: 160, type: !7)
!2166 = !DILocalVariable(name: "s27", arg: 10, scope: !2153, file: !2154, line: 160, type: !7)
!2167 = !DILocalVariable(name: "s28", arg: 11, scope: !2153, file: !2154, line: 160, type: !7)
!2168 = !DILocation(line: 160, column: 25, scope: !2153, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 234, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2135, file: !106, line: 234, column: 7)
!2171 = !DILocation(line: 160, column: 41, scope: !2153, inlinedAt: !2169)
!2172 = !DILocation(line: 160, column: 50, scope: !2153, inlinedAt: !2169)
!2173 = !DILocation(line: 160, column: 60, scope: !2153, inlinedAt: !2169)
!2174 = !DILocation(line: 160, column: 70, scope: !2153, inlinedAt: !2169)
!2175 = !DILocation(line: 160, column: 80, scope: !2153, inlinedAt: !2169)
!2176 = !DILocation(line: 160, column: 90, scope: !2153, inlinedAt: !2169)
!2177 = !DILocation(line: 160, column: 100, scope: !2153, inlinedAt: !2169)
!2178 = !DILocation(line: 160, column: 110, scope: !2153, inlinedAt: !2169)
!2179 = !DILocation(line: 160, column: 120, scope: !2153, inlinedAt: !2169)
!2180 = !DILocation(line: 160, column: 130, scope: !2153, inlinedAt: !2169)
!2181 = !DILocation(line: 162, column: 7, scope: !2182, inlinedAt: !2169)
!2182 = distinct !DILexicalBlock(scope: !2153, file: !2154, line: 162, column: 7)
!2183 = !DILocalVariable(name: "s1", arg: 1, scope: !2184, file: !2154, line: 146, type: !15)
!2184 = distinct !DISubprogram(name: "strcaseeq1", scope: !2154, file: !2154, line: 146, type: !2185, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7, !7}
!2187 = !{!2183, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2188 = !DILocalVariable(name: "s2", arg: 2, scope: !2184, file: !2154, line: 146, type: !15)
!2189 = !DILocalVariable(name: "s21", arg: 3, scope: !2184, file: !2154, line: 146, type: !7)
!2190 = !DILocalVariable(name: "s22", arg: 4, scope: !2184, file: !2154, line: 146, type: !7)
!2191 = !DILocalVariable(name: "s23", arg: 5, scope: !2184, file: !2154, line: 146, type: !7)
!2192 = !DILocalVariable(name: "s24", arg: 6, scope: !2184, file: !2154, line: 146, type: !7)
!2193 = !DILocalVariable(name: "s25", arg: 7, scope: !2184, file: !2154, line: 146, type: !7)
!2194 = !DILocalVariable(name: "s26", arg: 8, scope: !2184, file: !2154, line: 146, type: !7)
!2195 = !DILocalVariable(name: "s27", arg: 9, scope: !2184, file: !2154, line: 146, type: !7)
!2196 = !DILocalVariable(name: "s28", arg: 10, scope: !2184, file: !2154, line: 146, type: !7)
!2197 = !DILocation(line: 146, column: 25, scope: !2184, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 167, column: 16, scope: !2199, inlinedAt: !2169)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !2154, line: 164, column: 11)
!2200 = distinct !DILexicalBlock(scope: !2182, file: !2154, line: 163, column: 5)
!2201 = !DILocation(line: 146, column: 41, scope: !2184, inlinedAt: !2198)
!2202 = !DILocation(line: 146, column: 50, scope: !2184, inlinedAt: !2198)
!2203 = !DILocation(line: 146, column: 60, scope: !2184, inlinedAt: !2198)
!2204 = !DILocation(line: 146, column: 70, scope: !2184, inlinedAt: !2198)
!2205 = !DILocation(line: 146, column: 80, scope: !2184, inlinedAt: !2198)
!2206 = !DILocation(line: 146, column: 90, scope: !2184, inlinedAt: !2198)
!2207 = !DILocation(line: 146, column: 100, scope: !2184, inlinedAt: !2198)
!2208 = !DILocation(line: 146, column: 110, scope: !2184, inlinedAt: !2198)
!2209 = !DILocation(line: 146, column: 120, scope: !2184, inlinedAt: !2198)
!2210 = !DILocation(line: 148, column: 7, scope: !2211, inlinedAt: !2198)
!2211 = distinct !DILexicalBlock(scope: !2184, file: !2154, line: 148, column: 7)
!2212 = !DILocalVariable(name: "s1", arg: 1, scope: !2213, file: !2154, line: 132, type: !15)
!2213 = distinct !DISubprogram(name: "strcaseeq2", scope: !2154, file: !2154, line: 132, type: !2214, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7}
!2216 = !{!2212, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2217 = !DILocalVariable(name: "s2", arg: 2, scope: !2213, file: !2154, line: 132, type: !15)
!2218 = !DILocalVariable(name: "s22", arg: 3, scope: !2213, file: !2154, line: 132, type: !7)
!2219 = !DILocalVariable(name: "s23", arg: 4, scope: !2213, file: !2154, line: 132, type: !7)
!2220 = !DILocalVariable(name: "s24", arg: 5, scope: !2213, file: !2154, line: 132, type: !7)
!2221 = !DILocalVariable(name: "s25", arg: 6, scope: !2213, file: !2154, line: 132, type: !7)
!2222 = !DILocalVariable(name: "s26", arg: 7, scope: !2213, file: !2154, line: 132, type: !7)
!2223 = !DILocalVariable(name: "s27", arg: 8, scope: !2213, file: !2154, line: 132, type: !7)
!2224 = !DILocalVariable(name: "s28", arg: 9, scope: !2213, file: !2154, line: 132, type: !7)
!2225 = !DILocation(line: 132, column: 25, scope: !2213, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 153, column: 16, scope: !2227, inlinedAt: !2198)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2154, line: 150, column: 11)
!2228 = distinct !DILexicalBlock(scope: !2211, file: !2154, line: 149, column: 5)
!2229 = !DILocation(line: 132, column: 41, scope: !2213, inlinedAt: !2226)
!2230 = !DILocation(line: 132, column: 50, scope: !2213, inlinedAt: !2226)
!2231 = !DILocation(line: 132, column: 60, scope: !2213, inlinedAt: !2226)
!2232 = !DILocation(line: 132, column: 70, scope: !2213, inlinedAt: !2226)
!2233 = !DILocation(line: 132, column: 80, scope: !2213, inlinedAt: !2226)
!2234 = !DILocation(line: 132, column: 90, scope: !2213, inlinedAt: !2226)
!2235 = !DILocation(line: 132, column: 100, scope: !2213, inlinedAt: !2226)
!2236 = !DILocation(line: 132, column: 110, scope: !2213, inlinedAt: !2226)
!2237 = !DILocation(line: 134, column: 7, scope: !2238, inlinedAt: !2226)
!2238 = distinct !DILexicalBlock(scope: !2213, file: !2154, line: 134, column: 7)
!2239 = !DILocalVariable(name: "s1", arg: 1, scope: !2240, file: !2154, line: 118, type: !15)
!2240 = distinct !DISubprogram(name: "strcaseeq3", scope: !2154, file: !2154, line: 118, type: !2241, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7}
!2243 = !{!2239, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2244 = !DILocalVariable(name: "s2", arg: 2, scope: !2240, file: !2154, line: 118, type: !15)
!2245 = !DILocalVariable(name: "s23", arg: 3, scope: !2240, file: !2154, line: 118, type: !7)
!2246 = !DILocalVariable(name: "s24", arg: 4, scope: !2240, file: !2154, line: 118, type: !7)
!2247 = !DILocalVariable(name: "s25", arg: 5, scope: !2240, file: !2154, line: 118, type: !7)
!2248 = !DILocalVariable(name: "s26", arg: 6, scope: !2240, file: !2154, line: 118, type: !7)
!2249 = !DILocalVariable(name: "s27", arg: 7, scope: !2240, file: !2154, line: 118, type: !7)
!2250 = !DILocalVariable(name: "s28", arg: 8, scope: !2240, file: !2154, line: 118, type: !7)
!2251 = !DILocation(line: 118, column: 25, scope: !2240, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 139, column: 16, scope: !2253, inlinedAt: !2226)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2154, line: 136, column: 11)
!2254 = distinct !DILexicalBlock(scope: !2238, file: !2154, line: 135, column: 5)
!2255 = !DILocation(line: 118, column: 41, scope: !2240, inlinedAt: !2252)
!2256 = !DILocation(line: 118, column: 50, scope: !2240, inlinedAt: !2252)
!2257 = !DILocation(line: 118, column: 60, scope: !2240, inlinedAt: !2252)
!2258 = !DILocation(line: 118, column: 70, scope: !2240, inlinedAt: !2252)
!2259 = !DILocation(line: 118, column: 80, scope: !2240, inlinedAt: !2252)
!2260 = !DILocation(line: 118, column: 90, scope: !2240, inlinedAt: !2252)
!2261 = !DILocation(line: 118, column: 100, scope: !2240, inlinedAt: !2252)
!2262 = !DILocation(line: 120, column: 7, scope: !2263, inlinedAt: !2252)
!2263 = distinct !DILexicalBlock(scope: !2240, file: !2154, line: 120, column: 7)
!2264 = !DILocation(line: 120, column: 7, scope: !2240, inlinedAt: !2252)
!2265 = !DILocalVariable(name: "s1", arg: 1, scope: !2266, file: !2154, line: 104, type: !15)
!2266 = distinct !DISubprogram(name: "strcaseeq4", scope: !2154, file: !2154, line: 104, type: !2267, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!24, !15, !15, !7, !7, !7, !7, !7}
!2269 = !{!2265, !2270, !2271, !2272, !2273, !2274, !2275}
!2270 = !DILocalVariable(name: "s2", arg: 2, scope: !2266, file: !2154, line: 104, type: !15)
!2271 = !DILocalVariable(name: "s24", arg: 3, scope: !2266, file: !2154, line: 104, type: !7)
!2272 = !DILocalVariable(name: "s25", arg: 4, scope: !2266, file: !2154, line: 104, type: !7)
!2273 = !DILocalVariable(name: "s26", arg: 5, scope: !2266, file: !2154, line: 104, type: !7)
!2274 = !DILocalVariable(name: "s27", arg: 6, scope: !2266, file: !2154, line: 104, type: !7)
!2275 = !DILocalVariable(name: "s28", arg: 7, scope: !2266, file: !2154, line: 104, type: !7)
!2276 = !DILocation(line: 104, column: 25, scope: !2266, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 125, column: 16, scope: !2278, inlinedAt: !2252)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !2154, line: 122, column: 11)
!2279 = distinct !DILexicalBlock(scope: !2263, file: !2154, line: 121, column: 5)
!2280 = !DILocation(line: 104, column: 41, scope: !2266, inlinedAt: !2277)
!2281 = !DILocation(line: 104, column: 50, scope: !2266, inlinedAt: !2277)
!2282 = !DILocation(line: 104, column: 60, scope: !2266, inlinedAt: !2277)
!2283 = !DILocation(line: 104, column: 70, scope: !2266, inlinedAt: !2277)
!2284 = !DILocation(line: 104, column: 80, scope: !2266, inlinedAt: !2277)
!2285 = !DILocation(line: 104, column: 90, scope: !2266, inlinedAt: !2277)
!2286 = !DILocation(line: 106, column: 7, scope: !2287, inlinedAt: !2277)
!2287 = distinct !DILexicalBlock(scope: !2266, file: !2154, line: 106, column: 7)
!2288 = !DILocation(line: 106, column: 7, scope: !2266, inlinedAt: !2277)
!2289 = !DILocalVariable(name: "s1", arg: 1, scope: !2290, file: !2154, line: 90, type: !15)
!2290 = distinct !DISubprogram(name: "strcaseeq5", scope: !2154, file: !2154, line: 90, type: !2291, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!24, !15, !15, !7, !7, !7, !7}
!2293 = !{!2289, !2294, !2295, !2296, !2297, !2298}
!2294 = !DILocalVariable(name: "s2", arg: 2, scope: !2290, file: !2154, line: 90, type: !15)
!2295 = !DILocalVariable(name: "s25", arg: 3, scope: !2290, file: !2154, line: 90, type: !7)
!2296 = !DILocalVariable(name: "s26", arg: 4, scope: !2290, file: !2154, line: 90, type: !7)
!2297 = !DILocalVariable(name: "s27", arg: 5, scope: !2290, file: !2154, line: 90, type: !7)
!2298 = !DILocalVariable(name: "s28", arg: 6, scope: !2290, file: !2154, line: 90, type: !7)
!2299 = !DILocation(line: 90, column: 25, scope: !2290, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 111, column: 16, scope: !2301, inlinedAt: !2277)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2154, line: 108, column: 11)
!2302 = distinct !DILexicalBlock(scope: !2287, file: !2154, line: 107, column: 5)
!2303 = !DILocation(line: 90, column: 41, scope: !2290, inlinedAt: !2300)
!2304 = !DILocation(line: 90, column: 50, scope: !2290, inlinedAt: !2300)
!2305 = !DILocation(line: 90, column: 60, scope: !2290, inlinedAt: !2300)
!2306 = !DILocation(line: 90, column: 70, scope: !2290, inlinedAt: !2300)
!2307 = !DILocation(line: 90, column: 80, scope: !2290, inlinedAt: !2300)
!2308 = !DILocation(line: 92, column: 7, scope: !2309, inlinedAt: !2300)
!2309 = distinct !DILexicalBlock(scope: !2290, file: !2154, line: 92, column: 7)
!2310 = !DILocation(line: 92, column: 7, scope: !2290, inlinedAt: !2300)
!2311 = !DILocation(line: 235, column: 12, scope: !2170)
!2312 = !DILocation(line: 235, column: 21, scope: !2170)
!2313 = !DILocation(line: 235, column: 5, scope: !2170)
!2314 = !DILocation(line: 146, column: 25, scope: !2184, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 167, column: 16, scope: !2199, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 236, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2135, file: !106, line: 236, column: 7)
!2318 = !DILocation(line: 146, column: 41, scope: !2184, inlinedAt: !2315)
!2319 = !DILocation(line: 146, column: 50, scope: !2184, inlinedAt: !2315)
!2320 = !DILocation(line: 146, column: 60, scope: !2184, inlinedAt: !2315)
!2321 = !DILocation(line: 146, column: 70, scope: !2184, inlinedAt: !2315)
!2322 = !DILocation(line: 146, column: 80, scope: !2184, inlinedAt: !2315)
!2323 = !DILocation(line: 146, column: 90, scope: !2184, inlinedAt: !2315)
!2324 = !DILocation(line: 146, column: 100, scope: !2184, inlinedAt: !2315)
!2325 = !DILocation(line: 146, column: 110, scope: !2184, inlinedAt: !2315)
!2326 = !DILocation(line: 146, column: 120, scope: !2184, inlinedAt: !2315)
!2327 = !DILocation(line: 148, column: 7, scope: !2211, inlinedAt: !2315)
!2328 = !DILocation(line: 132, column: 25, scope: !2213, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 153, column: 16, scope: !2227, inlinedAt: !2315)
!2330 = !DILocation(line: 132, column: 41, scope: !2213, inlinedAt: !2329)
!2331 = !DILocation(line: 132, column: 50, scope: !2213, inlinedAt: !2329)
!2332 = !DILocation(line: 132, column: 60, scope: !2213, inlinedAt: !2329)
!2333 = !DILocation(line: 132, column: 70, scope: !2213, inlinedAt: !2329)
!2334 = !DILocation(line: 132, column: 80, scope: !2213, inlinedAt: !2329)
!2335 = !DILocation(line: 132, column: 90, scope: !2213, inlinedAt: !2329)
!2336 = !DILocation(line: 132, column: 100, scope: !2213, inlinedAt: !2329)
!2337 = !DILocation(line: 132, column: 110, scope: !2213, inlinedAt: !2329)
!2338 = !DILocation(line: 134, column: 7, scope: !2238, inlinedAt: !2329)
!2339 = !DILocation(line: 134, column: 7, scope: !2213, inlinedAt: !2329)
!2340 = !DILocation(line: 118, column: 25, scope: !2240, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 139, column: 16, scope: !2253, inlinedAt: !2329)
!2342 = !DILocation(line: 118, column: 41, scope: !2240, inlinedAt: !2341)
!2343 = !DILocation(line: 118, column: 50, scope: !2240, inlinedAt: !2341)
!2344 = !DILocation(line: 118, column: 60, scope: !2240, inlinedAt: !2341)
!2345 = !DILocation(line: 118, column: 70, scope: !2240, inlinedAt: !2341)
!2346 = !DILocation(line: 118, column: 80, scope: !2240, inlinedAt: !2341)
!2347 = !DILocation(line: 118, column: 90, scope: !2240, inlinedAt: !2341)
!2348 = !DILocation(line: 118, column: 100, scope: !2240, inlinedAt: !2341)
!2349 = !DILocation(line: 120, column: 7, scope: !2263, inlinedAt: !2341)
!2350 = !DILocation(line: 120, column: 7, scope: !2240, inlinedAt: !2341)
!2351 = !DILocation(line: 104, column: 25, scope: !2266, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 125, column: 16, scope: !2278, inlinedAt: !2341)
!2353 = !DILocation(line: 104, column: 41, scope: !2266, inlinedAt: !2352)
!2354 = !DILocation(line: 104, column: 50, scope: !2266, inlinedAt: !2352)
!2355 = !DILocation(line: 104, column: 60, scope: !2266, inlinedAt: !2352)
!2356 = !DILocation(line: 104, column: 70, scope: !2266, inlinedAt: !2352)
!2357 = !DILocation(line: 104, column: 80, scope: !2266, inlinedAt: !2352)
!2358 = !DILocation(line: 104, column: 90, scope: !2266, inlinedAt: !2352)
!2359 = !DILocation(line: 106, column: 7, scope: !2287, inlinedAt: !2352)
!2360 = !DILocation(line: 106, column: 7, scope: !2266, inlinedAt: !2352)
!2361 = !DILocation(line: 90, column: 25, scope: !2290, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 111, column: 16, scope: !2301, inlinedAt: !2352)
!2363 = !DILocation(line: 90, column: 41, scope: !2290, inlinedAt: !2362)
!2364 = !DILocation(line: 90, column: 50, scope: !2290, inlinedAt: !2362)
!2365 = !DILocation(line: 90, column: 60, scope: !2290, inlinedAt: !2362)
!2366 = !DILocation(line: 90, column: 70, scope: !2290, inlinedAt: !2362)
!2367 = !DILocation(line: 90, column: 80, scope: !2290, inlinedAt: !2362)
!2368 = !DILocation(line: 92, column: 7, scope: !2309, inlinedAt: !2362)
!2369 = !DILocation(line: 92, column: 7, scope: !2290, inlinedAt: !2362)
!2370 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2154, line: 76, type: !15)
!2371 = distinct !DISubprogram(name: "strcaseeq6", scope: !2154, file: !2154, line: 76, type: !2372, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!24, !15, !15, !7, !7, !7}
!2374 = !{!2370, !2375, !2376, !2377, !2378}
!2375 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2154, line: 76, type: !15)
!2376 = !DILocalVariable(name: "s26", arg: 3, scope: !2371, file: !2154, line: 76, type: !7)
!2377 = !DILocalVariable(name: "s27", arg: 4, scope: !2371, file: !2154, line: 76, type: !7)
!2378 = !DILocalVariable(name: "s28", arg: 5, scope: !2371, file: !2154, line: 76, type: !7)
!2379 = !DILocation(line: 76, column: 25, scope: !2371, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 97, column: 16, scope: !2381, inlinedAt: !2362)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !2154, line: 94, column: 11)
!2382 = distinct !DILexicalBlock(scope: !2309, file: !2154, line: 93, column: 5)
!2383 = !DILocation(line: 76, column: 41, scope: !2371, inlinedAt: !2380)
!2384 = !DILocation(line: 76, column: 50, scope: !2371, inlinedAt: !2380)
!2385 = !DILocation(line: 76, column: 60, scope: !2371, inlinedAt: !2380)
!2386 = !DILocation(line: 76, column: 70, scope: !2371, inlinedAt: !2380)
!2387 = !DILocation(line: 78, column: 7, scope: !2388, inlinedAt: !2380)
!2388 = distinct !DILexicalBlock(scope: !2371, file: !2154, line: 78, column: 7)
!2389 = !DILocation(line: 78, column: 7, scope: !2371, inlinedAt: !2380)
!2390 = !DILocalVariable(name: "s1", arg: 1, scope: !2391, file: !2154, line: 62, type: !15)
!2391 = distinct !DISubprogram(name: "strcaseeq7", scope: !2154, file: !2154, line: 62, type: !2392, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!24, !15, !15, !7, !7}
!2394 = !{!2390, !2395, !2396, !2397}
!2395 = !DILocalVariable(name: "s2", arg: 2, scope: !2391, file: !2154, line: 62, type: !15)
!2396 = !DILocalVariable(name: "s27", arg: 3, scope: !2391, file: !2154, line: 62, type: !7)
!2397 = !DILocalVariable(name: "s28", arg: 4, scope: !2391, file: !2154, line: 62, type: !7)
!2398 = !DILocation(line: 62, column: 25, scope: !2391, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 83, column: 16, scope: !2400, inlinedAt: !2380)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !2154, line: 80, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2388, file: !2154, line: 79, column: 5)
!2402 = !DILocation(line: 62, column: 41, scope: !2391, inlinedAt: !2399)
!2403 = !DILocation(line: 62, column: 50, scope: !2391, inlinedAt: !2399)
!2404 = !DILocation(line: 62, column: 60, scope: !2391, inlinedAt: !2399)
!2405 = !DILocation(line: 64, column: 7, scope: !2406, inlinedAt: !2399)
!2406 = distinct !DILexicalBlock(scope: !2391, file: !2154, line: 64, column: 7)
!2407 = !DILocation(line: 236, column: 7, scope: !2135)
!2408 = !DILocation(line: 237, column: 12, scope: !2317)
!2409 = !DILocation(line: 237, column: 21, scope: !2317)
!2410 = !DILocation(line: 237, column: 5, scope: !2317)
!2411 = !DILocation(line: 239, column: 13, scope: !2135)
!2412 = !DILocation(line: 239, column: 11, scope: !2135)
!2413 = !DILocation(line: 239, column: 3, scope: !2135)
!2414 = !DILocation(line: 0, scope: !2135)
!2415 = !DILocation(line: 240, column: 1, scope: !2135)
!2416 = distinct !DISubprogram(name: "quotearg_alloc", scope: !106, file: !106, line: 799, type: !2417, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!6, !15, !100, !1454}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "arg", arg: 1, scope: !2416, file: !106, line: 799, type: !15)
!2421 = !DILocalVariable(name: "argsize", arg: 2, scope: !2416, file: !106, line: 799, type: !100)
!2422 = !DILocalVariable(name: "o", arg: 3, scope: !2416, file: !106, line: 800, type: !1454)
!2423 = !DILocation(line: 799, column: 29, scope: !2416)
!2424 = !DILocation(line: 799, column: 41, scope: !2416)
!2425 = !DILocation(line: 800, column: 47, scope: !2416)
!2426 = !DILocalVariable(name: "arg", arg: 1, scope: !2427, file: !106, line: 812, type: !15)
!2427 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !106, file: !106, line: 812, type: !2428, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!6, !15, !100, !223, !1454}
!2430 = !{!2426, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2431 = !DILocalVariable(name: "argsize", arg: 2, scope: !2427, file: !106, line: 812, type: !100)
!2432 = !DILocalVariable(name: "size", arg: 3, scope: !2427, file: !106, line: 812, type: !223)
!2433 = !DILocalVariable(name: "o", arg: 4, scope: !2427, file: !106, line: 813, type: !1454)
!2434 = !DILocalVariable(name: "p", scope: !2427, file: !106, line: 815, type: !1454)
!2435 = !DILocalVariable(name: "e", scope: !2427, file: !106, line: 816, type: !24)
!2436 = !DILocalVariable(name: "flags", scope: !2427, file: !106, line: 818, type: !24)
!2437 = !DILocalVariable(name: "bufsize", scope: !2427, file: !106, line: 819, type: !100)
!2438 = !DILocalVariable(name: "buf", scope: !2427, file: !106, line: 823, type: !6)
!2439 = !DILocation(line: 812, column: 33, scope: !2427, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 802, column: 10, scope: !2416)
!2441 = !DILocation(line: 812, column: 45, scope: !2427, inlinedAt: !2440)
!2442 = !DILocation(line: 812, column: 62, scope: !2427, inlinedAt: !2440)
!2443 = !DILocation(line: 813, column: 51, scope: !2427, inlinedAt: !2440)
!2444 = !DILocation(line: 815, column: 37, scope: !2427, inlinedAt: !2440)
!2445 = !DILocation(line: 815, column: 33, scope: !2427, inlinedAt: !2440)
!2446 = !DILocation(line: 816, column: 11, scope: !2427, inlinedAt: !2440)
!2447 = !DILocation(line: 816, column: 7, scope: !2427, inlinedAt: !2440)
!2448 = !DILocation(line: 818, column: 18, scope: !2427, inlinedAt: !2440)
!2449 = !DILocation(line: 818, column: 24, scope: !2427, inlinedAt: !2440)
!2450 = !DILocation(line: 818, column: 7, scope: !2427, inlinedAt: !2440)
!2451 = !DILocation(line: 819, column: 69, scope: !2427, inlinedAt: !2440)
!2452 = !DILocation(line: 820, column: 53, scope: !2427, inlinedAt: !2440)
!2453 = !DILocation(line: 821, column: 49, scope: !2427, inlinedAt: !2440)
!2454 = !DILocation(line: 822, column: 49, scope: !2427, inlinedAt: !2440)
!2455 = !DILocation(line: 819, column: 20, scope: !2427, inlinedAt: !2440)
!2456 = !DILocation(line: 822, column: 62, scope: !2427, inlinedAt: !2440)
!2457 = !DILocation(line: 819, column: 10, scope: !2427, inlinedAt: !2440)
!2458 = !DILocalVariable(name: "n", arg: 1, scope: !2459, file: !219, line: 216, type: !100)
!2459 = distinct !DISubprogram(name: "xcharalloc", scope: !219, file: !219, line: 216, type: !906, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2460)
!2460 = !{!2458}
!2461 = !DILocation(line: 216, column: 20, scope: !2459, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 823, column: 15, scope: !2427, inlinedAt: !2440)
!2463 = !DILocation(line: 218, column: 10, scope: !2459, inlinedAt: !2462)
!2464 = !DILocation(line: 823, column: 9, scope: !2427, inlinedAt: !2440)
!2465 = !DILocation(line: 824, column: 60, scope: !2427, inlinedAt: !2440)
!2466 = !DILocation(line: 826, column: 32, scope: !2427, inlinedAt: !2440)
!2467 = !DILocation(line: 826, column: 47, scope: !2427, inlinedAt: !2440)
!2468 = !DILocation(line: 824, column: 3, scope: !2427, inlinedAt: !2440)
!2469 = !DILocation(line: 827, column: 9, scope: !2427, inlinedAt: !2440)
!2470 = !DILocation(line: 802, column: 3, scope: !2416)
!2471 = !DILocation(line: 812, column: 33, scope: !2427)
!2472 = !DILocation(line: 812, column: 45, scope: !2427)
!2473 = !DILocation(line: 812, column: 62, scope: !2427)
!2474 = !DILocation(line: 813, column: 51, scope: !2427)
!2475 = !DILocation(line: 815, column: 37, scope: !2427)
!2476 = !DILocation(line: 815, column: 33, scope: !2427)
!2477 = !DILocation(line: 816, column: 11, scope: !2427)
!2478 = !DILocation(line: 816, column: 7, scope: !2427)
!2479 = !DILocation(line: 818, column: 18, scope: !2427)
!2480 = !DILocation(line: 818, column: 27, scope: !2427)
!2481 = !DILocation(line: 818, column: 24, scope: !2427)
!2482 = !DILocation(line: 818, column: 7, scope: !2427)
!2483 = !DILocation(line: 819, column: 69, scope: !2427)
!2484 = !DILocation(line: 820, column: 53, scope: !2427)
!2485 = !DILocation(line: 821, column: 49, scope: !2427)
!2486 = !DILocation(line: 822, column: 49, scope: !2427)
!2487 = !DILocation(line: 819, column: 20, scope: !2427)
!2488 = !DILocation(line: 822, column: 62, scope: !2427)
!2489 = !DILocation(line: 819, column: 10, scope: !2427)
!2490 = !DILocation(line: 216, column: 20, scope: !2459, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 823, column: 15, scope: !2427)
!2492 = !DILocation(line: 218, column: 10, scope: !2459, inlinedAt: !2491)
!2493 = !DILocation(line: 823, column: 9, scope: !2427)
!2494 = !DILocation(line: 824, column: 60, scope: !2427)
!2495 = !DILocation(line: 826, column: 32, scope: !2427)
!2496 = !DILocation(line: 826, column: 47, scope: !2427)
!2497 = !DILocation(line: 824, column: 3, scope: !2427)
!2498 = !DILocation(line: 827, column: 9, scope: !2427)
!2499 = !DILocation(line: 828, column: 7, scope: !2427)
!2500 = !DILocation(line: 829, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2427, file: !106, line: 828, column: 7)
!2502 = !{!1172, !1172, i64 0}
!2503 = !DILocation(line: 829, column: 5, scope: !2501)
!2504 = !DILocation(line: 830, column: 3, scope: !2427)
!2505 = distinct !DISubprogram(name: "quotearg_free", scope: !106, file: !106, line: 848, type: !1087, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "sv", scope: !2505, file: !106, line: 850, type: !130)
!2508 = !DILocalVariable(name: "i", scope: !2505, file: !106, line: 851, type: !24)
!2509 = !DILocation(line: 850, column: 24, scope: !2505)
!2510 = !DILocation(line: 850, column: 19, scope: !2505)
!2511 = !DILocation(line: 851, column: 7, scope: !2505)
!2512 = !DILocation(line: 852, column: 19, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !106, line: 852, column: 3)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !106, line: 852, column: 3)
!2515 = !DILocation(line: 852, column: 17, scope: !2513)
!2516 = !DILocation(line: 852, column: 3, scope: !2514)
!2517 = !DILocation(line: 853, column: 17, scope: !2513)
!2518 = !{!2519, !744, i64 8}
!2519 = !{!"slotvec", !1172, i64 0, !744, i64 8}
!2520 = !DILocation(line: 853, column: 5, scope: !2513)
!2521 = !DILocation(line: 852, column: 28, scope: !2513)
!2522 = distinct !{!2522, !2516, !2523}
!2523 = !DILocation(line: 853, column: 20, scope: !2514)
!2524 = !DILocation(line: 854, column: 13, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2505, file: !106, line: 854, column: 7)
!2526 = !DILocation(line: 854, column: 17, scope: !2525)
!2527 = !DILocation(line: 854, column: 7, scope: !2505)
!2528 = !DILocation(line: 856, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !106, line: 855, column: 5)
!2530 = !DILocation(line: 857, column: 21, scope: !2529)
!2531 = !{!2519, !1172, i64 0}
!2532 = !DILocation(line: 858, column: 20, scope: !2529)
!2533 = !DILocation(line: 859, column: 5, scope: !2529)
!2534 = !DILocation(line: 860, column: 10, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2505, file: !106, line: 860, column: 7)
!2536 = !DILocation(line: 860, column: 7, scope: !2505)
!2537 = !DILocation(line: 862, column: 13, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !106, line: 861, column: 5)
!2539 = !DILocation(line: 862, column: 7, scope: !2538)
!2540 = !DILocation(line: 863, column: 15, scope: !2538)
!2541 = !DILocation(line: 864, column: 5, scope: !2538)
!2542 = !DILocation(line: 865, column: 10, scope: !2505)
!2543 = !DILocation(line: 866, column: 1, scope: !2505)
!2544 = distinct !DISubprogram(name: "quotearg_n", scope: !106, file: !106, line: 931, type: !2545, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!6, !24, !15}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !106, line: 931, type: !24)
!2549 = !DILocalVariable(name: "arg", arg: 2, scope: !2544, file: !106, line: 931, type: !15)
!2550 = !DILocation(line: 931, column: 17, scope: !2544)
!2551 = !DILocation(line: 931, column: 32, scope: !2544)
!2552 = !DILocation(line: 933, column: 10, scope: !2544)
!2553 = !DILocation(line: 933, column: 3, scope: !2544)
!2554 = distinct !DISubprogram(name: "quotearg_n_options", scope: !106, file: !106, line: 877, type: !2555, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!6, !24, !15, !100, !1454}
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2567, !2568, !2570, !2571, !2572}
!2558 = !DILocalVariable(name: "n", arg: 1, scope: !2554, file: !106, line: 877, type: !24)
!2559 = !DILocalVariable(name: "arg", arg: 2, scope: !2554, file: !106, line: 877, type: !15)
!2560 = !DILocalVariable(name: "argsize", arg: 3, scope: !2554, file: !106, line: 877, type: !100)
!2561 = !DILocalVariable(name: "options", arg: 4, scope: !2554, file: !106, line: 878, type: !1454)
!2562 = !DILocalVariable(name: "e", scope: !2554, file: !106, line: 880, type: !24)
!2563 = !DILocalVariable(name: "sv", scope: !2554, file: !106, line: 882, type: !130)
!2564 = !DILocalVariable(name: "preallocated", scope: !2565, file: !106, line: 889, type: !12)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !106, line: 888, column: 5)
!2566 = distinct !DILexicalBlock(scope: !2554, file: !106, line: 887, column: 7)
!2567 = !DILocalVariable(name: "nmax", scope: !2565, file: !106, line: 890, type: !24)
!2568 = !DILocalVariable(name: "size", scope: !2569, file: !106, line: 903, type: !100)
!2569 = distinct !DILexicalBlock(scope: !2554, file: !106, line: 902, column: 3)
!2570 = !DILocalVariable(name: "val", scope: !2569, file: !106, line: 904, type: !6)
!2571 = !DILocalVariable(name: "flags", scope: !2569, file: !106, line: 906, type: !24)
!2572 = !DILocalVariable(name: "qsize", scope: !2569, file: !106, line: 907, type: !100)
!2573 = !DILocation(line: 877, column: 25, scope: !2554)
!2574 = !DILocation(line: 877, column: 40, scope: !2554)
!2575 = !DILocation(line: 877, column: 52, scope: !2554)
!2576 = !DILocation(line: 878, column: 51, scope: !2554)
!2577 = !DILocation(line: 880, column: 11, scope: !2554)
!2578 = !DILocation(line: 880, column: 7, scope: !2554)
!2579 = !DILocation(line: 882, column: 24, scope: !2554)
!2580 = !DILocation(line: 882, column: 19, scope: !2554)
!2581 = !DILocation(line: 884, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2554, file: !106, line: 884, column: 7)
!2583 = !DILocation(line: 884, column: 7, scope: !2554)
!2584 = !DILocation(line: 885, column: 5, scope: !2582)
!2585 = !DILocation(line: 887, column: 7, scope: !2566)
!2586 = !DILocation(line: 887, column: 14, scope: !2566)
!2587 = !DILocation(line: 887, column: 7, scope: !2554)
!2588 = !DILocation(line: 889, column: 31, scope: !2565)
!2589 = !DILocation(line: 890, column: 11, scope: !2565)
!2590 = !DILocation(line: 892, column: 16, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2565, file: !106, line: 892, column: 11)
!2592 = !DILocation(line: 892, column: 11, scope: !2565)
!2593 = !DILocation(line: 893, column: 9, scope: !2591)
!2594 = !DILocation(line: 895, column: 32, scope: !2565)
!2595 = !DILocation(line: 895, column: 61, scope: !2565)
!2596 = !DILocation(line: 895, column: 58, scope: !2565)
!2597 = !DILocation(line: 895, column: 66, scope: !2565)
!2598 = !DILocation(line: 895, column: 22, scope: !2565)
!2599 = !DILocation(line: 895, column: 15, scope: !2565)
!2600 = !DILocation(line: 896, column: 11, scope: !2565)
!2601 = !DILocation(line: 897, column: 15, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2565, file: !106, line: 896, column: 11)
!2603 = !{i64 0, i64 8, !2502, i64 8, i64 8, !743}
!2604 = !DILocation(line: 897, column: 9, scope: !2602)
!2605 = !DILocation(line: 898, column: 20, scope: !2565)
!2606 = !DILocation(line: 898, column: 18, scope: !2565)
!2607 = !DILocation(line: 898, column: 7, scope: !2565)
!2608 = !DILocation(line: 898, column: 38, scope: !2565)
!2609 = !DILocation(line: 898, column: 31, scope: !2565)
!2610 = !DILocation(line: 898, column: 48, scope: !2565)
!2611 = !DILocation(line: 899, column: 14, scope: !2565)
!2612 = !DILocation(line: 900, column: 5, scope: !2565)
!2613 = !DILocation(line: 0, scope: !2554)
!2614 = !DILocation(line: 903, column: 19, scope: !2569)
!2615 = !DILocation(line: 903, column: 25, scope: !2569)
!2616 = !DILocation(line: 903, column: 12, scope: !2569)
!2617 = !DILocation(line: 904, column: 23, scope: !2569)
!2618 = !DILocation(line: 904, column: 11, scope: !2569)
!2619 = !DILocation(line: 906, column: 26, scope: !2569)
!2620 = !DILocation(line: 906, column: 32, scope: !2569)
!2621 = !DILocation(line: 906, column: 9, scope: !2569)
!2622 = !DILocation(line: 908, column: 55, scope: !2569)
!2623 = !DILocation(line: 909, column: 46, scope: !2569)
!2624 = !DILocation(line: 910, column: 55, scope: !2569)
!2625 = !DILocation(line: 911, column: 55, scope: !2569)
!2626 = !DILocation(line: 907, column: 20, scope: !2569)
!2627 = !DILocation(line: 907, column: 12, scope: !2569)
!2628 = !DILocation(line: 913, column: 14, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2569, file: !106, line: 913, column: 9)
!2630 = !DILocation(line: 913, column: 9, scope: !2569)
!2631 = !DILocation(line: 915, column: 35, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2629, file: !106, line: 914, column: 7)
!2633 = !DILocation(line: 915, column: 20, scope: !2632)
!2634 = !DILocation(line: 916, column: 17, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !106, line: 916, column: 13)
!2636 = !DILocation(line: 916, column: 13, scope: !2632)
!2637 = !DILocation(line: 917, column: 11, scope: !2635)
!2638 = !DILocation(line: 216, column: 20, scope: !2459, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 918, column: 27, scope: !2632)
!2640 = !DILocation(line: 218, column: 10, scope: !2459, inlinedAt: !2639)
!2641 = !DILocation(line: 918, column: 19, scope: !2632)
!2642 = !DILocation(line: 919, column: 69, scope: !2632)
!2643 = !DILocation(line: 921, column: 44, scope: !2632)
!2644 = !DILocation(line: 922, column: 44, scope: !2632)
!2645 = !DILocation(line: 919, column: 9, scope: !2632)
!2646 = !DILocation(line: 923, column: 7, scope: !2632)
!2647 = !DILocation(line: 0, scope: !2569)
!2648 = !DILocation(line: 925, column: 11, scope: !2569)
!2649 = !DILocation(line: 926, column: 5, scope: !2569)
!2650 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !106, file: !106, line: 937, type: !2651, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!6, !24, !15, !100}
!2653 = !{!2654, !2655, !2656}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2650, file: !106, line: 937, type: !24)
!2655 = !DILocalVariable(name: "arg", arg: 2, scope: !2650, file: !106, line: 937, type: !15)
!2656 = !DILocalVariable(name: "argsize", arg: 3, scope: !2650, file: !106, line: 937, type: !100)
!2657 = !DILocation(line: 937, column: 21, scope: !2650)
!2658 = !DILocation(line: 937, column: 36, scope: !2650)
!2659 = !DILocation(line: 937, column: 48, scope: !2650)
!2660 = !DILocation(line: 939, column: 10, scope: !2650)
!2661 = !DILocation(line: 939, column: 3, scope: !2650)
!2662 = distinct !DISubprogram(name: "quotearg", scope: !106, file: !106, line: 943, type: !1243, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2663)
!2663 = !{!2664}
!2664 = !DILocalVariable(name: "arg", arg: 1, scope: !2662, file: !106, line: 943, type: !15)
!2665 = !DILocation(line: 943, column: 23, scope: !2662)
!2666 = !DILocation(line: 931, column: 17, scope: !2544, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 945, column: 10, scope: !2662)
!2668 = !DILocation(line: 931, column: 32, scope: !2544, inlinedAt: !2667)
!2669 = !DILocation(line: 933, column: 10, scope: !2544, inlinedAt: !2667)
!2670 = !DILocation(line: 945, column: 3, scope: !2662)
!2671 = distinct !DISubprogram(name: "quotearg_mem", scope: !106, file: !106, line: 949, type: !2672, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!6, !15, !100}
!2674 = !{!2675, !2676}
!2675 = !DILocalVariable(name: "arg", arg: 1, scope: !2671, file: !106, line: 949, type: !15)
!2676 = !DILocalVariable(name: "argsize", arg: 2, scope: !2671, file: !106, line: 949, type: !100)
!2677 = !DILocation(line: 949, column: 27, scope: !2671)
!2678 = !DILocation(line: 949, column: 39, scope: !2671)
!2679 = !DILocation(line: 937, column: 21, scope: !2650, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 951, column: 10, scope: !2671)
!2681 = !DILocation(line: 937, column: 36, scope: !2650, inlinedAt: !2680)
!2682 = !DILocation(line: 937, column: 48, scope: !2650, inlinedAt: !2680)
!2683 = !DILocation(line: 939, column: 10, scope: !2650, inlinedAt: !2680)
!2684 = !DILocation(line: 951, column: 3, scope: !2671)
!2685 = distinct !DISubprogram(name: "quotearg_n_style", scope: !106, file: !106, line: 955, type: !2686, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!6, !24, !63, !15}
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DILocalVariable(name: "n", arg: 1, scope: !2685, file: !106, line: 955, type: !24)
!2690 = !DILocalVariable(name: "s", arg: 2, scope: !2685, file: !106, line: 955, type: !63)
!2691 = !DILocalVariable(name: "arg", arg: 3, scope: !2685, file: !106, line: 955, type: !15)
!2692 = !DILocalVariable(name: "o", scope: !2685, file: !106, line: 957, type: !1455)
!2693 = !DILocation(line: 955, column: 23, scope: !2685)
!2694 = !DILocation(line: 955, column: 45, scope: !2685)
!2695 = !DILocation(line: 955, column: 60, scope: !2685)
!2696 = !DILocation(line: 957, column: 3, scope: !2685)
!2697 = !DILocation(line: 957, column: 32, scope: !2685)
!2698 = !DILocalVariable(name: "style", arg: 1, scope: !2699, file: !106, line: 193, type: !63)
!2699 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !106, file: !106, line: 193, type: !2700, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!113, !63}
!2702 = !{!2698, !2703}
!2703 = !DILocalVariable(name: "o", scope: !2699, file: !106, line: 195, type: !113)
!2704 = !DILocation(line: 193, column: 48, scope: !2699, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 957, column: 36, scope: !2685)
!2706 = !DILocation(line: 195, column: 26, scope: !2699, inlinedAt: !2705)
!2707 = !{!2708}
!2708 = distinct !{!2708, !2709, !"quoting_options_from_style: argument 0"}
!2709 = distinct !{!2709, !"quoting_options_from_style"}
!2710 = !DILocation(line: 196, column: 13, scope: !2711, inlinedAt: !2705)
!2711 = distinct !DILexicalBlock(scope: !2699, file: !106, line: 196, column: 7)
!2712 = !DILocation(line: 196, column: 7, scope: !2699, inlinedAt: !2705)
!2713 = !DILocation(line: 197, column: 5, scope: !2711, inlinedAt: !2705)
!2714 = !DILocation(line: 198, column: 5, scope: !2699, inlinedAt: !2705)
!2715 = !DILocation(line: 198, column: 11, scope: !2699, inlinedAt: !2705)
!2716 = !DILocation(line: 958, column: 10, scope: !2685)
!2717 = !DILocation(line: 959, column: 1, scope: !2685)
!2718 = !DILocation(line: 958, column: 3, scope: !2685)
!2719 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !106, file: !106, line: 962, type: !2720, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!6, !24, !63, !15, !100}
!2722 = !{!2723, !2724, !2725, !2726, !2727}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2719, file: !106, line: 962, type: !24)
!2724 = !DILocalVariable(name: "s", arg: 2, scope: !2719, file: !106, line: 962, type: !63)
!2725 = !DILocalVariable(name: "arg", arg: 3, scope: !2719, file: !106, line: 963, type: !15)
!2726 = !DILocalVariable(name: "argsize", arg: 4, scope: !2719, file: !106, line: 963, type: !100)
!2727 = !DILocalVariable(name: "o", scope: !2719, file: !106, line: 965, type: !1455)
!2728 = !DILocation(line: 962, column: 27, scope: !2719)
!2729 = !DILocation(line: 962, column: 49, scope: !2719)
!2730 = !DILocation(line: 963, column: 35, scope: !2719)
!2731 = !DILocation(line: 963, column: 47, scope: !2719)
!2732 = !DILocation(line: 965, column: 3, scope: !2719)
!2733 = !DILocation(line: 965, column: 32, scope: !2719)
!2734 = !DILocation(line: 193, column: 48, scope: !2699, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 965, column: 36, scope: !2719)
!2736 = !DILocation(line: 195, column: 26, scope: !2699, inlinedAt: !2735)
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"quoting_options_from_style: argument 0"}
!2739 = distinct !{!2739, !"quoting_options_from_style"}
!2740 = !DILocation(line: 196, column: 13, scope: !2711, inlinedAt: !2735)
!2741 = !DILocation(line: 196, column: 7, scope: !2699, inlinedAt: !2735)
!2742 = !DILocation(line: 197, column: 5, scope: !2711, inlinedAt: !2735)
!2743 = !DILocation(line: 198, column: 5, scope: !2699, inlinedAt: !2735)
!2744 = !DILocation(line: 198, column: 11, scope: !2699, inlinedAt: !2735)
!2745 = !DILocation(line: 966, column: 10, scope: !2719)
!2746 = !DILocation(line: 967, column: 1, scope: !2719)
!2747 = !DILocation(line: 966, column: 3, scope: !2719)
!2748 = distinct !DISubprogram(name: "quotearg_style", scope: !106, file: !106, line: 970, type: !2749, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!6, !63, !15}
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "s", arg: 1, scope: !2748, file: !106, line: 970, type: !63)
!2753 = !DILocalVariable(name: "arg", arg: 2, scope: !2748, file: !106, line: 970, type: !15)
!2754 = !DILocation(line: 970, column: 36, scope: !2748)
!2755 = !DILocation(line: 970, column: 51, scope: !2748)
!2756 = !DILocation(line: 955, column: 23, scope: !2685, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 972, column: 10, scope: !2748)
!2758 = !DILocation(line: 955, column: 45, scope: !2685, inlinedAt: !2757)
!2759 = !DILocation(line: 955, column: 60, scope: !2685, inlinedAt: !2757)
!2760 = !DILocation(line: 957, column: 3, scope: !2685, inlinedAt: !2757)
!2761 = !DILocation(line: 957, column: 32, scope: !2685, inlinedAt: !2757)
!2762 = !DILocation(line: 193, column: 48, scope: !2699, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 957, column: 36, scope: !2685, inlinedAt: !2757)
!2764 = !DILocation(line: 195, column: 26, scope: !2699, inlinedAt: !2763)
!2765 = !{!2766}
!2766 = distinct !{!2766, !2767, !"quoting_options_from_style: argument 0"}
!2767 = distinct !{!2767, !"quoting_options_from_style"}
!2768 = !DILocation(line: 196, column: 13, scope: !2711, inlinedAt: !2763)
!2769 = !DILocation(line: 196, column: 7, scope: !2699, inlinedAt: !2763)
!2770 = !DILocation(line: 197, column: 5, scope: !2711, inlinedAt: !2763)
!2771 = !DILocation(line: 198, column: 5, scope: !2699, inlinedAt: !2763)
!2772 = !DILocation(line: 198, column: 11, scope: !2699, inlinedAt: !2763)
!2773 = !DILocation(line: 958, column: 10, scope: !2685, inlinedAt: !2757)
!2774 = !DILocation(line: 959, column: 1, scope: !2685, inlinedAt: !2757)
!2775 = !DILocation(line: 972, column: 3, scope: !2748)
!2776 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !106, file: !106, line: 976, type: !2777, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!6, !63, !15, !100}
!2779 = !{!2780, !2781, !2782}
!2780 = !DILocalVariable(name: "s", arg: 1, scope: !2776, file: !106, line: 976, type: !63)
!2781 = !DILocalVariable(name: "arg", arg: 2, scope: !2776, file: !106, line: 976, type: !15)
!2782 = !DILocalVariable(name: "argsize", arg: 3, scope: !2776, file: !106, line: 976, type: !100)
!2783 = !DILocation(line: 976, column: 40, scope: !2776)
!2784 = !DILocation(line: 976, column: 55, scope: !2776)
!2785 = !DILocation(line: 976, column: 67, scope: !2776)
!2786 = !DILocation(line: 962, column: 27, scope: !2719, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 978, column: 10, scope: !2776)
!2788 = !DILocation(line: 962, column: 49, scope: !2719, inlinedAt: !2787)
!2789 = !DILocation(line: 963, column: 35, scope: !2719, inlinedAt: !2787)
!2790 = !DILocation(line: 963, column: 47, scope: !2719, inlinedAt: !2787)
!2791 = !DILocation(line: 965, column: 3, scope: !2719, inlinedAt: !2787)
!2792 = !DILocation(line: 965, column: 32, scope: !2719, inlinedAt: !2787)
!2793 = !DILocation(line: 193, column: 48, scope: !2699, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 965, column: 36, scope: !2719, inlinedAt: !2787)
!2795 = !DILocation(line: 195, column: 26, scope: !2699, inlinedAt: !2794)
!2796 = !{!2797}
!2797 = distinct !{!2797, !2798, !"quoting_options_from_style: argument 0"}
!2798 = distinct !{!2798, !"quoting_options_from_style"}
!2799 = !DILocation(line: 196, column: 13, scope: !2711, inlinedAt: !2794)
!2800 = !DILocation(line: 196, column: 7, scope: !2699, inlinedAt: !2794)
!2801 = !DILocation(line: 197, column: 5, scope: !2711, inlinedAt: !2794)
!2802 = !DILocation(line: 198, column: 5, scope: !2699, inlinedAt: !2794)
!2803 = !DILocation(line: 198, column: 11, scope: !2699, inlinedAt: !2794)
!2804 = !DILocation(line: 966, column: 10, scope: !2719, inlinedAt: !2787)
!2805 = !DILocation(line: 967, column: 1, scope: !2719, inlinedAt: !2787)
!2806 = !DILocation(line: 978, column: 3, scope: !2776)
!2807 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !106, file: !106, line: 982, type: !2808, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!6, !15, !100, !7}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !106, line: 982, type: !15)
!2812 = !DILocalVariable(name: "argsize", arg: 2, scope: !2807, file: !106, line: 982, type: !100)
!2813 = !DILocalVariable(name: "ch", arg: 3, scope: !2807, file: !106, line: 982, type: !7)
!2814 = !DILocalVariable(name: "options", scope: !2807, file: !106, line: 984, type: !113)
!2815 = !DILocation(line: 982, column: 32, scope: !2807)
!2816 = !DILocation(line: 982, column: 44, scope: !2807)
!2817 = !DILocation(line: 982, column: 58, scope: !2807)
!2818 = !DILocation(line: 984, column: 3, scope: !2807)
!2819 = !DILocation(line: 985, column: 13, scope: !2807)
!2820 = !{i64 0, i64 4, !895, i64 4, i64 4, !867, i64 8, i64 32, !895, i64 40, i64 8, !743, i64 48, i64 8, !743}
!2821 = !DILocation(line: 984, column: 26, scope: !2807)
!2822 = !DILocation(line: 152, column: 43, scope: !1476, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 986, column: 3, scope: !2807)
!2824 = !DILocation(line: 152, column: 51, scope: !1476, inlinedAt: !2823)
!2825 = !DILocation(line: 152, column: 58, scope: !1476, inlinedAt: !2823)
!2826 = !DILocation(line: 154, column: 17, scope: !1476, inlinedAt: !2823)
!2827 = !DILocation(line: 156, column: 62, scope: !1476, inlinedAt: !2823)
!2828 = !DILocation(line: 156, column: 57, scope: !1476, inlinedAt: !2823)
!2829 = !DILocation(line: 155, column: 17, scope: !1476, inlinedAt: !2823)
!2830 = !DILocation(line: 157, column: 15, scope: !1476, inlinedAt: !2823)
!2831 = !DILocation(line: 157, column: 7, scope: !1476, inlinedAt: !2823)
!2832 = !DILocation(line: 158, column: 12, scope: !1476, inlinedAt: !2823)
!2833 = !DILocation(line: 158, column: 15, scope: !1476, inlinedAt: !2823)
!2834 = !DILocation(line: 158, column: 25, scope: !1476, inlinedAt: !2823)
!2835 = !DILocation(line: 158, column: 7, scope: !1476, inlinedAt: !2823)
!2836 = !DILocation(line: 159, column: 18, scope: !1476, inlinedAt: !2823)
!2837 = !DILocation(line: 159, column: 23, scope: !1476, inlinedAt: !2823)
!2838 = !DILocation(line: 159, column: 6, scope: !1476, inlinedAt: !2823)
!2839 = !DILocation(line: 987, column: 10, scope: !2807)
!2840 = !DILocation(line: 988, column: 1, scope: !2807)
!2841 = !DILocation(line: 987, column: 3, scope: !2807)
!2842 = distinct !DISubprogram(name: "quotearg_char", scope: !106, file: !106, line: 991, type: !2843, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!6, !15, !7}
!2845 = !{!2846, !2847}
!2846 = !DILocalVariable(name: "arg", arg: 1, scope: !2842, file: !106, line: 991, type: !15)
!2847 = !DILocalVariable(name: "ch", arg: 2, scope: !2842, file: !106, line: 991, type: !7)
!2848 = !DILocation(line: 991, column: 28, scope: !2842)
!2849 = !DILocation(line: 991, column: 38, scope: !2842)
!2850 = !DILocation(line: 982, column: 32, scope: !2807, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 993, column: 10, scope: !2842)
!2852 = !DILocation(line: 982, column: 44, scope: !2807, inlinedAt: !2851)
!2853 = !DILocation(line: 982, column: 58, scope: !2807, inlinedAt: !2851)
!2854 = !DILocation(line: 984, column: 3, scope: !2807, inlinedAt: !2851)
!2855 = !DILocation(line: 985, column: 13, scope: !2807, inlinedAt: !2851)
!2856 = !DILocation(line: 984, column: 26, scope: !2807, inlinedAt: !2851)
!2857 = !DILocation(line: 152, column: 43, scope: !1476, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 986, column: 3, scope: !2807, inlinedAt: !2851)
!2859 = !DILocation(line: 152, column: 51, scope: !1476, inlinedAt: !2858)
!2860 = !DILocation(line: 152, column: 58, scope: !1476, inlinedAt: !2858)
!2861 = !DILocation(line: 154, column: 17, scope: !1476, inlinedAt: !2858)
!2862 = !DILocation(line: 156, column: 62, scope: !1476, inlinedAt: !2858)
!2863 = !DILocation(line: 156, column: 57, scope: !1476, inlinedAt: !2858)
!2864 = !DILocation(line: 155, column: 17, scope: !1476, inlinedAt: !2858)
!2865 = !DILocation(line: 157, column: 15, scope: !1476, inlinedAt: !2858)
!2866 = !DILocation(line: 157, column: 7, scope: !1476, inlinedAt: !2858)
!2867 = !DILocation(line: 158, column: 12, scope: !1476, inlinedAt: !2858)
!2868 = !DILocation(line: 158, column: 15, scope: !1476, inlinedAt: !2858)
!2869 = !DILocation(line: 158, column: 25, scope: !1476, inlinedAt: !2858)
!2870 = !DILocation(line: 158, column: 7, scope: !1476, inlinedAt: !2858)
!2871 = !DILocation(line: 159, column: 18, scope: !1476, inlinedAt: !2858)
!2872 = !DILocation(line: 159, column: 23, scope: !1476, inlinedAt: !2858)
!2873 = !DILocation(line: 159, column: 6, scope: !1476, inlinedAt: !2858)
!2874 = !DILocation(line: 987, column: 10, scope: !2807, inlinedAt: !2851)
!2875 = !DILocation(line: 988, column: 1, scope: !2807, inlinedAt: !2851)
!2876 = !DILocation(line: 993, column: 3, scope: !2842)
!2877 = distinct !DISubprogram(name: "quotearg_colon", scope: !106, file: !106, line: 997, type: !1243, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2878)
!2878 = !{!2879}
!2879 = !DILocalVariable(name: "arg", arg: 1, scope: !2877, file: !106, line: 997, type: !15)
!2880 = !DILocation(line: 997, column: 29, scope: !2877)
!2881 = !DILocation(line: 991, column: 28, scope: !2842, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 999, column: 10, scope: !2877)
!2883 = !DILocation(line: 991, column: 38, scope: !2842, inlinedAt: !2882)
!2884 = !DILocation(line: 982, column: 32, scope: !2807, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 993, column: 10, scope: !2842, inlinedAt: !2882)
!2886 = !DILocation(line: 982, column: 44, scope: !2807, inlinedAt: !2885)
!2887 = !DILocation(line: 982, column: 58, scope: !2807, inlinedAt: !2885)
!2888 = !DILocation(line: 984, column: 3, scope: !2807, inlinedAt: !2885)
!2889 = !DILocation(line: 985, column: 13, scope: !2807, inlinedAt: !2885)
!2890 = !DILocation(line: 984, column: 26, scope: !2807, inlinedAt: !2885)
!2891 = !DILocation(line: 152, column: 43, scope: !1476, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 986, column: 3, scope: !2807, inlinedAt: !2885)
!2893 = !DILocation(line: 152, column: 51, scope: !1476, inlinedAt: !2892)
!2894 = !DILocation(line: 152, column: 58, scope: !1476, inlinedAt: !2892)
!2895 = !DILocation(line: 154, column: 17, scope: !1476, inlinedAt: !2892)
!2896 = !DILocation(line: 156, column: 57, scope: !1476, inlinedAt: !2892)
!2897 = !DILocation(line: 155, column: 17, scope: !1476, inlinedAt: !2892)
!2898 = !DILocation(line: 157, column: 7, scope: !1476, inlinedAt: !2892)
!2899 = !DILocation(line: 158, column: 12, scope: !1476, inlinedAt: !2892)
!2900 = !DILocation(line: 159, column: 6, scope: !1476, inlinedAt: !2892)
!2901 = !DILocation(line: 987, column: 10, scope: !2807, inlinedAt: !2885)
!2902 = !DILocation(line: 988, column: 1, scope: !2807, inlinedAt: !2885)
!2903 = !DILocation(line: 999, column: 3, scope: !2877)
!2904 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !106, file: !106, line: 1003, type: !2672, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2905)
!2905 = !{!2906, !2907}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2904, file: !106, line: 1003, type: !15)
!2907 = !DILocalVariable(name: "argsize", arg: 2, scope: !2904, file: !106, line: 1003, type: !100)
!2908 = !DILocation(line: 1003, column: 33, scope: !2904)
!2909 = !DILocation(line: 1003, column: 45, scope: !2904)
!2910 = !DILocation(line: 982, column: 32, scope: !2807, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 1005, column: 10, scope: !2904)
!2912 = !DILocation(line: 982, column: 44, scope: !2807, inlinedAt: !2911)
!2913 = !DILocation(line: 982, column: 58, scope: !2807, inlinedAt: !2911)
!2914 = !DILocation(line: 984, column: 3, scope: !2807, inlinedAt: !2911)
!2915 = !DILocation(line: 985, column: 13, scope: !2807, inlinedAt: !2911)
!2916 = !DILocation(line: 984, column: 26, scope: !2807, inlinedAt: !2911)
!2917 = !DILocation(line: 152, column: 43, scope: !1476, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 986, column: 3, scope: !2807, inlinedAt: !2911)
!2919 = !DILocation(line: 152, column: 51, scope: !1476, inlinedAt: !2918)
!2920 = !DILocation(line: 152, column: 58, scope: !1476, inlinedAt: !2918)
!2921 = !DILocation(line: 154, column: 17, scope: !1476, inlinedAt: !2918)
!2922 = !DILocation(line: 156, column: 57, scope: !1476, inlinedAt: !2918)
!2923 = !DILocation(line: 155, column: 17, scope: !1476, inlinedAt: !2918)
!2924 = !DILocation(line: 157, column: 7, scope: !1476, inlinedAt: !2918)
!2925 = !DILocation(line: 158, column: 12, scope: !1476, inlinedAt: !2918)
!2926 = !DILocation(line: 159, column: 6, scope: !1476, inlinedAt: !2918)
!2927 = !DILocation(line: 987, column: 10, scope: !2807, inlinedAt: !2911)
!2928 = !DILocation(line: 988, column: 1, scope: !2807, inlinedAt: !2911)
!2929 = !DILocation(line: 1005, column: 3, scope: !2904)
!2930 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !106, file: !106, line: 1009, type: !2686, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2931)
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2930, file: !106, line: 1009, type: !24)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2930, file: !106, line: 1009, type: !63)
!2934 = !DILocalVariable(name: "arg", arg: 3, scope: !2930, file: !106, line: 1009, type: !15)
!2935 = !DILocalVariable(name: "options", scope: !2930, file: !106, line: 1011, type: !113)
!2936 = !DILocation(line: 195, column: 26, scope: !2699, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1012, column: 13, scope: !2930)
!2938 = !DILocation(line: 1009, column: 29, scope: !2930)
!2939 = !DILocation(line: 1009, column: 51, scope: !2930)
!2940 = !DILocation(line: 1009, column: 66, scope: !2930)
!2941 = !DILocation(line: 1011, column: 3, scope: !2930)
!2942 = !DILocation(line: 1012, column: 13, scope: !2930)
!2943 = !DILocation(line: 193, column: 48, scope: !2699, inlinedAt: !2937)
!2944 = !{!2945}
!2945 = distinct !{!2945, !2946, !"quoting_options_from_style: argument 0"}
!2946 = distinct !{!2946, !"quoting_options_from_style"}
!2947 = !DILocation(line: 196, column: 13, scope: !2711, inlinedAt: !2937)
!2948 = !DILocation(line: 196, column: 7, scope: !2699, inlinedAt: !2937)
!2949 = !DILocation(line: 197, column: 5, scope: !2711, inlinedAt: !2937)
!2950 = !DILocation(line: 1011, column: 26, scope: !2930)
!2951 = !DILocation(line: 152, column: 43, scope: !1476, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1013, column: 3, scope: !2930)
!2953 = !DILocation(line: 152, column: 51, scope: !1476, inlinedAt: !2952)
!2954 = !DILocation(line: 152, column: 58, scope: !1476, inlinedAt: !2952)
!2955 = !DILocation(line: 154, column: 17, scope: !1476, inlinedAt: !2952)
!2956 = !DILocation(line: 156, column: 57, scope: !1476, inlinedAt: !2952)
!2957 = !DILocation(line: 155, column: 17, scope: !1476, inlinedAt: !2952)
!2958 = !DILocation(line: 157, column: 7, scope: !1476, inlinedAt: !2952)
!2959 = !DILocation(line: 158, column: 12, scope: !1476, inlinedAt: !2952)
!2960 = !DILocation(line: 159, column: 6, scope: !1476, inlinedAt: !2952)
!2961 = !DILocation(line: 1014, column: 10, scope: !2930)
!2962 = !DILocation(line: 1015, column: 1, scope: !2930)
!2963 = !DILocation(line: 1014, column: 3, scope: !2930)
!2964 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !106, file: !106, line: 1018, type: !2965, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!6, !24, !15, !15, !15}
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2964, file: !106, line: 1018, type: !24)
!2969 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2964, file: !106, line: 1018, type: !15)
!2970 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2964, file: !106, line: 1019, type: !15)
!2971 = !DILocalVariable(name: "arg", arg: 4, scope: !2964, file: !106, line: 1019, type: !15)
!2972 = !DILocation(line: 1018, column: 24, scope: !2964)
!2973 = !DILocation(line: 1018, column: 39, scope: !2964)
!2974 = !DILocation(line: 1019, column: 32, scope: !2964)
!2975 = !DILocation(line: 1019, column: 57, scope: !2964)
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !106, line: 1026, type: !24)
!2977 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !106, file: !106, line: 1026, type: !2978, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!6, !24, !15, !15, !15, !100}
!2980 = !{!2976, !2981, !2982, !2983, !2984, !2985}
!2981 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2977, file: !106, line: 1026, type: !15)
!2982 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2977, file: !106, line: 1027, type: !15)
!2983 = !DILocalVariable(name: "arg", arg: 4, scope: !2977, file: !106, line: 1028, type: !15)
!2984 = !DILocalVariable(name: "argsize", arg: 5, scope: !2977, file: !106, line: 1028, type: !100)
!2985 = !DILocalVariable(name: "o", scope: !2977, file: !106, line: 1030, type: !113)
!2986 = !DILocation(line: 1026, column: 28, scope: !2977, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 1021, column: 10, scope: !2964)
!2988 = !DILocation(line: 1026, column: 43, scope: !2977, inlinedAt: !2987)
!2989 = !DILocation(line: 1027, column: 36, scope: !2977, inlinedAt: !2987)
!2990 = !DILocation(line: 1028, column: 36, scope: !2977, inlinedAt: !2987)
!2991 = !DILocation(line: 1028, column: 48, scope: !2977, inlinedAt: !2987)
!2992 = !DILocation(line: 1030, column: 3, scope: !2977, inlinedAt: !2987)
!2993 = !DILocation(line: 1030, column: 30, scope: !2977, inlinedAt: !2987)
!2994 = !DILocation(line: 1030, column: 26, scope: !2977, inlinedAt: !2987)
!2995 = !DILocation(line: 179, column: 45, scope: !1525, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1031, column: 3, scope: !2977, inlinedAt: !2987)
!2997 = !DILocation(line: 180, column: 33, scope: !1525, inlinedAt: !2996)
!2998 = !DILocation(line: 180, column: 57, scope: !1525, inlinedAt: !2996)
!2999 = !DILocation(line: 184, column: 6, scope: !1525, inlinedAt: !2996)
!3000 = !DILocation(line: 184, column: 12, scope: !1525, inlinedAt: !2996)
!3001 = !DILocation(line: 185, column: 8, scope: !1541, inlinedAt: !2996)
!3002 = !DILocation(line: 185, column: 23, scope: !1541, inlinedAt: !2996)
!3003 = !DILocation(line: 185, column: 19, scope: !1541, inlinedAt: !2996)
!3004 = !DILocation(line: 186, column: 5, scope: !1541, inlinedAt: !2996)
!3005 = !DILocation(line: 187, column: 6, scope: !1525, inlinedAt: !2996)
!3006 = !DILocation(line: 187, column: 17, scope: !1525, inlinedAt: !2996)
!3007 = !DILocation(line: 188, column: 6, scope: !1525, inlinedAt: !2996)
!3008 = !DILocation(line: 188, column: 18, scope: !1525, inlinedAt: !2996)
!3009 = !DILocation(line: 1032, column: 10, scope: !2977, inlinedAt: !2987)
!3010 = !DILocation(line: 1033, column: 1, scope: !2977, inlinedAt: !2987)
!3011 = !DILocation(line: 1021, column: 3, scope: !2964)
!3012 = !DILocation(line: 1026, column: 28, scope: !2977)
!3013 = !DILocation(line: 1026, column: 43, scope: !2977)
!3014 = !DILocation(line: 1027, column: 36, scope: !2977)
!3015 = !DILocation(line: 1028, column: 36, scope: !2977)
!3016 = !DILocation(line: 1028, column: 48, scope: !2977)
!3017 = !DILocation(line: 1030, column: 3, scope: !2977)
!3018 = !DILocation(line: 1030, column: 30, scope: !2977)
!3019 = !DILocation(line: 1030, column: 26, scope: !2977)
!3020 = !DILocation(line: 179, column: 45, scope: !1525, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1031, column: 3, scope: !2977)
!3022 = !DILocation(line: 180, column: 33, scope: !1525, inlinedAt: !3021)
!3023 = !DILocation(line: 180, column: 57, scope: !1525, inlinedAt: !3021)
!3024 = !DILocation(line: 184, column: 6, scope: !1525, inlinedAt: !3021)
!3025 = !DILocation(line: 184, column: 12, scope: !1525, inlinedAt: !3021)
!3026 = !DILocation(line: 185, column: 8, scope: !1541, inlinedAt: !3021)
!3027 = !DILocation(line: 185, column: 23, scope: !1541, inlinedAt: !3021)
!3028 = !DILocation(line: 185, column: 19, scope: !1541, inlinedAt: !3021)
!3029 = !DILocation(line: 186, column: 5, scope: !1541, inlinedAt: !3021)
!3030 = !DILocation(line: 187, column: 6, scope: !1525, inlinedAt: !3021)
!3031 = !DILocation(line: 187, column: 17, scope: !1525, inlinedAt: !3021)
!3032 = !DILocation(line: 188, column: 6, scope: !1525, inlinedAt: !3021)
!3033 = !DILocation(line: 188, column: 18, scope: !1525, inlinedAt: !3021)
!3034 = !DILocation(line: 1032, column: 10, scope: !2977)
!3035 = !DILocation(line: 1033, column: 1, scope: !2977)
!3036 = !DILocation(line: 1032, column: 3, scope: !2977)
!3037 = distinct !DISubprogram(name: "quotearg_custom", scope: !106, file: !106, line: 1036, type: !3038, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!6, !15, !15, !15}
!3040 = !{!3041, !3042, !3043}
!3041 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3037, file: !106, line: 1036, type: !15)
!3042 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3037, file: !106, line: 1036, type: !15)
!3043 = !DILocalVariable(name: "arg", arg: 3, scope: !3037, file: !106, line: 1037, type: !15)
!3044 = !DILocation(line: 1036, column: 30, scope: !3037)
!3045 = !DILocation(line: 1036, column: 54, scope: !3037)
!3046 = !DILocation(line: 1037, column: 30, scope: !3037)
!3047 = !DILocation(line: 1018, column: 24, scope: !2964, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1039, column: 10, scope: !3037)
!3049 = !DILocation(line: 1018, column: 39, scope: !2964, inlinedAt: !3048)
!3050 = !DILocation(line: 1019, column: 32, scope: !2964, inlinedAt: !3048)
!3051 = !DILocation(line: 1019, column: 57, scope: !2964, inlinedAt: !3048)
!3052 = !DILocation(line: 1026, column: 28, scope: !2977, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1021, column: 10, scope: !2964, inlinedAt: !3048)
!3054 = !DILocation(line: 1026, column: 43, scope: !2977, inlinedAt: !3053)
!3055 = !DILocation(line: 1027, column: 36, scope: !2977, inlinedAt: !3053)
!3056 = !DILocation(line: 1028, column: 36, scope: !2977, inlinedAt: !3053)
!3057 = !DILocation(line: 1028, column: 48, scope: !2977, inlinedAt: !3053)
!3058 = !DILocation(line: 1030, column: 3, scope: !2977, inlinedAt: !3053)
!3059 = !DILocation(line: 1030, column: 30, scope: !2977, inlinedAt: !3053)
!3060 = !DILocation(line: 1030, column: 26, scope: !2977, inlinedAt: !3053)
!3061 = !DILocation(line: 179, column: 45, scope: !1525, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 1031, column: 3, scope: !2977, inlinedAt: !3053)
!3063 = !DILocation(line: 180, column: 33, scope: !1525, inlinedAt: !3062)
!3064 = !DILocation(line: 180, column: 57, scope: !1525, inlinedAt: !3062)
!3065 = !DILocation(line: 184, column: 6, scope: !1525, inlinedAt: !3062)
!3066 = !DILocation(line: 184, column: 12, scope: !1525, inlinedAt: !3062)
!3067 = !DILocation(line: 185, column: 8, scope: !1541, inlinedAt: !3062)
!3068 = !DILocation(line: 185, column: 23, scope: !1541, inlinedAt: !3062)
!3069 = !DILocation(line: 185, column: 19, scope: !1541, inlinedAt: !3062)
!3070 = !DILocation(line: 186, column: 5, scope: !1541, inlinedAt: !3062)
!3071 = !DILocation(line: 187, column: 6, scope: !1525, inlinedAt: !3062)
!3072 = !DILocation(line: 187, column: 17, scope: !1525, inlinedAt: !3062)
!3073 = !DILocation(line: 188, column: 6, scope: !1525, inlinedAt: !3062)
!3074 = !DILocation(line: 188, column: 18, scope: !1525, inlinedAt: !3062)
!3075 = !DILocation(line: 1032, column: 10, scope: !2977, inlinedAt: !3053)
!3076 = !DILocation(line: 1033, column: 1, scope: !2977, inlinedAt: !3053)
!3077 = !DILocation(line: 1039, column: 3, scope: !3037)
!3078 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !106, file: !106, line: 1043, type: !3079, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!6, !15, !15, !15, !100}
!3081 = !{!3082, !3083, !3084, !3085}
!3082 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3078, file: !106, line: 1043, type: !15)
!3083 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3078, file: !106, line: 1043, type: !15)
!3084 = !DILocalVariable(name: "arg", arg: 3, scope: !3078, file: !106, line: 1044, type: !15)
!3085 = !DILocalVariable(name: "argsize", arg: 4, scope: !3078, file: !106, line: 1044, type: !100)
!3086 = !DILocation(line: 1043, column: 34, scope: !3078)
!3087 = !DILocation(line: 1043, column: 58, scope: !3078)
!3088 = !DILocation(line: 1044, column: 34, scope: !3078)
!3089 = !DILocation(line: 1044, column: 46, scope: !3078)
!3090 = !DILocation(line: 1026, column: 28, scope: !2977, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1046, column: 10, scope: !3078)
!3092 = !DILocation(line: 1026, column: 43, scope: !2977, inlinedAt: !3091)
!3093 = !DILocation(line: 1027, column: 36, scope: !2977, inlinedAt: !3091)
!3094 = !DILocation(line: 1028, column: 36, scope: !2977, inlinedAt: !3091)
!3095 = !DILocation(line: 1028, column: 48, scope: !2977, inlinedAt: !3091)
!3096 = !DILocation(line: 1030, column: 3, scope: !2977, inlinedAt: !3091)
!3097 = !DILocation(line: 1030, column: 30, scope: !2977, inlinedAt: !3091)
!3098 = !DILocation(line: 1030, column: 26, scope: !2977, inlinedAt: !3091)
!3099 = !DILocation(line: 179, column: 45, scope: !1525, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1031, column: 3, scope: !2977, inlinedAt: !3091)
!3101 = !DILocation(line: 180, column: 33, scope: !1525, inlinedAt: !3100)
!3102 = !DILocation(line: 180, column: 57, scope: !1525, inlinedAt: !3100)
!3103 = !DILocation(line: 184, column: 6, scope: !1525, inlinedAt: !3100)
!3104 = !DILocation(line: 184, column: 12, scope: !1525, inlinedAt: !3100)
!3105 = !DILocation(line: 185, column: 8, scope: !1541, inlinedAt: !3100)
!3106 = !DILocation(line: 185, column: 23, scope: !1541, inlinedAt: !3100)
!3107 = !DILocation(line: 185, column: 19, scope: !1541, inlinedAt: !3100)
!3108 = !DILocation(line: 186, column: 5, scope: !1541, inlinedAt: !3100)
!3109 = !DILocation(line: 187, column: 6, scope: !1525, inlinedAt: !3100)
!3110 = !DILocation(line: 187, column: 17, scope: !1525, inlinedAt: !3100)
!3111 = !DILocation(line: 188, column: 6, scope: !1525, inlinedAt: !3100)
!3112 = !DILocation(line: 188, column: 18, scope: !1525, inlinedAt: !3100)
!3113 = !DILocation(line: 1032, column: 10, scope: !2977, inlinedAt: !3091)
!3114 = !DILocation(line: 1033, column: 1, scope: !2977, inlinedAt: !3091)
!3115 = !DILocation(line: 1046, column: 3, scope: !3078)
!3116 = distinct !DISubprogram(name: "quote_n_mem", scope: !106, file: !106, line: 1061, type: !3117, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!15, !24, !15, !100}
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "n", arg: 1, scope: !3116, file: !106, line: 1061, type: !24)
!3121 = !DILocalVariable(name: "arg", arg: 2, scope: !3116, file: !106, line: 1061, type: !15)
!3122 = !DILocalVariable(name: "argsize", arg: 3, scope: !3116, file: !106, line: 1061, type: !100)
!3123 = !DILocation(line: 1061, column: 18, scope: !3116)
!3124 = !DILocation(line: 1061, column: 33, scope: !3116)
!3125 = !DILocation(line: 1061, column: 45, scope: !3116)
!3126 = !DILocation(line: 1063, column: 10, scope: !3116)
!3127 = !DILocation(line: 1063, column: 3, scope: !3116)
!3128 = distinct !DISubprogram(name: "quote_mem", scope: !106, file: !106, line: 1067, type: !3129, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!15, !15, !100}
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "arg", arg: 1, scope: !3128, file: !106, line: 1067, type: !15)
!3133 = !DILocalVariable(name: "argsize", arg: 2, scope: !3128, file: !106, line: 1067, type: !100)
!3134 = !DILocation(line: 1067, column: 24, scope: !3128)
!3135 = !DILocation(line: 1067, column: 36, scope: !3128)
!3136 = !DILocation(line: 1061, column: 18, scope: !3116, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 1069, column: 10, scope: !3128)
!3138 = !DILocation(line: 1061, column: 33, scope: !3116, inlinedAt: !3137)
!3139 = !DILocation(line: 1061, column: 45, scope: !3116, inlinedAt: !3137)
!3140 = !DILocation(line: 1063, column: 10, scope: !3116, inlinedAt: !3137)
!3141 = !DILocation(line: 1069, column: 3, scope: !3128)
!3142 = distinct !DISubprogram(name: "quote_n", scope: !106, file: !106, line: 1073, type: !3143, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!15, !24, !15}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !106, line: 1073, type: !24)
!3147 = !DILocalVariable(name: "arg", arg: 2, scope: !3142, file: !106, line: 1073, type: !15)
!3148 = !DILocation(line: 1073, column: 14, scope: !3142)
!3149 = !DILocation(line: 1073, column: 29, scope: !3142)
!3150 = !DILocation(line: 1061, column: 18, scope: !3116, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1075, column: 10, scope: !3142)
!3152 = !DILocation(line: 1061, column: 33, scope: !3116, inlinedAt: !3151)
!3153 = !DILocation(line: 1061, column: 45, scope: !3116, inlinedAt: !3151)
!3154 = !DILocation(line: 1063, column: 10, scope: !3116, inlinedAt: !3151)
!3155 = !DILocation(line: 1075, column: 3, scope: !3142)
!3156 = distinct !DISubprogram(name: "quote", scope: !106, file: !106, line: 1079, type: !3157, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!15, !15}
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "arg", arg: 1, scope: !3156, file: !106, line: 1079, type: !15)
!3161 = !DILocation(line: 1079, column: 20, scope: !3156)
!3162 = !DILocation(line: 1073, column: 14, scope: !3142, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 1081, column: 10, scope: !3156)
!3164 = !DILocation(line: 1073, column: 29, scope: !3142, inlinedAt: !3163)
!3165 = !DILocation(line: 1061, column: 18, scope: !3116, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1075, column: 10, scope: !3142, inlinedAt: !3163)
!3167 = !DILocation(line: 1061, column: 33, scope: !3116, inlinedAt: !3166)
!3168 = !DILocation(line: 1061, column: 45, scope: !3116, inlinedAt: !3166)
!3169 = !DILocation(line: 1063, column: 10, scope: !3116, inlinedAt: !3166)
!3170 = !DILocation(line: 1081, column: 3, scope: !3156)
!3171 = distinct !DISubprogram(name: "try_tempname_len", scope: !148, file: !148, line: 188, type: !3172, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3177)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!24, !6, !24, !8, !3174, !100}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!24, !6, !8}
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3192, !3193, !3197}
!3178 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3171, file: !148, line: 188, type: !6)
!3179 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3171, file: !148, line: 188, type: !24)
!3180 = !DILocalVariable(name: "args", arg: 3, scope: !3171, file: !148, line: 188, type: !8)
!3181 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3171, file: !148, line: 189, type: !3174)
!3182 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3171, file: !148, line: 189, type: !100)
!3183 = !DILocalVariable(name: "len", scope: !3171, file: !148, line: 191, type: !100)
!3184 = !DILocalVariable(name: "XXXXXX", scope: !3171, file: !148, line: 192, type: !6)
!3185 = !DILocalVariable(name: "count", scope: !3171, file: !148, line: 193, type: !65)
!3186 = !DILocalVariable(name: "fd", scope: !3171, file: !148, line: 194, type: !24)
!3187 = !DILocalVariable(name: "save_errno", scope: !3171, file: !148, line: 195, type: !24)
!3188 = !DILocalVariable(name: "rand_src", scope: !3171, file: !148, line: 196, type: !3189)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !3191, line: 33, flags: DIFlagFwdDecl)
!3191 = !DIFile(filename: "./lib/randint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3192 = !DILocalVariable(name: "attempts", scope: !3171, file: !148, line: 212, type: !65)
!3193 = !DILocalVariable(name: "i", scope: !3194, file: !148, line: 234, type: !100)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !148, line: 233, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !148, line: 232, column: 3)
!3196 = distinct !DILexicalBlock(scope: !3171, file: !148, line: 232, column: 3)
!3197 = !DILocalVariable(name: "saved_errno", scope: !3198, file: !148, line: 260, type: !24)
!3198 = distinct !DILexicalBlock(scope: !3171, file: !148, line: 259, column: 3)
!3199 = !DILocation(line: 188, column: 25, scope: !3171)
!3200 = !DILocation(line: 188, column: 35, scope: !3171)
!3201 = !DILocation(line: 188, column: 52, scope: !3171)
!3202 = !DILocation(line: 189, column: 25, scope: !3171)
!3203 = !DILocation(line: 189, column: 59, scope: !3171)
!3204 = !DILocation(line: 194, column: 7, scope: !3171)
!3205 = !DILocation(line: 195, column: 20, scope: !3171)
!3206 = !DILocation(line: 195, column: 7, scope: !3171)
!3207 = !DILocation(line: 212, column: 16, scope: !3171)
!3208 = !DILocation(line: 215, column: 9, scope: !3171)
!3209 = !DILocation(line: 191, column: 10, scope: !3171)
!3210 = !DILocation(line: 216, column: 28, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3171, file: !148, line: 216, column: 7)
!3212 = !DILocation(line: 216, column: 26, scope: !3211)
!3213 = !DILocation(line: 216, column: 11, scope: !3211)
!3214 = !DILocation(line: 217, column: 7, scope: !3211)
!3215 = !DILocation(line: 217, column: 53, scope: !3211)
!3216 = !DILocation(line: 217, column: 29, scope: !3211)
!3217 = !DILocalVariable(name: "s", arg: 1, scope: !3218, file: !148, line: 178, type: !15)
!3218 = distinct !DISubprogram(name: "check_x_suffix", scope: !148, file: !148, line: 178, type: !3219, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!12, !15, !100}
!3221 = !{!3217, !3222}
!3222 = !DILocalVariable(name: "len", arg: 2, scope: !3218, file: !148, line: 178, type: !100)
!3223 = !DILocation(line: 178, column: 29, scope: !3218, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 217, column: 12, scope: !3211)
!3225 = !DILocation(line: 178, column: 39, scope: !3218, inlinedAt: !3224)
!3226 = !DILocation(line: 180, column: 17, scope: !3218, inlinedAt: !3224)
!3227 = !DILocation(line: 180, column: 14, scope: !3218, inlinedAt: !3224)
!3228 = !DILocation(line: 216, column: 7, scope: !3171)
!3229 = !DILocation(line: 192, column: 9, scope: !3171)
!3230 = !DILocation(line: 228, column: 14, scope: !3171)
!3231 = !DILocation(line: 196, column: 26, scope: !3171)
!3232 = !DILocation(line: 229, column: 9, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3171, file: !148, line: 229, column: 7)
!3234 = !DILocation(line: 229, column: 7, scope: !3171)
!3235 = !DILocation(line: 193, column: 16, scope: !3171)
!3236 = !DILocation(line: 232, column: 3, scope: !3196)
!3237 = !DILocation(line: 232, column: 25, scope: !3195)
!3238 = distinct !{!3238, !3236, !3239}
!3239 = !DILocation(line: 250, column: 5, scope: !3196)
!3240 = !DILocation(line: 234, column: 14, scope: !3194)
!3241 = !DILocation(line: 236, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3194, file: !148, line: 236, column: 7)
!3243 = !DILocation(line: 237, column: 29, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !148, line: 236, column: 7)
!3245 = !DILocation(line: 237, column: 21, scope: !3244)
!3246 = !DILocation(line: 237, column: 9, scope: !3244)
!3247 = !DILocation(line: 237, column: 19, scope: !3244)
!3248 = !DILocation(line: 236, column: 38, scope: !3244)
!3249 = !DILocation(line: 236, column: 21, scope: !3244)
!3250 = distinct !{!3250, !3241, !3251}
!3251 = !DILocation(line: 237, column: 74, scope: !3242)
!3252 = !DILocation(line: 239, column: 12, scope: !3194)
!3253 = !DILocation(line: 240, column: 14, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3194, file: !148, line: 240, column: 11)
!3255 = !DILocation(line: 240, column: 11, scope: !3194)
!3256 = !DILocation(line: 242, column: 11, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !148, line: 241, column: 9)
!3258 = !DILocation(line: 243, column: 11, scope: !3257)
!3259 = !DILocation(line: 245, column: 16, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3254, file: !148, line: 245, column: 16)
!3261 = !DILocation(line: 245, column: 22, scope: !3260)
!3262 = !DILocation(line: 232, column: 37, scope: !3195)
!3263 = !DILocation(line: 252, column: 3, scope: !3171)
!3264 = !DILocation(line: 256, column: 3, scope: !3171)
!3265 = !DILocation(line: 260, column: 23, scope: !3198)
!3266 = !DILocation(line: 260, column: 9, scope: !3198)
!3267 = !DILocation(line: 261, column: 5, scope: !3198)
!3268 = !DILocation(line: 264, column: 3, scope: !3171)
!3269 = !DILocation(line: 0, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3211, file: !148, line: 219, column: 5)
!3271 = !DILocation(line: 265, column: 1, scope: !3171)
!3272 = distinct !DISubprogram(name: "gen_tempname_len", scope: !148, file: !148, line: 307, type: !3273, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!24, !6, !24, !24, !24, !100}
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281}
!3276 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3272, file: !148, line: 307, type: !6)
!3277 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3272, file: !148, line: 307, type: !24)
!3278 = !DILocalVariable(name: "flags", arg: 3, scope: !3272, file: !148, line: 307, type: !24)
!3279 = !DILocalVariable(name: "kind", arg: 4, scope: !3272, file: !148, line: 307, type: !24)
!3280 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3272, file: !148, line: 308, type: !100)
!3281 = !DILocalVariable(name: "tryfunc", scope: !3272, file: !148, line: 310, type: !3174)
!3282 = !DILocation(line: 307, column: 25, scope: !3272)
!3283 = !DILocation(line: 307, column: 35, scope: !3272)
!3284 = !DILocation(line: 307, column: 50, scope: !3272)
!3285 = !DILocation(line: 307, column: 61, scope: !3272)
!3286 = !DILocation(line: 308, column: 26, scope: !3272)
!3287 = !DILocation(line: 312, column: 3, scope: !3272)
!3288 = !DILocation(line: 327, column: 7, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !148, line: 327, column: 7)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !148, line: 327, column: 7)
!3291 = distinct !DILexicalBlock(scope: !3272, file: !148, line: 313, column: 5)
!3292 = !DILocation(line: 310, column: 9, scope: !3272)
!3293 = !DILocation(line: 330, column: 45, scope: !3272)
!3294 = !DILocation(line: 330, column: 10, scope: !3272)
!3295 = !DILocation(line: 330, column: 3, scope: !3272)
!3296 = distinct !DISubprogram(name: "try_file", scope: !148, file: !148, line: 268, type: !3175, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3296, file: !148, line: 268, type: !6)
!3299 = !DILocalVariable(name: "flags", arg: 2, scope: !3296, file: !148, line: 268, type: !8)
!3300 = !DILocalVariable(name: "openflags", scope: !3296, file: !148, line: 270, type: !26)
!3301 = !DILocation(line: 268, column: 17, scope: !3296)
!3302 = !DILocation(line: 268, column: 29, scope: !3296)
!3303 = !DILocation(line: 270, column: 20, scope: !3296)
!3304 = !DILocation(line: 270, column: 8, scope: !3296)
!3305 = !DILocation(line: 272, column: 19, scope: !3296)
!3306 = !DILocation(line: 272, column: 30, scope: !3296)
!3307 = !DILocation(line: 273, column: 37, scope: !3296)
!3308 = !DILocation(line: 271, column: 10, scope: !3296)
!3309 = !DILocation(line: 271, column: 3, scope: !3296)
!3310 = distinct !DISubprogram(name: "try_dir", scope: !148, file: !148, line: 277, type: !3175, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3311)
!3311 = !{!3312, !3313}
!3312 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3310, file: !148, line: 277, type: !6)
!3313 = !DILocalVariable(name: "flags", arg: 2, scope: !3310, file: !148, line: 277, type: !8)
!3314 = !DILocation(line: 277, column: 16, scope: !3310)
!3315 = !DILocation(line: 277, column: 28, scope: !3310)
!3316 = !DILocation(line: 279, column: 10, scope: !3310)
!3317 = !DILocation(line: 279, column: 3, scope: !3310)
!3318 = distinct !DISubprogram(name: "try_nocreate", scope: !148, file: !148, line: 283, type: !3175, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3319)
!3319 = !{!3320, !3321, !3322}
!3320 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3318, file: !148, line: 283, type: !6)
!3321 = !DILocalVariable(name: "flags", arg: 2, scope: !3318, file: !148, line: 283, type: !8)
!3322 = !DILocalVariable(name: "st", scope: !3318, file: !148, line: 285, type: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3324, line: 46, size: 1152, elements: !3325)
!3324 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3325 = !{!3326, !3328, !3330, !3332, !3334, !3336, !3338, !3339, !3340, !3341, !3343, !3345, !3353, !3354, !3355}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3323, file: !3324, line: 48, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !658, line: 143, baseType: !102)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3323, file: !3324, line: 53, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !658, line: 146, baseType: !102)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3323, file: !3324, line: 61, baseType: !3331, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !658, line: 149, baseType: !102)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3323, file: !3324, line: 62, baseType: !3333, size: 32, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !658, line: 148, baseType: !65)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3323, file: !3324, line: 64, baseType: !3335, size: 32, offset: 224)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !658, line: 144, baseType: !65)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3323, file: !3324, line: 65, baseType: !3337, size: 32, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !658, line: 145, baseType: !65)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3323, file: !3324, line: 67, baseType: !24, size: 32, offset: 288)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3323, file: !3324, line: 69, baseType: !3327, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3323, file: !3324, line: 74, baseType: !1129, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3323, file: !3324, line: 78, baseType: !3342, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !658, line: 172, baseType: !1130)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3323, file: !3324, line: 80, baseType: !3344, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !658, line: 177, baseType: !1130)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3323, file: !3324, line: 91, baseType: !3346, size: 128, offset: 576)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3347, line: 9, size: 128, elements: !3348)
!3347 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3348 = !{!3349, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3346, file: !3347, line: 11, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !658, line: 158, baseType: !1130)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3346, file: !3347, line: 12, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !658, line: 194, baseType: !1130)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3323, file: !3324, line: 92, baseType: !3346, size: 128, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3323, file: !3324, line: 93, baseType: !3346, size: 128, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3323, file: !3324, line: 106, baseType: !3356, size: 192, offset: 960)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3352, size: 192, elements: !3357)
!3357 = !{!3358}
!3358 = !DISubrange(count: 3)
!3359 = !DILocation(line: 283, column: 21, scope: !3318)
!3360 = !DILocation(line: 283, column: 33, scope: !3318)
!3361 = !DILocation(line: 285, column: 3, scope: !3318)
!3362 = !DILocation(line: 285, column: 17, scope: !3318)
!3363 = !DILocalVariable(name: "__path", arg: 1, scope: !3364, file: !3365, line: 460, type: !15)
!3364 = distinct !DISubprogram(name: "lstat", scope: !3365, file: !3365, line: 460, type: !3366, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3369)
!3365 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!24, !15, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3369 = !{!3363, !3370}
!3370 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3364, file: !3365, line: 460, type: !3368)
!3371 = !DILocation(line: 460, column: 1, scope: !3364, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 287, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3318, file: !148, line: 287, column: 7)
!3374 = !DILocation(line: 462, column: 10, scope: !3364, inlinedAt: !3372)
!3375 = !DILocation(line: 287, column: 41, scope: !3373)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 287, column: 46, scope: !3373)
!3378 = !DILocation(line: 287, column: 49, scope: !3373)
!3379 = !DILocation(line: 287, column: 55, scope: !3373)
!3380 = !DILocation(line: 287, column: 7, scope: !3318)
!3381 = !DILocation(line: 288, column: 5, scope: !3373)
!3382 = !DILocation(line: 289, column: 10, scope: !3318)
!3383 = !DILocation(line: 289, column: 16, scope: !3318)
!3384 = !DILocation(line: 290, column: 1, scope: !3318)
!3385 = !DILocation(line: 289, column: 3, scope: !3318)
!3386 = distinct !DISubprogram(name: "gen_tempname", scope: !148, file: !148, line: 334, type: !3387, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!24, !6, !24, !24, !24}
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3386, file: !148, line: 334, type: !6)
!3391 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3386, file: !148, line: 334, type: !24)
!3392 = !DILocalVariable(name: "flags", arg: 3, scope: !3386, file: !148, line: 334, type: !24)
!3393 = !DILocalVariable(name: "kind", arg: 4, scope: !3386, file: !148, line: 334, type: !24)
!3394 = !DILocation(line: 334, column: 23, scope: !3386)
!3395 = !DILocation(line: 334, column: 33, scope: !3386)
!3396 = !DILocation(line: 334, column: 48, scope: !3386)
!3397 = !DILocation(line: 334, column: 59, scope: !3386)
!3398 = !DILocation(line: 307, column: 25, scope: !3272, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 336, column: 10, scope: !3386)
!3400 = !DILocation(line: 307, column: 35, scope: !3272, inlinedAt: !3399)
!3401 = !DILocation(line: 307, column: 50, scope: !3272, inlinedAt: !3399)
!3402 = !DILocation(line: 307, column: 61, scope: !3272, inlinedAt: !3399)
!3403 = !DILocation(line: 308, column: 26, scope: !3272, inlinedAt: !3399)
!3404 = !DILocation(line: 312, column: 3, scope: !3272, inlinedAt: !3399)
!3405 = !DILocation(line: 327, column: 7, scope: !3289, inlinedAt: !3399)
!3406 = !DILocation(line: 310, column: 9, scope: !3272, inlinedAt: !3399)
!3407 = !DILocation(line: 330, column: 10, scope: !3272, inlinedAt: !3399)
!3408 = !DILocation(line: 330, column: 3, scope: !3272, inlinedAt: !3399)
!3409 = !DILocation(line: 336, column: 3, scope: !3386)
!3410 = distinct !DISubprogram(name: "try_tempname", scope: !148, file: !148, line: 340, type: !3411, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!24, !6, !24, !8, !3174}
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3410, file: !148, line: 340, type: !6)
!3415 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3410, file: !148, line: 340, type: !24)
!3416 = !DILocalVariable(name: "args", arg: 3, scope: !3410, file: !148, line: 340, type: !8)
!3417 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3410, file: !148, line: 341, type: !3174)
!3418 = !DILocation(line: 340, column: 23, scope: !3410)
!3419 = !DILocation(line: 340, column: 33, scope: !3410)
!3420 = !DILocation(line: 340, column: 50, scope: !3410)
!3421 = !DILocation(line: 341, column: 23, scope: !3410)
!3422 = !DILocation(line: 343, column: 10, scope: !3410)
!3423 = !DILocation(line: 343, column: 3, scope: !3410)
!3424 = distinct !DISubprogram(name: "version_etc_arn", scope: !212, file: !212, line: 62, type: !3425, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3462)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !3427, !15, !15, !15, !3461, !100}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3429, file: !1107, line: 51, baseType: !24, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3429, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3429, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3429, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3429, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3429, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3429, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3429, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3429, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3429, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3429, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3429, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3429, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3429, file: !1107, line: 70, baseType: !3445, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3429, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3429, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3429, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3429, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3429, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3429, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3429, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3429, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3429, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3429, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3429, file: !1107, line: 93, baseType: !3445, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3429, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3429, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3429, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3429, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468}
!3463 = !DILocalVariable(name: "stream", arg: 1, scope: !3424, file: !212, line: 62, type: !3427)
!3464 = !DILocalVariable(name: "command_name", arg: 2, scope: !3424, file: !212, line: 63, type: !15)
!3465 = !DILocalVariable(name: "package", arg: 3, scope: !3424, file: !212, line: 63, type: !15)
!3466 = !DILocalVariable(name: "version", arg: 4, scope: !3424, file: !212, line: 64, type: !15)
!3467 = !DILocalVariable(name: "authors", arg: 5, scope: !3424, file: !212, line: 65, type: !3461)
!3468 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3424, file: !212, line: 65, type: !100)
!3469 = !DILocation(line: 62, column: 24, scope: !3424)
!3470 = !DILocation(line: 63, column: 30, scope: !3424)
!3471 = !DILocation(line: 63, column: 56, scope: !3424)
!3472 = !DILocation(line: 64, column: 30, scope: !3424)
!3473 = !DILocation(line: 65, column: 39, scope: !3424)
!3474 = !DILocation(line: 65, column: 55, scope: !3424)
!3475 = !DILocation(line: 67, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3424, file: !212, line: 67, column: 7)
!3477 = !DILocation(line: 67, column: 7, scope: !3424)
!3478 = !DILocation(line: 68, column: 5, scope: !3476)
!3479 = !DILocation(line: 70, column: 5, scope: !3476)
!3480 = !DILocation(line: 84, column: 3, scope: !3424)
!3481 = !DILocation(line: 86, column: 3, scope: !3424)
!3482 = !DILocation(line: 95, column: 3, scope: !3424)
!3483 = !DILocation(line: 99, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3424, file: !212, line: 96, column: 5)
!3485 = !DILocation(line: 102, column: 7, scope: !3484)
!3486 = !DILocation(line: 103, column: 7, scope: !3484)
!3487 = !DILocation(line: 106, column: 7, scope: !3484)
!3488 = !DILocation(line: 107, column: 7, scope: !3484)
!3489 = !DILocation(line: 110, column: 7, scope: !3484)
!3490 = !DILocation(line: 112, column: 7, scope: !3484)
!3491 = !DILocation(line: 117, column: 7, scope: !3484)
!3492 = !DILocation(line: 119, column: 7, scope: !3484)
!3493 = !DILocation(line: 124, column: 7, scope: !3484)
!3494 = !DILocation(line: 126, column: 7, scope: !3484)
!3495 = !DILocation(line: 131, column: 7, scope: !3484)
!3496 = !DILocation(line: 134, column: 7, scope: !3484)
!3497 = !DILocation(line: 139, column: 7, scope: !3484)
!3498 = !DILocation(line: 142, column: 7, scope: !3484)
!3499 = !DILocation(line: 147, column: 7, scope: !3484)
!3500 = !DILocation(line: 151, column: 7, scope: !3484)
!3501 = !DILocation(line: 156, column: 7, scope: !3484)
!3502 = !DILocation(line: 160, column: 7, scope: !3484)
!3503 = !DILocation(line: 167, column: 7, scope: !3484)
!3504 = !DILocation(line: 171, column: 7, scope: !3484)
!3505 = !DILocation(line: 173, column: 1, scope: !3424)
!3506 = distinct !DISubprogram(name: "version_etc_ar", scope: !212, file: !212, line: 180, type: !3507, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3427, !15, !15, !15, !3461}
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515}
!3510 = !DILocalVariable(name: "stream", arg: 1, scope: !3506, file: !212, line: 180, type: !3427)
!3511 = !DILocalVariable(name: "command_name", arg: 2, scope: !3506, file: !212, line: 181, type: !15)
!3512 = !DILocalVariable(name: "package", arg: 3, scope: !3506, file: !212, line: 181, type: !15)
!3513 = !DILocalVariable(name: "version", arg: 4, scope: !3506, file: !212, line: 182, type: !15)
!3514 = !DILocalVariable(name: "authors", arg: 5, scope: !3506, file: !212, line: 182, type: !3461)
!3515 = !DILocalVariable(name: "n_authors", scope: !3506, file: !212, line: 184, type: !100)
!3516 = !DILocation(line: 180, column: 23, scope: !3506)
!3517 = !DILocation(line: 181, column: 29, scope: !3506)
!3518 = !DILocation(line: 181, column: 55, scope: !3506)
!3519 = !DILocation(line: 182, column: 29, scope: !3506)
!3520 = !DILocation(line: 182, column: 59, scope: !3506)
!3521 = !DILocation(line: 184, column: 10, scope: !3506)
!3522 = !DILocation(line: 186, column: 8, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3506, file: !212, line: 186, column: 3)
!3524 = !DILocation(line: 0, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !212, line: 186, column: 3)
!3526 = !DILocation(line: 186, column: 23, scope: !3525)
!3527 = !DILocation(line: 186, column: 3, scope: !3523)
!3528 = !DILocation(line: 186, column: 52, scope: !3525)
!3529 = distinct !{!3529, !3527, !3530}
!3530 = !DILocation(line: 187, column: 5, scope: !3523)
!3531 = !DILocation(line: 188, column: 3, scope: !3506)
!3532 = !DILocation(line: 189, column: 1, scope: !3506)
!3533 = distinct !DISubprogram(name: "version_etc_va", scope: !212, file: !212, line: 196, type: !3534, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3543)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3427, !15, !15, !15, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !209, line: 189, size: 192, elements: !3538)
!3538 = !{!3539, !3540, !3541, !3542}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3537, file: !209, line: 189, baseType: !65, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3537, file: !209, line: 189, baseType: !65, size: 32, offset: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3537, file: !209, line: 189, baseType: !8, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3537, file: !209, line: 189, baseType: !8, size: 64, offset: 128)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3544 = !DILocalVariable(name: "stream", arg: 1, scope: !3533, file: !212, line: 196, type: !3427)
!3545 = !DILocalVariable(name: "command_name", arg: 2, scope: !3533, file: !212, line: 197, type: !15)
!3546 = !DILocalVariable(name: "package", arg: 3, scope: !3533, file: !212, line: 197, type: !15)
!3547 = !DILocalVariable(name: "version", arg: 4, scope: !3533, file: !212, line: 198, type: !15)
!3548 = !DILocalVariable(name: "authors", arg: 5, scope: !3533, file: !212, line: 198, type: !3536)
!3549 = !DILocalVariable(name: "n_authors", scope: !3533, file: !212, line: 200, type: !100)
!3550 = !DILocalVariable(name: "authtab", scope: !3533, file: !212, line: 201, type: !3551)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 640, elements: !109)
!3552 = !DILocation(line: 196, column: 23, scope: !3533)
!3553 = !DILocation(line: 197, column: 29, scope: !3533)
!3554 = !DILocation(line: 197, column: 55, scope: !3533)
!3555 = !DILocation(line: 198, column: 29, scope: !3533)
!3556 = !DILocation(line: 198, column: 46, scope: !3533)
!3557 = !DILocation(line: 201, column: 3, scope: !3533)
!3558 = !DILocation(line: 201, column: 15, scope: !3533)
!3559 = !DILocation(line: 200, column: 10, scope: !3533)
!3560 = !DILocation(line: 205, column: 35, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !212, line: 203, column: 3)
!3562 = distinct !DILexicalBlock(scope: !3533, file: !212, line: 203, column: 3)
!3563 = !DILocation(line: 205, column: 14, scope: !3561)
!3564 = !DILocation(line: 205, column: 33, scope: !3561)
!3565 = !DILocation(line: 205, column: 67, scope: !3561)
!3566 = !DILocation(line: 203, column: 3, scope: !3562)
!3567 = !DILocation(line: 0, scope: !3561)
!3568 = !DILocation(line: 208, column: 3, scope: !3533)
!3569 = !DILocation(line: 210, column: 1, scope: !3533)
!3570 = distinct !DISubprogram(name: "version_etc", scope: !212, file: !212, line: 227, type: !3571, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3427, !15, !15, !15, null}
!3573 = !{!3574, !3575, !3576, !3577, !3578}
!3574 = !DILocalVariable(name: "stream", arg: 1, scope: !3570, file: !212, line: 227, type: !3427)
!3575 = !DILocalVariable(name: "command_name", arg: 2, scope: !3570, file: !212, line: 228, type: !15)
!3576 = !DILocalVariable(name: "package", arg: 3, scope: !3570, file: !212, line: 228, type: !15)
!3577 = !DILocalVariable(name: "version", arg: 4, scope: !3570, file: !212, line: 229, type: !15)
!3578 = !DILocalVariable(name: "authors", scope: !3570, file: !212, line: 231, type: !3579)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3580, line: 52, baseType: !3581)
!3580 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !175, line: 48, baseType: !3582)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !209, line: 231, baseType: !3583)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3537, size: 192, elements: !184)
!3584 = !DILocation(line: 227, column: 20, scope: !3570)
!3585 = !DILocation(line: 228, column: 26, scope: !3570)
!3586 = !DILocation(line: 228, column: 52, scope: !3570)
!3587 = !DILocation(line: 229, column: 26, scope: !3570)
!3588 = !DILocation(line: 231, column: 3, scope: !3570)
!3589 = !DILocation(line: 231, column: 11, scope: !3570)
!3590 = !DILocation(line: 233, column: 3, scope: !3570)
!3591 = !DILocation(line: 234, column: 3, scope: !3570)
!3592 = !DILocation(line: 235, column: 3, scope: !3570)
!3593 = !DILocation(line: 236, column: 1, scope: !3570)
!3594 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !212, file: !212, line: 239, type: !1087, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !4)
!3595 = !DILocation(line: 245, column: 3, scope: !3594)
!3596 = !DILocation(line: 251, column: 3, scope: !3594)
!3597 = !DILocation(line: 256, column: 3, scope: !3594)
!3598 = !DILocation(line: 258, column: 1, scope: !3594)
!3599 = distinct !DISubprogram(name: "xnmalloc", scope: !219, file: !219, line: 99, type: !3600, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!8, !100, !100}
!3602 = !{!3603, !3604}
!3603 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !219, line: 99, type: !100)
!3604 = !DILocalVariable(name: "s", arg: 2, scope: !3599, file: !219, line: 99, type: !100)
!3605 = !DILocation(line: 99, column: 18, scope: !3599)
!3606 = !DILocation(line: 99, column: 28, scope: !3599)
!3607 = !DILocation(line: 101, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3599, file: !219, line: 101, column: 7)
!3609 = !DILocation(line: 101, column: 7, scope: !3599)
!3610 = !DILocation(line: 102, column: 5, scope: !3608)
!3611 = !DILocation(line: 103, column: 21, scope: !3599)
!3612 = !DILocalVariable(name: "n", arg: 1, scope: !3613, file: !3614, line: 39, type: !100)
!3613 = distinct !DISubprogram(name: "xmalloc", scope: !3614, file: !3614, line: 39, type: !3615, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3617)
!3614 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!8, !100}
!3617 = !{!3612, !3618}
!3618 = !DILocalVariable(name: "p", scope: !3613, file: !3614, line: 41, type: !8)
!3619 = !DILocation(line: 39, column: 17, scope: !3613, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 103, column: 10, scope: !3599)
!3621 = !DILocation(line: 41, column: 13, scope: !3613, inlinedAt: !3620)
!3622 = !DILocation(line: 41, column: 9, scope: !3613, inlinedAt: !3620)
!3623 = !DILocation(line: 42, column: 8, scope: !3624, inlinedAt: !3620)
!3624 = distinct !DILexicalBlock(scope: !3613, file: !3614, line: 42, column: 7)
!3625 = !DILocation(line: 42, column: 15, scope: !3624, inlinedAt: !3620)
!3626 = !DILocation(line: 42, column: 10, scope: !3624, inlinedAt: !3620)
!3627 = !DILocation(line: 43, column: 5, scope: !3624, inlinedAt: !3620)
!3628 = !DILocation(line: 103, column: 3, scope: !3599)
!3629 = !DILocation(line: 39, column: 17, scope: !3613)
!3630 = !DILocation(line: 41, column: 13, scope: !3613)
!3631 = !DILocation(line: 41, column: 9, scope: !3613)
!3632 = !DILocation(line: 42, column: 8, scope: !3624)
!3633 = !DILocation(line: 42, column: 15, scope: !3624)
!3634 = !DILocation(line: 42, column: 10, scope: !3624)
!3635 = !DILocation(line: 43, column: 5, scope: !3624)
!3636 = !DILocation(line: 44, column: 3, scope: !3613)
!3637 = distinct !DISubprogram(name: "xnrealloc", scope: !219, file: !219, line: 112, type: !3638, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!8, !8, !100, !100}
!3640 = !{!3641, !3642, !3643}
!3641 = !DILocalVariable(name: "p", arg: 1, scope: !3637, file: !219, line: 112, type: !8)
!3642 = !DILocalVariable(name: "n", arg: 2, scope: !3637, file: !219, line: 112, type: !100)
!3643 = !DILocalVariable(name: "s", arg: 3, scope: !3637, file: !219, line: 112, type: !100)
!3644 = !DILocation(line: 112, column: 18, scope: !3637)
!3645 = !DILocation(line: 112, column: 28, scope: !3637)
!3646 = !DILocation(line: 112, column: 38, scope: !3637)
!3647 = !DILocation(line: 114, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3637, file: !219, line: 114, column: 7)
!3649 = !DILocation(line: 114, column: 7, scope: !3637)
!3650 = !DILocation(line: 115, column: 5, scope: !3648)
!3651 = !DILocation(line: 116, column: 25, scope: !3637)
!3652 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !3614, line: 51, type: !8)
!3653 = distinct !DISubprogram(name: "xrealloc", scope: !3614, file: !3614, line: 51, type: !3654, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!8, !8, !100}
!3656 = !{!3652, !3657}
!3657 = !DILocalVariable(name: "n", arg: 2, scope: !3653, file: !3614, line: 51, type: !100)
!3658 = !DILocation(line: 51, column: 17, scope: !3653, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 116, column: 10, scope: !3637)
!3660 = !DILocation(line: 51, column: 27, scope: !3653, inlinedAt: !3659)
!3661 = !DILocation(line: 53, column: 8, scope: !3662, inlinedAt: !3659)
!3662 = distinct !DILexicalBlock(scope: !3653, file: !3614, line: 53, column: 7)
!3663 = !DILocation(line: 53, column: 13, scope: !3662, inlinedAt: !3659)
!3664 = !DILocation(line: 53, column: 10, scope: !3662, inlinedAt: !3659)
!3665 = !DILocation(line: 57, column: 7, scope: !3666, inlinedAt: !3659)
!3666 = distinct !DILexicalBlock(scope: !3662, file: !3614, line: 54, column: 5)
!3667 = !DILocation(line: 58, column: 7, scope: !3666, inlinedAt: !3659)
!3668 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3659)
!3669 = !DILocation(line: 62, column: 8, scope: !3670, inlinedAt: !3659)
!3670 = distinct !DILexicalBlock(scope: !3653, file: !3614, line: 62, column: 7)
!3671 = !DILocation(line: 62, column: 13, scope: !3670, inlinedAt: !3659)
!3672 = !DILocation(line: 62, column: 10, scope: !3670, inlinedAt: !3659)
!3673 = !DILocation(line: 63, column: 5, scope: !3670, inlinedAt: !3659)
!3674 = !DILocation(line: 0, scope: !3653, inlinedAt: !3659)
!3675 = !DILocation(line: 116, column: 3, scope: !3637)
!3676 = !DILocation(line: 51, column: 17, scope: !3653)
!3677 = !DILocation(line: 51, column: 27, scope: !3653)
!3678 = !DILocation(line: 53, column: 8, scope: !3662)
!3679 = !DILocation(line: 53, column: 13, scope: !3662)
!3680 = !DILocation(line: 53, column: 10, scope: !3662)
!3681 = !DILocation(line: 57, column: 7, scope: !3666)
!3682 = !DILocation(line: 58, column: 7, scope: !3666)
!3683 = !DILocation(line: 61, column: 7, scope: !3653)
!3684 = !DILocation(line: 62, column: 8, scope: !3670)
!3685 = !DILocation(line: 62, column: 13, scope: !3670)
!3686 = !DILocation(line: 62, column: 10, scope: !3670)
!3687 = !DILocation(line: 63, column: 5, scope: !3670)
!3688 = !DILocation(line: 0, scope: !3653)
!3689 = !DILocation(line: 65, column: 1, scope: !3653)
!3690 = !DILocation(line: 174, column: 19, scope: !220)
!3691 = !DILocation(line: 174, column: 30, scope: !220)
!3692 = !DILocation(line: 174, column: 41, scope: !220)
!3693 = !DILocation(line: 176, column: 14, scope: !220)
!3694 = !DILocation(line: 176, column: 10, scope: !220)
!3695 = !DILocation(line: 178, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !220, file: !219, line: 178, column: 7)
!3697 = !DILocation(line: 178, column: 7, scope: !220)
!3698 = !DILocation(line: 180, column: 13, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !219, line: 180, column: 11)
!3700 = distinct !DILexicalBlock(scope: !3696, file: !219, line: 179, column: 5)
!3701 = !DILocation(line: 180, column: 11, scope: !3700)
!3702 = !DILocation(line: 188, column: 30, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3699, file: !219, line: 181, column: 9)
!3704 = !DILocation(line: 189, column: 16, scope: !3703)
!3705 = !DILocation(line: 189, column: 13, scope: !3703)
!3706 = !DILocation(line: 190, column: 9, scope: !3703)
!3707 = !DILocation(line: 0, scope: !3703)
!3708 = !DILocation(line: 191, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3700, file: !219, line: 191, column: 11)
!3710 = !DILocation(line: 191, column: 11, scope: !3700)
!3711 = !DILocation(line: 206, column: 7, scope: !220)
!3712 = !DILocation(line: 207, column: 25, scope: !220)
!3713 = !DILocation(line: 51, column: 17, scope: !3653, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 207, column: 10, scope: !220)
!3715 = !DILocation(line: 51, column: 27, scope: !3653, inlinedAt: !3714)
!3716 = !DILocation(line: 53, column: 10, scope: !3662, inlinedAt: !3714)
!3717 = !DILocation(line: 192, column: 9, scope: !3709)
!3718 = !DILocation(line: 200, column: 69, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !219, line: 200, column: 11)
!3720 = distinct !DILexicalBlock(scope: !3696, file: !219, line: 195, column: 5)
!3721 = !DILocation(line: 201, column: 11, scope: !3719)
!3722 = !DILocation(line: 200, column: 11, scope: !3720)
!3723 = !DILocation(line: 202, column: 9, scope: !3719)
!3724 = !DILocation(line: 203, column: 14, scope: !3720)
!3725 = !DILocation(line: 203, column: 18, scope: !3720)
!3726 = !DILocation(line: 203, column: 9, scope: !3720)
!3727 = !DILocation(line: 53, column: 8, scope: !3662, inlinedAt: !3714)
!3728 = !DILocation(line: 57, column: 7, scope: !3666, inlinedAt: !3714)
!3729 = !DILocation(line: 58, column: 7, scope: !3666, inlinedAt: !3714)
!3730 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3714)
!3731 = !DILocation(line: 62, column: 8, scope: !3670, inlinedAt: !3714)
!3732 = !DILocation(line: 62, column: 13, scope: !3670, inlinedAt: !3714)
!3733 = !DILocation(line: 62, column: 10, scope: !3670, inlinedAt: !3714)
!3734 = !DILocation(line: 63, column: 5, scope: !3670, inlinedAt: !3714)
!3735 = !DILocation(line: 0, scope: !3653, inlinedAt: !3714)
!3736 = !DILocation(line: 207, column: 3, scope: !220)
!3737 = distinct !DISubprogram(name: "xcharalloc", scope: !219, file: !219, line: 216, type: !906, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3738)
!3738 = !{!3739}
!3739 = !DILocalVariable(name: "n", arg: 1, scope: !3737, file: !219, line: 216, type: !100)
!3740 = !DILocation(line: 216, column: 20, scope: !3737)
!3741 = !DILocation(line: 39, column: 17, scope: !3613, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 218, column: 10, scope: !3737)
!3743 = !DILocation(line: 41, column: 13, scope: !3613, inlinedAt: !3742)
!3744 = !DILocation(line: 41, column: 9, scope: !3613, inlinedAt: !3742)
!3745 = !DILocation(line: 42, column: 8, scope: !3624, inlinedAt: !3742)
!3746 = !DILocation(line: 42, column: 15, scope: !3624, inlinedAt: !3742)
!3747 = !DILocation(line: 42, column: 10, scope: !3624, inlinedAt: !3742)
!3748 = !DILocation(line: 43, column: 5, scope: !3624, inlinedAt: !3742)
!3749 = !DILocation(line: 218, column: 3, scope: !3737)
!3750 = distinct !DISubprogram(name: "x2realloc", scope: !3614, file: !3614, line: 74, type: !3751, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!8, !8, !223}
!3753 = !{!3754, !3755}
!3754 = !DILocalVariable(name: "p", arg: 1, scope: !3750, file: !3614, line: 74, type: !8)
!3755 = !DILocalVariable(name: "pn", arg: 2, scope: !3750, file: !3614, line: 74, type: !223)
!3756 = !DILocation(line: 74, column: 18, scope: !3750)
!3757 = !DILocation(line: 74, column: 29, scope: !3750)
!3758 = !DILocation(line: 174, column: 19, scope: !220, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 76, column: 10, scope: !3750)
!3760 = !DILocation(line: 174, column: 30, scope: !220, inlinedAt: !3759)
!3761 = !DILocation(line: 174, column: 41, scope: !220, inlinedAt: !3759)
!3762 = !DILocation(line: 176, column: 14, scope: !220, inlinedAt: !3759)
!3763 = !DILocation(line: 176, column: 10, scope: !220, inlinedAt: !3759)
!3764 = !DILocation(line: 178, column: 9, scope: !3696, inlinedAt: !3759)
!3765 = !DILocation(line: 178, column: 7, scope: !220, inlinedAt: !3759)
!3766 = !DILocation(line: 180, column: 13, scope: !3699, inlinedAt: !3759)
!3767 = !DILocation(line: 180, column: 11, scope: !3700, inlinedAt: !3759)
!3768 = !DILocation(line: 191, column: 11, scope: !3709, inlinedAt: !3759)
!3769 = !DILocation(line: 191, column: 11, scope: !3700, inlinedAt: !3759)
!3770 = !DILocation(line: 206, column: 7, scope: !220, inlinedAt: !3759)
!3771 = !DILocation(line: 51, column: 17, scope: !3653, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 207, column: 10, scope: !220, inlinedAt: !3759)
!3773 = !DILocation(line: 51, column: 27, scope: !3653, inlinedAt: !3772)
!3774 = !DILocation(line: 53, column: 10, scope: !3662, inlinedAt: !3772)
!3775 = !DILocation(line: 192, column: 9, scope: !3709, inlinedAt: !3759)
!3776 = !DILocation(line: 201, column: 11, scope: !3719, inlinedAt: !3759)
!3777 = !DILocation(line: 200, column: 11, scope: !3720, inlinedAt: !3759)
!3778 = !DILocation(line: 202, column: 9, scope: !3719, inlinedAt: !3759)
!3779 = !DILocation(line: 203, column: 14, scope: !3720, inlinedAt: !3759)
!3780 = !DILocation(line: 203, column: 18, scope: !3720, inlinedAt: !3759)
!3781 = !DILocation(line: 203, column: 9, scope: !3720, inlinedAt: !3759)
!3782 = !DILocation(line: 53, column: 8, scope: !3662, inlinedAt: !3772)
!3783 = !DILocation(line: 57, column: 7, scope: !3666, inlinedAt: !3772)
!3784 = !DILocation(line: 58, column: 7, scope: !3666, inlinedAt: !3772)
!3785 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3772)
!3786 = !DILocation(line: 62, column: 8, scope: !3670, inlinedAt: !3772)
!3787 = !DILocation(line: 62, column: 13, scope: !3670, inlinedAt: !3772)
!3788 = !DILocation(line: 62, column: 10, scope: !3670, inlinedAt: !3772)
!3789 = !DILocation(line: 63, column: 5, scope: !3670, inlinedAt: !3772)
!3790 = !DILocation(line: 0, scope: !3653, inlinedAt: !3772)
!3791 = !DILocation(line: 76, column: 3, scope: !3750)
!3792 = distinct !DISubprogram(name: "xzalloc", scope: !3614, file: !3614, line: 84, type: !3615, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3793)
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "s", arg: 1, scope: !3792, file: !3614, line: 84, type: !100)
!3795 = !DILocation(line: 84, column: 17, scope: !3792)
!3796 = !DILocation(line: 39, column: 17, scope: !3613, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 86, column: 18, scope: !3792)
!3798 = !DILocation(line: 41, column: 13, scope: !3613, inlinedAt: !3797)
!3799 = !DILocation(line: 41, column: 9, scope: !3613, inlinedAt: !3797)
!3800 = !DILocation(line: 42, column: 8, scope: !3624, inlinedAt: !3797)
!3801 = !DILocation(line: 42, column: 15, scope: !3624, inlinedAt: !3797)
!3802 = !DILocation(line: 42, column: 10, scope: !3624, inlinedAt: !3797)
!3803 = !DILocation(line: 43, column: 5, scope: !3624, inlinedAt: !3797)
!3804 = !DILocation(line: 86, column: 10, scope: !3792)
!3805 = !DILocation(line: 86, column: 3, scope: !3792)
!3806 = distinct !DISubprogram(name: "xcalloc", scope: !3614, file: !3614, line: 93, type: !3600, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3807)
!3807 = !{!3808, !3809, !3810}
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3806, file: !3614, line: 93, type: !100)
!3809 = !DILocalVariable(name: "s", arg: 2, scope: !3806, file: !3614, line: 93, type: !100)
!3810 = !DILocalVariable(name: "p", scope: !3806, file: !3614, line: 95, type: !8)
!3811 = !DILocation(line: 93, column: 17, scope: !3806)
!3812 = !DILocation(line: 93, column: 27, scope: !3806)
!3813 = !DILocation(line: 100, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3806, file: !3614, line: 100, column: 7)
!3815 = !DILocation(line: 101, column: 7, scope: !3814)
!3816 = !DILocation(line: 101, column: 18, scope: !3814)
!3817 = !DILocation(line: 95, column: 9, scope: !3806)
!3818 = !DILocation(line: 101, column: 16, scope: !3814)
!3819 = !DILocation(line: 100, column: 7, scope: !3806)
!3820 = !DILocation(line: 102, column: 5, scope: !3814)
!3821 = !DILocation(line: 103, column: 3, scope: !3806)
!3822 = distinct !DISubprogram(name: "xmemdup", scope: !3614, file: !3614, line: 111, type: !3823, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!8, !1372, !100}
!3825 = !{!3826, !3827}
!3826 = !DILocalVariable(name: "p", arg: 1, scope: !3822, file: !3614, line: 111, type: !1372)
!3827 = !DILocalVariable(name: "s", arg: 2, scope: !3822, file: !3614, line: 111, type: !100)
!3828 = !DILocation(line: 111, column: 22, scope: !3822)
!3829 = !DILocation(line: 111, column: 32, scope: !3822)
!3830 = !DILocation(line: 39, column: 17, scope: !3613, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 113, column: 18, scope: !3822)
!3832 = !DILocation(line: 41, column: 13, scope: !3613, inlinedAt: !3831)
!3833 = !DILocation(line: 41, column: 9, scope: !3613, inlinedAt: !3831)
!3834 = !DILocation(line: 42, column: 8, scope: !3624, inlinedAt: !3831)
!3835 = !DILocation(line: 42, column: 15, scope: !3624, inlinedAt: !3831)
!3836 = !DILocation(line: 42, column: 10, scope: !3624, inlinedAt: !3831)
!3837 = !DILocation(line: 43, column: 5, scope: !3624, inlinedAt: !3831)
!3838 = !DILocation(line: 113, column: 10, scope: !3822)
!3839 = !DILocation(line: 113, column: 3, scope: !3822)
!3840 = distinct !DISubprogram(name: "xstrdup", scope: !3614, file: !3614, line: 119, type: !1243, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3841)
!3841 = !{!3842}
!3842 = !DILocalVariable(name: "string", arg: 1, scope: !3840, file: !3614, line: 119, type: !15)
!3843 = !DILocation(line: 119, column: 22, scope: !3840)
!3844 = !DILocation(line: 121, column: 27, scope: !3840)
!3845 = !DILocation(line: 121, column: 43, scope: !3840)
!3846 = !DILocation(line: 111, column: 22, scope: !3822, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 121, column: 10, scope: !3840)
!3848 = !DILocation(line: 111, column: 32, scope: !3822, inlinedAt: !3847)
!3849 = !DILocation(line: 39, column: 17, scope: !3613, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 113, column: 18, scope: !3822, inlinedAt: !3847)
!3851 = !DILocation(line: 41, column: 13, scope: !3613, inlinedAt: !3850)
!3852 = !DILocation(line: 41, column: 9, scope: !3613, inlinedAt: !3850)
!3853 = !DILocation(line: 42, column: 8, scope: !3624, inlinedAt: !3850)
!3854 = !DILocation(line: 42, column: 15, scope: !3624, inlinedAt: !3850)
!3855 = !DILocation(line: 42, column: 10, scope: !3624, inlinedAt: !3850)
!3856 = !DILocation(line: 43, column: 5, scope: !3624, inlinedAt: !3850)
!3857 = !DILocation(line: 113, column: 10, scope: !3822, inlinedAt: !3847)
!3858 = !DILocation(line: 121, column: 3, scope: !3840)
!3859 = distinct !DISubprogram(name: "xalloc_die", scope: !3860, file: !3860, line: 32, type: !1087, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !232, retainedNodes: !4)
!3860 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3861 = !DILocation(line: 34, column: 10, scope: !3859)
!3862 = !DILocation(line: 34, column: 33, scope: !3859)
!3863 = !DILocation(line: 34, column: 3, scope: !3859)
!3864 = !DILocation(line: 40, column: 3, scope: !3859)
!3865 = distinct !DISubprogram(name: "rpl_calloc", scope: !3866, file: !3866, line: 42, type: !3600, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3867)
!3866 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3867 = !{!3868, !3869, !3870, !3871}
!3868 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !3866, line: 42, type: !100)
!3869 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !3866, line: 42, type: !100)
!3870 = !DILocalVariable(name: "result", scope: !3865, file: !3866, line: 44, type: !8)
!3871 = !DILocalVariable(name: "bytes", scope: !3872, file: !3866, line: 56, type: !100)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3866, line: 53, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 47, column: 7)
!3874 = !DILocation(line: 42, column: 20, scope: !3865)
!3875 = !DILocation(line: 42, column: 30, scope: !3865)
!3876 = !DILocation(line: 47, column: 9, scope: !3873)
!3877 = !DILocation(line: 47, column: 19, scope: !3873)
!3878 = !DILocation(line: 47, column: 14, scope: !3873)
!3879 = !DILocation(line: 56, column: 24, scope: !3872)
!3880 = !DILocation(line: 56, column: 14, scope: !3872)
!3881 = !DILocation(line: 57, column: 17, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !3866, line: 57, column: 11)
!3883 = !DILocation(line: 57, column: 21, scope: !3882)
!3884 = !DILocation(line: 57, column: 11, scope: !3872)
!3885 = !DILocation(line: 59, column: 11, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !3866, line: 58, column: 9)
!3887 = !DILocation(line: 59, column: 17, scope: !3886)
!3888 = !DILocation(line: 65, column: 12, scope: !3865)
!3889 = !DILocation(line: 44, column: 9, scope: !3865)
!3890 = !DILocation(line: 72, column: 3, scope: !3865)
!3891 = !DILocation(line: 0, scope: !3886)
!3892 = !DILocation(line: 73, column: 1, scope: !3865)
!3893 = distinct !DISubprogram(name: "rpl_fclose", scope: !3894, file: !3894, line: 58, type: !3895, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !3931)
!3894 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!24, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3899, file: !1107, line: 51, baseType: !24, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3899, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3899, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3899, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3899, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3899, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3899, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3899, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3899, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3899, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3899, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3899, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3899, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3899, file: !1107, line: 70, baseType: !3915, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3899, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3899, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3899, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3899, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3899, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3899, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3899, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3899, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3899, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3899, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3899, file: !1107, line: 93, baseType: !3915, size: 64, offset: 1344)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3899, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3899, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3899, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3899, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!3931 = !{!3932, !3933, !3934, !3935}
!3932 = !DILocalVariable(name: "fp", arg: 1, scope: !3893, file: !3894, line: 58, type: !3897)
!3933 = !DILocalVariable(name: "saved_errno", scope: !3893, file: !3894, line: 60, type: !24)
!3934 = !DILocalVariable(name: "fd", scope: !3893, file: !3894, line: 61, type: !24)
!3935 = !DILocalVariable(name: "result", scope: !3893, file: !3894, line: 62, type: !24)
!3936 = !DILocation(line: 58, column: 19, scope: !3893)
!3937 = !DILocation(line: 60, column: 7, scope: !3893)
!3938 = !DILocation(line: 62, column: 7, scope: !3893)
!3939 = !DILocation(line: 65, column: 8, scope: !3893)
!3940 = !DILocation(line: 61, column: 7, scope: !3893)
!3941 = !DILocation(line: 66, column: 10, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 66, column: 7)
!3943 = !DILocation(line: 66, column: 7, scope: !3893)
!3944 = !DILocation(line: 67, column: 12, scope: !3942)
!3945 = !DILocation(line: 67, column: 5, scope: !3942)
!3946 = !DILocation(line: 72, column: 9, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 72, column: 7)
!3948 = !DILocation(line: 72, column: 23, scope: !3947)
!3949 = !DILocation(line: 72, column: 33, scope: !3947)
!3950 = !DILocation(line: 72, column: 26, scope: !3947)
!3951 = !DILocation(line: 72, column: 59, scope: !3947)
!3952 = !DILocation(line: 73, column: 7, scope: !3947)
!3953 = !DILocation(line: 73, column: 10, scope: !3947)
!3954 = !DILocation(line: 72, column: 7, scope: !3893)
!3955 = !DILocation(line: 100, column: 12, scope: !3893)
!3956 = !DILocation(line: 105, column: 7, scope: !3893)
!3957 = !DILocation(line: 74, column: 19, scope: !3947)
!3958 = !DILocation(line: 105, column: 19, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 105, column: 7)
!3960 = !DILocation(line: 107, column: 13, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3959, file: !3894, line: 106, column: 5)
!3962 = !DILocation(line: 109, column: 5, scope: !3961)
!3963 = !DILocation(line: 0, scope: !3893)
!3964 = !DILocation(line: 112, column: 1, scope: !3893)
!3965 = distinct !DISubprogram(name: "rpl_fflush", scope: !3966, file: !3966, line: 129, type: !3967, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !4003)
!3966 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!24, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3971, file: !1107, line: 51, baseType: !24, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3971, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3971, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3971, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3971, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3971, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3971, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3971, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3971, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3971, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3971, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3971, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3971, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3971, file: !1107, line: 70, baseType: !3987, size: 64, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3971, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3971, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3971, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3971, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3971, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3971, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3971, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3971, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3971, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3971, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3971, file: !1107, line: 93, baseType: !3987, size: 64, offset: 1344)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3971, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3971, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3971, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3971, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!4003 = !{!4004}
!4004 = !DILocalVariable(name: "stream", arg: 1, scope: !3965, file: !3966, line: 129, type: !3969)
!4005 = !DILocation(line: 129, column: 19, scope: !3965)
!4006 = !DILocation(line: 150, column: 14, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3965, file: !3966, line: 150, column: 7)
!4008 = !DILocation(line: 150, column: 22, scope: !4007)
!4009 = !DILocation(line: 150, column: 27, scope: !4007)
!4010 = !DILocation(line: 150, column: 7, scope: !3965)
!4011 = !DILocation(line: 151, column: 12, scope: !4007)
!4012 = !DILocation(line: 151, column: 5, scope: !4007)
!4013 = !DILocalVariable(name: "fp", arg: 1, scope: !4014, file: !3966, line: 41, type: !3969)
!4014 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3966, file: !3966, line: 41, type: !4015, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3969}
!4017 = !{!4013}
!4018 = !DILocation(line: 41, column: 48, scope: !4014, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 156, column: 3, scope: !3965)
!4020 = !DILocation(line: 43, column: 11, scope: !4021, inlinedAt: !4019)
!4021 = distinct !DILexicalBlock(scope: !4014, file: !3966, line: 43, column: 7)
!4022 = !DILocation(line: 43, column: 18, scope: !4021, inlinedAt: !4019)
!4023 = !DILocation(line: 43, column: 7, scope: !4014, inlinedAt: !4019)
!4024 = !DILocation(line: 45, column: 5, scope: !4021, inlinedAt: !4019)
!4025 = !DILocation(line: 158, column: 10, scope: !3965)
!4026 = !DILocation(line: 158, column: 3, scope: !3965)
!4027 = !DILocation(line: 0, scope: !3965)
!4028 = !DILocation(line: 232, column: 1, scope: !3965)
!4029 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4030, file: !4030, line: 28, type: !4031, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !4068)
!4030 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!24, !4033, !4067, !24}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4035, file: !1107, line: 51, baseType: !24, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4035, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4035, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4035, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4035, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4035, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4035, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4035, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4035, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4035, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4035, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4035, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4035, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4035, file: !1107, line: 70, baseType: !4051, size: 64, offset: 832)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4035, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4035, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4035, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4035, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4035, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4035, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4035, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4035, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4035, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4035, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4035, file: !1107, line: 93, baseType: !4051, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4035, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4035, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4035, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4035, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3580, line: 63, baseType: !1129)
!4068 = !{!4069, !4070, !4071, !4072}
!4069 = !DILocalVariable(name: "fp", arg: 1, scope: !4029, file: !4030, line: 28, type: !4033)
!4070 = !DILocalVariable(name: "offset", arg: 2, scope: !4029, file: !4030, line: 28, type: !4067)
!4071 = !DILocalVariable(name: "whence", arg: 3, scope: !4029, file: !4030, line: 28, type: !24)
!4072 = !DILocalVariable(name: "pos", scope: !4073, file: !4030, line: 117, type: !4067)
!4073 = distinct !DILexicalBlock(scope: !4074, file: !4030, line: 113, column: 5)
!4074 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 52, column: 7)
!4075 = !DILocation(line: 28, column: 15, scope: !4029)
!4076 = !DILocation(line: 28, column: 25, scope: !4029)
!4077 = !DILocation(line: 28, column: 37, scope: !4029)
!4078 = !DILocation(line: 52, column: 11, scope: !4074)
!4079 = !{!1171, !744, i64 16}
!4080 = !DILocation(line: 52, column: 31, scope: !4074)
!4081 = !{!1171, !744, i64 8}
!4082 = !DILocation(line: 52, column: 24, scope: !4074)
!4083 = !DILocation(line: 53, column: 7, scope: !4074)
!4084 = !DILocation(line: 53, column: 14, scope: !4074)
!4085 = !{!1171, !744, i64 40}
!4086 = !DILocation(line: 53, column: 35, scope: !4074)
!4087 = !{!1171, !744, i64 32}
!4088 = !DILocation(line: 53, column: 28, scope: !4074)
!4089 = !DILocation(line: 54, column: 7, scope: !4074)
!4090 = !DILocation(line: 54, column: 14, scope: !4074)
!4091 = !{!1171, !744, i64 72}
!4092 = !DILocation(line: 54, column: 28, scope: !4074)
!4093 = !DILocation(line: 52, column: 7, scope: !4029)
!4094 = !DILocation(line: 117, column: 26, scope: !4073)
!4095 = !DILocation(line: 117, column: 19, scope: !4073)
!4096 = !DILocation(line: 117, column: 13, scope: !4073)
!4097 = !DILocation(line: 118, column: 15, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4073, file: !4030, line: 118, column: 11)
!4099 = !DILocation(line: 118, column: 11, scope: !4073)
!4100 = !DILocation(line: 129, column: 11, scope: !4073)
!4101 = !DILocation(line: 129, column: 18, scope: !4073)
!4102 = !DILocation(line: 130, column: 11, scope: !4073)
!4103 = !DILocation(line: 130, column: 19, scope: !4073)
!4104 = !{!1171, !1172, i64 144}
!4105 = !DILocation(line: 161, column: 7, scope: !4073)
!4106 = !DILocation(line: 163, column: 10, scope: !4029)
!4107 = !DILocation(line: 163, column: 3, scope: !4029)
!4108 = !DILocation(line: 0, scope: !4029)
!4109 = !DILocation(line: 164, column: 1, scope: !4029)
!4110 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4111, file: !4111, line: 385, type: !4112, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !4126)
!4111 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!100, !4114, !15, !100, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1624, line: 6, baseType: !4117)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1626, line: 21, baseType: !4118)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1626, line: 13, size: 64, elements: !4119)
!4119 = !{!4120, !4121}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4118, file: !1626, line: 15, baseType: !24, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4118, file: !1626, line: 20, baseType: !4122, size: 32, offset: 32)
!4122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4118, file: !1626, line: 16, size: 32, elements: !4123)
!4123 = !{!4124, !4125}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4122, file: !1626, line: 18, baseType: !65, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4122, file: !1626, line: 19, baseType: !1635, size: 32)
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132, !4133}
!4127 = !DILocalVariable(name: "pwc", arg: 1, scope: !4110, file: !4111, line: 385, type: !4114)
!4128 = !DILocalVariable(name: "s", arg: 2, scope: !4110, file: !4111, line: 385, type: !15)
!4129 = !DILocalVariable(name: "n", arg: 3, scope: !4110, file: !4111, line: 385, type: !100)
!4130 = !DILocalVariable(name: "ps", arg: 4, scope: !4110, file: !4111, line: 385, type: !4115)
!4131 = !DILocalVariable(name: "ret", scope: !4110, file: !4111, line: 387, type: !100)
!4132 = !DILocalVariable(name: "wc", scope: !4110, file: !4111, line: 388, type: !1640)
!4133 = !DILocalVariable(name: "uc", scope: !4134, file: !4111, line: 449, type: !1484)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !4111, line: 448, column: 5)
!4135 = distinct !DILexicalBlock(scope: !4110, file: !4111, line: 447, column: 7)
!4136 = !DILocation(line: 385, column: 23, scope: !4110)
!4137 = !DILocation(line: 385, column: 40, scope: !4110)
!4138 = !DILocation(line: 385, column: 50, scope: !4110)
!4139 = !DILocation(line: 385, column: 64, scope: !4110)
!4140 = !DILocation(line: 388, column: 3, scope: !4110)
!4141 = !DILocation(line: 404, column: 9, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4110, file: !4111, line: 404, column: 7)
!4143 = !DILocation(line: 404, column: 7, scope: !4110)
!4144 = !DILocation(line: 439, column: 9, scope: !4110)
!4145 = !DILocation(line: 387, column: 10, scope: !4110)
!4146 = !DILocation(line: 447, column: 19, scope: !4135)
!4147 = !DILocation(line: 447, column: 31, scope: !4135)
!4148 = !DILocation(line: 447, column: 26, scope: !4135)
!4149 = !DILocation(line: 447, column: 41, scope: !4135)
!4150 = !DILocation(line: 447, column: 7, scope: !4110)
!4151 = !DILocation(line: 449, column: 26, scope: !4134)
!4152 = !DILocation(line: 449, column: 21, scope: !4134)
!4153 = !DILocation(line: 450, column: 14, scope: !4134)
!4154 = !DILocation(line: 450, column: 12, scope: !4134)
!4155 = !DILocation(line: 0, scope: !4134)
!4156 = !DILocation(line: 456, column: 1, scope: !4110)
!4157 = distinct !DISubprogram(name: "hard_locale", scope: !4158, file: !4158, line: 38, type: !4159, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4161)
!4158 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!12, !24}
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "category", arg: 1, scope: !4157, file: !4158, line: 38, type: !24)
!4163 = !DILocalVariable(name: "hard", scope: !4157, file: !4158, line: 40, type: !12)
!4164 = !DILocalVariable(name: "p", scope: !4157, file: !4158, line: 41, type: !15)
!4165 = !DILocation(line: 38, column: 18, scope: !4157)
!4166 = !DILocation(line: 40, column: 8, scope: !4157)
!4167 = !DILocation(line: 41, column: 19, scope: !4157)
!4168 = !DILocation(line: 41, column: 15, scope: !4157)
!4169 = !DILocation(line: 43, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4157, file: !4158, line: 43, column: 7)
!4171 = !DILocation(line: 43, column: 7, scope: !4157)
!4172 = !DILocation(line: 47, column: 15, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !4158, line: 47, column: 15)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !4158, line: 46, column: 9)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !4158, line: 45, column: 11)
!4176 = distinct !DILexicalBlock(scope: !4170, file: !4158, line: 44, column: 5)
!4177 = !DILocation(line: 47, column: 31, scope: !4173)
!4178 = !DILocation(line: 47, column: 36, scope: !4173)
!4179 = !DILocation(line: 47, column: 39, scope: !4173)
!4180 = !DILocation(line: 47, column: 59, scope: !4173)
!4181 = !DILocation(line: 47, column: 15, scope: !4174)
!4182 = !DILocation(line: 48, column: 13, scope: !4173)
!4183 = !DILocation(line: 71, column: 3, scope: !4157)
!4184 = distinct !DISubprogram(name: "locale_charset", scope: !4185, file: !4185, line: 687, type: !4186, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !4188)
!4185 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!15}
!4188 = !{!4189}
!4189 = !DILocalVariable(name: "codeset", scope: !4184, file: !4185, line: 689, type: !15)
!4190 = !DILocation(line: 696, column: 13, scope: !4184)
!4191 = !DILocation(line: 689, column: 15, scope: !4184)
!4192 = !DILocation(line: 754, column: 15, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4184, file: !4185, line: 754, column: 7)
!4194 = !DILocation(line: 754, column: 7, scope: !4184)
!4195 = !DILocation(line: 907, column: 13, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !4185, line: 907, column: 13)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !4185, line: 897, column: 7)
!4198 = distinct !DILexicalBlock(scope: !4184, file: !4185, line: 856, column: 3)
!4199 = !DILocation(line: 907, column: 24, scope: !4196)
!4200 = !DILocation(line: 907, column: 13, scope: !4197)
!4201 = !DILocation(line: 995, column: 3, scope: !4184)
!4202 = distinct !DISubprogram(name: "randint_new", scope: !4203, file: !4203, line: 71, type: !4204, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4218)
!4203 = !DIFile(filename: "lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!4206, !4210}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !4203, line: 54, size: 192, elements: !4208)
!4208 = !{!4209, !4213, !4217}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4207, file: !4203, line: 57, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4212, line: 25, flags: DIFlagFwdDecl)
!4212 = !DIFile(filename: "./lib/randread.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "randnum", scope: !4207, file: !4203, line: 64, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !3191, line: 30, baseType: !4215)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !656, line: 102, baseType: !4216)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !658, line: 72, baseType: !102)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "randmax", scope: !4207, file: !4203, line: 65, baseType: !4214, size: 64, offset: 128)
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "source", arg: 1, scope: !4202, file: !4203, line: 71, type: !4210)
!4220 = !DILocalVariable(name: "s", scope: !4202, file: !4203, line: 73, type: !4206)
!4221 = !DILocation(line: 71, column: 38, scope: !4202)
!4222 = !DILocation(line: 73, column: 30, scope: !4202)
!4223 = !DILocation(line: 73, column: 26, scope: !4202)
!4224 = !DILocation(line: 74, column: 6, scope: !4202)
!4225 = !DILocation(line: 74, column: 13, scope: !4202)
!4226 = !{!4227, !744, i64 0}
!4227 = !{!"randint_source", !744, i64 0, !1172, i64 8, !1172, i64 16}
!4228 = !DILocation(line: 75, column: 6, scope: !4202)
!4229 = !DILocation(line: 75, column: 14, scope: !4202)
!4230 = !DILocation(line: 76, column: 3, scope: !4202)
!4231 = distinct !DISubprogram(name: "randint_all_new", scope: !4203, file: !4203, line: 84, type: !4232, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4206, !15, !100}
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "name", arg: 1, scope: !4231, file: !4203, line: 84, type: !15)
!4236 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4231, file: !4203, line: 84, type: !100)
!4237 = !DILocalVariable(name: "source", scope: !4231, file: !4203, line: 86, type: !4210)
!4238 = !DILocation(line: 84, column: 30, scope: !4231)
!4239 = !DILocation(line: 84, column: 43, scope: !4231)
!4240 = !DILocation(line: 86, column: 36, scope: !4231)
!4241 = !DILocation(line: 86, column: 27, scope: !4231)
!4242 = !DILocation(line: 87, column: 11, scope: !4231)
!4243 = !DILocation(line: 71, column: 38, scope: !4202, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 87, column: 20, scope: !4231)
!4245 = !DILocation(line: 73, column: 30, scope: !4202, inlinedAt: !4244)
!4246 = !DILocation(line: 73, column: 26, scope: !4202, inlinedAt: !4244)
!4247 = !DILocation(line: 74, column: 6, scope: !4202, inlinedAt: !4244)
!4248 = !DILocation(line: 74, column: 13, scope: !4202, inlinedAt: !4244)
!4249 = !DILocation(line: 75, column: 6, scope: !4202, inlinedAt: !4244)
!4250 = !DILocation(line: 75, column: 14, scope: !4202, inlinedAt: !4244)
!4251 = !DILocation(line: 87, column: 3, scope: !4231)
!4252 = distinct !DISubprogram(name: "randint_get_source", scope: !4203, file: !4203, line: 93, type: !4253, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4257)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!4210, !4255}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4207)
!4257 = !{!4258}
!4258 = !DILocalVariable(name: "s", arg: 1, scope: !4252, file: !4203, line: 93, type: !4255)
!4259 = !DILocation(line: 93, column: 50, scope: !4252)
!4260 = !DILocation(line: 95, column: 13, scope: !4252)
!4261 = !DILocation(line: 95, column: 3, scope: !4252)
!4262 = distinct !DISubprogram(name: "randint_genmax", scope: !4203, file: !4203, line: 114, type: !4263, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!4214, !4206, !4214}
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4272, !4276, !4277, !4279, !4282, !4283, !4284}
!4266 = !DILocalVariable(name: "s", arg: 1, scope: !4262, file: !4203, line: 114, type: !4206)
!4267 = !DILocalVariable(name: "genmax", arg: 2, scope: !4262, file: !4203, line: 114, type: !4214)
!4268 = !DILocalVariable(name: "source", scope: !4262, file: !4203, line: 116, type: !4210)
!4269 = !DILocalVariable(name: "randnum", scope: !4262, file: !4203, line: 117, type: !4214)
!4270 = !DILocalVariable(name: "randmax", scope: !4262, file: !4203, line: 118, type: !4214)
!4271 = !DILocalVariable(name: "choices", scope: !4262, file: !4203, line: 119, type: !4214)
!4272 = !DILocalVariable(name: "i", scope: !4273, file: !4203, line: 128, type: !100)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !4203, line: 124, column: 9)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !4203, line: 123, column: 11)
!4275 = distinct !DILexicalBlock(scope: !4262, file: !4203, line: 122, column: 5)
!4276 = !DILocalVariable(name: "rmax", scope: !4273, file: !4203, line: 129, type: !4214)
!4277 = !DILocalVariable(name: "buf", scope: !4273, file: !4203, line: 130, type: !4278)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 64, elements: !28)
!4279 = !DILocalVariable(name: "excess_choices", scope: !4280, file: !4203, line: 176, type: !4214)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !4203, line: 165, column: 9)
!4281 = distinct !DILexicalBlock(scope: !4275, file: !4203, line: 159, column: 11)
!4282 = !DILocalVariable(name: "unusable_choices", scope: !4280, file: !4203, line: 177, type: !4214)
!4283 = !DILocalVariable(name: "last_usable_choice", scope: !4280, file: !4203, line: 178, type: !4214)
!4284 = !DILocalVariable(name: "reduced_randnum", scope: !4280, file: !4203, line: 179, type: !4214)
!4285 = !DILocation(line: 114, column: 40, scope: !4262)
!4286 = !DILocation(line: 114, column: 51, scope: !4262)
!4287 = !DILocation(line: 116, column: 39, scope: !4262)
!4288 = !DILocation(line: 116, column: 27, scope: !4262)
!4289 = !DILocation(line: 117, column: 24, scope: !4262)
!4290 = !{!4227, !1172, i64 8}
!4291 = !DILocation(line: 117, column: 11, scope: !4262)
!4292 = !DILocation(line: 118, column: 24, scope: !4262)
!4293 = !{!4227, !1172, i64 16}
!4294 = !DILocation(line: 118, column: 11, scope: !4262)
!4295 = !DILocation(line: 119, column: 28, scope: !4262)
!4296 = !DILocation(line: 119, column: 11, scope: !4262)
!4297 = !DILocation(line: 121, column: 3, scope: !4262)
!4298 = !DILocation(line: 0, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4273, file: !4203, line: 151, column: 13)
!4300 = !DILocation(line: 123, column: 19, scope: !4274)
!4301 = !DILocation(line: 123, column: 11, scope: !4275)
!4302 = !DILocation(line: 128, column: 18, scope: !4273)
!4303 = !DILocation(line: 129, column: 19, scope: !4273)
!4304 = !DILocation(line: 130, column: 11, scope: !4273)
!4305 = !DILocation(line: 130, column: 25, scope: !4273)
!4306 = !DILocation(line: 132, column: 11, scope: !4273)
!4307 = !DILocation(line: 0, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4273, file: !4203, line: 133, column: 13)
!4309 = !DILocalVariable(name: "x", arg: 1, scope: !4310, file: !4203, line: 104, type: !4214)
!4310 = distinct !DISubprogram(name: "shift_left", scope: !4203, file: !4203, line: 104, type: !4311, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!4214, !4214}
!4313 = !{!4309}
!4314 = !DILocation(line: 104, column: 43, scope: !4310, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 134, column: 22, scope: !4308)
!4316 = !DILocation(line: 106, column: 29, scope: !4310, inlinedAt: !4315)
!4317 = !DILocation(line: 134, column: 40, scope: !4308)
!4318 = !DILocation(line: 135, column: 16, scope: !4308)
!4319 = !DILocation(line: 137, column: 23, scope: !4273)
!4320 = !DILocation(line: 136, column: 13, scope: !4308)
!4321 = distinct !{!4321, !4306, !4322}
!4322 = !DILocation(line: 137, column: 31, scope: !4273)
!4323 = !DILocation(line: 139, column: 11, scope: !4273)
!4324 = !DILocation(line: 150, column: 11, scope: !4273)
!4325 = !DILocation(line: 104, column: 43, scope: !4310, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 152, column: 25, scope: !4299)
!4327 = !DILocation(line: 106, column: 29, scope: !4310, inlinedAt: !4326)
!4328 = !DILocation(line: 152, column: 48, scope: !4299)
!4329 = !DILocation(line: 152, column: 46, scope: !4299)
!4330 = !DILocation(line: 104, column: 43, scope: !4310, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 153, column: 25, scope: !4299)
!4332 = !DILocation(line: 106, column: 29, scope: !4310, inlinedAt: !4331)
!4333 = !DILocation(line: 153, column: 46, scope: !4299)
!4334 = !DILocation(line: 154, column: 16, scope: !4299)
!4335 = !DILocation(line: 156, column: 26, scope: !4273)
!4336 = !DILocation(line: 155, column: 13, scope: !4299)
!4337 = distinct !{!4337, !4324, !4338}
!4338 = !DILocation(line: 156, column: 34, scope: !4273)
!4339 = !DILocation(line: 157, column: 9, scope: !4274)
!4340 = !DILocation(line: 157, column: 9, scope: !4273)
!4341 = !DILocation(line: 0, scope: !4262)
!4342 = !DILocation(line: 159, column: 19, scope: !4281)
!4343 = !DILocation(line: 159, column: 11, scope: !4275)
!4344 = !DILocation(line: 162, column: 11, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4281, file: !4203, line: 160, column: 9)
!4346 = !DILocation(line: 161, column: 22, scope: !4345)
!4347 = !DILocation(line: 176, column: 44, scope: !4280)
!4348 = !DILocation(line: 176, column: 19, scope: !4280)
!4349 = !DILocation(line: 177, column: 53, scope: !4280)
!4350 = !DILocation(line: 184, column: 43, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !4203, line: 182, column: 13)
!4352 = distinct !DILexicalBlock(scope: !4280, file: !4203, line: 181, column: 15)
!4353 = !DILocation(line: 177, column: 19, scope: !4280)
!4354 = !DILocation(line: 178, column: 48, scope: !4280)
!4355 = !DILocation(line: 178, column: 19, scope: !4280)
!4356 = !DILocation(line: 179, column: 45, scope: !4280)
!4357 = !DILocation(line: 183, column: 36, scope: !4351)
!4358 = !DILocation(line: 179, column: 19, scope: !4280)
!4359 = !DILocation(line: 181, column: 23, scope: !4352)
!4360 = !DILocation(line: 191, column: 38, scope: !4280)
!4361 = !DILocation(line: 181, column: 15, scope: !4280)
!4362 = !DILocation(line: 183, column: 26, scope: !4351)
!4363 = !DILocation(line: 184, column: 26, scope: !4351)
!4364 = !DILocation(line: 0, scope: !4351)
!4365 = !DILocation(line: 194, column: 1, scope: !4262)
!4366 = distinct !DISubprogram(name: "randint_free", scope: !4203, file: !4203, line: 199, type: !4367, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4369)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !4206}
!4369 = !{!4370}
!4370 = !DILocalVariable(name: "s", arg: 1, scope: !4366, file: !4203, line: 199, type: !4206)
!4371 = !DILocation(line: 199, column: 38, scope: !4366)
!4372 = !DILocation(line: 201, column: 19, scope: !4366)
!4373 = !DILocalVariable(name: "__dest", arg: 1, scope: !4374, file: !1367, line: 81, type: !8)
!4374 = distinct !DISubprogram(name: "explicit_bzero", scope: !1367, file: !1367, line: 81, type: !4375, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !8, !100}
!4377 = !{!4373, !4378}
!4378 = !DILocalVariable(name: "__len", arg: 2, scope: !4374, file: !1367, line: 81, type: !100)
!4379 = !DILocation(line: 81, column: 1, scope: !4374, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 201, column: 3, scope: !4366)
!4381 = !DILocation(line: 83, column: 40, scope: !4374, inlinedAt: !4380)
!4382 = !DILocation(line: 83, column: 3, scope: !4374, inlinedAt: !4380)
!4383 = !DILocation(line: 202, column: 3, scope: !4366)
!4384 = !DILocation(line: 203, column: 1, scope: !4366)
!4385 = distinct !DISubprogram(name: "randint_all_free", scope: !4203, file: !4203, line: 209, type: !4386, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !636, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!24, !4206}
!4388 = !{!4389, !4390, !4391}
!4389 = !DILocalVariable(name: "s", arg: 1, scope: !4385, file: !4203, line: 209, type: !4206)
!4390 = !DILocalVariable(name: "r", scope: !4385, file: !4203, line: 211, type: !24)
!4391 = !DILocalVariable(name: "e", scope: !4385, file: !4203, line: 212, type: !24)
!4392 = !DILocation(line: 209, column: 42, scope: !4385)
!4393 = !DILocation(line: 211, column: 29, scope: !4385)
!4394 = !DILocation(line: 211, column: 11, scope: !4385)
!4395 = !DILocation(line: 211, column: 7, scope: !4385)
!4396 = !DILocation(line: 212, column: 11, scope: !4385)
!4397 = !DILocation(line: 212, column: 7, scope: !4385)
!4398 = !DILocation(line: 199, column: 38, scope: !4366, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 213, column: 3, scope: !4385)
!4400 = !DILocation(line: 201, column: 19, scope: !4366, inlinedAt: !4399)
!4401 = !DILocation(line: 81, column: 1, scope: !4374, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 201, column: 3, scope: !4366, inlinedAt: !4399)
!4403 = !DILocation(line: 83, column: 40, scope: !4374, inlinedAt: !4402)
!4404 = !DILocation(line: 83, column: 3, scope: !4374, inlinedAt: !4402)
!4405 = !DILocation(line: 202, column: 3, scope: !4366, inlinedAt: !4399)
!4406 = !DILocation(line: 214, column: 9, scope: !4385)
!4407 = !DILocation(line: 215, column: 3, scope: !4385)
!4408 = distinct !DISubprogram(name: "randread_new", scope: !4409, file: !4409, line: 204, type: !4410, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4481)
!4409 = !DIFile(filename: "lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!4412, !15, !100}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4409, line: 79, size: 33216, elements: !4414)
!4414 = !{!4415, !4450, !4454, !4455}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4413, file: !4409, line: 83, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !4418)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4418, file: !1107, line: 51, baseType: !24, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4418, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4418, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4418, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4418, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4418, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4418, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4418, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4418, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4418, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4418, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4418, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4418, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4418, file: !1107, line: 70, baseType: !4434, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4418, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4418, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4418, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4418, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4418, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4418, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4418, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4418, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4418, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4418, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4418, file: !1107, line: 93, baseType: !4434, size: 64, offset: 1344)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4418, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4418, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4418, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4418, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4413, file: !4409, line: 90, baseType: !4451, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !1372}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !4413, file: !4409, line: 91, baseType: !1372, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4413, file: !4409, line: 117, baseType: !4456, size: 33024, offset: 192)
!4456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !4409, line: 96, size: 33024, elements: !4457)
!4457 = !{!4458, !4462}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4456, file: !4409, line: 99, baseType: !4459, size: 32768)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !4460)
!4460 = !{!4461}
!4461 = !DISubrange(count: 4096)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "isaac", scope: !4456, file: !4409, line: 116, baseType: !4463, size: 33024)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac", file: !4409, line: 102, size: 33024, elements: !4464)
!4464 = !{!4465, !4466, !4473}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !4463, file: !4409, line: 105, baseType: !100, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4463, file: !4409, line: 108, baseType: !4467, size: 16576, offset: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !650, line: 56, size: 16576, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4467, file: !650, line: 58, baseType: !653, size: 16384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4467, file: !650, line: 59, baseType: !654, size: 64, offset: 16384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4467, file: !650, line: 59, baseType: !654, size: 64, offset: 16448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4467, file: !650, line: 59, baseType: !654, size: 64, offset: 16512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4463, file: !4409, line: 115, baseType: !4474, size: 16384, offset: 16640)
!4474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4463, file: !4409, line: 111, size: 16384, elements: !4475)
!4475 = !{!4476, !4477}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !4474, file: !4409, line: 113, baseType: !653, size: 16384)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4474, file: !4409, line: 114, baseType: !4478, size: 16384)
!4478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 16384, elements: !4479)
!4479 = !{!4480}
!4480 = !DISubrange(count: 2048)
!4481 = !{!4482, !4483, !4484, !4487}
!4482 = !DILocalVariable(name: "name", arg: 1, scope: !4408, file: !4409, line: 204, type: !15)
!4483 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4408, file: !4409, line: 204, type: !100)
!4484 = !DILocalVariable(name: "source", scope: !4485, file: !4409, line: 210, type: !4416)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !4409, line: 209, column: 5)
!4486 = distinct !DILexicalBlock(scope: !4408, file: !4409, line: 206, column: 7)
!4487 = !DILocalVariable(name: "s", scope: !4485, file: !4409, line: 211, type: !4412)
!4488 = !DILocation(line: 204, column: 27, scope: !4408)
!4489 = !DILocation(line: 204, column: 40, scope: !4408)
!4490 = !DILocation(line: 206, column: 19, scope: !4486)
!4491 = !DILocation(line: 206, column: 7, scope: !4408)
!4492 = !DILocalVariable(name: "source", arg: 1, scope: !4493, file: !4409, line: 137, type: !4416)
!4493 = distinct !DISubprogram(name: "simple_new", scope: !4409, file: !4409, line: 137, type: !4494, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4412, !4416, !1372}
!4496 = !{!4492, !4497, !4498}
!4497 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4493, file: !4409, line: 137, type: !1372)
!4498 = !DILocalVariable(name: "s", scope: !4493, file: !4409, line: 139, type: !4412)
!4499 = !DILocation(line: 137, column: 19, scope: !4493, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 207, column: 12, scope: !4486)
!4501 = !DILocation(line: 137, column: 39, scope: !4493, inlinedAt: !4500)
!4502 = !DILocation(line: 139, column: 31, scope: !4493, inlinedAt: !4500)
!4503 = !DILocation(line: 139, column: 27, scope: !4493, inlinedAt: !4500)
!4504 = !DILocation(line: 140, column: 6, scope: !4493, inlinedAt: !4500)
!4505 = !DILocation(line: 140, column: 13, scope: !4493, inlinedAt: !4500)
!4506 = !{!4507, !744, i64 0}
!4507 = !{!"randread_source", !744, i64 0, !744, i64 8, !744, i64 16, !745, i64 24}
!4508 = !DILocation(line: 141, column: 6, scope: !4493, inlinedAt: !4500)
!4509 = !DILocation(line: 141, column: 14, scope: !4493, inlinedAt: !4500)
!4510 = !{!4507, !744, i64 8}
!4511 = !DILocation(line: 142, column: 6, scope: !4493, inlinedAt: !4500)
!4512 = !DILocation(line: 142, column: 18, scope: !4493, inlinedAt: !4500)
!4513 = !{!4507, !744, i64 16}
!4514 = !DILocation(line: 207, column: 5, scope: !4486)
!4515 = !DILocation(line: 210, column: 13, scope: !4485)
!4516 = !DILocation(line: 213, column: 11, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4485, file: !4409, line: 213, column: 11)
!4518 = !DILocation(line: 213, column: 11, scope: !4485)
!4519 = !DILocation(line: 214, column: 25, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !4409, line: 214, column: 13)
!4521 = !DILocation(line: 214, column: 23, scope: !4520)
!4522 = !DILocation(line: 214, column: 13, scope: !4517)
!4523 = !DILocation(line: 0, scope: !4485)
!4524 = !DILocation(line: 137, column: 19, scope: !4493, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 217, column: 11, scope: !4485)
!4526 = !DILocation(line: 137, column: 39, scope: !4493, inlinedAt: !4525)
!4527 = !DILocation(line: 139, column: 31, scope: !4493, inlinedAt: !4525)
!4528 = !DILocation(line: 139, column: 27, scope: !4493, inlinedAt: !4525)
!4529 = !DILocation(line: 140, column: 6, scope: !4493, inlinedAt: !4525)
!4530 = !DILocation(line: 140, column: 13, scope: !4493, inlinedAt: !4525)
!4531 = !DILocation(line: 141, column: 6, scope: !4493, inlinedAt: !4525)
!4532 = !DILocation(line: 141, column: 14, scope: !4493, inlinedAt: !4525)
!4533 = !DILocation(line: 142, column: 6, scope: !4493, inlinedAt: !4525)
!4534 = !DILocation(line: 142, column: 18, scope: !4493, inlinedAt: !4525)
!4535 = !DILocation(line: 211, column: 31, scope: !4485)
!4536 = !DILocation(line: 219, column: 11, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4485, file: !4409, line: 219, column: 11)
!4538 = !DILocation(line: 0, scope: !4537)
!4539 = !DILocation(line: 219, column: 11, scope: !4485)
!4540 = !DILocation(line: 220, column: 44, scope: !4537)
!4541 = !DILocation(line: 220, column: 9, scope: !4537)
!4542 = !DILocation(line: 223, column: 24, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4537, file: !4409, line: 222, column: 9)
!4544 = !DILocation(line: 223, column: 33, scope: !4543)
!4545 = !DILocation(line: 224, column: 35, scope: !4543)
!4546 = !DILocalVariable(name: "buffer", arg: 1, scope: !4547, file: !4409, line: 151, type: !8)
!4547 = distinct !DISubprogram(name: "get_nonce", scope: !4409, file: !4409, line: 151, type: !4548, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !8, !100, !100}
!4550 = !{!4546, !4551, !4552, !4553, !4554, !4558, !4559, !4568, !4569, !4574, !4575, !4578, !4579, !4583, !4584, !4587}
!4551 = !DILocalVariable(name: "bufsize", arg: 2, scope: !4547, file: !4409, line: 151, type: !100)
!4552 = !DILocalVariable(name: "bytes_bound", arg: 3, scope: !4547, file: !4409, line: 151, type: !100)
!4553 = !DILocalVariable(name: "buf", scope: !4547, file: !4409, line: 153, type: !6)
!4554 = !DILocalVariable(name: "seeded", scope: !4547, file: !4409, line: 154, type: !4555)
!4555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4556, line: 108, baseType: !4557)
!4556 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !658, line: 191, baseType: !1130)
!4558 = !DILocalVariable(name: "fd", scope: !4547, file: !4409, line: 157, type: !24)
!4559 = !DILocalVariable(name: "v", scope: !4560, file: !4409, line: 177, type: !4562)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !4409, line: 177, column: 3)
!4561 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 177, column: 3)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !4563, line: 8, size: 128, elements: !4564)
!4563 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4562, file: !4563, line: 10, baseType: !3350, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4562, file: !4563, line: 11, baseType: !4567, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !658, line: 160, baseType: !1130)
!4568 = !DILocalVariable(name: "nbytes", scope: !4560, file: !4409, line: 177, type: !100)
!4569 = !DILocalVariable(name: "v", scope: !4570, file: !4409, line: 178, type: !4572)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !4409, line: 178, column: 3)
!4571 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 178, column: 3)
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !4556, line: 97, baseType: !4573)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !658, line: 152, baseType: !24)
!4574 = !DILocalVariable(name: "nbytes", scope: !4570, file: !4409, line: 178, type: !100)
!4575 = !DILocalVariable(name: "v", scope: !4576, file: !4409, line: 179, type: !4572)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !4409, line: 179, column: 3)
!4577 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 179, column: 3)
!4578 = !DILocalVariable(name: "nbytes", scope: !4576, file: !4409, line: 179, type: !100)
!4579 = !DILocalVariable(name: "v", scope: !4580, file: !4409, line: 180, type: !4582)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !4409, line: 180, column: 3)
!4581 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 180, column: 3)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !4556, line: 79, baseType: !3335)
!4583 = !DILocalVariable(name: "nbytes", scope: !4580, file: !4409, line: 180, type: !100)
!4584 = !DILocalVariable(name: "v", scope: !4585, file: !4409, line: 181, type: !4582)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !4409, line: 181, column: 3)
!4586 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 181, column: 3)
!4587 = !DILocalVariable(name: "nbytes", scope: !4585, file: !4409, line: 181, type: !100)
!4588 = !DILocation(line: 151, column: 18, scope: !4547, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 224, column: 11, scope: !4543)
!4590 = !DILocation(line: 151, column: 33, scope: !4547, inlinedAt: !4589)
!4591 = !DILocation(line: 151, column: 49, scope: !4547, inlinedAt: !4589)
!4592 = !DILocation(line: 153, column: 9, scope: !4547, inlinedAt: !4589)
!4593 = !DILocation(line: 154, column: 11, scope: !4547, inlinedAt: !4589)
!4594 = !DILocation(line: 157, column: 12, scope: !4547, inlinedAt: !4589)
!4595 = !DILocation(line: 157, column: 7, scope: !4547, inlinedAt: !4589)
!4596 = !DILocation(line: 158, column: 9, scope: !4597, inlinedAt: !4589)
!4597 = distinct !DILexicalBlock(scope: !4547, file: !4409, line: 158, column: 7)
!4598 = !DILocation(line: 158, column: 7, scope: !4547, inlinedAt: !4589)
!4599 = !DILocation(line: 160, column: 31, scope: !4600, inlinedAt: !4589)
!4600 = distinct !DILexicalBlock(scope: !4597, file: !4409, line: 159, column: 5)
!4601 = !DILocation(line: 160, column: 16, scope: !4600, inlinedAt: !4589)
!4602 = !DILocation(line: 161, column: 11, scope: !4600, inlinedAt: !4589)
!4603 = !DILocation(line: 163, column: 7, scope: !4600, inlinedAt: !4589)
!4604 = !DILocation(line: 177, column: 3, scope: !4561, inlinedAt: !4589)
!4605 = !DILocation(line: 177, column: 3, scope: !4547, inlinedAt: !4589)
!4606 = !DILocation(line: 177, column: 3, scope: !4560, inlinedAt: !4589)
!4607 = !DILocation(line: 178, column: 3, scope: !4571, inlinedAt: !4589)
!4608 = !DILocation(line: 178, column: 3, scope: !4547, inlinedAt: !4589)
!4609 = !DILocation(line: 178, column: 3, scope: !4570, inlinedAt: !4589)
!4610 = !DILocation(line: 179, column: 3, scope: !4577, inlinedAt: !4589)
!4611 = !DILocation(line: 179, column: 3, scope: !4547, inlinedAt: !4589)
!4612 = !DILocation(line: 179, column: 3, scope: !4576, inlinedAt: !4589)
!4613 = !DILocation(line: 180, column: 3, scope: !4581, inlinedAt: !4589)
!4614 = !DILocation(line: 180, column: 3, scope: !4547, inlinedAt: !4589)
!4615 = !DILocation(line: 180, column: 3, scope: !4580, inlinedAt: !4589)
!4616 = !DILocation(line: 181, column: 3, scope: !4586, inlinedAt: !4589)
!4617 = !DILocation(line: 181, column: 3, scope: !4547, inlinedAt: !4589)
!4618 = !DILocation(line: 181, column: 3, scope: !4585, inlinedAt: !4589)
!4619 = !DILocation(line: 226, column: 11, scope: !4543)
!4620 = !DILocation(line: 231, column: 1, scope: !4408)
!4621 = distinct !DISubprogram(name: "randread_error", scope: !4409, file: !4409, line: 124, type: !4452, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !638, retainedNodes: !4622)
!4622 = !{!4623}
!4623 = !DILocalVariable(name: "file_name", arg: 1, scope: !4621, file: !4409, line: 124, type: !1372)
!4624 = !DILocation(line: 124, column: 29, scope: !4621)
!4625 = !DILocation(line: 126, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4621, file: !4409, line: 126, column: 7)
!4627 = !DILocation(line: 126, column: 7, scope: !4621)
!4628 = !DILocation(line: 127, column: 12, scope: !4626)
!4629 = !DILocation(line: 127, column: 26, scope: !4626)
!4630 = !DILocation(line: 128, column: 18, scope: !4626)
!4631 = !DILocation(line: 128, column: 12, scope: !4626)
!4632 = !DILocation(line: 0, scope: !4626)
!4633 = !DILocation(line: 129, column: 12, scope: !4626)
!4634 = !DILocation(line: 127, column: 5, scope: !4626)
!4635 = !DILocation(line: 130, column: 3, scope: !4621)
!4636 = distinct !DISubprogram(name: "randread_set_handler", scope: !4409, file: !4409, line: 242, type: !4637, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4412, !4451}
!4639 = !{!4640, !4641}
!4640 = !DILocalVariable(name: "s", arg: 1, scope: !4636, file: !4409, line: 242, type: !4412)
!4641 = !DILocalVariable(name: "handler", arg: 2, scope: !4636, file: !4409, line: 242, type: !4451)
!4642 = !DILocation(line: 242, column: 47, scope: !4636)
!4643 = !DILocation(line: 242, column: 57, scope: !4636)
!4644 = !DILocation(line: 244, column: 6, scope: !4636)
!4645 = !DILocation(line: 244, column: 14, scope: !4636)
!4646 = !DILocation(line: 245, column: 1, scope: !4636)
!4647 = distinct !DISubprogram(name: "randread_set_handler_arg", scope: !4409, file: !4409, line: 248, type: !4648, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4412, !1372}
!4650 = !{!4651, !4652}
!4651 = !DILocalVariable(name: "s", arg: 1, scope: !4647, file: !4409, line: 248, type: !4412)
!4652 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4647, file: !4409, line: 248, type: !1372)
!4653 = !DILocation(line: 248, column: 51, scope: !4647)
!4654 = !DILocation(line: 248, column: 66, scope: !4647)
!4655 = !DILocation(line: 250, column: 6, scope: !4647)
!4656 = !DILocation(line: 250, column: 18, scope: !4647)
!4657 = !DILocation(line: 251, column: 1, scope: !4647)
!4658 = distinct !DISubprogram(name: "randread", scope: !4409, file: !4409, line: 326, type: !4659, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4661)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4412, !8, !100}
!4661 = !{!4662, !4663, !4664}
!4662 = !DILocalVariable(name: "s", arg: 1, scope: !4658, file: !4409, line: 326, type: !4412)
!4663 = !DILocalVariable(name: "buf", arg: 2, scope: !4658, file: !4409, line: 326, type: !8)
!4664 = !DILocalVariable(name: "size", arg: 3, scope: !4658, file: !4409, line: 326, type: !100)
!4665 = !DILocation(line: 326, column: 35, scope: !4658)
!4666 = !DILocation(line: 326, column: 44, scope: !4658)
!4667 = !DILocation(line: 326, column: 56, scope: !4658)
!4668 = !DILocation(line: 328, column: 10, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4658, file: !4409, line: 328, column: 7)
!4670 = !DILocation(line: 328, column: 7, scope: !4669)
!4671 = !DILocation(line: 328, column: 7, scope: !4658)
!4672 = !DILocalVariable(name: "s", arg: 1, scope: !4673, file: !4409, line: 258, type: !4412)
!4673 = distinct !DISubprogram(name: "readsource", scope: !4409, file: !4409, line: 258, type: !4674, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4677)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !4412, !4676, !100}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!4677 = !{!4672, !4678, !4679, !4680, !4682}
!4678 = !DILocalVariable(name: "p", arg: 2, scope: !4673, file: !4409, line: 258, type: !4676)
!4679 = !DILocalVariable(name: "size", arg: 3, scope: !4673, file: !4409, line: 258, type: !100)
!4680 = !DILocalVariable(name: "inbytes", scope: !4681, file: !4409, line: 262, type: !100)
!4681 = distinct !DILexicalBlock(scope: !4673, file: !4409, line: 261, column: 5)
!4682 = !DILocalVariable(name: "fread_errno", scope: !4681, file: !4409, line: 263, type: !24)
!4683 = !DILocation(line: 258, column: 37, scope: !4673, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 329, column: 5, scope: !4669)
!4685 = !DILocation(line: 258, column: 55, scope: !4673, inlinedAt: !4684)
!4686 = !DILocation(line: 258, column: 65, scope: !4673, inlinedAt: !4684)
!4687 = !DILocation(line: 262, column: 24, scope: !4681, inlinedAt: !4684)
!4688 = !DILocation(line: 262, column: 14, scope: !4681, inlinedAt: !4684)
!4689 = !DILocation(line: 263, column: 25, scope: !4681, inlinedAt: !4684)
!4690 = !DILocation(line: 265, column: 12, scope: !4681, inlinedAt: !4684)
!4691 = !DILocation(line: 266, column: 16, scope: !4692, inlinedAt: !4684)
!4692 = distinct !DILexicalBlock(scope: !4681, file: !4409, line: 266, column: 11)
!4693 = !DILocation(line: 266, column: 11, scope: !4681, inlinedAt: !4684)
!4694 = !DILocation(line: 264, column: 9, scope: !4681, inlinedAt: !4684)
!4695 = !DILocation(line: 263, column: 11, scope: !4681, inlinedAt: !4684)
!4696 = !DILocation(line: 268, column: 16, scope: !4681, inlinedAt: !4684)
!4697 = !DILocalVariable(name: "__stream", arg: 1, scope: !4698, file: !1165, line: 135, type: !4416)
!4698 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1165, file: !1165, line: 135, type: !4699, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!24, !4416}
!4701 = !{!4697}
!4702 = !DILocation(line: 135, column: 1, scope: !4698, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 268, column: 16, scope: !4681, inlinedAt: !4684)
!4704 = !DILocation(line: 137, column: 10, scope: !4698, inlinedAt: !4703)
!4705 = !DILocation(line: 268, column: 13, scope: !4681, inlinedAt: !4684)
!4706 = !DILocation(line: 269, column: 10, scope: !4681, inlinedAt: !4684)
!4707 = !DILocation(line: 269, column: 22, scope: !4681, inlinedAt: !4684)
!4708 = !DILocation(line: 269, column: 7, scope: !4681, inlinedAt: !4684)
!4709 = !DILocalVariable(name: "isaac", arg: 1, scope: !4710, file: !4409, line: 278, type: !4713)
!4710 = distinct !DISubprogram(name: "readisaac", scope: !4409, file: !4409, line: 278, type: !4711, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4714)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4713, !8, !100}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4714 = !{!4709, !4715, !4716, !4717, !4718, !4720}
!4715 = !DILocalVariable(name: "p", arg: 2, scope: !4710, file: !4409, line: 278, type: !8)
!4716 = !DILocalVariable(name: "size", arg: 3, scope: !4710, file: !4409, line: 278, type: !100)
!4717 = !DILocalVariable(name: "inbytes", scope: !4710, file: !4409, line: 280, type: !100)
!4718 = !DILocalVariable(name: "char_p", scope: !4719, file: !4409, line: 284, type: !6)
!4719 = distinct !DILexicalBlock(scope: !4710, file: !4409, line: 283, column: 5)
!4720 = !DILocalVariable(name: "wp", scope: !4721, file: !4409, line: 301, type: !663)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !4409, line: 300, column: 9)
!4722 = distinct !DILexicalBlock(scope: !4719, file: !4409, line: 299, column: 11)
!4723 = !DILocation(line: 278, column: 26, scope: !4710, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 331, column: 5, scope: !4669)
!4725 = !DILocation(line: 278, column: 39, scope: !4710, inlinedAt: !4724)
!4726 = !DILocation(line: 278, column: 49, scope: !4710, inlinedAt: !4724)
!4727 = !DILocation(line: 280, column: 27, scope: !4710, inlinedAt: !4724)
!4728 = !{!4729, !1172, i64 0}
!4729 = !{!"isaac", !1172, i64 0, !4730, i64 8, !745, i64 2080}
!4730 = !{!"isaac_state", !745, i64 0, !1172, i64 2048, !1172, i64 2056, !1172, i64 2064}
!4731 = !DILocation(line: 280, column: 10, scope: !4710, inlinedAt: !4724)
!4732 = !DILocation(line: 284, column: 13, scope: !4719, inlinedAt: !4724)
!4733 = !DILocation(line: 286, column: 16, scope: !4734, inlinedAt: !4724)
!4734 = distinct !DILexicalBlock(scope: !4719, file: !4409, line: 286, column: 11)
!4735 = !DILocation(line: 0, scope: !4719, inlinedAt: !4724)
!4736 = !DILocation(line: 286, column: 11, scope: !4719, inlinedAt: !4724)
!4737 = !DILocation(line: 288, column: 11, scope: !4738, inlinedAt: !4724)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !4409, line: 287, column: 9)
!4739 = !DILocation(line: 289, column: 37, scope: !4738, inlinedAt: !4724)
!4740 = !DILocation(line: 290, column: 11, scope: !4738, inlinedAt: !4724)
!4741 = !DILocation(line: 293, column: 7, scope: !4719, inlinedAt: !4724)
!4742 = !DILocation(line: 294, column: 18, scope: !4719, inlinedAt: !4724)
!4743 = !DILocation(line: 295, column: 12, scope: !4719, inlinedAt: !4724)
!4744 = !DILocation(line: 299, column: 11, scope: !4722, inlinedAt: !4724)
!4745 = !DILocation(line: 299, column: 11, scope: !4719, inlinedAt: !4724)
!4746 = !DILocation(line: 301, column: 28, scope: !4721, inlinedAt: !4724)
!4747 = !DILocation(line: 301, column: 23, scope: !4721, inlinedAt: !4724)
!4748 = !DILocation(line: 302, column: 11, scope: !4721, inlinedAt: !4724)
!4749 = !DILocation(line: 0, scope: !4750, inlinedAt: !4724)
!4750 = distinct !DILexicalBlock(scope: !4721, file: !4409, line: 303, column: 13)
!4751 = !DILocation(line: 302, column: 30, scope: !4721, inlinedAt: !4724)
!4752 = !DILocation(line: 304, column: 15, scope: !4750, inlinedAt: !4724)
!4753 = !DILocation(line: 305, column: 18, scope: !4750, inlinedAt: !4724)
!4754 = !DILocation(line: 306, column: 20, scope: !4750, inlinedAt: !4724)
!4755 = !DILocation(line: 307, column: 24, scope: !4756, inlinedAt: !4724)
!4756 = distinct !DILexicalBlock(scope: !4750, file: !4409, line: 307, column: 19)
!4757 = !DILocation(line: 307, column: 19, scope: !4750, inlinedAt: !4724)
!4758 = distinct !{!4758, !4759, !4760}
!4759 = !DILocation(line: 302, column: 11, scope: !4721)
!4760 = !DILocation(line: 312, column: 13, scope: !4721)
!4761 = !DILocation(line: 313, column: 15, scope: !4721, inlinedAt: !4724)
!4762 = !DILocation(line: 316, column: 7, scope: !4719, inlinedAt: !4724)
!4763 = !DILocation(line: 0, scope: !4764, inlinedAt: !4724)
!4764 = distinct !DILexicalBlock(scope: !4756, file: !4409, line: 308, column: 17)
!4765 = !DILocation(line: 332, column: 1, scope: !4658)
!4766 = distinct !DISubprogram(name: "randread_free", scope: !4409, file: !4409, line: 341, type: !4767, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4769)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!24, !4412}
!4769 = !{!4770, !4771}
!4770 = !DILocalVariable(name: "s", arg: 1, scope: !4766, file: !4409, line: 341, type: !4412)
!4771 = !DILocalVariable(name: "source", scope: !4766, file: !4409, line: 343, type: !4416)
!4772 = !DILocation(line: 341, column: 40, scope: !4766)
!4773 = !DILocation(line: 343, column: 21, scope: !4766)
!4774 = !DILocation(line: 343, column: 9, scope: !4766)
!4775 = !DILocation(line: 344, column: 19, scope: !4766)
!4776 = !DILocalVariable(name: "__dest", arg: 1, scope: !4777, file: !1367, line: 81, type: !8)
!4777 = distinct !DISubprogram(name: "explicit_bzero", scope: !1367, file: !1367, line: 81, type: !4375, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4778)
!4778 = !{!4776, !4779}
!4779 = !DILocalVariable(name: "__len", arg: 2, scope: !4777, file: !1367, line: 81, type: !100)
!4780 = !DILocation(line: 81, column: 1, scope: !4777, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 344, column: 3, scope: !4766)
!4782 = !DILocation(line: 83, column: 40, scope: !4777, inlinedAt: !4781)
!4783 = !DILocation(line: 83, column: 3, scope: !4777, inlinedAt: !4781)
!4784 = !DILocation(line: 345, column: 3, scope: !4766)
!4785 = !DILocation(line: 346, column: 11, scope: !4766)
!4786 = !DILocation(line: 346, column: 20, scope: !4766)
!4787 = !DILocation(line: 346, column: 3, scope: !4766)
!4788 = !DILocation(line: 90, column: 35, scope: !645)
!4789 = !DILocation(line: 90, column: 49, scope: !645)
!4790 = !DILocation(line: 93, column: 21, scope: !645)
!4791 = !{!4730, !1172, i64 2048}
!4792 = !DILocation(line: 93, column: 14, scope: !645)
!4793 = !DILocation(line: 94, column: 21, scope: !645)
!4794 = !{!4730, !1172, i64 2056}
!4795 = !DILocation(line: 94, column: 31, scope: !645)
!4796 = !DILocation(line: 94, column: 26, scope: !645)
!4797 = !{!4730, !1172, i64 2064}
!4798 = !DILocation(line: 94, column: 23, scope: !645)
!4799 = !DILocation(line: 94, column: 14, scope: !645)
!4800 = !DILocation(line: 97, column: 19, scope: !645)
!4801 = !DILocation(line: 97, column: 15, scope: !645)
!4802 = !DILocation(line: 98, column: 15, scope: !645)
!4803 = !DILocation(line: 116, column: 3, scope: !645)
!4804 = !DILocation(line: 0, scope: !673)
!4805 = !DILocation(line: 0, scope: !645)
!4806 = !DILocation(line: 0, scope: !682)
!4807 = !DILocation(line: 118, column: 7, scope: !672)
!4808 = !DILocalVariable(name: "m", arg: 1, scope: !4809, file: !644, line: 68, type: !4812)
!4809 = distinct !DISubprogram(name: "ind", scope: !644, file: !644, line: 68, type: !4810, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !640, retainedNodes: !4814)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!654, !4812, !654}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!4814 = !{!4808, !4815, !4816, !4819, !4820, !4821}
!4815 = !DILocalVariable(name: "x", arg: 2, scope: !4809, file: !644, line: 68, type: !654)
!4816 = !DILocalVariable(name: "void_m", scope: !4817, file: !644, line: 75, type: !1372)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !644, line: 71, column: 5)
!4818 = distinct !DILexicalBlock(scope: !4809, file: !644, line: 70, column: 7)
!4819 = !DILocalVariable(name: "base_p", scope: !4817, file: !644, line: 76, type: !15)
!4820 = !DILocalVariable(name: "word_p", scope: !4817, file: !644, line: 77, type: !1372)
!4821 = !DILocalVariable(name: "p", scope: !4817, file: !644, line: 78, type: !4812)
!4822 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 118, column: 7, scope: !672)
!4824 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4823)
!4825 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4823)
!4826 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4823)
!4827 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4823)
!4828 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4823)
!4829 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4823)
!4830 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4823)
!4831 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4823)
!4832 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4823)
!4833 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 118, column: 7, scope: !672)
!4835 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4834)
!4836 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4834)
!4837 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4834)
!4838 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4834)
!4839 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4834)
!4840 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4834)
!4841 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4834)
!4842 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4834)
!4843 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4834)
!4844 = !DILocation(line: 119, column: 7, scope: !676)
!4845 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4846)
!4846 = distinct !DILocation(line: 119, column: 7, scope: !676)
!4847 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4846)
!4848 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4846)
!4849 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4846)
!4850 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4846)
!4851 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4846)
!4852 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4846)
!4853 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4846)
!4854 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4846)
!4855 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4846)
!4856 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 119, column: 7, scope: !676)
!4858 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4857)
!4859 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4857)
!4860 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4857)
!4861 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4857)
!4862 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4857)
!4863 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4857)
!4864 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4857)
!4865 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4857)
!4866 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4857)
!4867 = !DILocation(line: 120, column: 7, scope: !679)
!4868 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 120, column: 7, scope: !679)
!4870 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4869)
!4871 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4869)
!4872 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4869)
!4873 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4869)
!4874 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4869)
!4875 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4869)
!4876 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4869)
!4877 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4869)
!4878 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4869)
!4879 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 120, column: 7, scope: !679)
!4881 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4880)
!4882 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4880)
!4883 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4880)
!4884 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4880)
!4885 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4880)
!4886 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4880)
!4887 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4880)
!4888 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4880)
!4889 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4880)
!4890 = !DILocation(line: 121, column: 7, scope: !682)
!4891 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 121, column: 7, scope: !682)
!4893 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4892)
!4894 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4892)
!4895 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4892)
!4896 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4892)
!4897 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4892)
!4898 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4892)
!4899 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4892)
!4900 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4892)
!4901 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4892)
!4902 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 121, column: 7, scope: !682)
!4904 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4903)
!4905 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4903)
!4906 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4903)
!4907 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4903)
!4908 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4903)
!4909 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4903)
!4910 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4903)
!4911 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4903)
!4912 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4903)
!4913 = !DILocation(line: 122, column: 9, scope: !673)
!4914 = !DILocation(line: 124, column: 13, scope: !645)
!4915 = !DILocation(line: 124, column: 19, scope: !645)
!4916 = !DILocation(line: 123, column: 5, scope: !673)
!4917 = distinct !{!4917, !4803, !4918}
!4918 = !DILocation(line: 124, column: 32, scope: !645)
!4919 = !DILocation(line: 128, column: 7, scope: !685)
!4920 = !DILocation(line: 0, scope: !686)
!4921 = !DILocation(line: 0, scope: !695)
!4922 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 128, column: 7, scope: !685)
!4924 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4923)
!4925 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4923)
!4926 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4923)
!4927 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4923)
!4928 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4923)
!4929 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4923)
!4930 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4923)
!4931 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4923)
!4932 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4923)
!4933 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 128, column: 7, scope: !685)
!4935 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4934)
!4936 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4934)
!4937 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4934)
!4938 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4934)
!4939 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4934)
!4940 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4934)
!4941 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4934)
!4942 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4934)
!4943 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4934)
!4944 = !DILocation(line: 129, column: 7, scope: !689)
!4945 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 129, column: 7, scope: !689)
!4947 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4946)
!4948 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4946)
!4949 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4946)
!4950 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4946)
!4951 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4946)
!4952 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4946)
!4953 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4946)
!4954 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4946)
!4955 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4946)
!4956 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4957)
!4957 = distinct !DILocation(line: 129, column: 7, scope: !689)
!4958 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4957)
!4959 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4957)
!4960 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4957)
!4961 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4957)
!4962 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4957)
!4963 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4957)
!4964 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4957)
!4965 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4957)
!4966 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4957)
!4967 = !DILocation(line: 130, column: 7, scope: !692)
!4968 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 130, column: 7, scope: !692)
!4970 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4969)
!4971 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4969)
!4972 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4969)
!4973 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4969)
!4974 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4969)
!4975 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4969)
!4976 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4969)
!4977 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4969)
!4978 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4969)
!4979 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 130, column: 7, scope: !692)
!4981 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4980)
!4982 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4980)
!4983 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4980)
!4984 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4980)
!4985 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4980)
!4986 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4980)
!4987 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4980)
!4988 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4980)
!4989 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4980)
!4990 = !DILocation(line: 131, column: 7, scope: !695)
!4991 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !4992)
!4992 = distinct !DILocation(line: 131, column: 7, scope: !695)
!4993 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !4992)
!4994 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !4992)
!4995 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !4992)
!4996 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !4992)
!4997 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !4992)
!4998 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !4992)
!4999 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !4992)
!5000 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !4992)
!5001 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !4992)
!5002 = !DILocation(line: 68, column: 24, scope: !4809, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 131, column: 7, scope: !695)
!5004 = !DILocation(line: 68, column: 38, scope: !4809, inlinedAt: !5003)
!5005 = !DILocation(line: 75, column: 19, scope: !4817, inlinedAt: !5003)
!5006 = !DILocation(line: 76, column: 19, scope: !4817, inlinedAt: !5003)
!5007 = !DILocation(line: 77, column: 40, scope: !4817, inlinedAt: !5003)
!5008 = !DILocation(line: 77, column: 35, scope: !4817, inlinedAt: !5003)
!5009 = !DILocation(line: 77, column: 19, scope: !4817, inlinedAt: !5003)
!5010 = !DILocation(line: 78, column: 29, scope: !4817, inlinedAt: !5003)
!5011 = !DILocation(line: 78, column: 25, scope: !4817, inlinedAt: !5003)
!5012 = !DILocation(line: 79, column: 14, scope: !4817, inlinedAt: !5003)
!5013 = !DILocation(line: 132, column: 9, scope: !686)
!5014 = !DILocation(line: 134, column: 13, scope: !645)
!5015 = !DILocation(line: 134, column: 19, scope: !645)
!5016 = !DILocation(line: 133, column: 5, scope: !686)
!5017 = distinct !{!5017, !5018, !5019}
!5018 = !DILocation(line: 126, column: 3, scope: !645)
!5019 = !DILocation(line: 134, column: 39, scope: !645)
!5020 = !DILocation(line: 136, column: 8, scope: !645)
!5021 = !DILocation(line: 137, column: 8, scope: !645)
!5022 = !DILocation(line: 138, column: 1, scope: !645)
!5023 = distinct !DISubprogram(name: "isaac_seed", scope: !644, file: !644, line: 248, type: !5024, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !640, retainedNodes: !5026)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !648}
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5038}
!5027 = !DILocalVariable(name: "s", arg: 1, scope: !5023, file: !644, line: 248, type: !648)
!5028 = !DILocalVariable(name: "a", scope: !5023, file: !644, line: 250, type: !654)
!5029 = !DILocalVariable(name: "b", scope: !5023, file: !644, line: 251, type: !654)
!5030 = !DILocalVariable(name: "c", scope: !5023, file: !644, line: 252, type: !654)
!5031 = !DILocalVariable(name: "d", scope: !5023, file: !644, line: 253, type: !654)
!5032 = !DILocalVariable(name: "e", scope: !5023, file: !644, line: 254, type: !654)
!5033 = !DILocalVariable(name: "f", scope: !5023, file: !644, line: 255, type: !654)
!5034 = !DILocalVariable(name: "g", scope: !5023, file: !644, line: 256, type: !654)
!5035 = !DILocalVariable(name: "h", scope: !5023, file: !644, line: 257, type: !654)
!5036 = !DILocalVariable(name: "i", scope: !5037, file: !644, line: 269, type: !24)
!5037 = distinct !DILexicalBlock(scope: !5023, file: !644, line: 269, column: 3)
!5038 = !DILocalVariable(name: "i", scope: !5039, file: !644, line: 270, type: !24)
!5039 = distinct !DILexicalBlock(scope: !5023, file: !644, line: 270, column: 3)
!5040 = !DILocation(line: 248, column: 33, scope: !5023)
!5041 = !DILocation(line: 250, column: 14, scope: !5023)
!5042 = !DILocation(line: 251, column: 14, scope: !5023)
!5043 = !DILocation(line: 252, column: 14, scope: !5023)
!5044 = !DILocation(line: 253, column: 14, scope: !5023)
!5045 = !DILocation(line: 254, column: 14, scope: !5023)
!5046 = !DILocation(line: 255, column: 14, scope: !5023)
!5047 = !DILocation(line: 256, column: 14, scope: !5023)
!5048 = !DILocation(line: 257, column: 14, scope: !5023)
!5049 = !DILocation(line: 269, column: 3, scope: !5037)
!5050 = !DILocation(line: 269, column: 3, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5037, file: !644, line: 269, column: 3)
!5052 = !DILocation(line: 269, column: 3, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !644, line: 269, column: 3)
!5054 = distinct !DILexicalBlock(scope: !5051, file: !644, line: 269, column: 3)
!5055 = !DILocation(line: 269, column: 3, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5053, file: !644, line: 269, column: 3)
!5057 = !DILocation(line: 269, column: 3, scope: !5054)
!5058 = distinct !{!5058, !5050, !5050}
!5059 = !DILocation(line: 270, column: 3, scope: !5039)
!5060 = !DILocation(line: 270, column: 3, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !644, line: 270, column: 3)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !644, line: 270, column: 3)
!5063 = distinct !DILexicalBlock(scope: !5039, file: !644, line: 270, column: 3)
!5064 = !DILocation(line: 270, column: 3, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !644, line: 270, column: 3)
!5066 = !DILocation(line: 270, column: 3, scope: !5062)
!5067 = !DILocation(line: 270, column: 3, scope: !5063)
!5068 = distinct !{!5068, !5067, !5067}
!5069 = !DILocation(line: 272, column: 6, scope: !5023)
!5070 = !DILocation(line: 273, column: 1, scope: !5023)
!5071 = !DILocation(line: 272, column: 15, scope: !5023)
!5072 = distinct !DISubprogram(name: "fopen_safer", scope: !5073, file: !5073, line: 31, type: !5074, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !5110)
!5073 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!5076, !15, !15}
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !5078)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !5079)
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5078, file: !1107, line: 51, baseType: !24, size: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5078, file: !1107, line: 54, baseType: !6, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5078, file: !1107, line: 55, baseType: !6, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5078, file: !1107, line: 56, baseType: !6, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5078, file: !1107, line: 57, baseType: !6, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5078, file: !1107, line: 58, baseType: !6, size: 64, offset: 320)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5078, file: !1107, line: 59, baseType: !6, size: 64, offset: 384)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5078, file: !1107, line: 60, baseType: !6, size: 64, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5078, file: !1107, line: 61, baseType: !6, size: 64, offset: 512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5078, file: !1107, line: 64, baseType: !6, size: 64, offset: 576)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5078, file: !1107, line: 65, baseType: !6, size: 64, offset: 640)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5078, file: !1107, line: 66, baseType: !6, size: 64, offset: 704)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5078, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5078, file: !1107, line: 70, baseType: !5094, size: 64, offset: 832)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5078, file: !1107, line: 72, baseType: !24, size: 32, offset: 896)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5078, file: !1107, line: 73, baseType: !24, size: 32, offset: 928)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5078, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5078, file: !1107, line: 77, baseType: !99, size: 16, offset: 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5078, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5078, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5078, file: !1107, line: 81, baseType: !1137, size: 64, offset: 1088)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5078, file: !1107, line: 89, baseType: !1140, size: 64, offset: 1152)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5078, file: !1107, line: 91, baseType: !1142, size: 64, offset: 1216)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5078, file: !1107, line: 92, baseType: !1145, size: 64, offset: 1280)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5078, file: !1107, line: 93, baseType: !5094, size: 64, offset: 1344)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5078, file: !1107, line: 94, baseType: !8, size: 64, offset: 1408)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5078, file: !1107, line: 95, baseType: !100, size: 64, offset: 1472)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5078, file: !1107, line: 96, baseType: !24, size: 32, offset: 1536)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5078, file: !1107, line: 98, baseType: !1152, size: 160, offset: 1568)
!5110 = !{!5111, !5112, !5113, !5114, !5117, !5120, !5123}
!5111 = !DILocalVariable(name: "file", arg: 1, scope: !5072, file: !5073, line: 31, type: !15)
!5112 = !DILocalVariable(name: "mode", arg: 2, scope: !5072, file: !5073, line: 31, type: !15)
!5113 = !DILocalVariable(name: "fp", scope: !5072, file: !5073, line: 33, type: !5076)
!5114 = !DILocalVariable(name: "fd", scope: !5115, file: !5073, line: 37, type: !24)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !5073, line: 36, column: 5)
!5116 = distinct !DILexicalBlock(scope: !5072, file: !5073, line: 35, column: 7)
!5117 = !DILocalVariable(name: "f", scope: !5118, file: !5073, line: 41, type: !24)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !5073, line: 40, column: 9)
!5119 = distinct !DILexicalBlock(scope: !5115, file: !5073, line: 39, column: 11)
!5120 = !DILocalVariable(name: "e", scope: !5121, file: !5073, line: 45, type: !24)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !5073, line: 44, column: 13)
!5122 = distinct !DILexicalBlock(scope: !5118, file: !5073, line: 43, column: 15)
!5123 = !DILocalVariable(name: "e", scope: !5124, file: !5073, line: 54, type: !24)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !5073, line: 53, column: 13)
!5125 = distinct !DILexicalBlock(scope: !5118, file: !5073, line: 51, column: 15)
!5126 = !DILocation(line: 31, column: 26, scope: !5072)
!5127 = !DILocation(line: 31, column: 44, scope: !5072)
!5128 = !DILocation(line: 33, column: 14, scope: !5072)
!5129 = !DILocation(line: 33, column: 9, scope: !5072)
!5130 = !DILocation(line: 35, column: 7, scope: !5116)
!5131 = !DILocation(line: 35, column: 7, scope: !5072)
!5132 = !DILocation(line: 37, column: 16, scope: !5115)
!5133 = !DILocation(line: 37, column: 11, scope: !5115)
!5134 = !DILocation(line: 39, column: 19, scope: !5119)
!5135 = !DILocation(line: 41, column: 19, scope: !5118)
!5136 = !DILocation(line: 41, column: 15, scope: !5118)
!5137 = !DILocation(line: 43, column: 17, scope: !5122)
!5138 = !DILocation(line: 43, column: 15, scope: !5118)
!5139 = !DILocation(line: 45, column: 23, scope: !5121)
!5140 = !DILocation(line: 45, column: 19, scope: !5121)
!5141 = !DILocation(line: 46, column: 15, scope: !5121)
!5142 = !DILocation(line: 47, column: 21, scope: !5121)
!5143 = !DILocation(line: 51, column: 15, scope: !5125)
!5144 = !DILocation(line: 51, column: 27, scope: !5125)
!5145 = !DILocation(line: 52, column: 15, scope: !5125)
!5146 = !DILocation(line: 52, column: 26, scope: !5125)
!5147 = !DILocation(line: 52, column: 24, scope: !5125)
!5148 = !DILocation(line: 51, column: 15, scope: !5118)
!5149 = !DILocation(line: 54, column: 23, scope: !5124)
!5150 = !DILocation(line: 54, column: 19, scope: !5124)
!5151 = !DILocation(line: 55, column: 15, scope: !5124)
!5152 = !DILocation(line: 56, column: 21, scope: !5124)
!5153 = !DILocation(line: 0, scope: !5121)
!5154 = !DILocation(line: 63, column: 1, scope: !5072)
!5155 = distinct !DISubprogram(name: "dup_safer", scope: !5156, file: !5156, line: 31, type: !5157, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !702, retainedNodes: !5159)
!5156 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!24, !24}
!5159 = !{!5160}
!5160 = !DILocalVariable(name: "fd", arg: 1, scope: !5155, file: !5156, line: 31, type: !24)
!5161 = !DILocation(line: 31, column: 16, scope: !5155)
!5162 = !DILocation(line: 33, column: 10, scope: !5155)
!5163 = !DILocation(line: 33, column: 3, scope: !5155)
!5164 = !DILocation(line: 276, column: 16, scope: !163)
!5165 = !DILocation(line: 276, column: 24, scope: !163)
!5166 = !DILocation(line: 278, column: 3, scope: !163)
!5167 = !DILocation(line: 278, column: 11, scope: !163)
!5168 = !DILocation(line: 279, column: 7, scope: !163)
!5169 = !DILocation(line: 280, column: 3, scope: !163)
!5170 = !DILocation(line: 281, column: 3, scope: !163)
!5171 = !DILocation(line: 0, scope: !197)
!5172 = !DILocation(line: 326, column: 22, scope: !188)
!5173 = !DILocation(line: 326, column: 13, scope: !188)
!5174 = !DILocation(line: 340, column: 18, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !188, file: !164, line: 340, column: 13)
!5176 = !DILocation(line: 340, column: 15, scope: !5175)
!5177 = !DILocation(line: 340, column: 13, scope: !188)
!5178 = !DILocation(line: 342, column: 22, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !164, line: 341, column: 11)
!5180 = !DILocation(line: 343, column: 19, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5179, file: !164, line: 343, column: 17)
!5182 = !DILocation(line: 343, column: 29, scope: !5181)
!5183 = !DILocation(line: 343, column: 32, scope: !5181)
!5184 = !DILocation(line: 343, column: 38, scope: !5181)
!5185 = !DILocation(line: 343, column: 17, scope: !5179)
!5186 = !DILocation(line: 345, column: 36, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5181, file: !164, line: 344, column: 15)
!5188 = !DILocation(line: 361, column: 25, scope: !192)
!5189 = !DILocation(line: 353, column: 26, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5181, file: !164, line: 352, column: 15)
!5191 = !DILocation(line: 354, column: 28, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5190, file: !164, line: 354, column: 21)
!5193 = !DILocation(line: 354, column: 21, scope: !5190)
!5194 = !DILocation(line: 356, column: 36, scope: !5190)
!5195 = !DILocation(line: 360, column: 20, scope: !5175)
!5196 = !DILocation(line: 361, column: 28, scope: !192)
!5197 = !DILocation(line: 0, scope: !5175)
!5198 = !DILocation(line: 361, column: 15, scope: !192)
!5199 = !DILocation(line: 363, column: 25, scope: !191)
!5200 = !DILocation(line: 363, column: 17, scope: !191)
!5201 = !DILocation(line: 364, column: 23, scope: !195)
!5202 = !DILocation(line: 364, column: 27, scope: !195)
!5203 = !DILocation(line: 364, column: 60, scope: !195)
!5204 = !DILocation(line: 364, column: 30, scope: !195)
!5205 = !DILocation(line: 364, column: 74, scope: !195)
!5206 = !DILocation(line: 364, column: 17, scope: !191)
!5207 = !DILocation(line: 366, column: 35, scope: !194)
!5208 = !DILocation(line: 366, column: 21, scope: !194)
!5209 = !DILocation(line: 367, column: 17, scope: !194)
!5210 = !DILocation(line: 368, column: 23, scope: !194)
!5211 = !DILocation(line: 370, column: 15, scope: !194)
!5212 = !DILocation(line: 408, column: 19, scope: !197)
!5213 = !DILocation(line: 408, column: 15, scope: !197)
!5214 = !DILocation(line: 409, column: 18, scope: !197)
!5215 = !DILocation(line: 416, column: 3, scope: !163)
!5216 = !DILocation(line: 418, column: 1, scope: !163)
!5217 = !DILocation(line: 417, column: 3, scope: !163)
