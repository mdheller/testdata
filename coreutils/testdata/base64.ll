; ModuleID = 'coreutils-8.30/src/base64.bc'
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
%struct.base64_decode_context = type { i32, [4 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Usage: %s [OPTION]... [FILE]\0ABase%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.2 = private unnamed_addr constant [243 x i8] c"  -d, --decode          decode data\0A  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\0A  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\0A                          Use 0 to disable line wrapping\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !50
@.str.44 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !56
@b64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !62
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !73
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !78
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !82
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !89
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !95
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !126
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !133
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !150
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !157
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !159
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.95 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.113 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !165
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.132 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !629 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !634, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 %0, metadata !633, metadata !DIExpression()), !dbg !657
  %3 = icmp eq i32 %0, 0, !dbg !658
  br i1 %3, label %9, label %4, !dbg !659

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !660, !tbaa !662
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !660
  %7 = load i8*, i8** @program_name, align 8, !dbg !660, !tbaa !662
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !660
  br label %65, !dbg !660

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !666
  %11 = load i8*, i8** @program_name, align 8, !dbg !666, !tbaa !662
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i32 64) #11, !dbg !666
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !667
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !662
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #11, !dbg !667
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !672
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !662
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #11, !dbg !672
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !675
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !662
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !675
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !676
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !662
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !676
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !677
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !662
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !677
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !678
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !678
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #11, !dbg !679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %30, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !653
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !680
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !642, metadata !DIExpression()) #11, !dbg !681
  br label %32, !dbg !682

; <label>:32:                                     ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !642, metadata !DIExpression()) #11, !dbg !681
  %35 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %33) #15, !dbg !682
  %36 = icmp eq i32 %35, 0, !dbg !682
  br i1 %36, label %42, label %37, !dbg !683

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !684
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !642, metadata !DIExpression()) #11, !dbg !681
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !685
  %40 = load i8*, i8** %39, align 8, !dbg !685, !tbaa !686
  %41 = icmp eq i8* %40, null, !dbg !688
  br i1 %41, label %42, label %32, !dbg !689, !llvm.loop !690

; <label>:42:                                     ; preds = %37, %32
  %43 = phi %struct.infomap* [ %38, %37 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !642, metadata !DIExpression()) #11, !dbg !681
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !642, metadata !DIExpression()) #11, !dbg !681
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !693
  %45 = load i8*, i8** %44, align 8, !dbg !693, !tbaa !695
  %46 = icmp eq i8* %45, null, !dbg !696
  %47 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %45, !dbg !697
  call void @llvm.dbg.value(metadata i8* %47, metadata !641, metadata !DIExpression()) #11, !dbg !698
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !699
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !699
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !700
  call void @llvm.dbg.value(metadata i8* %50, metadata !649, metadata !DIExpression()) #11, !dbg !701
  %51 = icmp eq i8* %50, null, !dbg !702
  br i1 %51, label %58, label %52, !dbg !704

; <label>:52:                                     ; preds = %42
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #15, !dbg !705
  %54 = icmp eq i32 %53, 0, !dbg !705
  br i1 %54, label %58, label %55, !dbg !706

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !707
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !707
  br label %58, !dbg !709

; <label>:58:                                     ; preds = %42, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !710
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !710
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !711
  %62 = icmp eq i8* %47, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !711
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !711
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* %47, i8* %63) #11, !dbg !711
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #11, !dbg !712
  br label %65

; <label>:65:                                     ; preds = %58, %4
  tail call void @exit(i32 %0) #16, !dbg !713
  unreachable, !dbg !713
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !714 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !784, metadata !DIExpression()), !dbg !818
  %4 = alloca [3072 x i8], align 16
  call void @llvm.dbg.declare(metadata [3072 x i8]* %4, metadata !792, metadata !DIExpression()), !dbg !821
  %5 = alloca %struct.base64_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !822, metadata !DIExpression()), !dbg !841
  %8 = alloca [40960 x i8], align 16
  call void @llvm.dbg.declare(metadata [40960 x i8]* %8, metadata !831, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %0, metadata !719, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8** %1, metadata !720, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8 0, metadata !778, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8 0, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 76, metadata !780, metadata !DIExpression()), !dbg !848
  %9 = load i8*, i8** %1, align 8, !dbg !849, !tbaa !662
  tail call void @set_program_name(i8* %9) #11, !dbg !850
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !851
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !852
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !853
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !854
  br label %14, !dbg !855

; <label>:14:                                     ; preds = %21, %2
  %15 = phi i8 [ 0, %2 ], [ 1, %21 ]
  %16 = phi i8 [ 0, %2 ], [ %19, %21 ]
  %17 = phi i64 [ 76, %2 ], [ %22, %21 ]
  br label %18, !dbg !856

; <label>:18:                                     ; preds = %21, %14
  %19 = phi i8 [ %16, %14 ], [ 1, %21 ]
  %20 = phi i64 [ %17, %14 ], [ %22, %21 ]
  br label %21, !dbg !856

; <label>:21:                                     ; preds = %18, %24
  %22 = phi i64 [ %27, %24 ], [ %20, %18 ], !dbg !848
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 %19, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8 %15, metadata !778, metadata !DIExpression()), !dbg !846
  %23 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !856
  call void @llvm.dbg.value(metadata i32 %23, metadata !721, metadata !DIExpression()), !dbg !857
  switch i32 %23, label %32 [
    i32 -1, label %33
    i32 100, label %14
    i32 119, label %24
    i32 105, label %18
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !855, !llvm.loop !858

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** @optarg, align 8, !dbg !860, !tbaa !662
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !862
  %27 = tail call i64 @xdectoumax(i8* %25, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %26, i32 0) #11, !dbg !863
  call void @llvm.dbg.value(metadata i64 %27, metadata !780, metadata !DIExpression()), !dbg !848
  br label %21, !dbg !864, !llvm.loop !858

; <label>:28:                                     ; preds = %21
  tail call void @usage(i32 0) #17, !dbg !865
  unreachable, !dbg !865

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !662
  %31 = load i8*, i8** @Version, align 8, !dbg !866, !tbaa !662
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !866
  tail call void @exit(i32 0) #16, !dbg !866
  unreachable, !dbg !866

; <label>:32:                                     ; preds = %21
  tail call void @usage(i32 1) #17, !dbg !867
  unreachable, !dbg !867

; <label>:33:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !778, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8 %19, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !778, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8 %19, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !778, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8 %19, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !778, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8 %19, metadata !779, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %22, metadata !780, metadata !DIExpression()), !dbg !848
  %34 = load i32, i32* @optind, align 4, !dbg !868, !tbaa !870
  %35 = sub nsw i32 %0, %34, !dbg !872
  %36 = icmp sgt i32 %35, 1, !dbg !873
  br i1 %36, label %37, label %44, !dbg !874

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !875
  %39 = load i32, i32* @optind, align 4, !dbg !877, !tbaa !870
  %40 = sext i32 %39 to i64, !dbg !878
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !878
  %42 = load i8*, i8** %41, align 8, !dbg !878, !tbaa !662
  %43 = tail call i8* @quote(i8* %42) #11, !dbg !879
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i8* %43) #11, !dbg !880
  tail call void @usage(i32 1) #17, !dbg !881
  unreachable, !dbg !881

; <label>:44:                                     ; preds = %33
  %45 = icmp slt i32 %34, %0, !dbg !882
  br i1 %45, label %46, label %50, !dbg !884

; <label>:46:                                     ; preds = %44
  %47 = sext i32 %34 to i64, !dbg !885
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !885
  %49 = load i8*, i8** %48, align 8, !dbg !885, !tbaa !662
  call void @llvm.dbg.value(metadata i8* %49, metadata !777, metadata !DIExpression()), !dbg !886
  br label %50, !dbg !887

; <label>:50:                                     ; preds = %44, %46
  %51 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %44 ], !dbg !888
  call void @llvm.dbg.value(metadata i8* %51, metadata !777, metadata !DIExpression()), !dbg !886
  %52 = tail call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !889
  %53 = icmp eq i32 %52, 0, !dbg !889
  br i1 %53, label %54, label %56, !dbg !891

; <label>:54:                                     ; preds = %50
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !892, !tbaa !662
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %55, metadata !722, metadata !DIExpression()), !dbg !894
  br label %63, !dbg !895

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct._IO_FILE* @fopen(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %57, metadata !722, metadata !DIExpression()), !dbg !894
  %58 = icmp eq %struct._IO_FILE* %57, null, !dbg !898
  br i1 %58, label %59, label %63, !dbg !900

; <label>:59:                                     ; preds = %56
  %60 = tail call i32* @__errno_location() #18, !dbg !901
  %61 = load i32, i32* %60, align 4, !dbg !901, !tbaa !870
  %62 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %51) #11, !dbg !901
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %62) #11, !dbg !901
  unreachable, !dbg !901

; <label>:63:                                     ; preds = %56, %54
  %64 = phi %struct._IO_FILE* [ %55, %54 ], [ %57, %56 ], !dbg !902
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !722, metadata !DIExpression()), !dbg !894
  tail call void @fadvise(%struct._IO_FILE* %64, i32 2) #11, !dbg !903
  %65 = icmp eq i8 %15, 0, !dbg !904
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !662
  br i1 %65, label %147, label %67, !dbg !906

; <label>:67:                                     ; preds = %63
  %68 = icmp eq i8 %19, 0, !dbg !907
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !789, metadata !DIExpression()) #11, !dbg !908
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !790, metadata !DIExpression()) #11, !dbg !909
  call void @llvm.dbg.value(metadata i1 %68, metadata !791, metadata !DIExpression()) #11, !dbg !910
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %69) #11, !dbg !911
  %70 = getelementptr inbounds [3072 x i8], [3072 x i8]* %4, i64 0, i64 0, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %70) #11, !dbg !912
  %71 = bitcast %struct.base64_decode_context* %5 to i8*, !dbg !913
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #11, !dbg !913
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, metadata !797, metadata !DIExpression(DW_OP_deref)) #11, !dbg !914
  call void @base64_decode_ctx_init(%struct.base64_decode_context* nonnull %5) #11, !dbg !915
  %72 = bitcast i64* %6 to i8*
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %64, i64 0, i32 0
  %74 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %5, i64 0, i32 0
  br label %75, !dbg !916

; <label>:75:                                     ; preds = %145, %67
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #11, !dbg !917
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()) #11, !dbg !918
  br label %76, !dbg !919

; <label>:76:                                     ; preds = %113, %75
  %77 = phi i64 [ 0, %75 ], [ %105, %113 ], !dbg !920
  call void @llvm.dbg.value(metadata i64 %77, metadata !796, metadata !DIExpression()) #11, !dbg !918
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %77, !dbg !921
  %79 = sub i64 4096, %77, !dbg !921
  %80 = call i64 @fread_unlocked(i8* nonnull %78, i64 1, i64 %79, %struct._IO_FILE* %64) #11, !dbg !921
  call void @llvm.dbg.value(metadata i64 %80, metadata !808, metadata !DIExpression()) #11, !dbg !922
  store i64 %80, i64* %6, align 8, !dbg !923, !tbaa !924
  br i1 %68, label %103, label %81, !dbg !926

; <label>:81:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i64 0, metadata !810, metadata !DIExpression()) #11, !dbg !927
  call void @llvm.dbg.value(metadata i64 %80, metadata !808, metadata !DIExpression()) #11, !dbg !922
  %82 = icmp eq i64 %80, 0, !dbg !928
  br i1 %82, label %103, label %83, !dbg !930

; <label>:83:                                     ; preds = %81, %99
  %84 = phi i64 [ %100, %99 ], [ %80, %81 ]
  %85 = phi i64 [ %101, %99 ], [ 0, %81 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !810, metadata !DIExpression()) #11, !dbg !927
  %86 = add i64 %85, %77, !dbg !931
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %86, !dbg !934
  %88 = load i8, i8* %87, align 1, !dbg !934, !tbaa !935
  %89 = call zeroext i1 @isbase64(i8 signext %88) #18, !dbg !936
  %90 = icmp eq i8 %88, 61, !dbg !937
  %91 = or i1 %89, %90, !dbg !938
  br i1 %91, label %92, label %94, !dbg !938

; <label>:92:                                     ; preds = %83
  %93 = add i64 %85, 1, !dbg !939
  call void @llvm.dbg.value(metadata i64 %93, metadata !810, metadata !DIExpression()) #11, !dbg !927
  br label %99, !dbg !940

; <label>:94:                                     ; preds = %83
  %95 = getelementptr inbounds i8, i8* %78, i64 %85, !dbg !941
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !942
  %97 = add i64 %84, -1, !dbg !943
  call void @llvm.dbg.value(metadata i64 %97, metadata !808, metadata !DIExpression()) #11, !dbg !922
  store i64 %97, i64* %6, align 8, !dbg !943, !tbaa !924
  %98 = sub i64 %97, %85, !dbg !944
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %95, i8* nonnull align 1 %96, i64 %98, i1 false) #11, !dbg !945
  br label %99

; <label>:99:                                     ; preds = %94, %92
  %100 = phi i64 [ %84, %92 ], [ %97, %94 ], !dbg !946
  %101 = phi i64 [ %93, %92 ], [ %85, %94 ], !dbg !947
  call void @llvm.dbg.value(metadata i64 %101, metadata !810, metadata !DIExpression()) #11, !dbg !927
  call void @llvm.dbg.value(metadata i64 %100, metadata !808, metadata !DIExpression()) #11, !dbg !922
  %102 = icmp ult i64 %101, %100, !dbg !928
  br i1 %102, label %83, label %103, !dbg !930, !llvm.loop !948

; <label>:103:                                    ; preds = %99, %76, %81
  %104 = phi i64 [ 0, %81 ], [ %80, %76 ], [ %100, %99 ], !dbg !951
  call void @llvm.dbg.value(metadata i64 %104, metadata !808, metadata !DIExpression()) #11, !dbg !922
  %105 = add i64 %104, %77, !dbg !952
  call void @llvm.dbg.value(metadata i64 %105, metadata !796, metadata !DIExpression()) #11, !dbg !918
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !953, metadata !DIExpression()) #11, !dbg !959
  %106 = load i32, i32* %73, align 8, !dbg !962, !tbaa !963
  %107 = and i32 %106, 32, !dbg !962
  %108 = icmp eq i32 %107, 0, !dbg !966
  br i1 %108, label %113, label %109, !dbg !967

; <label>:109:                                    ; preds = %103
  %110 = tail call i32* @__errno_location() #18, !dbg !968
  %111 = load i32, i32* %110, align 4, !dbg !968, !tbaa !870
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !968
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %111, i8* %112) #11, !dbg !968
  unreachable, !dbg !968

; <label>:113:                                    ; preds = %103
  %114 = icmp ult i64 %105, 4096, !dbg !969
  %115 = and i32 %106, 16, !dbg !970
  %116 = icmp eq i32 %115, 0, !dbg !975
  %117 = and i1 %114, %116, !dbg !976
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !973, metadata !DIExpression()) #11, !dbg !977
  br i1 %117, label %76, label %128, !dbg !976, !llvm.loop !978

; <label>:118:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i32 %142, metadata !809, metadata !DIExpression()) #11, !dbg !981
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !973, metadata !DIExpression()) #11, !dbg !982
  %119 = load i32, i32* %73, align 8, !dbg !986, !tbaa !963
  %120 = and i32 %119, 16, !dbg !986
  %121 = icmp eq i32 %120, 0, !dbg !987
  %122 = select i1 %121, i32 1, i32 2, !dbg !988
  %123 = icmp ult i32 %142, %122, !dbg !989
  br i1 %123, label %124, label %145, !dbg !990, !llvm.loop !991

; <label>:124:                                    ; preds = %118
  call void @llvm.dbg.value(metadata i32 %142, metadata !809, metadata !DIExpression()) #11, !dbg !981
  %125 = load i32, i32* %74, align 4, !dbg !994
  %126 = or i32 %129, %125, !dbg !997
  %127 = icmp eq i32 %126, 0, !dbg !997
  br i1 %127, label %145, label %128, !dbg !997, !llvm.loop !991

; <label>:128:                                    ; preds = %113, %124
  %129 = phi i32 [ %142, %124 ], [ 0, %113 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !809, metadata !DIExpression()) #11, !dbg !981
  call void @llvm.dbg.value(metadata i64 3072, metadata !808, metadata !DIExpression()) #11, !dbg !922
  store i64 3072, i64* %6, align 8, !dbg !998, !tbaa !924
  %130 = icmp eq i32 %129, 0, !dbg !999
  %131 = select i1 %130, i64 %105, i64 0, !dbg !1000
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, metadata !797, metadata !DIExpression(DW_OP_deref)) #11, !dbg !914
  call void @llvm.dbg.value(metadata i64* %6, metadata !808, metadata !DIExpression(DW_OP_deref)) #11, !dbg !922
  %132 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* nonnull %5, i8* nonnull %69, i64 %131, i8* nonnull %70, i64* nonnull %6) #11, !dbg !1001
  %133 = load i64, i64* %6, align 8, !dbg !1002, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %133, metadata !808, metadata !DIExpression()) #11, !dbg !922
  %134 = call i64 @fwrite_unlocked(i8* nonnull %70, i64 1, i64 %133, %struct._IO_FILE* %66) #11, !dbg !1002
  %135 = load i64, i64* %6, align 8, !dbg !1004, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %135, metadata !808, metadata !DIExpression()) #11, !dbg !922
  %136 = icmp ult i64 %134, %135, !dbg !1005
  br i1 %136, label %137, label %141, !dbg !1006

; <label>:137:                                    ; preds = %128
  %138 = tail call i32* @__errno_location() #18, !dbg !1007
  %139 = load i32, i32* %138, align 4, !dbg !1007, !tbaa !870
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1007
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* %140) #11, !dbg !1007
  unreachable, !dbg !1007

; <label>:141:                                    ; preds = %128
  %142 = add nuw nsw i32 %129, 1, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %142, metadata !809, metadata !DIExpression()) #11, !dbg !981
  br i1 %132, label %118, label %143, !dbg !1009

; <label>:143:                                    ; preds = %141
  %144 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1010
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %144) #11, !dbg !1010
  unreachable, !dbg !1010

; <label>:145:                                    ; preds = %124, %118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #11, !dbg !1012
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !973, metadata !DIExpression()) #11, !dbg !1013
  br i1 %121, label %75, label %146, !dbg !1015, !llvm.loop !1016

; <label>:146:                                    ; preds = %145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #11, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %70) #11, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %69) #11, !dbg !1019
  br label %259, !dbg !1020

; <label>:147:                                    ; preds = %63
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !827, metadata !DIExpression()) #11, !dbg !1021
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !828, metadata !DIExpression()) #11, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %22, metadata !829, metadata !DIExpression()) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i64 0, metadata !830, metadata !DIExpression()) #11, !dbg !1024
  %148 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 30720, i8* nonnull %148) #11, !dbg !1025
  %149 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 0, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 40960, i8* nonnull %149) #11, !dbg !1026
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %64, i64 0, i32 0
  %151 = icmp eq i64 %22, 0
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 5
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 6
  br label %154, !dbg !1027

; <label>:154:                                    ; preds = %228, %147
  %155 = phi i64 [ 0, %147 ], [ %224, %228 ], !dbg !1024
  call void @llvm.dbg.value(metadata i64 0, metadata !835, metadata !DIExpression()) #11, !dbg !1028
  br label %156, !dbg !1029

; <label>:156:                                    ; preds = %165, %154
  %157 = phi i64 [ 0, %154 ], [ %161, %165 ], !dbg !1030
  call void @llvm.dbg.value(metadata i64 %157, metadata !835, metadata !DIExpression()) #11, !dbg !1028
  %158 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %157, !dbg !1032
  %159 = sub i64 30720, %157, !dbg !1032
  %160 = call i64 @fread_unlocked(i8* nonnull %158, i64 1, i64 %159, %struct._IO_FILE* %64) #11, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %160, metadata !836, metadata !DIExpression()) #11, !dbg !1033
  %161 = add i64 %160, %157, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %161, metadata !835, metadata !DIExpression()) #11, !dbg !1028
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !973, metadata !DIExpression()) #11, !dbg !1035
  %162 = load i32, i32* %150, align 8, !dbg !1037, !tbaa !963
  %163 = and i32 %162, 16, !dbg !1037
  %164 = icmp eq i32 %163, 0, !dbg !1038
  br i1 %164, label %165, label %170, !dbg !1039

; <label>:165:                                    ; preds = %156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !953, metadata !DIExpression()) #11, !dbg !1040
  %166 = and i32 %162, 32, !dbg !1042
  %167 = icmp eq i32 %166, 0, !dbg !1043
  %168 = icmp ult i64 %161, 30720, !dbg !1044
  %169 = and i1 %168, %167, !dbg !1045
  br i1 %169, label %156, label %170, !dbg !1045, !llvm.loop !1046

; <label>:170:                                    ; preds = %165, %156
  %171 = icmp eq i64 %161, 0, !dbg !1049
  br i1 %171, label %223, label %172, !dbg !1051

; <label>:172:                                    ; preds = %170
  %173 = add i64 %161, 2, !dbg !1052
  %174 = udiv i64 %173, 3, !dbg !1052
  %175 = shl i64 %174, 2, !dbg !1052
  call void @base64_encode(i8* nonnull %148, i64 %161, i8* nonnull %149, i64 %175) #11, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %149, metadata !1055, metadata !DIExpression()) #11, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %175, metadata !1060, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %22, metadata !1061, metadata !DIExpression()) #11, !dbg !1074
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1063, metadata !DIExpression()) #11, !dbg !1075
  br i1 %151, label %178, label %176, !dbg !1076

; <label>:176:                                    ; preds = %172
  call void @llvm.dbg.value(metadata i64 0, metadata !1064, metadata !DIExpression()) #11, !dbg !1077
  %177 = icmp eq i64 %175, 0, !dbg !1078
  br i1 %177, label %223, label %186, !dbg !1079

; <label>:178:                                    ; preds = %172
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1080, !tbaa !662
  %180 = call i64 @fwrite_unlocked(i8* nonnull %149, i64 1, i64 %175, %struct._IO_FILE* %179) #11, !dbg !1080
  %181 = icmp ult i64 %180, %175, !dbg !1083
  br i1 %181, label %182, label %223, !dbg !1084

; <label>:182:                                    ; preds = %178
  %183 = tail call i32* @__errno_location() #18, !dbg !1085
  %184 = load i32, i32* %183, align 4, !dbg !1085, !tbaa !870
  %185 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1085
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %184, i8* %185) #11, !dbg !1085
  unreachable, !dbg !1085

; <label>:186:                                    ; preds = %176, %219
  %187 = phi i64 [ %220, %219 ], [ %155, %176 ], !dbg !1086
  %188 = phi i64 [ %221, %219 ], [ 0, %176 ]
  call void @llvm.dbg.value(metadata i64 %188, metadata !1064, metadata !DIExpression()) #11, !dbg !1077
  %189 = sub i64 %22, %187, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %189, metadata !1065, metadata !DIExpression()) #11, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %189, metadata !1070, metadata !DIExpression()) #11, !dbg !1089
  %190 = sub i64 %175, %188, !dbg !1090
  %191 = icmp ult i64 %189, %190, !dbg !1090
  %192 = select i1 %191, i64 %189, i64 %190, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %192, metadata !1070, metadata !DIExpression()) #11, !dbg !1089
  %193 = icmp eq i64 %192, 0, !dbg !1091
  br i1 %193, label %194, label %207, !dbg !1093

; <label>:194:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i32 10, metadata !1094, metadata !DIExpression()) #11, !dbg !1100
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1099, metadata !DIExpression()) #11, !dbg !1104
  %195 = load i8*, i8** %152, align 8, !dbg !1105, !tbaa !1106
  %196 = load i8*, i8** %153, align 8, !dbg !1105, !tbaa !1107
  %197 = icmp ult i8* %195, %196, !dbg !1105
  br i1 %197, label %198, label %200, !dbg !1105, !prof !1108

; <label>:198:                                    ; preds = %194
  %199 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1105
  store i8* %199, i8** %152, align 8, !dbg !1105, !tbaa !1106
  store i8 10, i8* %195, align 1, !dbg !1105, !tbaa !935
  br label %219, !dbg !1109

; <label>:200:                                    ; preds = %194
  %201 = call i32 @__overflow(%struct._IO_FILE* nonnull %66, i32 10) #11, !dbg !1105
  %202 = icmp eq i32 %201, -1, !dbg !1110
  br i1 %202, label %203, label %219, !dbg !1109

; <label>:203:                                    ; preds = %200
  %204 = tail call i32* @__errno_location() #18, !dbg !1111
  %205 = load i32, i32* %204, align 4, !dbg !1111, !tbaa !870
  %206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1111
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %205, i8* %206) #11, !dbg !1111
  unreachable, !dbg !1111

; <label>:207:                                    ; preds = %186
  %208 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 %188, !dbg !1112
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1112, !tbaa !662
  %210 = call i64 @fwrite_unlocked(i8* nonnull %208, i64 1, i64 %192, %struct._IO_FILE* %209) #11, !dbg !1112
  %211 = icmp ult i64 %210, %192, !dbg !1115
  br i1 %211, label %212, label %216, !dbg !1116

; <label>:212:                                    ; preds = %207
  %213 = tail call i32* @__errno_location() #18, !dbg !1117
  %214 = load i32, i32* %213, align 4, !dbg !1117, !tbaa !870
  %215 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1117
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %214, i8* %215) #11, !dbg !1117
  unreachable, !dbg !1117

; <label>:216:                                    ; preds = %207
  %217 = add i64 %192, %187, !dbg !1118
  %218 = add i64 %192, %188, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %218, metadata !1064, metadata !DIExpression()) #11, !dbg !1077
  br label %219

; <label>:219:                                    ; preds = %216, %200, %198
  %220 = phi i64 [ %217, %216 ], [ 0, %200 ], [ 0, %198 ], !dbg !1086
  %221 = phi i64 [ %218, %216 ], [ %188, %200 ], [ %188, %198 ], !dbg !1120
  call void @llvm.dbg.value(metadata i64 %221, metadata !1064, metadata !DIExpression()) #11, !dbg !1077
  %222 = icmp ult i64 %221, %175, !dbg !1078
  br i1 %222, label %186, label %223, !dbg !1079, !llvm.loop !1121

; <label>:223:                                    ; preds = %219, %178, %176, %170
  %224 = phi i64 [ %155, %170 ], [ %155, %178 ], [ %155, %176 ], [ %220, %219 ], !dbg !1024
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !973, metadata !DIExpression()) #11, !dbg !1124
  %225 = load i32, i32* %150, align 8, !dbg !1126, !tbaa !963
  %226 = and i32 %225, 16, !dbg !1126
  %227 = icmp eq i32 %226, 0, !dbg !1127
  br i1 %227, label %228, label %233, !dbg !1128

; <label>:228:                                    ; preds = %223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !953, metadata !DIExpression()) #11, !dbg !1129
  %229 = and i32 %225, 32, !dbg !1131
  %230 = icmp eq i32 %229, 0, !dbg !1132
  %231 = icmp eq i64 %161, 30720, !dbg !1133
  %232 = and i1 %231, %230, !dbg !1134
  br i1 %232, label %154, label %233, !dbg !1134, !llvm.loop !1135

; <label>:233:                                    ; preds = %228, %223
  %234 = icmp ne i64 %22, 0, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %224, metadata !830, metadata !DIExpression()) #11, !dbg !1024
  %235 = icmp ne i64 %224, 0, !dbg !1140
  %236 = and i1 %234, %235, !dbg !1141
  br i1 %236, label %237, label %250, !dbg !1141

; <label>:237:                                    ; preds = %233
  call void @llvm.dbg.value(metadata i32 10, metadata !1094, metadata !DIExpression()) #11, !dbg !1142
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1099, metadata !DIExpression()) #11, !dbg !1144
  %238 = load i8*, i8** %152, align 8, !dbg !1145, !tbaa !1106
  %239 = load i8*, i8** %153, align 8, !dbg !1145, !tbaa !1107
  %240 = icmp ult i8* %238, %239, !dbg !1145
  br i1 %240, label %241, label %243, !dbg !1145, !prof !1108

; <label>:241:                                    ; preds = %237
  %242 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1145
  store i8* %242, i8** %152, align 8, !dbg !1145, !tbaa !1106
  store i8 10, i8* %238, align 1, !dbg !1145, !tbaa !935
  br label %250, !dbg !1146

; <label>:243:                                    ; preds = %237
  %244 = call i32 @__overflow(%struct._IO_FILE* nonnull %66, i32 10) #11, !dbg !1145
  %245 = icmp eq i32 %244, -1, !dbg !1147
  br i1 %245, label %246, label %250, !dbg !1146

; <label>:246:                                    ; preds = %243
  %247 = tail call i32* @__errno_location() #18, !dbg !1148
  %248 = load i32, i32* %247, align 4, !dbg !1148, !tbaa !870
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1148
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %248, i8* %249) #11, !dbg !1148
  unreachable, !dbg !1148

; <label>:250:                                    ; preds = %243, %241, %233
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !953, metadata !DIExpression()) #11, !dbg !1149
  %251 = load i32, i32* %150, align 8, !dbg !1152, !tbaa !963
  %252 = and i32 %251, 32, !dbg !1152
  %253 = icmp eq i32 %252, 0, !dbg !1153
  br i1 %253, label %258, label %254, !dbg !1154

; <label>:254:                                    ; preds = %250
  %255 = tail call i32* @__errno_location() #18, !dbg !1155
  %256 = load i32, i32* %255, align 4, !dbg !1155, !tbaa !870
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1155
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #11, !dbg !1155
  unreachable, !dbg !1155

; <label>:258:                                    ; preds = %250
  call void @llvm.lifetime.end.p0i8(i64 40960, i8* nonnull %149) #11, !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 30720, i8* nonnull %148) #11, !dbg !1156
  br label %259

; <label>:259:                                    ; preds = %258, %146
  %260 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %64) #11, !dbg !1157
  %261 = icmp eq i32 %260, -1, !dbg !1159
  br i1 %261, label %262, label %271, !dbg !1160

; <label>:262:                                    ; preds = %259
  %263 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !1161
  %264 = icmp eq i32 %263, 0, !dbg !1161
  %265 = tail call i32* @__errno_location() #18, !dbg !1164
  %266 = load i32, i32* %265, align 4, !dbg !1164, !tbaa !870
  br i1 %264, label %267, label %269, !dbg !1165

; <label>:267:                                    ; preds = %262
  %268 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1166
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %266, i8* %268) #11, !dbg !1166
  unreachable, !dbg !1166

; <label>:269:                                    ; preds = %262
  %270 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %51) #11, !dbg !1167
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %270) #11, !dbg !1167
  unreachable, !dbg !1167

; <label>:271:                                    ; preds = %259
  ret i32 0, !dbg !1168
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

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @base64_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #7 !dbg !1169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1175, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %1, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %2, metadata !1177, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %3, metadata !1178, metadata !DIExpression()), !dbg !1182
  %5 = and i64 %3, 3, !dbg !1183
  %6 = icmp eq i64 %5, 0, !dbg !1185
  br i1 %6, label %7, label %53, !dbg !1186

; <label>:7:                                      ; preds = %4
  %8 = lshr i64 %3, 2, !dbg !1187
  %9 = mul nuw i64 %8, 3, !dbg !1188
  %10 = icmp eq i64 %9, %1, !dbg !1189
  br i1 %10, label %11, label %53, !dbg !1190

; <label>:11:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %0, metadata !1191, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %1, metadata !1196, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %2, metadata !1197, metadata !DIExpression()), !dbg !1202
  %12 = icmp eq i64 %1, 0, !dbg !1203
  br i1 %12, label %135, label %13, !dbg !1203

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i8* [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi i8* [ %51, %13 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1197, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %15, metadata !1196, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %16, metadata !1191, metadata !DIExpression()), !dbg !1198
  %17 = load i8, i8* %16, align 1, !dbg !1204, !tbaa !935, !alias.scope !1206, !noalias !1209
  %18 = lshr i8 %17, 2, !dbg !1211
  %19 = zext i8 %18 to i64, !dbg !1212
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %19, !dbg !1212
  %21 = load i8, i8* %20, align 1, !dbg !1212, !tbaa !935, !noalias !1213
  %22 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %22, metadata !1197, metadata !DIExpression()), !dbg !1202
  store i8 %21, i8* %14, align 1, !dbg !1215, !tbaa !935, !alias.scope !1209, !noalias !1206
  %23 = zext i8 %17 to i64, !dbg !1216
  %24 = shl nuw nsw i64 %23, 4, !dbg !1217
  %25 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1218
  %26 = load i8, i8* %25, align 1, !dbg !1218, !tbaa !935, !alias.scope !1206, !noalias !1209
  %27 = lshr i8 %26, 4, !dbg !1219
  %28 = zext i8 %27 to i64, !dbg !1219
  %29 = and i64 %24, 48, !dbg !1220
  %30 = or i64 %29, %28, !dbg !1220
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %30, !dbg !1221
  %32 = load i8, i8* %31, align 1, !dbg !1221, !tbaa !935, !noalias !1213
  %33 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %33, metadata !1197, metadata !DIExpression()), !dbg !1202
  store i8 %32, i8* %22, align 1, !dbg !1223, !tbaa !935, !alias.scope !1209, !noalias !1206
  %34 = zext i8 %26 to i64, !dbg !1224
  %35 = shl nuw nsw i64 %34, 2, !dbg !1225
  %36 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1226
  %37 = load i8, i8* %36, align 1, !dbg !1226, !tbaa !935, !alias.scope !1206, !noalias !1209
  %38 = lshr i8 %37, 6, !dbg !1227
  %39 = zext i8 %38 to i64, !dbg !1227
  %40 = and i64 %35, 60, !dbg !1228
  %41 = or i64 %40, %39, !dbg !1228
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %41, !dbg !1229
  %43 = load i8, i8* %42, align 1, !dbg !1229, !tbaa !935, !noalias !1213
  %44 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %44, metadata !1197, metadata !DIExpression()), !dbg !1202
  store i8 %43, i8* %33, align 1, !dbg !1231, !tbaa !935, !alias.scope !1209, !noalias !1206
  %45 = and i8 %37, 63, !dbg !1232
  %46 = zext i8 %45 to i64, !dbg !1233
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %46, !dbg !1233
  %48 = load i8, i8* %47, align 1, !dbg !1233, !tbaa !935, !noalias !1213
  %49 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !1234
  store i8 %48, i8* %44, align 1, !dbg !1235, !tbaa !935, !alias.scope !1209, !noalias !1206
  %50 = add i64 %15, -3, !dbg !1236
  %51 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %49, metadata !1197, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %50, metadata !1196, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %51, metadata !1191, metadata !DIExpression()), !dbg !1198
  %52 = icmp eq i64 %50, 0, !dbg !1203
  br i1 %52, label %135, label %13, !dbg !1203, !llvm.loop !1238

; <label>:53:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %2, metadata !1177, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %1, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %0, metadata !1175, metadata !DIExpression()), !dbg !1179
  %54 = icmp ne i64 %1, 0, !dbg !1241
  %55 = icmp ne i64 %3, 0, !dbg !1242
  %56 = and i1 %54, %55, !dbg !1242
  br i1 %56, label %57, label %131, !dbg !1243

; <label>:57:                                     ; preds = %53, %124
  %58 = phi i64 [ %122, %124 ], [ %3, %53 ]
  %59 = phi i8* [ %125, %124 ], [ %2, %53 ]
  %60 = phi i64 [ %126, %124 ], [ %1, %53 ]
  %61 = phi i8* [ %130, %124 ], [ %0, %53 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %59, metadata !1177, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %60, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %61, metadata !1175, metadata !DIExpression()), !dbg !1179
  %62 = load i8, i8* %61, align 1, !dbg !1244, !tbaa !935
  %63 = lshr i8 %62, 2, !dbg !1246
  %64 = zext i8 %63 to i64, !dbg !1247
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %64, !dbg !1247
  %66 = load i8, i8* %65, align 1, !dbg !1247, !tbaa !935
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %67, metadata !1177, metadata !DIExpression()), !dbg !1181
  store i8 %66, i8* %59, align 1, !dbg !1249, !tbaa !935
  call void @llvm.dbg.value(metadata i64 %58, metadata !1178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1182
  %68 = icmp eq i64 %58, 1, !dbg !1250
  br i1 %68, label %135, label %69, !dbg !1252

; <label>:69:                                     ; preds = %57
  %70 = load i8, i8* %61, align 1, !dbg !1253, !tbaa !935
  %71 = zext i8 %70 to i64, !dbg !1254
  %72 = shl nuw nsw i64 %71, 4, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %60, metadata !1176, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %73 = icmp ne i64 %60, 1, !dbg !1256
  br i1 %73, label %74, label %79, !dbg !1256

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1257
  %76 = load i8, i8* %75, align 1, !dbg !1257, !tbaa !935
  %77 = lshr i8 %76, 4, !dbg !1258
  %78 = zext i8 %77 to i64, !dbg !1258
  br label %79, !dbg !1256

; <label>:79:                                     ; preds = %69, %74
  %80 = phi i64 [ %78, %74 ], [ 0, %69 ], !dbg !1256
  %81 = add nuw nsw i64 %80, %72, !dbg !1259
  %82 = and i64 %81, 63, !dbg !1260
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %82, !dbg !1261
  %84 = load i8, i8* %83, align 1, !dbg !1261, !tbaa !935
  %85 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %85, metadata !1177, metadata !DIExpression()), !dbg !1181
  store i8 %84, i8* %67, align 1, !dbg !1263, !tbaa !935
  call void @llvm.dbg.value(metadata i64 %58, metadata !1178, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1182
  %86 = icmp eq i64 %58, 2, !dbg !1264
  br i1 %86, label %135, label %87, !dbg !1266

; <label>:87:                                     ; preds = %79
  br i1 %73, label %88, label %106, !dbg !1267

; <label>:88:                                     ; preds = %87
  %89 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1268
  %90 = load i8, i8* %89, align 1, !dbg !1268, !tbaa !935
  %91 = zext i8 %90 to i64, !dbg !1269
  %92 = shl nuw nsw i64 %91, 2, !dbg !1270
  %93 = add i64 %60, -2, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %93, metadata !1176, metadata !DIExpression()), !dbg !1180
  %94 = icmp eq i64 %93, 0, !dbg !1271
  br i1 %94, label %100, label %95, !dbg !1271

; <label>:95:                                     ; preds = %88
  %96 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1272
  %97 = load i8, i8* %96, align 1, !dbg !1272, !tbaa !935
  %98 = lshr i8 %97, 6, !dbg !1273
  %99 = zext i8 %98 to i64, !dbg !1273
  br label %100, !dbg !1271

; <label>:100:                                    ; preds = %88, %95
  %101 = phi i64 [ %99, %95 ], [ 0, %88 ], !dbg !1271
  %102 = add nuw nsw i64 %101, %92, !dbg !1274
  %103 = and i64 %102, 63, !dbg !1275
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %103, !dbg !1276
  %105 = load i8, i8* %104, align 1, !dbg !1276, !tbaa !935
  br label %106, !dbg !1267

; <label>:106:                                    ; preds = %87, %100
  %107 = phi i64 [ %93, %100 ], [ 0, %87 ], !dbg !1277
  %108 = phi i8 [ %105, %100 ], [ 61, %87 ], !dbg !1267
  call void @llvm.dbg.value(metadata i64 %107, metadata !1176, metadata !DIExpression()), !dbg !1180
  %109 = getelementptr inbounds i8, i8* %59, i64 3, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %109, metadata !1177, metadata !DIExpression()), !dbg !1181
  store i8 %108, i8* %85, align 1, !dbg !1279, !tbaa !935
  call void @llvm.dbg.value(metadata i64 %58, metadata !1178, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1182
  %110 = icmp eq i64 %58, 3, !dbg !1280
  br i1 %110, label %135, label %111, !dbg !1282

; <label>:111:                                    ; preds = %106
  %112 = icmp ne i64 %107, 0, !dbg !1283
  br i1 %112, label %113, label %120, !dbg !1283

; <label>:113:                                    ; preds = %111
  %114 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1284
  %115 = load i8, i8* %114, align 1, !dbg !1284, !tbaa !935
  %116 = and i8 %115, 63, !dbg !1285
  %117 = zext i8 %116 to i64, !dbg !1286
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %117, !dbg !1286
  %119 = load i8, i8* %118, align 1, !dbg !1286, !tbaa !935
  br label %120, !dbg !1283

; <label>:120:                                    ; preds = %111, %113
  %121 = phi i8 [ %119, %113 ], [ 61, %111 ], !dbg !1283
  store i8 %121, i8* %109, align 1, !dbg !1287, !tbaa !935
  %122 = add i64 %58, -4, !dbg !1288
  %123 = icmp eq i64 %122, 0, !dbg !1288
  br i1 %123, label %135, label %124, !dbg !1290

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1291
  %126 = add i64 %107, -1, !dbg !1292
  %127 = icmp eq i64 %126, 0, !dbg !1294
  %128 = xor i1 %112, true, !dbg !1294
  %129 = or i1 %127, %128, !dbg !1294
  %130 = getelementptr inbounds i8, i8* %61, i64 3, !dbg !1296
  call void @llvm.dbg.value(metadata i8* %130, metadata !1175, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %122, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %125, metadata !1177, metadata !DIExpression()), !dbg !1181
  br i1 %129, label %133, label %57, !dbg !1243, !llvm.loop !1297

; <label>:131:                                    ; preds = %53
  call void @llvm.dbg.value(metadata i8* %2, metadata !1177, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %3, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 undef, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* undef, metadata !1177, metadata !DIExpression()), !dbg !1181
  %132 = icmp eq i64 %3, 0, !dbg !1299
  br i1 %132, label %135, label %133, !dbg !1301

; <label>:133:                                    ; preds = %124, %131
  %134 = phi i8* [ %2, %131 ], [ %125, %124 ]
  store i8 0, i8* %134, align 1, !dbg !1302, !tbaa !935
  br label %135, !dbg !1303

; <label>:135:                                    ; preds = %57, %79, %106, %120, %13, %11, %131, %133
  ret void, !dbg !1304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @base64_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #7 !dbg !1305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %1, metadata !1310, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8** %2, metadata !1311, metadata !DIExpression()), !dbg !1315
  %4 = add i64 %1, 2, !dbg !1316
  %5 = udiv i64 %4, 3, !dbg !1316
  %6 = shl i64 %5, 2, !dbg !1316
  %7 = or i64 %6, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %7, metadata !1312, metadata !DIExpression()), !dbg !1318
  %8 = icmp ult i64 %7, %1, !dbg !1319
  br i1 %8, label %9, label %10, !dbg !1321

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1322, !tbaa !662
  br label %14, !dbg !1324

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1325
  store i8* %11, i8** %2, align 8, !dbg !1326, !tbaa !662
  %12 = icmp eq i8* %11, null, !dbg !1327
  br i1 %12, label %14, label %13, !dbg !1329

; <label>:13:                                     ; preds = %10
  tail call void @base64_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1330
  br label %14, !dbg !1331

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1332
  ret i64 %15, !dbg !1333
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @isbase64(i8 signext) local_unnamed_addr #9 !dbg !1334 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1338, metadata !DIExpression()), !dbg !1339
  %2 = zext i8 %0 to i64, !dbg !1340
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %2, !dbg !1340
  %4 = load i8, i8* %3, align 1, !dbg !1340, !tbaa !935
  %5 = icmp sgt i8 %4, -1, !dbg !1341
  ret i1 %5, !dbg !1342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture) local_unnamed_addr #7 !dbg !1343 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1352, metadata !DIExpression()), !dbg !1353
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1354
  store i32 0, i32* %2, align 4, !dbg !1355, !tbaa !1356
  ret void, !dbg !1358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_ctx(%struct.base64_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #7 !dbg !1359 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1363, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8* %1, metadata !1364, metadata !DIExpression()), !dbg !1378
  %6 = ptrtoint i8* %1 to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %3, metadata !1366, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64* %4, metadata !1367, metadata !DIExpression()), !dbg !1381
  %7 = load i64, i64* %4, align 8, !dbg !1382, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %7, metadata !1368, metadata !DIExpression()), !dbg !1383
  %8 = icmp ne %struct.base64_decode_context* %0, null, !dbg !1384
  call void @llvm.dbg.value(metadata i8 0, metadata !1370, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 0, metadata !1371, metadata !DIExpression()), !dbg !1386
  %9 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0
  br i1 %8, label %10, label %14, !dbg !1387

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %9, align 4, !dbg !1388, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %11, metadata !1371, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %2, metadata !1365, metadata !DIExpression()), !dbg !1379
  %12 = icmp eq i64 %2, 0, !dbg !1391
  %13 = icmp ne i32 %11, 0, !dbg !1392
  br label %14, !dbg !1392

; <label>:14:                                     ; preds = %5, %10
  %15 = phi i1 [ %13, %10 ], [ false, %5 ]
  %16 = phi i1 [ %12, %10 ], [ false, %5 ]
  %17 = or i1 %15, %16
  %18 = xor i1 %8, true
  %19 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0
  br label %20, !dbg !1393

; <label>:20:                                     ; preds = %280, %14
  %21 = phi i64 [ %6, %14 ], [ %281, %280 ]
  %22 = phi i64 [ %2, %14 ], [ %282, %280 ]
  %23 = phi i8* [ %3, %14 ], [ %283, %280 ]
  %24 = phi i64 [ %7, %14 ], [ %284, %280 ], !dbg !1394
  call void @llvm.dbg.value(metadata i64 %24, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %24, metadata !1372, metadata !DIExpression()), !dbg !1395
  %25 = icmp ult i64 %22, 2, !dbg !1396
  %26 = or i1 %17, %25, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %24, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %24, metadata !1372, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %21, metadata !1364, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %22, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %21, metadata !1403, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %22, metadata !1404, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %23, metadata !1407, metadata !DIExpression()), !dbg !1416
  br i1 %26, label %118, label %27, !dbg !1413

; <label>:27:                                     ; preds = %20
  %28 = inttoptr i64 %21 to i8*
  br label %29, !dbg !1417

; <label>:29:                                     ; preds = %27, %109
  %30 = phi i8* [ %112, %109 ], [ %28, %27 ]
  %31 = phi i64 [ %110, %109 ], [ %24, %27 ]
  %32 = phi i8* [ %111, %109 ], [ %23, %27 ]
  %33 = phi i64 [ %114, %109 ], [ %22, %27 ]
  %34 = phi i64 [ %113, %109 ], [ %21, %27 ]
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %32, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  %35 = load i8, i8* %30, align 1, !dbg !1417, !tbaa !935, !alias.scope !1419
  call void @llvm.dbg.value(metadata i8 %35, metadata !1338, metadata !DIExpression()), !dbg !1422
  %36 = zext i8 %35 to i64, !dbg !1424
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %36, !dbg !1424
  %38 = load i8, i8* %37, align 1, !dbg !1424, !tbaa !935, !noalias !1419
  %39 = icmp sgt i8 %38, -1, !dbg !1425
  br i1 %39, label %40, label %129, !dbg !1426

; <label>:40:                                     ; preds = %29
  %41 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1427
  %42 = load i8, i8* %41, align 1, !dbg !1427, !tbaa !935, !alias.scope !1419
  call void @llvm.dbg.value(metadata i8 %42, metadata !1338, metadata !DIExpression()), !dbg !1428
  %43 = zext i8 %42 to i64, !dbg !1430
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %43, !dbg !1430
  %45 = load i8, i8* %44, align 1, !dbg !1430, !tbaa !935, !noalias !1419
  %46 = icmp sgt i8 %45, -1, !dbg !1431
  br i1 %46, label %47, label %129, !dbg !1432

; <label>:47:                                     ; preds = %40
  %48 = icmp eq i64 %31, 0, !dbg !1433
  br i1 %48, label %55, label %49, !dbg !1435

; <label>:49:                                     ; preds = %47
  %50 = shl i8 %38, 2, !dbg !1436
  %51 = lshr i8 %45, 4
  %52 = or i8 %51, %50, !dbg !1438
  %53 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %53, metadata !1407, metadata !DIExpression()), !dbg !1416
  store i8 %52, i8* %32, align 1, !dbg !1440, !tbaa !935, !noalias !1419
  %54 = add i64 %31, -1, !dbg !1441
  br label %55, !dbg !1442

; <label>:55:                                     ; preds = %49, %47
  %56 = phi i64 [ 0, %47 ], [ %54, %49 ], !dbg !1443
  %57 = phi i8* [ %32, %47 ], [ %53, %49 ], !dbg !1444
  call void @llvm.dbg.value(metadata i8* %57, metadata !1407, metadata !DIExpression()), !dbg !1416
  %58 = icmp eq i64 %33, 2, !dbg !1445
  br i1 %58, label %129, label %59, !dbg !1447

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !1448
  %61 = load i8, i8* %60, align 1, !dbg !1448, !tbaa !935, !alias.scope !1419
  %62 = icmp eq i8 %61, 61, !dbg !1450
  br i1 %62, label %63, label %69, !dbg !1451

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.value(metadata i8* %57, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %57, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %57, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %57, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  %64 = icmp eq i64 %33, 4, !dbg !1452
  br i1 %64, label %65, label %129, !dbg !1455

; <label>:65:                                     ; preds = %63
  %66 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !1456
  %67 = load i8, i8* %66, align 1, !dbg !1456, !tbaa !935, !alias.scope !1419
  %68 = icmp eq i8 %67, 61, !dbg !1458
  br i1 %68, label %104, label %129, !dbg !1459

; <label>:69:                                     ; preds = %59
  call void @llvm.dbg.value(metadata i8 %61, metadata !1338, metadata !DIExpression()), !dbg !1460
  %70 = zext i8 %61 to i64, !dbg !1464
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %70, !dbg !1464
  %72 = load i8, i8* %71, align 1, !dbg !1464, !tbaa !935, !noalias !1419
  %73 = icmp sgt i8 %72, -1, !dbg !1465
  br i1 %73, label %74, label %129, !dbg !1466

; <label>:74:                                     ; preds = %69
  %75 = icmp eq i64 %56, 0, !dbg !1467
  br i1 %75, label %82, label %76, !dbg !1469

; <label>:76:                                     ; preds = %74
  %77 = shl i8 %45, 4, !dbg !1470
  %78 = lshr i8 %72, 2
  %79 = or i8 %78, %77, !dbg !1472
  %80 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1473
  call void @llvm.dbg.value(metadata i8* %80, metadata !1407, metadata !DIExpression()), !dbg !1416
  store i8 %79, i8* %57, align 1, !dbg !1474, !tbaa !935, !noalias !1419
  %81 = add i64 %56, -1, !dbg !1475
  br label %82, !dbg !1476

; <label>:82:                                     ; preds = %76, %74
  %83 = phi i64 [ 0, %74 ], [ %81, %76 ], !dbg !1443
  %84 = phi i8* [ %57, %74 ], [ %80, %76 ], !dbg !1477
  call void @llvm.dbg.value(metadata i8* %84, metadata !1407, metadata !DIExpression()), !dbg !1416
  %85 = icmp eq i64 %33, 3, !dbg !1478
  br i1 %85, label %129, label %86, !dbg !1480

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !1481
  %88 = load i8, i8* %87, align 1, !dbg !1481, !tbaa !935, !alias.scope !1419
  %89 = icmp eq i8 %88, 61, !dbg !1483
  br i1 %89, label %90, label %92, !dbg !1484

; <label>:90:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i8* %84, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %84, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %84, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %84, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %31, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  %91 = icmp eq i64 %33, 4, !dbg !1485
  br i1 %91, label %104, label %129, !dbg !1488

; <label>:92:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i8 %88, metadata !1338, metadata !DIExpression()), !dbg !1489
  %93 = zext i8 %88 to i64, !dbg !1493
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %93, !dbg !1493
  %95 = load i8, i8* %94, align 1, !dbg !1493, !tbaa !935, !noalias !1419
  %96 = icmp sgt i8 %95, -1, !dbg !1494
  br i1 %96, label %97, label %129, !dbg !1495

; <label>:97:                                     ; preds = %92
  %98 = icmp eq i64 %83, 0, !dbg !1496
  br i1 %98, label %109, label %99, !dbg !1498

; <label>:99:                                     ; preds = %97
  %100 = shl i8 %72, 6, !dbg !1499
  %101 = or i8 %95, %100, !dbg !1501
  %102 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %102, metadata !1407, metadata !DIExpression()), !dbg !1416
  store i8 %101, i8* %84, align 1, !dbg !1503, !tbaa !935, !noalias !1419
  %103 = add i64 %83, -1, !dbg !1504
  br label %109, !dbg !1505

; <label>:104:                                    ; preds = %90, %65
  %105 = phi i64 [ %83, %90 ], [ %56, %65 ]
  %106 = phi i8* [ %84, %90 ], [ %57, %65 ]
  call void @llvm.dbg.value(metadata i8* %30, metadata !1364, metadata !DIExpression()), !dbg !1378
  %107 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !1506
  call void @llvm.dbg.value(metadata i8* %112, metadata !1364, metadata !DIExpression()), !dbg !1378
  %108 = ptrtoint i8* %107 to i64, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %110, metadata !1372, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %113, metadata !1364, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %114, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %113, metadata !1403, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %114, metadata !1404, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  br label %118, !dbg !1507

; <label>:109:                                    ; preds = %99, %97
  %110 = phi i64 [ %83, %97 ], [ %103, %99 ], !dbg !1443
  %111 = phi i8* [ %84, %97 ], [ %102, %99 ], !dbg !1508
  call void @llvm.dbg.value(metadata i8* %30, metadata !1364, metadata !DIExpression()), !dbg !1378
  %112 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !1506
  call void @llvm.dbg.value(metadata i8* %112, metadata !1364, metadata !DIExpression()), !dbg !1378
  %113 = ptrtoint i8* %112 to i64, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()), !dbg !1379
  %114 = add i64 %33, -4, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %110, metadata !1372, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %113, metadata !1364, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %114, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %113, metadata !1403, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %114, metadata !1404, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  %115 = icmp ult i64 %114, 2, !dbg !1396
  br i1 %115, label %116, label %29, !dbg !1507, !llvm.loop !1510

; <label>:116:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  %117 = ptrtoint i8* %112 to i64, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %110, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %111, metadata !1407, metadata !DIExpression()), !dbg !1416
  br label %118, !dbg !1513

; <label>:118:                                    ; preds = %116, %104, %20
  %119 = phi i64 [ %21, %20 ], [ %108, %104 ], [ %117, %116 ]
  %120 = phi i64 [ %22, %20 ], [ 0, %104 ], [ %114, %116 ]
  %121 = phi i8* [ %23, %20 ], [ %106, %104 ], [ %111, %116 ]
  %122 = phi i64 [ %24, %20 ], [ %105, %104 ], [ %110, %116 ], !dbg !1383
  call void @llvm.dbg.value(metadata i64 %122, metadata !1372, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %120, metadata !1365, metadata !DIExpression()), !dbg !1379
  %123 = icmp eq i64 %120, 0, !dbg !1513
  %124 = xor i1 %123, true, !dbg !1515
  %125 = or i1 %16, %124, !dbg !1515
  br i1 %125, label %126, label %285, !dbg !1515

; <label>:126:                                    ; preds = %118
  call void @llvm.dbg.value(metadata i64 %120, metadata !1365, metadata !DIExpression()), !dbg !1379
  br i1 %123, label %127, label %129, !dbg !1516

; <label>:127:                                    ; preds = %126
  %128 = inttoptr i64 %119 to i8*, !dbg !1518
  br label %143, !dbg !1516

; <label>:129:                                    ; preds = %92, %82, %69, %55, %29, %40, %90, %65, %63, %126
  %130 = phi i64 [ %119, %126 ], [ %34, %63 ], [ %34, %65 ], [ %34, %90 ], [ %34, %40 ], [ %34, %29 ], [ %34, %55 ], [ %34, %69 ], [ %34, %82 ], [ %34, %92 ]
  %131 = phi i64 [ %120, %126 ], [ %33, %63 ], [ 4, %65 ], [ %33, %90 ], [ %33, %92 ], [ 3, %82 ], [ %33, %69 ], [ 2, %55 ], [ %33, %29 ], [ %33, %40 ]
  %132 = phi i8* [ %121, %126 ], [ %57, %63 ], [ %57, %65 ], [ %84, %90 ], [ %84, %92 ], [ %84, %82 ], [ %57, %69 ], [ %57, %55 ], [ %32, %29 ], [ %32, %40 ]
  %133 = phi i64 [ %122, %126 ], [ %56, %63 ], [ %56, %65 ], [ %83, %90 ], [ %83, %92 ], [ %83, %82 ], [ %56, %69 ], [ %56, %55 ], [ %31, %29 ], [ %31, %40 ]
  %134 = phi i64 [ %122, %126 ], [ %31, %63 ], [ %31, %65 ], [ %31, %90 ], [ %31, %40 ], [ %31, %29 ], [ %31, %55 ], [ %31, %69 ], [ %31, %82 ], [ %31, %92 ]
  %135 = inttoptr i64 %130 to i8*, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %135, metadata !1364, metadata !DIExpression()), !dbg !1378
  %136 = load i8, i8* %135, align 1, !dbg !1520, !tbaa !935
  %137 = icmp ne i8 %136, 10, !dbg !1521
  %138 = or i1 %137, %18, !dbg !1522
  br i1 %138, label %143, label %139, !dbg !1522

; <label>:139:                                    ; preds = %129
  %140 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %140, metadata !1364, metadata !DIExpression()), !dbg !1378
  %141 = ptrtoint i8* %140 to i64, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %120, metadata !1365, metadata !DIExpression()), !dbg !1379
  %142 = add i64 %131, -1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %142, metadata !1365, metadata !DIExpression()), !dbg !1379
  br label %280, !dbg !1526

; <label>:143:                                    ; preds = %127, %129
  %144 = phi i8* [ %128, %127 ], [ %135, %129 ], !dbg !1518
  %145 = phi i64 [ %119, %127 ], [ %130, %129 ]
  %146 = phi i64 [ 0, %127 ], [ %131, %129 ]
  %147 = phi i8* [ %121, %127 ], [ %132, %129 ]
  %148 = phi i64 [ %122, %127 ], [ %133, %129 ]
  %149 = phi i64 [ %122, %127 ], [ %134, %129 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %121, metadata !1366, metadata !DIExpression()), !dbg !1380
  %150 = sub i64 %148, %149, !dbg !1527
  %151 = getelementptr inbounds i8, i8* %147, i64 %150, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %151, metadata !1366, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %122, metadata !1368, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %144, metadata !1364, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %120, metadata !1365, metadata !DIExpression()), !dbg !1379
  %152 = getelementptr inbounds i8, i8* %144, i64 %146, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %152, metadata !1374, metadata !DIExpression()), !dbg !1529
  br i1 %8, label %153, label %191, !dbg !1530

; <label>:153:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i8** undef, metadata !1364, metadata !DIExpression(DW_OP_deref)), !dbg !1378
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1531, metadata !DIExpression()) #11, !dbg !1547
  call void @llvm.dbg.value(metadata i8** undef, metadata !1537, metadata !DIExpression()) #11, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %152, metadata !1538, metadata !DIExpression()) #11, !dbg !1551
  %154 = load i32, i32* %9, align 4, !dbg !1552, !tbaa !1356, !noalias !1554
  switch i32 %154, label %166 [
    i32 4, label %155
    i32 0, label %156
  ], !dbg !1557

; <label>:155:                                    ; preds = %153
  store i32 0, i32* %9, align 4, !dbg !1558, !tbaa !1356, !noalias !1554
  br label %156, !dbg !1559

; <label>:156:                                    ; preds = %155, %153
  call void @llvm.dbg.value(metadata i8* %144, metadata !1540, metadata !DIExpression()) #11, !dbg !1560
  %157 = ptrtoint i8* %152 to i64, !dbg !1561
  %158 = sub i64 %157, %145, !dbg !1561
  %159 = icmp sgt i64 %158, 3, !dbg !1563
  br i1 %159, label %160, label %166, !dbg !1564

; <label>:160:                                    ; preds = %156
  %161 = tail call i8* @memchr(i8* %144, i32 10, i64 4) #15, !dbg !1565
  %162 = icmp eq i8* %161, null, !dbg !1566
  br i1 %162, label %163, label %166, !dbg !1567

; <label>:163:                                    ; preds = %160
  %164 = getelementptr inbounds i8, i8* %144, i64 4, !dbg !1568
  %165 = ptrtoint i8* %164 to i64, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %194, metadata !1376, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %193, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %193, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %194, metadata !1403, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %193, metadata !1404, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %151, metadata !1407, metadata !DIExpression()), !dbg !1575
  br label %202, !dbg !1576

; <label>:166:                                    ; preds = %153, %160, %156
  %167 = phi i32 [ 0, %160 ], [ 0, %156 ], [ %154, %153 ]
  call void @llvm.dbg.value(metadata i8* %144, metadata !1543, metadata !DIExpression()) #11, !dbg !1577
  %168 = icmp sgt i64 %146, 0, !dbg !1578
  br i1 %168, label %169, label %186, !dbg !1579

; <label>:169:                                    ; preds = %166, %177
  %170 = phi i32 [ %178, %177 ], [ %167, %166 ]
  %171 = phi i8* [ %174, %177 ], [ %144, %166 ]
  br label %172, !dbg !1580

; <label>:172:                                    ; preds = %169, %184
  %173 = phi i8* [ %174, %184 ], [ %171, %169 ]
  call void @llvm.dbg.value(metadata i8* %173, metadata !1543, metadata !DIExpression()) #11, !dbg !1577
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !1580
  %175 = load i8, i8* %173, align 1, !dbg !1581, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %175, metadata !1545, metadata !DIExpression()) #11, !dbg !1582
  %176 = icmp eq i8 %175, 10, !dbg !1583
  br i1 %176, label %184, label %177, !dbg !1585

; <label>:177:                                    ; preds = %172
  %178 = add i32 %170, 1, !dbg !1586
  store i32 %178, i32* %9, align 4, !dbg !1586, !tbaa !1356, !noalias !1554
  %179 = zext i32 %170 to i64, !dbg !1588
  %180 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %179, !dbg !1588
  store i8 %175, i8* %180, align 1, !dbg !1589, !tbaa !935, !noalias !1554
  %181 = icmp ne i32 %178, 4, !dbg !1590
  %182 = icmp ult i8* %174, %152, !dbg !1578
  %183 = and i1 %181, %182, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %174, metadata !1543, metadata !DIExpression()) #11, !dbg !1577
  br i1 %183, label %169, label %186, !dbg !1592

; <label>:184:                                    ; preds = %172
  call void @llvm.dbg.value(metadata i8* %174, metadata !1543, metadata !DIExpression()) #11, !dbg !1577
  %185 = icmp ult i8* %174, %152, !dbg !1578
  br i1 %185, label %172, label %186, !dbg !1579

; <label>:186:                                    ; preds = %184, %177, %166
  %187 = phi i32 [ %167, %166 ], [ %170, %184 ], [ %178, %177 ], !dbg !1593
  %188 = phi i8* [ %144, %166 ], [ %174, %177 ], [ %174, %184 ], !dbg !1594
  call void @llvm.dbg.value(metadata i8* %188, metadata !1543, metadata !DIExpression()) #11, !dbg !1577
  %189 = ptrtoint i8* %188 to i64, !dbg !1595
  %190 = zext i32 %187 to i64, !dbg !1596
  br label %191

; <label>:191:                                    ; preds = %186, %143
  %192 = phi i64 [ %145, %143 ], [ %189, %186 ]
  %193 = phi i64 [ %146, %143 ], [ %190, %186 ]
  %194 = phi i8* [ %144, %143 ], [ %19, %186 ], !dbg !1597
  call void @llvm.dbg.value(metadata i8* %194, metadata !1376, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %193, metadata !1365, metadata !DIExpression()), !dbg !1379
  %195 = icmp eq i64 %193, 0, !dbg !1598
  br i1 %195, label %285, label %196, !dbg !1600

; <label>:196:                                    ; preds = %191
  %197 = icmp ugt i64 %193, 3, !dbg !1601
  %198 = or i1 %16, %197, !dbg !1602
  %199 = or i1 %198, %18, !dbg !1602
  br i1 %199, label %200, label %285, !dbg !1602

; <label>:200:                                    ; preds = %196
  call void @llvm.dbg.value(metadata i64 %193, metadata !1365, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %194, metadata !1403, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %193, metadata !1404, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %151, metadata !1407, metadata !DIExpression()), !dbg !1575
  %201 = icmp ult i64 %193, 2, !dbg !1603
  br i1 %201, label %285, label %202, !dbg !1576

; <label>:202:                                    ; preds = %163, %200
  %203 = phi i8* [ %144, %163 ], [ %194, %200 ]
  %204 = phi i64 [ 4, %163 ], [ %193, %200 ]
  %205 = phi i64 [ %165, %163 ], [ %192, %200 ]
  %206 = load i8, i8* %203, align 1, !dbg !1604, !tbaa !935, !alias.scope !1605
  call void @llvm.dbg.value(metadata i8 %206, metadata !1338, metadata !DIExpression()), !dbg !1608
  %207 = zext i8 %206 to i64, !dbg !1610
  %208 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %207, !dbg !1610
  %209 = load i8, i8* %208, align 1, !dbg !1610, !tbaa !935, !noalias !1605
  %210 = icmp sgt i8 %209, -1, !dbg !1611
  br i1 %210, label %211, label %285, !dbg !1612

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1613
  %213 = load i8, i8* %212, align 1, !dbg !1613, !tbaa !935, !alias.scope !1605
  call void @llvm.dbg.value(metadata i8 %213, metadata !1338, metadata !DIExpression()), !dbg !1614
  %214 = zext i8 %213 to i64, !dbg !1616
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %214, !dbg !1616
  %216 = load i8, i8* %215, align 1, !dbg !1616, !tbaa !935, !noalias !1605
  %217 = icmp sgt i8 %216, -1, !dbg !1617
  br i1 %217, label %218, label %285, !dbg !1618

; <label>:218:                                    ; preds = %211
  %219 = icmp eq i64 %149, 0, !dbg !1619
  br i1 %219, label %226, label %220, !dbg !1620

; <label>:220:                                    ; preds = %218
  %221 = shl i8 %209, 2, !dbg !1621
  %222 = lshr i8 %216, 4
  %223 = or i8 %222, %221, !dbg !1622
  %224 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %224, metadata !1407, metadata !DIExpression()), !dbg !1575
  store i8 %223, i8* %151, align 1, !dbg !1624, !tbaa !935, !noalias !1605
  %225 = add i64 %149, -1, !dbg !1625
  br label %226, !dbg !1626

; <label>:226:                                    ; preds = %220, %218
  %227 = phi i64 [ 0, %218 ], [ %225, %220 ], !dbg !1627
  %228 = phi i8* [ %151, %218 ], [ %224, %220 ], !dbg !1628
  call void @llvm.dbg.value(metadata i8* %228, metadata !1407, metadata !DIExpression()), !dbg !1575
  %229 = icmp eq i64 %204, 2, !dbg !1629
  br i1 %229, label %285, label %230, !dbg !1630

; <label>:230:                                    ; preds = %226
  %231 = getelementptr inbounds i8, i8* %203, i64 2, !dbg !1631
  %232 = load i8, i8* %231, align 1, !dbg !1631, !tbaa !935, !alias.scope !1605
  %233 = icmp eq i8 %232, 61, !dbg !1632
  br i1 %233, label %234, label %240, !dbg !1633

; <label>:234:                                    ; preds = %230
  %235 = icmp eq i64 %204, 4, !dbg !1634
  br i1 %235, label %236, label %285, !dbg !1635

; <label>:236:                                    ; preds = %234
  %237 = getelementptr inbounds i8, i8* %203, i64 3, !dbg !1636
  %238 = load i8, i8* %237, align 1, !dbg !1636, !tbaa !935, !alias.scope !1605
  %239 = icmp eq i8 %238, 61, !dbg !1637
  br i1 %239, label %275, label %285, !dbg !1638

; <label>:240:                                    ; preds = %230
  call void @llvm.dbg.value(metadata i8 %232, metadata !1338, metadata !DIExpression()), !dbg !1639
  %241 = zext i8 %232 to i64, !dbg !1641
  %242 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %241, !dbg !1641
  %243 = load i8, i8* %242, align 1, !dbg !1641, !tbaa !935, !noalias !1605
  %244 = icmp sgt i8 %243, -1, !dbg !1642
  br i1 %244, label %245, label %285, !dbg !1643

; <label>:245:                                    ; preds = %240
  %246 = icmp eq i64 %227, 0, !dbg !1644
  br i1 %246, label %253, label %247, !dbg !1645

; <label>:247:                                    ; preds = %245
  %248 = shl i8 %216, 4, !dbg !1646
  %249 = lshr i8 %243, 2
  %250 = or i8 %249, %248, !dbg !1647
  %251 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %251, metadata !1407, metadata !DIExpression()), !dbg !1575
  store i8 %250, i8* %228, align 1, !dbg !1649, !tbaa !935, !noalias !1605
  %252 = add i64 %227, -1, !dbg !1650
  br label %253, !dbg !1651

; <label>:253:                                    ; preds = %247, %245
  %254 = phi i64 [ 0, %245 ], [ %252, %247 ], !dbg !1627
  %255 = phi i8* [ %228, %245 ], [ %251, %247 ], !dbg !1652
  call void @llvm.dbg.value(metadata i8* %255, metadata !1407, metadata !DIExpression()), !dbg !1575
  %256 = icmp eq i64 %204, 3, !dbg !1653
  br i1 %256, label %285, label %257, !dbg !1654

; <label>:257:                                    ; preds = %253
  %258 = getelementptr inbounds i8, i8* %203, i64 3, !dbg !1655
  %259 = load i8, i8* %258, align 1, !dbg !1655, !tbaa !935, !alias.scope !1605
  %260 = icmp eq i8 %259, 61, !dbg !1656
  br i1 %260, label %261, label %263, !dbg !1657

; <label>:261:                                    ; preds = %257
  %262 = icmp eq i64 %204, 4, !dbg !1658
  br i1 %262, label %275, label %285, !dbg !1659

; <label>:263:                                    ; preds = %257
  call void @llvm.dbg.value(metadata i8 %259, metadata !1338, metadata !DIExpression()), !dbg !1660
  %264 = zext i8 %259 to i64, !dbg !1662
  %265 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %264, !dbg !1662
  %266 = load i8, i8* %265, align 1, !dbg !1662, !tbaa !935, !noalias !1605
  %267 = icmp sgt i8 %266, -1, !dbg !1663
  br i1 %267, label %268, label %285, !dbg !1664

; <label>:268:                                    ; preds = %263
  %269 = icmp eq i64 %254, 0, !dbg !1665
  br i1 %269, label %275, label %270, !dbg !1666

; <label>:270:                                    ; preds = %268
  %271 = shl i8 %243, 6, !dbg !1667
  %272 = or i8 %266, %271, !dbg !1668
  %273 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %273, metadata !1407, metadata !DIExpression()), !dbg !1575
  store i8 %272, i8* %255, align 1, !dbg !1670, !tbaa !935, !noalias !1605
  %274 = add i64 %254, -1, !dbg !1671
  br label %275, !dbg !1672

; <label>:275:                                    ; preds = %270, %268, %261, %236
  %276 = phi i64 [ %227, %236 ], [ %254, %261 ], [ %254, %268 ], [ %274, %270 ], !dbg !1627
  %277 = phi i8* [ %228, %236 ], [ %255, %261 ], [ %255, %268 ], [ %273, %270 ], !dbg !1673
  call void @llvm.dbg.value(metadata i8* %277, metadata !1407, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8** undef, metadata !1364, metadata !DIExpression(DW_OP_deref)), !dbg !1378
  %278 = ptrtoint i8* %152 to i64, !dbg !1674
  %279 = sub i64 %278, %205, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %279, metadata !1365, metadata !DIExpression()), !dbg !1379
  br label %280, !dbg !1675

; <label>:280:                                    ; preds = %275, %139
  %281 = phi i64 [ %141, %139 ], [ %205, %275 ]
  %282 = phi i64 [ %142, %139 ], [ %279, %275 ]
  %283 = phi i8* [ %132, %139 ], [ %277, %275 ]
  %284 = phi i64 [ %133, %139 ], [ %276, %275 ]
  br label %20, !dbg !1383, !llvm.loop !1676

; <label>:285:                                    ; preds = %200, %211, %202, %226, %234, %236, %240, %253, %261, %263, %191, %196, %118
  %286 = phi i64 [ %122, %118 ], [ %149, %200 ], [ %149, %211 ], [ %149, %202 ], [ %227, %226 ], [ %227, %234 ], [ %227, %236 ], [ %227, %240 ], [ %254, %253 ], [ %254, %261 ], [ %254, %263 ], [ %149, %191 ], [ %149, %196 ]
  %287 = phi i64 [ %120, %118 ], [ 1, %200 ], [ %204, %211 ], [ %204, %202 ], [ 1, %226 ], [ %204, %234 ], [ 1, %236 ], [ %204, %240 ], [ 1, %253 ], [ %204, %261 ], [ %204, %263 ], [ 0, %191 ], [ 0, %196 ]
  %288 = load i64, i64* %4, align 8, !dbg !1678, !tbaa !924
  %289 = sub i64 %288, %286, !dbg !1678
  store i64 %289, i64* %4, align 8, !dbg !1678, !tbaa !924
  %290 = icmp eq i64 %287, 0, !dbg !1679
  ret i1 %290, !dbg !1680
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_alloc_ctx(%struct.base64_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #7 !dbg !1681 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1685, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1686, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %2, metadata !1687, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8** %3, metadata !1688, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64* %4, metadata !1689, metadata !DIExpression()), !dbg !1695
  %7 = bitcast i64* %6 to i8*, !dbg !1696
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1696
  %8 = lshr i64 %2, 2, !dbg !1697
  %9 = mul nuw i64 %8, 3, !dbg !1698
  %10 = add i64 %9, 3, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %10, metadata !1690, metadata !DIExpression()), !dbg !1700
  store i64 %10, i64* %6, align 8, !dbg !1700, !tbaa !924
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1701
  store i8* %11, i8** %3, align 8, !dbg !1702, !tbaa !662
  %12 = icmp eq i8* %11, null, !dbg !1703
  br i1 %12, label %21, label %13, !dbg !1705

; <label>:13:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1690, metadata !DIExpression(DW_OP_deref)), !dbg !1700
  %14 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1706
  br i1 %14, label %17, label %15, !dbg !1708

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1709, !tbaa !662
  tail call void @free(i8* %16) #11, !dbg !1711
  store i8* null, i8** %3, align 8, !dbg !1712, !tbaa !662
  br label %21, !dbg !1713

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1714
  br i1 %18, label %21, label %19, !dbg !1716

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1717, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %20, metadata !1690, metadata !DIExpression()), !dbg !1700
  store i64 %20, i64* %4, align 8, !dbg !1718, !tbaa !924
  br label %21, !dbg !1719

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ], !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1721
  ret i1 %22, !dbg !1721
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1722 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1724, metadata !DIExpression()), !dbg !1725
  store i8* %0, i8** @file_name, align 8, !dbg !1726, !tbaa !662
  ret void, !dbg !1727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1728 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1734, !tbaa !1735
  ret void, !dbg !1737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1738 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1743, !tbaa !662
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1744
  %3 = icmp eq i32 %2, 0, !dbg !1745
  br i1 %3, label %22, label %4, !dbg !1746

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1747, !tbaa !1735, !range !1748
  %6 = icmp eq i8 %5, 0, !dbg !1747
  br i1 %6, label %11, label %7, !dbg !1749

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !1750
  %9 = load i32, i32* %8, align 4, !dbg !1750, !tbaa !870
  %10 = icmp eq i32 %9, 32, !dbg !1751
  br i1 %10, label %22, label %11, !dbg !1752

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 5) #11, !dbg !1753
  call void @llvm.dbg.value(metadata i8* %12, metadata !1740, metadata !DIExpression()), !dbg !1754
  %13 = load i8*, i8** @file_name, align 8, !dbg !1755, !tbaa !662
  %14 = icmp eq i8* %13, null, !dbg !1755
  %15 = tail call i32* @__errno_location() #18, !dbg !1757
  %16 = load i32, i32* %15, align 4, !dbg !1757, !tbaa !870
  br i1 %14, label %19, label %17, !dbg !1758

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1759
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1760
  br label %20, !dbg !1760

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.57, i64 0, i64 0), i8* %12) #11, !dbg !1761
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1762, !tbaa !870
  tail call void @_exit(i32 %21) #16, !dbg !1763
  unreachable, !dbg !1763

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1764, !tbaa !662
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1766
  %25 = icmp eq i32 %24, 0, !dbg !1767
  br i1 %25, label %28, label %26, !dbg !1768

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1769, !tbaa !870
  tail call void @_exit(i32 %27) #16, !dbg !1770
  unreachable, !dbg !1770

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1771
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1780, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %1, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %2, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %3, metadata !1783, metadata !DIExpression()), !dbg !1789
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %5, metadata !1784, metadata !DIExpression()), !dbg !1790
  ret void, !dbg !1791
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1792 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 %1, metadata !1831, metadata !DIExpression()), !dbg !1833
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1834
  br i1 %3, label %7, label %4, !dbg !1836

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %5, metadata !1780, metadata !DIExpression()) #11, !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1781, metadata !DIExpression()) #11, !dbg !1840
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()) #11, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %1, metadata !1783, metadata !DIExpression()) #11, !dbg !1842
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %6, metadata !1784, metadata !DIExpression()) #11, !dbg !1843
  br label %7, !dbg !1844

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1845
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1846 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1848, metadata !DIExpression()), !dbg !1851
  %2 = icmp eq i8* %0, null, !dbg !1852
  br i1 %2, label %3, label %6, !dbg !1854

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1855, !tbaa !662
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1857
  tail call void @abort() #16, !dbg !1858
  unreachable, !dbg !1858

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %7, metadata !1849, metadata !DIExpression()), !dbg !1860
  %8 = icmp eq i8* %7, null, !dbg !1861
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1862
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %10, metadata !1850, metadata !DIExpression()), !dbg !1864
  %11 = ptrtoint i8* %10 to i64, !dbg !1865
  %12 = ptrtoint i8* %0 to i64, !dbg !1865
  %13 = sub i64 %11, %12, !dbg !1865
  %14 = icmp sgt i64 %13, 6, !dbg !1867
  br i1 %14, label %15, label %24, !dbg !1868

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1869
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #15, !dbg !1870
  %18 = icmp eq i32 %17, 0, !dbg !1871
  br i1 %18, label %19, label %24, !dbg !1872

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1848, metadata !DIExpression()), !dbg !1851
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #15, !dbg !1873
  %21 = icmp eq i32 %20, 0, !dbg !1876
  br i1 %21, label %22, label %24, !dbg !1877

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %23, metadata !1848, metadata !DIExpression()), !dbg !1851
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1880, !tbaa !662
  br label %24, !dbg !1881

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1848, metadata !DIExpression()), !dbg !1851
  store i8* %25, i8** @program_name, align 8, !dbg !1882, !tbaa !662
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1883, !tbaa !662
  ret void, !dbg !1884
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1885 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1890, metadata !DIExpression()), !dbg !1893
  %2 = tail call i32* @__errno_location() #18, !dbg !1894
  %3 = load i32, i32* %2, align 4, !dbg !1894, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %3, metadata !1891, metadata !DIExpression()), !dbg !1895
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1896
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1896
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1896
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1897
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1892, metadata !DIExpression()), !dbg !1898
  store i32 %3, i32* %2, align 4, !dbg !1899, !tbaa !870
  ret %struct.quoting_options* %8, !dbg !1900
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1901 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1907, metadata !DIExpression()), !dbg !1908
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1909
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1909
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1910
  %5 = load i32, i32* %4, align 8, !dbg !1910, !tbaa !1911
  ret i32 %5, !dbg !1913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1914 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i32 %1, metadata !1919, metadata !DIExpression()), !dbg !1921
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1922
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1922
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1923
  store i32 %1, i32* %5, align 8, !dbg !1924, !tbaa !1911
  ret void, !dbg !1925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1926 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1930, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %1, metadata !1931, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %2, metadata !1932, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %1, metadata !1933, metadata !DIExpression()), !dbg !1941
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1942
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1942
  %6 = lshr i8 %1, 5, !dbg !1943
  %7 = zext i8 %6 to i64, !dbg !1943
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1944
  call void @llvm.dbg.value(metadata i32* %8, metadata !1934, metadata !DIExpression()), !dbg !1945
  %9 = and i8 %1, 31, !dbg !1946
  %10 = zext i8 %9 to i32, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %10, metadata !1936, metadata !DIExpression()), !dbg !1947
  %11 = load i32, i32* %8, align 4, !dbg !1948, !tbaa !870
  %12 = lshr i32 %11, %10, !dbg !1949
  %13 = and i32 %12, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %13, metadata !1937, metadata !DIExpression()), !dbg !1951
  %14 = and i32 %2, 1, !dbg !1952
  %15 = xor i32 %13, %14, !dbg !1953
  %16 = shl i32 %15, %10, !dbg !1954
  %17 = xor i32 %16, %11, !dbg !1955
  store i32 %17, i32* %8, align 4, !dbg !1955, !tbaa !870
  ret i32 %13, !dbg !1956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1957 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1961, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %1, metadata !1962, metadata !DIExpression()), !dbg !1965
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1966
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1961, metadata !DIExpression()), !dbg !1964
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1969
  %6 = load i32, i32* %5, align 4, !dbg !1969, !tbaa !1970
  call void @llvm.dbg.value(metadata i32 %6, metadata !1963, metadata !DIExpression()), !dbg !1971
  store i32 %1, i32* %5, align 4, !dbg !1972, !tbaa !1970
  ret i32 %6, !dbg !1973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1974 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1978, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %1, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %2, metadata !1980, metadata !DIExpression()), !dbg !1983
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1984
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1978, metadata !DIExpression()), !dbg !1981
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1987
  store i32 10, i32* %6, align 8, !dbg !1988, !tbaa !1911
  %7 = icmp ne i8* %1, null, !dbg !1989
  %8 = icmp ne i8* %2, null, !dbg !1991
  %9 = and i1 %7, %8, !dbg !1992
  br i1 %9, label %11, label %10, !dbg !1992

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1993
  unreachable, !dbg !1993

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1994
  store i8* %1, i8** %12, align 8, !dbg !1995, !tbaa !1996
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1997
  store i8* %2, i8** %13, align 8, !dbg !1998, !tbaa !1999
  ret void, !dbg !2000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %2, metadata !2007, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %3, metadata !2008, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2009, metadata !DIExpression()), !dbg !2017
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2018
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2010, metadata !DIExpression()), !dbg !2019
  %8 = tail call i32* @__errno_location() #18, !dbg !2020
  %9 = load i32, i32* %8, align 4, !dbg !2020, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %9, metadata !2011, metadata !DIExpression()), !dbg !2021
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2022
  %11 = load i32, i32* %10, align 8, !dbg !2022, !tbaa !1911
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2023
  %13 = load i32, i32* %12, align 4, !dbg !2023, !tbaa !1970
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2024
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2025
  %16 = load i8*, i8** %15, align 8, !dbg !2025, !tbaa !1996
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2026
  %18 = load i8*, i8** %17, align 8, !dbg !2026, !tbaa !1999
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %19, metadata !2012, metadata !DIExpression()), !dbg !2028
  store i32 %9, i32* %8, align 4, !dbg !2029, !tbaa !870
  ret i64 %19, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2031 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2037, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i64 %1, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %2, metadata !2039, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %3, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %4, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %5, metadata !2042, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32* %6, metadata !2043, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8* %7, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %8, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8* null, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2111
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2112
  %14 = icmp eq i64 %13, 1, !dbg !2113
  %15 = lshr i32 %5, 1, !dbg !2114
  %16 = trunc i32 %15 to i8, !dbg !2114
  %17 = and i8 %16, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8 %17, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, metadata !2056, metadata !DIExpression()), !dbg !2117
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2118

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2108
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2109
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2110
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2111
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2119
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2115
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2116
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2117
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %39, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %38, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %37, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %36, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 %35, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %34, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %33, metadata !2050, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8* %32, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %31, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* %30, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %29, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %28, metadata !2041, metadata !DIExpression()), !dbg !2102
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
  ], !dbg !2121

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 %36, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 5, metadata !2041, metadata !DIExpression()), !dbg !2102
  br label %93, !dbg !2122

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 5, metadata !2041, metadata !DIExpression()), !dbg !2102
  %43 = and i8 %36, 1, !dbg !2123
  %44 = icmp eq i8 %43, 0, !dbg !2123
  br i1 %44, label %45, label %93, !dbg !2122

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2125
  br i1 %46, label %93, label %47, !dbg !2128

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2125, !tbaa !935
  br label %93, !dbg !2125

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %49, metadata !2044, metadata !DIExpression()), !dbg !2105
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %50, metadata !2045, metadata !DIExpression()), !dbg !2106
  br label %51, !dbg !2134

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %52, metadata !2044, metadata !DIExpression()), !dbg !2105
  %54 = and i8 %36, 1, !dbg !2135
  %55 = icmp eq i8 %54, 0, !dbg !2135
  br i1 %55, label %56, label %71, !dbg !2137

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2107
  %57 = load i8, i8* %52, align 1, !dbg !2138, !tbaa !935
  %58 = icmp eq i8 %57, 0, !dbg !2141
  br i1 %58, label %71, label %59, !dbg !2141

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %62, metadata !2047, metadata !DIExpression()), !dbg !2107
  %63 = icmp ult i64 %62, %40, !dbg !2142
  br i1 %63, label %64, label %66, !dbg !2145

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2142
  store i8 %60, i8* %65, align 1, !dbg !2142, !tbaa !935
  br label %66, !dbg !2142

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2145
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %68, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %67, metadata !2047, metadata !DIExpression()), !dbg !2107
  %69 = load i8, i8* %68, align 1, !dbg !2138, !tbaa !935
  %70 = icmp eq i8 %69, 0, !dbg !2141
  br i1 %70, label %71, label %59, !dbg !2141, !llvm.loop !2147

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2107
  call void @llvm.dbg.value(metadata i64 %72, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* %53, metadata !2049, metadata !DIExpression()), !dbg !2109
  %73 = call i64 @strlen(i8* %53) #15, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %73, metadata !2050, metadata !DIExpression()), !dbg !2110
  br label %93, !dbg !2150

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2111
  br label %75, !dbg !2151

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2119
  call void @llvm.dbg.value(metadata i8 %76, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2114
  br label %77, !dbg !2152

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2111
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2119
  call void @llvm.dbg.value(metadata i8 %79, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 %78, metadata !2051, metadata !DIExpression()), !dbg !2111
  %80 = and i8 %79, 1, !dbg !2153
  %81 = icmp eq i8 %80, 0, !dbg !2153
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2155
  br label %83, !dbg !2155

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2156
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2114
  call void @llvm.dbg.value(metadata i8 %85, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 %84, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  %86 = and i8 %85, 1, !dbg !2157
  %87 = icmp eq i8 %86, 0, !dbg !2157
  br i1 %87, label %88, label %93, !dbg !2159

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2160
  br i1 %89, label %93, label %90, !dbg !2163

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2160, !tbaa !935
  br label %93, !dbg !2160

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2114
  br label %93, !dbg !2164

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !2165
  unreachable, !dbg !2165

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2107
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], !dbg !2119
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2119
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2119
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %101, metadata !2053, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %99, metadata !2050, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %97, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2046, metadata !DIExpression()), !dbg !2167
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
  br label %121, !dbg !2168

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2169
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2107
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2108
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2115
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2116
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2117
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %125, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %122, metadata !2046, metadata !DIExpression()), !dbg !2167
  %130 = icmp eq i64 %125, -1, !dbg !2170
  br i1 %130, label %131, label %135, !dbg !2171

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2172
  %133 = load i8, i8* %132, align 1, !dbg !2172, !tbaa !935
  %134 = icmp eq i8 %133, 0, !dbg !2173
  br i1 %134, label %617, label %137, !dbg !2174

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2175
  br i1 %136, label %617, label %137, !dbg !2174

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2064, metadata !DIExpression()), !dbg !2178
  br i1 %107, label %138, label %153, !dbg !2179

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2181
  %140 = and i1 %108, %130, !dbg !2182
  br i1 %140, label %141, label %143, !dbg !2182

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %142, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %143, !dbg !2184

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2040, metadata !DIExpression()), !dbg !2101
  %145 = icmp ugt i64 %139, %144, !dbg !2185
  br i1 %145, label %153, label %146, !dbg !2186

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2187
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !2188
  %149 = icmp ne i32 %148, 0, !dbg !2189
  %150 = or i1 %149, %110, !dbg !2190
  %151 = xor i1 %149, true, !dbg !2190
  %152 = zext i1 %151 to i8, !dbg !2190
  br i1 %150, label %153, label %661, !dbg !2190

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2191
  call void @llvm.dbg.value(metadata i8 %155, metadata !2062, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %154, metadata !2040, metadata !DIExpression()), !dbg !2101
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2192
  %157 = load i8, i8* %156, align 1, !dbg !2192, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %157, metadata !2057, metadata !DIExpression()), !dbg !2193
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
  ], !dbg !2194

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2195

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2196

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2063, metadata !DIExpression()), !dbg !2177
  %161 = and i8 %126, 1, !dbg !2200
  %162 = icmp eq i8 %161, 0, !dbg !2200
  %163 = and i1 %114, %162, !dbg !2200
  br i1 %163, label %164, label %180, !dbg !2200

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2202
  br i1 %165, label %166, label %168, !dbg !2206

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2202
  store i8 39, i8* %167, align 1, !dbg !2202, !tbaa !935
  br label %168, !dbg !2202

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %169, metadata !2047, metadata !DIExpression()), !dbg !2107
  %170 = icmp ult i64 %169, %129, !dbg !2207
  br i1 %170, label %171, label %173, !dbg !2210

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2207
  store i8 36, i8* %172, align 1, !dbg !2207, !tbaa !935
  br label %173, !dbg !2207

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %174, metadata !2047, metadata !DIExpression()), !dbg !2107
  %175 = icmp ult i64 %174, %129, !dbg !2211
  br i1 %175, label %176, label %178, !dbg !2214

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2211
  store i8 39, i8* %177, align 1, !dbg !2211, !tbaa !935
  br label %178, !dbg !2211

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %179, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %180, !dbg !2215

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2166
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %182, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %181, metadata !2047, metadata !DIExpression()), !dbg !2107
  %183 = icmp ult i64 %181, %129, !dbg !2216
  br i1 %183, label %184, label %186, !dbg !2219

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2216
  store i8 92, i8* %185, align 1, !dbg !2216, !tbaa !935
  br label %186, !dbg !2216

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %187, metadata !2047, metadata !DIExpression()), !dbg !2107
  br i1 %104, label %188, label %478, !dbg !2220

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2222
  %190 = icmp ult i64 %189, %154, !dbg !2223
  br i1 %190, label %191, label %467, !dbg !2224

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2225
  %193 = load i8, i8* %192, align 1, !dbg !2225, !tbaa !935
  %194 = add i8 %193, -48, !dbg !2226
  %195 = icmp ult i8 %194, 10, !dbg !2226
  br i1 %195, label %196, label %467, !dbg !2226

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2227
  br i1 %197, label %198, label %200, !dbg !2231

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2227
  store i8 48, i8* %199, align 1, !dbg !2227, !tbaa !935
  br label %200, !dbg !2227

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %201, metadata !2047, metadata !DIExpression()), !dbg !2107
  %202 = icmp ult i64 %201, %129, !dbg !2232
  br i1 %202, label %203, label %205, !dbg !2235

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2232
  store i8 48, i8* %204, align 1, !dbg !2232, !tbaa !935
  br label %205, !dbg !2232

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %206, metadata !2047, metadata !DIExpression()), !dbg !2107
  br label %467, !dbg !2236

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2237

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2238

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2239

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2241

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2243
  %213 = icmp ult i64 %212, %154, !dbg !2244
  br i1 %213, label %214, label %467, !dbg !2245

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2246
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2247
  %217 = load i8, i8* %216, align 1, !dbg !2247, !tbaa !935
  %218 = icmp eq i8 %217, 63, !dbg !2248
  br i1 %218, label %219, label %467, !dbg !2249

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2250
  %221 = load i8, i8* %220, align 1, !dbg !2250, !tbaa !935
  %222 = sext i8 %221 to i32, !dbg !2250
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
  ], !dbg !2251

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2252

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %212, metadata !2046, metadata !DIExpression()), !dbg !2167
  %225 = icmp ult i64 %123, %129, !dbg !2254
  br i1 %225, label %226, label %228, !dbg !2257

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2254
  store i8 63, i8* %227, align 1, !dbg !2254, !tbaa !935
  br label %228, !dbg !2254

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %229, metadata !2047, metadata !DIExpression()), !dbg !2107
  %230 = icmp ult i64 %229, %129, !dbg !2258
  br i1 %230, label %231, label %233, !dbg !2261

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2258
  store i8 34, i8* %232, align 1, !dbg !2258, !tbaa !935
  br label %233, !dbg !2258

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %234, metadata !2047, metadata !DIExpression()), !dbg !2107
  %235 = icmp ult i64 %234, %129, !dbg !2262
  br i1 %235, label %236, label %238, !dbg !2265

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2262
  store i8 34, i8* %237, align 1, !dbg !2262, !tbaa !935
  br label %238, !dbg !2262

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %239, metadata !2047, metadata !DIExpression()), !dbg !2107
  %240 = icmp ult i64 %239, %129, !dbg !2266
  br i1 %240, label %241, label %243, !dbg !2269

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2266
  store i8 63, i8* %242, align 1, !dbg !2266, !tbaa !935
  br label %243, !dbg !2266

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %244, metadata !2047, metadata !DIExpression()), !dbg !2107
  br label %467, !dbg !2270

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2061, metadata !DIExpression()), !dbg !2271
  br label %255, !dbg !2272

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2061, metadata !DIExpression()), !dbg !2271
  br label %255, !dbg !2273

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2061, metadata !DIExpression()), !dbg !2271
  br label %253, !dbg !2274

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2061, metadata !DIExpression()), !dbg !2271
  br label %253, !dbg !2275

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2061, metadata !DIExpression()), !dbg !2271
  br label %255, !dbg !2276

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2061, metadata !DIExpression()), !dbg !2271
  br i1 %114, label %251, label %252, !dbg !2277

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2278

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2281

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8 %254, metadata !2061, metadata !DIExpression()), !dbg !2271
  br i1 %113, label %255, label %661, !dbg !2284

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8 %256, metadata !2061, metadata !DIExpression()), !dbg !2271
  br i1 %103, label %524, label %478, !dbg !2286

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2287
  br i1 %258, label %259, label %264, !dbg !2289

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2290, !tbaa !935
  %261 = icmp ne i8 %260, 0, !dbg !2291
  %262 = icmp ne i64 %122, 0, !dbg !2292
  %263 = or i1 %262, %261, !dbg !2294
  br i1 %263, label %467, label %270, !dbg !2294

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2295
  %266 = icmp ne i64 %122, 0, !dbg !2292
  %267 = or i1 %266, %265, !dbg !2289
  br i1 %267, label %467, label %270, !dbg !2289

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2292
  br i1 %269, label %270, label %467, !dbg !2296

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2064, metadata !DIExpression()), !dbg !2178
  br label %271, !dbg !2297

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8 %272, metadata !2064, metadata !DIExpression()), !dbg !2178
  br i1 %113, label %467, label %661, !dbg !2298

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, metadata !2064, metadata !DIExpression()), !dbg !2178
  br i1 %114, label %274, label %467, !dbg !2300

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2301

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2304
  %277 = icmp ne i64 %124, 0, !dbg !2306
  %278 = or i1 %277, %276, !dbg !2307
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2307
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %280, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %279, metadata !2048, metadata !DIExpression()), !dbg !2108
  %281 = icmp ult i64 %123, %280, !dbg !2308
  br i1 %281, label %282, label %284, !dbg !2311

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2308
  store i8 39, i8* %283, align 1, !dbg !2308, !tbaa !935
  br label %284, !dbg !2308

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %285, metadata !2047, metadata !DIExpression()), !dbg !2107
  %286 = icmp ult i64 %285, %280, !dbg !2312
  br i1 %286, label %287, label %289, !dbg !2315

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2312
  store i8 92, i8* %288, align 1, !dbg !2312, !tbaa !935
  br label %289, !dbg !2312

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %290, metadata !2047, metadata !DIExpression()), !dbg !2107
  %291 = icmp ult i64 %290, %280, !dbg !2316
  br i1 %291, label %292, label %294, !dbg !2319

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2316
  store i8 39, i8* %293, align 1, !dbg !2316, !tbaa !935
  br label %294, !dbg !2316

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %295, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %467, !dbg !2320

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2321

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2065, metadata !DIExpression()), !dbg !2322
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !2323
  %299 = load i16*, i16** %298, align 8, !dbg !2323, !tbaa !662
  %300 = zext i8 %157 to i64, !dbg !2323
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2323
  %302 = load i16, i16* %301, align 2, !dbg !2323, !tbaa !2325
  %303 = lshr i16 %302, 14, !dbg !2326
  %304 = trunc i16 %303 to i8, !dbg !2326
  %305 = and i8 %304, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i8 %305, metadata !2068, metadata !DIExpression()), !dbg !2327
  br label %359, !dbg !2328

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2329
  store i64 0, i64* %10, align 8, !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 1, metadata !2068, metadata !DIExpression()), !dbg !2327
  %307 = icmp eq i64 %154, -1, !dbg !2331
  br i1 %307, label %308, label %310, !dbg !2333

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %309, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %310, !dbg !2335

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2336
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  br label %312, !dbg !2337

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2338
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2339
  call void @llvm.dbg.value(metadata i8 %314, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2340
  %315 = add i64 %313, %122, !dbg !2341
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2342
  %317 = sub i64 %311, %315, !dbg !2343
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2069, metadata !DIExpression(DW_OP_deref)), !dbg !2344
  call void @llvm.dbg.value(metadata i32* %12, metadata !2084, metadata !DIExpression(DW_OP_deref)), !dbg !2345
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %318, metadata !2087, metadata !DIExpression()), !dbg !2347
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2348

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  %320 = icmp ugt i64 %311, %315, !dbg !2349
  br i1 %320, label %321, label %344, !dbg !2351

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2065, metadata !DIExpression()), !dbg !2322
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2352
  %325 = load i8, i8* %324, align 1, !dbg !2352, !tbaa !935
  %326 = icmp eq i8 %325, 0, !dbg !2351
  br i1 %326, label %344, label %327, !dbg !2353

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %328, metadata !2065, metadata !DIExpression()), !dbg !2322
  %329 = add i64 %328, %122, !dbg !2355
  %330 = icmp ult i64 %329, %311, !dbg !2349
  br i1 %330, label %321, label %344, !dbg !2351, !llvm.loop !2356

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2357
  %333 = and i1 %116, %332, !dbg !2360
  call void @llvm.dbg.value(metadata i64 1, metadata !2088, metadata !DIExpression()), !dbg !2361
  br i1 %333, label %334, label %347, !dbg !2360

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2088, metadata !DIExpression()), !dbg !2361
  %336 = add i64 %335, %315, !dbg !2362
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2363
  %338 = load i8, i8* %337, align 1, !dbg !2363, !tbaa !935
  %339 = sext i8 %338 to i32, !dbg !2363
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2364

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %341, metadata !2088, metadata !DIExpression()), !dbg !2361
  %342 = icmp ult i64 %341, %318, !dbg !2357
  br i1 %342, label %334, label %347, !dbg !2366, !llvm.loop !2367

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 %314, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %313, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 %314, metadata !2068, metadata !DIExpression()), !dbg !2327
  br label %344, !dbg !2369

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %352, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2369
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2370, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %348, metadata !2084, metadata !DIExpression()), !dbg !2345
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2372
  %350 = icmp eq i32 %349, 0, !dbg !2372
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2373
  call void @llvm.dbg.value(metadata i8 %351, metadata !2068, metadata !DIExpression()), !dbg !2327
  %352 = add i64 %318, %313, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %352, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 %351, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %352, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2069, metadata !DIExpression(DW_OP_deref)), !dbg !2344
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !2375
  %354 = icmp eq i32 %353, 0, !dbg !2376
  br i1 %354, label %312, label %355, !dbg !2377, !llvm.loop !2378

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2380
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %94, metadata !2041, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %311, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %351, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %352, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2380
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2381
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2382
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2382
  call void @llvm.dbg.value(metadata i8 %362, metadata !2068, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %361, metadata !2065, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %360, metadata !2040, metadata !DIExpression()), !dbg !2101
  %363 = and i8 %362, 1, !dbg !2383
  %364 = icmp ne i8 %363, 0, !dbg !2383
  call void @llvm.dbg.value(metadata i8 %363, metadata !2064, metadata !DIExpression()), !dbg !2178
  %365 = icmp ult i64 %361, 2, !dbg !2384
  %366 = or i1 %364, %115, !dbg !2385
  %367 = and i1 %365, %366, !dbg !2386
  br i1 %367, label %467, label %368, !dbg !2386

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %369, metadata !2095, metadata !DIExpression()), !dbg !2388
  br label %370, !dbg !2389

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2390
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2394
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2115
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2390
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2396
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2177
  call void @llvm.dbg.value(metadata i8 %376, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %375, metadata !2062, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %374, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %373, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %372, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %371, metadata !2046, metadata !DIExpression()), !dbg !2167
  br i1 %366, label %423, label %377, !dbg !2400

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2401

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2063, metadata !DIExpression()), !dbg !2177
  %379 = and i8 %373, 1, !dbg !2404
  %380 = icmp eq i8 %379, 0, !dbg !2404
  %381 = and i1 %114, %380, !dbg !2404
  br i1 %381, label %382, label %398, !dbg !2404

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2406
  br i1 %383, label %384, label %386, !dbg !2410

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2406
  store i8 39, i8* %385, align 1, !dbg !2406, !tbaa !935
  br label %386, !dbg !2406

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %387, metadata !2047, metadata !DIExpression()), !dbg !2107
  %388 = icmp ult i64 %387, %129, !dbg !2411
  br i1 %388, label %389, label %391, !dbg !2414

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2411
  store i8 36, i8* %390, align 1, !dbg !2411, !tbaa !935
  br label %391, !dbg !2411

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %392, metadata !2047, metadata !DIExpression()), !dbg !2107
  %393 = icmp ult i64 %392, %129, !dbg !2415
  br i1 %393, label %394, label %396, !dbg !2418

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2415
  store i8 39, i8* %395, align 1, !dbg !2415, !tbaa !935
  br label %396, !dbg !2415

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %397, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %398, !dbg !2419

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2166
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %400, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %399, metadata !2047, metadata !DIExpression()), !dbg !2107
  %401 = icmp ult i64 %399, %129, !dbg !2420
  br i1 %401, label %402, label %404, !dbg !2423

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2420
  store i8 92, i8* %403, align 1, !dbg !2420, !tbaa !935
  br label %404, !dbg !2420

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %405, metadata !2047, metadata !DIExpression()), !dbg !2107
  %406 = icmp ult i64 %405, %129, !dbg !2424
  br i1 %406, label %407, label %411, !dbg !2427

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2424
  %409 = or i8 %408, 48, !dbg !2424
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2424
  store i8 %409, i8* %410, align 1, !dbg !2424, !tbaa !935
  br label %411, !dbg !2424

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %412, metadata !2047, metadata !DIExpression()), !dbg !2107
  %413 = icmp ult i64 %412, %129, !dbg !2428
  br i1 %413, label %414, label %419, !dbg !2431

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2428
  %416 = and i8 %415, 7, !dbg !2428
  %417 = or i8 %416, 48, !dbg !2428
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2428
  store i8 %417, i8* %418, align 1, !dbg !2428, !tbaa !935
  br label %419, !dbg !2428

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %420, metadata !2047, metadata !DIExpression()), !dbg !2107
  %421 = and i8 %374, 7, !dbg !2432
  %422 = or i8 %421, 48, !dbg !2433
  call void @llvm.dbg.value(metadata i8 %422, metadata !2057, metadata !DIExpression()), !dbg !2193
  br label %432, !dbg !2434

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2435
  %425 = icmp eq i8 %424, 0, !dbg !2435
  br i1 %425, label %432, label %426, !dbg !2436

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2437
  br i1 %427, label %428, label %430, !dbg !2440

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2437
  store i8 92, i8* %429, align 1, !dbg !2437, !tbaa !935
  br label %430, !dbg !2437

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %431, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2176
  br label %432, !dbg !2441

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2442
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2115
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2443
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2444
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2446
  call void @llvm.dbg.value(metadata i8 %437, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %436, metadata !2062, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %435, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %434, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %433, metadata !2047, metadata !DIExpression()), !dbg !2107
  %438 = add i64 %371, 1, !dbg !2447
  %439 = icmp ugt i64 %369, %438, !dbg !2449
  br i1 %439, label %440, label %562, !dbg !2450

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2451
  %442 = icmp ne i8 %441, 0, !dbg !2451
  %443 = and i8 %437, 1, !dbg !2451
  %444 = icmp eq i8 %443, 0, !dbg !2451
  %445 = and i1 %442, %444, !dbg !2451
  br i1 %445, label %446, label %457, !dbg !2451

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2454
  br i1 %447, label %448, label %450, !dbg !2458

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2454
  store i8 39, i8* %449, align 1, !dbg !2454, !tbaa !935
  br label %450, !dbg !2454

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %451, metadata !2047, metadata !DIExpression()), !dbg !2107
  %452 = icmp ult i64 %451, %129, !dbg !2459
  br i1 %452, label %453, label %455, !dbg !2462

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2459
  store i8 39, i8* %454, align 1, !dbg !2459, !tbaa !935
  br label %455, !dbg !2459

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %456, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %457, !dbg !2463

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2464
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %459, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %458, metadata !2047, metadata !DIExpression()), !dbg !2107
  %460 = icmp ult i64 %458, %129, !dbg !2465
  br i1 %460, label %461, label %463, !dbg !2467

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2465
  store i8 %435, i8* %462, align 1, !dbg !2465, !tbaa !935
  br label %463, !dbg !2465

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %464, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %438, metadata !2046, metadata !DIExpression()), !dbg !2167
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2468
  %466 = load i8, i8* %465, align 1, !dbg !2468, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %466, metadata !2057, metadata !DIExpression()), !dbg !2193
  br label %370, !dbg !2469, !llvm.loop !2470

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2473
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2166
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2108
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2474
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2166
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2166
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2191
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2191
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2191
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %476, metadata !2064, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %475, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %155, metadata !2062, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %474, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %473, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %472, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %471, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %470, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %469, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %468, metadata !2046, metadata !DIExpression()), !dbg !2167
  br i1 %105, label %489, label %478, !dbg !2475

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
  br i1 %112, label %490, label %512, !dbg !2477

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2478

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
  %501 = lshr i8 %494, 5, !dbg !2479
  %502 = zext i8 %501 to i64, !dbg !2479
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2480
  %504 = load i32, i32* %503, align 4, !dbg !2480, !tbaa !870
  %505 = and i8 %494, 31, !dbg !2481
  %506 = zext i8 %505 to i32, !dbg !2481
  %507 = shl i32 1, %506, !dbg !2482
  %508 = and i32 %504, %507, !dbg !2482
  %509 = icmp eq i32 %508, 0, !dbg !2482
  %510 = icmp eq i8 %155, 0, !dbg !2483
  %511 = and i1 %510, %509, !dbg !2484
  br i1 %511, label %562, label %524, !dbg !2484

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
  %523 = icmp eq i8 %155, 0, !dbg !2483
  br i1 %523, label %562, label %524, !dbg !2485

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2486
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2166
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2108
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2474
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2115
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2116
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2487
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2191
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %532, metadata !2064, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %531, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %530, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %529, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %528, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %527, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %526, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %525, metadata !2046, metadata !DIExpression()), !dbg !2167
  br i1 %110, label %534, label %661, !dbg !2490

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2063, metadata !DIExpression()), !dbg !2177
  %535 = and i8 %529, 1, !dbg !2492
  %536 = icmp eq i8 %535, 0, !dbg !2492
  %537 = and i1 %114, %536, !dbg !2492
  br i1 %537, label %538, label %554, !dbg !2492

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2494
  br i1 %539, label %540, label %542, !dbg !2498

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2494
  store i8 39, i8* %541, align 1, !dbg !2494, !tbaa !935
  br label %542, !dbg !2494

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %543, metadata !2047, metadata !DIExpression()), !dbg !2107
  %544 = icmp ult i64 %543, %533, !dbg !2499
  br i1 %544, label %545, label %547, !dbg !2502

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2499
  store i8 36, i8* %546, align 1, !dbg !2499, !tbaa !935
  br label %547, !dbg !2499

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %548, metadata !2047, metadata !DIExpression()), !dbg !2107
  %549 = icmp ult i64 %548, %533, !dbg !2503
  br i1 %549, label %550, label %552, !dbg !2506

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2503
  store i8 39, i8* %551, align 1, !dbg !2503, !tbaa !935
  br label %552, !dbg !2503

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %553, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %554, !dbg !2507

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2464
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %556, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %555, metadata !2047, metadata !DIExpression()), !dbg !2107
  %557 = icmp ult i64 %555, %533, !dbg !2508
  br i1 %557, label %558, label %560, !dbg !2511

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2508
  store i8 92, i8* %559, align 1, !dbg !2508, !tbaa !935
  br label %560, !dbg !2508

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %561, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %572, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %571, metadata !2064, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %570, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %569, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %568, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %567, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %566, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %565, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %564, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %563, metadata !2046, metadata !DIExpression()), !dbg !2167
  br label %589, !dbg !2512

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2486
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2166
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2108
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2474
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2115
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2116
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2515
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2191
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2191
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %571, metadata !2064, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %570, metadata !2063, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %569, metadata !2057, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %568, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %567, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %566, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %565, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %564, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %563, metadata !2046, metadata !DIExpression()), !dbg !2167
  %573 = and i8 %567, 1, !dbg !2512
  %574 = icmp ne i8 %573, 0, !dbg !2512
  %575 = and i8 %570, 1, !dbg !2512
  %576 = icmp eq i8 %575, 0, !dbg !2512
  %577 = and i1 %574, %576, !dbg !2512
  br i1 %577, label %578, label %589, !dbg !2512

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2516
  br i1 %579, label %580, label %582, !dbg !2520

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2516
  store i8 39, i8* %581, align 1, !dbg !2516, !tbaa !935
  br label %582, !dbg !2516

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %583, metadata !2047, metadata !DIExpression()), !dbg !2107
  %584 = icmp ult i64 %583, %572, !dbg !2521
  br i1 %584, label %585, label %587, !dbg !2524

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2521
  store i8 39, i8* %586, align 1, !dbg !2521, !tbaa !935
  br label %587, !dbg !2521

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %588, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2115
  br label %589, !dbg !2525

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2464
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2166
  call void @llvm.dbg.value(metadata i8 %598, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %597, metadata !2047, metadata !DIExpression()), !dbg !2107
  %599 = icmp ult i64 %597, %590, !dbg !2526
  br i1 %599, label %600, label %602, !dbg !2529

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2526
  store i8 %592, i8* %601, align 1, !dbg !2526, !tbaa !935
  br label %602, !dbg !2526

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %603, metadata !2047, metadata !DIExpression()), !dbg !2107
  %604 = and i8 %591, 1, !dbg !2530
  %605 = icmp eq i8 %604, 0, !dbg !2530
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2532
  call void @llvm.dbg.value(metadata i8 %606, metadata !2056, metadata !DIExpression()), !dbg !2117
  br label %607, !dbg !2533

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2486
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2166
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2108
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2474
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2115
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2166
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2117
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %614, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %613, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %612, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %611, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %610, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %609, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %608, metadata !2046, metadata !DIExpression()), !dbg !2167
  %616 = add i64 %608, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %616, metadata !2046, metadata !DIExpression()), !dbg !2167
  br label %121, !dbg !2535, !llvm.loop !2536

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %125, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %126, metadata !2054, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %127, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 %128, metadata !2056, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  %619 = icmp eq i64 %123, 0, !dbg !2538
  %620 = and i1 %114, %619, !dbg !2540
  %621 = xor i1 %620, true, !dbg !2540
  %622 = or i1 %110, %621, !dbg !2540
  br i1 %622, label %623, label %661, !dbg !2540

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2541
  %625 = xor i1 %624, true, !dbg !2541
  %626 = and i8 %127, 1, !dbg !2543
  %627 = icmp eq i8 %626, 0, !dbg !2543
  %628 = or i1 %627, %625, !dbg !2541
  br i1 %628, label %638, label %629, !dbg !2541

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2544
  %631 = icmp eq i8 %630, 0, !dbg !2544
  br i1 %631, label %634, label %632, !dbg !2547

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %618, metadata !2040, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2044, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %96, metadata !2045, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %124, metadata !2048, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %125, metadata !2040, metadata !DIExpression()), !dbg !2101
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2548
  br label %671, !dbg !2549

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2550
  %636 = icmp ne i64 %124, 0, !dbg !2552
  %637 = and i1 %636, %635, !dbg !2553
  br i1 %637, label %27, label %638, !dbg !2553

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %129, metadata !2038, metadata !DIExpression()), !dbg !2099
  %639 = icmp ne i8* %98, null, !dbg !2554
  %640 = and i1 %639, %110, !dbg !2556
  br i1 %640, label %641, label %656, !dbg !2556

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %123, metadata !2047, metadata !DIExpression()), !dbg !2107
  %642 = load i8, i8* %98, align 1, !dbg !2557, !tbaa !935
  %643 = icmp eq i8 %642, 0, !dbg !2560
  br i1 %643, label %656, label %644, !dbg !2560

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %647, metadata !2047, metadata !DIExpression()), !dbg !2107
  %648 = icmp ult i64 %647, %129, !dbg !2561
  br i1 %648, label %649, label %651, !dbg !2564

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2561
  store i8 %645, i8* %650, align 1, !dbg !2561, !tbaa !935
  br label %651, !dbg !2561

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2564
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %653, metadata !2049, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %652, metadata !2047, metadata !DIExpression()), !dbg !2107
  %654 = load i8, i8* %653, align 1, !dbg !2557, !tbaa !935
  %655 = icmp eq i8 %654, 0, !dbg !2560
  br i1 %655, label %656, label %644, !dbg !2560, !llvm.loop !2566

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2107
  call void @llvm.dbg.value(metadata i64 %657, metadata !2047, metadata !DIExpression()), !dbg !2107
  %658 = icmp ult i64 %657, %129, !dbg !2568
  br i1 %658, label %659, label %671, !dbg !2570

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2571
  store i8 0, i8* %660, align 1, !dbg !2572, !tbaa !935
  br label %671, !dbg !2571

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2038, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %663, metadata !2040, metadata !DIExpression()), !dbg !2101
  %665 = icmp ne i32 %662, 2, !dbg !2573
  %666 = icmp eq i8 %102, 0, !dbg !2575
  %667 = or i1 %665, %666, !dbg !2576
  call void @llvm.dbg.value(metadata i32 4, metadata !2041, metadata !DIExpression()), !dbg !2102
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %668, metadata !2041, metadata !DIExpression()), !dbg !2102
  %669 = and i32 %5, -3, !dbg !2577
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2578
  br label %671, !dbg !2579

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2580
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %1, metadata !2586, metadata !DIExpression()), !dbg !2590
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %3, metadata !2587, metadata !DIExpression()), !dbg !2592
  %4 = icmp eq i8* %3, %0, !dbg !2593
  br i1 %4, label %5, label %71, !dbg !2595

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %6, metadata !2588, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %6, metadata !2598, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8* null, metadata !2604, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 85, metadata !2605, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8 84, metadata !2606, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 70, metadata !2607, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 45, metadata !2608, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 56, metadata !2609, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 0, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 0, metadata !2612, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2613, metadata !DIExpression()), !dbg !2626
  %7 = load i8, i8* %6, align 1, !dbg !2627, !tbaa !935
  %8 = and i8 %7, -33, !dbg !2627
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2627

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2629, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8* null, metadata !2634, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 84, metadata !2635, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 70, metadata !2636, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 45, metadata !2637, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 56, metadata !2638, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2639, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 0, metadata !2640, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2655
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2656
  %11 = load i8, i8* %10, align 1, !dbg !2656, !tbaa !935
  %12 = and i8 %11, -33, !dbg !2656
  %13 = icmp eq i8 %12, 84, !dbg !2656
  br i1 %13, label %14, label %68, !dbg !2656

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2658, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* null, metadata !2663, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 70, metadata !2664, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 45, metadata !2665, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 56, metadata !2666, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2667, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2670, metadata !DIExpression()), !dbg !2682
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2683
  %16 = load i8, i8* %15, align 1, !dbg !2683, !tbaa !935
  %17 = and i8 %16, -33, !dbg !2683
  %18 = icmp eq i8 %17, 70, !dbg !2683
  br i1 %18, label %19, label %68, !dbg !2683

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2685, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* null, metadata !2690, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 45, metadata !2691, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 56, metadata !2692, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2707
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2708
  %21 = load i8, i8* %20, align 1, !dbg !2708, !tbaa !935
  %22 = icmp eq i8 %21, 45, !dbg !2708
  br i1 %22, label %23, label %68, !dbg !2710

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2711, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* null, metadata !2716, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 56, metadata !2717, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8 0, metadata !2719, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2731
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2732
  %25 = load i8, i8* %24, align 1, !dbg !2732, !tbaa !935
  %26 = icmp eq i8 %25, 56, !dbg !2732
  br i1 %26, label %27, label %68, !dbg !2734

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2735, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* null, metadata !2740, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 0, metadata !2741, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2753
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2754
  %29 = load i8, i8* %28, align 1, !dbg !2754, !tbaa !935
  %30 = icmp eq i8 %29, 0, !dbg !2754
  br i1 %30, label %31, label %68, !dbg !2756

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2757, !tbaa !935
  %33 = icmp eq i8 %32, 96, !dbg !2758
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2757
  br label %71, !dbg !2759

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2629, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* null, metadata !2634, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 66, metadata !2635, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 49, metadata !2636, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 56, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 48, metadata !2638, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 51, metadata !2639, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 48, metadata !2640, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2772
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2773
  %37 = load i8, i8* %36, align 1, !dbg !2773, !tbaa !935
  %38 = and i8 %37, -33, !dbg !2773
  %39 = icmp eq i8 %38, 66, !dbg !2773
  br i1 %39, label %40, label %68, !dbg !2773

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2658, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8* null, metadata !2663, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 49, metadata !2664, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 56, metadata !2665, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 48, metadata !2666, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8 51, metadata !2667, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8 48, metadata !2668, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2670, metadata !DIExpression()), !dbg !2783
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2784
  %42 = load i8, i8* %41, align 1, !dbg !2784, !tbaa !935
  %43 = icmp eq i8 %42, 49, !dbg !2784
  br i1 %43, label %44, label %68, !dbg !2785

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2685, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* null, metadata !2690, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 56, metadata !2691, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 48, metadata !2692, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 51, metadata !2693, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 48, metadata !2694, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2794
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2795
  %46 = load i8, i8* %45, align 1, !dbg !2795, !tbaa !935
  %47 = icmp eq i8 %46, 56, !dbg !2795
  br i1 %47, label %48, label %68, !dbg !2796

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2711, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* null, metadata !2716, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 48, metadata !2717, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 51, metadata !2718, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8 48, metadata !2719, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2804
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2805
  %50 = load i8, i8* %49, align 1, !dbg !2805, !tbaa !935
  %51 = icmp eq i8 %50, 48, !dbg !2805
  br i1 %51, label %52, label %68, !dbg !2806

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2735, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* null, metadata !2740, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 51, metadata !2741, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 48, metadata !2742, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2813
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2814
  %54 = load i8, i8* %53, align 1, !dbg !2814, !tbaa !935
  %55 = icmp eq i8 %54, 51, !dbg !2814
  br i1 %55, label %56, label %68, !dbg !2815

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2816, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* null, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8 48, metadata !2822, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 0, metadata !2823, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2832
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2833
  %58 = load i8, i8* %57, align 1, !dbg !2833, !tbaa !935
  %59 = icmp eq i8 %58, 48, !dbg !2833
  br i1 %59, label %60, label %68, !dbg !2835

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2836, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* null, metadata !2841, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2850
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2851
  %62 = load i8, i8* %61, align 1, !dbg !2851, !tbaa !935
  %63 = icmp eq i8 %62, 0, !dbg !2851
  br i1 %63, label %64, label %68, !dbg !2853

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2854, !tbaa !935
  %66 = icmp eq i8 %65, 96, !dbg !2855
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2854
  br label %71, !dbg !2856

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2857
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2858
  br label %71, !dbg !2859

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2860
  ret i8* %72, !dbg !2861
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %0, metadata !2872, metadata !DIExpression()) #11, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()) #11, !dbg !2887
  call void @llvm.dbg.value(metadata i64* null, metadata !2878, metadata !DIExpression()) #11, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2879, metadata !DIExpression()) #11, !dbg !2889
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2890
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2880, metadata !DIExpression()) #11, !dbg !2891
  %6 = tail call i32* @__errno_location() #18, !dbg !2892
  %7 = load i32, i32* %6, align 4, !dbg !2892, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %7, metadata !2881, metadata !DIExpression()) #11, !dbg !2893
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2894
  %9 = load i32, i32* %8, align 4, !dbg !2894, !tbaa !1970
  %10 = or i32 %9, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %10, metadata !2882, metadata !DIExpression()) #11, !dbg !2896
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2897
  %12 = load i32, i32* %11, align 8, !dbg !2897, !tbaa !1911
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2898
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2899
  %15 = load i8*, i8** %14, align 8, !dbg !2899, !tbaa !1996
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2900
  %17 = load i8*, i8** %16, align 8, !dbg !2900, !tbaa !1999
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2901
  %19 = add i64 %18, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %19, metadata !2883, metadata !DIExpression()) #11, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %19, metadata !2904, metadata !DIExpression()) #11, !dbg !2909
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %20, metadata !2884, metadata !DIExpression()) #11, !dbg !2912
  %21 = load i32, i32* %11, align 8, !dbg !2913, !tbaa !1911
  %22 = load i8*, i8** %14, align 8, !dbg !2914, !tbaa !1996
  %23 = load i8*, i8** %16, align 8, !dbg !2915, !tbaa !1999
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2916
  store i32 %7, i32* %6, align 4, !dbg !2917, !tbaa !870
  ret i8* %20, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2872, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64* %2, metadata !2878, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2879, metadata !DIExpression()), !dbg !2922
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2923
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2880, metadata !DIExpression()), !dbg !2924
  %7 = tail call i32* @__errno_location() #18, !dbg !2925
  %8 = load i32, i32* %7, align 4, !dbg !2925, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %8, metadata !2881, metadata !DIExpression()), !dbg !2926
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2927
  %10 = load i32, i32* %9, align 4, !dbg !2927, !tbaa !1970
  %11 = icmp ne i64* %2, null, !dbg !2928
  %12 = xor i1 %11, true, !dbg !2928
  %13 = zext i1 %12 to i32, !dbg !2928
  %14 = or i32 %10, %13, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %14, metadata !2882, metadata !DIExpression()), !dbg !2930
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2931
  %16 = load i32, i32* %15, align 8, !dbg !2931, !tbaa !1911
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2932
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2933
  %19 = load i8*, i8** %18, align 8, !dbg !2933, !tbaa !1996
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2934
  %21 = load i8*, i8** %20, align 8, !dbg !2934, !tbaa !1999
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2935
  %23 = add i64 %22, 1, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %23, metadata !2883, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %23, metadata !2904, metadata !DIExpression()) #11, !dbg !2938
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %24, metadata !2884, metadata !DIExpression()), !dbg !2941
  %25 = load i32, i32* %15, align 8, !dbg !2942, !tbaa !1911
  %26 = load i8*, i8** %18, align 8, !dbg !2943, !tbaa !1996
  %27 = load i8*, i8** %20, align 8, !dbg !2944, !tbaa !1999
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2945
  store i32 %8, i32* %7, align 4, !dbg !2946, !tbaa !870
  br i1 %11, label %29, label %30, !dbg !2947

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2948, !tbaa !924
  br label %30, !dbg !2950

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2952 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2956, !tbaa !662
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2954, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 1, metadata !2955, metadata !DIExpression()), !dbg !2958
  %2 = load i32, i32* @nslots, align 4, !dbg !2959, !tbaa !870
  %3 = icmp sgt i32 %2, 1, !dbg !2962
  br i1 %3, label %4, label %12, !dbg !2963

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2955, metadata !DIExpression()), !dbg !2958
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2964
  %7 = load i8*, i8** %6, align 8, !dbg !2964, !tbaa !2965
  tail call void @free(i8* %7) #11, !dbg !2967
  %8 = add nuw nsw i64 %5, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i32 undef, metadata !2955, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2958
  %9 = load i32, i32* @nslots, align 4, !dbg !2959, !tbaa !870
  %10 = sext i32 %9 to i64, !dbg !2962
  %11 = icmp slt i64 %8, %10, !dbg !2962
  br i1 %11, label %4, label %12, !dbg !2963, !llvm.loop !2969

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2971
  %14 = load i8*, i8** %13, align 8, !dbg !2971, !tbaa !2965
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2973
  br i1 %15, label %17, label %16, !dbg !2974

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2975
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2977, !tbaa !2978
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2979, !tbaa !2965
  br label %17, !dbg !2980

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2981
  br i1 %18, label %21, label %19, !dbg !2983

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2984
  tail call void @free(i8* %20) #11, !dbg !2986
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2987, !tbaa !662
  br label %21, !dbg !2988

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2989, !tbaa !870
  ret void, !dbg !2990
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2991 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2996, metadata !DIExpression()), !dbg !2998
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2999
  ret i8* %3, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8* %1, metadata !3006, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %2, metadata !3007, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3008, metadata !DIExpression()), !dbg !3023
  %5 = tail call i32* @__errno_location() #18, !dbg !3024
  %6 = load i32, i32* %5, align 4, !dbg !3024, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %6, metadata !3009, metadata !DIExpression()), !dbg !3025
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3026, !tbaa !662
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3010, metadata !DIExpression()), !dbg !3027
  %8 = icmp slt i32 %0, 0, !dbg !3028
  br i1 %8, label %9, label %10, !dbg !3030

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3031
  unreachable, !dbg !3031

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3032, !tbaa !870
  %12 = icmp sgt i32 %11, %0, !dbg !3033
  br i1 %12, label %34, label %13, !dbg !3034

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3035
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3014, metadata !DIExpression()), !dbg !3036
  %15 = icmp eq i32 %0, 2147483647, !dbg !3037
  br i1 %15, label %16, label %17, !dbg !3039

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3040
  unreachable, !dbg !3040

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3041
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3041
  %20 = add nsw i32 %0, 1, !dbg !3042
  %21 = sext i32 %20 to i64, !dbg !3043
  %22 = shl nsw i64 %21, 4, !dbg !3044
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3045
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3010, metadata !DIExpression()), !dbg !3027
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3046, !tbaa !662
  br i1 %14, label %25, label %26, !dbg !3047

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3048, !tbaa.struct !3050
  br label %26, !dbg !3051

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3052, !tbaa !870
  %28 = sext i32 %27 to i64, !dbg !3053
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3053
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3054
  %31 = sub nsw i32 %20, %27, !dbg !3055
  %32 = sext i32 %31 to i64, !dbg !3056
  %33 = shl nsw i64 %32, 4, !dbg !3057
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3054
  store i32 %20, i32* @nslots, align 4, !dbg !3058, !tbaa !870
  br label %34, !dbg !3059

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3060
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3010, metadata !DIExpression()), !dbg !3027
  %36 = sext i32 %0 to i64, !dbg !3061
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3062
  %38 = load i64, i64* %37, align 8, !dbg !3062, !tbaa !2978
  call void @llvm.dbg.value(metadata i64 %38, metadata !3015, metadata !DIExpression()), !dbg !3063
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3064
  %40 = load i8*, i8** %39, align 8, !dbg !3064, !tbaa !2965
  call void @llvm.dbg.value(metadata i8* %40, metadata !3017, metadata !DIExpression()), !dbg !3065
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3066
  %42 = load i32, i32* %41, align 4, !dbg !3066, !tbaa !1970
  %43 = or i32 %42, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %43, metadata !3018, metadata !DIExpression()), !dbg !3068
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3069
  %45 = load i32, i32* %44, align 8, !dbg !3069, !tbaa !1911
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3070
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3071
  %48 = load i8*, i8** %47, align 8, !dbg !3071, !tbaa !1996
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3072
  %50 = load i8*, i8** %49, align 8, !dbg !3072, !tbaa !1999
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %51, metadata !3019, metadata !DIExpression()), !dbg !3074
  %52 = icmp ugt i64 %38, %51, !dbg !3075
  br i1 %52, label %63, label %53, !dbg !3077

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %54, metadata !3015, metadata !DIExpression()), !dbg !3063
  store i64 %54, i64* %37, align 8, !dbg !3080, !tbaa !2978
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3081
  br i1 %55, label %57, label %56, !dbg !3083

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3084
  br label %57, !dbg !3084

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2904, metadata !DIExpression()) #11, !dbg !3085
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %58, metadata !3017, metadata !DIExpression()), !dbg !3065
  store i8* %58, i8** %39, align 8, !dbg !3088, !tbaa !2965
  %59 = load i32, i32* %44, align 8, !dbg !3089, !tbaa !1911
  %60 = load i8*, i8** %47, align 8, !dbg !3090, !tbaa !1996
  %61 = load i8*, i8** %49, align 8, !dbg !3091, !tbaa !1999
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3092
  br label %63, !dbg !3093

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3094
  call void @llvm.dbg.value(metadata i8* %64, metadata !3017, metadata !DIExpression()), !dbg !3065
  store i32 %6, i32* %5, align 4, !dbg !3095, !tbaa !870
  ret i8* %64, !dbg !3096
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %2, metadata !3103, metadata !DIExpression()), !dbg !3106
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3107
  ret i8* %4, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 0, metadata !2995, metadata !DIExpression()) #11, !dbg !3115
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()) #11, !dbg !3117
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3118
  ret i8* %2, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %1, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression()) #11, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #11, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()) #11, !dbg !3131
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3132
  ret i8* %3, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3134 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %1, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %2, metadata !3140, metadata !DIExpression()), !dbg !3144
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3141, metadata !DIExpression(DW_OP_deref)), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()) #11, !dbg !3153
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3155, !alias.scope !3156
  %6 = icmp eq i32 %1, 10, !dbg !3159
  br i1 %6, label %7, label %8, !dbg !3161

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3162, !noalias !3156
  unreachable, !dbg !3162

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3163
  store i32 %1, i32* %9, align 8, !dbg !3164, !tbaa !1911, !alias.scope !3156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3141, metadata !DIExpression(DW_OP_deref)), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3152, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3166
  ret i8* %10, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3168 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %1, metadata !3173, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8* %2, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %3, metadata !3175, metadata !DIExpression()), !dbg !3180
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3181
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()) #11, !dbg !3183
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3185, !alias.scope !3186
  %7 = icmp eq i32 %1, 10, !dbg !3189
  br i1 %7, label %8, label %9, !dbg !3190

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3191, !noalias !3186
  unreachable, !dbg !3191

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3192
  store i32 %1, i32* %10, align 8, !dbg !3193, !tbaa !1911, !alias.scope !3186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3152, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3195
  ret i8* %11, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3197 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8* %1, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression()) #11, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()) #11, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()) #11, !dbg !3208
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3209
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3141, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()) #11, !dbg !3211
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3213, !alias.scope !3214
  %5 = icmp eq i32 %0, 10, !dbg !3217
  br i1 %5, label %6, label %7, !dbg !3218

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3219, !noalias !3214
  unreachable, !dbg !3219

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3220
  store i32 %0, i32* %8, align 8, !dbg !3221, !tbaa !1911, !alias.scope !3214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3141, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3152, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3213
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3222
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3223
  ret i8* %9, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3225 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %2, metadata !3231, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3172, metadata !DIExpression()) #11, !dbg !3235
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()) #11, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !3174, metadata !DIExpression()) #11, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %2, metadata !3175, metadata !DIExpression()) #11, !dbg !3239
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3240
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3240
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()) #11, !dbg !3242
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3244, !alias.scope !3245
  %6 = icmp eq i32 %0, 10, !dbg !3248
  br i1 %6, label %7, label %8, !dbg !3249

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3250, !noalias !3245
  unreachable, !dbg !3250

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3251
  store i32 %0, i32* %9, align 8, !dbg !3252, !tbaa !1911, !alias.scope !3245
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3152, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3244
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3254
  ret i8* %10, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3256 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8 %2, metadata !3262, metadata !DIExpression()), !dbg !3266
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3268, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1930, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %2, metadata !1931, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 1, metadata !1932, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 %2, metadata !1933, metadata !DIExpression()), !dbg !3275
  %6 = lshr i8 %2, 5, !dbg !3276
  %7 = zext i8 %6 to i64, !dbg !3276
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3277
  call void @llvm.dbg.value(metadata i32* %8, metadata !1934, metadata !DIExpression()), !dbg !3278
  %9 = and i8 %2, 31, !dbg !3279
  %10 = zext i8 %9 to i32, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %10, metadata !1936, metadata !DIExpression()), !dbg !3280
  %11 = load i32, i32* %8, align 4, !dbg !3281, !tbaa !870
  %12 = lshr i32 %11, %10, !dbg !3282
  %13 = and i32 %12, 1, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %13, metadata !1937, metadata !DIExpression()), !dbg !3284
  %14 = xor i32 %13, 1, !dbg !3285
  %15 = shl i32 %14, %10, !dbg !3286
  %16 = xor i32 %15, %11, !dbg !3287
  store i32 %16, i32* %8, align 4, !dbg !3287, !tbaa !870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3270
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3288
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3289
  ret i8* %17, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3291 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 %1, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #11, !dbg !3299
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #11, !dbg !3301
  call void @llvm.dbg.value(metadata i8 %1, metadata !3262, metadata !DIExpression()) #11, !dbg !3302
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3303
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3304, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1930, metadata !DIExpression()) #11, !dbg !3306
  call void @llvm.dbg.value(metadata i8 %1, metadata !1931, metadata !DIExpression()) #11, !dbg !3308
  call void @llvm.dbg.value(metadata i32 1, metadata !1932, metadata !DIExpression()) #11, !dbg !3309
  call void @llvm.dbg.value(metadata i8 %1, metadata !1933, metadata !DIExpression()) #11, !dbg !3310
  %5 = lshr i8 %1, 5, !dbg !3311
  %6 = zext i8 %5 to i64, !dbg !3311
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3312
  call void @llvm.dbg.value(metadata i32* %7, metadata !1934, metadata !DIExpression()) #11, !dbg !3313
  %8 = and i8 %1, 31, !dbg !3314
  %9 = zext i8 %8 to i32, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %9, metadata !1936, metadata !DIExpression()) #11, !dbg !3315
  %10 = load i32, i32* %7, align 4, !dbg !3316, !tbaa !870
  %11 = lshr i32 %10, %9, !dbg !3317
  %12 = and i32 %11, 1, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %12, metadata !1937, metadata !DIExpression()) #11, !dbg !3319
  %13 = xor i32 %12, 1, !dbg !3320
  %14 = shl i32 %13, %9, !dbg !3321
  %15 = xor i32 %14, %10, !dbg !3322
  store i32 %15, i32* %7, align 4, !dbg !3322, !tbaa !870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3305
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3323
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3324
  ret i8* %16, !dbg !3325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3326 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* %0, metadata !3295, metadata !DIExpression()) #11, !dbg !3330
  call void @llvm.dbg.value(metadata i8 58, metadata !3296, metadata !DIExpression()) #11, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #11, !dbg !3333
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #11, !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !3262, metadata !DIExpression()) #11, !dbg !3336
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3338, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1930, metadata !DIExpression()) #11, !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !1931, metadata !DIExpression()) #11, !dbg !3342
  call void @llvm.dbg.value(metadata i32 1, metadata !1932, metadata !DIExpression()) #11, !dbg !3343
  call void @llvm.dbg.value(metadata i8 58, metadata !1933, metadata !DIExpression()) #11, !dbg !3344
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3345
  call void @llvm.dbg.value(metadata i32* %4, metadata !1934, metadata !DIExpression()) #11, !dbg !3346
  call void @llvm.dbg.value(metadata i32 26, metadata !1936, metadata !DIExpression()) #11, !dbg !3347
  %5 = load i32, i32* %4, align 4, !dbg !3348, !tbaa !870
  %6 = or i32 %5, 67108864, !dbg !3349
  store i32 %6, i32* %4, align 4, !dbg !3349, !tbaa !870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3339
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3350
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3351
  ret i8* %7, !dbg !3352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3353 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %1, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #11, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()) #11, !dbg !3361
  call void @llvm.dbg.value(metadata i8 58, metadata !3262, metadata !DIExpression()) #11, !dbg !3362
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3363
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3364, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1930, metadata !DIExpression()) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i8 58, metadata !1931, metadata !DIExpression()) #11, !dbg !3368
  call void @llvm.dbg.value(metadata i32 1, metadata !1932, metadata !DIExpression()) #11, !dbg !3369
  call void @llvm.dbg.value(metadata i8 58, metadata !1933, metadata !DIExpression()) #11, !dbg !3370
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3371
  call void @llvm.dbg.value(metadata i32* %5, metadata !1934, metadata !DIExpression()) #11, !dbg !3372
  call void @llvm.dbg.value(metadata i32 26, metadata !1936, metadata !DIExpression()) #11, !dbg !3373
  %6 = load i32, i32* %5, align 4, !dbg !3374, !tbaa !870
  %7 = or i32 %6, 67108864, !dbg !3375
  store i32 %7, i32* %5, align 4, !dbg !3375, !tbaa !870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3365
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3377
  ret i8* %8, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3379 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3385
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %1, metadata !3382, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i8* %2, metadata !3383, metadata !DIExpression()), !dbg !3389
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3390
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3390
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3391
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()) #11, !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3385
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3385, !alias.scope !3393
  %8 = icmp eq i32 %1, 10, !dbg !3396
  br i1 %8, label %9, label %10, !dbg !3397

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3398, !noalias !3393
  unreachable, !dbg !3398

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3385
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3391
  store i32 %1, i32* %11, align 8, !dbg !3391
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3391
  %13 = bitcast i32* %12 to i8*, !dbg !3391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3384, metadata !DIExpression(DW_OP_deref)), !dbg !3399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1930, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8 58, metadata !1931, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 1, metadata !1932, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 58, metadata !1933, metadata !DIExpression()), !dbg !3404
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3405
  call void @llvm.dbg.value(metadata i32* %14, metadata !1934, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 26, metadata !1936, metadata !DIExpression()), !dbg !3407
  %15 = load i32, i32* %14, align 4, !dbg !3408, !tbaa !870
  %16 = or i32 %15, 67108864, !dbg !3409
  store i32 %16, i32* %14, align 4, !dbg !3409, !tbaa !870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3384, metadata !DIExpression(DW_OP_deref)), !dbg !3399
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3410
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3411
  ret i8* %17, !dbg !3412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3413 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3417, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3418, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8* %2, metadata !3419, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %3, metadata !3420, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %0, metadata !3425, metadata !DIExpression()) #11, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()) #11, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %2, metadata !3431, metadata !DIExpression()) #11, !dbg !3438
  call void @llvm.dbg.value(metadata i8* %3, metadata !3432, metadata !DIExpression()) #11, !dbg !3439
  call void @llvm.dbg.value(metadata i64 -1, metadata !3433, metadata !DIExpression()) #11, !dbg !3440
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3442, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1978, metadata !DIExpression()) #11, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !1979, metadata !DIExpression()) #11, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %2, metadata !1980, metadata !DIExpression()) #11, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1978, metadata !DIExpression()) #11, !dbg !3444
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3448
  store i32 10, i32* %7, align 8, !dbg !3449, !tbaa !1911
  %8 = icmp ne i8* %1, null, !dbg !3450
  %9 = icmp ne i8* %2, null, !dbg !3451
  %10 = and i1 %8, %9, !dbg !3452
  br i1 %10, label %12, label %11, !dbg !3452

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3453
  unreachable, !dbg !3453

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3454
  store i8* %1, i8** %13, align 8, !dbg !3455, !tbaa !1996
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3456
  store i8* %2, i8** %14, align 8, !dbg !3457, !tbaa !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3443
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3459
  ret i8* %15, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3426 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3425, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %2, metadata !3431, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3432, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %4, metadata !3433, metadata !DIExpression()), !dbg !3465
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3467, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3434, metadata !DIExpression(DW_OP_deref)), !dbg !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1978, metadata !DIExpression()) #11, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %1, metadata !1979, metadata !DIExpression()) #11, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %2, metadata !1980, metadata !DIExpression()) #11, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1978, metadata !DIExpression()) #11, !dbg !3469
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3473
  store i32 10, i32* %8, align 8, !dbg !3474, !tbaa !1911
  %9 = icmp ne i8* %1, null, !dbg !3475
  %10 = icmp ne i8* %2, null, !dbg !3476
  %11 = and i1 %9, %10, !dbg !3477
  br i1 %11, label %13, label %12, !dbg !3477

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3478
  unreachable, !dbg !3478

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3479
  store i8* %1, i8** %14, align 8, !dbg !3480, !tbaa !1996
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3481
  store i8* %2, i8** %15, align 8, !dbg !3482, !tbaa !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3434, metadata !DIExpression(DW_OP_deref)), !dbg !3468
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3484
  ret i8* %16, !dbg !3485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3486 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3417, metadata !DIExpression()) #11, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %0, metadata !3418, metadata !DIExpression()) #11, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %1, metadata !3419, metadata !DIExpression()) #11, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !3420, metadata !DIExpression()) #11, !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()) #11, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()) #11, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()) #11, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()) #11, !dbg !3505
  call void @llvm.dbg.value(metadata i64 -1, metadata !3433, metadata !DIExpression()) #11, !dbg !3506
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3507
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3508, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1978, metadata !DIExpression()) #11, !dbg !3510
  call void @llvm.dbg.value(metadata i8* %0, metadata !1979, metadata !DIExpression()) #11, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %1, metadata !1980, metadata !DIExpression()) #11, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1978, metadata !DIExpression()) #11, !dbg !3510
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3514
  store i32 10, i32* %6, align 8, !dbg !3515, !tbaa !1911
  %7 = icmp ne i8* %0, null, !dbg !3516
  %8 = icmp ne i8* %1, null, !dbg !3517
  %9 = and i1 %7, %8, !dbg !3518
  br i1 %9, label %11, label %10, !dbg !3518

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3519
  unreachable, !dbg !3519

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3520
  store i8* %0, i8** %12, align 8, !dbg !3521, !tbaa !1996
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3522
  store i8* %1, i8** %13, align 8, !dbg !3523, !tbaa !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3509
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3525
  ret i8* %14, !dbg !3526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3527 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3532, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8* %2, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %3, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()) #11, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()) #11, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()) #11, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()) #11, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %3, metadata !3433, metadata !DIExpression()) #11, !dbg !3544
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3545
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3546, !tbaa.struct !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1978, metadata !DIExpression()) #11, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !1979, metadata !DIExpression()) #11, !dbg !3550
  call void @llvm.dbg.value(metadata i8* %1, metadata !1980, metadata !DIExpression()) #11, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1978, metadata !DIExpression()) #11, !dbg !3548
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3552
  store i32 10, i32* %7, align 8, !dbg !3553, !tbaa !1911
  %8 = icmp ne i8* %0, null, !dbg !3554
  %9 = icmp ne i8* %1, null, !dbg !3555
  %10 = and i1 %8, %9, !dbg !3556
  br i1 %10, label %12, label %11, !dbg !3556

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3557
  unreachable, !dbg !3557

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3558
  store i8* %0, i8** %13, align 8, !dbg !3559, !tbaa !1996
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3560
  store i8* %1, i8** %14, align 8, !dbg !3561, !tbaa !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3434, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3547
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3562
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3563
  ret i8* %15, !dbg !3564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %1, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %2, metadata !3571, metadata !DIExpression()), !dbg !3574
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3575
  ret i8* %4, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3581, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %1, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()) #11, !dbg !3585
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()) #11, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()) #11, !dbg !3588
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3589
  ret i8* %3, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !3596, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()) #11, !dbg !3599
  call void @llvm.dbg.value(metadata i8* %1, metadata !3570, metadata !DIExpression()) #11, !dbg !3601
  call void @llvm.dbg.value(metadata i64 -1, metadata !3571, metadata !DIExpression()) #11, !dbg !3602
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3603
  ret i8* %3, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3605 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #11, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !3596, metadata !DIExpression()) #11, !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()) #11, !dbg !3614
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()) #11, !dbg !3616
  call void @llvm.dbg.value(metadata i64 -1, metadata !3571, metadata !DIExpression()) #11, !dbg !3617
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3618
  ret i8* %2, !dbg !3619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3620 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3659, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3660, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %2, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %3, metadata !3662, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8** %4, metadata !3663, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %5, metadata !3664, metadata !DIExpression()), !dbg !3670
  %7 = icmp eq i8* %1, null, !dbg !3671
  br i1 %7, label %10, label %8, !dbg !3673

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3674
  br label %12, !dbg !3674

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.93, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3675
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i32 5) #11, !dbg !3676
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3676
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.95, i64 0, i64 0), i32 5) #11, !dbg !3677
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3677
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
  ], !dbg !3678

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3679
  unreachable, !dbg !3679

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.96, i64 0, i64 0), i32 5) #11, !dbg !3681
  %20 = load i8*, i8** %4, align 8, !dbg !3681, !tbaa !662
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3681
  br label %146, !dbg !3682

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.97, i64 0, i64 0), i32 5) #11, !dbg !3683
  %24 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !662
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3683
  %26 = load i8*, i8** %25, align 8, !dbg !3683, !tbaa !662
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3683
  br label %146, !dbg !3684

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.98, i64 0, i64 0), i32 5) #11, !dbg !3685
  %30 = load i8*, i8** %4, align 8, !dbg !3685, !tbaa !662
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3685
  %32 = load i8*, i8** %31, align 8, !dbg !3685, !tbaa !662
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3685
  %34 = load i8*, i8** %33, align 8, !dbg !3685, !tbaa !662
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3685
  br label %146, !dbg !3686

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.99, i64 0, i64 0), i32 5) #11, !dbg !3687
  %38 = load i8*, i8** %4, align 8, !dbg !3687, !tbaa !662
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3687
  %40 = load i8*, i8** %39, align 8, !dbg !3687, !tbaa !662
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3687
  %42 = load i8*, i8** %41, align 8, !dbg !3687, !tbaa !662
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3687
  %44 = load i8*, i8** %43, align 8, !dbg !3687, !tbaa !662
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3687
  br label %146, !dbg !3688

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.100, i64 0, i64 0), i32 5) #11, !dbg !3689
  %48 = load i8*, i8** %4, align 8, !dbg !3689, !tbaa !662
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3689
  %50 = load i8*, i8** %49, align 8, !dbg !3689, !tbaa !662
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3689
  %52 = load i8*, i8** %51, align 8, !dbg !3689, !tbaa !662
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3689
  %54 = load i8*, i8** %53, align 8, !dbg !3689, !tbaa !662
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3689
  %56 = load i8*, i8** %55, align 8, !dbg !3689, !tbaa !662
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3689
  br label %146, !dbg !3690

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.101, i64 0, i64 0), i32 5) #11, !dbg !3691
  %60 = load i8*, i8** %4, align 8, !dbg !3691, !tbaa !662
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3691
  %62 = load i8*, i8** %61, align 8, !dbg !3691, !tbaa !662
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3691
  %64 = load i8*, i8** %63, align 8, !dbg !3691, !tbaa !662
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3691
  %66 = load i8*, i8** %65, align 8, !dbg !3691, !tbaa !662
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3691
  %68 = load i8*, i8** %67, align 8, !dbg !3691, !tbaa !662
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3691
  %70 = load i8*, i8** %69, align 8, !dbg !3691, !tbaa !662
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3691
  br label %146, !dbg !3692

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.102, i64 0, i64 0), i32 5) #11, !dbg !3693
  %74 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !662
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3693
  %76 = load i8*, i8** %75, align 8, !dbg !3693, !tbaa !662
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3693
  %78 = load i8*, i8** %77, align 8, !dbg !3693, !tbaa !662
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3693
  %80 = load i8*, i8** %79, align 8, !dbg !3693, !tbaa !662
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3693
  %82 = load i8*, i8** %81, align 8, !dbg !3693, !tbaa !662
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3693
  %84 = load i8*, i8** %83, align 8, !dbg !3693, !tbaa !662
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3693
  %86 = load i8*, i8** %85, align 8, !dbg !3693, !tbaa !662
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3693
  br label %146, !dbg !3694

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.103, i64 0, i64 0), i32 5) #11, !dbg !3695
  %90 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !662
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3695
  %92 = load i8*, i8** %91, align 8, !dbg !3695, !tbaa !662
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3695
  %94 = load i8*, i8** %93, align 8, !dbg !3695, !tbaa !662
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3695
  %96 = load i8*, i8** %95, align 8, !dbg !3695, !tbaa !662
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3695
  %98 = load i8*, i8** %97, align 8, !dbg !3695, !tbaa !662
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3695
  %100 = load i8*, i8** %99, align 8, !dbg !3695, !tbaa !662
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3695
  %102 = load i8*, i8** %101, align 8, !dbg !3695, !tbaa !662
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3695
  %104 = load i8*, i8** %103, align 8, !dbg !3695, !tbaa !662
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3695
  br label %146, !dbg !3696

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.104, i64 0, i64 0), i32 5) #11, !dbg !3697
  %108 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !662
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %110 = load i8*, i8** %109, align 8, !dbg !3697, !tbaa !662
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3697
  %112 = load i8*, i8** %111, align 8, !dbg !3697, !tbaa !662
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3697
  %114 = load i8*, i8** %113, align 8, !dbg !3697, !tbaa !662
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3697
  %116 = load i8*, i8** %115, align 8, !dbg !3697, !tbaa !662
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3697
  %118 = load i8*, i8** %117, align 8, !dbg !3697, !tbaa !662
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3697
  %120 = load i8*, i8** %119, align 8, !dbg !3697, !tbaa !662
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3697
  %122 = load i8*, i8** %121, align 8, !dbg !3697, !tbaa !662
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3697
  %124 = load i8*, i8** %123, align 8, !dbg !3697, !tbaa !662
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3697
  br label %146, !dbg !3698

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.105, i64 0, i64 0), i32 5) #11, !dbg !3699
  %128 = load i8*, i8** %4, align 8, !dbg !3699, !tbaa !662
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3699
  %130 = load i8*, i8** %129, align 8, !dbg !3699, !tbaa !662
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3699
  %132 = load i8*, i8** %131, align 8, !dbg !3699, !tbaa !662
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3699
  %134 = load i8*, i8** %133, align 8, !dbg !3699, !tbaa !662
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3699
  %136 = load i8*, i8** %135, align 8, !dbg !3699, !tbaa !662
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3699
  %138 = load i8*, i8** %137, align 8, !dbg !3699, !tbaa !662
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3699
  %140 = load i8*, i8** %139, align 8, !dbg !3699, !tbaa !662
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3699
  %142 = load i8*, i8** %141, align 8, !dbg !3699, !tbaa !662
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3699
  %144 = load i8*, i8** %143, align 8, !dbg !3699, !tbaa !662
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3699
  br label %146, !dbg !3700

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3702 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %1, metadata !3707, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8* %2, metadata !3708, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i8* %3, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8** %4, metadata !3710, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 0, metadata !3711, metadata !DIExpression()), !dbg !3717
  br label %6, !dbg !3718

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3720
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3722
  %9 = load i8*, i8** %8, align 8, !dbg !3722, !tbaa !662
  %10 = icmp eq i8* %9, null, !dbg !3723
  %11 = add i64 %7, 1, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %11, metadata !3711, metadata !DIExpression()), !dbg !3717
  br i1 %10, label %12, label %6, !dbg !3723, !llvm.loop !3725

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3717
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3727
  ret void, !dbg !3728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3729 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3740, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8* %1, metadata !3741, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %2, metadata !3742, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %3, metadata !3743, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3744, metadata !DIExpression()), !dbg !3752
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3753
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3753
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3746, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 0, metadata !3745, metadata !DIExpression()), !dbg !3755
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3745, metadata !DIExpression()), !dbg !3755
  %11 = load i32, i32* %8, align 8, !dbg !3756
  %12 = icmp ult i32 %11, 41, !dbg !3756
  br i1 %12, label %13, label %18, !dbg !3756

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3756
  %15 = sext i32 %11 to i64, !dbg !3756
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3756
  %17 = add i32 %11, 8, !dbg !3756
  store i32 %17, i32* %8, align 8, !dbg !3756
  br label %21, !dbg !3756

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3756
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3756
  store i8* %20, i8** %10, align 8, !dbg !3756
  br label %21, !dbg !3756

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3756
  %25 = load i8*, i8** %24, align 8, !dbg !3756
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3759
  store i8* %25, i8** %26, align 16, !dbg !3760, !tbaa !662
  %27 = icmp eq i8* %25, null, !dbg !3761
  br i1 %27, label %30, label %28, !dbg !3762

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 1, metadata !3745, metadata !DIExpression()), !dbg !3755
  %29 = icmp ult i32 %22, 41, !dbg !3756
  br i1 %29, label %35, label %32, !dbg !3756

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3763
  call void @llvm.dbg.value(metadata i64 %31, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %31, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3764
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3765
  ret void, !dbg !3765

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3756
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3756
  store i8* %34, i8** %10, align 8, !dbg !3756
  br label %40, !dbg !3756

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3756
  %37 = sext i32 %22 to i64, !dbg !3756
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3756
  %39 = add i32 %22, 8, !dbg !3756
  store i32 %39, i32* %8, align 8, !dbg !3756
  br label %40, !dbg !3756

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3756
  %44 = load i8*, i8** %43, align 8, !dbg !3756
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3759
  store i8* %44, i8** %45, align 8, !dbg !3760, !tbaa !662
  %46 = icmp eq i8* %44, null, !dbg !3761
  br i1 %46, label %30, label %47, !dbg !3762

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 2, metadata !3745, metadata !DIExpression()), !dbg !3755
  %48 = icmp ult i32 %41, 41, !dbg !3756
  br i1 %48, label %52, label %49, !dbg !3756

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3756
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3756
  store i8* %51, i8** %10, align 8, !dbg !3756
  br label %57, !dbg !3756

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3756
  %54 = sext i32 %41 to i64, !dbg !3756
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3756
  %56 = add i32 %41, 8, !dbg !3756
  store i32 %56, i32* %8, align 8, !dbg !3756
  br label %57, !dbg !3756

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3756
  %61 = load i8*, i8** %60, align 8, !dbg !3756
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3759
  store i8* %61, i8** %62, align 16, !dbg !3760, !tbaa !662
  %63 = icmp eq i8* %61, null, !dbg !3761
  br i1 %63, label %30, label %64, !dbg !3762

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 3, metadata !3745, metadata !DIExpression()), !dbg !3755
  %65 = icmp ult i32 %58, 41, !dbg !3756
  br i1 %65, label %69, label %66, !dbg !3756

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3756
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3756
  store i8* %68, i8** %10, align 8, !dbg !3756
  br label %74, !dbg !3756

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3756
  %71 = sext i32 %58 to i64, !dbg !3756
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3756
  %73 = add i32 %58, 8, !dbg !3756
  store i32 %73, i32* %8, align 8, !dbg !3756
  br label %74, !dbg !3756

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3756
  %78 = load i8*, i8** %77, align 8, !dbg !3756
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3759
  store i8* %78, i8** %79, align 8, !dbg !3760, !tbaa !662
  %80 = icmp eq i8* %78, null, !dbg !3761
  br i1 %80, label %30, label %81, !dbg !3762

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 4, metadata !3745, metadata !DIExpression()), !dbg !3755
  %82 = icmp ult i32 %75, 41, !dbg !3756
  br i1 %82, label %86, label %83, !dbg !3756

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3756
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3756
  store i8* %85, i8** %10, align 8, !dbg !3756
  br label %91, !dbg !3756

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3756
  %88 = sext i32 %75 to i64, !dbg !3756
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3756
  %90 = add i32 %75, 8, !dbg !3756
  store i32 %90, i32* %8, align 8, !dbg !3756
  br label %91, !dbg !3756

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3756
  %95 = load i8*, i8** %94, align 8, !dbg !3756
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3759
  store i8* %95, i8** %96, align 16, !dbg !3760, !tbaa !662
  %97 = icmp eq i8* %95, null, !dbg !3761
  br i1 %97, label %30, label %98, !dbg !3762

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 5, metadata !3745, metadata !DIExpression()), !dbg !3755
  %99 = icmp ult i32 %92, 41, !dbg !3756
  br i1 %99, label %103, label %100, !dbg !3756

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3756
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3756
  store i8* %102, i8** %10, align 8, !dbg !3756
  br label %108, !dbg !3756

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3756
  %105 = sext i32 %92 to i64, !dbg !3756
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3756
  %107 = add i32 %92, 8, !dbg !3756
  store i32 %107, i32* %8, align 8, !dbg !3756
  br label %108, !dbg !3756

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3756
  %111 = load i8*, i8** %110, align 8, !dbg !3756
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3759
  store i8* %111, i8** %112, align 8, !dbg !3760, !tbaa !662
  %113 = icmp eq i8* %111, null, !dbg !3761
  br i1 %113, label %30, label %114, !dbg !3762

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 6, metadata !3745, metadata !DIExpression()), !dbg !3755
  %115 = load i8*, i8** %10, align 8, !dbg !3756
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3756
  store i8* %116, i8** %10, align 8, !dbg !3756
  %117 = bitcast i8* %115 to i8**, !dbg !3756
  %118 = load i8*, i8** %117, align 8, !dbg !3756
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3759
  store i8* %118, i8** %119, align 16, !dbg !3760, !tbaa !662
  %120 = icmp eq i8* %118, null, !dbg !3761
  br i1 %120, label %30, label %121, !dbg !3762

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 7, metadata !3745, metadata !DIExpression()), !dbg !3755
  %122 = load i8*, i8** %10, align 8, !dbg !3756
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3756
  store i8* %123, i8** %10, align 8, !dbg !3756
  %124 = bitcast i8* %122 to i8**, !dbg !3756
  %125 = load i8*, i8** %124, align 8, !dbg !3756
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3759
  store i8* %125, i8** %126, align 8, !dbg !3760, !tbaa !662
  %127 = icmp eq i8* %125, null, !dbg !3761
  br i1 %127, label %30, label %128, !dbg !3762

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 8, metadata !3745, metadata !DIExpression()), !dbg !3755
  %129 = load i8*, i8** %10, align 8, !dbg !3756
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3756
  store i8* %130, i8** %10, align 8, !dbg !3756
  %131 = bitcast i8* %129 to i8**, !dbg !3756
  %132 = load i8*, i8** %131, align 8, !dbg !3756
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3759
  store i8* %132, i8** %133, align 16, !dbg !3760, !tbaa !662
  %134 = icmp eq i8* %132, null, !dbg !3761
  br i1 %134, label %30, label %135, !dbg !3762

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3745, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 9, metadata !3745, metadata !DIExpression()), !dbg !3755
  %136 = load i8*, i8** %10, align 8, !dbg !3756
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3756
  store i8* %137, i8** %10, align 8, !dbg !3756
  %138 = bitcast i8* %136 to i8**, !dbg !3756
  %139 = load i8*, i8** %138, align 8, !dbg !3756
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3759
  store i8* %139, i8** %140, align 8, !dbg !3760, !tbaa !662
  %141 = icmp eq i8* %139, null, !dbg !3761
  %142 = select i1 %141, i64 9, i64 10, !dbg !3762
  br label %30, !dbg !3762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3766 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3770, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3771, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %2, metadata !3772, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %3, metadata !3773, metadata !DIExpression()), !dbg !3783
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3784
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3774, metadata !DIExpression()), !dbg !3785
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3786
  call void @llvm.va_start(i8* nonnull %6), !dbg !3786
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3787
  call void @llvm.va_end(i8* nonnull %6), !dbg !3788
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3789
  ret void, !dbg !3789
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3790 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #11, !dbg !3791
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.109, i64 0, i64 0)) #11, !dbg !3791
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.110, i64 0, i64 0), i32 5) #11, !dbg !3792
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.112, i64 0, i64 0)) #11, !dbg !3792
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.113, i64 0, i64 0), i32 5) #11, !dbg !3793
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3793, !tbaa !662
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3793
  ret void, !dbg !3794
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3795 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3799, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3800, metadata !DIExpression()), !dbg !3802
  %3 = udiv i64 9223372036854775807, %1, !dbg !3803
  %4 = icmp ult i64 %3, %0, !dbg !3803
  br i1 %4, label %5, label %6, !dbg !3805

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3806
  unreachable, !dbg !3806

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %7, metadata !3808, metadata !DIExpression()) #11, !dbg !3815
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %8, metadata !3814, metadata !DIExpression()) #11, !dbg !3818
  %9 = icmp eq i8* %8, null, !dbg !3819
  %10 = icmp ne i64 %7, 0, !dbg !3821
  %11 = and i1 %10, %9, !dbg !3822
  br i1 %11, label %12, label %13, !dbg !3822

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3823
  unreachable, !dbg !3823

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3824
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3809 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3825
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %2, metadata !3814, metadata !DIExpression()), !dbg !3827
  %3 = icmp eq i8* %2, null, !dbg !3828
  %4 = icmp ne i64 %0, 0, !dbg !3829
  %5 = and i1 %4, %3, !dbg !3830
  br i1 %5, label %6, label %7, !dbg !3830

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3831
  unreachable, !dbg !3831

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3832
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3842
  %4 = udiv i64 9223372036854775807, %2, !dbg !3843
  %5 = icmp ult i64 %4, %1, !dbg !3843
  br i1 %5, label %6, label %7, !dbg !3845

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3846
  unreachable, !dbg !3846

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #11, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %8, metadata !3853, metadata !DIExpression()) #11, !dbg !3856
  %9 = icmp eq i64 %8, 0, !dbg !3857
  %10 = icmp ne i8* %0, null, !dbg !3859
  %11 = and i1 %10, %9, !dbg !3860
  br i1 %11, label %12, label %13, !dbg !3860

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3861
  br label %19, !dbg !3863

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %14, metadata !3848, metadata !DIExpression()) #11, !dbg !3854
  %15 = icmp eq i8* %14, null, !dbg !3865
  %16 = icmp ne i64 %8, 0, !dbg !3867
  %17 = and i1 %16, %15, !dbg !3868
  br i1 %17, label %18, label %19, !dbg !3868

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3869
  unreachable, !dbg !3869

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3870
  ret i8* %20, !dbg !3871
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3849 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3873
  %3 = icmp eq i64 %1, 0, !dbg !3874
  %4 = icmp ne i8* %0, null, !dbg !3875
  %5 = and i1 %4, %3, !dbg !3876
  br i1 %5, label %6, label %7, !dbg !3876

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3877
  br label %13, !dbg !3878

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %8, metadata !3848, metadata !DIExpression()), !dbg !3872
  %9 = icmp eq i8* %8, null, !dbg !3880
  %10 = icmp ne i64 %1, 0, !dbg !3881
  %11 = and i1 %10, %9, !dbg !3882
  br i1 %11, label %12, label %13, !dbg !3882

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3883
  unreachable, !dbg !3883

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3884
  ret i8* %14, !dbg !3885
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i64 %2, metadata !197, metadata !DIExpression()), !dbg !3888
  %4 = load i64, i64* %1, align 8, !dbg !3889, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %4, metadata !198, metadata !DIExpression()), !dbg !3890
  %5 = icmp eq i8* %0, null, !dbg !3891
  br i1 %5, label %6, label %20, !dbg !3893

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3894
  br i1 %7, label %8, label %13, !dbg !3897

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %9, metadata !198, metadata !DIExpression()), !dbg !3890
  %10 = icmp ugt i64 %2, 128, !dbg !3900
  %11 = zext i1 %10 to i64, !dbg !3900
  %12 = add nuw nsw i64 %9, %11, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %12, metadata !198, metadata !DIExpression()), !dbg !3890
  br label %13, !dbg !3902

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3903
  call void @llvm.dbg.value(metadata i64 %14, metadata !198, metadata !DIExpression()), !dbg !3890
  %15 = udiv i64 9223372036854775807, %2, !dbg !3904
  %16 = icmp ult i64 %15, %14, !dbg !3904
  br i1 %16, label %19, label %17, !dbg !3906

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3890
  store i64 %14, i64* %1, align 8, !dbg !3907, !tbaa !924
  %18 = mul i64 %14, %2, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %28, metadata !3853, metadata !DIExpression()) #11, !dbg !3911
  br label %31, !dbg !3912

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3913
  unreachable, !dbg !3913

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3914
  %22 = icmp ugt i64 %21, %4, !dbg !3917
  br i1 %22, label %24, label %23, !dbg !3918

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !3919
  unreachable, !dbg !3919

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3920
  %26 = add i64 %4, 1, !dbg !3921
  %27 = add i64 %26, %25, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3890
  store i64 %27, i64* %1, align 8, !dbg !3907, !tbaa !924
  %28 = mul i64 %27, %2, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %28, metadata !3853, metadata !DIExpression()) #11, !dbg !3911
  %29 = icmp eq i64 %28, 0, !dbg !3923
  br i1 %29, label %30, label %31, !dbg !3912

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3924
  br label %38, !dbg !3925

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %33, metadata !3848, metadata !DIExpression()) #11, !dbg !3909
  %34 = icmp eq i8* %33, null, !dbg !3927
  %35 = icmp ne i64 %32, 0, !dbg !3928
  %36 = and i1 %35, %34, !dbg !3929
  br i1 %36, label %37, label %38, !dbg !3929

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !3930
  unreachable, !dbg !3930

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3931
  ret i8* %39, !dbg !3932
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3933 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3935, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()) #11, !dbg !3937
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3939
  call void @llvm.dbg.value(metadata i8* %2, metadata !3814, metadata !DIExpression()) #11, !dbg !3940
  %3 = icmp eq i8* %2, null, !dbg !3941
  %4 = icmp ne i64 %0, 0, !dbg !3942
  %5 = and i1 %4, %3, !dbg !3943
  br i1 %5, label %6, label %7, !dbg !3943

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3944
  unreachable, !dbg !3944

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64* %1, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()) #11, !dbg !3954
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()) #11, !dbg !3956
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()) #11, !dbg !3957
  %3 = load i64, i64* %1, align 8, !dbg !3958, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #11, !dbg !3959
  %4 = icmp eq i8* %0, null, !dbg !3960
  br i1 %4, label %5, label %12, !dbg !3961

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3962
  br i1 %6, label %9, label %7, !dbg !3963

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #11, !dbg !3959
  %8 = icmp slt i64 %3, 0, !dbg !3964
  br i1 %8, label %11, label %9, !dbg !3965

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #11, !dbg !3959
  store i64 %10, i64* %1, align 8, !dbg !3966, !tbaa !924
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #11, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %18, metadata !3853, metadata !DIExpression()) #11, !dbg !3969
  br label %21, !dbg !3970

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3971
  unreachable, !dbg !3971

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3972
  br i1 %13, label %15, label %14, !dbg !3973

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !3974
  unreachable, !dbg !3974

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3975
  %17 = add i64 %3, 1, !dbg !3976
  %18 = add i64 %17, %16, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #11, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #11, !dbg !3959
  store i64 %18, i64* %1, align 8, !dbg !3966, !tbaa !924
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()) #11, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %18, metadata !3853, metadata !DIExpression()) #11, !dbg !3969
  %19 = icmp eq i64 %18, 0, !dbg !3978
  br i1 %19, label %20, label %21, !dbg !3970

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3979
  br label %28, !dbg !3980

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %23, metadata !3848, metadata !DIExpression()) #11, !dbg !3967
  %24 = icmp eq i8* %23, null, !dbg !3982
  %25 = icmp ne i64 %22, 0, !dbg !3983
  %26 = and i1 %25, %24, !dbg !3984
  br i1 %26, label %27, label %28, !dbg !3984

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !3985
  unreachable, !dbg !3985

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3986
  ret i8* %29, !dbg !3987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3988 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()) #11, !dbg !3992
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3994
  call void @llvm.dbg.value(metadata i8* %2, metadata !3814, metadata !DIExpression()) #11, !dbg !3995
  %3 = icmp eq i8* %2, null, !dbg !3996
  %4 = icmp ne i64 %0, 0, !dbg !3997
  %5 = and i1 %4, %3, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !3998

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3999
  unreachable, !dbg !3999

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4000
  ret i8* %2, !dbg !4001
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4002 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4008
  %3 = udiv i64 9223372036854775807, %1, !dbg !4009
  %4 = icmp ult i64 %3, %0, !dbg !4009
  br i1 %4, label %8, label %5, !dbg !4011

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %6, metadata !4006, metadata !DIExpression()), !dbg !4013
  %7 = icmp eq i8* %6, null, !dbg !4014
  br i1 %7, label %8, label %9, !dbg !4015

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !4016
  unreachable, !dbg !4016

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3808, metadata !DIExpression()) #11, !dbg !4028
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %3, metadata !3814, metadata !DIExpression()) #11, !dbg !4031
  %4 = icmp eq i8* %3, null, !dbg !4032
  %5 = icmp ne i64 %1, 0, !dbg !4033
  %6 = and i1 %5, %4, !dbg !4034
  br i1 %6, label %7, label %8, !dbg !4034

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4035
  unreachable, !dbg !4035

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4036
  ret i8* %3, !dbg !4037
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4040, metadata !DIExpression()), !dbg !4041
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !4042
  %3 = add i64 %2, 1, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %0, metadata !4024, metadata !DIExpression()) #11, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()) #11, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %3, metadata !3808, metadata !DIExpression()) #11, !dbg !4047
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4049
  call void @llvm.dbg.value(metadata i8* %4, metadata !3814, metadata !DIExpression()) #11, !dbg !4050
  %5 = icmp eq i8* %4, null, !dbg !4051
  %6 = icmp ne i64 %3, 0, !dbg !4052
  %7 = and i1 %6, %5, !dbg !4053
  br i1 %7, label %8, label %9, !dbg !4053

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4054
  unreachable, !dbg !4054

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4055
  ret i8* %4, !dbg !4056
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4057 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4059, !tbaa !870
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #11, !dbg !4060
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #11, !dbg !4061
  tail call void @abort() #16, !dbg !4062
  unreachable, !dbg !4062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4063 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4068, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 %1, metadata !4069, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %3, metadata !4071, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i8* %4, metadata !4072, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %5, metadata !4073, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 %6, metadata !4074, metadata !DIExpression()), !dbg !4084
  %9 = bitcast i64* %8 to i8*, !dbg !4085
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !4085
  call void @llvm.dbg.value(metadata i64* %8, metadata !4077, metadata !DIExpression(DW_OP_deref)), !dbg !4086
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %10, metadata !4075, metadata !DIExpression()), !dbg !4088
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4089

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #18, !dbg !4090
  br label %27, !dbg !4089

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4093, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %14, metadata !4077, metadata !DIExpression()), !dbg !4086
  %15 = icmp ult i64 %14, %2, !dbg !4097
  %16 = icmp ugt i64 %14, %3, !dbg !4098
  %17 = or i1 %15, %16, !dbg !4099
  br i1 %17, label %18, label %36, !dbg !4099

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4075, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %14, metadata !4077, metadata !DIExpression()), !dbg !4086
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4100
  %20 = tail call i32* @__errno_location() #18, !dbg !4103
  br i1 %19, label %21, label %22, !dbg !4104

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4105, !tbaa !870
  br label %27, !dbg !4106

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4107, !tbaa !870
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #18, !dbg !4108
  store i32 75, i32* %24, align 4, !dbg !4110, !tbaa !870
  br label %27, !dbg !4108

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #18, !dbg !4111
  store i32 0, i32* %26, align 4, !dbg !4113, !tbaa !870
  br label %27, !dbg !4111

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !4090
  %29 = icmp eq i32 %6, 0, !dbg !4114
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4114
  %31 = load i32, i32* %28, align 4, !dbg !4090, !tbaa !870
  %32 = icmp eq i32 %31, 22, !dbg !4115
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4090
  %34 = call i8* @quote(i8* %0) #11, !dbg !4116
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0), i8* %5, i8* %34) #11, !dbg !4117
  %35 = load i64, i64* %8, align 8, !dbg !4118, !tbaa !924
  br label %36, !dbg !4119

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4118
  call void @llvm.dbg.value(metadata i64 %37, metadata !4077, metadata !DIExpression()), !dbg !4086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !4120
  ret i64 %37, !dbg !4121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4126, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %2, metadata !4128, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i8* %3, metadata !4129, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %4, metadata !4130, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32 %5, metadata !4131, metadata !DIExpression()), !dbg !4137
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4138
  ret i64 %7, !dbg !4139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4140 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4146, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8** %1, metadata !4147, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %2, metadata !4148, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64* %3, metadata !4149, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i8* %4, metadata !4150, metadata !DIExpression()), !dbg !4168
  %7 = bitcast i8** %6 to i8*, !dbg !4169
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4169
  call void @llvm.dbg.value(metadata i32 0, metadata !4154, metadata !DIExpression()), !dbg !4170
  %8 = icmp ult i32 %2, 37, !dbg !4171
  br i1 %8, label %10, label %9, !dbg !4171

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.132, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #16, !dbg !4171
  unreachable, !dbg !4171

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4174
  call void @llvm.dbg.value(metadata i8** %25, metadata !4152, metadata !DIExpression()), !dbg !4175
  %12 = tail call i32* @__errno_location() #18, !dbg !4176
  store i32 0, i32* %12, align 4, !dbg !4177, !tbaa !870
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i8* %0, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4179
  %13 = tail call i16** @__ctype_b_loc() #18, !dbg !4180
  %14 = load i16*, i16** %13, align 8, !tbaa !662
  br label %15, !dbg !4181

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4182
  %17 = load i8, i8* %16, align 1, !dbg !4182, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %17, metadata !4158, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %16, metadata !4155, metadata !DIExpression()), !dbg !4178
  %18 = zext i8 %17 to i64, !dbg !4180
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4180
  %20 = load i16, i16* %19, align 2, !dbg !4180, !tbaa !2325
  %21 = and i16 %20, 8192, !dbg !4180
  %22 = icmp eq i16 %21, 0, !dbg !4181
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4183
  call void @llvm.dbg.value(metadata i8* %23, metadata !4155, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i8* %23, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4179
  br i1 %22, label %24, label %15, !dbg !4181, !llvm.loop !4184

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4174
  %26 = icmp eq i8 %17, 45, !dbg !4186
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4188, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata i8** %25, metadata !4195, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %2, metadata !4196, metadata !DIExpression()) #11, !dbg !4197
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4200
  %29 = load i8*, i8** %25, align 8, !dbg !4201, !tbaa !662
  %30 = icmp eq i8* %29, %0, !dbg !4203
  br i1 %30, label %31, label %40, !dbg !4204

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4205
  br i1 %32, label %265, label %33, !dbg !4208

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4209, !tbaa !935
  %35 = icmp eq i8 %34, 0, !dbg !4209
  br i1 %35, label %265, label %36, !dbg !4210

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4209
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #15, !dbg !4211
  %39 = icmp eq i8* %38, null, !dbg !4211
  br i1 %39, label %265, label %47, !dbg !4212

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4213, !tbaa !870
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4215

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %43, !dbg !4216

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4218
  call void @llvm.dbg.value(metadata i32 %44, metadata !4154, metadata !DIExpression()), !dbg !4170
  %45 = icmp eq i8* %4, null, !dbg !4219
  br i1 %45, label %46, label %47, !dbg !4221

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4200
  store i64 %28, i64* %3, align 8, !dbg !4222, !tbaa !924
  br label %265, !dbg !4224

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4225, !tbaa !935
  %51 = sext i8 %50 to i32, !dbg !4225
  %52 = icmp eq i8 %50, 0, !dbg !4226
  br i1 %52, label %262, label %53, !dbg !4227

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4159, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i32 1, metadata !4162, metadata !DIExpression()), !dbg !4229
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #15, !dbg !4230
  %55 = icmp eq i8* %54, null, !dbg !4230
  br i1 %55, label %56, label %58, !dbg !4232

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4200
  store i64 %49, i64* %3, align 8, !dbg !4233, !tbaa !924
  %57 = or i32 %48, 2, !dbg !4235
  br label %265, !dbg !4236

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
  ], !dbg !4237

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #15, !dbg !4238
  %61 = icmp eq i8* %60, null, !dbg !4238
  br i1 %61, label %72, label %62, !dbg !4241

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4242
  %64 = load i8, i8* %63, align 1, !dbg !4242, !tbaa !935
  %65 = sext i8 %64 to i32, !dbg !4242
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4243

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4244
  %68 = load i8, i8* %67, align 1, !dbg !4244, !tbaa !935
  %69 = icmp eq i8 %68, 66, !dbg !4247
  %70 = select i1 %69, i64 3, i64 1, !dbg !4248
  br label %72, !dbg !4248

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4159, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i32 2, metadata !4162, metadata !DIExpression()), !dbg !4229
  br label %72, !dbg !4249

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
  ], !dbg !4250

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4251, metadata !DIExpression()), !dbg !4257
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4260
  %77 = shl i64 %49, 9, !dbg !4262
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4263
  %79 = zext i1 %76 to i32, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %79, metadata !4163, metadata !DIExpression()), !dbg !4264
  br label %253, !dbg !4265

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4251, metadata !DIExpression()), !dbg !4266
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4268
  %82 = shl i64 %49, 10, !dbg !4269
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4270
  %84 = zext i1 %81 to i32, !dbg !4270
  call void @llvm.dbg.value(metadata i32 %84, metadata !4163, metadata !DIExpression()), !dbg !4264
  br label %253, !dbg !4271

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4282
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4280
  %87 = icmp ult i64 %86, %49, !dbg !4283
  %88 = mul i64 %49, %73, !dbg !4285
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4286
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4280
  %90 = icmp ult i64 %86, %89, !dbg !4283
  %91 = mul i64 %89, %73, !dbg !4285
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4286
  %93 = or i1 %87, %90, !dbg !4287
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4280
  %94 = icmp ult i64 %86, %92, !dbg !4283
  %95 = mul i64 %92, %73, !dbg !4285
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4286
  %97 = or i1 %93, %94, !dbg !4287
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4280
  %98 = icmp ult i64 %86, %96, !dbg !4283
  %99 = mul i64 %96, %73, !dbg !4285
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4286
  %101 = or i1 %97, %98, !dbg !4287
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4280
  %102 = icmp ult i64 %86, %100, !dbg !4283
  %103 = mul i64 %100, %73, !dbg !4285
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4286
  %105 = or i1 %101, %102, !dbg !4287
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4280
  %106 = icmp ult i64 %86, %104, !dbg !4283
  %107 = mul i64 %104, %73, !dbg !4285
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4286
  %109 = or i1 %105, %106, !dbg !4287
  %110 = zext i1 %109 to i32, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %110, metadata !4279, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4280
  br label %253, !dbg !4288

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4291
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4289
  %113 = icmp ult i64 %112, %49, !dbg !4292
  %114 = mul i64 %49, %73, !dbg !4294
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4295
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4289
  %116 = icmp ult i64 %112, %115, !dbg !4292
  %117 = mul i64 %115, %73, !dbg !4294
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4295
  %119 = or i1 %113, %116, !dbg !4296
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4289
  %120 = icmp ult i64 %112, %118, !dbg !4292
  %121 = mul i64 %118, %73, !dbg !4294
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4295
  %123 = or i1 %119, %120, !dbg !4296
  %124 = zext i1 %123 to i32, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %124, metadata !4279, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4289
  br label %253, !dbg !4288

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4299
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 undef, metadata !4272, metadata !DIExpression()), !dbg !4297
  %127 = icmp ult i64 %126, %49, !dbg !4300
  %128 = mul i64 %49, %73, !dbg !4302
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4303
  %130 = zext i1 %127 to i32, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %130, metadata !4279, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 undef, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4297
  br label %253, !dbg !4288

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4306
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4304
  %133 = icmp ult i64 %132, %49, !dbg !4307
  %134 = mul i64 %49, %73, !dbg !4309
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4310
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4304
  %136 = icmp ult i64 %132, %135, !dbg !4307
  %137 = mul i64 %135, %73, !dbg !4309
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4310
  %139 = or i1 %133, %136, !dbg !4311
  %140 = zext i1 %139 to i32, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %140, metadata !4279, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4304
  br label %253, !dbg !4288

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4314
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4312
  %143 = icmp ult i64 %142, %49, !dbg !4315
  %144 = mul i64 %49, %73, !dbg !4317
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4318
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4312
  %146 = icmp ult i64 %142, %145, !dbg !4315
  %147 = mul i64 %145, %73, !dbg !4317
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4318
  %149 = or i1 %143, %146, !dbg !4319
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4312
  %150 = icmp ult i64 %142, %148, !dbg !4315
  %151 = mul i64 %148, %73, !dbg !4317
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4318
  %153 = or i1 %149, %150, !dbg !4319
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4312
  %154 = icmp ult i64 %142, %152, !dbg !4315
  %155 = mul i64 %152, %73, !dbg !4317
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4318
  %157 = or i1 %153, %154, !dbg !4319
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4312
  %158 = icmp ult i64 %142, %156, !dbg !4315
  %159 = mul i64 %156, %73, !dbg !4317
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4318
  %161 = or i1 %157, %158, !dbg !4319
  %162 = zext i1 %161 to i32, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %162, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4312
  br label %253, !dbg !4288

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4322
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4320
  %165 = icmp ult i64 %164, %49, !dbg !4323
  %166 = mul i64 %49, %73, !dbg !4325
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4326
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4320
  %168 = icmp ult i64 %164, %167, !dbg !4323
  %169 = mul i64 %167, %73, !dbg !4325
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4326
  %171 = or i1 %165, %168, !dbg !4327
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4320
  %172 = icmp ult i64 %164, %170, !dbg !4323
  %173 = mul i64 %170, %73, !dbg !4325
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4326
  %175 = or i1 %171, %172, !dbg !4327
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4320
  %176 = icmp ult i64 %164, %174, !dbg !4323
  %177 = mul i64 %174, %73, !dbg !4325
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4326
  %179 = or i1 %175, %176, !dbg !4327
  %180 = zext i1 %179 to i32, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %180, metadata !4279, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4320
  br label %253, !dbg !4288

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4328
  %182 = icmp slt i64 %49, 0, !dbg !4330
  %183 = shl i64 %49, 1, !dbg !4331
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4332
  %185 = lshr i64 %49, 63, !dbg !4332
  %186 = trunc i64 %185 to i32, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %186, metadata !4163, metadata !DIExpression()), !dbg !4264
  br label %253, !dbg !4333

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4336
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 8, metadata !4272, metadata !DIExpression()), !dbg !4334
  %189 = icmp ult i64 %188, %49, !dbg !4337
  %190 = mul i64 %49, %73, !dbg !4339
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4340
  call void @llvm.dbg.value(metadata i32 7, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 7, metadata !4272, metadata !DIExpression()), !dbg !4334
  %192 = icmp ult i64 %188, %191, !dbg !4337
  %193 = mul i64 %191, %73, !dbg !4339
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4340
  %195 = or i1 %189, %192, !dbg !4341
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4334
  %196 = icmp ult i64 %188, %194, !dbg !4337
  %197 = mul i64 %194, %73, !dbg !4339
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4340
  %199 = or i1 %195, %196, !dbg !4341
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4334
  %200 = icmp ult i64 %188, %198, !dbg !4337
  %201 = mul i64 %198, %73, !dbg !4339
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4340
  %203 = or i1 %199, %200, !dbg !4341
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4334
  %204 = icmp ult i64 %188, %202, !dbg !4337
  %205 = mul i64 %202, %73, !dbg !4339
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4340
  %207 = or i1 %203, %204, !dbg !4341
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4334
  %208 = icmp ult i64 %188, %206, !dbg !4337
  %209 = mul i64 %206, %73, !dbg !4339
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4340
  %211 = or i1 %207, %208, !dbg !4341
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4334
  %212 = icmp ult i64 %188, %210, !dbg !4337
  %213 = mul i64 %210, %73, !dbg !4339
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4340
  %215 = or i1 %211, %212, !dbg !4341
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4334
  %216 = icmp ult i64 %188, %214, !dbg !4337
  %217 = mul i64 %214, %73, !dbg !4339
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4340
  %219 = or i1 %215, %216, !dbg !4341
  %220 = zext i1 %219 to i32, !dbg !4341
  call void @llvm.dbg.value(metadata i32 %220, metadata !4279, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4334
  br label %253, !dbg !4288

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4344
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 7, metadata !4272, metadata !DIExpression()), !dbg !4342
  %223 = icmp ult i64 %222, %49, !dbg !4345
  %224 = mul i64 %49, %73, !dbg !4347
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4348
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()), !dbg !4342
  %226 = icmp ult i64 %222, %225, !dbg !4345
  %227 = mul i64 %225, %73, !dbg !4347
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4348
  %229 = or i1 %223, %226, !dbg !4349
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()), !dbg !4342
  %230 = icmp ult i64 %222, %228, !dbg !4345
  %231 = mul i64 %228, %73, !dbg !4347
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4348
  %233 = or i1 %229, %230, !dbg !4349
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()), !dbg !4342
  %234 = icmp ult i64 %222, %232, !dbg !4345
  %235 = mul i64 %232, %73, !dbg !4347
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4348
  %237 = or i1 %233, %234, !dbg !4349
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()), !dbg !4342
  %238 = icmp ult i64 %222, %236, !dbg !4345
  %239 = mul i64 %236, %73, !dbg !4347
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4348
  %241 = or i1 %237, %238, !dbg !4349
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()), !dbg !4342
  %242 = icmp ult i64 %222, %240, !dbg !4345
  %243 = mul i64 %240, %73, !dbg !4347
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4348
  %245 = or i1 %241, %242, !dbg !4349
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()), !dbg !4342
  %246 = icmp ult i64 %222, %244, !dbg !4345
  %247 = mul i64 %244, %73, !dbg !4347
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4348
  %249 = or i1 %245, %246, !dbg !4349
  %250 = zext i1 %249 to i32, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %250, metadata !4279, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4342
  br label %253, !dbg !4288

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4200
  store i64 %49, i64* %3, align 8, !dbg !4350, !tbaa !924
  %252 = or i32 %48, 2, !dbg !4351
  br label %265, !dbg !4352

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4353
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4354
  call void @llvm.dbg.value(metadata i32 %255, metadata !4163, metadata !DIExpression()), !dbg !4264
  %256 = or i32 %255, %48, !dbg !4288
  call void @llvm.dbg.value(metadata i32 %256, metadata !4154, metadata !DIExpression()), !dbg !4170
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4355
  store i8* %257, i8** %25, align 8, !dbg !4355, !tbaa !662
  %258 = load i8, i8* %257, align 1, !dbg !4356, !tbaa !935
  %259 = icmp eq i8 %258, 0, !dbg !4356
  %260 = or i32 %256, 2, !dbg !4358
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4359
  call void @llvm.dbg.value(metadata i32 %261, metadata !4154, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i32 %261, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4360
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4170
  call void @llvm.dbg.value(metadata i32 %264, metadata !4154, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %263, metadata !4153, metadata !DIExpression()), !dbg !4200
  store i64 %263, i64* %3, align 8, !dbg !4361, !tbaa !924
  br label %265, !dbg !4362

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4364
  ret i32 %266, !dbg !4364
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4365 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4368, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4369, metadata !DIExpression()), !dbg !4375
  %3 = icmp eq i64 %0, 0, !dbg !4376
  %4 = icmp eq i64 %1, 0, !dbg !4377
  %5 = or i1 %3, %4, !dbg !4378
  br i1 %5, label %12, label %6, !dbg !4378

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %7, metadata !4371, metadata !DIExpression()), !dbg !4380
  %8 = udiv i64 %7, %1, !dbg !4381
  %9 = icmp eq i64 %8, %0, !dbg !4383
  br i1 %9, label %12, label %10, !dbg !4384

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4385
  store i32 12, i32* %11, align 4, !dbg !4387, !tbaa !870
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4368, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %13, metadata !4369, metadata !DIExpression()), !dbg !4375
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4388
  call void @llvm.dbg.value(metadata i8* %15, metadata !4370, metadata !DIExpression()), !dbg !4389
  br label %16, !dbg !4390

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4391
  ret i8* %17, !dbg !4392
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4393 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4432, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i32 0, metadata !4433, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4438
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4439
  call void @llvm.dbg.value(metadata i32 %2, metadata !4434, metadata !DIExpression()), !dbg !4440
  %3 = icmp slt i32 %2, 0, !dbg !4441
  br i1 %3, label %4, label %6, !dbg !4443

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4444
  br label %24, !dbg !4445

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4446
  %8 = icmp eq i32 %7, 0, !dbg !4446
  br i1 %8, label %13, label %9, !dbg !4448

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4449
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4450
  %12 = icmp eq i64 %11, -1, !dbg !4451
  br i1 %12, label %16, label %13, !dbg !4452

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4453
  %15 = icmp eq i32 %14, 0, !dbg !4453
  br i1 %15, label %16, label %18, !dbg !4454

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4433, metadata !DIExpression()), !dbg !4437
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4455
  call void @llvm.dbg.value(metadata i32 %21, metadata !4435, metadata !DIExpression()), !dbg !4438
  br label %24, !dbg !4456

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4457
  %20 = load i32, i32* %19, align 4, !dbg !4457, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %20, metadata !4433, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %20, metadata !4433, metadata !DIExpression()), !dbg !4437
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4455
  call void @llvm.dbg.value(metadata i32 %21, metadata !4435, metadata !DIExpression()), !dbg !4438
  %22 = icmp eq i32 %20, 0, !dbg !4458
  br i1 %22, label %24, label %23, !dbg !4456

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4460, !tbaa !870
  call void @llvm.dbg.value(metadata i32 -1, metadata !4435, metadata !DIExpression()), !dbg !4438
  br label %24, !dbg !4462

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4463
  ret i32 %25, !dbg !4464
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4465 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4504, metadata !DIExpression()), !dbg !4505
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4506
  br i1 %2, label %6, label %3, !dbg !4508

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4509
  %5 = icmp eq i32 %4, 0, !dbg !4509
  br i1 %5, label %6, label %8, !dbg !4510

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4511
  br label %17, !dbg !4512

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4513, metadata !DIExpression()) #11, !dbg !4518
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4520
  %10 = load i32, i32* %9, align 8, !dbg !4520, !tbaa !963
  %11 = and i32 %10, 256, !dbg !4522
  %12 = icmp eq i32 %11, 0, !dbg !4522
  br i1 %12, label %15, label %13, !dbg !4523

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4524
  br label %15, !dbg !4524

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4525
  br label %17, !dbg !4526

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4527
  ret i32 %18, !dbg !4528
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4529 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i32 %2, metadata !4570, metadata !DIExpression()), !dbg !4576
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4577
  %5 = load i8*, i8** %4, align 8, !dbg !4577, !tbaa !4578
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4579
  %7 = load i8*, i8** %6, align 8, !dbg !4579, !tbaa !4580
  %8 = icmp eq i8* %5, %7, !dbg !4581
  br i1 %8, label %9, label %28, !dbg !4582

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4583
  %11 = load i8*, i8** %10, align 8, !dbg !4583, !tbaa !1106
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4584
  %13 = load i8*, i8** %12, align 8, !dbg !4584, !tbaa !4585
  %14 = icmp eq i8* %11, %13, !dbg !4586
  br i1 %14, label %15, label %28, !dbg !4587

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4588
  %17 = load i8*, i8** %16, align 8, !dbg !4588, !tbaa !4589
  %18 = icmp eq i8* %17, null, !dbg !4590
  br i1 %18, label %19, label %28, !dbg !4591

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4592
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4593
  call void @llvm.dbg.value(metadata i64 %21, metadata !4571, metadata !DIExpression()), !dbg !4594
  %22 = icmp eq i64 %21, -1, !dbg !4595
  br i1 %22, label %30, label %23, !dbg !4597

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4598
  %25 = load i32, i32* %24, align 8, !dbg !4599, !tbaa !963
  %26 = and i32 %25, -17, !dbg !4599
  store i32 %26, i32* %24, align 8, !dbg !4599, !tbaa !963
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4600
  store i64 %21, i64* %27, align 8, !dbg !4601, !tbaa !4602
  br label %30, !dbg !4603

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4604
  br label %30, !dbg !4605

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4606
  ret i32 %31, !dbg !4607
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4608 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4625, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i8* %1, metadata !4626, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i64 %2, metadata !4627, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4628, metadata !DIExpression()), !dbg !4637
  %6 = bitcast i32* %5 to i8*, !dbg !4638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4638
  %7 = icmp eq i32* %0, null, !dbg !4639
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4641
  call void @llvm.dbg.value(metadata i32* %8, metadata !4625, metadata !DIExpression()), !dbg !4634
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4642
  call void @llvm.dbg.value(metadata i64 %9, metadata !4629, metadata !DIExpression()), !dbg !4643
  %10 = icmp ugt i64 %9, -3, !dbg !4644
  %11 = icmp ne i64 %2, 0, !dbg !4645
  %12 = and i1 %11, %10, !dbg !4646
  br i1 %12, label %13, label %18, !dbg !4646

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4647
  br i1 %14, label %18, label %15, !dbg !4648

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4649, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %16, metadata !4631, metadata !DIExpression()), !dbg !4650
  %17 = zext i8 %16 to i32, !dbg !4651
  store i32 %17, i32* %8, align 4, !dbg !4652, !tbaa !870
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4653
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4654
  ret i64 %19, !dbg !4654
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4655 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4694, metadata !DIExpression()), !dbg !4699
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4700
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4701, metadata !DIExpression()), !dbg !4704
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4706
  %4 = load i32, i32* %3, align 8, !dbg !4706, !tbaa !963
  %5 = and i32 %4, 32, !dbg !4706
  %6 = icmp eq i32 %5, 0, !dbg !4707
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4708
  %8 = icmp ne i32 %7, 0, !dbg !4709
  br i1 %6, label %9, label %19, !dbg !4710

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4712
  %11 = xor i1 %8, true, !dbg !4713
  %12 = or i1 %10, %11, !dbg !4713
  %13 = sext i1 %8 to i32, !dbg !4713
  br i1 %12, label %22, label %14, !dbg !4713

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4714
  %16 = load i32, i32* %15, align 4, !dbg !4714, !tbaa !870
  %17 = icmp ne i32 %16, 9, !dbg !4715
  %18 = sext i1 %17 to i32, !dbg !4716
  br label %22, !dbg !4716

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4717

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4719
  store i32 0, i32* %21, align 4, !dbg !4721, !tbaa !870
  br label %22, !dbg !4719

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4722
  ret i32 %23, !dbg !4723
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4724 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4729, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i8 1, metadata !4730, metadata !DIExpression()), !dbg !4733
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4734
  call void @llvm.dbg.value(metadata i8* %2, metadata !4731, metadata !DIExpression()), !dbg !4735
  %3 = icmp eq i8* %2, null, !dbg !4736
  br i1 %3, label %11, label %4, !dbg !4738

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0)) #15, !dbg !4739
  %6 = icmp eq i32 %5, 0, !dbg !4744
  br i1 %6, label %10, label %7, !dbg !4745

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0)) #15, !dbg !4746
  %9 = icmp eq i32 %8, 0, !dbg !4747
  br i1 %9, label %10, label %11, !dbg !4748

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4730, metadata !DIExpression()), !dbg !4733
  br label %11, !dbg !4749

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4751 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i8* %1, metadata !4756, metadata !DIExpression()), !dbg !4758
  %2 = icmp eq i8* %1, null, !dbg !4759
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !4761
  call void @llvm.dbg.value(metadata i8* %3, metadata !4756, metadata !DIExpression()), !dbg !4758
  %4 = load i8, i8* %3, align 1, !dbg !4762, !tbaa !935
  %5 = icmp eq i8 %4, 0, !dbg !4766
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !4767
  call void @llvm.dbg.value(metadata i8* %6, metadata !4756, metadata !DIExpression()), !dbg !4758
  ret i8* %6, !dbg !4768
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
attributes #9 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !52, !58, !75, !84, !174, !91, !97, !177, !167, !185, !202, !204, !215, !219, !221, !223, !225, !227, !230, !232, !234}
!llvm.ident = !{!623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623, !623}
!llvm.module.flags = !{!624, !625, !626, !627, !628}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 47, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !34)
!3 = !DIFile(filename: "src/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!0}
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1536, elements: !48)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !38, line: 50, size: 256, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!39 = !{!40, !43, !45, !47}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 52, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !37, file: !38, line: 55, baseType: !44, size: 32, offset: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !37, file: !38, line: 56, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !37, file: !38, line: 57, baseType: !44, size: 32, offset: 192)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !41, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !55)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!54 = !{}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "b64c", scope: !58, file: !64, line: 62, type: !70, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !60, globals: !61)
!59 = !DIFile(filename: "./lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !{!32, !30}
!61 = !{!56, !62}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "b64", scope: !58, file: !64, line: 252, type: !65, isLocal: true, isDefinition: true)
!64 = !DIFile(filename: "lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, elements: !68)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 256)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 64)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "file_name", scope: !75, file: !80, line: 46, type: !41, isLocal: true, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !77)
!76 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!77 = !{!73, !78}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !75, file: !80, line: 56, type: !81, isLocal: true, isDefinition: true)
!80 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "exit_failure", scope: !84, file: !87, line: 24, type: !88, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !86)
!85 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!86 = !{!82}
!87 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "program_name", scope: !91, file: !94, line: 33, type: !41, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !60, globals: !93)
!92 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!93 = !{!89}
!94 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !97, file: !128, line: 85, type: !161, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !120, globals: !125)
!98 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!99 = !{!5, !100, !105}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 46, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!108 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!120 = !{!44, !121, !122, !30}
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 62, baseType: !124)
!123 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!124 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !{!95, !126, !133, !145, !147, !150, !157, !159}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !97, file: !128, line: 101, type: !129, isLocal: false, isDefinition: true)
!128 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 320, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!131 = !{!132}
!132 = !DISubrange(count: 10)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !97, file: !128, line: 1052, type: !135, isLocal: false, isDefinition: true)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !128, line: 65, size: 448, elements: !136)
!136 = !{!137, !138, !139, !143, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !135, file: !128, line: 68, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !128, line: 71, baseType: !44, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !135, file: !128, line: 75, baseType: !140, size: 256, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !135, file: !128, line: 78, baseType: !41, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !135, file: !128, line: 81, baseType: !41, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !97, file: !128, line: 116, type: !135, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !97, file: !128, line: 842, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !68)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec", scope: !97, file: !128, line: 845, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !128, line: 834, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !128, line: 836, baseType: !122, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !128, line: 837, baseType: !30, size: 64, offset: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "nslots", scope: !97, file: !128, line: 843, type: !44, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "slotvec0", scope: !97, file: !128, line: 844, type: !153, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !167, file: !170, line: 26, type: !171, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !169)
!168 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{!165}
!170 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176)
!175 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!176 = !{!20}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !179, retainedTypes: !184)
!178 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!179 = !{!180}
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 41, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!182 = !{!183}
!183 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!184 = !{!32}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !201)
!186 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!187 = !{!188}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !190, file: !189, line: 186, baseType: !7, size: 32, elements: !199)
!189 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!190 = distinct !DISubprogram(name: "x2nrealloc", scope: !189, file: !189, line: 174, type: !191, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !194)
!191 = !DISubroutineType(types: !192)
!192 = !{!32, !32, !193, !122}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!194 = !{!195, !196, !197, !198}
!195 = !DILocalVariable(name: "p", arg: 1, scope: !190, file: !189, line: 174, type: !32)
!196 = !DILocalVariable(name: "pn", arg: 2, scope: !190, file: !189, line: 174, type: !193)
!197 = !DILocalVariable(name: "s", arg: 3, scope: !190, file: !189, line: 174, type: !122)
!198 = !DILocalVariable(name: "n", scope: !190, file: !189, line: 176, type: !122)
!199 = !{!200}
!200 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!201 = !{!122, !30, !32}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!203 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!205 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = !{!207}
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !208, line: 26, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!209 = !{!210, !211, !212, !213, !214}
!210 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!211 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!212 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!213 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!214 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !218)
!216 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !{!207, !105}
!218 = !{!44, !121}
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !184)
!220 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!222 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !184)
!224 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !184)
!226 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !229)
!228 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = !{!122}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!231 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!233 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !236, retainedTypes: !184)
!235 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!236 = !{!237}
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 41, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!240 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!241 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!242 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!243 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!247 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!278 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!279 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!280 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!281 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!282 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!283 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!284 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!285 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!286 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!287 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!288 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!289 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!348 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!435 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!509 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!510 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!511 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!512 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!513 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!514 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!516 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!517 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!518 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!519 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!520 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!521 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!522 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!524 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!526 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!555 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!556 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!557 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!558 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!559 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!564 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!565 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!566 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!567 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!623 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!624 = !{i32 2, !"Dwarf Version", i32 4}
!625 = !{i32 2, !"Debug Info Version", i32 3}
!626 = !{i32 1, !"wchar_size", i32 4}
!627 = !{i32 7, !"PIC Level", i32 2}
!628 = !{i32 7, !"PIE Level", i32 2}
!629 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !630, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !44}
!632 = !{!633}
!633 = !DILocalVariable(name: "status", arg: 1, scope: !629, file: !3, line: 59, type: !44)
!634 = !DILocalVariable(name: "infomap", scope: !635, file: !636, line: 632, type: !650)
!635 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !636, file: !636, line: 630, type: !637, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!636 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!637 = !DISubroutineType(types: !638)
!638 = !{null, !41}
!639 = !{!640, !634, !641, !642, !649}
!640 = !DILocalVariable(name: "program", arg: 1, scope: !635, file: !636, line: 630, type: !41)
!641 = !DILocalVariable(name: "node", scope: !635, file: !636, line: 642, type: !41)
!642 = !DILocalVariable(name: "map_prog", scope: !635, file: !636, line: 643, type: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !635, file: !636, line: 632, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !645, file: !636, line: 632, baseType: !41, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !636, line: 632, baseType: !41, size: 64, offset: 64)
!649 = !DILocalVariable(name: "lc_messages", scope: !635, file: !636, line: 655, type: !41)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 896, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 7)
!653 = !DILocation(line: 632, column: 67, scope: !635, inlinedAt: !654)
!654 = distinct !DILocation(line: 89, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 64, column: 5)
!656 = distinct !DILexicalBlock(scope: !629, file: !3, line: 61, column: 7)
!657 = !DILocation(line: 59, column: 12, scope: !629)
!658 = !DILocation(line: 61, column: 14, scope: !656)
!659 = !DILocation(line: 61, column: 7, scope: !629)
!660 = !DILocation(line: 62, column: 5, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !3, line: 62, column: 5)
!662 = !{!663, !663, i64 0}
!663 = !{!"any pointer", !664, i64 0}
!664 = !{!"omnipotent char", !665, i64 0}
!665 = !{!"Simple C/C++ TBAA"}
!666 = !DILocation(line: 65, column: 7, scope: !655)
!667 = !DILocation(line: 580, column: 3, scope: !668, inlinedAt: !671)
!668 = distinct !DISubprogram(name: "emit_stdin_note", scope: !636, file: !636, line: 578, type: !669, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!669 = !DISubroutineType(types: !670)
!670 = !{null}
!671 = distinct !DILocation(line: 70, column: 7, scope: !655)
!672 = !DILocation(line: 587, column: 3, scope: !673, inlinedAt: !674)
!673 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !636, file: !636, line: 585, type: !669, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!674 = distinct !DILocation(line: 71, column: 7, scope: !655)
!675 = !DILocation(line: 73, column: 7, scope: !655)
!676 = !DILocation(line: 80, column: 7, scope: !655)
!677 = !DILocation(line: 81, column: 7, scope: !655)
!678 = !DILocation(line: 82, column: 7, scope: !655)
!679 = !DILocation(line: 632, column: 3, scope: !635, inlinedAt: !654)
!680 = !DILocation(line: 643, column: 36, scope: !635, inlinedAt: !654)
!681 = !DILocation(line: 643, column: 25, scope: !635, inlinedAt: !654)
!682 = !DILocation(line: 645, column: 33, scope: !635, inlinedAt: !654)
!683 = !DILocation(line: 645, column: 3, scope: !635, inlinedAt: !654)
!684 = !DILocation(line: 646, column: 13, scope: !635, inlinedAt: !654)
!685 = !DILocation(line: 645, column: 20, scope: !635, inlinedAt: !654)
!686 = !{!687, !663, i64 0}
!687 = !{!"infomap", !663, i64 0, !663, i64 8}
!688 = !DILocation(line: 645, column: 10, scope: !635, inlinedAt: !654)
!689 = !DILocation(line: 645, column: 28, scope: !635, inlinedAt: !654)
!690 = distinct !{!690, !691, !692}
!691 = !DILocation(line: 645, column: 3, scope: !635)
!692 = !DILocation(line: 646, column: 13, scope: !635)
!693 = !DILocation(line: 648, column: 17, scope: !694, inlinedAt: !654)
!694 = distinct !DILexicalBlock(scope: !635, file: !636, line: 648, column: 7)
!695 = !{!687, !663, i64 8}
!696 = !DILocation(line: 648, column: 7, scope: !694, inlinedAt: !654)
!697 = !DILocation(line: 648, column: 7, scope: !635, inlinedAt: !654)
!698 = !DILocation(line: 642, column: 15, scope: !635, inlinedAt: !654)
!699 = !DILocation(line: 651, column: 3, scope: !635, inlinedAt: !654)
!700 = !DILocation(line: 655, column: 29, scope: !635, inlinedAt: !654)
!701 = !DILocation(line: 655, column: 15, scope: !635, inlinedAt: !654)
!702 = !DILocation(line: 656, column: 7, scope: !703, inlinedAt: !654)
!703 = distinct !DILexicalBlock(scope: !635, file: !636, line: 656, column: 7)
!704 = !DILocation(line: 656, column: 19, scope: !703, inlinedAt: !654)
!705 = !DILocation(line: 656, column: 22, scope: !703, inlinedAt: !654)
!706 = !DILocation(line: 656, column: 7, scope: !635, inlinedAt: !654)
!707 = !DILocation(line: 662, column: 7, scope: !708, inlinedAt: !654)
!708 = distinct !DILexicalBlock(scope: !703, file: !636, line: 657, column: 5)
!709 = !DILocation(line: 664, column: 5, scope: !708, inlinedAt: !654)
!710 = !DILocation(line: 665, column: 3, scope: !635, inlinedAt: !654)
!711 = !DILocation(line: 667, column: 3, scope: !635, inlinedAt: !654)
!712 = !DILocation(line: 669, column: 1, scope: !635, inlinedAt: !654)
!713 = !DILocation(line: 92, column: 3, scope: !629)
!714 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 265, type: !715, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !718)
!715 = !DISubroutineType(types: !716)
!716 = !{!44, !44, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!718 = !{!719, !720, !721, !722, !777, !778, !779, !780}
!719 = !DILocalVariable(name: "argc", arg: 1, scope: !714, file: !3, line: 265, type: !44)
!720 = !DILocalVariable(name: "argv", arg: 2, scope: !714, file: !3, line: 265, type: !717)
!721 = !DILocalVariable(name: "opt", scope: !714, file: !3, line: 267, type: !44)
!722 = !DILocalVariable(name: "input_fh", scope: !714, file: !3, line: 268, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !726)
!725 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !728)
!727 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !744, !746, !747, !748, !752, !753, !754, !758, !761, !763, !766, !769, !770, !771, !772, !773}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !726, file: !727, line: 51, baseType: !44, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !726, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !726, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !726, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !726, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !726, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !726, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !726, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !726, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !726, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !726, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !726, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !726, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !727, line: 36, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !726, file: !727, line: 70, baseType: !745, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !726, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !726, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !726, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !750, line: 150, baseType: !751)
!750 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!751 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !726, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !726, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !726, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 1)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !726, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !727, line: 43, baseType: null)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !726, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !750, line: 151, baseType: !751)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !726, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !727, line: 37, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !726, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !727, line: 38, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !726, file: !727, line: 93, baseType: !745, size: 64, offset: 1344)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !726, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !726, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !726, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !726, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 20)
!777 = !DILocalVariable(name: "infile", scope: !714, file: !3, line: 269, type: !41)
!778 = !DILocalVariable(name: "decode", scope: !714, file: !3, line: 272, type: !81)
!779 = !DILocalVariable(name: "ignore_garbage", scope: !714, file: !3, line: 274, type: !81)
!780 = !DILocalVariable(name: "wrap_column", scope: !714, file: !3, line: 276, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !782, line: 102, baseType: !783)
!782 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !750, line: 72, baseType: !124)
!784 = !DILocalVariable(name: "inbuf", scope: !785, file: !3, line: 207, type: !815)
!785 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !786, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !723, !723, !81}
!788 = !{!789, !790, !791, !784, !792, !796, !797, !806, !808, !809, !810}
!789 = !DILocalVariable(name: "in", arg: 1, scope: !785, file: !3, line: 205, type: !723)
!790 = !DILocalVariable(name: "out", arg: 2, scope: !785, file: !3, line: 205, type: !723)
!791 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !785, file: !3, line: 205, type: !81)
!792 = !DILocalVariable(name: "outbuf", scope: !785, file: !3, line: 208, type: !793)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24576, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 3072)
!796 = !DILocalVariable(name: "sum", scope: !785, file: !3, line: 209, type: !122)
!797 = !DILocalVariable(name: "ctx", scope: !785, file: !3, line: 210, type: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !799, line: 35, size: 64, elements: !800)
!799 = !DIFile(filename: "./lib/base64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !798, file: !799, line: 37, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !798, file: !799, line: 38, baseType: !803, size: 32, offset: 32)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 4)
!806 = !DILocalVariable(name: "ok", scope: !807, file: !3, line: 216, type: !81)
!807 = distinct !DILexicalBlock(scope: !785, file: !3, line: 215, column: 5)
!808 = !DILocalVariable(name: "n", scope: !807, file: !3, line: 217, type: !122)
!809 = !DILocalVariable(name: "k", scope: !807, file: !3, line: 218, type: !7)
!810 = !DILocalVariable(name: "i", scope: !811, file: !3, line: 227, type: !122)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 227, column: 15)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 226, column: 13)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 225, column: 15)
!814 = distinct !DILexicalBlock(scope: !807, file: !3, line: 222, column: 9)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32768, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 4096)
!818 = !DILocation(line: 207, column: 8, scope: !785, inlinedAt: !819)
!819 = distinct !DILocation(line: 337, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !714, file: !3, line: 336, column: 7)
!821 = !DILocation(line: 208, column: 8, scope: !785, inlinedAt: !819)
!822 = !DILocalVariable(name: "inbuf", scope: !823, file: !3, line: 168, type: !838)
!823 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !824, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !723, !723, !781}
!826 = !{!827, !828, !829, !830, !822, !831, !835, !836}
!827 = !DILocalVariable(name: "in", arg: 1, scope: !823, file: !3, line: 165, type: !723)
!828 = !DILocalVariable(name: "out", arg: 2, scope: !823, file: !3, line: 165, type: !723)
!829 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !823, file: !3, line: 165, type: !781)
!830 = !DILocalVariable(name: "current_column", scope: !823, file: !3, line: 167, type: !122)
!831 = !DILocalVariable(name: "outbuf", scope: !823, file: !3, line: 169, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 327680, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 40960)
!835 = !DILocalVariable(name: "sum", scope: !823, file: !3, line: 170, type: !122)
!836 = !DILocalVariable(name: "n", scope: !837, file: !3, line: 174, type: !122)
!837 = distinct !DILexicalBlock(scope: !823, file: !3, line: 173, column: 5)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 245760, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 30720)
!841 = !DILocation(line: 168, column: 8, scope: !823, inlinedAt: !842)
!842 = distinct !DILocation(line: 339, column: 5, scope: !820)
!843 = !DILocation(line: 169, column: 8, scope: !823, inlinedAt: !842)
!844 = !DILocation(line: 265, column: 11, scope: !714)
!845 = !DILocation(line: 265, column: 24, scope: !714)
!846 = !DILocation(line: 272, column: 8, scope: !714)
!847 = !DILocation(line: 274, column: 8, scope: !714)
!848 = !DILocation(line: 276, column: 13, scope: !714)
!849 = !DILocation(line: 279, column: 21, scope: !714)
!850 = !DILocation(line: 279, column: 3, scope: !714)
!851 = !DILocation(line: 280, column: 3, scope: !714)
!852 = !DILocation(line: 281, column: 3, scope: !714)
!853 = !DILocation(line: 282, column: 3, scope: !714)
!854 = !DILocation(line: 284, column: 3, scope: !714)
!855 = !DILocation(line: 286, column: 3, scope: !714)
!856 = !DILocation(line: 286, column: 17, scope: !714)
!857 = !DILocation(line: 267, column: 7, scope: !714)
!858 = distinct !{!858, !855, !859}
!859 = !DILocation(line: 309, column: 7, scope: !714)
!860 = !DILocation(line: 294, column: 35, scope: !861)
!861 = distinct !DILexicalBlock(scope: !714, file: !3, line: 288, column: 7)
!862 = !DILocation(line: 295, column: 35, scope: !861)
!863 = !DILocation(line: 294, column: 23, scope: !861)
!864 = !DILocation(line: 296, column: 9, scope: !861)
!865 = !DILocation(line: 302, column: 7, scope: !861)
!866 = !DILocation(line: 304, column: 7, scope: !861)
!867 = !DILocation(line: 307, column: 9, scope: !861)
!868 = !DILocation(line: 311, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !714, file: !3, line: 311, column: 7)
!870 = !{!871, !871, i64 0}
!871 = !{!"int", !664, i64 0}
!872 = !DILocation(line: 311, column: 12, scope: !869)
!873 = !DILocation(line: 311, column: 21, scope: !869)
!874 = !DILocation(line: 311, column: 7, scope: !714)
!875 = !DILocation(line: 313, column: 20, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 312, column: 5)
!877 = !DILocation(line: 313, column: 55, scope: !876)
!878 = !DILocation(line: 313, column: 50, scope: !876)
!879 = !DILocation(line: 313, column: 43, scope: !876)
!880 = !DILocation(line: 313, column: 7, scope: !876)
!881 = !DILocation(line: 314, column: 7, scope: !876)
!882 = !DILocation(line: 317, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !714, file: !3, line: 317, column: 7)
!884 = !DILocation(line: 317, column: 7, scope: !714)
!885 = !DILocation(line: 318, column: 14, scope: !883)
!886 = !DILocation(line: 269, column: 15, scope: !714)
!887 = !DILocation(line: 318, column: 5, scope: !883)
!888 = !DILocation(line: 0, scope: !883)
!889 = !DILocation(line: 322, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !714, file: !3, line: 322, column: 7)
!891 = !DILocation(line: 322, column: 7, scope: !714)
!892 = !DILocation(line: 325, column: 18, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 323, column: 5)
!894 = !DILocation(line: 268, column: 9, scope: !714)
!895 = !DILocation(line: 326, column: 5, scope: !893)
!896 = !DILocation(line: 329, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !3, line: 328, column: 5)
!898 = !DILocation(line: 330, column: 20, scope: !899)
!899 = distinct !DILexicalBlock(scope: !897, file: !3, line: 330, column: 11)
!900 = !DILocation(line: 330, column: 11, scope: !897)
!901 = !DILocation(line: 331, column: 9, scope: !899)
!902 = !DILocation(line: 0, scope: !897)
!903 = !DILocation(line: 334, column: 3, scope: !714)
!904 = !DILocation(line: 336, column: 7, scope: !820)
!905 = !DILocation(line: 0, scope: !820)
!906 = !DILocation(line: 336, column: 7, scope: !714)
!907 = !DILocation(line: 337, column: 34, scope: !820)
!908 = !DILocation(line: 205, column: 18, scope: !785, inlinedAt: !819)
!909 = !DILocation(line: 205, column: 28, scope: !785, inlinedAt: !819)
!910 = !DILocation(line: 205, column: 38, scope: !785, inlinedAt: !819)
!911 = !DILocation(line: 207, column: 3, scope: !785, inlinedAt: !819)
!912 = !DILocation(line: 208, column: 3, scope: !785, inlinedAt: !819)
!913 = !DILocation(line: 210, column: 3, scope: !785, inlinedAt: !819)
!914 = !DILocation(line: 210, column: 30, scope: !785, inlinedAt: !819)
!915 = !DILocation(line: 212, column: 3, scope: !785, inlinedAt: !819)
!916 = !DILocation(line: 214, column: 3, scope: !785, inlinedAt: !819)
!917 = !DILocation(line: 217, column: 7, scope: !807, inlinedAt: !819)
!918 = !DILocation(line: 209, column: 10, scope: !785, inlinedAt: !819)
!919 = !DILocation(line: 221, column: 7, scope: !807, inlinedAt: !819)
!920 = !DILocation(line: 0, scope: !814, inlinedAt: !819)
!921 = !DILocation(line: 223, column: 15, scope: !814, inlinedAt: !819)
!922 = !DILocation(line: 217, column: 14, scope: !807, inlinedAt: !819)
!923 = !DILocation(line: 223, column: 13, scope: !814, inlinedAt: !819)
!924 = !{!925, !925, i64 0}
!925 = !{!"long", !664, i64 0}
!926 = !DILocation(line: 225, column: 15, scope: !814, inlinedAt: !819)
!927 = !DILocation(line: 227, column: 27, scope: !811, inlinedAt: !819)
!928 = !DILocation(line: 227, column: 45, scope: !929, inlinedAt: !819)
!929 = distinct !DILexicalBlock(scope: !811, file: !3, line: 227, column: 15)
!930 = !DILocation(line: 227, column: 40, scope: !929, inlinedAt: !819)
!931 = !DILocation(line: 229, column: 41, scope: !932, inlinedAt: !819)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 229, column: 23)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 228, column: 17)
!934 = !DILocation(line: 229, column: 31, scope: !932, inlinedAt: !819)
!935 = !{!664, !664, i64 0}
!936 = !DILocation(line: 229, column: 23, scope: !932, inlinedAt: !819)
!937 = !DILocation(line: 229, column: 65, scope: !932, inlinedAt: !819)
!938 = !DILocation(line: 229, column: 47, scope: !932, inlinedAt: !819)
!939 = !DILocation(line: 230, column: 22, scope: !932, inlinedAt: !819)
!940 = !DILocation(line: 230, column: 21, scope: !932, inlinedAt: !819)
!941 = !DILocation(line: 232, column: 42, scope: !932, inlinedAt: !819)
!942 = !DILocation(line: 232, column: 63, scope: !932, inlinedAt: !819)
!943 = !DILocation(line: 232, column: 68, scope: !932, inlinedAt: !819)
!944 = !DILocation(line: 232, column: 72, scope: !932, inlinedAt: !819)
!945 = !DILocation(line: 232, column: 21, scope: !932, inlinedAt: !819)
!946 = !DILocation(line: 227, column: 34, scope: !929, inlinedAt: !819)
!947 = !DILocation(line: 0, scope: !811, inlinedAt: !819)
!948 = distinct !{!948, !949, !950}
!949 = !DILocation(line: 227, column: 15, scope: !811)
!950 = !DILocation(line: 233, column: 17, scope: !811)
!951 = !DILocation(line: 236, column: 18, scope: !814, inlinedAt: !819)
!952 = !DILocation(line: 236, column: 15, scope: !814, inlinedAt: !819)
!953 = !DILocalVariable(name: "__stream", arg: 1, scope: !954, file: !955, line: 135, type: !723)
!954 = distinct !DISubprogram(name: "ferror_unlocked", scope: !955, file: !955, line: 135, type: !956, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !958)
!955 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!956 = !DISubroutineType(types: !957)
!957 = !{!44, !723}
!958 = !{!953}
!959 = !DILocation(line: 135, column: 1, scope: !954, inlinedAt: !960)
!960 = distinct !DILocation(line: 238, column: 15, scope: !961, inlinedAt: !819)
!961 = distinct !DILexicalBlock(scope: !814, file: !3, line: 238, column: 15)
!962 = !DILocation(line: 137, column: 10, scope: !954, inlinedAt: !960)
!963 = !{!964, !871, i64 0}
!964 = !{!"_IO_FILE", !871, i64 0, !663, i64 8, !663, i64 16, !663, i64 24, !663, i64 32, !663, i64 40, !663, i64 48, !663, i64 56, !663, i64 64, !663, i64 72, !663, i64 80, !663, i64 88, !663, i64 96, !663, i64 104, !871, i64 112, !871, i64 116, !925, i64 120, !965, i64 128, !664, i64 130, !664, i64 131, !663, i64 136, !925, i64 144, !663, i64 152, !663, i64 160, !663, i64 168, !663, i64 176, !925, i64 184, !871, i64 192, !664, i64 196}
!965 = !{!"short", !664, i64 0}
!966 = !DILocation(line: 238, column: 15, scope: !961, inlinedAt: !819)
!967 = !DILocation(line: 238, column: 15, scope: !814, inlinedAt: !819)
!968 = !DILocation(line: 239, column: 13, scope: !961, inlinedAt: !819)
!969 = !DILocation(line: 241, column: 18, scope: !807, inlinedAt: !819)
!970 = !DILocation(line: 130, column: 10, scope: !971, inlinedAt: !974)
!971 = distinct !DISubprogram(name: "feof_unlocked", scope: !955, file: !955, line: 128, type: !956, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !972)
!972 = !{!973}
!973 = !DILocalVariable(name: "__stream", arg: 1, scope: !971, file: !955, line: 128, type: !723)
!974 = distinct !DILocation(line: 241, column: 52, scope: !807, inlinedAt: !819)
!975 = !DILocation(line: 241, column: 51, scope: !807, inlinedAt: !819)
!976 = !DILocation(line: 241, column: 48, scope: !807, inlinedAt: !819)
!977 = !DILocation(line: 128, column: 1, scope: !971, inlinedAt: !974)
!978 = distinct !{!978, !979, !980}
!979 = !DILocation(line: 221, column: 7, scope: !807)
!980 = !DILocation(line: 241, column: 61, scope: !807)
!981 = !DILocation(line: 218, column: 20, scope: !807, inlinedAt: !819)
!982 = !DILocation(line: 128, column: 1, scope: !971, inlinedAt: !983)
!983 = distinct !DILocation(line: 247, column: 29, scope: !984, inlinedAt: !819)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 247, column: 7)
!985 = distinct !DILexicalBlock(scope: !807, file: !3, line: 247, column: 7)
!986 = !DILocation(line: 130, column: 10, scope: !971, inlinedAt: !983)
!987 = !DILocation(line: 247, column: 28, scope: !984, inlinedAt: !819)
!988 = !DILocation(line: 247, column: 25, scope: !984, inlinedAt: !819)
!989 = !DILocation(line: 247, column: 21, scope: !984, inlinedAt: !819)
!990 = !DILocation(line: 247, column: 7, scope: !985, inlinedAt: !819)
!991 = distinct !{!991, !992, !993}
!992 = !DILocation(line: 247, column: 7, scope: !985)
!993 = !DILocation(line: 259, column: 9, scope: !985)
!994 = !DILocation(line: 249, column: 29, scope: !995, inlinedAt: !819)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 249, column: 15)
!996 = distinct !DILexicalBlock(scope: !984, file: !3, line: 248, column: 9)
!997 = !DILocation(line: 249, column: 22, scope: !995, inlinedAt: !819)
!998 = !DILocation(line: 251, column: 13, scope: !996, inlinedAt: !819)
!999 = !DILocation(line: 252, column: 49, scope: !996, inlinedAt: !819)
!1000 = !DILocation(line: 252, column: 47, scope: !996, inlinedAt: !819)
!1001 = !DILocation(line: 252, column: 16, scope: !996, inlinedAt: !819)
!1002 = !DILocation(line: 254, column: 15, scope: !1003, inlinedAt: !819)
!1003 = distinct !DILexicalBlock(scope: !996, file: !3, line: 254, column: 15)
!1004 = !DILocation(line: 254, column: 44, scope: !1003, inlinedAt: !819)
!1005 = !DILocation(line: 254, column: 42, scope: !1003, inlinedAt: !819)
!1006 = !DILocation(line: 254, column: 15, scope: !996, inlinedAt: !819)
!1007 = !DILocation(line: 255, column: 13, scope: !1003, inlinedAt: !819)
!1008 = !DILocation(line: 247, column: 41, scope: !984, inlinedAt: !819)
!1009 = !DILocation(line: 257, column: 15, scope: !996, inlinedAt: !819)
!1010 = !DILocation(line: 258, column: 13, scope: !1011, inlinedAt: !819)
!1011 = distinct !DILexicalBlock(scope: !996, file: !3, line: 257, column: 15)
!1012 = !DILocation(line: 260, column: 5, scope: !785, inlinedAt: !819)
!1013 = !DILocation(line: 128, column: 1, scope: !971, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 261, column: 11, scope: !785, inlinedAt: !819)
!1015 = !DILocation(line: 260, column: 5, scope: !807, inlinedAt: !819)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 214, column: 3, scope: !785)
!1018 = !DILocation(line: 261, column: 20, scope: !785)
!1019 = !DILocation(line: 262, column: 1, scope: !785, inlinedAt: !819)
!1020 = !DILocation(line: 337, column: 5, scope: !820)
!1021 = !DILocation(line: 165, column: 18, scope: !823, inlinedAt: !842)
!1022 = !DILocation(line: 165, column: 28, scope: !823, inlinedAt: !842)
!1023 = !DILocation(line: 165, column: 43, scope: !823, inlinedAt: !842)
!1024 = !DILocation(line: 167, column: 10, scope: !823, inlinedAt: !842)
!1025 = !DILocation(line: 168, column: 3, scope: !823, inlinedAt: !842)
!1026 = !DILocation(line: 169, column: 3, scope: !823, inlinedAt: !842)
!1027 = !DILocation(line: 172, column: 3, scope: !823, inlinedAt: !842)
!1028 = !DILocation(line: 170, column: 10, scope: !823, inlinedAt: !842)
!1029 = !DILocation(line: 177, column: 7, scope: !837, inlinedAt: !842)
!1030 = !DILocation(line: 0, scope: !1031, inlinedAt: !842)
!1031 = distinct !DILexicalBlock(scope: !837, file: !3, line: 178, column: 9)
!1032 = !DILocation(line: 179, column: 15, scope: !1031, inlinedAt: !842)
!1033 = !DILocation(line: 174, column: 14, scope: !837, inlinedAt: !842)
!1034 = !DILocation(line: 180, column: 15, scope: !1031, inlinedAt: !842)
!1035 = !DILocation(line: 128, column: 1, scope: !971, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 182, column: 15, scope: !837, inlinedAt: !842)
!1037 = !DILocation(line: 130, column: 10, scope: !971, inlinedAt: !1036)
!1038 = !DILocation(line: 182, column: 15, scope: !837, inlinedAt: !842)
!1039 = !DILocation(line: 182, column: 25, scope: !837, inlinedAt: !842)
!1040 = !DILocation(line: 135, column: 1, scope: !954, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 182, column: 29, scope: !837, inlinedAt: !842)
!1042 = !DILocation(line: 137, column: 10, scope: !954, inlinedAt: !1041)
!1043 = !DILocation(line: 182, column: 29, scope: !837, inlinedAt: !842)
!1044 = !DILocation(line: 182, column: 48, scope: !837, inlinedAt: !842)
!1045 = !DILocation(line: 182, column: 41, scope: !837, inlinedAt: !842)
!1046 = distinct !{!1046, !1047, !1048}
!1047 = !DILocation(line: 177, column: 7, scope: !837)
!1048 = !DILocation(line: 182, column: 63, scope: !837)
!1049 = !DILocation(line: 184, column: 15, scope: !1050, inlinedAt: !842)
!1050 = distinct !DILexicalBlock(scope: !837, file: !3, line: 184, column: 11)
!1051 = !DILocation(line: 184, column: 11, scope: !837, inlinedAt: !842)
!1052 = !DILocation(line: 188, column: 44, scope: !1053, inlinedAt: !842)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 185, column: 9)
!1054 = !DILocation(line: 188, column: 11, scope: !1053, inlinedAt: !842)
!1055 = !DILocalVariable(name: "buffer", arg: 1, scope: !1056, file: !3, line: 130, type: !41)
!1056 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !1057, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !41, !122, !781, !193, !723}
!1059 = !{!1055, !1060, !1061, !1062, !1063, !1064, !1065, !1070}
!1060 = !DILocalVariable(name: "len", arg: 2, scope: !1056, file: !3, line: 130, type: !122)
!1061 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1056, file: !3, line: 131, type: !781)
!1062 = !DILocalVariable(name: "current_column", arg: 4, scope: !1056, file: !3, line: 131, type: !193)
!1063 = !DILocalVariable(name: "out", arg: 5, scope: !1056, file: !3, line: 131, type: !723)
!1064 = !DILocalVariable(name: "written", scope: !1056, file: !3, line: 133, type: !122)
!1065 = !DILocalVariable(name: "cols_remaining", scope: !1066, file: !3, line: 144, type: !781)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 143, column: 7)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 142, column: 5)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 142, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 135, column: 7)
!1070 = !DILocalVariable(name: "to_write", scope: !1066, file: !3, line: 145, type: !122)
!1071 = !DILocation(line: 130, column: 25, scope: !1056, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 190, column: 11, scope: !1053, inlinedAt: !842)
!1073 = !DILocation(line: 130, column: 40, scope: !1056, inlinedAt: !1072)
!1074 = !DILocation(line: 131, column: 23, scope: !1056, inlinedAt: !1072)
!1075 = !DILocation(line: 131, column: 66, scope: !1056, inlinedAt: !1072)
!1076 = !DILocation(line: 135, column: 7, scope: !1056, inlinedAt: !1072)
!1077 = !DILocation(line: 133, column: 10, scope: !1056, inlinedAt: !1072)
!1078 = !DILocation(line: 142, column: 31, scope: !1067, inlinedAt: !1072)
!1079 = !DILocation(line: 142, column: 5, scope: !1068, inlinedAt: !1072)
!1080 = !DILocation(line: 138, column: 11, scope: !1081, inlinedAt: !1072)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 138, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 136, column: 5)
!1083 = !DILocation(line: 138, column: 43, scope: !1081, inlinedAt: !1072)
!1084 = !DILocation(line: 138, column: 11, scope: !1082, inlinedAt: !1072)
!1085 = !DILocation(line: 139, column: 9, scope: !1081, inlinedAt: !1072)
!1086 = !DILocation(line: 0, scope: !1053, inlinedAt: !842)
!1087 = !DILocation(line: 144, column: 48, scope: !1066, inlinedAt: !1072)
!1088 = !DILocation(line: 144, column: 19, scope: !1066, inlinedAt: !1072)
!1089 = !DILocation(line: 145, column: 16, scope: !1066, inlinedAt: !1072)
!1090 = !DILocation(line: 146, column: 20, scope: !1066, inlinedAt: !1072)
!1091 = !DILocation(line: 148, column: 22, scope: !1092, inlinedAt: !1072)
!1092 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 148, column: 13)
!1093 = !DILocation(line: 148, column: 13, scope: !1066, inlinedAt: !1072)
!1094 = !DILocalVariable(name: "__c", arg: 1, scope: !1095, file: !955, line: 91, type: !44)
!1095 = distinct !DISubprogram(name: "fputc_unlocked", scope: !955, file: !955, line: 91, type: !1096, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!44, !44, !723}
!1098 = !{!1094, !1099}
!1099 = !DILocalVariable(name: "__stream", arg: 2, scope: !1095, file: !955, line: 91, type: !723)
!1100 = !DILocation(line: 91, column: 21, scope: !1095, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 150, column: 17, scope: !1102, inlinedAt: !1072)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 150, column: 17)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 149, column: 11)
!1104 = !DILocation(line: 91, column: 32, scope: !1095, inlinedAt: !1101)
!1105 = !DILocation(line: 93, column: 10, scope: !1095, inlinedAt: !1101)
!1106 = !{!964, !663, i64 40}
!1107 = !{!964, !663, i64 48}
!1108 = !{!"branch_weights", i32 2000, i32 1}
!1109 = !DILocation(line: 150, column: 17, scope: !1103, inlinedAt: !1072)
!1110 = !DILocation(line: 150, column: 35, scope: !1102, inlinedAt: !1072)
!1111 = !DILocation(line: 151, column: 15, scope: !1102, inlinedAt: !1072)
!1112 = !DILocation(line: 156, column: 17, scope: !1113, inlinedAt: !1072)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 156, column: 17)
!1114 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 155, column: 11)
!1115 = !DILocation(line: 156, column: 64, scope: !1113, inlinedAt: !1072)
!1116 = !DILocation(line: 156, column: 17, scope: !1114, inlinedAt: !1072)
!1117 = !DILocation(line: 157, column: 15, scope: !1113, inlinedAt: !1072)
!1118 = !DILocation(line: 158, column: 29, scope: !1114, inlinedAt: !1072)
!1119 = !DILocation(line: 159, column: 21, scope: !1114, inlinedAt: !1072)
!1120 = !DILocation(line: 0, scope: !1114, inlinedAt: !1072)
!1121 = distinct !{!1121, !1122, !1123}
!1122 = !DILocation(line: 142, column: 5, scope: !1068)
!1123 = !DILocation(line: 161, column: 7, scope: !1068)
!1124 = !DILocation(line: 128, column: 1, scope: !971, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 194, column: 11, scope: !823, inlinedAt: !842)
!1126 = !DILocation(line: 130, column: 10, scope: !971, inlinedAt: !1125)
!1127 = !DILocation(line: 194, column: 11, scope: !823, inlinedAt: !842)
!1128 = !DILocation(line: 194, column: 21, scope: !823, inlinedAt: !842)
!1129 = !DILocation(line: 135, column: 1, scope: !954, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 194, column: 25, scope: !823, inlinedAt: !842)
!1131 = !DILocation(line: 137, column: 10, scope: !954, inlinedAt: !1130)
!1132 = !DILocation(line: 194, column: 25, scope: !823, inlinedAt: !842)
!1133 = !DILocation(line: 194, column: 44, scope: !823, inlinedAt: !842)
!1134 = !DILocation(line: 194, column: 37, scope: !823, inlinedAt: !842)
!1135 = distinct !{!1135, !1136, !1137}
!1136 = !DILocation(line: 172, column: 3, scope: !823)
!1137 = !DILocation(line: 194, column: 60, scope: !823)
!1138 = !DILocation(line: 197, column: 7, scope: !1139, inlinedAt: !842)
!1139 = distinct !DILexicalBlock(scope: !823, file: !3, line: 197, column: 7)
!1140 = !DILocation(line: 197, column: 37, scope: !1139, inlinedAt: !842)
!1141 = !DILocation(line: 197, column: 19, scope: !1139, inlinedAt: !842)
!1142 = !DILocation(line: 91, column: 21, scope: !1095, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 197, column: 44, scope: !1139, inlinedAt: !842)
!1144 = !DILocation(line: 91, column: 32, scope: !1095, inlinedAt: !1143)
!1145 = !DILocation(line: 93, column: 10, scope: !1095, inlinedAt: !1143)
!1146 = !DILocation(line: 197, column: 7, scope: !823, inlinedAt: !842)
!1147 = !DILocation(line: 197, column: 62, scope: !1139, inlinedAt: !842)
!1148 = !DILocation(line: 198, column: 5, scope: !1139, inlinedAt: !842)
!1149 = !DILocation(line: 135, column: 1, scope: !954, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 200, column: 7, scope: !1151, inlinedAt: !842)
!1151 = distinct !DILexicalBlock(scope: !823, file: !3, line: 200, column: 7)
!1152 = !DILocation(line: 137, column: 10, scope: !954, inlinedAt: !1150)
!1153 = !DILocation(line: 200, column: 7, scope: !1151, inlinedAt: !842)
!1154 = !DILocation(line: 200, column: 7, scope: !823, inlinedAt: !842)
!1155 = !DILocation(line: 201, column: 5, scope: !1151, inlinedAt: !842)
!1156 = !DILocation(line: 202, column: 1, scope: !823, inlinedAt: !842)
!1157 = !DILocation(line: 341, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !714, file: !3, line: 341, column: 7)
!1159 = !DILocation(line: 341, column: 25, scope: !1158)
!1160 = !DILocation(line: 341, column: 7, scope: !714)
!1161 = !DILocation(line: 343, column: 11, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 343, column: 11)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 342, column: 5)
!1164 = !DILocation(line: 0, scope: !1162)
!1165 = !DILocation(line: 343, column: 11, scope: !1163)
!1166 = !DILocation(line: 344, column: 9, scope: !1162)
!1167 = !DILocation(line: 346, column: 9, scope: !1162)
!1168 = !DILocation(line: 350, column: 1, scope: !714)
!1169 = distinct !DISubprogram(name: "base64_encode", scope: !64, file: !64, line: 88, type: !1170, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1174)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1172, !122, !1173, !122}
!1172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!1173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DILocalVariable(name: "in", arg: 1, scope: !1169, file: !64, line: 88, type: !1172)
!1176 = !DILocalVariable(name: "inlen", arg: 2, scope: !1169, file: !64, line: 88, type: !122)
!1177 = !DILocalVariable(name: "out", arg: 3, scope: !1169, file: !64, line: 89, type: !1173)
!1178 = !DILocalVariable(name: "outlen", arg: 4, scope: !1169, file: !64, line: 89, type: !122)
!1179 = !DILocation(line: 88, column: 37, scope: !1169)
!1180 = !DILocation(line: 88, column: 48, scope: !1169)
!1181 = !DILocation(line: 89, column: 31, scope: !1169)
!1182 = !DILocation(line: 89, column: 43, scope: !1169)
!1183 = !DILocation(line: 98, column: 14, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1169, file: !64, line: 98, column: 7)
!1185 = !DILocation(line: 98, column: 18, scope: !1184)
!1186 = !DILocation(line: 98, column: 23, scope: !1184)
!1187 = !DILocation(line: 98, column: 42, scope: !1184)
!1188 = !DILocation(line: 98, column: 46, scope: !1184)
!1189 = !DILocation(line: 98, column: 32, scope: !1184)
!1190 = !DILocation(line: 98, column: 7, scope: !1169)
!1191 = !DILocalVariable(name: "in", arg: 1, scope: !1192, file: !64, line: 69, type: !1172)
!1192 = distinct !DISubprogram(name: "base64_encode_fast", scope: !64, file: !64, line: 69, type: !1193, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1172, !122, !1173}
!1195 = !{!1191, !1196, !1197}
!1196 = !DILocalVariable(name: "inlen", arg: 2, scope: !1192, file: !64, line: 69, type: !122)
!1197 = !DILocalVariable(name: "out", arg: 3, scope: !1192, file: !64, line: 69, type: !1173)
!1198 = !DILocation(line: 69, column: 42, scope: !1192, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 100, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1184, file: !64, line: 99, column: 5)
!1201 = !DILocation(line: 69, column: 53, scope: !1192, inlinedAt: !1199)
!1202 = !DILocation(line: 69, column: 75, scope: !1192, inlinedAt: !1199)
!1203 = !DILocation(line: 71, column: 3, scope: !1192, inlinedAt: !1199)
!1204 = !DILocation(line: 73, column: 31, scope: !1205, inlinedAt: !1199)
!1205 = distinct !DILexicalBlock(scope: !1192, file: !64, line: 72, column: 5)
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"base64_encode_fast: argument 0"}
!1208 = distinct !{!1208, !"base64_encode_fast"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"base64_encode_fast: argument 1"}
!1211 = !DILocation(line: 73, column: 38, scope: !1205, inlinedAt: !1199)
!1212 = !DILocation(line: 73, column: 16, scope: !1205, inlinedAt: !1199)
!1213 = !{!1207, !1210}
!1214 = !DILocation(line: 73, column: 11, scope: !1205, inlinedAt: !1199)
!1215 = !DILocation(line: 73, column: 14, scope: !1205, inlinedAt: !1199)
!1216 = !DILocation(line: 74, column: 23, scope: !1205, inlinedAt: !1199)
!1217 = !DILocation(line: 74, column: 40, scope: !1205, inlinedAt: !1199)
!1218 = !DILocation(line: 74, column: 59, scope: !1205, inlinedAt: !1199)
!1219 = !DILocation(line: 74, column: 66, scope: !1205, inlinedAt: !1199)
!1220 = !DILocation(line: 74, column: 73, scope: !1205, inlinedAt: !1199)
!1221 = !DILocation(line: 74, column: 16, scope: !1205, inlinedAt: !1199)
!1222 = !DILocation(line: 74, column: 11, scope: !1205, inlinedAt: !1199)
!1223 = !DILocation(line: 74, column: 14, scope: !1205, inlinedAt: !1199)
!1224 = !DILocation(line: 75, column: 23, scope: !1205, inlinedAt: !1199)
!1225 = !DILocation(line: 75, column: 40, scope: !1205, inlinedAt: !1199)
!1226 = !DILocation(line: 75, column: 59, scope: !1205, inlinedAt: !1199)
!1227 = !DILocation(line: 75, column: 66, scope: !1205, inlinedAt: !1199)
!1228 = !DILocation(line: 75, column: 73, scope: !1205, inlinedAt: !1199)
!1229 = !DILocation(line: 75, column: 16, scope: !1205, inlinedAt: !1199)
!1230 = !DILocation(line: 75, column: 11, scope: !1205, inlinedAt: !1199)
!1231 = !DILocation(line: 75, column: 14, scope: !1205, inlinedAt: !1199)
!1232 = !DILocation(line: 76, column: 38, scope: !1205, inlinedAt: !1199)
!1233 = !DILocation(line: 76, column: 16, scope: !1205, inlinedAt: !1199)
!1234 = !DILocation(line: 76, column: 11, scope: !1205, inlinedAt: !1199)
!1235 = !DILocation(line: 76, column: 14, scope: !1205, inlinedAt: !1199)
!1236 = !DILocation(line: 78, column: 13, scope: !1205, inlinedAt: !1199)
!1237 = !DILocation(line: 79, column: 10, scope: !1205, inlinedAt: !1199)
!1238 = distinct !{!1238, !1239, !1240}
!1239 = !DILocation(line: 71, column: 3, scope: !1192)
!1240 = !DILocation(line: 80, column: 5, scope: !1192)
!1241 = !DILocation(line: 104, column: 10, scope: !1169)
!1242 = !DILocation(line: 104, column: 16, scope: !1169)
!1243 = !DILocation(line: 104, column: 3, scope: !1169)
!1244 = !DILocation(line: 106, column: 31, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1169, file: !64, line: 105, column: 5)
!1246 = !DILocation(line: 106, column: 38, scope: !1245)
!1247 = !DILocation(line: 106, column: 16, scope: !1245)
!1248 = !DILocation(line: 106, column: 11, scope: !1245)
!1249 = !DILocation(line: 106, column: 14, scope: !1245)
!1250 = !DILocation(line: 107, column: 12, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 107, column: 11)
!1252 = !DILocation(line: 107, column: 11, scope: !1245)
!1253 = !DILocation(line: 109, column: 33, scope: !1245)
!1254 = !DILocation(line: 109, column: 23, scope: !1245)
!1255 = !DILocation(line: 109, column: 40, scope: !1245)
!1256 = !DILocation(line: 110, column: 27, scope: !1245)
!1257 = !DILocation(line: 110, column: 47, scope: !1245)
!1258 = !DILocation(line: 110, column: 54, scope: !1245)
!1259 = !DILocation(line: 110, column: 24, scope: !1245)
!1260 = !DILocation(line: 111, column: 23, scope: !1245)
!1261 = !DILocation(line: 109, column: 16, scope: !1245)
!1262 = !DILocation(line: 109, column: 11, scope: !1245)
!1263 = !DILocation(line: 109, column: 14, scope: !1245)
!1264 = !DILocation(line: 112, column: 12, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 112, column: 11)
!1266 = !DILocation(line: 112, column: 11, scope: !1245)
!1267 = !DILocation(line: 115, column: 10, scope: !1245)
!1268 = !DILocation(line: 116, column: 29, scope: !1245)
!1269 = !DILocation(line: 116, column: 19, scope: !1245)
!1270 = !DILocation(line: 116, column: 36, scope: !1245)
!1271 = !DILocation(line: 117, column: 23, scope: !1245)
!1272 = !DILocation(line: 117, column: 43, scope: !1245)
!1273 = !DILocation(line: 117, column: 50, scope: !1245)
!1274 = !DILocation(line: 117, column: 20, scope: !1245)
!1275 = !DILocation(line: 118, column: 19, scope: !1245)
!1276 = !DILocation(line: 116, column: 12, scope: !1245)
!1277 = !DILocation(line: 0, scope: !1245)
!1278 = !DILocation(line: 114, column: 11, scope: !1245)
!1279 = !DILocation(line: 114, column: 14, scope: !1245)
!1280 = !DILocation(line: 120, column: 12, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 120, column: 11)
!1282 = !DILocation(line: 120, column: 11, scope: !1245)
!1283 = !DILocation(line: 122, column: 16, scope: !1245)
!1284 = !DILocation(line: 122, column: 39, scope: !1245)
!1285 = !DILocation(line: 122, column: 46, scope: !1245)
!1286 = !DILocation(line: 122, column: 24, scope: !1245)
!1287 = !DILocation(line: 122, column: 14, scope: !1245)
!1288 = !DILocation(line: 123, column: 12, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 123, column: 11)
!1290 = !DILocation(line: 123, column: 11, scope: !1245)
!1291 = !DILocation(line: 122, column: 11, scope: !1245)
!1292 = !DILocation(line: 126, column: 14, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 125, column: 11)
!1294 = !DILocation(line: 127, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1245, file: !64, line: 127, column: 11)
!1296 = !DILocation(line: 128, column: 12, scope: !1295)
!1297 = distinct !{!1297, !1243, !1298}
!1298 = !DILocation(line: 129, column: 5, scope: !1169)
!1299 = !DILocation(line: 131, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1169, file: !64, line: 131, column: 7)
!1301 = !DILocation(line: 131, column: 7, scope: !1169)
!1302 = !DILocation(line: 132, column: 10, scope: !1300)
!1303 = !DILocation(line: 132, column: 5, scope: !1300)
!1304 = !DILocation(line: 133, column: 1, scope: !1169)
!1305 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !64, file: !64, line: 145, type: !1306, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!122, !41, !122, !717}
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DILocalVariable(name: "in", arg: 1, scope: !1305, file: !64, line: 145, type: !41)
!1310 = !DILocalVariable(name: "inlen", arg: 2, scope: !1305, file: !64, line: 145, type: !122)
!1311 = !DILocalVariable(name: "out", arg: 3, scope: !1305, file: !64, line: 145, type: !717)
!1312 = !DILocalVariable(name: "outlen", scope: !1305, file: !64, line: 147, type: !122)
!1313 = !DILocation(line: 145, column: 34, scope: !1305)
!1314 = !DILocation(line: 145, column: 45, scope: !1305)
!1315 = !DILocation(line: 145, column: 59, scope: !1305)
!1316 = !DILocation(line: 147, column: 23, scope: !1305)
!1317 = !DILocation(line: 147, column: 21, scope: !1305)
!1318 = !DILocation(line: 147, column: 10, scope: !1305)
!1319 = !DILocation(line: 161, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1305, file: !64, line: 161, column: 7)
!1321 = !DILocation(line: 161, column: 7, scope: !1305)
!1322 = !DILocation(line: 163, column: 12, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !64, line: 162, column: 5)
!1324 = !DILocation(line: 164, column: 7, scope: !1323)
!1325 = !DILocation(line: 167, column: 10, scope: !1305)
!1326 = !DILocation(line: 167, column: 8, scope: !1305)
!1327 = !DILocation(line: 168, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1305, file: !64, line: 168, column: 7)
!1329 = !DILocation(line: 168, column: 7, scope: !1305)
!1330 = !DILocation(line: 171, column: 3, scope: !1305)
!1331 = !DILocation(line: 173, column: 3, scope: !1305)
!1332 = !DILocation(line: 0, scope: !1328)
!1333 = !DILocation(line: 174, column: 1, scope: !1305)
!1334 = distinct !DISubprogram(name: "isbase64", scope: !64, file: !64, line: 329, type: !1335, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!81, !31}
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "ch", arg: 1, scope: !1334, file: !64, line: 329, type: !31)
!1339 = !DILocation(line: 329, column: 16, scope: !1334)
!1340 = !DILocation(line: 331, column: 49, scope: !1334)
!1341 = !DILocation(line: 331, column: 46, scope: !1334)
!1342 = !DILocation(line: 331, column: 3, scope: !1334)
!1343 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !64, file: !64, line: 336, type: !1344, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1351)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !799, line: 35, size: 64, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1347, file: !799, line: 37, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1347, file: !799, line: 38, baseType: !803, size: 32, offset: 32)
!1351 = !{!1352}
!1352 = !DILocalVariable(name: "ctx", arg: 1, scope: !1343, file: !64, line: 336, type: !1346)
!1353 = !DILocation(line: 336, column: 55, scope: !1343)
!1354 = !DILocation(line: 338, column: 8, scope: !1343)
!1355 = !DILocation(line: 338, column: 10, scope: !1343)
!1356 = !{!1357, !871, i64 0}
!1357 = !{!"base64_decode_context", !871, i64 0, !664, i64 4}
!1358 = !DILocation(line: 339, column: 1, scope: !1343)
!1359 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !64, file: !64, line: 488, type: !1360, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!81, !1346, !1172, !122, !1173, !193}
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1374, !1376}
!1363 = !DILocalVariable(name: "ctx", arg: 1, scope: !1359, file: !64, line: 488, type: !1346)
!1364 = !DILocalVariable(name: "in", arg: 2, scope: !1359, file: !64, line: 489, type: !1172)
!1365 = !DILocalVariable(name: "inlen", arg: 3, scope: !1359, file: !64, line: 489, type: !122)
!1366 = !DILocalVariable(name: "out", arg: 4, scope: !1359, file: !64, line: 490, type: !1173)
!1367 = !DILocalVariable(name: "outlen", arg: 5, scope: !1359, file: !64, line: 490, type: !193)
!1368 = !DILocalVariable(name: "outleft", scope: !1359, file: !64, line: 492, type: !122)
!1369 = !DILocalVariable(name: "ignore_newlines", scope: !1359, file: !64, line: 493, type: !81)
!1370 = !DILocalVariable(name: "flush_ctx", scope: !1359, file: !64, line: 494, type: !81)
!1371 = !DILocalVariable(name: "ctx_i", scope: !1359, file: !64, line: 495, type: !7)
!1372 = !DILocalVariable(name: "outleft_save", scope: !1373, file: !64, line: 506, type: !122)
!1373 = distinct !DILexicalBlock(scope: !1359, file: !64, line: 505, column: 5)
!1374 = !DILocalVariable(name: "in_end", scope: !1375, file: !64, line: 539, type: !41)
!1375 = distinct !DILexicalBlock(scope: !1373, file: !64, line: 538, column: 7)
!1376 = !DILocalVariable(name: "non_nl", scope: !1375, file: !64, line: 540, type: !41)
!1377 = !DILocation(line: 488, column: 50, scope: !1359)
!1378 = !DILocation(line: 489, column: 41, scope: !1359)
!1379 = !DILocation(line: 489, column: 52, scope: !1359)
!1380 = !DILocation(line: 490, column: 35, scope: !1359)
!1381 = !DILocation(line: 490, column: 48, scope: !1359)
!1382 = !DILocation(line: 492, column: 20, scope: !1359)
!1383 = !DILocation(line: 492, column: 10, scope: !1359)
!1384 = !DILocation(line: 493, column: 30, scope: !1359)
!1385 = !DILocation(line: 494, column: 8, scope: !1359)
!1386 = !DILocation(line: 495, column: 16, scope: !1359)
!1387 = !DILocation(line: 497, column: 7, scope: !1359)
!1388 = !DILocation(line: 499, column: 20, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !64, line: 498, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1359, file: !64, line: 497, column: 7)
!1391 = !DILocation(line: 500, column: 25, scope: !1389)
!1392 = !DILocation(line: 501, column: 5, scope: !1389)
!1393 = !DILocation(line: 504, column: 3, scope: !1359)
!1394 = !DILocation(line: 0, scope: !1373)
!1395 = !DILocation(line: 506, column: 14, scope: !1373)
!1396 = !DILocation(line: 407, column: 13, scope: !1397, inlinedAt: !1408)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !64, line: 407, column: 7)
!1398 = distinct !DISubprogram(name: "decode_4", scope: !64, file: !64, line: 403, type: !1399, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1402)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!81, !1172, !122, !1401, !193}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1402 = !{!1403, !1404, !1405, !1406, !1407}
!1403 = !DILocalVariable(name: "in", arg: 1, scope: !1398, file: !64, line: 403, type: !1172)
!1404 = !DILocalVariable(name: "inlen", arg: 2, scope: !1398, file: !64, line: 403, type: !122)
!1405 = !DILocalVariable(name: "outp", arg: 3, scope: !1398, file: !64, line: 404, type: !1401)
!1406 = !DILocalVariable(name: "outleft", arg: 4, scope: !1398, file: !64, line: 404, type: !193)
!1407 = !DILocalVariable(name: "out", scope: !1398, file: !64, line: 406, type: !30)
!1408 = distinct !DILocation(line: 514, column: 20, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !64, line: 514, column: 19)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !64, line: 510, column: 13)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !64, line: 508, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1373, file: !64, line: 507, column: 11)
!1413 = !DILocation(line: 507, column: 22, scope: !1412)
!1414 = !DILocation(line: 403, column: 32, scope: !1398, inlinedAt: !1408)
!1415 = !DILocation(line: 403, column: 43, scope: !1398, inlinedAt: !1408)
!1416 = !DILocation(line: 406, column: 9, scope: !1398, inlinedAt: !1408)
!1417 = !DILocation(line: 410, column: 18, scope: !1418, inlinedAt: !1408)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !64, line: 410, column: 7)
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"decode_4: argument 0"}
!1421 = distinct !{!1421, !"decode_4"}
!1422 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 410, column: 8, scope: !1418, inlinedAt: !1408)
!1424 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1423)
!1425 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1423)
!1426 = !DILocation(line: 410, column: 25, scope: !1418, inlinedAt: !1408)
!1427 = !DILocation(line: 410, column: 39, scope: !1418, inlinedAt: !1408)
!1428 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 410, column: 29, scope: !1418, inlinedAt: !1408)
!1430 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1429)
!1431 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1429)
!1432 = !DILocation(line: 410, column: 7, scope: !1398, inlinedAt: !1408)
!1433 = !DILocation(line: 413, column: 7, scope: !1434, inlinedAt: !1408)
!1434 = distinct !DILexicalBlock(scope: !1398, file: !64, line: 413, column: 7)
!1435 = !DILocation(line: 413, column: 7, scope: !1398, inlinedAt: !1408)
!1436 = !DILocation(line: 415, column: 40, scope: !1437, inlinedAt: !1408)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !64, line: 414, column: 5)
!1438 = !DILocation(line: 416, column: 17, scope: !1437, inlinedAt: !1408)
!1439 = !DILocation(line: 415, column: 11, scope: !1437, inlinedAt: !1408)
!1440 = !DILocation(line: 415, column: 14, scope: !1437, inlinedAt: !1408)
!1441 = !DILocation(line: 417, column: 7, scope: !1437, inlinedAt: !1408)
!1442 = !DILocation(line: 418, column: 5, scope: !1437, inlinedAt: !1408)
!1443 = !DILocation(line: 0, scope: !1409)
!1444 = !DILocation(line: 0, scope: !1398, inlinedAt: !1408)
!1445 = !DILocation(line: 420, column: 13, scope: !1446, inlinedAt: !1408)
!1446 = distinct !DILexicalBlock(scope: !1398, file: !64, line: 420, column: 7)
!1447 = !DILocation(line: 420, column: 7, scope: !1398, inlinedAt: !1408)
!1448 = !DILocation(line: 423, column: 7, scope: !1449, inlinedAt: !1408)
!1449 = distinct !DILexicalBlock(scope: !1398, file: !64, line: 423, column: 7)
!1450 = !DILocation(line: 423, column: 13, scope: !1449, inlinedAt: !1408)
!1451 = !DILocation(line: 423, column: 7, scope: !1398, inlinedAt: !1408)
!1452 = !DILocation(line: 425, column: 17, scope: !1453, inlinedAt: !1408)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !64, line: 425, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !64, line: 424, column: 5)
!1455 = !DILocation(line: 425, column: 11, scope: !1454, inlinedAt: !1408)
!1456 = !DILocation(line: 428, column: 11, scope: !1457, inlinedAt: !1408)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !64, line: 428, column: 11)
!1458 = !DILocation(line: 428, column: 17, scope: !1457, inlinedAt: !1408)
!1459 = !DILocation(line: 428, column: 11, scope: !1454, inlinedAt: !1408)
!1460 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 433, column: 12, scope: !1462, inlinedAt: !1408)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !64, line: 433, column: 11)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !64, line: 432, column: 5)
!1464 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1461)
!1465 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1461)
!1466 = !DILocation(line: 433, column: 11, scope: !1463, inlinedAt: !1408)
!1467 = !DILocation(line: 436, column: 11, scope: !1468, inlinedAt: !1408)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !64, line: 436, column: 11)
!1469 = !DILocation(line: 436, column: 11, scope: !1463, inlinedAt: !1408)
!1470 = !DILocation(line: 438, column: 45, scope: !1471, inlinedAt: !1408)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !64, line: 437, column: 9)
!1472 = !DILocation(line: 439, column: 21, scope: !1471, inlinedAt: !1408)
!1473 = !DILocation(line: 438, column: 15, scope: !1471, inlinedAt: !1408)
!1474 = !DILocation(line: 438, column: 18, scope: !1471, inlinedAt: !1408)
!1475 = !DILocation(line: 440, column: 11, scope: !1471, inlinedAt: !1408)
!1476 = !DILocation(line: 441, column: 9, scope: !1471, inlinedAt: !1408)
!1477 = !DILocation(line: 0, scope: !1437, inlinedAt: !1408)
!1478 = !DILocation(line: 443, column: 17, scope: !1479, inlinedAt: !1408)
!1479 = distinct !DILexicalBlock(scope: !1463, file: !64, line: 443, column: 11)
!1480 = !DILocation(line: 443, column: 11, scope: !1463, inlinedAt: !1408)
!1481 = !DILocation(line: 446, column: 11, scope: !1482, inlinedAt: !1408)
!1482 = distinct !DILexicalBlock(scope: !1463, file: !64, line: 446, column: 11)
!1483 = !DILocation(line: 446, column: 17, scope: !1482, inlinedAt: !1408)
!1484 = !DILocation(line: 446, column: 11, scope: !1463, inlinedAt: !1408)
!1485 = !DILocation(line: 448, column: 21, scope: !1486, inlinedAt: !1408)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !64, line: 448, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !64, line: 447, column: 9)
!1488 = !DILocation(line: 448, column: 15, scope: !1487, inlinedAt: !1408)
!1489 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 453, column: 16, scope: !1491, inlinedAt: !1408)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !64, line: 453, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1482, file: !64, line: 452, column: 9)
!1493 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1490)
!1494 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1490)
!1495 = !DILocation(line: 453, column: 15, scope: !1492, inlinedAt: !1408)
!1496 = !DILocation(line: 456, column: 15, scope: !1497, inlinedAt: !1408)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !64, line: 456, column: 15)
!1498 = !DILocation(line: 456, column: 15, scope: !1492, inlinedAt: !1408)
!1499 = !DILocation(line: 458, column: 49, scope: !1500, inlinedAt: !1408)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !64, line: 457, column: 13)
!1501 = !DILocation(line: 459, column: 25, scope: !1500, inlinedAt: !1408)
!1502 = !DILocation(line: 458, column: 19, scope: !1500, inlinedAt: !1408)
!1503 = !DILocation(line: 458, column: 22, scope: !1500, inlinedAt: !1408)
!1504 = !DILocation(line: 460, column: 15, scope: !1500, inlinedAt: !1408)
!1505 = !DILocation(line: 461, column: 13, scope: !1500, inlinedAt: !1408)
!1506 = !DILocation(line: 517, column: 18, scope: !1410)
!1507 = !DILocation(line: 407, column: 7, scope: !1398, inlinedAt: !1408)
!1508 = !DILocation(line: 0, scope: !1471, inlinedAt: !1408)
!1509 = !DILocation(line: 518, column: 21, scope: !1410)
!1510 = distinct !{!1510, !1511, !1512}
!1511 = !DILocation(line: 509, column: 11, scope: !1411)
!1512 = !DILocation(line: 519, column: 13, scope: !1411)
!1513 = !DILocation(line: 522, column: 17, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1373, file: !64, line: 522, column: 11)
!1515 = !DILocation(line: 522, column: 22, scope: !1514)
!1516 = !DILocation(line: 527, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1373, file: !64, line: 527, column: 11)
!1518 = !DILocation(line: 539, column: 30, scope: !1375)
!1519 = !DILocation(line: 527, column: 21, scope: !1517)
!1520 = !DILocation(line: 527, column: 20, scope: !1517)
!1521 = !DILocation(line: 527, column: 24, scope: !1517)
!1522 = !DILocation(line: 527, column: 32, scope: !1517)
!1523 = !DILocation(line: 529, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !64, line: 528, column: 9)
!1525 = !DILocation(line: 530, column: 11, scope: !1524)
!1526 = !DILocation(line: 531, column: 11, scope: !1524)
!1527 = !DILocation(line: 535, column: 11, scope: !1373)
!1528 = !DILocation(line: 539, column: 33, scope: !1375)
!1529 = !DILocation(line: 539, column: 21, scope: !1375)
!1530 = !DILocation(line: 542, column: 13, scope: !1375)
!1531 = !DILocalVariable(name: "ctx", arg: 1, scope: !1532, file: !64, line: 349, type: !1346)
!1532 = distinct !DISubprogram(name: "get_4", scope: !64, file: !64, line: 349, type: !1533, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1536)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!30, !1346, !1535, !1172, !193}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1536 = !{!1531, !1537, !1538, !1539, !1540, !1543, !1545}
!1537 = !DILocalVariable(name: "in", arg: 2, scope: !1532, file: !64, line: 350, type: !1535)
!1538 = !DILocalVariable(name: "in_end", arg: 3, scope: !1532, file: !64, line: 350, type: !1172)
!1539 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1532, file: !64, line: 351, type: !193)
!1540 = !DILocalVariable(name: "t", scope: !1541, file: !64, line: 358, type: !41)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !64, line: 357, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1532, file: !64, line: 356, column: 7)
!1543 = !DILocalVariable(name: "p", scope: !1544, file: !64, line: 370, type: !41)
!1544 = distinct !DILexicalBlock(scope: !1532, file: !64, line: 368, column: 3)
!1545 = !DILocalVariable(name: "c", scope: !1546, file: !64, line: 373, type: !31)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !64, line: 372, column: 7)
!1547 = !DILocation(line: 349, column: 38, scope: !1532, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 543, column: 20, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1375, file: !64, line: 542, column: 13)
!1550 = !DILocation(line: 350, column: 30, scope: !1532, inlinedAt: !1548)
!1551 = !DILocation(line: 350, column: 55, scope: !1532, inlinedAt: !1548)
!1552 = !DILocation(line: 353, column: 12, scope: !1553, inlinedAt: !1548)
!1553 = distinct !DILexicalBlock(scope: !1532, file: !64, line: 353, column: 7)
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"get_4: argument 0"}
!1556 = distinct !{!1556, !"get_4"}
!1557 = !DILocation(line: 353, column: 7, scope: !1532, inlinedAt: !1548)
!1558 = !DILocation(line: 354, column: 12, scope: !1553, inlinedAt: !1548)
!1559 = !DILocation(line: 356, column: 7, scope: !1532, inlinedAt: !1548)
!1560 = !DILocation(line: 358, column: 19, scope: !1541, inlinedAt: !1548)
!1561 = !DILocation(line: 359, column: 23, scope: !1562, inlinedAt: !1548)
!1562 = distinct !DILexicalBlock(scope: !1541, file: !64, line: 359, column: 11)
!1563 = !DILocation(line: 359, column: 13, scope: !1562, inlinedAt: !1548)
!1564 = !DILocation(line: 359, column: 29, scope: !1562, inlinedAt: !1548)
!1565 = !DILocation(line: 359, column: 32, scope: !1562, inlinedAt: !1548)
!1566 = !DILocation(line: 359, column: 52, scope: !1562, inlinedAt: !1548)
!1567 = !DILocation(line: 359, column: 11, scope: !1541, inlinedAt: !1548)
!1568 = !DILocation(line: 362, column: 15, scope: !1569, inlinedAt: !1548)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !64, line: 360, column: 9)
!1570 = !DILocation(line: 540, column: 21, scope: !1375)
!1571 = !DILocation(line: 403, column: 32, scope: !1398, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 555, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1375, file: !64, line: 555, column: 13)
!1574 = !DILocation(line: 403, column: 43, scope: !1398, inlinedAt: !1572)
!1575 = !DILocation(line: 406, column: 9, scope: !1398, inlinedAt: !1572)
!1576 = !DILocation(line: 407, column: 7, scope: !1398, inlinedAt: !1572)
!1577 = !DILocation(line: 370, column: 17, scope: !1544, inlinedAt: !1548)
!1578 = !DILocation(line: 371, column: 14, scope: !1544, inlinedAt: !1548)
!1579 = !DILocation(line: 371, column: 5, scope: !1544, inlinedAt: !1548)
!1580 = !DILocation(line: 373, column: 20, scope: !1546, inlinedAt: !1548)
!1581 = !DILocation(line: 373, column: 18, scope: !1546, inlinedAt: !1548)
!1582 = !DILocation(line: 373, column: 14, scope: !1546, inlinedAt: !1548)
!1583 = !DILocation(line: 374, column: 15, scope: !1584, inlinedAt: !1548)
!1584 = distinct !DILexicalBlock(scope: !1546, file: !64, line: 374, column: 13)
!1585 = !DILocation(line: 374, column: 13, scope: !1546, inlinedAt: !1548)
!1586 = !DILocation(line: 376, column: 28, scope: !1587, inlinedAt: !1548)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !64, line: 375, column: 11)
!1588 = !DILocation(line: 376, column: 13, scope: !1587, inlinedAt: !1548)
!1589 = !DILocation(line: 376, column: 32, scope: !1587, inlinedAt: !1548)
!1590 = !DILocation(line: 377, column: 24, scope: !1591, inlinedAt: !1548)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !64, line: 377, column: 17)
!1592 = !DILocation(line: 377, column: 17, scope: !1587, inlinedAt: !1548)
!1593 = !DILocation(line: 383, column: 27, scope: !1544, inlinedAt: !1548)
!1594 = !DILocation(line: 0, scope: !1544, inlinedAt: !1548)
!1595 = !DILocation(line: 382, column: 9, scope: !1544, inlinedAt: !1548)
!1596 = !DILocation(line: 383, column: 22, scope: !1544, inlinedAt: !1548)
!1597 = !DILocation(line: 0, scope: !1549)
!1598 = !DILocation(line: 550, column: 19, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1375, file: !64, line: 550, column: 13)
!1600 = !DILocation(line: 550, column: 24, scope: !1599)
!1601 = !DILocation(line: 550, column: 34, scope: !1599)
!1602 = !DILocation(line: 550, column: 38, scope: !1599)
!1603 = !DILocation(line: 407, column: 13, scope: !1397, inlinedAt: !1572)
!1604 = !DILocation(line: 410, column: 18, scope: !1418, inlinedAt: !1572)
!1605 = !{!1606}
!1606 = distinct !{!1606, !1607, !"decode_4: argument 0"}
!1607 = distinct !{!1607, !"decode_4"}
!1608 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 410, column: 8, scope: !1418, inlinedAt: !1572)
!1610 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1609)
!1611 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1609)
!1612 = !DILocation(line: 410, column: 25, scope: !1418, inlinedAt: !1572)
!1613 = !DILocation(line: 410, column: 39, scope: !1418, inlinedAt: !1572)
!1614 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 410, column: 29, scope: !1418, inlinedAt: !1572)
!1616 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1615)
!1617 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1615)
!1618 = !DILocation(line: 410, column: 7, scope: !1398, inlinedAt: !1572)
!1619 = !DILocation(line: 413, column: 7, scope: !1434, inlinedAt: !1572)
!1620 = !DILocation(line: 413, column: 7, scope: !1398, inlinedAt: !1572)
!1621 = !DILocation(line: 415, column: 40, scope: !1437, inlinedAt: !1572)
!1622 = !DILocation(line: 416, column: 17, scope: !1437, inlinedAt: !1572)
!1623 = !DILocation(line: 415, column: 11, scope: !1437, inlinedAt: !1572)
!1624 = !DILocation(line: 415, column: 14, scope: !1437, inlinedAt: !1572)
!1625 = !DILocation(line: 417, column: 7, scope: !1437, inlinedAt: !1572)
!1626 = !DILocation(line: 418, column: 5, scope: !1437, inlinedAt: !1572)
!1627 = !DILocation(line: 0, scope: !1573)
!1628 = !DILocation(line: 0, scope: !1398, inlinedAt: !1572)
!1629 = !DILocation(line: 420, column: 13, scope: !1446, inlinedAt: !1572)
!1630 = !DILocation(line: 420, column: 7, scope: !1398, inlinedAt: !1572)
!1631 = !DILocation(line: 423, column: 7, scope: !1449, inlinedAt: !1572)
!1632 = !DILocation(line: 423, column: 13, scope: !1449, inlinedAt: !1572)
!1633 = !DILocation(line: 423, column: 7, scope: !1398, inlinedAt: !1572)
!1634 = !DILocation(line: 425, column: 17, scope: !1453, inlinedAt: !1572)
!1635 = !DILocation(line: 425, column: 11, scope: !1454, inlinedAt: !1572)
!1636 = !DILocation(line: 428, column: 11, scope: !1457, inlinedAt: !1572)
!1637 = !DILocation(line: 428, column: 17, scope: !1457, inlinedAt: !1572)
!1638 = !DILocation(line: 428, column: 11, scope: !1454, inlinedAt: !1572)
!1639 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 433, column: 12, scope: !1462, inlinedAt: !1572)
!1641 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1640)
!1642 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1640)
!1643 = !DILocation(line: 433, column: 11, scope: !1463, inlinedAt: !1572)
!1644 = !DILocation(line: 436, column: 11, scope: !1468, inlinedAt: !1572)
!1645 = !DILocation(line: 436, column: 11, scope: !1463, inlinedAt: !1572)
!1646 = !DILocation(line: 438, column: 45, scope: !1471, inlinedAt: !1572)
!1647 = !DILocation(line: 439, column: 21, scope: !1471, inlinedAt: !1572)
!1648 = !DILocation(line: 438, column: 15, scope: !1471, inlinedAt: !1572)
!1649 = !DILocation(line: 438, column: 18, scope: !1471, inlinedAt: !1572)
!1650 = !DILocation(line: 440, column: 11, scope: !1471, inlinedAt: !1572)
!1651 = !DILocation(line: 441, column: 9, scope: !1471, inlinedAt: !1572)
!1652 = !DILocation(line: 0, scope: !1437, inlinedAt: !1572)
!1653 = !DILocation(line: 443, column: 17, scope: !1479, inlinedAt: !1572)
!1654 = !DILocation(line: 443, column: 11, scope: !1463, inlinedAt: !1572)
!1655 = !DILocation(line: 446, column: 11, scope: !1482, inlinedAt: !1572)
!1656 = !DILocation(line: 446, column: 17, scope: !1482, inlinedAt: !1572)
!1657 = !DILocation(line: 446, column: 11, scope: !1463, inlinedAt: !1572)
!1658 = !DILocation(line: 448, column: 21, scope: !1486, inlinedAt: !1572)
!1659 = !DILocation(line: 448, column: 15, scope: !1487, inlinedAt: !1572)
!1660 = !DILocation(line: 329, column: 16, scope: !1334, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 453, column: 16, scope: !1491, inlinedAt: !1572)
!1662 = !DILocation(line: 331, column: 49, scope: !1334, inlinedAt: !1661)
!1663 = !DILocation(line: 331, column: 46, scope: !1334, inlinedAt: !1661)
!1664 = !DILocation(line: 453, column: 15, scope: !1492, inlinedAt: !1572)
!1665 = !DILocation(line: 456, column: 15, scope: !1497, inlinedAt: !1572)
!1666 = !DILocation(line: 456, column: 15, scope: !1492, inlinedAt: !1572)
!1667 = !DILocation(line: 458, column: 49, scope: !1500, inlinedAt: !1572)
!1668 = !DILocation(line: 459, column: 25, scope: !1500, inlinedAt: !1572)
!1669 = !DILocation(line: 458, column: 19, scope: !1500, inlinedAt: !1572)
!1670 = !DILocation(line: 458, column: 22, scope: !1500, inlinedAt: !1572)
!1671 = !DILocation(line: 460, column: 15, scope: !1500, inlinedAt: !1572)
!1672 = !DILocation(line: 461, column: 13, scope: !1500, inlinedAt: !1572)
!1673 = !DILocation(line: 0, scope: !1471, inlinedAt: !1572)
!1674 = !DILocation(line: 558, column: 24, scope: !1375)
!1675 = !DILocation(line: 559, column: 7, scope: !1373)
!1676 = distinct !{!1676, !1393, !1677}
!1677 = !DILocation(line: 560, column: 5, scope: !1359)
!1678 = !DILocation(line: 562, column: 11, scope: !1359)
!1679 = !DILocation(line: 564, column: 16, scope: !1359)
!1680 = !DILocation(line: 564, column: 3, scope: !1359)
!1681 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !64, file: !64, line: 579, type: !1682, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!81, !1346, !41, !122, !717, !193}
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690}
!1685 = !DILocalVariable(name: "ctx", arg: 1, scope: !1681, file: !64, line: 579, type: !1346)
!1686 = !DILocalVariable(name: "in", arg: 2, scope: !1681, file: !64, line: 580, type: !41)
!1687 = !DILocalVariable(name: "inlen", arg: 3, scope: !1681, file: !64, line: 580, type: !122)
!1688 = !DILocalVariable(name: "out", arg: 4, scope: !1681, file: !64, line: 580, type: !717)
!1689 = !DILocalVariable(name: "outlen", arg: 5, scope: !1681, file: !64, line: 581, type: !193)
!1690 = !DILocalVariable(name: "needlen", scope: !1681, file: !64, line: 588, type: !122)
!1691 = !DILocation(line: 579, column: 56, scope: !1681)
!1692 = !DILocation(line: 580, column: 38, scope: !1681)
!1693 = !DILocation(line: 580, column: 49, scope: !1681)
!1694 = !DILocation(line: 580, column: 63, scope: !1681)
!1695 = !DILocation(line: 581, column: 34, scope: !1681)
!1696 = !DILocation(line: 588, column: 3, scope: !1681)
!1697 = !DILocation(line: 588, column: 31, scope: !1681)
!1698 = !DILocation(line: 588, column: 22, scope: !1681)
!1699 = !DILocation(line: 588, column: 36, scope: !1681)
!1700 = !DILocation(line: 588, column: 10, scope: !1681)
!1701 = !DILocation(line: 590, column: 10, scope: !1681)
!1702 = !DILocation(line: 590, column: 8, scope: !1681)
!1703 = !DILocation(line: 591, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1681, file: !64, line: 591, column: 7)
!1705 = !DILocation(line: 591, column: 7, scope: !1681)
!1706 = !DILocation(line: 594, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1681, file: !64, line: 594, column: 7)
!1708 = !DILocation(line: 594, column: 7, scope: !1681)
!1709 = !DILocation(line: 596, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !64, line: 595, column: 5)
!1711 = !DILocation(line: 596, column: 7, scope: !1710)
!1712 = !DILocation(line: 597, column: 12, scope: !1710)
!1713 = !DILocation(line: 598, column: 7, scope: !1710)
!1714 = !DILocation(line: 601, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1681, file: !64, line: 601, column: 7)
!1716 = !DILocation(line: 601, column: 7, scope: !1681)
!1717 = !DILocation(line: 602, column: 15, scope: !1715)
!1718 = !DILocation(line: 602, column: 13, scope: !1715)
!1719 = !DILocation(line: 602, column: 5, scope: !1715)
!1720 = !DILocation(line: 0, scope: !1704)
!1721 = !DILocation(line: 605, column: 1, scope: !1681)
!1722 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !80, file: !80, line: 51, type: !637, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !75, retainedNodes: !1723)
!1723 = !{!1724}
!1724 = !DILocalVariable(name: "file", arg: 1, scope: !1722, file: !80, line: 51, type: !41)
!1725 = !DILocation(line: 51, column: 41, scope: !1722)
!1726 = !DILocation(line: 53, column: 13, scope: !1722)
!1727 = !DILocation(line: 54, column: 1, scope: !1722)
!1728 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !80, file: !80, line: 88, type: !1729, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !75, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !81}
!1731 = !{!1732}
!1732 = !DILocalVariable(name: "ignore", arg: 1, scope: !1728, file: !80, line: 88, type: !81)
!1733 = !DILocation(line: 88, column: 37, scope: !1728)
!1734 = !DILocation(line: 90, column: 16, scope: !1728)
!1735 = !{!1736, !1736, i64 0}
!1736 = !{!"_Bool", !664, i64 0}
!1737 = !DILocation(line: 91, column: 1, scope: !1728)
!1738 = distinct !DISubprogram(name: "close_stdout", scope: !80, file: !80, line: 117, type: !669, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !75, retainedNodes: !1739)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "write_error", scope: !1741, file: !80, line: 122, type: !41)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !80, line: 121, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !80, line: 119, column: 7)
!1743 = !DILocation(line: 119, column: 21, scope: !1742)
!1744 = !DILocation(line: 119, column: 7, scope: !1742)
!1745 = !DILocation(line: 119, column: 29, scope: !1742)
!1746 = !DILocation(line: 120, column: 7, scope: !1742)
!1747 = !DILocation(line: 120, column: 12, scope: !1742)
!1748 = !{i8 0, i8 2}
!1749 = !DILocation(line: 120, column: 25, scope: !1742)
!1750 = !DILocation(line: 120, column: 28, scope: !1742)
!1751 = !DILocation(line: 120, column: 34, scope: !1742)
!1752 = !DILocation(line: 119, column: 7, scope: !1738)
!1753 = !DILocation(line: 122, column: 33, scope: !1741)
!1754 = !DILocation(line: 122, column: 19, scope: !1741)
!1755 = !DILocation(line: 123, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1741, file: !80, line: 123, column: 11)
!1757 = !DILocation(line: 0, scope: !1756)
!1758 = !DILocation(line: 123, column: 11, scope: !1741)
!1759 = !DILocation(line: 124, column: 36, scope: !1756)
!1760 = !DILocation(line: 124, column: 9, scope: !1756)
!1761 = !DILocation(line: 127, column: 9, scope: !1756)
!1762 = !DILocation(line: 129, column: 14, scope: !1741)
!1763 = !DILocation(line: 129, column: 7, scope: !1741)
!1764 = !DILocation(line: 134, column: 42, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1738, file: !80, line: 134, column: 7)
!1766 = !DILocation(line: 134, column: 28, scope: !1765)
!1767 = !DILocation(line: 134, column: 50, scope: !1765)
!1768 = !DILocation(line: 134, column: 7, scope: !1738)
!1769 = !DILocation(line: 135, column: 12, scope: !1765)
!1770 = !DILocation(line: 135, column: 5, scope: !1765)
!1771 = !DILocation(line: 136, column: 1, scope: !1738)
!1772 = distinct !DISubprogram(name: "fdadvise", scope: !1773, file: !1773, line: 31, type: !1774, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !1779)
!1773 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !44, !1776, !1776, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1777, line: 63, baseType: !749)
!1777 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1779 = !{!1780, !1781, !1782, !1783, !1784}
!1780 = !DILocalVariable(name: "fd", arg: 1, scope: !1772, file: !1773, line: 31, type: !44)
!1781 = !DILocalVariable(name: "offset", arg: 2, scope: !1772, file: !1773, line: 31, type: !1776)
!1782 = !DILocalVariable(name: "len", arg: 3, scope: !1772, file: !1773, line: 31, type: !1776)
!1783 = !DILocalVariable(name: "advice", arg: 4, scope: !1772, file: !1773, line: 31, type: !1778)
!1784 = !DILocalVariable(name: "__x", scope: !1785, file: !1773, line: 34, type: !44)
!1785 = distinct !DILexicalBlock(scope: !1772, file: !1773, line: 34, column: 3)
!1786 = !DILocation(line: 31, column: 15, scope: !1772)
!1787 = !DILocation(line: 31, column: 25, scope: !1772)
!1788 = !DILocation(line: 31, column: 39, scope: !1772)
!1789 = !DILocation(line: 31, column: 54, scope: !1772)
!1790 = !DILocation(line: 34, column: 3, scope: !1785)
!1791 = !DILocation(line: 36, column: 1, scope: !1772)
!1792 = distinct !DISubprogram(name: "fadvise", scope: !1773, file: !1773, line: 39, type: !1793, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !1829)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1795, !1778}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1797, file: !727, line: 51, baseType: !44, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1797, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1797, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1797, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1797, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1797, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1797, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1797, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1797, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1797, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1797, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1797, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1797, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1797, file: !727, line: 70, baseType: !1813, size: 64, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1797, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1797, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1797, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1797, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1797, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1797, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1797, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1797, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1797, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1797, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1797, file: !727, line: 93, baseType: !1813, size: 64, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1797, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1797, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1797, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1797, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "fp", arg: 1, scope: !1792, file: !1773, line: 39, type: !1795)
!1831 = !DILocalVariable(name: "advice", arg: 2, scope: !1792, file: !1773, line: 39, type: !1778)
!1832 = !DILocation(line: 39, column: 16, scope: !1792)
!1833 = !DILocation(line: 39, column: 30, scope: !1792)
!1834 = !DILocation(line: 41, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1792, file: !1773, line: 41, column: 7)
!1836 = !DILocation(line: 41, column: 7, scope: !1792)
!1837 = !DILocation(line: 42, column: 15, scope: !1835)
!1838 = !DILocation(line: 31, column: 15, scope: !1772, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 42, column: 5, scope: !1835)
!1840 = !DILocation(line: 31, column: 25, scope: !1772, inlinedAt: !1839)
!1841 = !DILocation(line: 31, column: 39, scope: !1772, inlinedAt: !1839)
!1842 = !DILocation(line: 31, column: 54, scope: !1772, inlinedAt: !1839)
!1843 = !DILocation(line: 34, column: 3, scope: !1785, inlinedAt: !1839)
!1844 = !DILocation(line: 42, column: 5, scope: !1835)
!1845 = !DILocation(line: 43, column: 1, scope: !1792)
!1846 = distinct !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 39, type: !637, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1847)
!1847 = !{!1848, !1849, !1850}
!1848 = !DILocalVariable(name: "argv0", arg: 1, scope: !1846, file: !94, line: 39, type: !41)
!1849 = !DILocalVariable(name: "slash", scope: !1846, file: !94, line: 46, type: !41)
!1850 = !DILocalVariable(name: "base", scope: !1846, file: !94, line: 47, type: !41)
!1851 = !DILocation(line: 39, column: 31, scope: !1846)
!1852 = !DILocation(line: 51, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !94, line: 51, column: 7)
!1854 = !DILocation(line: 51, column: 7, scope: !1846)
!1855 = !DILocation(line: 55, column: 14, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !94, line: 52, column: 5)
!1857 = !DILocation(line: 54, column: 7, scope: !1856)
!1858 = !DILocation(line: 56, column: 7, scope: !1856)
!1859 = !DILocation(line: 59, column: 11, scope: !1846)
!1860 = !DILocation(line: 46, column: 15, scope: !1846)
!1861 = !DILocation(line: 60, column: 17, scope: !1846)
!1862 = !DILocation(line: 60, column: 33, scope: !1846)
!1863 = !DILocation(line: 60, column: 11, scope: !1846)
!1864 = !DILocation(line: 47, column: 15, scope: !1846)
!1865 = !DILocation(line: 61, column: 12, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1846, file: !94, line: 61, column: 7)
!1867 = !DILocation(line: 61, column: 20, scope: !1866)
!1868 = !DILocation(line: 61, column: 25, scope: !1866)
!1869 = !DILocation(line: 61, column: 42, scope: !1866)
!1870 = !DILocation(line: 61, column: 28, scope: !1866)
!1871 = !DILocation(line: 61, column: 61, scope: !1866)
!1872 = !DILocation(line: 61, column: 7, scope: !1846)
!1873 = !DILocation(line: 64, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !94, line: 64, column: 11)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !94, line: 62, column: 5)
!1876 = !DILocation(line: 64, column: 36, scope: !1874)
!1877 = !DILocation(line: 64, column: 11, scope: !1875)
!1878 = !DILocation(line: 66, column: 24, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !94, line: 65, column: 9)
!1880 = !DILocation(line: 70, column: 41, scope: !1879)
!1881 = !DILocation(line: 72, column: 9, scope: !1879)
!1882 = !DILocation(line: 84, column: 16, scope: !1846)
!1883 = !DILocation(line: 90, column: 27, scope: !1846)
!1884 = !DILocation(line: 92, column: 1, scope: !1846)
!1885 = distinct !DISubprogram(name: "clone_quoting_options", scope: !128, file: !128, line: 122, type: !1886, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1889)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1888, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1889 = !{!1890, !1891, !1892}
!1890 = !DILocalVariable(name: "o", arg: 1, scope: !1885, file: !128, line: 122, type: !1888)
!1891 = !DILocalVariable(name: "e", scope: !1885, file: !128, line: 124, type: !44)
!1892 = !DILocalVariable(name: "p", scope: !1885, file: !128, line: 125, type: !1888)
!1893 = !DILocation(line: 122, column: 48, scope: !1885)
!1894 = !DILocation(line: 124, column: 11, scope: !1885)
!1895 = !DILocation(line: 124, column: 7, scope: !1885)
!1896 = !DILocation(line: 125, column: 40, scope: !1885)
!1897 = !DILocation(line: 125, column: 31, scope: !1885)
!1898 = !DILocation(line: 125, column: 27, scope: !1885)
!1899 = !DILocation(line: 127, column: 9, scope: !1885)
!1900 = !DILocation(line: 128, column: 3, scope: !1885)
!1901 = distinct !DISubprogram(name: "get_quoting_style", scope: !128, file: !128, line: 133, type: !1902, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1906)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!5, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1906 = !{!1907}
!1907 = !DILocalVariable(name: "o", arg: 1, scope: !1901, file: !128, line: 133, type: !1904)
!1908 = !DILocation(line: 133, column: 50, scope: !1901)
!1909 = !DILocation(line: 135, column: 11, scope: !1901)
!1910 = !DILocation(line: 135, column: 46, scope: !1901)
!1911 = !{!1912, !664, i64 0}
!1912 = !{!"quoting_options", !664, i64 0, !871, i64 4, !664, i64 8, !663, i64 40, !663, i64 48}
!1913 = !DILocation(line: 135, column: 3, scope: !1901)
!1914 = distinct !DISubprogram(name: "set_quoting_style", scope: !128, file: !128, line: 141, type: !1915, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1888, !5}
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "o", arg: 1, scope: !1914, file: !128, line: 141, type: !1888)
!1919 = !DILocalVariable(name: "s", arg: 2, scope: !1914, file: !128, line: 141, type: !5)
!1920 = !DILocation(line: 141, column: 44, scope: !1914)
!1921 = !DILocation(line: 141, column: 66, scope: !1914)
!1922 = !DILocation(line: 143, column: 4, scope: !1914)
!1923 = !DILocation(line: 143, column: 39, scope: !1914)
!1924 = !DILocation(line: 143, column: 45, scope: !1914)
!1925 = !DILocation(line: 144, column: 1, scope: !1914)
!1926 = distinct !DISubprogram(name: "set_char_quoting", scope: !128, file: !128, line: 152, type: !1927, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!44, !1888, !31, !44}
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1936, !1937}
!1930 = !DILocalVariable(name: "o", arg: 1, scope: !1926, file: !128, line: 152, type: !1888)
!1931 = !DILocalVariable(name: "c", arg: 2, scope: !1926, file: !128, line: 152, type: !31)
!1932 = !DILocalVariable(name: "i", arg: 3, scope: !1926, file: !128, line: 152, type: !44)
!1933 = !DILocalVariable(name: "uc", scope: !1926, file: !128, line: 154, type: !33)
!1934 = !DILocalVariable(name: "p", scope: !1926, file: !128, line: 155, type: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1936 = !DILocalVariable(name: "shift", scope: !1926, file: !128, line: 157, type: !44)
!1937 = !DILocalVariable(name: "r", scope: !1926, file: !128, line: 158, type: !44)
!1938 = !DILocation(line: 152, column: 43, scope: !1926)
!1939 = !DILocation(line: 152, column: 51, scope: !1926)
!1940 = !DILocation(line: 152, column: 58, scope: !1926)
!1941 = !DILocation(line: 154, column: 17, scope: !1926)
!1942 = !DILocation(line: 156, column: 6, scope: !1926)
!1943 = !DILocation(line: 156, column: 62, scope: !1926)
!1944 = !DILocation(line: 156, column: 57, scope: !1926)
!1945 = !DILocation(line: 155, column: 17, scope: !1926)
!1946 = !DILocation(line: 157, column: 15, scope: !1926)
!1947 = !DILocation(line: 157, column: 7, scope: !1926)
!1948 = !DILocation(line: 158, column: 12, scope: !1926)
!1949 = !DILocation(line: 158, column: 15, scope: !1926)
!1950 = !DILocation(line: 158, column: 25, scope: !1926)
!1951 = !DILocation(line: 158, column: 7, scope: !1926)
!1952 = !DILocation(line: 159, column: 13, scope: !1926)
!1953 = !DILocation(line: 159, column: 18, scope: !1926)
!1954 = !DILocation(line: 159, column: 23, scope: !1926)
!1955 = !DILocation(line: 159, column: 6, scope: !1926)
!1956 = !DILocation(line: 160, column: 3, scope: !1926)
!1957 = distinct !DISubprogram(name: "set_quoting_flags", scope: !128, file: !128, line: 168, type: !1958, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!44, !1888, !44}
!1960 = !{!1961, !1962, !1963}
!1961 = !DILocalVariable(name: "o", arg: 1, scope: !1957, file: !128, line: 168, type: !1888)
!1962 = !DILocalVariable(name: "i", arg: 2, scope: !1957, file: !128, line: 168, type: !44)
!1963 = !DILocalVariable(name: "r", scope: !1957, file: !128, line: 170, type: !44)
!1964 = !DILocation(line: 168, column: 44, scope: !1957)
!1965 = !DILocation(line: 168, column: 51, scope: !1957)
!1966 = !DILocation(line: 171, column: 8, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1957, file: !128, line: 171, column: 7)
!1968 = !DILocation(line: 171, column: 7, scope: !1957)
!1969 = !DILocation(line: 173, column: 10, scope: !1957)
!1970 = !{!1912, !871, i64 4}
!1971 = !DILocation(line: 170, column: 7, scope: !1957)
!1972 = !DILocation(line: 174, column: 12, scope: !1957)
!1973 = !DILocation(line: 175, column: 3, scope: !1957)
!1974 = distinct !DISubprogram(name: "set_custom_quoting", scope: !128, file: !128, line: 179, type: !1975, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1888, !41, !41}
!1977 = !{!1978, !1979, !1980}
!1978 = !DILocalVariable(name: "o", arg: 1, scope: !1974, file: !128, line: 179, type: !1888)
!1979 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1974, file: !128, line: 180, type: !41)
!1980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1974, file: !128, line: 180, type: !41)
!1981 = !DILocation(line: 179, column: 45, scope: !1974)
!1982 = !DILocation(line: 180, column: 33, scope: !1974)
!1983 = !DILocation(line: 180, column: 57, scope: !1974)
!1984 = !DILocation(line: 182, column: 8, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !128, line: 182, column: 7)
!1986 = !DILocation(line: 182, column: 7, scope: !1974)
!1987 = !DILocation(line: 184, column: 6, scope: !1974)
!1988 = !DILocation(line: 184, column: 12, scope: !1974)
!1989 = !DILocation(line: 185, column: 8, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !128, line: 185, column: 7)
!1991 = !DILocation(line: 185, column: 23, scope: !1990)
!1992 = !DILocation(line: 185, column: 19, scope: !1990)
!1993 = !DILocation(line: 186, column: 5, scope: !1990)
!1994 = !DILocation(line: 187, column: 6, scope: !1974)
!1995 = !DILocation(line: 187, column: 17, scope: !1974)
!1996 = !{!1912, !663, i64 40}
!1997 = !DILocation(line: 188, column: 6, scope: !1974)
!1998 = !DILocation(line: 188, column: 18, scope: !1974)
!1999 = !{!1912, !663, i64 48}
!2000 = !DILocation(line: 189, column: 1, scope: !1974)
!2001 = distinct !DISubprogram(name: "quotearg_buffer", scope: !128, file: !128, line: 784, type: !2002, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!122, !30, !122, !41, !122, !1904}
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2005 = !DILocalVariable(name: "buffer", arg: 1, scope: !2001, file: !128, line: 784, type: !30)
!2006 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2001, file: !128, line: 784, type: !122)
!2007 = !DILocalVariable(name: "arg", arg: 3, scope: !2001, file: !128, line: 785, type: !41)
!2008 = !DILocalVariable(name: "argsize", arg: 4, scope: !2001, file: !128, line: 785, type: !122)
!2009 = !DILocalVariable(name: "o", arg: 5, scope: !2001, file: !128, line: 786, type: !1904)
!2010 = !DILocalVariable(name: "p", scope: !2001, file: !128, line: 788, type: !1904)
!2011 = !DILocalVariable(name: "e", scope: !2001, file: !128, line: 789, type: !44)
!2012 = !DILocalVariable(name: "r", scope: !2001, file: !128, line: 790, type: !122)
!2013 = !DILocation(line: 784, column: 24, scope: !2001)
!2014 = !DILocation(line: 784, column: 39, scope: !2001)
!2015 = !DILocation(line: 785, column: 30, scope: !2001)
!2016 = !DILocation(line: 785, column: 42, scope: !2001)
!2017 = !DILocation(line: 786, column: 48, scope: !2001)
!2018 = !DILocation(line: 788, column: 37, scope: !2001)
!2019 = !DILocation(line: 788, column: 33, scope: !2001)
!2020 = !DILocation(line: 789, column: 11, scope: !2001)
!2021 = !DILocation(line: 789, column: 7, scope: !2001)
!2022 = !DILocation(line: 791, column: 43, scope: !2001)
!2023 = !DILocation(line: 791, column: 53, scope: !2001)
!2024 = !DILocation(line: 791, column: 60, scope: !2001)
!2025 = !DILocation(line: 792, column: 43, scope: !2001)
!2026 = !DILocation(line: 792, column: 58, scope: !2001)
!2027 = !DILocation(line: 790, column: 14, scope: !2001)
!2028 = !DILocation(line: 790, column: 10, scope: !2001)
!2029 = !DILocation(line: 793, column: 9, scope: !2001)
!2030 = !DILocation(line: 794, column: 3, scope: !2001)
!2031 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !128, file: !128, line: 256, type: !2032, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2036)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!122, !30, !122, !41, !122, !5, !44, !2034, !41, !41}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2061, !2062, !2063, !2064, !2065, !2068, !2069, !2084, !2087, !2088, !2095}
!2037 = !DILocalVariable(name: "buffer", arg: 1, scope: !2031, file: !128, line: 256, type: !30)
!2038 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2031, file: !128, line: 256, type: !122)
!2039 = !DILocalVariable(name: "arg", arg: 3, scope: !2031, file: !128, line: 257, type: !41)
!2040 = !DILocalVariable(name: "argsize", arg: 4, scope: !2031, file: !128, line: 257, type: !122)
!2041 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2031, file: !128, line: 258, type: !5)
!2042 = !DILocalVariable(name: "flags", arg: 6, scope: !2031, file: !128, line: 258, type: !44)
!2043 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2031, file: !128, line: 259, type: !2034)
!2044 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2031, file: !128, line: 260, type: !41)
!2045 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2031, file: !128, line: 261, type: !41)
!2046 = !DILocalVariable(name: "i", scope: !2031, file: !128, line: 263, type: !122)
!2047 = !DILocalVariable(name: "len", scope: !2031, file: !128, line: 264, type: !122)
!2048 = !DILocalVariable(name: "orig_buffersize", scope: !2031, file: !128, line: 265, type: !122)
!2049 = !DILocalVariable(name: "quote_string", scope: !2031, file: !128, line: 266, type: !41)
!2050 = !DILocalVariable(name: "quote_string_len", scope: !2031, file: !128, line: 267, type: !122)
!2051 = !DILocalVariable(name: "backslash_escapes", scope: !2031, file: !128, line: 268, type: !81)
!2052 = !DILocalVariable(name: "unibyte_locale", scope: !2031, file: !128, line: 269, type: !81)
!2053 = !DILocalVariable(name: "elide_outer_quotes", scope: !2031, file: !128, line: 270, type: !81)
!2054 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2031, file: !128, line: 271, type: !81)
!2055 = !DILocalVariable(name: "encountered_single_quote", scope: !2031, file: !128, line: 272, type: !81)
!2056 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2031, file: !128, line: 273, type: !81)
!2057 = !DILocalVariable(name: "c", scope: !2058, file: !128, line: 402, type: !33)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !128, line: 401, column: 5)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !128, line: 400, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 400, column: 3)
!2061 = !DILocalVariable(name: "esc", scope: !2058, file: !128, line: 403, type: !33)
!2062 = !DILocalVariable(name: "is_right_quote", scope: !2058, file: !128, line: 404, type: !81)
!2063 = !DILocalVariable(name: "escaping", scope: !2058, file: !128, line: 405, type: !81)
!2064 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2058, file: !128, line: 406, type: !81)
!2065 = !DILocalVariable(name: "m", scope: !2066, file: !128, line: 610, type: !122)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 608, column: 11)
!2067 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 426, column: 9)
!2068 = !DILocalVariable(name: "printable", scope: !2066, file: !128, line: 612, type: !81)
!2069 = !DILocalVariable(name: "mbstate", scope: !2070, file: !128, line: 621, type: !2072)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !128, line: 620, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !128, line: 614, column: 17)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2073, line: 6, baseType: !2074)
!2073 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2075, line: 21, baseType: !2076)
!2075 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2075, line: 13, size: 64, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2076, file: !2075, line: 15, baseType: !44, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2076, file: !2075, line: 20, baseType: !2080, size: 32, offset: 32)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !2075, line: 16, size: 32, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2080, file: !2075, line: 18, baseType: !7, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2080, file: !2075, line: 19, baseType: !803, size: 32)
!2084 = !DILocalVariable(name: "w", scope: !2085, file: !128, line: 631, type: !2086)
!2085 = distinct !DILexicalBlock(scope: !2070, file: !128, line: 630, column: 19)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !123, line: 90, baseType: !44)
!2087 = !DILocalVariable(name: "bytes", scope: !2085, file: !128, line: 632, type: !122)
!2088 = !DILocalVariable(name: "j", scope: !2089, file: !128, line: 657, type: !122)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !128, line: 656, column: 27)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !128, line: 654, column: 29)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !128, line: 649, column: 23)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !128, line: 641, column: 30)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !128, line: 636, column: 30)
!2094 = distinct !DILexicalBlock(scope: !2085, file: !128, line: 634, column: 25)
!2095 = !DILocalVariable(name: "ilim", scope: !2096, file: !128, line: 684, type: !122)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !128, line: 681, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2066, file: !128, line: 680, column: 17)
!2098 = !DILocation(line: 256, column: 33, scope: !2031)
!2099 = !DILocation(line: 256, column: 48, scope: !2031)
!2100 = !DILocation(line: 257, column: 39, scope: !2031)
!2101 = !DILocation(line: 257, column: 51, scope: !2031)
!2102 = !DILocation(line: 258, column: 46, scope: !2031)
!2103 = !DILocation(line: 258, column: 65, scope: !2031)
!2104 = !DILocation(line: 259, column: 47, scope: !2031)
!2105 = !DILocation(line: 260, column: 39, scope: !2031)
!2106 = !DILocation(line: 261, column: 39, scope: !2031)
!2107 = !DILocation(line: 264, column: 10, scope: !2031)
!2108 = !DILocation(line: 265, column: 10, scope: !2031)
!2109 = !DILocation(line: 266, column: 15, scope: !2031)
!2110 = !DILocation(line: 267, column: 10, scope: !2031)
!2111 = !DILocation(line: 268, column: 8, scope: !2031)
!2112 = !DILocation(line: 269, column: 25, scope: !2031)
!2113 = !DILocation(line: 269, column: 36, scope: !2031)
!2114 = !DILocation(line: 270, column: 8, scope: !2031)
!2115 = !DILocation(line: 271, column: 8, scope: !2031)
!2116 = !DILocation(line: 272, column: 8, scope: !2031)
!2117 = !DILocation(line: 273, column: 8, scope: !2031)
!2118 = !DILocation(line: 273, column: 3, scope: !2031)
!2119 = !DILocation(line: 0, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 317, column: 5)
!2121 = !DILocation(line: 316, column: 3, scope: !2031)
!2122 = !DILocation(line: 323, column: 11, scope: !2120)
!2123 = !DILocation(line: 323, column: 12, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 323, column: 11)
!2125 = !DILocation(line: 324, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !128, line: 324, column: 9)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !128, line: 324, column: 9)
!2128 = !DILocation(line: 324, column: 9, scope: !2127)
!2129 = !DILocation(line: 362, column: 26, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !128, line: 340, column: 11)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !128, line: 339, column: 13)
!2132 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 338, column: 7)
!2133 = !DILocation(line: 363, column: 27, scope: !2130)
!2134 = !DILocation(line: 364, column: 11, scope: !2130)
!2135 = !DILocation(line: 365, column: 14, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !128, line: 365, column: 13)
!2137 = !DILocation(line: 365, column: 13, scope: !2132)
!2138 = !DILocation(line: 366, column: 43, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !128, line: 366, column: 11)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !128, line: 366, column: 11)
!2141 = !DILocation(line: 366, column: 11, scope: !2140)
!2142 = !DILocation(line: 367, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !128, line: 367, column: 13)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !128, line: 367, column: 13)
!2145 = !DILocation(line: 367, column: 13, scope: !2144)
!2146 = !DILocation(line: 366, column: 70, scope: !2139)
!2147 = distinct !{!2147, !2141, !2148}
!2148 = !DILocation(line: 367, column: 13, scope: !2140)
!2149 = !DILocation(line: 370, column: 28, scope: !2132)
!2150 = !DILocation(line: 372, column: 7, scope: !2120)
!2151 = !DILocation(line: 376, column: 7, scope: !2120)
!2152 = !DILocation(line: 379, column: 7, scope: !2120)
!2153 = !DILocation(line: 381, column: 12, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 381, column: 11)
!2155 = !DILocation(line: 381, column: 11, scope: !2120)
!2156 = !DILocation(line: 0, scope: !2154)
!2157 = !DILocation(line: 386, column: 12, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 386, column: 11)
!2159 = !DILocation(line: 386, column: 11, scope: !2120)
!2160 = !DILocation(line: 387, column: 9, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !128, line: 387, column: 9)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !128, line: 387, column: 9)
!2163 = !DILocation(line: 387, column: 9, scope: !2162)
!2164 = !DILocation(line: 394, column: 7, scope: !2120)
!2165 = !DILocation(line: 397, column: 7, scope: !2120)
!2166 = !DILocation(line: 0, scope: !2031)
!2167 = !DILocation(line: 263, column: 10, scope: !2031)
!2168 = !DILocation(line: 400, column: 8, scope: !2060)
!2169 = !DILocation(line: 0, scope: !2059)
!2170 = !DILocation(line: 400, column: 27, scope: !2059)
!2171 = !DILocation(line: 400, column: 19, scope: !2059)
!2172 = !DILocation(line: 400, column: 41, scope: !2059)
!2173 = !DILocation(line: 400, column: 48, scope: !2059)
!2174 = !DILocation(line: 400, column: 3, scope: !2060)
!2175 = !DILocation(line: 400, column: 60, scope: !2059)
!2176 = !DILocation(line: 404, column: 12, scope: !2058)
!2177 = !DILocation(line: 405, column: 12, scope: !2058)
!2178 = !DILocation(line: 406, column: 12, scope: !2058)
!2179 = !DILocation(line: 409, column: 11, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 408, column: 11)
!2181 = !DILocation(line: 411, column: 17, scope: !2180)
!2182 = !DILocation(line: 412, column: 39, scope: !2180)
!2183 = !DILocation(line: 416, column: 32, scope: !2180)
!2184 = !DILocation(line: 412, column: 19, scope: !2180)
!2185 = !DILocation(line: 412, column: 15, scope: !2180)
!2186 = !DILocation(line: 417, column: 11, scope: !2180)
!2187 = !DILocation(line: 417, column: 26, scope: !2180)
!2188 = !DILocation(line: 417, column: 14, scope: !2180)
!2189 = !DILocation(line: 417, column: 63, scope: !2180)
!2190 = !DILocation(line: 408, column: 11, scope: !2058)
!2191 = !DILocation(line: 0, scope: !2058)
!2192 = !DILocation(line: 424, column: 11, scope: !2058)
!2193 = !DILocation(line: 402, column: 21, scope: !2058)
!2194 = !DILocation(line: 425, column: 7, scope: !2058)
!2195 = !DILocation(line: 428, column: 15, scope: !2067)
!2196 = !DILocation(line: 430, column: 15, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !128, line: 430, column: 15)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !128, line: 429, column: 13)
!2199 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 428, column: 15)
!2200 = !DILocation(line: 430, column: 15, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !128, line: 430, column: 15)
!2202 = !DILocation(line: 430, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !128, line: 430, column: 15)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !128, line: 430, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !128, line: 430, column: 15)
!2206 = !DILocation(line: 430, column: 15, scope: !2204)
!2207 = !DILocation(line: 430, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !128, line: 430, column: 15)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !128, line: 430, column: 15)
!2210 = !DILocation(line: 430, column: 15, scope: !2209)
!2211 = !DILocation(line: 430, column: 15, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !128, line: 430, column: 15)
!2213 = distinct !DILexicalBlock(scope: !2205, file: !128, line: 430, column: 15)
!2214 = !DILocation(line: 430, column: 15, scope: !2213)
!2215 = !DILocation(line: 430, column: 15, scope: !2205)
!2216 = !DILocation(line: 430, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !128, line: 430, column: 15)
!2218 = distinct !DILexicalBlock(scope: !2197, file: !128, line: 430, column: 15)
!2219 = !DILocation(line: 430, column: 15, scope: !2218)
!2220 = !DILocation(line: 438, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2198, file: !128, line: 437, column: 19)
!2222 = !DILocation(line: 438, column: 24, scope: !2221)
!2223 = !DILocation(line: 438, column: 28, scope: !2221)
!2224 = !DILocation(line: 438, column: 38, scope: !2221)
!2225 = !DILocation(line: 438, column: 48, scope: !2221)
!2226 = !DILocation(line: 438, column: 59, scope: !2221)
!2227 = !DILocation(line: 440, column: 19, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !128, line: 440, column: 19)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !128, line: 440, column: 19)
!2230 = distinct !DILexicalBlock(scope: !2221, file: !128, line: 439, column: 17)
!2231 = !DILocation(line: 440, column: 19, scope: !2229)
!2232 = !DILocation(line: 441, column: 19, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !128, line: 441, column: 19)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !128, line: 441, column: 19)
!2235 = !DILocation(line: 441, column: 19, scope: !2234)
!2236 = !DILocation(line: 442, column: 17, scope: !2230)
!2237 = !DILocation(line: 449, column: 20, scope: !2199)
!2238 = !DILocation(line: 454, column: 11, scope: !2067)
!2239 = !DILocation(line: 457, column: 19, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 455, column: 13)
!2241 = !DILocation(line: 463, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2240, file: !128, line: 462, column: 19)
!2243 = !DILocation(line: 463, column: 24, scope: !2242)
!2244 = !DILocation(line: 463, column: 28, scope: !2242)
!2245 = !DILocation(line: 463, column: 38, scope: !2242)
!2246 = !DILocation(line: 463, column: 47, scope: !2242)
!2247 = !DILocation(line: 463, column: 41, scope: !2242)
!2248 = !DILocation(line: 463, column: 52, scope: !2242)
!2249 = !DILocation(line: 462, column: 19, scope: !2240)
!2250 = !DILocation(line: 464, column: 25, scope: !2242)
!2251 = !DILocation(line: 464, column: 17, scope: !2242)
!2252 = !DILocation(line: 471, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2242, file: !128, line: 465, column: 19)
!2254 = !DILocation(line: 475, column: 21, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !128, line: 475, column: 21)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !128, line: 475, column: 21)
!2257 = !DILocation(line: 475, column: 21, scope: !2256)
!2258 = !DILocation(line: 476, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !128, line: 476, column: 21)
!2260 = distinct !DILexicalBlock(scope: !2253, file: !128, line: 476, column: 21)
!2261 = !DILocation(line: 476, column: 21, scope: !2260)
!2262 = !DILocation(line: 477, column: 21, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !128, line: 477, column: 21)
!2264 = distinct !DILexicalBlock(scope: !2253, file: !128, line: 477, column: 21)
!2265 = !DILocation(line: 477, column: 21, scope: !2264)
!2266 = !DILocation(line: 478, column: 21, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !128, line: 478, column: 21)
!2268 = distinct !DILexicalBlock(scope: !2253, file: !128, line: 478, column: 21)
!2269 = !DILocation(line: 478, column: 21, scope: !2268)
!2270 = !DILocation(line: 479, column: 21, scope: !2253)
!2271 = !DILocation(line: 403, column: 21, scope: !2058)
!2272 = !DILocation(line: 492, column: 31, scope: !2067)
!2273 = !DILocation(line: 493, column: 31, scope: !2067)
!2274 = !DILocation(line: 495, column: 31, scope: !2067)
!2275 = !DILocation(line: 496, column: 31, scope: !2067)
!2276 = !DILocation(line: 497, column: 31, scope: !2067)
!2277 = !DILocation(line: 500, column: 15, scope: !2067)
!2278 = !DILocation(line: 502, column: 19, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !128, line: 501, column: 13)
!2280 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 500, column: 15)
!2281 = !DILocation(line: 509, column: 33, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 509, column: 15)
!2283 = !DILocation(line: 0, scope: !2067)
!2284 = !DILocation(line: 514, column: 15, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 513, column: 15)
!2286 = !DILocation(line: 518, column: 15, scope: !2067)
!2287 = !DILocation(line: 526, column: 26, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 526, column: 15)
!2289 = !DILocation(line: 526, column: 15, scope: !2067)
!2290 = !DILocation(line: 526, column: 40, scope: !2288)
!2291 = !DILocation(line: 526, column: 47, scope: !2288)
!2292 = !DILocation(line: 530, column: 17, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 530, column: 15)
!2294 = !DILocation(line: 526, column: 18, scope: !2288)
!2295 = !DILocation(line: 526, column: 65, scope: !2288)
!2296 = !DILocation(line: 530, column: 15, scope: !2067)
!2297 = !DILocation(line: 535, column: 11, scope: !2067)
!2298 = !DILocation(line: 549, column: 15, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 548, column: 15)
!2300 = !DILocation(line: 556, column: 15, scope: !2067)
!2301 = !DILocation(line: 558, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !128, line: 557, column: 13)
!2303 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 556, column: 15)
!2304 = !DILocation(line: 561, column: 19, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !128, line: 561, column: 19)
!2306 = !DILocation(line: 561, column: 35, scope: !2305)
!2307 = !DILocation(line: 561, column: 30, scope: !2305)
!2308 = !DILocation(line: 570, column: 15, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !128, line: 570, column: 15)
!2310 = distinct !DILexicalBlock(scope: !2302, file: !128, line: 570, column: 15)
!2311 = !DILocation(line: 570, column: 15, scope: !2310)
!2312 = !DILocation(line: 571, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !128, line: 571, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2302, file: !128, line: 571, column: 15)
!2315 = !DILocation(line: 571, column: 15, scope: !2314)
!2316 = !DILocation(line: 572, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !128, line: 572, column: 15)
!2318 = distinct !DILexicalBlock(scope: !2302, file: !128, line: 572, column: 15)
!2319 = !DILocation(line: 572, column: 15, scope: !2318)
!2320 = !DILocation(line: 574, column: 13, scope: !2302)
!2321 = !DILocation(line: 614, column: 17, scope: !2066)
!2322 = !DILocation(line: 610, column: 20, scope: !2066)
!2323 = !DILocation(line: 617, column: 29, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2071, file: !128, line: 615, column: 15)
!2325 = !{!965, !965, i64 0}
!2326 = !DILocation(line: 617, column: 27, scope: !2324)
!2327 = !DILocation(line: 612, column: 18, scope: !2066)
!2328 = !DILocation(line: 618, column: 15, scope: !2324)
!2329 = !DILocation(line: 621, column: 17, scope: !2070)
!2330 = !DILocation(line: 622, column: 17, scope: !2070)
!2331 = !DILocation(line: 626, column: 29, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2070, file: !128, line: 626, column: 21)
!2333 = !DILocation(line: 626, column: 21, scope: !2070)
!2334 = !DILocation(line: 627, column: 29, scope: !2332)
!2335 = !DILocation(line: 627, column: 19, scope: !2332)
!2336 = !DILocation(line: 0, scope: !2180)
!2337 = !DILocation(line: 629, column: 17, scope: !2070)
!2338 = !DILocation(line: 624, column: 19, scope: !2070)
!2339 = !DILocation(line: 625, column: 27, scope: !2070)
!2340 = !DILocation(line: 631, column: 21, scope: !2085)
!2341 = !DILocation(line: 632, column: 56, scope: !2085)
!2342 = !DILocation(line: 632, column: 50, scope: !2085)
!2343 = !DILocation(line: 633, column: 53, scope: !2085)
!2344 = !DILocation(line: 621, column: 27, scope: !2070)
!2345 = !DILocation(line: 631, column: 29, scope: !2085)
!2346 = !DILocation(line: 632, column: 36, scope: !2085)
!2347 = !DILocation(line: 632, column: 28, scope: !2085)
!2348 = !DILocation(line: 634, column: 25, scope: !2085)
!2349 = !DILocation(line: 644, column: 38, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2092, file: !128, line: 642, column: 23)
!2351 = !DILocation(line: 644, column: 48, scope: !2350)
!2352 = !DILocation(line: 644, column: 51, scope: !2350)
!2353 = !DILocation(line: 644, column: 25, scope: !2350)
!2354 = !DILocation(line: 645, column: 28, scope: !2350)
!2355 = !DILocation(line: 644, column: 34, scope: !2350)
!2356 = distinct !{!2356, !2353, !2354}
!2357 = !DILocation(line: 658, column: 43, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !128, line: 658, column: 29)
!2359 = distinct !DILexicalBlock(scope: !2089, file: !128, line: 658, column: 29)
!2360 = !DILocation(line: 655, column: 29, scope: !2090)
!2361 = !DILocation(line: 657, column: 36, scope: !2089)
!2362 = !DILocation(line: 659, column: 49, scope: !2358)
!2363 = !DILocation(line: 659, column: 39, scope: !2358)
!2364 = !DILocation(line: 659, column: 31, scope: !2358)
!2365 = !DILocation(line: 658, column: 53, scope: !2358)
!2366 = !DILocation(line: 658, column: 29, scope: !2359)
!2367 = distinct !{!2367, !2366, !2368}
!2368 = !DILocation(line: 667, column: 33, scope: !2359)
!2369 = !DILocation(line: 674, column: 19, scope: !2070)
!2370 = !DILocation(line: 670, column: 41, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2091, file: !128, line: 670, column: 29)
!2372 = !DILocation(line: 670, column: 31, scope: !2371)
!2373 = !DILocation(line: 670, column: 29, scope: !2091)
!2374 = !DILocation(line: 672, column: 27, scope: !2091)
!2375 = !DILocation(line: 675, column: 26, scope: !2070)
!2376 = !DILocation(line: 675, column: 24, scope: !2070)
!2377 = !DILocation(line: 674, column: 19, scope: !2085)
!2378 = distinct !{!2378, !2337, !2379}
!2379 = !DILocation(line: 675, column: 44, scope: !2070)
!2380 = !DILocation(line: 676, column: 15, scope: !2071)
!2381 = !DILocation(line: 0, scope: !2332)
!2382 = !DILocation(line: 0, scope: !2070)
!2383 = !DILocation(line: 678, column: 40, scope: !2066)
!2384 = !DILocation(line: 680, column: 19, scope: !2097)
!2385 = !DILocation(line: 680, column: 45, scope: !2097)
!2386 = !DILocation(line: 680, column: 23, scope: !2097)
!2387 = !DILocation(line: 684, column: 33, scope: !2096)
!2388 = !DILocation(line: 684, column: 24, scope: !2096)
!2389 = !DILocation(line: 686, column: 17, scope: !2096)
!2390 = !DILocation(line: 0, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !128, line: 687, column: 19)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !128, line: 686, column: 17)
!2393 = distinct !DILexicalBlock(scope: !2096, file: !128, line: 686, column: 17)
!2394 = !DILocation(line: 0, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !128, line: 703, column: 21)
!2396 = !DILocation(line: 0, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !128, line: 696, column: 23)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !128, line: 695, column: 30)
!2399 = distinct !DILexicalBlock(scope: !2391, file: !128, line: 688, column: 25)
!2400 = !DILocation(line: 688, column: 43, scope: !2399)
!2401 = !DILocation(line: 690, column: 25, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !128, line: 690, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !128, line: 689, column: 23)
!2404 = !DILocation(line: 690, column: 25, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !128, line: 690, column: 25)
!2406 = !DILocation(line: 690, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !128, line: 690, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !128, line: 690, column: 25)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !128, line: 690, column: 25)
!2410 = !DILocation(line: 690, column: 25, scope: !2408)
!2411 = !DILocation(line: 690, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !128, line: 690, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !128, line: 690, column: 25)
!2414 = !DILocation(line: 690, column: 25, scope: !2413)
!2415 = !DILocation(line: 690, column: 25, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !128, line: 690, column: 25)
!2417 = distinct !DILexicalBlock(scope: !2409, file: !128, line: 690, column: 25)
!2418 = !DILocation(line: 690, column: 25, scope: !2417)
!2419 = !DILocation(line: 690, column: 25, scope: !2409)
!2420 = !DILocation(line: 690, column: 25, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !128, line: 690, column: 25)
!2422 = distinct !DILexicalBlock(scope: !2402, file: !128, line: 690, column: 25)
!2423 = !DILocation(line: 690, column: 25, scope: !2422)
!2424 = !DILocation(line: 691, column: 25, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !128, line: 691, column: 25)
!2426 = distinct !DILexicalBlock(scope: !2403, file: !128, line: 691, column: 25)
!2427 = !DILocation(line: 691, column: 25, scope: !2426)
!2428 = !DILocation(line: 692, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !128, line: 692, column: 25)
!2430 = distinct !DILexicalBlock(scope: !2403, file: !128, line: 692, column: 25)
!2431 = !DILocation(line: 692, column: 25, scope: !2430)
!2432 = !DILocation(line: 693, column: 38, scope: !2403)
!2433 = !DILocation(line: 693, column: 33, scope: !2403)
!2434 = !DILocation(line: 694, column: 23, scope: !2403)
!2435 = !DILocation(line: 695, column: 30, scope: !2398)
!2436 = !DILocation(line: 695, column: 30, scope: !2399)
!2437 = !DILocation(line: 697, column: 25, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !128, line: 697, column: 25)
!2439 = distinct !DILexicalBlock(scope: !2397, file: !128, line: 697, column: 25)
!2440 = !DILocation(line: 697, column: 25, scope: !2439)
!2441 = !DILocation(line: 699, column: 23, scope: !2397)
!2442 = !DILocation(line: 0, scope: !2430)
!2443 = !DILocation(line: 0, scope: !2403)
!2444 = !DILocation(line: 0, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2180, file: !128, line: 418, column: 9)
!2446 = !DILocation(line: 0, scope: !2402)
!2447 = !DILocation(line: 700, column: 35, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2391, file: !128, line: 700, column: 25)
!2449 = !DILocation(line: 700, column: 30, scope: !2448)
!2450 = !DILocation(line: 700, column: 25, scope: !2391)
!2451 = !DILocation(line: 702, column: 21, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !128, line: 702, column: 21)
!2453 = distinct !DILexicalBlock(scope: !2391, file: !128, line: 702, column: 21)
!2454 = !DILocation(line: 702, column: 21, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !128, line: 702, column: 21)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !128, line: 702, column: 21)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !128, line: 702, column: 21)
!2458 = !DILocation(line: 702, column: 21, scope: !2456)
!2459 = !DILocation(line: 702, column: 21, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !128, line: 702, column: 21)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !128, line: 702, column: 21)
!2462 = !DILocation(line: 702, column: 21, scope: !2461)
!2463 = !DILocation(line: 702, column: 21, scope: !2457)
!2464 = !DILocation(line: 0, scope: !2439)
!2465 = !DILocation(line: 703, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2395, file: !128, line: 703, column: 21)
!2467 = !DILocation(line: 703, column: 21, scope: !2395)
!2468 = !DILocation(line: 704, column: 25, scope: !2391)
!2469 = !DILocation(line: 686, column: 17, scope: !2392)
!2470 = distinct !{!2470, !2471, !2472}
!2471 = !DILocation(line: 686, column: 17, scope: !2393)
!2472 = !DILocation(line: 705, column: 19, scope: !2393)
!2473 = !DILocation(line: 0, scope: !2060)
!2474 = !DILocation(line: 416, column: 30, scope: !2180)
!2475 = !DILocation(line: 712, column: 34, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 712, column: 11)
!2477 = !DILocation(line: 714, column: 14, scope: !2476)
!2478 = !DILocation(line: 715, column: 14, scope: !2476)
!2479 = !DILocation(line: 715, column: 35, scope: !2476)
!2480 = !DILocation(line: 715, column: 17, scope: !2476)
!2481 = !DILocation(line: 715, column: 47, scope: !2476)
!2482 = !DILocation(line: 715, column: 65, scope: !2476)
!2483 = !DILocation(line: 716, column: 15, scope: !2476)
!2484 = !DILocation(line: 716, column: 11, scope: !2476)
!2485 = !DILocation(line: 712, column: 11, scope: !2058)
!2486 = !DILocation(line: 400, column: 10, scope: !2060)
!2487 = !DILocation(line: 0, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !128, line: 519, column: 13)
!2489 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 518, column: 15)
!2490 = !DILocation(line: 720, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 720, column: 7)
!2492 = !DILocation(line: 720, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2491, file: !128, line: 720, column: 7)
!2494 = !DILocation(line: 720, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !128, line: 720, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !128, line: 720, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !128, line: 720, column: 7)
!2498 = !DILocation(line: 720, column: 7, scope: !2496)
!2499 = !DILocation(line: 720, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !128, line: 720, column: 7)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !128, line: 720, column: 7)
!2502 = !DILocation(line: 720, column: 7, scope: !2501)
!2503 = !DILocation(line: 720, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !128, line: 720, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2497, file: !128, line: 720, column: 7)
!2506 = !DILocation(line: 720, column: 7, scope: !2505)
!2507 = !DILocation(line: 720, column: 7, scope: !2497)
!2508 = !DILocation(line: 720, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !128, line: 720, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2491, file: !128, line: 720, column: 7)
!2511 = !DILocation(line: 720, column: 7, scope: !2510)
!2512 = !DILocation(line: 723, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !128, line: 723, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 723, column: 7)
!2515 = !DILocation(line: 424, column: 9, scope: !2058)
!2516 = !DILocation(line: 723, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !128, line: 723, column: 7)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !128, line: 723, column: 7)
!2519 = distinct !DILexicalBlock(scope: !2513, file: !128, line: 723, column: 7)
!2520 = !DILocation(line: 723, column: 7, scope: !2518)
!2521 = !DILocation(line: 723, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !128, line: 723, column: 7)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !128, line: 723, column: 7)
!2524 = !DILocation(line: 723, column: 7, scope: !2523)
!2525 = !DILocation(line: 723, column: 7, scope: !2519)
!2526 = !DILocation(line: 724, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !128, line: 724, column: 7)
!2528 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 724, column: 7)
!2529 = !DILocation(line: 724, column: 7, scope: !2528)
!2530 = !DILocation(line: 726, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2058, file: !128, line: 726, column: 11)
!2532 = !DILocation(line: 726, column: 11, scope: !2058)
!2533 = !DILocation(line: 728, column: 5, scope: !2059)
!2534 = !DILocation(line: 400, column: 75, scope: !2059)
!2535 = !DILocation(line: 400, column: 3, scope: !2059)
!2536 = distinct !{!2536, !2174, !2537}
!2537 = !DILocation(line: 728, column: 5, scope: !2060)
!2538 = !DILocation(line: 730, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 730, column: 7)
!2540 = !DILocation(line: 730, column: 16, scope: !2539)
!2541 = !DILocation(line: 738, column: 51, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 738, column: 7)
!2543 = !DILocation(line: 739, column: 10, scope: !2542)
!2544 = !DILocation(line: 741, column: 11, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !128, line: 741, column: 11)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !128, line: 740, column: 5)
!2547 = !DILocation(line: 741, column: 11, scope: !2546)
!2548 = !DILocation(line: 742, column: 16, scope: !2545)
!2549 = !DILocation(line: 742, column: 9, scope: !2545)
!2550 = !DILocation(line: 746, column: 18, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !128, line: 746, column: 16)
!2552 = !DILocation(line: 746, column: 32, scope: !2551)
!2553 = !DILocation(line: 746, column: 29, scope: !2551)
!2554 = !DILocation(line: 755, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 755, column: 7)
!2556 = !DILocation(line: 755, column: 20, scope: !2555)
!2557 = !DILocation(line: 756, column: 12, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !128, line: 756, column: 5)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !128, line: 756, column: 5)
!2560 = !DILocation(line: 756, column: 5, scope: !2559)
!2561 = !DILocation(line: 757, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !128, line: 757, column: 7)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !128, line: 757, column: 7)
!2564 = !DILocation(line: 757, column: 7, scope: !2563)
!2565 = !DILocation(line: 756, column: 39, scope: !2558)
!2566 = distinct !{!2566, !2560, !2567}
!2567 = !DILocation(line: 757, column: 7, scope: !2559)
!2568 = !DILocation(line: 759, column: 11, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 759, column: 7)
!2570 = !DILocation(line: 759, column: 7, scope: !2031)
!2571 = !DILocation(line: 760, column: 5, scope: !2569)
!2572 = !DILocation(line: 760, column: 17, scope: !2569)
!2573 = !DILocation(line: 766, column: 21, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 766, column: 7)
!2575 = !DILocation(line: 766, column: 54, scope: !2574)
!2576 = !DILocation(line: 766, column: 51, scope: !2574)
!2577 = !DILocation(line: 770, column: 42, scope: !2031)
!2578 = !DILocation(line: 768, column: 10, scope: !2031)
!2579 = !DILocation(line: 768, column: 3, scope: !2031)
!2580 = !DILocation(line: 772, column: 1, scope: !2031)
!2581 = distinct !DISubprogram(name: "gettext_quote", scope: !128, file: !128, line: 207, type: !2582, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!41, !41, !5}
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "msgid", arg: 1, scope: !2581, file: !128, line: 207, type: !41)
!2586 = !DILocalVariable(name: "s", arg: 2, scope: !2581, file: !128, line: 207, type: !5)
!2587 = !DILocalVariable(name: "translation", scope: !2581, file: !128, line: 209, type: !41)
!2588 = !DILocalVariable(name: "locale_code", scope: !2581, file: !128, line: 210, type: !41)
!2589 = !DILocation(line: 207, column: 28, scope: !2581)
!2590 = !DILocation(line: 207, column: 54, scope: !2581)
!2591 = !DILocation(line: 209, column: 29, scope: !2581)
!2592 = !DILocation(line: 209, column: 15, scope: !2581)
!2593 = !DILocation(line: 212, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2581, file: !128, line: 212, column: 7)
!2595 = !DILocation(line: 212, column: 7, scope: !2581)
!2596 = !DILocation(line: 233, column: 17, scope: !2581)
!2597 = !DILocation(line: 210, column: 15, scope: !2581)
!2598 = !DILocalVariable(name: "s1", arg: 1, scope: !2599, file: !2600, line: 160, type: !41)
!2599 = distinct !DISubprogram(name: "strcaseeq0", scope: !2600, file: !2600, line: 160, type: !2601, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2603)
!2600 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2603 = !{!2598, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2604 = !DILocalVariable(name: "s2", arg: 2, scope: !2599, file: !2600, line: 160, type: !41)
!2605 = !DILocalVariable(name: "s20", arg: 3, scope: !2599, file: !2600, line: 160, type: !31)
!2606 = !DILocalVariable(name: "s21", arg: 4, scope: !2599, file: !2600, line: 160, type: !31)
!2607 = !DILocalVariable(name: "s22", arg: 5, scope: !2599, file: !2600, line: 160, type: !31)
!2608 = !DILocalVariable(name: "s23", arg: 6, scope: !2599, file: !2600, line: 160, type: !31)
!2609 = !DILocalVariable(name: "s24", arg: 7, scope: !2599, file: !2600, line: 160, type: !31)
!2610 = !DILocalVariable(name: "s25", arg: 8, scope: !2599, file: !2600, line: 160, type: !31)
!2611 = !DILocalVariable(name: "s26", arg: 9, scope: !2599, file: !2600, line: 160, type: !31)
!2612 = !DILocalVariable(name: "s27", arg: 10, scope: !2599, file: !2600, line: 160, type: !31)
!2613 = !DILocalVariable(name: "s28", arg: 11, scope: !2599, file: !2600, line: 160, type: !31)
!2614 = !DILocation(line: 160, column: 25, scope: !2599, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 234, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2581, file: !128, line: 234, column: 7)
!2617 = !DILocation(line: 160, column: 41, scope: !2599, inlinedAt: !2615)
!2618 = !DILocation(line: 160, column: 50, scope: !2599, inlinedAt: !2615)
!2619 = !DILocation(line: 160, column: 60, scope: !2599, inlinedAt: !2615)
!2620 = !DILocation(line: 160, column: 70, scope: !2599, inlinedAt: !2615)
!2621 = !DILocation(line: 160, column: 80, scope: !2599, inlinedAt: !2615)
!2622 = !DILocation(line: 160, column: 90, scope: !2599, inlinedAt: !2615)
!2623 = !DILocation(line: 160, column: 100, scope: !2599, inlinedAt: !2615)
!2624 = !DILocation(line: 160, column: 110, scope: !2599, inlinedAt: !2615)
!2625 = !DILocation(line: 160, column: 120, scope: !2599, inlinedAt: !2615)
!2626 = !DILocation(line: 160, column: 130, scope: !2599, inlinedAt: !2615)
!2627 = !DILocation(line: 162, column: 7, scope: !2628, inlinedAt: !2615)
!2628 = distinct !DILexicalBlock(scope: !2599, file: !2600, line: 162, column: 7)
!2629 = !DILocalVariable(name: "s1", arg: 1, scope: !2630, file: !2600, line: 146, type: !41)
!2630 = distinct !DISubprogram(name: "strcaseeq1", scope: !2600, file: !2600, line: 146, type: !2631, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31, !31}
!2633 = !{!2629, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2634 = !DILocalVariable(name: "s2", arg: 2, scope: !2630, file: !2600, line: 146, type: !41)
!2635 = !DILocalVariable(name: "s21", arg: 3, scope: !2630, file: !2600, line: 146, type: !31)
!2636 = !DILocalVariable(name: "s22", arg: 4, scope: !2630, file: !2600, line: 146, type: !31)
!2637 = !DILocalVariable(name: "s23", arg: 5, scope: !2630, file: !2600, line: 146, type: !31)
!2638 = !DILocalVariable(name: "s24", arg: 6, scope: !2630, file: !2600, line: 146, type: !31)
!2639 = !DILocalVariable(name: "s25", arg: 7, scope: !2630, file: !2600, line: 146, type: !31)
!2640 = !DILocalVariable(name: "s26", arg: 8, scope: !2630, file: !2600, line: 146, type: !31)
!2641 = !DILocalVariable(name: "s27", arg: 9, scope: !2630, file: !2600, line: 146, type: !31)
!2642 = !DILocalVariable(name: "s28", arg: 10, scope: !2630, file: !2600, line: 146, type: !31)
!2643 = !DILocation(line: 146, column: 25, scope: !2630, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 167, column: 16, scope: !2645, inlinedAt: !2615)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !2600, line: 164, column: 11)
!2646 = distinct !DILexicalBlock(scope: !2628, file: !2600, line: 163, column: 5)
!2647 = !DILocation(line: 146, column: 41, scope: !2630, inlinedAt: !2644)
!2648 = !DILocation(line: 146, column: 50, scope: !2630, inlinedAt: !2644)
!2649 = !DILocation(line: 146, column: 60, scope: !2630, inlinedAt: !2644)
!2650 = !DILocation(line: 146, column: 70, scope: !2630, inlinedAt: !2644)
!2651 = !DILocation(line: 146, column: 80, scope: !2630, inlinedAt: !2644)
!2652 = !DILocation(line: 146, column: 90, scope: !2630, inlinedAt: !2644)
!2653 = !DILocation(line: 146, column: 100, scope: !2630, inlinedAt: !2644)
!2654 = !DILocation(line: 146, column: 110, scope: !2630, inlinedAt: !2644)
!2655 = !DILocation(line: 146, column: 120, scope: !2630, inlinedAt: !2644)
!2656 = !DILocation(line: 148, column: 7, scope: !2657, inlinedAt: !2644)
!2657 = distinct !DILexicalBlock(scope: !2630, file: !2600, line: 148, column: 7)
!2658 = !DILocalVariable(name: "s1", arg: 1, scope: !2659, file: !2600, line: 132, type: !41)
!2659 = distinct !DISubprogram(name: "strcaseeq2", scope: !2600, file: !2600, line: 132, type: !2660, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31}
!2662 = !{!2658, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2663 = !DILocalVariable(name: "s2", arg: 2, scope: !2659, file: !2600, line: 132, type: !41)
!2664 = !DILocalVariable(name: "s22", arg: 3, scope: !2659, file: !2600, line: 132, type: !31)
!2665 = !DILocalVariable(name: "s23", arg: 4, scope: !2659, file: !2600, line: 132, type: !31)
!2666 = !DILocalVariable(name: "s24", arg: 5, scope: !2659, file: !2600, line: 132, type: !31)
!2667 = !DILocalVariable(name: "s25", arg: 6, scope: !2659, file: !2600, line: 132, type: !31)
!2668 = !DILocalVariable(name: "s26", arg: 7, scope: !2659, file: !2600, line: 132, type: !31)
!2669 = !DILocalVariable(name: "s27", arg: 8, scope: !2659, file: !2600, line: 132, type: !31)
!2670 = !DILocalVariable(name: "s28", arg: 9, scope: !2659, file: !2600, line: 132, type: !31)
!2671 = !DILocation(line: 132, column: 25, scope: !2659, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 153, column: 16, scope: !2673, inlinedAt: !2644)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !2600, line: 150, column: 11)
!2674 = distinct !DILexicalBlock(scope: !2657, file: !2600, line: 149, column: 5)
!2675 = !DILocation(line: 132, column: 41, scope: !2659, inlinedAt: !2672)
!2676 = !DILocation(line: 132, column: 50, scope: !2659, inlinedAt: !2672)
!2677 = !DILocation(line: 132, column: 60, scope: !2659, inlinedAt: !2672)
!2678 = !DILocation(line: 132, column: 70, scope: !2659, inlinedAt: !2672)
!2679 = !DILocation(line: 132, column: 80, scope: !2659, inlinedAt: !2672)
!2680 = !DILocation(line: 132, column: 90, scope: !2659, inlinedAt: !2672)
!2681 = !DILocation(line: 132, column: 100, scope: !2659, inlinedAt: !2672)
!2682 = !DILocation(line: 132, column: 110, scope: !2659, inlinedAt: !2672)
!2683 = !DILocation(line: 134, column: 7, scope: !2684, inlinedAt: !2672)
!2684 = distinct !DILexicalBlock(scope: !2659, file: !2600, line: 134, column: 7)
!2685 = !DILocalVariable(name: "s1", arg: 1, scope: !2686, file: !2600, line: 118, type: !41)
!2686 = distinct !DISubprogram(name: "strcaseeq3", scope: !2600, file: !2600, line: 118, type: !2687, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31}
!2689 = !{!2685, !2690, !2691, !2692, !2693, !2694, !2695, !2696}
!2690 = !DILocalVariable(name: "s2", arg: 2, scope: !2686, file: !2600, line: 118, type: !41)
!2691 = !DILocalVariable(name: "s23", arg: 3, scope: !2686, file: !2600, line: 118, type: !31)
!2692 = !DILocalVariable(name: "s24", arg: 4, scope: !2686, file: !2600, line: 118, type: !31)
!2693 = !DILocalVariable(name: "s25", arg: 5, scope: !2686, file: !2600, line: 118, type: !31)
!2694 = !DILocalVariable(name: "s26", arg: 6, scope: !2686, file: !2600, line: 118, type: !31)
!2695 = !DILocalVariable(name: "s27", arg: 7, scope: !2686, file: !2600, line: 118, type: !31)
!2696 = !DILocalVariable(name: "s28", arg: 8, scope: !2686, file: !2600, line: 118, type: !31)
!2697 = !DILocation(line: 118, column: 25, scope: !2686, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 139, column: 16, scope: !2699, inlinedAt: !2672)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2600, line: 136, column: 11)
!2700 = distinct !DILexicalBlock(scope: !2684, file: !2600, line: 135, column: 5)
!2701 = !DILocation(line: 118, column: 41, scope: !2686, inlinedAt: !2698)
!2702 = !DILocation(line: 118, column: 50, scope: !2686, inlinedAt: !2698)
!2703 = !DILocation(line: 118, column: 60, scope: !2686, inlinedAt: !2698)
!2704 = !DILocation(line: 118, column: 70, scope: !2686, inlinedAt: !2698)
!2705 = !DILocation(line: 118, column: 80, scope: !2686, inlinedAt: !2698)
!2706 = !DILocation(line: 118, column: 90, scope: !2686, inlinedAt: !2698)
!2707 = !DILocation(line: 118, column: 100, scope: !2686, inlinedAt: !2698)
!2708 = !DILocation(line: 120, column: 7, scope: !2709, inlinedAt: !2698)
!2709 = distinct !DILexicalBlock(scope: !2686, file: !2600, line: 120, column: 7)
!2710 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2698)
!2711 = !DILocalVariable(name: "s1", arg: 1, scope: !2712, file: !2600, line: 104, type: !41)
!2712 = distinct !DISubprogram(name: "strcaseeq4", scope: !2600, file: !2600, line: 104, type: !2713, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!44, !41, !41, !31, !31, !31, !31, !31}
!2715 = !{!2711, !2716, !2717, !2718, !2719, !2720, !2721}
!2716 = !DILocalVariable(name: "s2", arg: 2, scope: !2712, file: !2600, line: 104, type: !41)
!2717 = !DILocalVariable(name: "s24", arg: 3, scope: !2712, file: !2600, line: 104, type: !31)
!2718 = !DILocalVariable(name: "s25", arg: 4, scope: !2712, file: !2600, line: 104, type: !31)
!2719 = !DILocalVariable(name: "s26", arg: 5, scope: !2712, file: !2600, line: 104, type: !31)
!2720 = !DILocalVariable(name: "s27", arg: 6, scope: !2712, file: !2600, line: 104, type: !31)
!2721 = !DILocalVariable(name: "s28", arg: 7, scope: !2712, file: !2600, line: 104, type: !31)
!2722 = !DILocation(line: 104, column: 25, scope: !2712, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 125, column: 16, scope: !2724, inlinedAt: !2698)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !2600, line: 122, column: 11)
!2725 = distinct !DILexicalBlock(scope: !2709, file: !2600, line: 121, column: 5)
!2726 = !DILocation(line: 104, column: 41, scope: !2712, inlinedAt: !2723)
!2727 = !DILocation(line: 104, column: 50, scope: !2712, inlinedAt: !2723)
!2728 = !DILocation(line: 104, column: 60, scope: !2712, inlinedAt: !2723)
!2729 = !DILocation(line: 104, column: 70, scope: !2712, inlinedAt: !2723)
!2730 = !DILocation(line: 104, column: 80, scope: !2712, inlinedAt: !2723)
!2731 = !DILocation(line: 104, column: 90, scope: !2712, inlinedAt: !2723)
!2732 = !DILocation(line: 106, column: 7, scope: !2733, inlinedAt: !2723)
!2733 = distinct !DILexicalBlock(scope: !2712, file: !2600, line: 106, column: 7)
!2734 = !DILocation(line: 106, column: 7, scope: !2712, inlinedAt: !2723)
!2735 = !DILocalVariable(name: "s1", arg: 1, scope: !2736, file: !2600, line: 90, type: !41)
!2736 = distinct !DISubprogram(name: "strcaseeq5", scope: !2600, file: !2600, line: 90, type: !2737, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!44, !41, !41, !31, !31, !31, !31}
!2739 = !{!2735, !2740, !2741, !2742, !2743, !2744}
!2740 = !DILocalVariable(name: "s2", arg: 2, scope: !2736, file: !2600, line: 90, type: !41)
!2741 = !DILocalVariable(name: "s25", arg: 3, scope: !2736, file: !2600, line: 90, type: !31)
!2742 = !DILocalVariable(name: "s26", arg: 4, scope: !2736, file: !2600, line: 90, type: !31)
!2743 = !DILocalVariable(name: "s27", arg: 5, scope: !2736, file: !2600, line: 90, type: !31)
!2744 = !DILocalVariable(name: "s28", arg: 6, scope: !2736, file: !2600, line: 90, type: !31)
!2745 = !DILocation(line: 90, column: 25, scope: !2736, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 111, column: 16, scope: !2747, inlinedAt: !2723)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !2600, line: 108, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2733, file: !2600, line: 107, column: 5)
!2749 = !DILocation(line: 90, column: 41, scope: !2736, inlinedAt: !2746)
!2750 = !DILocation(line: 90, column: 50, scope: !2736, inlinedAt: !2746)
!2751 = !DILocation(line: 90, column: 60, scope: !2736, inlinedAt: !2746)
!2752 = !DILocation(line: 90, column: 70, scope: !2736, inlinedAt: !2746)
!2753 = !DILocation(line: 90, column: 80, scope: !2736, inlinedAt: !2746)
!2754 = !DILocation(line: 92, column: 7, scope: !2755, inlinedAt: !2746)
!2755 = distinct !DILexicalBlock(scope: !2736, file: !2600, line: 92, column: 7)
!2756 = !DILocation(line: 92, column: 7, scope: !2736, inlinedAt: !2746)
!2757 = !DILocation(line: 235, column: 12, scope: !2616)
!2758 = !DILocation(line: 235, column: 21, scope: !2616)
!2759 = !DILocation(line: 235, column: 5, scope: !2616)
!2760 = !DILocation(line: 146, column: 25, scope: !2630, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 167, column: 16, scope: !2645, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 236, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2581, file: !128, line: 236, column: 7)
!2764 = !DILocation(line: 146, column: 41, scope: !2630, inlinedAt: !2761)
!2765 = !DILocation(line: 146, column: 50, scope: !2630, inlinedAt: !2761)
!2766 = !DILocation(line: 146, column: 60, scope: !2630, inlinedAt: !2761)
!2767 = !DILocation(line: 146, column: 70, scope: !2630, inlinedAt: !2761)
!2768 = !DILocation(line: 146, column: 80, scope: !2630, inlinedAt: !2761)
!2769 = !DILocation(line: 146, column: 90, scope: !2630, inlinedAt: !2761)
!2770 = !DILocation(line: 146, column: 100, scope: !2630, inlinedAt: !2761)
!2771 = !DILocation(line: 146, column: 110, scope: !2630, inlinedAt: !2761)
!2772 = !DILocation(line: 146, column: 120, scope: !2630, inlinedAt: !2761)
!2773 = !DILocation(line: 148, column: 7, scope: !2657, inlinedAt: !2761)
!2774 = !DILocation(line: 132, column: 25, scope: !2659, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 153, column: 16, scope: !2673, inlinedAt: !2761)
!2776 = !DILocation(line: 132, column: 41, scope: !2659, inlinedAt: !2775)
!2777 = !DILocation(line: 132, column: 50, scope: !2659, inlinedAt: !2775)
!2778 = !DILocation(line: 132, column: 60, scope: !2659, inlinedAt: !2775)
!2779 = !DILocation(line: 132, column: 70, scope: !2659, inlinedAt: !2775)
!2780 = !DILocation(line: 132, column: 80, scope: !2659, inlinedAt: !2775)
!2781 = !DILocation(line: 132, column: 90, scope: !2659, inlinedAt: !2775)
!2782 = !DILocation(line: 132, column: 100, scope: !2659, inlinedAt: !2775)
!2783 = !DILocation(line: 132, column: 110, scope: !2659, inlinedAt: !2775)
!2784 = !DILocation(line: 134, column: 7, scope: !2684, inlinedAt: !2775)
!2785 = !DILocation(line: 134, column: 7, scope: !2659, inlinedAt: !2775)
!2786 = !DILocation(line: 118, column: 25, scope: !2686, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 139, column: 16, scope: !2699, inlinedAt: !2775)
!2788 = !DILocation(line: 118, column: 41, scope: !2686, inlinedAt: !2787)
!2789 = !DILocation(line: 118, column: 50, scope: !2686, inlinedAt: !2787)
!2790 = !DILocation(line: 118, column: 60, scope: !2686, inlinedAt: !2787)
!2791 = !DILocation(line: 118, column: 70, scope: !2686, inlinedAt: !2787)
!2792 = !DILocation(line: 118, column: 80, scope: !2686, inlinedAt: !2787)
!2793 = !DILocation(line: 118, column: 90, scope: !2686, inlinedAt: !2787)
!2794 = !DILocation(line: 118, column: 100, scope: !2686, inlinedAt: !2787)
!2795 = !DILocation(line: 120, column: 7, scope: !2709, inlinedAt: !2787)
!2796 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2787)
!2797 = !DILocation(line: 104, column: 25, scope: !2712, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 125, column: 16, scope: !2724, inlinedAt: !2787)
!2799 = !DILocation(line: 104, column: 41, scope: !2712, inlinedAt: !2798)
!2800 = !DILocation(line: 104, column: 50, scope: !2712, inlinedAt: !2798)
!2801 = !DILocation(line: 104, column: 60, scope: !2712, inlinedAt: !2798)
!2802 = !DILocation(line: 104, column: 70, scope: !2712, inlinedAt: !2798)
!2803 = !DILocation(line: 104, column: 80, scope: !2712, inlinedAt: !2798)
!2804 = !DILocation(line: 104, column: 90, scope: !2712, inlinedAt: !2798)
!2805 = !DILocation(line: 106, column: 7, scope: !2733, inlinedAt: !2798)
!2806 = !DILocation(line: 106, column: 7, scope: !2712, inlinedAt: !2798)
!2807 = !DILocation(line: 90, column: 25, scope: !2736, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 111, column: 16, scope: !2747, inlinedAt: !2798)
!2809 = !DILocation(line: 90, column: 41, scope: !2736, inlinedAt: !2808)
!2810 = !DILocation(line: 90, column: 50, scope: !2736, inlinedAt: !2808)
!2811 = !DILocation(line: 90, column: 60, scope: !2736, inlinedAt: !2808)
!2812 = !DILocation(line: 90, column: 70, scope: !2736, inlinedAt: !2808)
!2813 = !DILocation(line: 90, column: 80, scope: !2736, inlinedAt: !2808)
!2814 = !DILocation(line: 92, column: 7, scope: !2755, inlinedAt: !2808)
!2815 = !DILocation(line: 92, column: 7, scope: !2736, inlinedAt: !2808)
!2816 = !DILocalVariable(name: "s1", arg: 1, scope: !2817, file: !2600, line: 76, type: !41)
!2817 = distinct !DISubprogram(name: "strcaseeq6", scope: !2600, file: !2600, line: 76, type: !2818, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!44, !41, !41, !31, !31, !31}
!2820 = !{!2816, !2821, !2822, !2823, !2824}
!2821 = !DILocalVariable(name: "s2", arg: 2, scope: !2817, file: !2600, line: 76, type: !41)
!2822 = !DILocalVariable(name: "s26", arg: 3, scope: !2817, file: !2600, line: 76, type: !31)
!2823 = !DILocalVariable(name: "s27", arg: 4, scope: !2817, file: !2600, line: 76, type: !31)
!2824 = !DILocalVariable(name: "s28", arg: 5, scope: !2817, file: !2600, line: 76, type: !31)
!2825 = !DILocation(line: 76, column: 25, scope: !2817, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 97, column: 16, scope: !2827, inlinedAt: !2808)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !2600, line: 94, column: 11)
!2828 = distinct !DILexicalBlock(scope: !2755, file: !2600, line: 93, column: 5)
!2829 = !DILocation(line: 76, column: 41, scope: !2817, inlinedAt: !2826)
!2830 = !DILocation(line: 76, column: 50, scope: !2817, inlinedAt: !2826)
!2831 = !DILocation(line: 76, column: 60, scope: !2817, inlinedAt: !2826)
!2832 = !DILocation(line: 76, column: 70, scope: !2817, inlinedAt: !2826)
!2833 = !DILocation(line: 78, column: 7, scope: !2834, inlinedAt: !2826)
!2834 = distinct !DILexicalBlock(scope: !2817, file: !2600, line: 78, column: 7)
!2835 = !DILocation(line: 78, column: 7, scope: !2817, inlinedAt: !2826)
!2836 = !DILocalVariable(name: "s1", arg: 1, scope: !2837, file: !2600, line: 62, type: !41)
!2837 = distinct !DISubprogram(name: "strcaseeq7", scope: !2600, file: !2600, line: 62, type: !2838, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!44, !41, !41, !31, !31}
!2840 = !{!2836, !2841, !2842, !2843}
!2841 = !DILocalVariable(name: "s2", arg: 2, scope: !2837, file: !2600, line: 62, type: !41)
!2842 = !DILocalVariable(name: "s27", arg: 3, scope: !2837, file: !2600, line: 62, type: !31)
!2843 = !DILocalVariable(name: "s28", arg: 4, scope: !2837, file: !2600, line: 62, type: !31)
!2844 = !DILocation(line: 62, column: 25, scope: !2837, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 83, column: 16, scope: !2846, inlinedAt: !2826)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !2600, line: 80, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2834, file: !2600, line: 79, column: 5)
!2848 = !DILocation(line: 62, column: 41, scope: !2837, inlinedAt: !2845)
!2849 = !DILocation(line: 62, column: 50, scope: !2837, inlinedAt: !2845)
!2850 = !DILocation(line: 62, column: 60, scope: !2837, inlinedAt: !2845)
!2851 = !DILocation(line: 64, column: 7, scope: !2852, inlinedAt: !2845)
!2852 = distinct !DILexicalBlock(scope: !2837, file: !2600, line: 64, column: 7)
!2853 = !DILocation(line: 236, column: 7, scope: !2581)
!2854 = !DILocation(line: 237, column: 12, scope: !2763)
!2855 = !DILocation(line: 237, column: 21, scope: !2763)
!2856 = !DILocation(line: 237, column: 5, scope: !2763)
!2857 = !DILocation(line: 239, column: 13, scope: !2581)
!2858 = !DILocation(line: 239, column: 11, scope: !2581)
!2859 = !DILocation(line: 239, column: 3, scope: !2581)
!2860 = !DILocation(line: 0, scope: !2581)
!2861 = !DILocation(line: 240, column: 1, scope: !2581)
!2862 = distinct !DISubprogram(name: "quotearg_alloc", scope: !128, file: !128, line: 799, type: !2863, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!30, !41, !122, !1904}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2862, file: !128, line: 799, type: !41)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2862, file: !128, line: 799, type: !122)
!2868 = !DILocalVariable(name: "o", arg: 3, scope: !2862, file: !128, line: 800, type: !1904)
!2869 = !DILocation(line: 799, column: 29, scope: !2862)
!2870 = !DILocation(line: 799, column: 41, scope: !2862)
!2871 = !DILocation(line: 800, column: 47, scope: !2862)
!2872 = !DILocalVariable(name: "arg", arg: 1, scope: !2873, file: !128, line: 812, type: !41)
!2873 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !128, file: !128, line: 812, type: !2874, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!30, !41, !122, !193, !1904}
!2876 = !{!2872, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884}
!2877 = !DILocalVariable(name: "argsize", arg: 2, scope: !2873, file: !128, line: 812, type: !122)
!2878 = !DILocalVariable(name: "size", arg: 3, scope: !2873, file: !128, line: 812, type: !193)
!2879 = !DILocalVariable(name: "o", arg: 4, scope: !2873, file: !128, line: 813, type: !1904)
!2880 = !DILocalVariable(name: "p", scope: !2873, file: !128, line: 815, type: !1904)
!2881 = !DILocalVariable(name: "e", scope: !2873, file: !128, line: 816, type: !44)
!2882 = !DILocalVariable(name: "flags", scope: !2873, file: !128, line: 818, type: !44)
!2883 = !DILocalVariable(name: "bufsize", scope: !2873, file: !128, line: 819, type: !122)
!2884 = !DILocalVariable(name: "buf", scope: !2873, file: !128, line: 823, type: !30)
!2885 = !DILocation(line: 812, column: 33, scope: !2873, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 802, column: 10, scope: !2862)
!2887 = !DILocation(line: 812, column: 45, scope: !2873, inlinedAt: !2886)
!2888 = !DILocation(line: 812, column: 62, scope: !2873, inlinedAt: !2886)
!2889 = !DILocation(line: 813, column: 51, scope: !2873, inlinedAt: !2886)
!2890 = !DILocation(line: 815, column: 37, scope: !2873, inlinedAt: !2886)
!2891 = !DILocation(line: 815, column: 33, scope: !2873, inlinedAt: !2886)
!2892 = !DILocation(line: 816, column: 11, scope: !2873, inlinedAt: !2886)
!2893 = !DILocation(line: 816, column: 7, scope: !2873, inlinedAt: !2886)
!2894 = !DILocation(line: 818, column: 18, scope: !2873, inlinedAt: !2886)
!2895 = !DILocation(line: 818, column: 24, scope: !2873, inlinedAt: !2886)
!2896 = !DILocation(line: 818, column: 7, scope: !2873, inlinedAt: !2886)
!2897 = !DILocation(line: 819, column: 69, scope: !2873, inlinedAt: !2886)
!2898 = !DILocation(line: 820, column: 53, scope: !2873, inlinedAt: !2886)
!2899 = !DILocation(line: 821, column: 49, scope: !2873, inlinedAt: !2886)
!2900 = !DILocation(line: 822, column: 49, scope: !2873, inlinedAt: !2886)
!2901 = !DILocation(line: 819, column: 20, scope: !2873, inlinedAt: !2886)
!2902 = !DILocation(line: 822, column: 62, scope: !2873, inlinedAt: !2886)
!2903 = !DILocation(line: 819, column: 10, scope: !2873, inlinedAt: !2886)
!2904 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !189, line: 216, type: !122)
!2905 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2906, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!30, !122}
!2908 = !{!2904}
!2909 = !DILocation(line: 216, column: 20, scope: !2905, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 823, column: 15, scope: !2873, inlinedAt: !2886)
!2911 = !DILocation(line: 218, column: 10, scope: !2905, inlinedAt: !2910)
!2912 = !DILocation(line: 823, column: 9, scope: !2873, inlinedAt: !2886)
!2913 = !DILocation(line: 824, column: 60, scope: !2873, inlinedAt: !2886)
!2914 = !DILocation(line: 826, column: 32, scope: !2873, inlinedAt: !2886)
!2915 = !DILocation(line: 826, column: 47, scope: !2873, inlinedAt: !2886)
!2916 = !DILocation(line: 824, column: 3, scope: !2873, inlinedAt: !2886)
!2917 = !DILocation(line: 827, column: 9, scope: !2873, inlinedAt: !2886)
!2918 = !DILocation(line: 802, column: 3, scope: !2862)
!2919 = !DILocation(line: 812, column: 33, scope: !2873)
!2920 = !DILocation(line: 812, column: 45, scope: !2873)
!2921 = !DILocation(line: 812, column: 62, scope: !2873)
!2922 = !DILocation(line: 813, column: 51, scope: !2873)
!2923 = !DILocation(line: 815, column: 37, scope: !2873)
!2924 = !DILocation(line: 815, column: 33, scope: !2873)
!2925 = !DILocation(line: 816, column: 11, scope: !2873)
!2926 = !DILocation(line: 816, column: 7, scope: !2873)
!2927 = !DILocation(line: 818, column: 18, scope: !2873)
!2928 = !DILocation(line: 818, column: 27, scope: !2873)
!2929 = !DILocation(line: 818, column: 24, scope: !2873)
!2930 = !DILocation(line: 818, column: 7, scope: !2873)
!2931 = !DILocation(line: 819, column: 69, scope: !2873)
!2932 = !DILocation(line: 820, column: 53, scope: !2873)
!2933 = !DILocation(line: 821, column: 49, scope: !2873)
!2934 = !DILocation(line: 822, column: 49, scope: !2873)
!2935 = !DILocation(line: 819, column: 20, scope: !2873)
!2936 = !DILocation(line: 822, column: 62, scope: !2873)
!2937 = !DILocation(line: 819, column: 10, scope: !2873)
!2938 = !DILocation(line: 216, column: 20, scope: !2905, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 823, column: 15, scope: !2873)
!2940 = !DILocation(line: 218, column: 10, scope: !2905, inlinedAt: !2939)
!2941 = !DILocation(line: 823, column: 9, scope: !2873)
!2942 = !DILocation(line: 824, column: 60, scope: !2873)
!2943 = !DILocation(line: 826, column: 32, scope: !2873)
!2944 = !DILocation(line: 826, column: 47, scope: !2873)
!2945 = !DILocation(line: 824, column: 3, scope: !2873)
!2946 = !DILocation(line: 827, column: 9, scope: !2873)
!2947 = !DILocation(line: 828, column: 7, scope: !2873)
!2948 = !DILocation(line: 829, column: 11, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2873, file: !128, line: 828, column: 7)
!2950 = !DILocation(line: 829, column: 5, scope: !2949)
!2951 = !DILocation(line: 830, column: 3, scope: !2873)
!2952 = distinct !DISubprogram(name: "quotearg_free", scope: !128, file: !128, line: 848, type: !669, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2953)
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "sv", scope: !2952, file: !128, line: 850, type: !152)
!2955 = !DILocalVariable(name: "i", scope: !2952, file: !128, line: 851, type: !44)
!2956 = !DILocation(line: 850, column: 24, scope: !2952)
!2957 = !DILocation(line: 850, column: 19, scope: !2952)
!2958 = !DILocation(line: 851, column: 7, scope: !2952)
!2959 = !DILocation(line: 852, column: 19, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !128, line: 852, column: 3)
!2961 = distinct !DILexicalBlock(scope: !2952, file: !128, line: 852, column: 3)
!2962 = !DILocation(line: 852, column: 17, scope: !2960)
!2963 = !DILocation(line: 852, column: 3, scope: !2961)
!2964 = !DILocation(line: 853, column: 17, scope: !2960)
!2965 = !{!2966, !663, i64 8}
!2966 = !{!"slotvec", !925, i64 0, !663, i64 8}
!2967 = !DILocation(line: 853, column: 5, scope: !2960)
!2968 = !DILocation(line: 852, column: 28, scope: !2960)
!2969 = distinct !{!2969, !2963, !2970}
!2970 = !DILocation(line: 853, column: 20, scope: !2961)
!2971 = !DILocation(line: 854, column: 13, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2952, file: !128, line: 854, column: 7)
!2973 = !DILocation(line: 854, column: 17, scope: !2972)
!2974 = !DILocation(line: 854, column: 7, scope: !2952)
!2975 = !DILocation(line: 856, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !128, line: 855, column: 5)
!2977 = !DILocation(line: 857, column: 21, scope: !2976)
!2978 = !{!2966, !925, i64 0}
!2979 = !DILocation(line: 858, column: 20, scope: !2976)
!2980 = !DILocation(line: 859, column: 5, scope: !2976)
!2981 = !DILocation(line: 860, column: 10, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2952, file: !128, line: 860, column: 7)
!2983 = !DILocation(line: 860, column: 7, scope: !2952)
!2984 = !DILocation(line: 862, column: 13, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2982, file: !128, line: 861, column: 5)
!2986 = !DILocation(line: 862, column: 7, scope: !2985)
!2987 = !DILocation(line: 863, column: 15, scope: !2985)
!2988 = !DILocation(line: 864, column: 5, scope: !2985)
!2989 = !DILocation(line: 865, column: 10, scope: !2952)
!2990 = !DILocation(line: 866, column: 1, scope: !2952)
!2991 = distinct !DISubprogram(name: "quotearg_n", scope: !128, file: !128, line: 931, type: !2992, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!30, !44, !41}
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !128, line: 931, type: !44)
!2996 = !DILocalVariable(name: "arg", arg: 2, scope: !2991, file: !128, line: 931, type: !41)
!2997 = !DILocation(line: 931, column: 17, scope: !2991)
!2998 = !DILocation(line: 931, column: 32, scope: !2991)
!2999 = !DILocation(line: 933, column: 10, scope: !2991)
!3000 = !DILocation(line: 933, column: 3, scope: !2991)
!3001 = distinct !DISubprogram(name: "quotearg_n_options", scope: !128, file: !128, line: 877, type: !3002, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!30, !44, !41, !122, !1904}
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3011, !3014, !3015, !3017, !3018, !3019}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3001, file: !128, line: 877, type: !44)
!3006 = !DILocalVariable(name: "arg", arg: 2, scope: !3001, file: !128, line: 877, type: !41)
!3007 = !DILocalVariable(name: "argsize", arg: 3, scope: !3001, file: !128, line: 877, type: !122)
!3008 = !DILocalVariable(name: "options", arg: 4, scope: !3001, file: !128, line: 878, type: !1904)
!3009 = !DILocalVariable(name: "e", scope: !3001, file: !128, line: 880, type: !44)
!3010 = !DILocalVariable(name: "sv", scope: !3001, file: !128, line: 882, type: !152)
!3011 = !DILocalVariable(name: "preallocated", scope: !3012, file: !128, line: 889, type: !81)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !128, line: 888, column: 5)
!3013 = distinct !DILexicalBlock(scope: !3001, file: !128, line: 887, column: 7)
!3014 = !DILocalVariable(name: "nmax", scope: !3012, file: !128, line: 890, type: !44)
!3015 = !DILocalVariable(name: "size", scope: !3016, file: !128, line: 903, type: !122)
!3016 = distinct !DILexicalBlock(scope: !3001, file: !128, line: 902, column: 3)
!3017 = !DILocalVariable(name: "val", scope: !3016, file: !128, line: 904, type: !30)
!3018 = !DILocalVariable(name: "flags", scope: !3016, file: !128, line: 906, type: !44)
!3019 = !DILocalVariable(name: "qsize", scope: !3016, file: !128, line: 907, type: !122)
!3020 = !DILocation(line: 877, column: 25, scope: !3001)
!3021 = !DILocation(line: 877, column: 40, scope: !3001)
!3022 = !DILocation(line: 877, column: 52, scope: !3001)
!3023 = !DILocation(line: 878, column: 51, scope: !3001)
!3024 = !DILocation(line: 880, column: 11, scope: !3001)
!3025 = !DILocation(line: 880, column: 7, scope: !3001)
!3026 = !DILocation(line: 882, column: 24, scope: !3001)
!3027 = !DILocation(line: 882, column: 19, scope: !3001)
!3028 = !DILocation(line: 884, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3001, file: !128, line: 884, column: 7)
!3030 = !DILocation(line: 884, column: 7, scope: !3001)
!3031 = !DILocation(line: 885, column: 5, scope: !3029)
!3032 = !DILocation(line: 887, column: 7, scope: !3013)
!3033 = !DILocation(line: 887, column: 14, scope: !3013)
!3034 = !DILocation(line: 887, column: 7, scope: !3001)
!3035 = !DILocation(line: 889, column: 31, scope: !3012)
!3036 = !DILocation(line: 890, column: 11, scope: !3012)
!3037 = !DILocation(line: 892, column: 16, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3012, file: !128, line: 892, column: 11)
!3039 = !DILocation(line: 892, column: 11, scope: !3012)
!3040 = !DILocation(line: 893, column: 9, scope: !3038)
!3041 = !DILocation(line: 895, column: 32, scope: !3012)
!3042 = !DILocation(line: 895, column: 61, scope: !3012)
!3043 = !DILocation(line: 895, column: 58, scope: !3012)
!3044 = !DILocation(line: 895, column: 66, scope: !3012)
!3045 = !DILocation(line: 895, column: 22, scope: !3012)
!3046 = !DILocation(line: 895, column: 15, scope: !3012)
!3047 = !DILocation(line: 896, column: 11, scope: !3012)
!3048 = !DILocation(line: 897, column: 15, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3012, file: !128, line: 896, column: 11)
!3050 = !{i64 0, i64 8, !924, i64 8, i64 8, !662}
!3051 = !DILocation(line: 897, column: 9, scope: !3049)
!3052 = !DILocation(line: 898, column: 20, scope: !3012)
!3053 = !DILocation(line: 898, column: 18, scope: !3012)
!3054 = !DILocation(line: 898, column: 7, scope: !3012)
!3055 = !DILocation(line: 898, column: 38, scope: !3012)
!3056 = !DILocation(line: 898, column: 31, scope: !3012)
!3057 = !DILocation(line: 898, column: 48, scope: !3012)
!3058 = !DILocation(line: 899, column: 14, scope: !3012)
!3059 = !DILocation(line: 900, column: 5, scope: !3012)
!3060 = !DILocation(line: 0, scope: !3001)
!3061 = !DILocation(line: 903, column: 19, scope: !3016)
!3062 = !DILocation(line: 903, column: 25, scope: !3016)
!3063 = !DILocation(line: 903, column: 12, scope: !3016)
!3064 = !DILocation(line: 904, column: 23, scope: !3016)
!3065 = !DILocation(line: 904, column: 11, scope: !3016)
!3066 = !DILocation(line: 906, column: 26, scope: !3016)
!3067 = !DILocation(line: 906, column: 32, scope: !3016)
!3068 = !DILocation(line: 906, column: 9, scope: !3016)
!3069 = !DILocation(line: 908, column: 55, scope: !3016)
!3070 = !DILocation(line: 909, column: 46, scope: !3016)
!3071 = !DILocation(line: 910, column: 55, scope: !3016)
!3072 = !DILocation(line: 911, column: 55, scope: !3016)
!3073 = !DILocation(line: 907, column: 20, scope: !3016)
!3074 = !DILocation(line: 907, column: 12, scope: !3016)
!3075 = !DILocation(line: 913, column: 14, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3016, file: !128, line: 913, column: 9)
!3077 = !DILocation(line: 913, column: 9, scope: !3016)
!3078 = !DILocation(line: 915, column: 35, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !128, line: 914, column: 7)
!3080 = !DILocation(line: 915, column: 20, scope: !3079)
!3081 = !DILocation(line: 916, column: 17, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3079, file: !128, line: 916, column: 13)
!3083 = !DILocation(line: 916, column: 13, scope: !3079)
!3084 = !DILocation(line: 917, column: 11, scope: !3082)
!3085 = !DILocation(line: 216, column: 20, scope: !2905, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 918, column: 27, scope: !3079)
!3087 = !DILocation(line: 218, column: 10, scope: !2905, inlinedAt: !3086)
!3088 = !DILocation(line: 918, column: 19, scope: !3079)
!3089 = !DILocation(line: 919, column: 69, scope: !3079)
!3090 = !DILocation(line: 921, column: 44, scope: !3079)
!3091 = !DILocation(line: 922, column: 44, scope: !3079)
!3092 = !DILocation(line: 919, column: 9, scope: !3079)
!3093 = !DILocation(line: 923, column: 7, scope: !3079)
!3094 = !DILocation(line: 0, scope: !3016)
!3095 = !DILocation(line: 925, column: 11, scope: !3016)
!3096 = !DILocation(line: 926, column: 5, scope: !3016)
!3097 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !128, file: !128, line: 937, type: !3098, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!30, !44, !41, !122}
!3100 = !{!3101, !3102, !3103}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !128, line: 937, type: !44)
!3102 = !DILocalVariable(name: "arg", arg: 2, scope: !3097, file: !128, line: 937, type: !41)
!3103 = !DILocalVariable(name: "argsize", arg: 3, scope: !3097, file: !128, line: 937, type: !122)
!3104 = !DILocation(line: 937, column: 21, scope: !3097)
!3105 = !DILocation(line: 937, column: 36, scope: !3097)
!3106 = !DILocation(line: 937, column: 48, scope: !3097)
!3107 = !DILocation(line: 939, column: 10, scope: !3097)
!3108 = !DILocation(line: 939, column: 3, scope: !3097)
!3109 = distinct !DISubprogram(name: "quotearg", scope: !128, file: !128, line: 943, type: !3110, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!30, !41}
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "arg", arg: 1, scope: !3109, file: !128, line: 943, type: !41)
!3114 = !DILocation(line: 943, column: 23, scope: !3109)
!3115 = !DILocation(line: 931, column: 17, scope: !2991, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 945, column: 10, scope: !3109)
!3117 = !DILocation(line: 931, column: 32, scope: !2991, inlinedAt: !3116)
!3118 = !DILocation(line: 933, column: 10, scope: !2991, inlinedAt: !3116)
!3119 = !DILocation(line: 945, column: 3, scope: !3109)
!3120 = distinct !DISubprogram(name: "quotearg_mem", scope: !128, file: !128, line: 949, type: !3121, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!30, !41, !122}
!3123 = !{!3124, !3125}
!3124 = !DILocalVariable(name: "arg", arg: 1, scope: !3120, file: !128, line: 949, type: !41)
!3125 = !DILocalVariable(name: "argsize", arg: 2, scope: !3120, file: !128, line: 949, type: !122)
!3126 = !DILocation(line: 949, column: 27, scope: !3120)
!3127 = !DILocation(line: 949, column: 39, scope: !3120)
!3128 = !DILocation(line: 937, column: 21, scope: !3097, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 951, column: 10, scope: !3120)
!3130 = !DILocation(line: 937, column: 36, scope: !3097, inlinedAt: !3129)
!3131 = !DILocation(line: 937, column: 48, scope: !3097, inlinedAt: !3129)
!3132 = !DILocation(line: 939, column: 10, scope: !3097, inlinedAt: !3129)
!3133 = !DILocation(line: 951, column: 3, scope: !3120)
!3134 = distinct !DISubprogram(name: "quotearg_n_style", scope: !128, file: !128, line: 955, type: !3135, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!30, !44, !5, !41}
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !128, line: 955, type: !44)
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3134, file: !128, line: 955, type: !5)
!3140 = !DILocalVariable(name: "arg", arg: 3, scope: !3134, file: !128, line: 955, type: !41)
!3141 = !DILocalVariable(name: "o", scope: !3134, file: !128, line: 957, type: !1905)
!3142 = !DILocation(line: 955, column: 23, scope: !3134)
!3143 = !DILocation(line: 955, column: 45, scope: !3134)
!3144 = !DILocation(line: 955, column: 60, scope: !3134)
!3145 = !DILocation(line: 957, column: 3, scope: !3134)
!3146 = !DILocation(line: 957, column: 32, scope: !3134)
!3147 = !DILocalVariable(name: "style", arg: 1, scope: !3148, file: !128, line: 193, type: !5)
!3148 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !128, file: !128, line: 193, type: !3149, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!135, !5}
!3151 = !{!3147, !3152}
!3152 = !DILocalVariable(name: "o", scope: !3148, file: !128, line: 195, type: !135)
!3153 = !DILocation(line: 193, column: 48, scope: !3148, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 957, column: 36, scope: !3134)
!3155 = !DILocation(line: 195, column: 26, scope: !3148, inlinedAt: !3154)
!3156 = !{!3157}
!3157 = distinct !{!3157, !3158, !"quoting_options_from_style: argument 0"}
!3158 = distinct !{!3158, !"quoting_options_from_style"}
!3159 = !DILocation(line: 196, column: 13, scope: !3160, inlinedAt: !3154)
!3160 = distinct !DILexicalBlock(scope: !3148, file: !128, line: 196, column: 7)
!3161 = !DILocation(line: 196, column: 7, scope: !3148, inlinedAt: !3154)
!3162 = !DILocation(line: 197, column: 5, scope: !3160, inlinedAt: !3154)
!3163 = !DILocation(line: 198, column: 5, scope: !3148, inlinedAt: !3154)
!3164 = !DILocation(line: 198, column: 11, scope: !3148, inlinedAt: !3154)
!3165 = !DILocation(line: 958, column: 10, scope: !3134)
!3166 = !DILocation(line: 959, column: 1, scope: !3134)
!3167 = !DILocation(line: 958, column: 3, scope: !3134)
!3168 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !128, file: !128, line: 962, type: !3169, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!30, !44, !5, !41, !122}
!3171 = !{!3172, !3173, !3174, !3175, !3176}
!3172 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !128, line: 962, type: !44)
!3173 = !DILocalVariable(name: "s", arg: 2, scope: !3168, file: !128, line: 962, type: !5)
!3174 = !DILocalVariable(name: "arg", arg: 3, scope: !3168, file: !128, line: 963, type: !41)
!3175 = !DILocalVariable(name: "argsize", arg: 4, scope: !3168, file: !128, line: 963, type: !122)
!3176 = !DILocalVariable(name: "o", scope: !3168, file: !128, line: 965, type: !1905)
!3177 = !DILocation(line: 962, column: 27, scope: !3168)
!3178 = !DILocation(line: 962, column: 49, scope: !3168)
!3179 = !DILocation(line: 963, column: 35, scope: !3168)
!3180 = !DILocation(line: 963, column: 47, scope: !3168)
!3181 = !DILocation(line: 965, column: 3, scope: !3168)
!3182 = !DILocation(line: 965, column: 32, scope: !3168)
!3183 = !DILocation(line: 193, column: 48, scope: !3148, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 965, column: 36, scope: !3168)
!3185 = !DILocation(line: 195, column: 26, scope: !3148, inlinedAt: !3184)
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"quoting_options_from_style: argument 0"}
!3188 = distinct !{!3188, !"quoting_options_from_style"}
!3189 = !DILocation(line: 196, column: 13, scope: !3160, inlinedAt: !3184)
!3190 = !DILocation(line: 196, column: 7, scope: !3148, inlinedAt: !3184)
!3191 = !DILocation(line: 197, column: 5, scope: !3160, inlinedAt: !3184)
!3192 = !DILocation(line: 198, column: 5, scope: !3148, inlinedAt: !3184)
!3193 = !DILocation(line: 198, column: 11, scope: !3148, inlinedAt: !3184)
!3194 = !DILocation(line: 966, column: 10, scope: !3168)
!3195 = !DILocation(line: 967, column: 1, scope: !3168)
!3196 = !DILocation(line: 966, column: 3, scope: !3168)
!3197 = distinct !DISubprogram(name: "quotearg_style", scope: !128, file: !128, line: 970, type: !3198, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!30, !5, !41}
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "s", arg: 1, scope: !3197, file: !128, line: 970, type: !5)
!3202 = !DILocalVariable(name: "arg", arg: 2, scope: !3197, file: !128, line: 970, type: !41)
!3203 = !DILocation(line: 970, column: 36, scope: !3197)
!3204 = !DILocation(line: 970, column: 51, scope: !3197)
!3205 = !DILocation(line: 955, column: 23, scope: !3134, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 972, column: 10, scope: !3197)
!3207 = !DILocation(line: 955, column: 45, scope: !3134, inlinedAt: !3206)
!3208 = !DILocation(line: 955, column: 60, scope: !3134, inlinedAt: !3206)
!3209 = !DILocation(line: 957, column: 3, scope: !3134, inlinedAt: !3206)
!3210 = !DILocation(line: 957, column: 32, scope: !3134, inlinedAt: !3206)
!3211 = !DILocation(line: 193, column: 48, scope: !3148, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 957, column: 36, scope: !3134, inlinedAt: !3206)
!3213 = !DILocation(line: 195, column: 26, scope: !3148, inlinedAt: !3212)
!3214 = !{!3215}
!3215 = distinct !{!3215, !3216, !"quoting_options_from_style: argument 0"}
!3216 = distinct !{!3216, !"quoting_options_from_style"}
!3217 = !DILocation(line: 196, column: 13, scope: !3160, inlinedAt: !3212)
!3218 = !DILocation(line: 196, column: 7, scope: !3148, inlinedAt: !3212)
!3219 = !DILocation(line: 197, column: 5, scope: !3160, inlinedAt: !3212)
!3220 = !DILocation(line: 198, column: 5, scope: !3148, inlinedAt: !3212)
!3221 = !DILocation(line: 198, column: 11, scope: !3148, inlinedAt: !3212)
!3222 = !DILocation(line: 958, column: 10, scope: !3134, inlinedAt: !3206)
!3223 = !DILocation(line: 959, column: 1, scope: !3134, inlinedAt: !3206)
!3224 = !DILocation(line: 972, column: 3, scope: !3197)
!3225 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !128, file: !128, line: 976, type: !3226, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!30, !5, !41, !122}
!3228 = !{!3229, !3230, !3231}
!3229 = !DILocalVariable(name: "s", arg: 1, scope: !3225, file: !128, line: 976, type: !5)
!3230 = !DILocalVariable(name: "arg", arg: 2, scope: !3225, file: !128, line: 976, type: !41)
!3231 = !DILocalVariable(name: "argsize", arg: 3, scope: !3225, file: !128, line: 976, type: !122)
!3232 = !DILocation(line: 976, column: 40, scope: !3225)
!3233 = !DILocation(line: 976, column: 55, scope: !3225)
!3234 = !DILocation(line: 976, column: 67, scope: !3225)
!3235 = !DILocation(line: 962, column: 27, scope: !3168, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 978, column: 10, scope: !3225)
!3237 = !DILocation(line: 962, column: 49, scope: !3168, inlinedAt: !3236)
!3238 = !DILocation(line: 963, column: 35, scope: !3168, inlinedAt: !3236)
!3239 = !DILocation(line: 963, column: 47, scope: !3168, inlinedAt: !3236)
!3240 = !DILocation(line: 965, column: 3, scope: !3168, inlinedAt: !3236)
!3241 = !DILocation(line: 965, column: 32, scope: !3168, inlinedAt: !3236)
!3242 = !DILocation(line: 193, column: 48, scope: !3148, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 965, column: 36, scope: !3168, inlinedAt: !3236)
!3244 = !DILocation(line: 195, column: 26, scope: !3148, inlinedAt: !3243)
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"quoting_options_from_style: argument 0"}
!3247 = distinct !{!3247, !"quoting_options_from_style"}
!3248 = !DILocation(line: 196, column: 13, scope: !3160, inlinedAt: !3243)
!3249 = !DILocation(line: 196, column: 7, scope: !3148, inlinedAt: !3243)
!3250 = !DILocation(line: 197, column: 5, scope: !3160, inlinedAt: !3243)
!3251 = !DILocation(line: 198, column: 5, scope: !3148, inlinedAt: !3243)
!3252 = !DILocation(line: 198, column: 11, scope: !3148, inlinedAt: !3243)
!3253 = !DILocation(line: 966, column: 10, scope: !3168, inlinedAt: !3236)
!3254 = !DILocation(line: 967, column: 1, scope: !3168, inlinedAt: !3236)
!3255 = !DILocation(line: 978, column: 3, scope: !3225)
!3256 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !128, file: !128, line: 982, type: !3257, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!30, !41, !122, !31}
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DILocalVariable(name: "arg", arg: 1, scope: !3256, file: !128, line: 982, type: !41)
!3261 = !DILocalVariable(name: "argsize", arg: 2, scope: !3256, file: !128, line: 982, type: !122)
!3262 = !DILocalVariable(name: "ch", arg: 3, scope: !3256, file: !128, line: 982, type: !31)
!3263 = !DILocalVariable(name: "options", scope: !3256, file: !128, line: 984, type: !135)
!3264 = !DILocation(line: 982, column: 32, scope: !3256)
!3265 = !DILocation(line: 982, column: 44, scope: !3256)
!3266 = !DILocation(line: 982, column: 58, scope: !3256)
!3267 = !DILocation(line: 984, column: 3, scope: !3256)
!3268 = !DILocation(line: 985, column: 13, scope: !3256)
!3269 = !{i64 0, i64 4, !935, i64 4, i64 4, !870, i64 8, i64 32, !935, i64 40, i64 8, !662, i64 48, i64 8, !662}
!3270 = !DILocation(line: 984, column: 26, scope: !3256)
!3271 = !DILocation(line: 152, column: 43, scope: !1926, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 986, column: 3, scope: !3256)
!3273 = !DILocation(line: 152, column: 51, scope: !1926, inlinedAt: !3272)
!3274 = !DILocation(line: 152, column: 58, scope: !1926, inlinedAt: !3272)
!3275 = !DILocation(line: 154, column: 17, scope: !1926, inlinedAt: !3272)
!3276 = !DILocation(line: 156, column: 62, scope: !1926, inlinedAt: !3272)
!3277 = !DILocation(line: 156, column: 57, scope: !1926, inlinedAt: !3272)
!3278 = !DILocation(line: 155, column: 17, scope: !1926, inlinedAt: !3272)
!3279 = !DILocation(line: 157, column: 15, scope: !1926, inlinedAt: !3272)
!3280 = !DILocation(line: 157, column: 7, scope: !1926, inlinedAt: !3272)
!3281 = !DILocation(line: 158, column: 12, scope: !1926, inlinedAt: !3272)
!3282 = !DILocation(line: 158, column: 15, scope: !1926, inlinedAt: !3272)
!3283 = !DILocation(line: 158, column: 25, scope: !1926, inlinedAt: !3272)
!3284 = !DILocation(line: 158, column: 7, scope: !1926, inlinedAt: !3272)
!3285 = !DILocation(line: 159, column: 18, scope: !1926, inlinedAt: !3272)
!3286 = !DILocation(line: 159, column: 23, scope: !1926, inlinedAt: !3272)
!3287 = !DILocation(line: 159, column: 6, scope: !1926, inlinedAt: !3272)
!3288 = !DILocation(line: 987, column: 10, scope: !3256)
!3289 = !DILocation(line: 988, column: 1, scope: !3256)
!3290 = !DILocation(line: 987, column: 3, scope: !3256)
!3291 = distinct !DISubprogram(name: "quotearg_char", scope: !128, file: !128, line: 991, type: !3292, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!30, !41, !31}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "arg", arg: 1, scope: !3291, file: !128, line: 991, type: !41)
!3296 = !DILocalVariable(name: "ch", arg: 2, scope: !3291, file: !128, line: 991, type: !31)
!3297 = !DILocation(line: 991, column: 28, scope: !3291)
!3298 = !DILocation(line: 991, column: 38, scope: !3291)
!3299 = !DILocation(line: 982, column: 32, scope: !3256, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 993, column: 10, scope: !3291)
!3301 = !DILocation(line: 982, column: 44, scope: !3256, inlinedAt: !3300)
!3302 = !DILocation(line: 982, column: 58, scope: !3256, inlinedAt: !3300)
!3303 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3300)
!3304 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3300)
!3305 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3300)
!3306 = !DILocation(line: 152, column: 43, scope: !1926, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3300)
!3308 = !DILocation(line: 152, column: 51, scope: !1926, inlinedAt: !3307)
!3309 = !DILocation(line: 152, column: 58, scope: !1926, inlinedAt: !3307)
!3310 = !DILocation(line: 154, column: 17, scope: !1926, inlinedAt: !3307)
!3311 = !DILocation(line: 156, column: 62, scope: !1926, inlinedAt: !3307)
!3312 = !DILocation(line: 156, column: 57, scope: !1926, inlinedAt: !3307)
!3313 = !DILocation(line: 155, column: 17, scope: !1926, inlinedAt: !3307)
!3314 = !DILocation(line: 157, column: 15, scope: !1926, inlinedAt: !3307)
!3315 = !DILocation(line: 157, column: 7, scope: !1926, inlinedAt: !3307)
!3316 = !DILocation(line: 158, column: 12, scope: !1926, inlinedAt: !3307)
!3317 = !DILocation(line: 158, column: 15, scope: !1926, inlinedAt: !3307)
!3318 = !DILocation(line: 158, column: 25, scope: !1926, inlinedAt: !3307)
!3319 = !DILocation(line: 158, column: 7, scope: !1926, inlinedAt: !3307)
!3320 = !DILocation(line: 159, column: 18, scope: !1926, inlinedAt: !3307)
!3321 = !DILocation(line: 159, column: 23, scope: !1926, inlinedAt: !3307)
!3322 = !DILocation(line: 159, column: 6, scope: !1926, inlinedAt: !3307)
!3323 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3300)
!3324 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3300)
!3325 = !DILocation(line: 993, column: 3, scope: !3291)
!3326 = distinct !DISubprogram(name: "quotearg_colon", scope: !128, file: !128, line: 997, type: !3110, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3327)
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "arg", arg: 1, scope: !3326, file: !128, line: 997, type: !41)
!3329 = !DILocation(line: 997, column: 29, scope: !3326)
!3330 = !DILocation(line: 991, column: 28, scope: !3291, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 999, column: 10, scope: !3326)
!3332 = !DILocation(line: 991, column: 38, scope: !3291, inlinedAt: !3331)
!3333 = !DILocation(line: 982, column: 32, scope: !3256, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 993, column: 10, scope: !3291, inlinedAt: !3331)
!3335 = !DILocation(line: 982, column: 44, scope: !3256, inlinedAt: !3334)
!3336 = !DILocation(line: 982, column: 58, scope: !3256, inlinedAt: !3334)
!3337 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3334)
!3338 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3334)
!3339 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3334)
!3340 = !DILocation(line: 152, column: 43, scope: !1926, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3334)
!3342 = !DILocation(line: 152, column: 51, scope: !1926, inlinedAt: !3341)
!3343 = !DILocation(line: 152, column: 58, scope: !1926, inlinedAt: !3341)
!3344 = !DILocation(line: 154, column: 17, scope: !1926, inlinedAt: !3341)
!3345 = !DILocation(line: 156, column: 57, scope: !1926, inlinedAt: !3341)
!3346 = !DILocation(line: 155, column: 17, scope: !1926, inlinedAt: !3341)
!3347 = !DILocation(line: 157, column: 7, scope: !1926, inlinedAt: !3341)
!3348 = !DILocation(line: 158, column: 12, scope: !1926, inlinedAt: !3341)
!3349 = !DILocation(line: 159, column: 6, scope: !1926, inlinedAt: !3341)
!3350 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3334)
!3351 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3334)
!3352 = !DILocation(line: 999, column: 3, scope: !3326)
!3353 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !128, file: !128, line: 1003, type: !3121, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3354)
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !128, line: 1003, type: !41)
!3356 = !DILocalVariable(name: "argsize", arg: 2, scope: !3353, file: !128, line: 1003, type: !122)
!3357 = !DILocation(line: 1003, column: 33, scope: !3353)
!3358 = !DILocation(line: 1003, column: 45, scope: !3353)
!3359 = !DILocation(line: 982, column: 32, scope: !3256, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 1005, column: 10, scope: !3353)
!3361 = !DILocation(line: 982, column: 44, scope: !3256, inlinedAt: !3360)
!3362 = !DILocation(line: 982, column: 58, scope: !3256, inlinedAt: !3360)
!3363 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3360)
!3364 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3360)
!3365 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3360)
!3366 = !DILocation(line: 152, column: 43, scope: !1926, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3360)
!3368 = !DILocation(line: 152, column: 51, scope: !1926, inlinedAt: !3367)
!3369 = !DILocation(line: 152, column: 58, scope: !1926, inlinedAt: !3367)
!3370 = !DILocation(line: 154, column: 17, scope: !1926, inlinedAt: !3367)
!3371 = !DILocation(line: 156, column: 57, scope: !1926, inlinedAt: !3367)
!3372 = !DILocation(line: 155, column: 17, scope: !1926, inlinedAt: !3367)
!3373 = !DILocation(line: 157, column: 7, scope: !1926, inlinedAt: !3367)
!3374 = !DILocation(line: 158, column: 12, scope: !1926, inlinedAt: !3367)
!3375 = !DILocation(line: 159, column: 6, scope: !1926, inlinedAt: !3367)
!3376 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3360)
!3377 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3360)
!3378 = !DILocation(line: 1005, column: 3, scope: !3353)
!3379 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !128, file: !128, line: 1009, type: !3135, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3380)
!3380 = !{!3381, !3382, !3383, !3384}
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !128, line: 1009, type: !44)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !128, line: 1009, type: !5)
!3383 = !DILocalVariable(name: "arg", arg: 3, scope: !3379, file: !128, line: 1009, type: !41)
!3384 = !DILocalVariable(name: "options", scope: !3379, file: !128, line: 1011, type: !135)
!3385 = !DILocation(line: 195, column: 26, scope: !3148, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 1012, column: 13, scope: !3379)
!3387 = !DILocation(line: 1009, column: 29, scope: !3379)
!3388 = !DILocation(line: 1009, column: 51, scope: !3379)
!3389 = !DILocation(line: 1009, column: 66, scope: !3379)
!3390 = !DILocation(line: 1011, column: 3, scope: !3379)
!3391 = !DILocation(line: 1012, column: 13, scope: !3379)
!3392 = !DILocation(line: 193, column: 48, scope: !3148, inlinedAt: !3386)
!3393 = !{!3394}
!3394 = distinct !{!3394, !3395, !"quoting_options_from_style: argument 0"}
!3395 = distinct !{!3395, !"quoting_options_from_style"}
!3396 = !DILocation(line: 196, column: 13, scope: !3160, inlinedAt: !3386)
!3397 = !DILocation(line: 196, column: 7, scope: !3148, inlinedAt: !3386)
!3398 = !DILocation(line: 197, column: 5, scope: !3160, inlinedAt: !3386)
!3399 = !DILocation(line: 1011, column: 26, scope: !3379)
!3400 = !DILocation(line: 152, column: 43, scope: !1926, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 1013, column: 3, scope: !3379)
!3402 = !DILocation(line: 152, column: 51, scope: !1926, inlinedAt: !3401)
!3403 = !DILocation(line: 152, column: 58, scope: !1926, inlinedAt: !3401)
!3404 = !DILocation(line: 154, column: 17, scope: !1926, inlinedAt: !3401)
!3405 = !DILocation(line: 156, column: 57, scope: !1926, inlinedAt: !3401)
!3406 = !DILocation(line: 155, column: 17, scope: !1926, inlinedAt: !3401)
!3407 = !DILocation(line: 157, column: 7, scope: !1926, inlinedAt: !3401)
!3408 = !DILocation(line: 158, column: 12, scope: !1926, inlinedAt: !3401)
!3409 = !DILocation(line: 159, column: 6, scope: !1926, inlinedAt: !3401)
!3410 = !DILocation(line: 1014, column: 10, scope: !3379)
!3411 = !DILocation(line: 1015, column: 1, scope: !3379)
!3412 = !DILocation(line: 1014, column: 3, scope: !3379)
!3413 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !128, file: !128, line: 1018, type: !3414, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!30, !44, !41, !41, !41}
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DILocalVariable(name: "n", arg: 1, scope: !3413, file: !128, line: 1018, type: !44)
!3418 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3413, file: !128, line: 1018, type: !41)
!3419 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3413, file: !128, line: 1019, type: !41)
!3420 = !DILocalVariable(name: "arg", arg: 4, scope: !3413, file: !128, line: 1019, type: !41)
!3421 = !DILocation(line: 1018, column: 24, scope: !3413)
!3422 = !DILocation(line: 1018, column: 39, scope: !3413)
!3423 = !DILocation(line: 1019, column: 32, scope: !3413)
!3424 = !DILocation(line: 1019, column: 57, scope: !3413)
!3425 = !DILocalVariable(name: "n", arg: 1, scope: !3426, file: !128, line: 1026, type: !44)
!3426 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !128, file: !128, line: 1026, type: !3427, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!30, !44, !41, !41, !41, !122}
!3429 = !{!3425, !3430, !3431, !3432, !3433, !3434}
!3430 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3426, file: !128, line: 1026, type: !41)
!3431 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3426, file: !128, line: 1027, type: !41)
!3432 = !DILocalVariable(name: "arg", arg: 4, scope: !3426, file: !128, line: 1028, type: !41)
!3433 = !DILocalVariable(name: "argsize", arg: 5, scope: !3426, file: !128, line: 1028, type: !122)
!3434 = !DILocalVariable(name: "o", scope: !3426, file: !128, line: 1030, type: !135)
!3435 = !DILocation(line: 1026, column: 28, scope: !3426, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 1021, column: 10, scope: !3413)
!3437 = !DILocation(line: 1026, column: 43, scope: !3426, inlinedAt: !3436)
!3438 = !DILocation(line: 1027, column: 36, scope: !3426, inlinedAt: !3436)
!3439 = !DILocation(line: 1028, column: 36, scope: !3426, inlinedAt: !3436)
!3440 = !DILocation(line: 1028, column: 48, scope: !3426, inlinedAt: !3436)
!3441 = !DILocation(line: 1030, column: 3, scope: !3426, inlinedAt: !3436)
!3442 = !DILocation(line: 1030, column: 30, scope: !3426, inlinedAt: !3436)
!3443 = !DILocation(line: 1030, column: 26, scope: !3426, inlinedAt: !3436)
!3444 = !DILocation(line: 179, column: 45, scope: !1974, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1031, column: 3, scope: !3426, inlinedAt: !3436)
!3446 = !DILocation(line: 180, column: 33, scope: !1974, inlinedAt: !3445)
!3447 = !DILocation(line: 180, column: 57, scope: !1974, inlinedAt: !3445)
!3448 = !DILocation(line: 184, column: 6, scope: !1974, inlinedAt: !3445)
!3449 = !DILocation(line: 184, column: 12, scope: !1974, inlinedAt: !3445)
!3450 = !DILocation(line: 185, column: 8, scope: !1990, inlinedAt: !3445)
!3451 = !DILocation(line: 185, column: 23, scope: !1990, inlinedAt: !3445)
!3452 = !DILocation(line: 185, column: 19, scope: !1990, inlinedAt: !3445)
!3453 = !DILocation(line: 186, column: 5, scope: !1990, inlinedAt: !3445)
!3454 = !DILocation(line: 187, column: 6, scope: !1974, inlinedAt: !3445)
!3455 = !DILocation(line: 187, column: 17, scope: !1974, inlinedAt: !3445)
!3456 = !DILocation(line: 188, column: 6, scope: !1974, inlinedAt: !3445)
!3457 = !DILocation(line: 188, column: 18, scope: !1974, inlinedAt: !3445)
!3458 = !DILocation(line: 1032, column: 10, scope: !3426, inlinedAt: !3436)
!3459 = !DILocation(line: 1033, column: 1, scope: !3426, inlinedAt: !3436)
!3460 = !DILocation(line: 1021, column: 3, scope: !3413)
!3461 = !DILocation(line: 1026, column: 28, scope: !3426)
!3462 = !DILocation(line: 1026, column: 43, scope: !3426)
!3463 = !DILocation(line: 1027, column: 36, scope: !3426)
!3464 = !DILocation(line: 1028, column: 36, scope: !3426)
!3465 = !DILocation(line: 1028, column: 48, scope: !3426)
!3466 = !DILocation(line: 1030, column: 3, scope: !3426)
!3467 = !DILocation(line: 1030, column: 30, scope: !3426)
!3468 = !DILocation(line: 1030, column: 26, scope: !3426)
!3469 = !DILocation(line: 179, column: 45, scope: !1974, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1031, column: 3, scope: !3426)
!3471 = !DILocation(line: 180, column: 33, scope: !1974, inlinedAt: !3470)
!3472 = !DILocation(line: 180, column: 57, scope: !1974, inlinedAt: !3470)
!3473 = !DILocation(line: 184, column: 6, scope: !1974, inlinedAt: !3470)
!3474 = !DILocation(line: 184, column: 12, scope: !1974, inlinedAt: !3470)
!3475 = !DILocation(line: 185, column: 8, scope: !1990, inlinedAt: !3470)
!3476 = !DILocation(line: 185, column: 23, scope: !1990, inlinedAt: !3470)
!3477 = !DILocation(line: 185, column: 19, scope: !1990, inlinedAt: !3470)
!3478 = !DILocation(line: 186, column: 5, scope: !1990, inlinedAt: !3470)
!3479 = !DILocation(line: 187, column: 6, scope: !1974, inlinedAt: !3470)
!3480 = !DILocation(line: 187, column: 17, scope: !1974, inlinedAt: !3470)
!3481 = !DILocation(line: 188, column: 6, scope: !1974, inlinedAt: !3470)
!3482 = !DILocation(line: 188, column: 18, scope: !1974, inlinedAt: !3470)
!3483 = !DILocation(line: 1032, column: 10, scope: !3426)
!3484 = !DILocation(line: 1033, column: 1, scope: !3426)
!3485 = !DILocation(line: 1032, column: 3, scope: !3426)
!3486 = distinct !DISubprogram(name: "quotearg_custom", scope: !128, file: !128, line: 1036, type: !3487, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!30, !41, !41, !41}
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3486, file: !128, line: 1036, type: !41)
!3491 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3486, file: !128, line: 1036, type: !41)
!3492 = !DILocalVariable(name: "arg", arg: 3, scope: !3486, file: !128, line: 1037, type: !41)
!3493 = !DILocation(line: 1036, column: 30, scope: !3486)
!3494 = !DILocation(line: 1036, column: 54, scope: !3486)
!3495 = !DILocation(line: 1037, column: 30, scope: !3486)
!3496 = !DILocation(line: 1018, column: 24, scope: !3413, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1039, column: 10, scope: !3486)
!3498 = !DILocation(line: 1018, column: 39, scope: !3413, inlinedAt: !3497)
!3499 = !DILocation(line: 1019, column: 32, scope: !3413, inlinedAt: !3497)
!3500 = !DILocation(line: 1019, column: 57, scope: !3413, inlinedAt: !3497)
!3501 = !DILocation(line: 1026, column: 28, scope: !3426, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1021, column: 10, scope: !3413, inlinedAt: !3497)
!3503 = !DILocation(line: 1026, column: 43, scope: !3426, inlinedAt: !3502)
!3504 = !DILocation(line: 1027, column: 36, scope: !3426, inlinedAt: !3502)
!3505 = !DILocation(line: 1028, column: 36, scope: !3426, inlinedAt: !3502)
!3506 = !DILocation(line: 1028, column: 48, scope: !3426, inlinedAt: !3502)
!3507 = !DILocation(line: 1030, column: 3, scope: !3426, inlinedAt: !3502)
!3508 = !DILocation(line: 1030, column: 30, scope: !3426, inlinedAt: !3502)
!3509 = !DILocation(line: 1030, column: 26, scope: !3426, inlinedAt: !3502)
!3510 = !DILocation(line: 179, column: 45, scope: !1974, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 1031, column: 3, scope: !3426, inlinedAt: !3502)
!3512 = !DILocation(line: 180, column: 33, scope: !1974, inlinedAt: !3511)
!3513 = !DILocation(line: 180, column: 57, scope: !1974, inlinedAt: !3511)
!3514 = !DILocation(line: 184, column: 6, scope: !1974, inlinedAt: !3511)
!3515 = !DILocation(line: 184, column: 12, scope: !1974, inlinedAt: !3511)
!3516 = !DILocation(line: 185, column: 8, scope: !1990, inlinedAt: !3511)
!3517 = !DILocation(line: 185, column: 23, scope: !1990, inlinedAt: !3511)
!3518 = !DILocation(line: 185, column: 19, scope: !1990, inlinedAt: !3511)
!3519 = !DILocation(line: 186, column: 5, scope: !1990, inlinedAt: !3511)
!3520 = !DILocation(line: 187, column: 6, scope: !1974, inlinedAt: !3511)
!3521 = !DILocation(line: 187, column: 17, scope: !1974, inlinedAt: !3511)
!3522 = !DILocation(line: 188, column: 6, scope: !1974, inlinedAt: !3511)
!3523 = !DILocation(line: 188, column: 18, scope: !1974, inlinedAt: !3511)
!3524 = !DILocation(line: 1032, column: 10, scope: !3426, inlinedAt: !3502)
!3525 = !DILocation(line: 1033, column: 1, scope: !3426, inlinedAt: !3502)
!3526 = !DILocation(line: 1039, column: 3, scope: !3486)
!3527 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !128, file: !128, line: 1043, type: !3528, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!30, !41, !41, !41, !122}
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3527, file: !128, line: 1043, type: !41)
!3532 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3527, file: !128, line: 1043, type: !41)
!3533 = !DILocalVariable(name: "arg", arg: 3, scope: !3527, file: !128, line: 1044, type: !41)
!3534 = !DILocalVariable(name: "argsize", arg: 4, scope: !3527, file: !128, line: 1044, type: !122)
!3535 = !DILocation(line: 1043, column: 34, scope: !3527)
!3536 = !DILocation(line: 1043, column: 58, scope: !3527)
!3537 = !DILocation(line: 1044, column: 34, scope: !3527)
!3538 = !DILocation(line: 1044, column: 46, scope: !3527)
!3539 = !DILocation(line: 1026, column: 28, scope: !3426, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 1046, column: 10, scope: !3527)
!3541 = !DILocation(line: 1026, column: 43, scope: !3426, inlinedAt: !3540)
!3542 = !DILocation(line: 1027, column: 36, scope: !3426, inlinedAt: !3540)
!3543 = !DILocation(line: 1028, column: 36, scope: !3426, inlinedAt: !3540)
!3544 = !DILocation(line: 1028, column: 48, scope: !3426, inlinedAt: !3540)
!3545 = !DILocation(line: 1030, column: 3, scope: !3426, inlinedAt: !3540)
!3546 = !DILocation(line: 1030, column: 30, scope: !3426, inlinedAt: !3540)
!3547 = !DILocation(line: 1030, column: 26, scope: !3426, inlinedAt: !3540)
!3548 = !DILocation(line: 179, column: 45, scope: !1974, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1031, column: 3, scope: !3426, inlinedAt: !3540)
!3550 = !DILocation(line: 180, column: 33, scope: !1974, inlinedAt: !3549)
!3551 = !DILocation(line: 180, column: 57, scope: !1974, inlinedAt: !3549)
!3552 = !DILocation(line: 184, column: 6, scope: !1974, inlinedAt: !3549)
!3553 = !DILocation(line: 184, column: 12, scope: !1974, inlinedAt: !3549)
!3554 = !DILocation(line: 185, column: 8, scope: !1990, inlinedAt: !3549)
!3555 = !DILocation(line: 185, column: 23, scope: !1990, inlinedAt: !3549)
!3556 = !DILocation(line: 185, column: 19, scope: !1990, inlinedAt: !3549)
!3557 = !DILocation(line: 186, column: 5, scope: !1990, inlinedAt: !3549)
!3558 = !DILocation(line: 187, column: 6, scope: !1974, inlinedAt: !3549)
!3559 = !DILocation(line: 187, column: 17, scope: !1974, inlinedAt: !3549)
!3560 = !DILocation(line: 188, column: 6, scope: !1974, inlinedAt: !3549)
!3561 = !DILocation(line: 188, column: 18, scope: !1974, inlinedAt: !3549)
!3562 = !DILocation(line: 1032, column: 10, scope: !3426, inlinedAt: !3540)
!3563 = !DILocation(line: 1033, column: 1, scope: !3426, inlinedAt: !3540)
!3564 = !DILocation(line: 1046, column: 3, scope: !3527)
!3565 = distinct !DISubprogram(name: "quote_n_mem", scope: !128, file: !128, line: 1061, type: !3566, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!41, !44, !41, !122}
!3568 = !{!3569, !3570, !3571}
!3569 = !DILocalVariable(name: "n", arg: 1, scope: !3565, file: !128, line: 1061, type: !44)
!3570 = !DILocalVariable(name: "arg", arg: 2, scope: !3565, file: !128, line: 1061, type: !41)
!3571 = !DILocalVariable(name: "argsize", arg: 3, scope: !3565, file: !128, line: 1061, type: !122)
!3572 = !DILocation(line: 1061, column: 18, scope: !3565)
!3573 = !DILocation(line: 1061, column: 33, scope: !3565)
!3574 = !DILocation(line: 1061, column: 45, scope: !3565)
!3575 = !DILocation(line: 1063, column: 10, scope: !3565)
!3576 = !DILocation(line: 1063, column: 3, scope: !3565)
!3577 = distinct !DISubprogram(name: "quote_mem", scope: !128, file: !128, line: 1067, type: !3578, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!41, !41, !122}
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "arg", arg: 1, scope: !3577, file: !128, line: 1067, type: !41)
!3582 = !DILocalVariable(name: "argsize", arg: 2, scope: !3577, file: !128, line: 1067, type: !122)
!3583 = !DILocation(line: 1067, column: 24, scope: !3577)
!3584 = !DILocation(line: 1067, column: 36, scope: !3577)
!3585 = !DILocation(line: 1061, column: 18, scope: !3565, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 1069, column: 10, scope: !3577)
!3587 = !DILocation(line: 1061, column: 33, scope: !3565, inlinedAt: !3586)
!3588 = !DILocation(line: 1061, column: 45, scope: !3565, inlinedAt: !3586)
!3589 = !DILocation(line: 1063, column: 10, scope: !3565, inlinedAt: !3586)
!3590 = !DILocation(line: 1069, column: 3, scope: !3577)
!3591 = distinct !DISubprogram(name: "quote_n", scope: !128, file: !128, line: 1073, type: !3592, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!41, !44, !41}
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !128, line: 1073, type: !44)
!3596 = !DILocalVariable(name: "arg", arg: 2, scope: !3591, file: !128, line: 1073, type: !41)
!3597 = !DILocation(line: 1073, column: 14, scope: !3591)
!3598 = !DILocation(line: 1073, column: 29, scope: !3591)
!3599 = !DILocation(line: 1061, column: 18, scope: !3565, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1075, column: 10, scope: !3591)
!3601 = !DILocation(line: 1061, column: 33, scope: !3565, inlinedAt: !3600)
!3602 = !DILocation(line: 1061, column: 45, scope: !3565, inlinedAt: !3600)
!3603 = !DILocation(line: 1063, column: 10, scope: !3565, inlinedAt: !3600)
!3604 = !DILocation(line: 1075, column: 3, scope: !3591)
!3605 = distinct !DISubprogram(name: "quote", scope: !128, file: !128, line: 1079, type: !3606, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!41, !41}
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3605, file: !128, line: 1079, type: !41)
!3610 = !DILocation(line: 1079, column: 20, scope: !3605)
!3611 = !DILocation(line: 1073, column: 14, scope: !3591, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 1081, column: 10, scope: !3605)
!3613 = !DILocation(line: 1073, column: 29, scope: !3591, inlinedAt: !3612)
!3614 = !DILocation(line: 1061, column: 18, scope: !3565, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1075, column: 10, scope: !3591, inlinedAt: !3612)
!3616 = !DILocation(line: 1061, column: 33, scope: !3565, inlinedAt: !3615)
!3617 = !DILocation(line: 1061, column: 45, scope: !3565, inlinedAt: !3615)
!3618 = !DILocation(line: 1063, column: 10, scope: !3565, inlinedAt: !3615)
!3619 = !DILocation(line: 1081, column: 3, scope: !3605)
!3620 = distinct !DISubprogram(name: "version_etc_arn", scope: !181, file: !181, line: 62, type: !3621, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3658)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3623, !41, !41, !41, !3657, !122}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3625, file: !727, line: 51, baseType: !44, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3625, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3625, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3625, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3625, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3625, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3625, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3625, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3625, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3625, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3625, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3625, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3625, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3625, file: !727, line: 70, baseType: !3641, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3625, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3625, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3625, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3625, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3625, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3625, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3625, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3625, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3625, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3625, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3625, file: !727, line: 93, baseType: !3641, size: 64, offset: 1344)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3625, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3625, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3625, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3625, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664}
!3659 = !DILocalVariable(name: "stream", arg: 1, scope: !3620, file: !181, line: 62, type: !3623)
!3660 = !DILocalVariable(name: "command_name", arg: 2, scope: !3620, file: !181, line: 63, type: !41)
!3661 = !DILocalVariable(name: "package", arg: 3, scope: !3620, file: !181, line: 63, type: !41)
!3662 = !DILocalVariable(name: "version", arg: 4, scope: !3620, file: !181, line: 64, type: !41)
!3663 = !DILocalVariable(name: "authors", arg: 5, scope: !3620, file: !181, line: 65, type: !3657)
!3664 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3620, file: !181, line: 65, type: !122)
!3665 = !DILocation(line: 62, column: 24, scope: !3620)
!3666 = !DILocation(line: 63, column: 30, scope: !3620)
!3667 = !DILocation(line: 63, column: 56, scope: !3620)
!3668 = !DILocation(line: 64, column: 30, scope: !3620)
!3669 = !DILocation(line: 65, column: 39, scope: !3620)
!3670 = !DILocation(line: 65, column: 55, scope: !3620)
!3671 = !DILocation(line: 67, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3620, file: !181, line: 67, column: 7)
!3673 = !DILocation(line: 67, column: 7, scope: !3620)
!3674 = !DILocation(line: 68, column: 5, scope: !3672)
!3675 = !DILocation(line: 70, column: 5, scope: !3672)
!3676 = !DILocation(line: 84, column: 3, scope: !3620)
!3677 = !DILocation(line: 86, column: 3, scope: !3620)
!3678 = !DILocation(line: 95, column: 3, scope: !3620)
!3679 = !DILocation(line: 99, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3620, file: !181, line: 96, column: 5)
!3681 = !DILocation(line: 102, column: 7, scope: !3680)
!3682 = !DILocation(line: 103, column: 7, scope: !3680)
!3683 = !DILocation(line: 106, column: 7, scope: !3680)
!3684 = !DILocation(line: 107, column: 7, scope: !3680)
!3685 = !DILocation(line: 110, column: 7, scope: !3680)
!3686 = !DILocation(line: 112, column: 7, scope: !3680)
!3687 = !DILocation(line: 117, column: 7, scope: !3680)
!3688 = !DILocation(line: 119, column: 7, scope: !3680)
!3689 = !DILocation(line: 124, column: 7, scope: !3680)
!3690 = !DILocation(line: 126, column: 7, scope: !3680)
!3691 = !DILocation(line: 131, column: 7, scope: !3680)
!3692 = !DILocation(line: 134, column: 7, scope: !3680)
!3693 = !DILocation(line: 139, column: 7, scope: !3680)
!3694 = !DILocation(line: 142, column: 7, scope: !3680)
!3695 = !DILocation(line: 147, column: 7, scope: !3680)
!3696 = !DILocation(line: 151, column: 7, scope: !3680)
!3697 = !DILocation(line: 156, column: 7, scope: !3680)
!3698 = !DILocation(line: 160, column: 7, scope: !3680)
!3699 = !DILocation(line: 167, column: 7, scope: !3680)
!3700 = !DILocation(line: 171, column: 7, scope: !3680)
!3701 = !DILocation(line: 173, column: 1, scope: !3620)
!3702 = distinct !DISubprogram(name: "version_etc_ar", scope: !181, file: !181, line: 180, type: !3703, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3623, !41, !41, !41, !3657}
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711}
!3706 = !DILocalVariable(name: "stream", arg: 1, scope: !3702, file: !181, line: 180, type: !3623)
!3707 = !DILocalVariable(name: "command_name", arg: 2, scope: !3702, file: !181, line: 181, type: !41)
!3708 = !DILocalVariable(name: "package", arg: 3, scope: !3702, file: !181, line: 181, type: !41)
!3709 = !DILocalVariable(name: "version", arg: 4, scope: !3702, file: !181, line: 182, type: !41)
!3710 = !DILocalVariable(name: "authors", arg: 5, scope: !3702, file: !181, line: 182, type: !3657)
!3711 = !DILocalVariable(name: "n_authors", scope: !3702, file: !181, line: 184, type: !122)
!3712 = !DILocation(line: 180, column: 23, scope: !3702)
!3713 = !DILocation(line: 181, column: 29, scope: !3702)
!3714 = !DILocation(line: 181, column: 55, scope: !3702)
!3715 = !DILocation(line: 182, column: 29, scope: !3702)
!3716 = !DILocation(line: 182, column: 59, scope: !3702)
!3717 = !DILocation(line: 184, column: 10, scope: !3702)
!3718 = !DILocation(line: 186, column: 8, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3702, file: !181, line: 186, column: 3)
!3720 = !DILocation(line: 0, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3719, file: !181, line: 186, column: 3)
!3722 = !DILocation(line: 186, column: 23, scope: !3721)
!3723 = !DILocation(line: 186, column: 3, scope: !3719)
!3724 = !DILocation(line: 186, column: 52, scope: !3721)
!3725 = distinct !{!3725, !3723, !3726}
!3726 = !DILocation(line: 187, column: 5, scope: !3719)
!3727 = !DILocation(line: 188, column: 3, scope: !3702)
!3728 = !DILocation(line: 189, column: 1, scope: !3702)
!3729 = distinct !DISubprogram(name: "version_etc_va", scope: !181, file: !181, line: 196, type: !3730, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3739)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3623, !41, !41, !41, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !178, line: 189, size: 192, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3733, file: !178, line: 189, baseType: !7, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3733, file: !178, line: 189, baseType: !7, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3733, file: !178, line: 189, baseType: !32, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3733, file: !178, line: 189, baseType: !32, size: 64, offset: 128)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3740 = !DILocalVariable(name: "stream", arg: 1, scope: !3729, file: !181, line: 196, type: !3623)
!3741 = !DILocalVariable(name: "command_name", arg: 2, scope: !3729, file: !181, line: 197, type: !41)
!3742 = !DILocalVariable(name: "package", arg: 3, scope: !3729, file: !181, line: 197, type: !41)
!3743 = !DILocalVariable(name: "version", arg: 4, scope: !3729, file: !181, line: 198, type: !41)
!3744 = !DILocalVariable(name: "authors", arg: 5, scope: !3729, file: !181, line: 198, type: !3732)
!3745 = !DILocalVariable(name: "n_authors", scope: !3729, file: !181, line: 200, type: !122)
!3746 = !DILocalVariable(name: "authtab", scope: !3729, file: !181, line: 201, type: !3747)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !131)
!3748 = !DILocation(line: 196, column: 23, scope: !3729)
!3749 = !DILocation(line: 197, column: 29, scope: !3729)
!3750 = !DILocation(line: 197, column: 55, scope: !3729)
!3751 = !DILocation(line: 198, column: 29, scope: !3729)
!3752 = !DILocation(line: 198, column: 46, scope: !3729)
!3753 = !DILocation(line: 201, column: 3, scope: !3729)
!3754 = !DILocation(line: 201, column: 15, scope: !3729)
!3755 = !DILocation(line: 200, column: 10, scope: !3729)
!3756 = !DILocation(line: 205, column: 35, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !181, line: 203, column: 3)
!3758 = distinct !DILexicalBlock(scope: !3729, file: !181, line: 203, column: 3)
!3759 = !DILocation(line: 205, column: 14, scope: !3757)
!3760 = !DILocation(line: 205, column: 33, scope: !3757)
!3761 = !DILocation(line: 205, column: 67, scope: !3757)
!3762 = !DILocation(line: 203, column: 3, scope: !3758)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 208, column: 3, scope: !3729)
!3765 = !DILocation(line: 210, column: 1, scope: !3729)
!3766 = distinct !DISubprogram(name: "version_etc", scope: !181, file: !181, line: 227, type: !3767, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3623, !41, !41, !41, null}
!3769 = !{!3770, !3771, !3772, !3773, !3774}
!3770 = !DILocalVariable(name: "stream", arg: 1, scope: !3766, file: !181, line: 227, type: !3623)
!3771 = !DILocalVariable(name: "command_name", arg: 2, scope: !3766, file: !181, line: 228, type: !41)
!3772 = !DILocalVariable(name: "package", arg: 3, scope: !3766, file: !181, line: 228, type: !41)
!3773 = !DILocalVariable(name: "version", arg: 4, scope: !3766, file: !181, line: 229, type: !41)
!3774 = !DILocalVariable(name: "authors", scope: !3766, file: !181, line: 231, type: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1777, line: 52, baseType: !3776)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3777, line: 48, baseType: !3778)
!3777 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, line: 231, baseType: !3779)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 192, elements: !756)
!3780 = !DILocation(line: 227, column: 20, scope: !3766)
!3781 = !DILocation(line: 228, column: 26, scope: !3766)
!3782 = !DILocation(line: 228, column: 52, scope: !3766)
!3783 = !DILocation(line: 229, column: 26, scope: !3766)
!3784 = !DILocation(line: 231, column: 3, scope: !3766)
!3785 = !DILocation(line: 231, column: 11, scope: !3766)
!3786 = !DILocation(line: 233, column: 3, scope: !3766)
!3787 = !DILocation(line: 234, column: 3, scope: !3766)
!3788 = !DILocation(line: 235, column: 3, scope: !3766)
!3789 = !DILocation(line: 236, column: 1, scope: !3766)
!3790 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !181, file: !181, line: 239, type: !669, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !54)
!3791 = !DILocation(line: 245, column: 3, scope: !3790)
!3792 = !DILocation(line: 251, column: 3, scope: !3790)
!3793 = !DILocation(line: 256, column: 3, scope: !3790)
!3794 = !DILocation(line: 258, column: 1, scope: !3790)
!3795 = distinct !DISubprogram(name: "xnmalloc", scope: !189, file: !189, line: 99, type: !3796, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!32, !122, !122}
!3798 = !{!3799, !3800}
!3799 = !DILocalVariable(name: "n", arg: 1, scope: !3795, file: !189, line: 99, type: !122)
!3800 = !DILocalVariable(name: "s", arg: 2, scope: !3795, file: !189, line: 99, type: !122)
!3801 = !DILocation(line: 99, column: 18, scope: !3795)
!3802 = !DILocation(line: 99, column: 28, scope: !3795)
!3803 = !DILocation(line: 101, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3795, file: !189, line: 101, column: 7)
!3805 = !DILocation(line: 101, column: 7, scope: !3795)
!3806 = !DILocation(line: 102, column: 5, scope: !3804)
!3807 = !DILocation(line: 103, column: 21, scope: !3795)
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3809, file: !3810, line: 39, type: !122)
!3809 = distinct !DISubprogram(name: "xmalloc", scope: !3810, file: !3810, line: 39, type: !3811, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3813)
!3810 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!32, !122}
!3813 = !{!3808, !3814}
!3814 = !DILocalVariable(name: "p", scope: !3809, file: !3810, line: 41, type: !32)
!3815 = !DILocation(line: 39, column: 17, scope: !3809, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 103, column: 10, scope: !3795)
!3817 = !DILocation(line: 41, column: 13, scope: !3809, inlinedAt: !3816)
!3818 = !DILocation(line: 41, column: 9, scope: !3809, inlinedAt: !3816)
!3819 = !DILocation(line: 42, column: 8, scope: !3820, inlinedAt: !3816)
!3820 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 42, column: 7)
!3821 = !DILocation(line: 42, column: 15, scope: !3820, inlinedAt: !3816)
!3822 = !DILocation(line: 42, column: 10, scope: !3820, inlinedAt: !3816)
!3823 = !DILocation(line: 43, column: 5, scope: !3820, inlinedAt: !3816)
!3824 = !DILocation(line: 103, column: 3, scope: !3795)
!3825 = !DILocation(line: 39, column: 17, scope: !3809)
!3826 = !DILocation(line: 41, column: 13, scope: !3809)
!3827 = !DILocation(line: 41, column: 9, scope: !3809)
!3828 = !DILocation(line: 42, column: 8, scope: !3820)
!3829 = !DILocation(line: 42, column: 15, scope: !3820)
!3830 = !DILocation(line: 42, column: 10, scope: !3820)
!3831 = !DILocation(line: 43, column: 5, scope: !3820)
!3832 = !DILocation(line: 44, column: 3, scope: !3809)
!3833 = distinct !DISubprogram(name: "xnrealloc", scope: !189, file: !189, line: 112, type: !3834, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!32, !32, !122, !122}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !189, line: 112, type: !32)
!3838 = !DILocalVariable(name: "n", arg: 2, scope: !3833, file: !189, line: 112, type: !122)
!3839 = !DILocalVariable(name: "s", arg: 3, scope: !3833, file: !189, line: 112, type: !122)
!3840 = !DILocation(line: 112, column: 18, scope: !3833)
!3841 = !DILocation(line: 112, column: 28, scope: !3833)
!3842 = !DILocation(line: 112, column: 38, scope: !3833)
!3843 = !DILocation(line: 114, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3833, file: !189, line: 114, column: 7)
!3845 = !DILocation(line: 114, column: 7, scope: !3833)
!3846 = !DILocation(line: 115, column: 5, scope: !3844)
!3847 = !DILocation(line: 116, column: 25, scope: !3833)
!3848 = !DILocalVariable(name: "p", arg: 1, scope: !3849, file: !3810, line: 51, type: !32)
!3849 = distinct !DISubprogram(name: "xrealloc", scope: !3810, file: !3810, line: 51, type: !3850, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!32, !32, !122}
!3852 = !{!3848, !3853}
!3853 = !DILocalVariable(name: "n", arg: 2, scope: !3849, file: !3810, line: 51, type: !122)
!3854 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 116, column: 10, scope: !3833)
!3856 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3855)
!3857 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3855)
!3858 = distinct !DILexicalBlock(scope: !3849, file: !3810, line: 53, column: 7)
!3859 = !DILocation(line: 53, column: 13, scope: !3858, inlinedAt: !3855)
!3860 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3855)
!3861 = !DILocation(line: 57, column: 7, scope: !3862, inlinedAt: !3855)
!3862 = distinct !DILexicalBlock(scope: !3858, file: !3810, line: 54, column: 5)
!3863 = !DILocation(line: 58, column: 7, scope: !3862, inlinedAt: !3855)
!3864 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3855)
!3865 = !DILocation(line: 62, column: 8, scope: !3866, inlinedAt: !3855)
!3866 = distinct !DILexicalBlock(scope: !3849, file: !3810, line: 62, column: 7)
!3867 = !DILocation(line: 62, column: 13, scope: !3866, inlinedAt: !3855)
!3868 = !DILocation(line: 62, column: 10, scope: !3866, inlinedAt: !3855)
!3869 = !DILocation(line: 63, column: 5, scope: !3866, inlinedAt: !3855)
!3870 = !DILocation(line: 0, scope: !3849, inlinedAt: !3855)
!3871 = !DILocation(line: 116, column: 3, scope: !3833)
!3872 = !DILocation(line: 51, column: 17, scope: !3849)
!3873 = !DILocation(line: 51, column: 27, scope: !3849)
!3874 = !DILocation(line: 53, column: 8, scope: !3858)
!3875 = !DILocation(line: 53, column: 13, scope: !3858)
!3876 = !DILocation(line: 53, column: 10, scope: !3858)
!3877 = !DILocation(line: 57, column: 7, scope: !3862)
!3878 = !DILocation(line: 58, column: 7, scope: !3862)
!3879 = !DILocation(line: 61, column: 7, scope: !3849)
!3880 = !DILocation(line: 62, column: 8, scope: !3866)
!3881 = !DILocation(line: 62, column: 13, scope: !3866)
!3882 = !DILocation(line: 62, column: 10, scope: !3866)
!3883 = !DILocation(line: 63, column: 5, scope: !3866)
!3884 = !DILocation(line: 0, scope: !3849)
!3885 = !DILocation(line: 65, column: 1, scope: !3849)
!3886 = !DILocation(line: 174, column: 19, scope: !190)
!3887 = !DILocation(line: 174, column: 30, scope: !190)
!3888 = !DILocation(line: 174, column: 41, scope: !190)
!3889 = !DILocation(line: 176, column: 14, scope: !190)
!3890 = !DILocation(line: 176, column: 10, scope: !190)
!3891 = !DILocation(line: 178, column: 9, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !190, file: !189, line: 178, column: 7)
!3893 = !DILocation(line: 178, column: 7, scope: !190)
!3894 = !DILocation(line: 180, column: 13, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !189, line: 180, column: 11)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !189, line: 179, column: 5)
!3897 = !DILocation(line: 180, column: 11, scope: !3896)
!3898 = !DILocation(line: 188, column: 30, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !189, line: 181, column: 9)
!3900 = !DILocation(line: 189, column: 16, scope: !3899)
!3901 = !DILocation(line: 189, column: 13, scope: !3899)
!3902 = !DILocation(line: 190, column: 9, scope: !3899)
!3903 = !DILocation(line: 0, scope: !3899)
!3904 = !DILocation(line: 191, column: 11, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3896, file: !189, line: 191, column: 11)
!3906 = !DILocation(line: 191, column: 11, scope: !3896)
!3907 = !DILocation(line: 206, column: 7, scope: !190)
!3908 = !DILocation(line: 207, column: 25, scope: !190)
!3909 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 207, column: 10, scope: !190)
!3911 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3910)
!3912 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3910)
!3913 = !DILocation(line: 192, column: 9, scope: !3905)
!3914 = !DILocation(line: 200, column: 69, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !189, line: 200, column: 11)
!3916 = distinct !DILexicalBlock(scope: !3892, file: !189, line: 195, column: 5)
!3917 = !DILocation(line: 201, column: 11, scope: !3915)
!3918 = !DILocation(line: 200, column: 11, scope: !3916)
!3919 = !DILocation(line: 202, column: 9, scope: !3915)
!3920 = !DILocation(line: 203, column: 14, scope: !3916)
!3921 = !DILocation(line: 203, column: 18, scope: !3916)
!3922 = !DILocation(line: 203, column: 9, scope: !3916)
!3923 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3910)
!3924 = !DILocation(line: 57, column: 7, scope: !3862, inlinedAt: !3910)
!3925 = !DILocation(line: 58, column: 7, scope: !3862, inlinedAt: !3910)
!3926 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3910)
!3927 = !DILocation(line: 62, column: 8, scope: !3866, inlinedAt: !3910)
!3928 = !DILocation(line: 62, column: 13, scope: !3866, inlinedAt: !3910)
!3929 = !DILocation(line: 62, column: 10, scope: !3866, inlinedAt: !3910)
!3930 = !DILocation(line: 63, column: 5, scope: !3866, inlinedAt: !3910)
!3931 = !DILocation(line: 0, scope: !3849, inlinedAt: !3910)
!3932 = !DILocation(line: 207, column: 3, scope: !190)
!3933 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2906, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3934)
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3933, file: !189, line: 216, type: !122)
!3936 = !DILocation(line: 216, column: 20, scope: !3933)
!3937 = !DILocation(line: 39, column: 17, scope: !3809, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 218, column: 10, scope: !3933)
!3939 = !DILocation(line: 41, column: 13, scope: !3809, inlinedAt: !3938)
!3940 = !DILocation(line: 41, column: 9, scope: !3809, inlinedAt: !3938)
!3941 = !DILocation(line: 42, column: 8, scope: !3820, inlinedAt: !3938)
!3942 = !DILocation(line: 42, column: 15, scope: !3820, inlinedAt: !3938)
!3943 = !DILocation(line: 42, column: 10, scope: !3820, inlinedAt: !3938)
!3944 = !DILocation(line: 43, column: 5, scope: !3820, inlinedAt: !3938)
!3945 = !DILocation(line: 218, column: 3, scope: !3933)
!3946 = distinct !DISubprogram(name: "x2realloc", scope: !3810, file: !3810, line: 74, type: !3947, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!32, !32, !193}
!3949 = !{!3950, !3951}
!3950 = !DILocalVariable(name: "p", arg: 1, scope: !3946, file: !3810, line: 74, type: !32)
!3951 = !DILocalVariable(name: "pn", arg: 2, scope: !3946, file: !3810, line: 74, type: !193)
!3952 = !DILocation(line: 74, column: 18, scope: !3946)
!3953 = !DILocation(line: 74, column: 29, scope: !3946)
!3954 = !DILocation(line: 174, column: 19, scope: !190, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 76, column: 10, scope: !3946)
!3956 = !DILocation(line: 174, column: 30, scope: !190, inlinedAt: !3955)
!3957 = !DILocation(line: 174, column: 41, scope: !190, inlinedAt: !3955)
!3958 = !DILocation(line: 176, column: 14, scope: !190, inlinedAt: !3955)
!3959 = !DILocation(line: 176, column: 10, scope: !190, inlinedAt: !3955)
!3960 = !DILocation(line: 178, column: 9, scope: !3892, inlinedAt: !3955)
!3961 = !DILocation(line: 178, column: 7, scope: !190, inlinedAt: !3955)
!3962 = !DILocation(line: 180, column: 13, scope: !3895, inlinedAt: !3955)
!3963 = !DILocation(line: 180, column: 11, scope: !3896, inlinedAt: !3955)
!3964 = !DILocation(line: 191, column: 11, scope: !3905, inlinedAt: !3955)
!3965 = !DILocation(line: 191, column: 11, scope: !3896, inlinedAt: !3955)
!3966 = !DILocation(line: 206, column: 7, scope: !190, inlinedAt: !3955)
!3967 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 207, column: 10, scope: !190, inlinedAt: !3955)
!3969 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3968)
!3970 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3968)
!3971 = !DILocation(line: 192, column: 9, scope: !3905, inlinedAt: !3955)
!3972 = !DILocation(line: 201, column: 11, scope: !3915, inlinedAt: !3955)
!3973 = !DILocation(line: 200, column: 11, scope: !3916, inlinedAt: !3955)
!3974 = !DILocation(line: 202, column: 9, scope: !3915, inlinedAt: !3955)
!3975 = !DILocation(line: 203, column: 14, scope: !3916, inlinedAt: !3955)
!3976 = !DILocation(line: 203, column: 18, scope: !3916, inlinedAt: !3955)
!3977 = !DILocation(line: 203, column: 9, scope: !3916, inlinedAt: !3955)
!3978 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3968)
!3979 = !DILocation(line: 57, column: 7, scope: !3862, inlinedAt: !3968)
!3980 = !DILocation(line: 58, column: 7, scope: !3862, inlinedAt: !3968)
!3981 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3968)
!3982 = !DILocation(line: 62, column: 8, scope: !3866, inlinedAt: !3968)
!3983 = !DILocation(line: 62, column: 13, scope: !3866, inlinedAt: !3968)
!3984 = !DILocation(line: 62, column: 10, scope: !3866, inlinedAt: !3968)
!3985 = !DILocation(line: 63, column: 5, scope: !3866, inlinedAt: !3968)
!3986 = !DILocation(line: 0, scope: !3849, inlinedAt: !3968)
!3987 = !DILocation(line: 76, column: 3, scope: !3946)
!3988 = distinct !DISubprogram(name: "xzalloc", scope: !3810, file: !3810, line: 84, type: !3811, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3989)
!3989 = !{!3990}
!3990 = !DILocalVariable(name: "s", arg: 1, scope: !3988, file: !3810, line: 84, type: !122)
!3991 = !DILocation(line: 84, column: 17, scope: !3988)
!3992 = !DILocation(line: 39, column: 17, scope: !3809, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 86, column: 18, scope: !3988)
!3994 = !DILocation(line: 41, column: 13, scope: !3809, inlinedAt: !3993)
!3995 = !DILocation(line: 41, column: 9, scope: !3809, inlinedAt: !3993)
!3996 = !DILocation(line: 42, column: 8, scope: !3820, inlinedAt: !3993)
!3997 = !DILocation(line: 42, column: 15, scope: !3820, inlinedAt: !3993)
!3998 = !DILocation(line: 42, column: 10, scope: !3820, inlinedAt: !3993)
!3999 = !DILocation(line: 43, column: 5, scope: !3820, inlinedAt: !3993)
!4000 = !DILocation(line: 86, column: 10, scope: !3988)
!4001 = !DILocation(line: 86, column: 3, scope: !3988)
!4002 = distinct !DISubprogram(name: "xcalloc", scope: !3810, file: !3810, line: 93, type: !3796, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !4003)
!4003 = !{!4004, !4005, !4006}
!4004 = !DILocalVariable(name: "n", arg: 1, scope: !4002, file: !3810, line: 93, type: !122)
!4005 = !DILocalVariable(name: "s", arg: 2, scope: !4002, file: !3810, line: 93, type: !122)
!4006 = !DILocalVariable(name: "p", scope: !4002, file: !3810, line: 95, type: !32)
!4007 = !DILocation(line: 93, column: 17, scope: !4002)
!4008 = !DILocation(line: 93, column: 27, scope: !4002)
!4009 = !DILocation(line: 100, column: 7, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4002, file: !3810, line: 100, column: 7)
!4011 = !DILocation(line: 101, column: 7, scope: !4010)
!4012 = !DILocation(line: 101, column: 18, scope: !4010)
!4013 = !DILocation(line: 95, column: 9, scope: !4002)
!4014 = !DILocation(line: 101, column: 16, scope: !4010)
!4015 = !DILocation(line: 100, column: 7, scope: !4002)
!4016 = !DILocation(line: 102, column: 5, scope: !4010)
!4017 = !DILocation(line: 103, column: 3, scope: !4002)
!4018 = distinct !DISubprogram(name: "xmemdup", scope: !3810, file: !3810, line: 111, type: !4019, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !4023)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!32, !4021, !122}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4023 = !{!4024, !4025}
!4024 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !3810, line: 111, type: !4021)
!4025 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !3810, line: 111, type: !122)
!4026 = !DILocation(line: 111, column: 22, scope: !4018)
!4027 = !DILocation(line: 111, column: 32, scope: !4018)
!4028 = !DILocation(line: 39, column: 17, scope: !3809, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 113, column: 18, scope: !4018)
!4030 = !DILocation(line: 41, column: 13, scope: !3809, inlinedAt: !4029)
!4031 = !DILocation(line: 41, column: 9, scope: !3809, inlinedAt: !4029)
!4032 = !DILocation(line: 42, column: 8, scope: !3820, inlinedAt: !4029)
!4033 = !DILocation(line: 42, column: 15, scope: !3820, inlinedAt: !4029)
!4034 = !DILocation(line: 42, column: 10, scope: !3820, inlinedAt: !4029)
!4035 = !DILocation(line: 43, column: 5, scope: !3820, inlinedAt: !4029)
!4036 = !DILocation(line: 113, column: 10, scope: !4018)
!4037 = !DILocation(line: 113, column: 3, scope: !4018)
!4038 = distinct !DISubprogram(name: "xstrdup", scope: !3810, file: !3810, line: 119, type: !3110, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !4039)
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "string", arg: 1, scope: !4038, file: !3810, line: 119, type: !41)
!4041 = !DILocation(line: 119, column: 22, scope: !4038)
!4042 = !DILocation(line: 121, column: 27, scope: !4038)
!4043 = !DILocation(line: 121, column: 43, scope: !4038)
!4044 = !DILocation(line: 111, column: 22, scope: !4018, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 121, column: 10, scope: !4038)
!4046 = !DILocation(line: 111, column: 32, scope: !4018, inlinedAt: !4045)
!4047 = !DILocation(line: 39, column: 17, scope: !3809, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 113, column: 18, scope: !4018, inlinedAt: !4045)
!4049 = !DILocation(line: 41, column: 13, scope: !3809, inlinedAt: !4048)
!4050 = !DILocation(line: 41, column: 9, scope: !3809, inlinedAt: !4048)
!4051 = !DILocation(line: 42, column: 8, scope: !3820, inlinedAt: !4048)
!4052 = !DILocation(line: 42, column: 15, scope: !3820, inlinedAt: !4048)
!4053 = !DILocation(line: 42, column: 10, scope: !3820, inlinedAt: !4048)
!4054 = !DILocation(line: 43, column: 5, scope: !3820, inlinedAt: !4048)
!4055 = !DILocation(line: 113, column: 10, scope: !4018, inlinedAt: !4045)
!4056 = !DILocation(line: 121, column: 3, scope: !4038)
!4057 = distinct !DISubprogram(name: "xalloc_die", scope: !4058, file: !4058, line: 32, type: !669, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !202, retainedNodes: !54)
!4058 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4059 = !DILocation(line: 34, column: 10, scope: !4057)
!4060 = !DILocation(line: 34, column: 33, scope: !4057)
!4061 = !DILocation(line: 34, column: 3, scope: !4057)
!4062 = !DILocation(line: 40, column: 3, scope: !4057)
!4063 = distinct !DISubprogram(name: "xnumtoumax", scope: !4064, file: !4064, line: 36, type: !4065, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !4067)
!4064 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!781, !41, !44, !781, !781, !41, !41, !44}
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4077}
!4068 = !DILocalVariable(name: "n_str", arg: 1, scope: !4063, file: !4064, line: 36, type: !41)
!4069 = !DILocalVariable(name: "base", arg: 2, scope: !4063, file: !4064, line: 36, type: !44)
!4070 = !DILocalVariable(name: "min", arg: 3, scope: !4063, file: !4064, line: 36, type: !781)
!4071 = !DILocalVariable(name: "max", arg: 4, scope: !4063, file: !4064, line: 36, type: !781)
!4072 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4063, file: !4064, line: 37, type: !41)
!4073 = !DILocalVariable(name: "err", arg: 6, scope: !4063, file: !4064, line: 37, type: !41)
!4074 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4063, file: !4064, line: 37, type: !44)
!4075 = !DILocalVariable(name: "s_err", scope: !4063, file: !4064, line: 39, type: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !208, line: 39, baseType: !207)
!4077 = !DILocalVariable(name: "tnum", scope: !4063, file: !4064, line: 41, type: !781)
!4078 = !DILocation(line: 36, column: 26, scope: !4063)
!4079 = !DILocation(line: 36, column: 37, scope: !4063)
!4080 = !DILocation(line: 36, column: 57, scope: !4063)
!4081 = !DILocation(line: 36, column: 76, scope: !4063)
!4082 = !DILocation(line: 37, column: 26, scope: !4063)
!4083 = !DILocation(line: 37, column: 48, scope: !4063)
!4084 = !DILocation(line: 37, column: 57, scope: !4063)
!4085 = !DILocation(line: 41, column: 3, scope: !4063)
!4086 = !DILocation(line: 41, column: 17, scope: !4063)
!4087 = !DILocation(line: 42, column: 11, scope: !4063)
!4088 = !DILocation(line: 39, column: 16, scope: !4063)
!4089 = !DILocation(line: 44, column: 7, scope: !4063)
!4090 = !DILocation(line: 69, column: 50, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !4064, line: 67, column: 5)
!4092 = distinct !DILexicalBlock(scope: !4063, file: !4064, line: 66, column: 7)
!4093 = !DILocation(line: 46, column: 11, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !4064, line: 46, column: 11)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !4064, line: 45, column: 5)
!4096 = distinct !DILexicalBlock(scope: !4063, file: !4064, line: 44, column: 7)
!4097 = !DILocation(line: 46, column: 16, scope: !4094)
!4098 = !DILocation(line: 46, column: 29, scope: !4094)
!4099 = !DILocation(line: 46, column: 22, scope: !4094)
!4100 = !DILocation(line: 51, column: 20, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !4064, line: 51, column: 15)
!4102 = distinct !DILexicalBlock(scope: !4094, file: !4064, line: 47, column: 9)
!4103 = !DILocation(line: 0, scope: !4101)
!4104 = !DILocation(line: 51, column: 15, scope: !4102)
!4105 = !DILocation(line: 52, column: 19, scope: !4101)
!4106 = !DILocation(line: 52, column: 13, scope: !4101)
!4107 = !DILocation(line: 58, column: 19, scope: !4101)
!4108 = !DILocation(line: 62, column: 5, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4096, file: !4064, line: 61, column: 12)
!4110 = !DILocation(line: 62, column: 11, scope: !4109)
!4111 = !DILocation(line: 64, column: 5, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !4064, line: 63, column: 12)
!4113 = !DILocation(line: 64, column: 11, scope: !4112)
!4114 = !DILocation(line: 69, column: 14, scope: !4091)
!4115 = !DILocation(line: 69, column: 56, scope: !4091)
!4116 = !DILocation(line: 70, column: 29, scope: !4091)
!4117 = !DILocation(line: 69, column: 7, scope: !4091)
!4118 = !DILocation(line: 73, column: 10, scope: !4063)
!4119 = !DILocation(line: 71, column: 5, scope: !4091)
!4120 = !DILocation(line: 74, column: 1, scope: !4063)
!4121 = !DILocation(line: 73, column: 3, scope: !4063)
!4122 = distinct !DISubprogram(name: "xdectoumax", scope: !4064, file: !4064, line: 82, type: !4123, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!781, !41, !781, !781, !41, !41, !44}
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131}
!4126 = !DILocalVariable(name: "n_str", arg: 1, scope: !4122, file: !4064, line: 82, type: !41)
!4127 = !DILocalVariable(name: "min", arg: 2, scope: !4122, file: !4064, line: 82, type: !781)
!4128 = !DILocalVariable(name: "max", arg: 3, scope: !4122, file: !4064, line: 82, type: !781)
!4129 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4122, file: !4064, line: 83, type: !41)
!4130 = !DILocalVariable(name: "err", arg: 5, scope: !4122, file: !4064, line: 83, type: !41)
!4131 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4122, file: !4064, line: 83, type: !44)
!4132 = !DILocation(line: 82, column: 26, scope: !4122)
!4133 = !DILocation(line: 82, column: 47, scope: !4122)
!4134 = !DILocation(line: 82, column: 66, scope: !4122)
!4135 = !DILocation(line: 83, column: 26, scope: !4122)
!4136 = !DILocation(line: 83, column: 48, scope: !4122)
!4137 = !DILocation(line: 83, column: 57, scope: !4122)
!4138 = !DILocation(line: 85, column: 10, scope: !4122)
!4139 = !DILocation(line: 85, column: 3, scope: !4122)
!4140 = distinct !DISubprogram(name: "xstrtoumax", scope: !4141, file: !4141, line: 88, type: !4142, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !4145)
!4141 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4076, !41, !717, !44, !4144, !41}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4158, !4159, !4162, !4163}
!4146 = !DILocalVariable(name: "s", arg: 1, scope: !4140, file: !4141, line: 88, type: !41)
!4147 = !DILocalVariable(name: "ptr", arg: 2, scope: !4140, file: !4141, line: 88, type: !717)
!4148 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4140, file: !4141, line: 88, type: !44)
!4149 = !DILocalVariable(name: "val", arg: 4, scope: !4140, file: !4141, line: 89, type: !4144)
!4150 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4140, file: !4141, line: 89, type: !41)
!4151 = !DILocalVariable(name: "t_ptr", scope: !4140, file: !4141, line: 91, type: !30)
!4152 = !DILocalVariable(name: "p", scope: !4140, file: !4141, line: 92, type: !717)
!4153 = !DILocalVariable(name: "tmp", scope: !4140, file: !4141, line: 93, type: !781)
!4154 = !DILocalVariable(name: "err", scope: !4140, file: !4141, line: 94, type: !4076)
!4155 = !DILocalVariable(name: "q", scope: !4156, file: !4141, line: 104, type: !41)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !4141, line: 103, column: 5)
!4157 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 102, column: 7)
!4158 = !DILocalVariable(name: "ch", scope: !4156, file: !4141, line: 105, type: !33)
!4159 = !DILocalVariable(name: "base", scope: !4160, file: !4141, line: 141, type: !44)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !4141, line: 140, column: 5)
!4161 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 139, column: 7)
!4162 = !DILocalVariable(name: "suffixes", scope: !4160, file: !4141, line: 142, type: !44)
!4163 = !DILocalVariable(name: "overflow", scope: !4160, file: !4141, line: 143, type: !4076)
!4164 = !DILocation(line: 88, column: 24, scope: !4140)
!4165 = !DILocation(line: 88, column: 34, scope: !4140)
!4166 = !DILocation(line: 88, column: 43, scope: !4140)
!4167 = !DILocation(line: 89, column: 24, scope: !4140)
!4168 = !DILocation(line: 89, column: 41, scope: !4140)
!4169 = !DILocation(line: 91, column: 3, scope: !4140)
!4170 = !DILocation(line: 94, column: 16, scope: !4140)
!4171 = !DILocation(line: 96, column: 3, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !4141, line: 96, column: 3)
!4173 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 96, column: 3)
!4174 = !DILocation(line: 98, column: 8, scope: !4140)
!4175 = !DILocation(line: 92, column: 10, scope: !4140)
!4176 = !DILocation(line: 100, column: 3, scope: !4140)
!4177 = !DILocation(line: 100, column: 9, scope: !4140)
!4178 = !DILocation(line: 104, column: 19, scope: !4156)
!4179 = !DILocation(line: 105, column: 21, scope: !4156)
!4180 = !DILocation(line: 106, column: 14, scope: !4156)
!4181 = !DILocation(line: 106, column: 7, scope: !4156)
!4182 = !DILocation(line: 0, scope: !4156)
!4183 = !DILocation(line: 107, column: 15, scope: !4156)
!4184 = distinct !{!4184, !4181, !4185}
!4185 = !DILocation(line: 107, column: 17, scope: !4156)
!4186 = !DILocation(line: 108, column: 14, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4156, file: !4141, line: 108, column: 11)
!4188 = !DILocalVariable(name: "nptr", arg: 1, scope: !4189, file: !4190, line: 336, type: !1172)
!4189 = distinct !DISubprogram(name: "strtoumax", scope: !4190, file: !4190, line: 336, type: !4191, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !4194)
!4190 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!781, !1172, !4193, !44}
!4193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !717)
!4194 = !{!4188, !4195, !4196}
!4195 = !DILocalVariable(name: "endptr", arg: 2, scope: !4189, file: !4190, line: 336, type: !4193)
!4196 = !DILocalVariable(name: "base", arg: 3, scope: !4189, file: !4190, line: 336, type: !44)
!4197 = !DILocation(line: 336, column: 1, scope: !4189, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 112, column: 9, scope: !4140)
!4199 = !DILocation(line: 339, column: 10, scope: !4189, inlinedAt: !4198)
!4200 = !DILocation(line: 93, column: 14, scope: !4140)
!4201 = !DILocation(line: 114, column: 7, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 114, column: 7)
!4203 = !DILocation(line: 114, column: 10, scope: !4202)
!4204 = !DILocation(line: 114, column: 7, scope: !4140)
!4205 = !DILocation(line: 118, column: 11, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !4141, line: 118, column: 11)
!4207 = distinct !DILexicalBlock(scope: !4202, file: !4141, line: 115, column: 5)
!4208 = !DILocation(line: 118, column: 26, scope: !4206)
!4209 = !DILocation(line: 118, column: 29, scope: !4206)
!4210 = !DILocation(line: 118, column: 33, scope: !4206)
!4211 = !DILocation(line: 118, column: 36, scope: !4206)
!4212 = !DILocation(line: 118, column: 11, scope: !4207)
!4213 = !DILocation(line: 123, column: 12, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4202, file: !4141, line: 123, column: 12)
!4215 = !DILocation(line: 123, column: 12, scope: !4202)
!4216 = !DILocation(line: 128, column: 5, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !4141, line: 124, column: 5)
!4218 = !DILocation(line: 0, scope: !4140)
!4219 = !DILocation(line: 133, column: 8, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 133, column: 7)
!4221 = !DILocation(line: 133, column: 7, scope: !4140)
!4222 = !DILocation(line: 135, column: 12, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4220, file: !4141, line: 134, column: 5)
!4224 = !DILocation(line: 136, column: 7, scope: !4223)
!4225 = !DILocation(line: 139, column: 7, scope: !4161)
!4226 = !DILocation(line: 139, column: 11, scope: !4161)
!4227 = !DILocation(line: 139, column: 7, scope: !4140)
!4228 = !DILocation(line: 141, column: 11, scope: !4160)
!4229 = !DILocation(line: 142, column: 11, scope: !4160)
!4230 = !DILocation(line: 145, column: 12, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 145, column: 11)
!4232 = !DILocation(line: 145, column: 11, scope: !4160)
!4233 = !DILocation(line: 147, column: 16, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4231, file: !4141, line: 146, column: 9)
!4235 = !DILocation(line: 148, column: 22, scope: !4234)
!4236 = !DILocation(line: 148, column: 11, scope: !4234)
!4237 = !DILocation(line: 151, column: 7, scope: !4160)
!4238 = !DILocation(line: 163, column: 15, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !4141, line: 163, column: 15)
!4240 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 152, column: 9)
!4241 = !DILocation(line: 163, column: 15, scope: !4240)
!4242 = !DILocation(line: 164, column: 21, scope: !4239)
!4243 = !DILocation(line: 164, column: 13, scope: !4239)
!4244 = !DILocation(line: 167, column: 21, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !4141, line: 167, column: 21)
!4246 = distinct !DILexicalBlock(scope: !4239, file: !4141, line: 165, column: 15)
!4247 = !DILocation(line: 167, column: 29, scope: !4245)
!4248 = !DILocation(line: 167, column: 21, scope: !4246)
!4249 = !DILocation(line: 175, column: 17, scope: !4246)
!4250 = !DILocation(line: 179, column: 7, scope: !4160)
!4251 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4252, file: !4141, line: 60, type: !44)
!4252 = distinct !DISubprogram(name: "bkm_scale", scope: !4141, file: !4141, line: 60, type: !4253, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!4076, !4144, !44}
!4255 = !{!4256, !4251}
!4256 = !DILocalVariable(name: "x", arg: 1, scope: !4252, file: !4141, line: 60, type: !4144)
!4257 = !DILocation(line: 60, column: 31, scope: !4252, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 182, column: 22, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 180, column: 9)
!4260 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4258)
!4261 = distinct !DILexicalBlock(scope: !4252, file: !4141, line: 67, column: 7)
!4262 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4258)
!4263 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4258)
!4264 = !DILocation(line: 143, column: 20, scope: !4160)
!4265 = !DILocation(line: 183, column: 11, scope: !4259)
!4266 = !DILocation(line: 60, column: 31, scope: !4252, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 189, column: 22, scope: !4259)
!4268 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4267)
!4269 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4267)
!4270 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4267)
!4271 = !DILocation(line: 190, column: 11, scope: !4259)
!4272 = !DILocalVariable(name: "power", arg: 3, scope: !4273, file: !4141, line: 77, type: !44)
!4273 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4141, file: !4141, line: 77, type: !4274, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!4076, !4144, !44, !44}
!4276 = !{!4277, !4278, !4272, !4279}
!4277 = !DILocalVariable(name: "x", arg: 1, scope: !4273, file: !4141, line: 77, type: !4144)
!4278 = !DILocalVariable(name: "base", arg: 2, scope: !4273, file: !4141, line: 77, type: !44)
!4279 = !DILocalVariable(name: "err", scope: !4273, file: !4141, line: 79, type: !4076)
!4280 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 197, column: 22, scope: !4259)
!4282 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4281)
!4283 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4281)
!4285 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4284)
!4286 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4284)
!4287 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4281)
!4288 = !DILocation(line: 241, column: 11, scope: !4160)
!4289 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 202, column: 22, scope: !4259)
!4291 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4290)
!4292 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4290)
!4294 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4293)
!4295 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4293)
!4296 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4290)
!4297 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 207, column: 22, scope: !4259)
!4299 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4298)
!4300 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4298)
!4302 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4301)
!4303 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4301)
!4304 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 212, column: 22, scope: !4259)
!4306 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4305)
!4307 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4305)
!4309 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4308)
!4310 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4308)
!4311 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4305)
!4312 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 216, column: 22, scope: !4259)
!4314 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4313)
!4315 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4313)
!4317 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4316)
!4318 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4316)
!4319 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4313)
!4320 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 221, column: 22, scope: !4259)
!4322 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4321)
!4323 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4321)
!4325 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4324)
!4326 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4324)
!4327 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4321)
!4328 = !DILocation(line: 60, column: 31, scope: !4252, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 225, column: 22, scope: !4259)
!4330 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4329)
!4331 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4329)
!4332 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4329)
!4333 = !DILocation(line: 226, column: 11, scope: !4259)
!4334 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 229, column: 22, scope: !4259)
!4336 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4335)
!4337 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4335)
!4339 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4338)
!4340 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4338)
!4341 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4335)
!4342 = !DILocation(line: 77, column: 50, scope: !4273, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 233, column: 22, scope: !4259)
!4344 = !DILocation(line: 79, column: 16, scope: !4273, inlinedAt: !4343)
!4345 = !DILocation(line: 67, column: 39, scope: !4261, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 81, column: 12, scope: !4273, inlinedAt: !4343)
!4347 = !DILocation(line: 72, column: 6, scope: !4252, inlinedAt: !4346)
!4348 = !DILocation(line: 67, column: 7, scope: !4252, inlinedAt: !4346)
!4349 = !DILocation(line: 81, column: 9, scope: !4273, inlinedAt: !4343)
!4350 = !DILocation(line: 237, column: 16, scope: !4259)
!4351 = !DILocation(line: 238, column: 22, scope: !4259)
!4352 = !DILocation(line: 238, column: 11, scope: !4259)
!4353 = !DILocation(line: 0, scope: !4206)
!4354 = !DILocation(line: 0, scope: !4259)
!4355 = !DILocation(line: 242, column: 10, scope: !4160)
!4356 = !DILocation(line: 243, column: 11, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 243, column: 11)
!4358 = !DILocation(line: 244, column: 13, scope: !4357)
!4359 = !DILocation(line: 243, column: 11, scope: !4160)
!4360 = !DILocation(line: 119, column: 13, scope: !4206)
!4361 = !DILocation(line: 247, column: 8, scope: !4140)
!4362 = !DILocation(line: 248, column: 3, scope: !4140)
!4363 = !DILocation(line: 0, scope: !4187)
!4364 = !DILocation(line: 249, column: 1, scope: !4140)
!4365 = distinct !DISubprogram(name: "rpl_calloc", scope: !4366, file: !4366, line: 42, type: !3796, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !4367)
!4366 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4367 = !{!4368, !4369, !4370, !4371}
!4368 = !DILocalVariable(name: "n", arg: 1, scope: !4365, file: !4366, line: 42, type: !122)
!4369 = !DILocalVariable(name: "s", arg: 2, scope: !4365, file: !4366, line: 42, type: !122)
!4370 = !DILocalVariable(name: "result", scope: !4365, file: !4366, line: 44, type: !32)
!4371 = !DILocalVariable(name: "bytes", scope: !4372, file: !4366, line: 56, type: !122)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !4366, line: 53, column: 5)
!4373 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 47, column: 7)
!4374 = !DILocation(line: 42, column: 20, scope: !4365)
!4375 = !DILocation(line: 42, column: 30, scope: !4365)
!4376 = !DILocation(line: 47, column: 9, scope: !4373)
!4377 = !DILocation(line: 47, column: 19, scope: !4373)
!4378 = !DILocation(line: 47, column: 14, scope: !4373)
!4379 = !DILocation(line: 56, column: 24, scope: !4372)
!4380 = !DILocation(line: 56, column: 14, scope: !4372)
!4381 = !DILocation(line: 57, column: 17, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4372, file: !4366, line: 57, column: 11)
!4383 = !DILocation(line: 57, column: 21, scope: !4382)
!4384 = !DILocation(line: 57, column: 11, scope: !4372)
!4385 = !DILocation(line: 59, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !4366, line: 58, column: 9)
!4387 = !DILocation(line: 59, column: 17, scope: !4386)
!4388 = !DILocation(line: 65, column: 12, scope: !4365)
!4389 = !DILocation(line: 44, column: 9, scope: !4365)
!4390 = !DILocation(line: 72, column: 3, scope: !4365)
!4391 = !DILocation(line: 0, scope: !4386)
!4392 = !DILocation(line: 73, column: 1, scope: !4365)
!4393 = distinct !DISubprogram(name: "rpl_fclose", scope: !4394, file: !4394, line: 58, type: !4395, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !221, retainedNodes: !4431)
!4394 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!44, !4397}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4399, file: !727, line: 51, baseType: !44, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4399, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4399, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4399, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4399, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4399, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4399, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4399, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4399, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4399, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4399, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4399, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4399, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4399, file: !727, line: 70, baseType: !4415, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4399, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4399, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4399, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4399, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4399, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4399, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4399, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4399, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4399, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4399, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4399, file: !727, line: 93, baseType: !4415, size: 64, offset: 1344)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4399, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4399, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4399, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4399, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4431 = !{!4432, !4433, !4434, !4435}
!4432 = !DILocalVariable(name: "fp", arg: 1, scope: !4393, file: !4394, line: 58, type: !4397)
!4433 = !DILocalVariable(name: "saved_errno", scope: !4393, file: !4394, line: 60, type: !44)
!4434 = !DILocalVariable(name: "fd", scope: !4393, file: !4394, line: 61, type: !44)
!4435 = !DILocalVariable(name: "result", scope: !4393, file: !4394, line: 62, type: !44)
!4436 = !DILocation(line: 58, column: 19, scope: !4393)
!4437 = !DILocation(line: 60, column: 7, scope: !4393)
!4438 = !DILocation(line: 62, column: 7, scope: !4393)
!4439 = !DILocation(line: 65, column: 8, scope: !4393)
!4440 = !DILocation(line: 61, column: 7, scope: !4393)
!4441 = !DILocation(line: 66, column: 10, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4393, file: !4394, line: 66, column: 7)
!4443 = !DILocation(line: 66, column: 7, scope: !4393)
!4444 = !DILocation(line: 67, column: 12, scope: !4442)
!4445 = !DILocation(line: 67, column: 5, scope: !4442)
!4446 = !DILocation(line: 72, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4393, file: !4394, line: 72, column: 7)
!4448 = !DILocation(line: 72, column: 23, scope: !4447)
!4449 = !DILocation(line: 72, column: 33, scope: !4447)
!4450 = !DILocation(line: 72, column: 26, scope: !4447)
!4451 = !DILocation(line: 72, column: 59, scope: !4447)
!4452 = !DILocation(line: 73, column: 7, scope: !4447)
!4453 = !DILocation(line: 73, column: 10, scope: !4447)
!4454 = !DILocation(line: 72, column: 7, scope: !4393)
!4455 = !DILocation(line: 100, column: 12, scope: !4393)
!4456 = !DILocation(line: 105, column: 7, scope: !4393)
!4457 = !DILocation(line: 74, column: 19, scope: !4447)
!4458 = !DILocation(line: 105, column: 19, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4393, file: !4394, line: 105, column: 7)
!4460 = !DILocation(line: 107, column: 13, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !4394, line: 106, column: 5)
!4462 = !DILocation(line: 109, column: 5, scope: !4461)
!4463 = !DILocation(line: 0, scope: !4393)
!4464 = !DILocation(line: 112, column: 1, scope: !4393)
!4465 = distinct !DISubprogram(name: "rpl_fflush", scope: !4466, file: !4466, line: 129, type: !4467, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !4503)
!4466 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!44, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !4471)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4471, file: !727, line: 51, baseType: !44, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4471, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4471, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4471, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4471, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4471, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4471, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4471, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4471, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4471, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4471, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4471, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4471, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4471, file: !727, line: 70, baseType: !4487, size: 64, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4471, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4471, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4471, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4471, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4471, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4471, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4471, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4471, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4471, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4471, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4471, file: !727, line: 93, baseType: !4487, size: 64, offset: 1344)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4471, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4471, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4471, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4471, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4503 = !{!4504}
!4504 = !DILocalVariable(name: "stream", arg: 1, scope: !4465, file: !4466, line: 129, type: !4469)
!4505 = !DILocation(line: 129, column: 19, scope: !4465)
!4506 = !DILocation(line: 150, column: 14, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4465, file: !4466, line: 150, column: 7)
!4508 = !DILocation(line: 150, column: 22, scope: !4507)
!4509 = !DILocation(line: 150, column: 27, scope: !4507)
!4510 = !DILocation(line: 150, column: 7, scope: !4465)
!4511 = !DILocation(line: 151, column: 12, scope: !4507)
!4512 = !DILocation(line: 151, column: 5, scope: !4507)
!4513 = !DILocalVariable(name: "fp", arg: 1, scope: !4514, file: !4466, line: 41, type: !4469)
!4514 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4466, file: !4466, line: 41, type: !4515, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !4469}
!4517 = !{!4513}
!4518 = !DILocation(line: 41, column: 48, scope: !4514, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 156, column: 3, scope: !4465)
!4520 = !DILocation(line: 43, column: 11, scope: !4521, inlinedAt: !4519)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !4466, line: 43, column: 7)
!4522 = !DILocation(line: 43, column: 18, scope: !4521, inlinedAt: !4519)
!4523 = !DILocation(line: 43, column: 7, scope: !4514, inlinedAt: !4519)
!4524 = !DILocation(line: 45, column: 5, scope: !4521, inlinedAt: !4519)
!4525 = !DILocation(line: 158, column: 10, scope: !4465)
!4526 = !DILocation(line: 158, column: 3, scope: !4465)
!4527 = !DILocation(line: 0, scope: !4465)
!4528 = !DILocation(line: 232, column: 1, scope: !4465)
!4529 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4530, file: !4530, line: 28, type: !4531, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !4567)
!4530 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!44, !4533, !1776, !44}
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4535, file: !727, line: 51, baseType: !44, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4535, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4535, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4535, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4535, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4535, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4535, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4535, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4535, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4535, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4535, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4535, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4535, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4535, file: !727, line: 70, baseType: !4551, size: 64, offset: 832)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4535, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4535, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4535, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4535, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4535, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4535, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4535, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4535, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4535, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4535, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4535, file: !727, line: 93, baseType: !4551, size: 64, offset: 1344)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4535, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4535, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4535, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4535, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4567 = !{!4568, !4569, !4570, !4571}
!4568 = !DILocalVariable(name: "fp", arg: 1, scope: !4529, file: !4530, line: 28, type: !4533)
!4569 = !DILocalVariable(name: "offset", arg: 2, scope: !4529, file: !4530, line: 28, type: !1776)
!4570 = !DILocalVariable(name: "whence", arg: 3, scope: !4529, file: !4530, line: 28, type: !44)
!4571 = !DILocalVariable(name: "pos", scope: !4572, file: !4530, line: 117, type: !1776)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !4530, line: 113, column: 5)
!4573 = distinct !DILexicalBlock(scope: !4529, file: !4530, line: 52, column: 7)
!4574 = !DILocation(line: 28, column: 15, scope: !4529)
!4575 = !DILocation(line: 28, column: 25, scope: !4529)
!4576 = !DILocation(line: 28, column: 37, scope: !4529)
!4577 = !DILocation(line: 52, column: 11, scope: !4573)
!4578 = !{!964, !663, i64 16}
!4579 = !DILocation(line: 52, column: 31, scope: !4573)
!4580 = !{!964, !663, i64 8}
!4581 = !DILocation(line: 52, column: 24, scope: !4573)
!4582 = !DILocation(line: 53, column: 7, scope: !4573)
!4583 = !DILocation(line: 53, column: 14, scope: !4573)
!4584 = !DILocation(line: 53, column: 35, scope: !4573)
!4585 = !{!964, !663, i64 32}
!4586 = !DILocation(line: 53, column: 28, scope: !4573)
!4587 = !DILocation(line: 54, column: 7, scope: !4573)
!4588 = !DILocation(line: 54, column: 14, scope: !4573)
!4589 = !{!964, !663, i64 72}
!4590 = !DILocation(line: 54, column: 28, scope: !4573)
!4591 = !DILocation(line: 52, column: 7, scope: !4529)
!4592 = !DILocation(line: 117, column: 26, scope: !4572)
!4593 = !DILocation(line: 117, column: 19, scope: !4572)
!4594 = !DILocation(line: 117, column: 13, scope: !4572)
!4595 = !DILocation(line: 118, column: 15, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4572, file: !4530, line: 118, column: 11)
!4597 = !DILocation(line: 118, column: 11, scope: !4572)
!4598 = !DILocation(line: 129, column: 11, scope: !4572)
!4599 = !DILocation(line: 129, column: 18, scope: !4572)
!4600 = !DILocation(line: 130, column: 11, scope: !4572)
!4601 = !DILocation(line: 130, column: 19, scope: !4572)
!4602 = !{!964, !925, i64 144}
!4603 = !DILocation(line: 161, column: 7, scope: !4572)
!4604 = !DILocation(line: 163, column: 10, scope: !4529)
!4605 = !DILocation(line: 163, column: 3, scope: !4529)
!4606 = !DILocation(line: 0, scope: !4529)
!4607 = !DILocation(line: 164, column: 1, scope: !4529)
!4608 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4609, file: !4609, line: 385, type: !4610, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4624)
!4609 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!122, !4612, !41, !122, !4613}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2073, line: 6, baseType: !4615)
!4615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2075, line: 21, baseType: !4616)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2075, line: 13, size: 64, elements: !4617)
!4617 = !{!4618, !4619}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4616, file: !2075, line: 15, baseType: !44, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4616, file: !2075, line: 20, baseType: !4620, size: 32, offset: 32)
!4620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4616, file: !2075, line: 16, size: 32, elements: !4621)
!4621 = !{!4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4620, file: !2075, line: 18, baseType: !7, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4620, file: !2075, line: 19, baseType: !803, size: 32)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4625 = !DILocalVariable(name: "pwc", arg: 1, scope: !4608, file: !4609, line: 385, type: !4612)
!4626 = !DILocalVariable(name: "s", arg: 2, scope: !4608, file: !4609, line: 385, type: !41)
!4627 = !DILocalVariable(name: "n", arg: 3, scope: !4608, file: !4609, line: 385, type: !122)
!4628 = !DILocalVariable(name: "ps", arg: 4, scope: !4608, file: !4609, line: 385, type: !4613)
!4629 = !DILocalVariable(name: "ret", scope: !4608, file: !4609, line: 387, type: !122)
!4630 = !DILocalVariable(name: "wc", scope: !4608, file: !4609, line: 388, type: !2086)
!4631 = !DILocalVariable(name: "uc", scope: !4632, file: !4609, line: 449, type: !33)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !4609, line: 448, column: 5)
!4633 = distinct !DILexicalBlock(scope: !4608, file: !4609, line: 447, column: 7)
!4634 = !DILocation(line: 385, column: 23, scope: !4608)
!4635 = !DILocation(line: 385, column: 40, scope: !4608)
!4636 = !DILocation(line: 385, column: 50, scope: !4608)
!4637 = !DILocation(line: 385, column: 64, scope: !4608)
!4638 = !DILocation(line: 388, column: 3, scope: !4608)
!4639 = !DILocation(line: 404, column: 9, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4608, file: !4609, line: 404, column: 7)
!4641 = !DILocation(line: 404, column: 7, scope: !4608)
!4642 = !DILocation(line: 439, column: 9, scope: !4608)
!4643 = !DILocation(line: 387, column: 10, scope: !4608)
!4644 = !DILocation(line: 447, column: 19, scope: !4633)
!4645 = !DILocation(line: 447, column: 31, scope: !4633)
!4646 = !DILocation(line: 447, column: 26, scope: !4633)
!4647 = !DILocation(line: 447, column: 41, scope: !4633)
!4648 = !DILocation(line: 447, column: 7, scope: !4608)
!4649 = !DILocation(line: 449, column: 26, scope: !4632)
!4650 = !DILocation(line: 449, column: 21, scope: !4632)
!4651 = !DILocation(line: 450, column: 14, scope: !4632)
!4652 = !DILocation(line: 450, column: 12, scope: !4632)
!4653 = !DILocation(line: 0, scope: !4632)
!4654 = !DILocation(line: 456, column: 1, scope: !4608)
!4655 = distinct !DISubprogram(name: "close_stream", scope: !4656, file: !4656, line: 56, type: !4657, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4693)
!4656 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!44, !4659}
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !725, line: 7, baseType: !4661)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4661, file: !727, line: 51, baseType: !44, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4661, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4661, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4661, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4661, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4661, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4661, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4661, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4661, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4661, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4661, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4661, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4661, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4661, file: !727, line: 70, baseType: !4677, size: 64, offset: 832)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4661, file: !727, line: 72, baseType: !44, size: 32, offset: 896)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4661, file: !727, line: 73, baseType: !44, size: 32, offset: 928)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4661, file: !727, line: 74, baseType: !749, size: 64, offset: 960)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4661, file: !727, line: 77, baseType: !121, size: 16, offset: 1024)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4661, file: !727, line: 78, baseType: !67, size: 8, offset: 1040)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4661, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4661, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4661, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4661, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4661, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4661, file: !727, line: 93, baseType: !4677, size: 64, offset: 1344)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4661, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4661, file: !727, line: 95, baseType: !122, size: 64, offset: 1472)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4661, file: !727, line: 96, baseType: !44, size: 32, offset: 1536)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4661, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4693 = !{!4694, !4695, !4697, !4698}
!4694 = !DILocalVariable(name: "stream", arg: 1, scope: !4655, file: !4656, line: 56, type: !4659)
!4695 = !DILocalVariable(name: "some_pending", scope: !4655, file: !4656, line: 58, type: !4696)
!4696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!4697 = !DILocalVariable(name: "prev_fail", scope: !4655, file: !4656, line: 59, type: !4696)
!4698 = !DILocalVariable(name: "fclose_fail", scope: !4655, file: !4656, line: 60, type: !4696)
!4699 = !DILocation(line: 56, column: 21, scope: !4655)
!4700 = !DILocation(line: 58, column: 30, scope: !4655)
!4701 = !DILocalVariable(name: "__stream", arg: 1, scope: !4702, file: !955, line: 135, type: !4659)
!4702 = distinct !DISubprogram(name: "ferror_unlocked", scope: !955, file: !955, line: 135, type: !4657, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4703)
!4703 = !{!4701}
!4704 = !DILocation(line: 135, column: 1, scope: !4702, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 59, column: 27, scope: !4655)
!4706 = !DILocation(line: 137, column: 10, scope: !4702, inlinedAt: !4705)
!4707 = !DILocation(line: 59, column: 43, scope: !4655)
!4708 = !DILocation(line: 60, column: 29, scope: !4655)
!4709 = !DILocation(line: 60, column: 45, scope: !4655)
!4710 = !DILocation(line: 70, column: 17, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4655, file: !4656, line: 70, column: 7)
!4712 = !DILocation(line: 58, column: 50, scope: !4655)
!4713 = !DILocation(line: 70, column: 33, scope: !4711)
!4714 = !DILocation(line: 70, column: 53, scope: !4711)
!4715 = !DILocation(line: 70, column: 59, scope: !4711)
!4716 = !DILocation(line: 70, column: 7, scope: !4655)
!4717 = !DILocation(line: 72, column: 11, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4711, file: !4656, line: 71, column: 5)
!4719 = !DILocation(line: 73, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4718, file: !4656, line: 72, column: 11)
!4721 = !DILocation(line: 73, column: 15, scope: !4720)
!4722 = !DILocation(line: 0, scope: !4655)
!4723 = !DILocation(line: 78, column: 1, scope: !4655)
!4724 = distinct !DISubprogram(name: "hard_locale", scope: !4725, file: !4725, line: 38, type: !4726, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !232, retainedNodes: !4728)
!4725 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!81, !44}
!4728 = !{!4729, !4730, !4731}
!4729 = !DILocalVariable(name: "category", arg: 1, scope: !4724, file: !4725, line: 38, type: !44)
!4730 = !DILocalVariable(name: "hard", scope: !4724, file: !4725, line: 40, type: !81)
!4731 = !DILocalVariable(name: "p", scope: !4724, file: !4725, line: 41, type: !41)
!4732 = !DILocation(line: 38, column: 18, scope: !4724)
!4733 = !DILocation(line: 40, column: 8, scope: !4724)
!4734 = !DILocation(line: 41, column: 19, scope: !4724)
!4735 = !DILocation(line: 41, column: 15, scope: !4724)
!4736 = !DILocation(line: 43, column: 7, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4724, file: !4725, line: 43, column: 7)
!4738 = !DILocation(line: 43, column: 7, scope: !4724)
!4739 = !DILocation(line: 47, column: 15, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !4725, line: 47, column: 15)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !4725, line: 46, column: 9)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !4725, line: 45, column: 11)
!4743 = distinct !DILexicalBlock(scope: !4737, file: !4725, line: 44, column: 5)
!4744 = !DILocation(line: 47, column: 31, scope: !4740)
!4745 = !DILocation(line: 47, column: 36, scope: !4740)
!4746 = !DILocation(line: 47, column: 39, scope: !4740)
!4747 = !DILocation(line: 47, column: 59, scope: !4740)
!4748 = !DILocation(line: 47, column: 15, scope: !4741)
!4749 = !DILocation(line: 48, column: 13, scope: !4740)
!4750 = !DILocation(line: 71, column: 3, scope: !4724)
!4751 = distinct !DISubprogram(name: "locale_charset", scope: !4752, file: !4752, line: 687, type: !4753, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4755)
!4752 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!41}
!4755 = !{!4756}
!4756 = !DILocalVariable(name: "codeset", scope: !4751, file: !4752, line: 689, type: !41)
!4757 = !DILocation(line: 696, column: 13, scope: !4751)
!4758 = !DILocation(line: 689, column: 15, scope: !4751)
!4759 = !DILocation(line: 754, column: 15, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4751, file: !4752, line: 754, column: 7)
!4761 = !DILocation(line: 754, column: 7, scope: !4751)
!4762 = !DILocation(line: 907, column: 13, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !4752, line: 907, column: 13)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4752, line: 897, column: 7)
!4765 = distinct !DILexicalBlock(scope: !4751, file: !4752, line: 856, column: 3)
!4766 = !DILocation(line: 907, column: 24, scope: !4763)
!4767 = !DILocation(line: 907, column: 13, scope: !4764)
!4768 = !DILocation(line: 995, column: 3, scope: !4751)
