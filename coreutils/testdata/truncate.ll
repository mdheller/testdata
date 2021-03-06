; ModuleID = 'coreutils-8.30/src/truncate.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [268 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.32 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.8 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@no_create = internal unnamed_addr global i1 false, align 1, !dbg !84
@block_mode = internal unnamed_addr global i1 false, align 1, !dbg !85
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !68
@.str.14 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"EgGkKmMPtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"overflow in %ld * %ld byte blocks for file %s\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"overflow rounding up size of file %s\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %ld bytes\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), align 8, !dbg !86
@.str.60 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !92
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !97
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !100
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !107
@.str.72 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 16, !dbg !114
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !126
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !133
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.88 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.89 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.90 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !152
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !159
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !161
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.100 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.101 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.114 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.115 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.116 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.117 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.118 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.119 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !167
@.str.1.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.137 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.138 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !626 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !631, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %0, metadata !630, metadata !DIExpression()), !dbg !652
  %3 = icmp eq i32 %0, 0, !dbg !653
  br i1 %3, label %9, label %4, !dbg !654

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !655, !tbaa !657
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !655
  %7 = load i8*, i8** @program_name, align 8, !dbg !655, !tbaa !657
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !655
  br label %75, !dbg !655

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !661
  %11 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !657
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !661
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !662
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !657
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !662
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !663
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !657
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !663
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !668
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !657
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !668
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !669
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !657
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !669
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !670
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !657
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !670
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !671
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !657
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !671
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !672
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !657
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !672
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !673
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !657
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #10, !dbg !673
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !676
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !657
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !676
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #10, !dbg !677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %40, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !648
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !678
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !639, metadata !DIExpression()) #10, !dbg !679
  br label %42, !dbg !680

; <label>:42:                                     ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !639, metadata !DIExpression()) #10, !dbg !679
  %45 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %43) #14, !dbg !680
  %46 = icmp eq i32 %45, 0, !dbg !680
  br i1 %46, label %52, label %47, !dbg !681

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !639, metadata !DIExpression()) #10, !dbg !679
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !683
  %50 = load i8*, i8** %49, align 8, !dbg !683, !tbaa !684
  %51 = icmp eq i8* %50, null, !dbg !686
  br i1 %51, label %52, label %42, !dbg !687, !llvm.loop !688

; <label>:52:                                     ; preds = %47, %42
  %53 = phi %struct.infomap* [ %48, %47 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !639, metadata !DIExpression()) #10, !dbg !679
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !639, metadata !DIExpression()) #10, !dbg !679
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !691
  %55 = load i8*, i8** %54, align 8, !dbg !691, !tbaa !693
  %56 = icmp eq i8* %55, null, !dbg !694
  %57 = select i1 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %55, !dbg !695
  call void @llvm.dbg.value(metadata i8* %57, metadata !638, metadata !DIExpression()) #10, !dbg !696
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !697
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !697
  %60 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !698
  call void @llvm.dbg.value(metadata i8* %60, metadata !646, metadata !DIExpression()) #10, !dbg !699
  %61 = icmp eq i8* %60, null, !dbg !700
  br i1 %61, label %68, label %62, !dbg !702

; <label>:62:                                     ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #14, !dbg !703
  %64 = icmp eq i32 %63, 0, !dbg !703
  br i1 %64, label %68, label %65, !dbg !704

; <label>:65:                                     ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !705
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !705
  br label %68, !dbg !707

; <label>:68:                                     ; preds = %52, %62, %65
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !708
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !708
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !709
  %72 = icmp eq i8* %57, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), !dbg !709
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !709
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %57, i8* %73) #10, !dbg !709
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #10, !dbg !710
  br label %75

; <label>:75:                                     ; preds = %68, %4
  tail call void @exit(i32 %0) #15, !dbg !711
  unreachable, !dbg !711
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !712 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !717, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8** %1, metadata !718, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8 0, metadata !719, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8 0, metadata !720, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 -1, metadata !722, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32 0, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 -1, metadata !726, metadata !DIExpression()), !dbg !782
  %5 = load i8*, i8** %1, align 8, !dbg !783, !tbaa !657
  tail call void @set_program_name(i8* %5) #10, !dbg !784
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !785
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !786
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !787
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !788
  br label %10, !dbg !789

; <label>:10:                                     ; preds = %83, %2
  %11 = phi i32 [ %84, %83 ], [ 0, %2 ]
  %12 = phi i64 [ %86, %83 ], [ undef, %2 ]
  %13 = phi i8 [ 1, %83 ], [ 0, %2 ]
  br label %14, !dbg !790

; <label>:14:                                     ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 %13, metadata !719, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i32 %11, metadata !723, metadata !DIExpression()), !dbg !781
  %15 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !790
  call void @llvm.dbg.value(metadata i32 %15, metadata !725, metadata !DIExpression()), !dbg !792
  switch i32 %15, label %97 [
    i32 -1, label %98
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -130, label %93
    i32 -131, label %94
  ], !dbg !789

; <label>:16:                                     ; preds = %14
  %17 = tail call i16** @__ctype_b_loc() #16, !dbg !793
  %18 = load i16*, i16** %17, align 8, !dbg !793, !tbaa !657
  %19 = load i8*, i8** @optarg, align 8, !dbg !793, !tbaa !657
  %20 = load i8, i8* %19, align 1, !dbg !793, !tbaa !796
  %21 = zext i8 %20 to i64, !dbg !793
  %22 = getelementptr inbounds i16, i16* %18, i64 %21, !dbg !793
  %23 = load i16, i16* %22, align 2, !dbg !793, !tbaa !797
  %24 = and i16 %23, 8192, !dbg !793
  %25 = icmp eq i16 %24, 0, !dbg !799
  br i1 %25, label %41, label %31, !dbg !799

; <label>:26:                                     ; preds = %14
  store i1 true, i1* @no_create, align 1
  br label %30, !dbg !800

; <label>:27:                                     ; preds = %14
  store i1 true, i1* @block_mode, align 1
  br label %30, !dbg !801

; <label>:28:                                     ; preds = %14
  %29 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !802, !tbaa !657
  store i64 %29, i64* bitcast (i8** @ref_file to i64*), align 8, !dbg !803, !tbaa !657
  br label %30, !dbg !804

; <label>:30:                                     ; preds = %28, %27, %26
  br label %14, !dbg !778, !llvm.loop !805

; <label>:31:                                     ; preds = %16, %31
  %32 = phi i8* [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !807
  store i8* %33, i8** @optarg, align 8, !dbg !807, !tbaa !657
  %34 = load i16*, i16** %17, align 8, !dbg !793, !tbaa !657
  %35 = load i8, i8* %33, align 1, !dbg !793, !tbaa !796
  %36 = zext i8 %35 to i64, !dbg !793
  %37 = getelementptr inbounds i16, i16* %34, i64 %36, !dbg !793
  %38 = load i16, i16* %37, align 2, !dbg !793, !tbaa !797
  %39 = and i16 %38, 8192, !dbg !793
  %40 = icmp eq i16 %39, 0, !dbg !799
  br i1 %40, label %41, label %31, !dbg !799, !llvm.loop !808

; <label>:41:                                     ; preds = %31, %16
  %42 = phi i8* [ %19, %16 ], [ %33, %31 ], !dbg !793
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !793
  %44 = sext i8 %43 to i32, !dbg !809
  switch i32 %44, label %56 [
    i32 60, label %45
    i32 62, label %47
    i32 47, label %49
    i32 37, label %51
  ], !dbg !810

; <label>:45:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 3, metadata !723, metadata !DIExpression()), !dbg !781
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !811
  br label %53, !dbg !813

; <label>:47:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !723, metadata !DIExpression()), !dbg !781
  %48 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !814
  br label %53, !dbg !815

; <label>:49:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !723, metadata !DIExpression()), !dbg !781
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !816
  br label %53, !dbg !817

; <label>:51:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !723, metadata !DIExpression()), !dbg !781
  %52 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !818
  br label %53, !dbg !819

; <label>:53:                                     ; preds = %45, %47, %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ]
  %55 = phi i32 [ 5, %51 ], [ 4, %49 ], [ 2, %47 ], [ 3, %45 ]
  store i8* %54, i8** @optarg, align 8, !dbg !820, !tbaa !657
  br label %56, !dbg !821

; <label>:56:                                     ; preds = %53, %41
  %57 = phi i8* [ %42, %41 ], [ %54, %53 ], !dbg !821
  %58 = phi i32 [ %11, %41 ], [ %55, %53 ], !dbg !820
  call void @llvm.dbg.value(metadata i32 %58, metadata !723, metadata !DIExpression()), !dbg !781
  %59 = load i16*, i16** %17, align 8, !dbg !821, !tbaa !657
  %60 = load i8, i8* %57, align 1, !dbg !821, !tbaa !796
  %61 = zext i8 %60 to i64, !dbg !821
  %62 = getelementptr inbounds i16, i16* %59, i64 %61, !dbg !821
  %63 = load i16, i16* %62, align 2, !dbg !821, !tbaa !797
  %64 = and i16 %63, 8192, !dbg !821
  %65 = icmp eq i16 %64, 0, !dbg !822
  br i1 %65, label %76, label %66, !dbg !822

; <label>:66:                                     ; preds = %56, %66
  %67 = phi i8* [ %68, %66 ], [ %57, %56 ]
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !823
  store i8* %68, i8** @optarg, align 8, !dbg !823, !tbaa !657
  %69 = load i16*, i16** %17, align 8, !dbg !821, !tbaa !657
  %70 = load i8, i8* %68, align 1, !dbg !821, !tbaa !796
  %71 = zext i8 %70 to i64, !dbg !821
  %72 = getelementptr inbounds i16, i16* %69, i64 %71, !dbg !821
  %73 = load i16, i16* %72, align 2, !dbg !821, !tbaa !797
  %74 = and i16 %73, 8192, !dbg !821
  %75 = icmp eq i16 %74, 0, !dbg !822
  br i1 %75, label %76, label %66, !dbg !822, !llvm.loop !824

; <label>:76:                                     ; preds = %66, %56
  %77 = phi i8* [ %57, %56 ], [ %68, %66 ], !dbg !821
  %78 = phi i8 [ %60, %56 ], [ %70, %66 ], !dbg !821
  switch i8 %78, label %83 [
    i8 43, label %79
    i8 45, label %79
  ], !dbg !825

; <label>:79:                                     ; preds = %76, %76
  %80 = icmp eq i32 %58, 0, !dbg !827
  br i1 %80, label %83, label %81, !dbg !830

; <label>:81:                                     ; preds = %79
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #10, !dbg !833
  tail call void @usage(i32 1) #17, !dbg !834
  unreachable, !dbg !834

; <label>:83:                                     ; preds = %79, %76
  %84 = phi i32 [ %58, %76 ], [ 1, %79 ], !dbg !835
  call void @llvm.dbg.value(metadata i32 %84, metadata !723, metadata !DIExpression()), !dbg !781
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !836
  %86 = tail call i64 @xdectoimax(i8* %77, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %85, i32 0) #10, !dbg !837
  call void @llvm.dbg.value(metadata i64 %86, metadata !721, metadata !DIExpression()), !dbg !791
  %87 = or i32 %84, 1, !dbg !838
  %88 = icmp eq i32 %87, 5, !dbg !838
  %89 = icmp eq i64 %86, 0, !dbg !840
  %90 = and i1 %88, %89, !dbg !838
  br i1 %90, label %91, label %10, !dbg !838, !llvm.loop !805

; <label>:91:                                     ; preds = %83
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !841
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %92) #10, !dbg !841
  unreachable, !dbg !841

; <label>:93:                                     ; preds = %14
  tail call void @usage(i32 0) #17, !dbg !842
  unreachable, !dbg !842

; <label>:94:                                     ; preds = %14
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !657
  %96 = load i8*, i8** @Version, align 8, !dbg !843, !tbaa !657
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* null) #10, !dbg !843
  tail call void @exit(i32 0) #15, !dbg !843
  unreachable, !dbg !843

; <label>:97:                                     ; preds = %14
  tail call void @usage(i32 1) #17, !dbg !844
  unreachable, !dbg !844

; <label>:98:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 %11, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %13, metadata !719, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %11, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %13, metadata !719, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %11, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %13, metadata !719, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %11, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %13, metadata !719, metadata !DIExpression()), !dbg !778
  %99 = load i32, i32* @optind, align 4, !dbg !845, !tbaa !846
  %100 = sext i32 %99 to i64, !dbg !848
  %101 = getelementptr inbounds i8*, i8** %1, i64 %100, !dbg !848
  call void @llvm.dbg.value(metadata i8** %101, metadata !718, metadata !DIExpression()), !dbg !777
  %102 = load i8*, i8** @ref_file, align 8, !dbg !849, !tbaa !657
  %103 = icmp eq i8* %102, null, !dbg !849
  %104 = icmp eq i8 %13, 0, !dbg !851
  %105 = and i1 %104, %103, !dbg !852
  br i1 %105, label %106, label %110, !dbg !852

; <label>:106:                                    ; preds = %98
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !853
  %108 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !855
  %109 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !856
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %107, i8* %108, i8* %109) #10, !dbg !857
  tail call void @usage(i32 1) #17, !dbg !858
  unreachable, !dbg !858

; <label>:110:                                    ; preds = %98
  %111 = icmp ne i32 %11, 0, !dbg !859
  %112 = or i1 %111, %104, !dbg !861
  %113 = or i1 %112, %103, !dbg !862
  br i1 %113, label %118, label %114, !dbg !862

; <label>:114:                                    ; preds = %110
  %115 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !863
  %116 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !865
  %117 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !866
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %115, i8* %116, i8* %117) #10, !dbg !867
  tail call void @usage(i32 1) #17, !dbg !868
  unreachable, !dbg !868

; <label>:118:                                    ; preds = %110
  %119 = load i1, i1* @block_mode, align 1
  %120 = and i1 %104, %119, !dbg !869
  br i1 %120, label %121, label %125, !dbg !869

; <label>:121:                                    ; preds = %118
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !871
  %123 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !873
  %124 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !874
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122, i8* %123, i8* %124) #10, !dbg !875
  tail call void @usage(i32 1) #17, !dbg !876
  unreachable, !dbg !876

; <label>:125:                                    ; preds = %118
  %126 = icmp slt i32 %99, %0, !dbg !877
  br i1 %126, label %129, label %127, !dbg !879

; <label>:127:                                    ; preds = %125
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !880
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128) #10, !dbg !882
  tail call void @usage(i32 1) #17, !dbg !883
  unreachable, !dbg !883

; <label>:129:                                    ; preds = %125
  br i1 %103, label %170, label %130, !dbg !884

; <label>:130:                                    ; preds = %129
  %131 = bitcast %struct.stat* %4 to i8*, !dbg !885
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %131) #10, !dbg !885
  call void @llvm.dbg.value(metadata i64 -1, metadata !768, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !887
  call void @llvm.dbg.value(metadata i8* %102, metadata !888, metadata !DIExpression()) #10, !dbg !896
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !895, metadata !DIExpression()) #10, !dbg !896
  %132 = call i32 @__xstat(i32 1, i8* nonnull %102, %struct.stat* nonnull %4) #10, !dbg !899
  %133 = icmp eq i32 %132, 0, !dbg !900
  br i1 %133, label %140, label %134, !dbg !901

; <label>:134:                                    ; preds = %130
  %135 = tail call i32* @__errno_location() #16, !dbg !902
  %136 = load i32, i32* %135, align 4, !dbg !902, !tbaa !846
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !902
  %138 = load i8*, i8** @ref_file, align 8, !dbg !902, !tbaa !657
  %139 = call i8* @quotearg_style(i32 4, i8* %138) #10, !dbg !902
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* %137, i8* %139) #10, !dbg !902
  unreachable, !dbg !902

; <label>:140:                                    ; preds = %130
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !887
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !903, metadata !DIExpression()), !dbg !910
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !912
  %142 = load i32, i32* %141, align 8, !dbg !912, !tbaa !913
  %143 = trunc i32 %142 to i16, !dbg !917
  %144 = and i16 %143, -4096, !dbg !917
  switch i16 %144, label %145 [
    i16 -32768, label %156
    i16 -24576, label %156
  ], !dbg !917

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** @ref_file, align 8, !dbg !918, !tbaa !657
  %147 = call i32 (i8*, i32, ...) @open(i8* %146, i32 0) #10, !dbg !919
  call void @llvm.dbg.value(metadata i32 %147, metadata !769, metadata !DIExpression()), !dbg !920
  %148 = icmp sgt i32 %147, -1, !dbg !921
  br i1 %148, label %149, label %160, !dbg !922

; <label>:149:                                    ; preds = %145
  %150 = call i64 @lseek(i32 %147, i64 0, i32 2) #10, !dbg !923
  call void @llvm.dbg.value(metadata i64 %150, metadata !772, metadata !DIExpression()), !dbg !924
  %151 = tail call i32* @__errno_location() #16, !dbg !925
  %152 = load i32, i32* %151, align 4, !dbg !925, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %152, metadata !775, metadata !DIExpression()), !dbg !926
  %153 = call i32 @close(i32 %147) #10, !dbg !927
  %154 = icmp sgt i64 %150, -1, !dbg !928
  br i1 %154, label %166, label %155, !dbg !930

; <label>:155:                                    ; preds = %149
  store i32 %152, i32* %151, align 4, !dbg !931, !tbaa !846
  br label %160

; <label>:156:                                    ; preds = %140, %140
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !933
  %158 = load i64, i64* %157, align 8, !dbg !933, !tbaa !934
  call void @llvm.dbg.value(metadata i64 %158, metadata !768, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %158, metadata !768, metadata !DIExpression()), !dbg !886
  %159 = icmp slt i64 %158, 0, !dbg !935
  br i1 %159, label %160, label %166, !dbg !937

; <label>:160:                                    ; preds = %155, %145, %156
  %161 = tail call i32* @__errno_location() #16, !dbg !938
  %162 = load i32, i32* %161, align 4, !dbg !938, !tbaa !846
  %163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !938
  %164 = load i8*, i8** @ref_file, align 8, !dbg !938, !tbaa !657
  %165 = call i8* @quotearg_style(i32 4, i8* %164) #10, !dbg !938
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %162, i8* %163, i8* %165) #10, !dbg !938
  unreachable, !dbg !938

; <label>:166:                                    ; preds = %149, %156
  %167 = phi i64 [ %158, %156 ], [ %150, %149 ]
  %168 = select i1 %104, i64 -1, i64 %167, !dbg !939
  %169 = select i1 %104, i64 %167, i64 %12, !dbg !939
  call void @llvm.dbg.value(metadata i64 %169, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 %168, metadata !722, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %131) #10, !dbg !941
  br label %170, !dbg !942

; <label>:170:                                    ; preds = %129, %166
  %171 = phi i64 [ %168, %166 ], [ -1, %129 ], !dbg !835
  %172 = phi i64 [ %169, %166 ], [ %12, %129 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !721, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i64 %171, metadata !722, metadata !DIExpression()), !dbg !780
  %173 = load i1, i1* @no_create, align 1
  %174 = select i1 %173, i32 2049, i32 2113, !dbg !943
  call void @llvm.dbg.value(metadata i32 %174, metadata !727, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8** %101, metadata !718, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8 0, metadata !720, metadata !DIExpression()), !dbg !779
  %175 = load i8*, i8** %101, align 8, !dbg !945, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %175, metadata !728, metadata !DIExpression()), !dbg !946
  %176 = icmp eq i8* %175, null, !dbg !947
  br i1 %176, label %307, label %177, !dbg !948

; <label>:177:                                    ; preds = %170
  call void @llvm.dbg.value(metadata i8** %101, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !777
  %178 = bitcast %struct.stat* %3 to i8*
  %179 = icmp eq i32 %11, 0
  %180 = icmp slt i64 %171, 0
  %181 = and i1 %111, %180
  %182 = icmp sgt i64 %171, -1
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  br label %186, !dbg !948

; <label>:186:                                    ; preds = %177, %203
  %187 = phi i8* [ %175, %177 ], [ %205, %203 ]
  %188 = phi i8** [ %101, %177 ], [ %190, %203 ]
  %189 = phi i8 [ 0, %177 ], [ %204, %203 ]
  %190 = getelementptr inbounds i8*, i8** %188, i64 1, !dbg !949
  call void @llvm.dbg.value(metadata i8 %189, metadata !720, metadata !DIExpression()), !dbg !779
  %191 = call i32 (i8*, i32, ...) @open(i8* nonnull %187, i32 %174, i32 438) #10, !dbg !950
  call void @llvm.dbg.value(metadata i32 %191, metadata !726, metadata !DIExpression()), !dbg !782
  %192 = icmp eq i32 %191, -1, !dbg !953
  br i1 %192, label %193, label %207, !dbg !954

; <label>:193:                                    ; preds = %186
  %194 = load i1, i1* @no_create, align 1
  %195 = tail call i32* @__errno_location() #16, !dbg !955
  br i1 %194, label %196, label %199, !dbg !959

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %195, align 4, !dbg !960, !tbaa !846
  %198 = icmp eq i32 %197, 2, !dbg !961
  br i1 %198, label %203, label %199, !dbg !962

; <label>:199:                                    ; preds = %193, %196
  %200 = load i32, i32* %195, align 4, !dbg !963, !tbaa !846
  %201 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !964
  %202 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !965
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %200, i8* %201, i8* %202) #10, !dbg !966
  call void @llvm.dbg.value(metadata i8 1, metadata !720, metadata !DIExpression()), !dbg !779
  br label %203, !dbg !967

; <label>:203:                                    ; preds = %302, %296, %196, %199
  %204 = phi i8 [ %189, %196 ], [ 1, %199 ], [ 1, %302 ], [ %299, %296 ]
  call void @llvm.dbg.value(metadata i8** %190, metadata !718, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8 %204, metadata !720, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8** %190, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !777
  %205 = load i8*, i8** %190, align 8, !dbg !945, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %205, metadata !728, metadata !DIExpression()), !dbg !946
  %206 = icmp eq i8* %205, null, !dbg !947
  br i1 %206, label %307, label %186, !dbg !948, !llvm.loop !968

; <label>:207:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i32 %191, metadata !970, metadata !DIExpression()) #10, !dbg !998
  call void @llvm.dbg.value(metadata i8* undef, metadata !975, metadata !DIExpression()) #10, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %172, metadata !976, metadata !DIExpression()) #10, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %171, metadata !977, metadata !DIExpression()) #10, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %11, metadata !978, metadata !DIExpression()) #10, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %178) #10, !dbg !1006
  %208 = load i1, i1* @block_mode, align 1
  %209 = or i1 %208, %181, !dbg !1007
  br i1 %209, label %210, label %236, !dbg !1007

; <label>:210:                                    ; preds = %207
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !979, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %191, metadata !1010, metadata !DIExpression()) #10, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1015, metadata !DIExpression()) #10, !dbg !1016
  %211 = call i32 @__fxstat(i32 1, i32 %191, %struct.stat* nonnull %3) #10, !dbg !1018
  %212 = icmp eq i32 %211, 0, !dbg !1019
  br i1 %212, label %218, label %213, !dbg !1020

; <label>:213:                                    ; preds = %210
  %214 = tail call i32* @__errno_location() #16, !dbg !1021
  %215 = load i32, i32* %214, align 4, !dbg !1021, !tbaa !846
  %216 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !1023
  %217 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1024
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %215, i8* %216, i8* %217) #10, !dbg !1025
  br label %296, !dbg !1026

; <label>:218:                                    ; preds = %210
  %219 = load i1, i1* @block_mode, align 1
  br i1 %219, label %220, label %236, !dbg !1027

; <label>:220:                                    ; preds = %218
  %221 = load i64, i64* %183, align 8, !dbg !1028, !tbaa !1029
  %222 = icmp sgt i64 %221, 0, !dbg !1028
  %223 = icmp ult i64 %221, 2305843009213693953, !dbg !1028
  %224 = and i1 %222, %223, !dbg !1028
  %225 = select i1 %224, i64 %221, i64 512, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %225, metadata !981, metadata !DIExpression()) #10, !dbg !1030
  %226 = sdiv i64 -9223372036854775808, %225, !dbg !1031
  %227 = icmp sgt i64 %226, %172, !dbg !1033
  br i1 %227, label %233, label %228, !dbg !1034

; <label>:228:                                    ; preds = %220
  %229 = sdiv i64 9223372036854775807, %225, !dbg !1035
  %230 = icmp slt i64 %229, %172, !dbg !1036
  br i1 %230, label %233, label %231, !dbg !1037

; <label>:231:                                    ; preds = %228
  %232 = mul nsw i64 %225, %172, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %232, metadata !976, metadata !DIExpression()) #10, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %172, metadata !976, metadata !DIExpression()) #10, !dbg !1003
  br label %236

; <label>:233:                                    ; preds = %228, %220
  %234 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1039
  %235 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1041
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %234, i64 %172, i64 %225, i8* %235) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %172, metadata !976, metadata !DIExpression()) #10, !dbg !1003
  br label %296

; <label>:236:                                    ; preds = %207, %231, %218
  %237 = phi i64 [ %172, %218 ], [ %232, %231 ], [ %172, %207 ]
  call void @llvm.dbg.value(metadata i64 %237, metadata !976, metadata !DIExpression()) #10, !dbg !1003
  br i1 %179, label %285, label %238, !dbg !1043

; <label>:238:                                    ; preds = %236
  br i1 %182, label %257, label %239, !dbg !1044

; <label>:239:                                    ; preds = %238
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !979, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !903, metadata !DIExpression()) #10, !dbg !1045
  %240 = load i32, i32* %184, align 8, !dbg !1048, !tbaa !913
  %241 = trunc i32 %240 to i16, !dbg !1049
  %242 = and i16 %241, -4096, !dbg !1049
  switch i16 %242, label %249 [
    i16 -32768, label %243
    i16 -24576, label %243
  ], !dbg !1049

; <label>:243:                                    ; preds = %239, %239
  %244 = load i64, i64* %185, align 8, !dbg !1050, !tbaa !934
  call void @llvm.dbg.value(metadata i64 %244, metadata !988, metadata !DIExpression()) #10, !dbg !1052
  %245 = icmp slt i64 %244, 0, !dbg !1053
  br i1 %245, label %246, label %257, !dbg !1055

; <label>:246:                                    ; preds = %243
  %247 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1056
  %248 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1058
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247, i8* %248) #10, !dbg !1059
  br label %296, !dbg !1060

; <label>:249:                                    ; preds = %239
  %250 = call i64 @lseek(i32 %191, i64 0, i32 2) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %250, metadata !988, metadata !DIExpression()) #10, !dbg !1052
  %251 = icmp slt i64 %250, 0, !dbg !1063
  br i1 %251, label %252, label %257, !dbg !1065

; <label>:252:                                    ; preds = %249
  %253 = tail call i32* @__errno_location() #16, !dbg !1066
  %254 = load i32, i32* %253, align 4, !dbg !1066, !tbaa !846
  %255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1068
  %256 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1069
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %254, i8* %255, i8* %256) #10, !dbg !1070
  br label %296, !dbg !1071

; <label>:257:                                    ; preds = %249, %243, %238
  %258 = phi i64 [ %171, %238 ], [ %250, %249 ], [ %244, %243 ]
  call void @llvm.dbg.value(metadata i64 %258, metadata !985, metadata !DIExpression()) #10, !dbg !1072
  switch i32 %11, label %277 [
    i32 2, label %259
    i32 3, label %262
    i32 4, label %265
    i32 5, label %268
  ], !dbg !1073

; <label>:259:                                    ; preds = %257
  %260 = icmp ugt i64 %258, %237, !dbg !1074
  %261 = select i1 %260, i64 %258, i64 %237, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %261, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  br label %285, !dbg !1076

; <label>:262:                                    ; preds = %257
  %263 = icmp ult i64 %258, %237, !dbg !1077
  %264 = select i1 %263, i64 %258, i64 %237, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %264, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  br label %285, !dbg !1078

; <label>:265:                                    ; preds = %257
  %266 = urem i64 %258, %237, !dbg !1079
  %267 = sub i64 %258, %266, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %267, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  br label %285, !dbg !1080

; <label>:268:                                    ; preds = %257
  %269 = add i64 %258, %237, !dbg !1081
  %270 = add i64 %269, -1, !dbg !1082
  %271 = urem i64 %270, %237, !dbg !1083
  %272 = sub i64 %270, %271, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %272, metadata !991, metadata !DIExpression()) #10, !dbg !1084
  %273 = icmp slt i64 %272, 0, !dbg !1085
  br i1 %273, label %274, label %285, !dbg !1087

; <label>:274:                                    ; preds = %268
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1088
  %276 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1090
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %275, i8* %276) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %272, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  br label %296

; <label>:277:                                    ; preds = %257
  %278 = sub nsw i64 9223372036854775807, %258, !dbg !1092
  %279 = icmp sgt i64 %237, %278, !dbg !1095
  br i1 %279, label %280, label %283, !dbg !1096

; <label>:280:                                    ; preds = %277
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1097
  %282 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1099
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %281, i8* %282) #10, !dbg !1100
  br label %296, !dbg !1101

; <label>:283:                                    ; preds = %277
  %284 = add i64 %258, %237, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %284, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  br label %285

; <label>:285:                                    ; preds = %283, %268, %265, %262, %259, %236
  %286 = phi i64 [ %237, %236 ], [ %284, %283 ], [ %267, %265 ], [ %264, %262 ], [ %261, %259 ], [ %272, %268 ], !dbg !1103
  call void @llvm.dbg.value(metadata i64 %286, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  %287 = icmp sgt i64 %286, 0, !dbg !1104
  %288 = select i1 %287, i64 %286, i64 0, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %288, metadata !980, metadata !DIExpression()) #10, !dbg !1075
  %289 = call i32 @ftruncate(i32 %191, i64 %288) #10, !dbg !1105
  %290 = icmp eq i32 %289, -1, !dbg !1107
  br i1 %290, label %291, label %296, !dbg !1108

; <label>:291:                                    ; preds = %285
  %292 = tail call i32* @__errno_location() #16, !dbg !1109
  %293 = load i32, i32* %292, align 4, !dbg !1109, !tbaa !846
  %294 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1111
  %295 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1112
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %293, i8* %294, i8* %295, i64 %288) #10, !dbg !1113
  br label %296, !dbg !1114

; <label>:296:                                    ; preds = %213, %233, %246, %252, %274, %280, %285, %291
  %297 = phi i8 [ 1, %213 ], [ 1, %291 ], [ 1, %233 ], [ 0, %285 ], [ 1, %274 ], [ 1, %246 ], [ 1, %252 ], [ 1, %280 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %178) #10, !dbg !1115
  %298 = and i8 %189, 1, !dbg !1116
  %299 = or i8 %297, %298, !dbg !1116
  call void @llvm.dbg.value(metadata i8 %299, metadata !720, metadata !DIExpression()), !dbg !779
  %300 = call i32 @close(i32 %191) #10, !dbg !1117
  %301 = icmp eq i32 %300, 0, !dbg !1119
  br i1 %301, label %203, label %302, !dbg !1120

; <label>:302:                                    ; preds = %296
  %303 = tail call i32* @__errno_location() #16, !dbg !1121
  %304 = load i32, i32* %303, align 4, !dbg !1121, !tbaa !846
  %305 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1123
  %306 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1124
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %304, i8* %305, i8* %306) #10, !dbg !1125
  call void @llvm.dbg.value(metadata i8 1, metadata !720, metadata !DIExpression()), !dbg !779
  br label %203, !dbg !1126

; <label>:307:                                    ; preds = %203, %170
  %308 = phi i8 [ 0, %170 ], [ %204, %203 ], !dbg !1127
  call void @llvm.dbg.value(metadata i8 %308, metadata !720, metadata !DIExpression()), !dbg !779
  %309 = and i8 %308, 1, !dbg !1128
  %310 = zext i8 %309 to i32, !dbg !1128
  ret i32 %310, !dbg !1129
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i8* %0, i8** @file_name, align 8, !dbg !1134, !tbaa !657
  ret void, !dbg !1135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1136 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1142, !tbaa !1143
  ret void, !dbg !1145
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1146 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1151, !tbaa !657
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1152
  %3 = icmp eq i32 %2, 0, !dbg !1153
  br i1 %3, label %22, label %4, !dbg !1154

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1155, !tbaa !1143, !range !1156
  %6 = icmp eq i8 %5, 0, !dbg !1155
  br i1 %6, label %11, label %7, !dbg !1157

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #16, !dbg !1158
  %9 = load i32, i32* %8, align 4, !dbg !1158, !tbaa !846
  %10 = icmp eq i32 %9, 32, !dbg !1159
  br i1 %10, label %22, label %11, !dbg !1160

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %12, metadata !1148, metadata !DIExpression()), !dbg !1162
  %13 = load i8*, i8** @file_name, align 8, !dbg !1163, !tbaa !657
  %14 = icmp eq i8* %13, null, !dbg !1163
  %15 = tail call i32* @__errno_location() #16, !dbg !1165
  %16 = load i32, i32* %15, align 4, !dbg !1165, !tbaa !846
  br i1 %14, label %19, label %17, !dbg !1166

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1167
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1168
  br label %20, !dbg !1168

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.65, i64 0, i64 0), i8* %12) #10, !dbg !1169
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1170, !tbaa !846
  tail call void @_exit(i32 %21) #15, !dbg !1171
  unreachable, !dbg !1171

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1172, !tbaa !657
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1174
  %25 = icmp eq i32 %24, 0, !dbg !1175
  br i1 %25, label %28, label %26, !dbg !1176

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1177, !tbaa !846
  tail call void @_exit(i32 %27) #15, !dbg !1178
  unreachable, !dbg !1178

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1179
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1180 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1182, metadata !DIExpression()), !dbg !1185
  %2 = icmp eq i8* %0, null, !dbg !1186
  br i1 %2, label %3, label %6, !dbg !1188

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1189, !tbaa !657
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1191
  tail call void @abort() #15, !dbg !1192
  unreachable, !dbg !1192

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %7, metadata !1183, metadata !DIExpression()), !dbg !1194
  %8 = icmp eq i8* %7, null, !dbg !1195
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1196
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %10, metadata !1184, metadata !DIExpression()), !dbg !1198
  %11 = ptrtoint i8* %10 to i64, !dbg !1199
  %12 = ptrtoint i8* %0 to i64, !dbg !1199
  %13 = sub i64 %11, %12, !dbg !1199
  %14 = icmp sgt i64 %13, 6, !dbg !1201
  br i1 %14, label %15, label %24, !dbg !1202

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1203
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.73, i64 0, i64 0), i64 7) #14, !dbg !1204
  %18 = icmp eq i32 %17, 0, !dbg !1205
  br i1 %18, label %19, label %24, !dbg !1206

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1182, metadata !DIExpression()), !dbg !1185
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i64 3) #14, !dbg !1207
  %21 = icmp eq i32 %20, 0, !dbg !1210
  br i1 %21, label %22, label %24, !dbg !1211

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %23, metadata !1182, metadata !DIExpression()), !dbg !1185
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1214, !tbaa !657
  br label %24, !dbg !1215

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1182, metadata !DIExpression()), !dbg !1185
  store i8* %25, i8** @program_name, align 8, !dbg !1216, !tbaa !657
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1217, !tbaa !657
  ret void, !dbg !1218
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1219 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1224, metadata !DIExpression()), !dbg !1227
  %2 = tail call i32* @__errno_location() #16, !dbg !1228
  %3 = load i32, i32* %2, align 4, !dbg !1228, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %3, metadata !1225, metadata !DIExpression()), !dbg !1229
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1230
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1230
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1230
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1231
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1226, metadata !DIExpression()), !dbg !1232
  store i32 %3, i32* %2, align 4, !dbg !1233, !tbaa !846
  ret %struct.quoting_options* %8, !dbg !1234
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1241, metadata !DIExpression()), !dbg !1242
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1243
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1243
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1244
  %5 = load i32, i32* %4, align 8, !dbg !1244, !tbaa !1245
  ret i32 %5, !dbg !1247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1248 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1252, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %1, metadata !1253, metadata !DIExpression()), !dbg !1255
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1256
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1256
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1257
  store i32 %1, i32* %5, align 8, !dbg !1258, !tbaa !1245
  ret void, !dbg !1259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1260 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1264, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %1, metadata !1265, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %2, metadata !1266, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i8 %1, metadata !1267, metadata !DIExpression()), !dbg !1276
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1277
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1277
  %6 = lshr i8 %1, 5, !dbg !1278
  %7 = zext i8 %6 to i64, !dbg !1278
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1279
  call void @llvm.dbg.value(metadata i32* %8, metadata !1269, metadata !DIExpression()), !dbg !1280
  %9 = and i8 %1, 31, !dbg !1281
  %10 = zext i8 %9 to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %10, metadata !1271, metadata !DIExpression()), !dbg !1282
  %11 = load i32, i32* %8, align 4, !dbg !1283, !tbaa !846
  %12 = lshr i32 %11, %10, !dbg !1284
  %13 = and i32 %12, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %13, metadata !1272, metadata !DIExpression()), !dbg !1286
  %14 = and i32 %2, 1, !dbg !1287
  %15 = xor i32 %13, %14, !dbg !1288
  %16 = shl i32 %15, %10, !dbg !1289
  %17 = xor i32 %16, %11, !dbg !1290
  store i32 %17, i32* %8, align 4, !dbg !1290, !tbaa !846
  ret i32 %13, !dbg !1291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1292 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1296, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i32 %1, metadata !1297, metadata !DIExpression()), !dbg !1300
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1301
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1296, metadata !DIExpression()), !dbg !1299
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1304
  %6 = load i32, i32* %5, align 4, !dbg !1304, !tbaa !1305
  call void @llvm.dbg.value(metadata i32 %6, metadata !1298, metadata !DIExpression()), !dbg !1306
  store i32 %1, i32* %5, align 4, !dbg !1307, !tbaa !1305
  ret i32 %6, !dbg !1308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1309 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1313, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %1, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %2, metadata !1315, metadata !DIExpression()), !dbg !1318
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1319
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1321
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1313, metadata !DIExpression()), !dbg !1316
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1322
  store i32 10, i32* %6, align 8, !dbg !1323, !tbaa !1245
  %7 = icmp ne i8* %1, null, !dbg !1324
  %8 = icmp ne i8* %2, null, !dbg !1326
  %9 = and i1 %7, %8, !dbg !1327
  br i1 %9, label %11, label %10, !dbg !1327

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1328
  unreachable, !dbg !1328

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1329
  store i8* %1, i8** %12, align 8, !dbg !1330, !tbaa !1331
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1332
  store i8* %2, i8** %13, align 8, !dbg !1333, !tbaa !1334
  ret void, !dbg !1335
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1340, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %1, metadata !1341, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %2, metadata !1342, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %3, metadata !1343, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1344, metadata !DIExpression()), !dbg !1352
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1353
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1345, metadata !DIExpression()), !dbg !1354
  %8 = tail call i32* @__errno_location() #16, !dbg !1355
  %9 = load i32, i32* %8, align 4, !dbg !1355, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %9, metadata !1346, metadata !DIExpression()), !dbg !1356
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1357
  %11 = load i32, i32* %10, align 8, !dbg !1357, !tbaa !1245
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1358
  %13 = load i32, i32* %12, align 4, !dbg !1358, !tbaa !1305
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1359
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1360
  %16 = load i8*, i8** %15, align 8, !dbg !1360, !tbaa !1331
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1361
  %18 = load i8*, i8** %17, align 8, !dbg !1361, !tbaa !1334
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %19, metadata !1347, metadata !DIExpression()), !dbg !1363
  store i32 %9, i32* %8, align 4, !dbg !1364, !tbaa !846
  ret i64 %19, !dbg !1365
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1366 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1372, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %1, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %2, metadata !1374, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %3, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %4, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %5, metadata !1377, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i32* %6, metadata !1378, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %7, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %8, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 0, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* null, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1385, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 0, metadata !1386, metadata !DIExpression()), !dbg !1449
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1450
  %14 = icmp eq i64 %13, 1, !dbg !1451
  %15 = lshr i32 %5, 1, !dbg !1452
  %16 = trunc i32 %15 to i8, !dbg !1452
  %17 = and i8 %16, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i8 %17, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 0, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 1, metadata !1391, metadata !DIExpression()), !dbg !1455
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1456

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1446
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1447
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1448
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1449
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1457
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1453
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1454
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1455
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %39, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %38, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %37, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %36, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %35, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 %34, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %33, metadata !1385, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %32, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %31, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %30, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %29, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %28, metadata !1376, metadata !DIExpression()), !dbg !1440
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
  ], !dbg !1459

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %36, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 5, metadata !1376, metadata !DIExpression()), !dbg !1440
  br label %93, !dbg !1460

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 5, metadata !1376, metadata !DIExpression()), !dbg !1440
  %43 = and i8 %36, 1, !dbg !1461
  %44 = icmp eq i8 %43, 0, !dbg !1461
  br i1 %44, label %45, label %93, !dbg !1460

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1463
  br i1 %46, label %93, label %47, !dbg !1466

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1463, !tbaa !796
  br label %93, !dbg !1463

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 %28), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %49, metadata !1379, metadata !DIExpression()), !dbg !1443
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 %28), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %50, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %51, !dbg !1472

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %52, metadata !1379, metadata !DIExpression()), !dbg !1443
  %54 = and i8 %36, 1, !dbg !1473
  %55 = icmp eq i8 %54, 0, !dbg !1473
  br i1 %55, label %56, label %71, !dbg !1475

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()), !dbg !1445
  %57 = load i8, i8* %52, align 1, !dbg !1476, !tbaa !796
  %58 = icmp eq i8 %57, 0, !dbg !1479
  br i1 %58, label %71, label %59, !dbg !1479

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %62, metadata !1382, metadata !DIExpression()), !dbg !1445
  %63 = icmp ult i64 %62, %40, !dbg !1480
  br i1 %63, label %64, label %66, !dbg !1483

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1480
  store i8 %60, i8* %65, align 1, !dbg !1480, !tbaa !796
  br label %66, !dbg !1480

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1483
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1484
  call void @llvm.dbg.value(metadata i8* %68, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %67, metadata !1382, metadata !DIExpression()), !dbg !1445
  %69 = load i8, i8* %68, align 1, !dbg !1476, !tbaa !796
  %70 = icmp eq i8 %69, 0, !dbg !1479
  br i1 %70, label %71, label %59, !dbg !1479, !llvm.loop !1485

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1445
  call void @llvm.dbg.value(metadata i64 %72, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %53, metadata !1384, metadata !DIExpression()), !dbg !1447
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %73, metadata !1385, metadata !DIExpression()), !dbg !1448
  br label %93, !dbg !1488

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1386, metadata !DIExpression()), !dbg !1449
  br label %75, !dbg !1489

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1457
  call void @llvm.dbg.value(metadata i8 %76, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 1, metadata !1388, metadata !DIExpression()), !dbg !1452
  br label %77, !dbg !1490

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1449
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1457
  call void @llvm.dbg.value(metadata i8 %79, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %78, metadata !1386, metadata !DIExpression()), !dbg !1449
  %80 = and i8 %79, 1, !dbg !1491
  %81 = icmp eq i8 %80, 0, !dbg !1491
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1493
  br label %83, !dbg !1493

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1494
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1452
  call void @llvm.dbg.value(metadata i8 %85, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %84, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  %86 = and i8 %85, 1, !dbg !1495
  %87 = icmp eq i8 %86, 0, !dbg !1495
  br i1 %87, label %88, label %93, !dbg !1497

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1498
  br i1 %89, label %93, label %90, !dbg !1501

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1498, !tbaa !796
  br label %93, !dbg !1498

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1388, metadata !DIExpression()), !dbg !1452
  br label %93, !dbg !1502

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1503
  unreachable, !dbg !1503

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1445
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %41 ], !dbg !1457
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1457
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1457
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %101, metadata !1388, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %99, metadata !1385, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %97, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 0, metadata !1381, metadata !DIExpression()), !dbg !1505
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
  br label %121, !dbg !1506

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1507
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1445
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1446
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1453
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1454
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1455
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %125, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %122, metadata !1381, metadata !DIExpression()), !dbg !1505
  %130 = icmp eq i64 %125, -1, !dbg !1508
  br i1 %130, label %131, label %135, !dbg !1509

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1510
  %133 = load i8, i8* %132, align 1, !dbg !1510, !tbaa !796
  %134 = icmp eq i8 %133, 0, !dbg !1511
  br i1 %134, label %617, label %137, !dbg !1512

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1513
  br i1 %136, label %617, label %137, !dbg !1512

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8 0, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 0, metadata !1399, metadata !DIExpression()), !dbg !1516
  br i1 %107, label %138, label %153, !dbg !1517

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1519
  %140 = and i1 %108, %130, !dbg !1520
  br i1 %140, label %141, label %143, !dbg !1520

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %142, metadata !1375, metadata !DIExpression()), !dbg !1439
  br label %143, !dbg !1522

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1375, metadata !DIExpression()), !dbg !1439
  %145 = icmp ugt i64 %139, %144, !dbg !1523
  br i1 %145, label %153, label %146, !dbg !1524

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1525
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1526
  %149 = icmp ne i32 %148, 0, !dbg !1527
  %150 = or i1 %149, %110, !dbg !1528
  %151 = xor i1 %149, true, !dbg !1528
  %152 = zext i1 %151 to i8, !dbg !1528
  br i1 %150, label %153, label %661, !dbg !1528

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1529
  call void @llvm.dbg.value(metadata i8 %155, metadata !1397, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %154, metadata !1375, metadata !DIExpression()), !dbg !1439
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1530
  %157 = load i8, i8* %156, align 1, !dbg !1530, !tbaa !796
  call void @llvm.dbg.value(metadata i8 %157, metadata !1392, metadata !DIExpression()), !dbg !1531
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
  ], !dbg !1532

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1533

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1534

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1398, metadata !DIExpression()), !dbg !1515
  %161 = and i8 %126, 1, !dbg !1538
  %162 = icmp eq i8 %161, 0, !dbg !1538
  %163 = and i1 %114, %162, !dbg !1538
  br i1 %163, label %164, label %180, !dbg !1538

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1540
  br i1 %165, label %166, label %168, !dbg !1544

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1540
  store i8 39, i8* %167, align 1, !dbg !1540, !tbaa !796
  br label %168, !dbg !1540

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %169, metadata !1382, metadata !DIExpression()), !dbg !1445
  %170 = icmp ult i64 %169, %129, !dbg !1545
  br i1 %170, label %171, label %173, !dbg !1548

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1545
  store i8 36, i8* %172, align 1, !dbg !1545, !tbaa !796
  br label %173, !dbg !1545

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %174, metadata !1382, metadata !DIExpression()), !dbg !1445
  %175 = icmp ult i64 %174, %129, !dbg !1549
  br i1 %175, label %176, label %178, !dbg !1552

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1549
  store i8 39, i8* %177, align 1, !dbg !1549, !tbaa !796
  br label %178, !dbg !1549

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %179, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %180, !dbg !1553

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1504
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %182, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %181, metadata !1382, metadata !DIExpression()), !dbg !1445
  %183 = icmp ult i64 %181, %129, !dbg !1554
  br i1 %183, label %184, label %186, !dbg !1557

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1554
  store i8 92, i8* %185, align 1, !dbg !1554, !tbaa !796
  br label %186, !dbg !1554

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %187, metadata !1382, metadata !DIExpression()), !dbg !1445
  br i1 %104, label %188, label %478, !dbg !1558

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1560
  %190 = icmp ult i64 %189, %154, !dbg !1561
  br i1 %190, label %191, label %467, !dbg !1562

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1563
  %193 = load i8, i8* %192, align 1, !dbg !1563, !tbaa !796
  %194 = add i8 %193, -48, !dbg !1564
  %195 = icmp ult i8 %194, 10, !dbg !1564
  br i1 %195, label %196, label %467, !dbg !1564

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1565
  br i1 %197, label %198, label %200, !dbg !1569

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1565
  store i8 48, i8* %199, align 1, !dbg !1565, !tbaa !796
  br label %200, !dbg !1565

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %201, metadata !1382, metadata !DIExpression()), !dbg !1445
  %202 = icmp ult i64 %201, %129, !dbg !1570
  br i1 %202, label %203, label %205, !dbg !1573

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1570
  store i8 48, i8* %204, align 1, !dbg !1570, !tbaa !796
  br label %205, !dbg !1570

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %206, metadata !1382, metadata !DIExpression()), !dbg !1445
  br label %467, !dbg !1574

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1575

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1576

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1577

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1579

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1581
  %213 = icmp ult i64 %212, %154, !dbg !1582
  br i1 %213, label %214, label %467, !dbg !1583

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1584
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1585
  %217 = load i8, i8* %216, align 1, !dbg !1585, !tbaa !796
  %218 = icmp eq i8 %217, 63, !dbg !1586
  br i1 %218, label %219, label %467, !dbg !1587

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1588
  %221 = load i8, i8* %220, align 1, !dbg !1588, !tbaa !796
  %222 = sext i8 %221 to i32, !dbg !1588
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
  ], !dbg !1589

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1590

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %212, metadata !1381, metadata !DIExpression()), !dbg !1505
  %225 = icmp ult i64 %123, %129, !dbg !1592
  br i1 %225, label %226, label %228, !dbg !1595

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1592
  store i8 63, i8* %227, align 1, !dbg !1592, !tbaa !796
  br label %228, !dbg !1592

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %229, metadata !1382, metadata !DIExpression()), !dbg !1445
  %230 = icmp ult i64 %229, %129, !dbg !1596
  br i1 %230, label %231, label %233, !dbg !1599

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1596
  store i8 34, i8* %232, align 1, !dbg !1596, !tbaa !796
  br label %233, !dbg !1596

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %234, metadata !1382, metadata !DIExpression()), !dbg !1445
  %235 = icmp ult i64 %234, %129, !dbg !1600
  br i1 %235, label %236, label %238, !dbg !1603

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1600
  store i8 34, i8* %237, align 1, !dbg !1600, !tbaa !796
  br label %238, !dbg !1600

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %239, metadata !1382, metadata !DIExpression()), !dbg !1445
  %240 = icmp ult i64 %239, %129, !dbg !1604
  br i1 %240, label %241, label %243, !dbg !1607

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1604
  store i8 63, i8* %242, align 1, !dbg !1604, !tbaa !796
  br label %243, !dbg !1604

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %244, metadata !1382, metadata !DIExpression()), !dbg !1445
  br label %467, !dbg !1608

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1396, metadata !DIExpression()), !dbg !1609
  br label %255, !dbg !1610

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1396, metadata !DIExpression()), !dbg !1609
  br label %255, !dbg !1611

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1396, metadata !DIExpression()), !dbg !1609
  br label %253, !dbg !1612

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1396, metadata !DIExpression()), !dbg !1609
  br label %253, !dbg !1613

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1396, metadata !DIExpression()), !dbg !1609
  br label %255, !dbg !1614

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1396, metadata !DIExpression()), !dbg !1609
  br i1 %114, label %251, label %252, !dbg !1615

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1616

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1619

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %254, metadata !1396, metadata !DIExpression()), !dbg !1609
  br i1 %113, label %255, label %661, !dbg !1622

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %256, metadata !1396, metadata !DIExpression()), !dbg !1609
  br i1 %103, label %524, label %478, !dbg !1624

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1625
  br i1 %258, label %259, label %264, !dbg !1627

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1628, !tbaa !796
  %261 = icmp ne i8 %260, 0, !dbg !1629
  %262 = icmp ne i64 %122, 0, !dbg !1630
  %263 = or i1 %262, %261, !dbg !1632
  br i1 %263, label %467, label %270, !dbg !1632

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1633
  %266 = icmp ne i64 %122, 0, !dbg !1630
  %267 = or i1 %266, %265, !dbg !1627
  br i1 %267, label %467, label %270, !dbg !1627

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1630
  br i1 %269, label %270, label %467, !dbg !1634

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1399, metadata !DIExpression()), !dbg !1516
  br label %271, !dbg !1635

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %272, metadata !1399, metadata !DIExpression()), !dbg !1516
  br i1 %113, label %467, label %661, !dbg !1636

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 1, metadata !1399, metadata !DIExpression()), !dbg !1516
  br i1 %114, label %274, label %467, !dbg !1638

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1639

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1642
  %277 = icmp ne i64 %124, 0, !dbg !1644
  %278 = or i1 %277, %276, !dbg !1645
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1645
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %280, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %279, metadata !1383, metadata !DIExpression()), !dbg !1446
  %281 = icmp ult i64 %123, %280, !dbg !1646
  br i1 %281, label %282, label %284, !dbg !1649

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1646
  store i8 39, i8* %283, align 1, !dbg !1646, !tbaa !796
  br label %284, !dbg !1646

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %285, metadata !1382, metadata !DIExpression()), !dbg !1445
  %286 = icmp ult i64 %285, %280, !dbg !1650
  br i1 %286, label %287, label %289, !dbg !1653

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1650
  store i8 92, i8* %288, align 1, !dbg !1650, !tbaa !796
  br label %289, !dbg !1650

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %290, metadata !1382, metadata !DIExpression()), !dbg !1445
  %291 = icmp ult i64 %290, %280, !dbg !1654
  br i1 %291, label %292, label %294, !dbg !1657

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1654
  store i8 39, i8* %293, align 1, !dbg !1654, !tbaa !796
  br label %294, !dbg !1654

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %295, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 0, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %467, !dbg !1658

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1659

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1400, metadata !DIExpression()), !dbg !1660
  %298 = tail call i16** @__ctype_b_loc() #16, !dbg !1661
  %299 = load i16*, i16** %298, align 8, !dbg !1661, !tbaa !657
  %300 = zext i8 %157 to i64, !dbg !1661
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1661
  %302 = load i16, i16* %301, align 2, !dbg !1661, !tbaa !797
  %303 = lshr i16 %302, 14, !dbg !1663
  %304 = trunc i16 %303 to i8, !dbg !1663
  %305 = and i8 %304, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %305, metadata !1403, metadata !DIExpression()), !dbg !1664
  br label %359, !dbg !1665

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1666
  store i64 0, i64* %10, align 8, !dbg !1667
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1664
  %307 = icmp eq i64 %154, -1, !dbg !1668
  br i1 %307, label %308, label %310, !dbg !1670

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %309, metadata !1375, metadata !DIExpression()), !dbg !1439
  br label %310, !dbg !1672

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  br label %312, !dbg !1674

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1675
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %314, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1677
  %315 = add i64 %313, %122, !dbg !1678
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1679
  %317 = sub i64 %311, %315, !dbg !1680
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1404, metadata !DIExpression(DW_OP_deref)), !dbg !1681
  call void @llvm.dbg.value(metadata i32* %12, metadata !1422, metadata !DIExpression(DW_OP_deref)), !dbg !1682
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %318, metadata !1425, metadata !DIExpression()), !dbg !1684
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1685

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  %320 = icmp ugt i64 %311, %315, !dbg !1686
  br i1 %320, label %321, label %344, !dbg !1688

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1400, metadata !DIExpression()), !dbg !1660
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1689
  %325 = load i8, i8* %324, align 1, !dbg !1689, !tbaa !796
  %326 = icmp eq i8 %325, 0, !dbg !1688
  br i1 %326, label %344, label %327, !dbg !1690

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %328, metadata !1400, metadata !DIExpression()), !dbg !1660
  %329 = add i64 %328, %122, !dbg !1692
  %330 = icmp ult i64 %329, %311, !dbg !1686
  br i1 %330, label %321, label %344, !dbg !1688, !llvm.loop !1693

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1694
  %333 = and i1 %116, %332, !dbg !1697
  call void @llvm.dbg.value(metadata i64 1, metadata !1426, metadata !DIExpression()), !dbg !1698
  br i1 %333, label %334, label %347, !dbg !1697

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1426, metadata !DIExpression()), !dbg !1698
  %336 = add i64 %335, %315, !dbg !1699
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1700
  %338 = load i8, i8* %337, align 1, !dbg !1700, !tbaa !796
  %339 = sext i8 %338 to i32, !dbg !1700
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1701

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %341, metadata !1426, metadata !DIExpression()), !dbg !1698
  %342 = icmp ult i64 %341, %318, !dbg !1694
  br i1 %342, label %334, label %347, !dbg !1703, !llvm.loop !1704

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %314, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %313, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %314, metadata !1403, metadata !DIExpression()), !dbg !1664
  br label %344, !dbg !1706

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %352, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1706
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1707, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %348, metadata !1422, metadata !DIExpression()), !dbg !1682
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1709
  %350 = icmp eq i32 %349, 0, !dbg !1709
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %351, metadata !1403, metadata !DIExpression()), !dbg !1664
  %352 = add i64 %318, %313, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %352, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %351, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %352, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1706
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1404, metadata !DIExpression(DW_OP_deref)), !dbg !1681
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1712
  %354 = icmp eq i32 %353, 0, !dbg !1713
  br i1 %354, label %312, label %355, !dbg !1714, !llvm.loop !1715

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1717
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %94, metadata !1376, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %100, metadata !1386, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %311, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 %351, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %352, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1706
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1717
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1718
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1719
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1719
  call void @llvm.dbg.value(metadata i8 %362, metadata !1403, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %361, metadata !1400, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %360, metadata !1375, metadata !DIExpression()), !dbg !1439
  %363 = and i8 %362, 1, !dbg !1720
  %364 = icmp ne i8 %363, 0, !dbg !1720
  call void @llvm.dbg.value(metadata i8 %363, metadata !1399, metadata !DIExpression()), !dbg !1516
  %365 = icmp ult i64 %361, 2, !dbg !1721
  %366 = or i1 %364, %115, !dbg !1722
  %367 = and i1 %365, %366, !dbg !1723
  br i1 %367, label %467, label %368, !dbg !1723

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %369, metadata !1433, metadata !DIExpression()), !dbg !1725
  br label %370, !dbg !1726

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1727
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1731
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1453
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1727
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1733
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1515
  call void @llvm.dbg.value(metadata i8 %376, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %375, metadata !1397, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8 %374, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %373, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %372, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %371, metadata !1381, metadata !DIExpression()), !dbg !1505
  br i1 %366, label %423, label %377, !dbg !1737

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1738

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1398, metadata !DIExpression()), !dbg !1515
  %379 = and i8 %373, 1, !dbg !1741
  %380 = icmp eq i8 %379, 0, !dbg !1741
  %381 = and i1 %114, %380, !dbg !1741
  br i1 %381, label %382, label %398, !dbg !1741

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1743
  br i1 %383, label %384, label %386, !dbg !1747

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1743
  store i8 39, i8* %385, align 1, !dbg !1743, !tbaa !796
  br label %386, !dbg !1743

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %387, metadata !1382, metadata !DIExpression()), !dbg !1445
  %388 = icmp ult i64 %387, %129, !dbg !1748
  br i1 %388, label %389, label %391, !dbg !1751

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1748
  store i8 36, i8* %390, align 1, !dbg !1748, !tbaa !796
  br label %391, !dbg !1748

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %392, metadata !1382, metadata !DIExpression()), !dbg !1445
  %393 = icmp ult i64 %392, %129, !dbg !1752
  br i1 %393, label %394, label %396, !dbg !1755

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1752
  store i8 39, i8* %395, align 1, !dbg !1752, !tbaa !796
  br label %396, !dbg !1752

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %397, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %398, !dbg !1756

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1504
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %400, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %399, metadata !1382, metadata !DIExpression()), !dbg !1445
  %401 = icmp ult i64 %399, %129, !dbg !1757
  br i1 %401, label %402, label %404, !dbg !1760

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1757
  store i8 92, i8* %403, align 1, !dbg !1757, !tbaa !796
  br label %404, !dbg !1757

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %405, metadata !1382, metadata !DIExpression()), !dbg !1445
  %406 = icmp ult i64 %405, %129, !dbg !1761
  br i1 %406, label %407, label %411, !dbg !1764

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1761
  %409 = or i8 %408, 48, !dbg !1761
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1761
  store i8 %409, i8* %410, align 1, !dbg !1761, !tbaa !796
  br label %411, !dbg !1761

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %412, metadata !1382, metadata !DIExpression()), !dbg !1445
  %413 = icmp ult i64 %412, %129, !dbg !1765
  br i1 %413, label %414, label %419, !dbg !1768

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1765
  %416 = and i8 %415, 7, !dbg !1765
  %417 = or i8 %416, 48, !dbg !1765
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1765
  store i8 %417, i8* %418, align 1, !dbg !1765, !tbaa !796
  br label %419, !dbg !1765

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %420, metadata !1382, metadata !DIExpression()), !dbg !1445
  %421 = and i8 %374, 7, !dbg !1769
  %422 = or i8 %421, 48, !dbg !1770
  call void @llvm.dbg.value(metadata i8 %422, metadata !1392, metadata !DIExpression()), !dbg !1531
  br label %432, !dbg !1771

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1772
  %425 = icmp eq i8 %424, 0, !dbg !1772
  br i1 %425, label %432, label %426, !dbg !1773

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1774
  br i1 %427, label %428, label %430, !dbg !1777

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1774
  store i8 92, i8* %429, align 1, !dbg !1774, !tbaa !796
  br label %430, !dbg !1774

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %431, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1514
  br label %432, !dbg !1778

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1779
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1453
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1780
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1781
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1783
  call void @llvm.dbg.value(metadata i8 %437, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %436, metadata !1397, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8 %435, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %434, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %433, metadata !1382, metadata !DIExpression()), !dbg !1445
  %438 = add i64 %371, 1, !dbg !1784
  %439 = icmp ugt i64 %369, %438, !dbg !1786
  br i1 %439, label %440, label %562, !dbg !1787

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1788
  %442 = icmp ne i8 %441, 0, !dbg !1788
  %443 = and i8 %437, 1, !dbg !1788
  %444 = icmp eq i8 %443, 0, !dbg !1788
  %445 = and i1 %442, %444, !dbg !1788
  br i1 %445, label %446, label %457, !dbg !1788

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1791
  br i1 %447, label %448, label %450, !dbg !1795

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1791
  store i8 39, i8* %449, align 1, !dbg !1791, !tbaa !796
  br label %450, !dbg !1791

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %451, metadata !1382, metadata !DIExpression()), !dbg !1445
  %452 = icmp ult i64 %451, %129, !dbg !1796
  br i1 %452, label %453, label %455, !dbg !1799

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1796
  store i8 39, i8* %454, align 1, !dbg !1796, !tbaa !796
  br label %455, !dbg !1796

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %456, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 0, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %457, !dbg !1800

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1801
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %459, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %458, metadata !1382, metadata !DIExpression()), !dbg !1445
  %460 = icmp ult i64 %458, %129, !dbg !1802
  br i1 %460, label %461, label %463, !dbg !1804

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1802
  store i8 %435, i8* %462, align 1, !dbg !1802, !tbaa !796
  br label %463, !dbg !1802

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %464, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %438, metadata !1381, metadata !DIExpression()), !dbg !1505
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1805
  %466 = load i8, i8* %465, align 1, !dbg !1805, !tbaa !796
  call void @llvm.dbg.value(metadata i8 %466, metadata !1392, metadata !DIExpression()), !dbg !1531
  br label %370, !dbg !1806, !llvm.loop !1807

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1810
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1504
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1446
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1811
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1504
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1504
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1529
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1529
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1529
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %476, metadata !1399, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8 %475, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %155, metadata !1397, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8 %474, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %473, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %472, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %471, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %470, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %469, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %468, metadata !1381, metadata !DIExpression()), !dbg !1505
  br i1 %105, label %489, label %478, !dbg !1812

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
  br i1 %112, label %490, label %512, !dbg !1814

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1815

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
  %501 = lshr i8 %494, 5, !dbg !1816
  %502 = zext i8 %501 to i64, !dbg !1816
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1817
  %504 = load i32, i32* %503, align 4, !dbg !1817, !tbaa !846
  %505 = and i8 %494, 31, !dbg !1818
  %506 = zext i8 %505 to i32, !dbg !1818
  %507 = shl i32 1, %506, !dbg !1819
  %508 = and i32 %504, %507, !dbg !1819
  %509 = icmp eq i32 %508, 0, !dbg !1819
  %510 = icmp eq i8 %155, 0, !dbg !1820
  %511 = and i1 %510, %509, !dbg !1821
  br i1 %511, label %562, label %524, !dbg !1821

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
  %523 = icmp eq i8 %155, 0, !dbg !1820
  br i1 %523, label %562, label %524, !dbg !1822

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1823
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1504
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1446
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1811
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1453
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1454
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1824
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1529
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %532, metadata !1399, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8 %531, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %530, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %529, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %528, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %527, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %526, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %525, metadata !1381, metadata !DIExpression()), !dbg !1505
  br i1 %110, label %534, label %661, !dbg !1827

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1398, metadata !DIExpression()), !dbg !1515
  %535 = and i8 %529, 1, !dbg !1829
  %536 = icmp eq i8 %535, 0, !dbg !1829
  %537 = and i1 %114, %536, !dbg !1829
  br i1 %537, label %538, label %554, !dbg !1829

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1831
  br i1 %539, label %540, label %542, !dbg !1835

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1831
  store i8 39, i8* %541, align 1, !dbg !1831, !tbaa !796
  br label %542, !dbg !1831

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %543, metadata !1382, metadata !DIExpression()), !dbg !1445
  %544 = icmp ult i64 %543, %533, !dbg !1836
  br i1 %544, label %545, label %547, !dbg !1839

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1836
  store i8 36, i8* %546, align 1, !dbg !1836, !tbaa !796
  br label %547, !dbg !1836

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %548, metadata !1382, metadata !DIExpression()), !dbg !1445
  %549 = icmp ult i64 %548, %533, !dbg !1840
  br i1 %549, label %550, label %552, !dbg !1843

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1840
  store i8 39, i8* %551, align 1, !dbg !1840, !tbaa !796
  br label %552, !dbg !1840

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %553, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %554, !dbg !1844

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1801
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %556, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %555, metadata !1382, metadata !DIExpression()), !dbg !1445
  %557 = icmp ult i64 %555, %533, !dbg !1845
  br i1 %557, label %558, label %560, !dbg !1848

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1845
  store i8 92, i8* %559, align 1, !dbg !1845, !tbaa !796
  br label %560, !dbg !1845

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %561, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %572, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %571, metadata !1399, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8 %570, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %569, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %568, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %567, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %566, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %565, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %564, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %563, metadata !1381, metadata !DIExpression()), !dbg !1505
  br label %589, !dbg !1849

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1823
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1504
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1446
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1811
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1453
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1454
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1852
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1529
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1529
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %571, metadata !1399, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8 %570, metadata !1398, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %569, metadata !1392, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %568, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %567, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %566, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %565, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %564, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %563, metadata !1381, metadata !DIExpression()), !dbg !1505
  %573 = and i8 %567, 1, !dbg !1849
  %574 = icmp ne i8 %573, 0, !dbg !1849
  %575 = and i8 %570, 1, !dbg !1849
  %576 = icmp eq i8 %575, 0, !dbg !1849
  %577 = and i1 %574, %576, !dbg !1849
  br i1 %577, label %578, label %589, !dbg !1849

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1853
  br i1 %579, label %580, label %582, !dbg !1857

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1853
  store i8 39, i8* %581, align 1, !dbg !1853, !tbaa !796
  br label %582, !dbg !1853

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %583, metadata !1382, metadata !DIExpression()), !dbg !1445
  %584 = icmp ult i64 %583, %572, !dbg !1858
  br i1 %584, label %585, label %587, !dbg !1861

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1858
  store i8 39, i8* %586, align 1, !dbg !1858, !tbaa !796
  br label %587, !dbg !1858

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %588, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 0, metadata !1389, metadata !DIExpression()), !dbg !1453
  br label %589, !dbg !1862

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1801
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %598, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %597, metadata !1382, metadata !DIExpression()), !dbg !1445
  %599 = icmp ult i64 %597, %590, !dbg !1863
  br i1 %599, label %600, label %602, !dbg !1866

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1863
  store i8 %592, i8* %601, align 1, !dbg !1863, !tbaa !796
  br label %602, !dbg !1863

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %603, metadata !1382, metadata !DIExpression()), !dbg !1445
  %604 = and i8 %591, 1, !dbg !1867
  %605 = icmp eq i8 %604, 0, !dbg !1867
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1869
  call void @llvm.dbg.value(metadata i8 %606, metadata !1391, metadata !DIExpression()), !dbg !1455
  br label %607, !dbg !1870

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1823
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1504
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1446
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1811
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1453
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1504
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1455
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %614, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %613, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %612, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %611, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %610, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %609, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %608, metadata !1381, metadata !DIExpression()), !dbg !1505
  %616 = add i64 %608, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %616, metadata !1381, metadata !DIExpression()), !dbg !1505
  br label %121, !dbg !1872, !llvm.loop !1873

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %125, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %125, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %127, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8 %128, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  %619 = icmp eq i64 %123, 0, !dbg !1875
  %620 = and i1 %114, %619, !dbg !1877
  %621 = xor i1 %620, true, !dbg !1877
  %622 = or i1 %110, %621, !dbg !1877
  br i1 %622, label %623, label %661, !dbg !1877

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1878
  %625 = xor i1 %624, true, !dbg !1878
  %626 = and i8 %127, 1, !dbg !1880
  %627 = icmp eq i8 %626, 0, !dbg !1880
  %628 = or i1 %627, %625, !dbg !1878
  br i1 %628, label %638, label %629, !dbg !1878

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1881
  %631 = icmp eq i8 %630, 0, !dbg !1881
  br i1 %631, label %634, label %632, !dbg !1884

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %618, metadata !1375, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %95, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %96, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %124, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %125, metadata !1375, metadata !DIExpression()), !dbg !1439
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1885
  br label %671, !dbg !1886

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1887
  %636 = icmp ne i64 %124, 0, !dbg !1889
  %637 = and i1 %636, %635, !dbg !1890
  br i1 %637, label %27, label %638, !dbg !1890

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %129, metadata !1373, metadata !DIExpression()), !dbg !1437
  %639 = icmp ne i8* %98, null, !dbg !1891
  %640 = and i1 %639, %110, !dbg !1893
  br i1 %640, label %641, label %656, !dbg !1893

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1382, metadata !DIExpression()), !dbg !1445
  %642 = load i8, i8* %98, align 1, !dbg !1894, !tbaa !796
  %643 = icmp eq i8 %642, 0, !dbg !1897
  br i1 %643, label %656, label %644, !dbg !1897

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %647, metadata !1382, metadata !DIExpression()), !dbg !1445
  %648 = icmp ult i64 %647, %129, !dbg !1898
  br i1 %648, label %649, label %651, !dbg !1901

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1898
  store i8 %645, i8* %650, align 1, !dbg !1898, !tbaa !796
  br label %651, !dbg !1898

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1901
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %653, metadata !1384, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %652, metadata !1382, metadata !DIExpression()), !dbg !1445
  %654 = load i8, i8* %653, align 1, !dbg !1894, !tbaa !796
  %655 = icmp eq i8 %654, 0, !dbg !1897
  br i1 %655, label %656, label %644, !dbg !1897, !llvm.loop !1903

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1445
  call void @llvm.dbg.value(metadata i64 %657, metadata !1382, metadata !DIExpression()), !dbg !1445
  %658 = icmp ult i64 %657, %129, !dbg !1905
  br i1 %658, label %659, label %671, !dbg !1907

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1908
  store i8 0, i8* %660, align 1, !dbg !1909, !tbaa !796
  br label %671, !dbg !1908

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %663, metadata !1375, metadata !DIExpression()), !dbg !1439
  %665 = icmp ne i32 %662, 2, !dbg !1910
  %666 = icmp eq i8 %102, 0, !dbg !1912
  %667 = or i1 %665, %666, !dbg !1913
  call void @llvm.dbg.value(metadata i32 4, metadata !1376, metadata !DIExpression()), !dbg !1440
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %668, metadata !1376, metadata !DIExpression()), !dbg !1440
  %669 = and i32 %5, -3, !dbg !1914
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1915
  br label %671, !dbg !1916

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1917
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1922, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 %1, metadata !1923, metadata !DIExpression()), !dbg !1927
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1928
  call void @llvm.dbg.value(metadata i8* %3, metadata !1924, metadata !DIExpression()), !dbg !1929
  %4 = icmp eq i8* %3, %0, !dbg !1930
  br i1 %4, label %5, label %71, !dbg !1932

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1933
  call void @llvm.dbg.value(metadata i8* %6, metadata !1925, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* %6, metadata !1935, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* null, metadata !1941, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 85, metadata !1942, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 84, metadata !1943, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 70, metadata !1944, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 45, metadata !1945, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 56, metadata !1946, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1963
  %7 = load i8, i8* %6, align 1, !dbg !1964, !tbaa !796
  %8 = and i8 %7, -33, !dbg !1964
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1964

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* null, metadata !1971, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 84, metadata !1972, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 70, metadata !1973, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 45, metadata !1974, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8 56, metadata !1975, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !1992
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1993
  %11 = load i8, i8* %10, align 1, !dbg !1993, !tbaa !796
  %12 = and i8 %11, -33, !dbg !1993
  %13 = icmp eq i8 %12, 84, !dbg !1993
  br i1 %13, label %14, label %68, !dbg !1993

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* null, metadata !2000, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 70, metadata !2001, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 45, metadata !2002, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8 56, metadata !2003, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2019
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2020
  %16 = load i8, i8* %15, align 1, !dbg !2020, !tbaa !796
  %17 = and i8 %16, -33, !dbg !2020
  %18 = icmp eq i8 %17, 70, !dbg !2020
  br i1 %18, label %19, label %68, !dbg !2020

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2022, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* null, metadata !2027, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 45, metadata !2028, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 56, metadata !2029, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 0, metadata !2033, metadata !DIExpression()), !dbg !2044
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2045
  %21 = load i8, i8* %20, align 1, !dbg !2045, !tbaa !796
  %22 = icmp eq i8 %21, 45, !dbg !2045
  br i1 %22, label %23, label %68, !dbg !2047

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2048, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8* null, metadata !2053, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 56, metadata !2054, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2068
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2069
  %25 = load i8, i8* %24, align 1, !dbg !2069, !tbaa !796
  %26 = icmp eq i8 %25, 56, !dbg !2069
  br i1 %26, label %27, label %68, !dbg !2071

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2072, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* null, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2080, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2081, metadata !DIExpression()), !dbg !2090
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2091
  %29 = load i8, i8* %28, align 1, !dbg !2091, !tbaa !796
  %30 = icmp eq i8 %29, 0, !dbg !2091
  br i1 %30, label %31, label %68, !dbg !2093

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2094, !tbaa !796
  %33 = icmp eq i8 %32, 96, !dbg !2095
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.89, i64 0, i64 0), !dbg !2094
  br label %71, !dbg !2096

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* null, metadata !1971, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 66, metadata !1972, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 49, metadata !1973, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 56, metadata !1974, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 48, metadata !1975, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 51, metadata !1976, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 48, metadata !1977, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2109
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2110
  %37 = load i8, i8* %36, align 1, !dbg !2110, !tbaa !796
  %38 = and i8 %37, -33, !dbg !2110
  %39 = icmp eq i8 %38, 66, !dbg !2110
  br i1 %39, label %40, label %68, !dbg !2110

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* null, metadata !2000, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 49, metadata !2001, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 56, metadata !2002, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 48, metadata !2003, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 51, metadata !2004, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 48, metadata !2005, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2120
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2121
  %42 = load i8, i8* %41, align 1, !dbg !2121, !tbaa !796
  %43 = icmp eq i8 %42, 49, !dbg !2121
  br i1 %43, label %44, label %68, !dbg !2122

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2022, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* null, metadata !2027, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 56, metadata !2028, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 48, metadata !2029, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 51, metadata !2030, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8 48, metadata !2031, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2033, metadata !DIExpression()), !dbg !2131
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2132
  %46 = load i8, i8* %45, align 1, !dbg !2132, !tbaa !796
  %47 = icmp eq i8 %46, 56, !dbg !2132
  br i1 %47, label %48, label %68, !dbg !2133

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2048, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* null, metadata !2053, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 48, metadata !2054, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 51, metadata !2055, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 48, metadata !2056, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2141
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2142
  %50 = load i8, i8* %49, align 1, !dbg !2142, !tbaa !796
  %51 = icmp eq i8 %50, 48, !dbg !2142
  br i1 %51, label %52, label %68, !dbg !2143

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2072, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* null, metadata !2077, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 51, metadata !2078, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 48, metadata !2079, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 0, metadata !2080, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2081, metadata !DIExpression()), !dbg !2150
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2151
  %54 = load i8, i8* %53, align 1, !dbg !2151, !tbaa !796
  %55 = icmp eq i8 %54, 51, !dbg !2151
  br i1 %55, label %56, label %68, !dbg !2152

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2153, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* null, metadata !2158, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2159, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2169
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2170
  %58 = load i8, i8* %57, align 1, !dbg !2170, !tbaa !796
  %59 = icmp eq i8 %58, 48, !dbg !2170
  br i1 %59, label %60, label %68, !dbg !2172

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2173, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* null, metadata !2178, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2187
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2188
  %62 = load i8, i8* %61, align 1, !dbg !2188, !tbaa !796
  %63 = icmp eq i8 %62, 0, !dbg !2188
  br i1 %63, label %64, label %68, !dbg !2190

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2191, !tbaa !796
  %66 = icmp eq i8 %65, 96, !dbg !2192
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.90, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.91, i64 0, i64 0), !dbg !2191
  br label %71, !dbg !2193

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2194
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !2195
  br label %71, !dbg !2196

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2197
  ret i8* %72, !dbg !2198
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i64 %1, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %0, metadata !2209, metadata !DIExpression()) #10, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %1, metadata !2214, metadata !DIExpression()) #10, !dbg !2224
  call void @llvm.dbg.value(metadata i64* null, metadata !2215, metadata !DIExpression()) #10, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2216, metadata !DIExpression()) #10, !dbg !2226
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2227
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2217, metadata !DIExpression()) #10, !dbg !2228
  %6 = tail call i32* @__errno_location() #16, !dbg !2229
  %7 = load i32, i32* %6, align 4, !dbg !2229, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %7, metadata !2218, metadata !DIExpression()) #10, !dbg !2230
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2231
  %9 = load i32, i32* %8, align 4, !dbg !2231, !tbaa !1305
  %10 = or i32 %9, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %10, metadata !2219, metadata !DIExpression()) #10, !dbg !2233
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2234
  %12 = load i32, i32* %11, align 8, !dbg !2234, !tbaa !1245
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2235
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2236
  %15 = load i8*, i8** %14, align 8, !dbg !2236, !tbaa !1331
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2237
  %17 = load i8*, i8** %16, align 8, !dbg !2237, !tbaa !1334
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2238
  %19 = add i64 %18, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %19, metadata !2220, metadata !DIExpression()) #10, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %19, metadata !2241, metadata !DIExpression()) #10, !dbg !2246
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %20, metadata !2221, metadata !DIExpression()) #10, !dbg !2249
  %21 = load i32, i32* %11, align 8, !dbg !2250, !tbaa !1245
  %22 = load i8*, i8** %14, align 8, !dbg !2251, !tbaa !1331
  %23 = load i8*, i8** %16, align 8, !dbg !2252, !tbaa !1334
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2253
  store i32 %7, i32* %6, align 4, !dbg !2254, !tbaa !846
  ret i8* %20, !dbg !2255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2210 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2209, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i64 %1, metadata !2214, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64* %2, metadata !2215, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2216, metadata !DIExpression()), !dbg !2259
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2260
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2217, metadata !DIExpression()), !dbg !2261
  %7 = tail call i32* @__errno_location() #16, !dbg !2262
  %8 = load i32, i32* %7, align 4, !dbg !2262, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %8, metadata !2218, metadata !DIExpression()), !dbg !2263
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2264
  %10 = load i32, i32* %9, align 4, !dbg !2264, !tbaa !1305
  %11 = icmp ne i64* %2, null, !dbg !2265
  %12 = xor i1 %11, true, !dbg !2265
  %13 = zext i1 %12 to i32, !dbg !2265
  %14 = or i32 %10, %13, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %14, metadata !2219, metadata !DIExpression()), !dbg !2267
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2268
  %16 = load i32, i32* %15, align 8, !dbg !2268, !tbaa !1245
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2269
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2270
  %19 = load i8*, i8** %18, align 8, !dbg !2270, !tbaa !1331
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2271
  %21 = load i8*, i8** %20, align 8, !dbg !2271, !tbaa !1334
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2272
  %23 = add i64 %22, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %23, metadata !2220, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %23, metadata !2241, metadata !DIExpression()) #10, !dbg !2275
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %24, metadata !2221, metadata !DIExpression()), !dbg !2278
  %25 = load i32, i32* %15, align 8, !dbg !2279, !tbaa !1245
  %26 = load i8*, i8** %18, align 8, !dbg !2280, !tbaa !1331
  %27 = load i8*, i8** %20, align 8, !dbg !2281, !tbaa !1334
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2282
  store i32 %8, i32* %7, align 4, !dbg !2283, !tbaa !846
  br i1 %11, label %29, label %30, !dbg !2284

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2285, !tbaa !2287
  br label %30, !dbg !2288

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2289
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2290 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2294, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 1, metadata !2293, metadata !DIExpression()), !dbg !2296
  %2 = load i32, i32* @nslots, align 4, !dbg !2297, !tbaa !846
  %3 = icmp sgt i32 %2, 1, !dbg !2300
  br i1 %3, label %4, label %12, !dbg !2301

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2293, metadata !DIExpression()), !dbg !2296
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2302
  %7 = load i8*, i8** %6, align 8, !dbg !2302, !tbaa !2303
  tail call void @free(i8* %7) #10, !dbg !2305
  %8 = add nuw nsw i64 %5, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i32 undef, metadata !2293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2296
  %9 = load i32, i32* @nslots, align 4, !dbg !2297, !tbaa !846
  %10 = sext i32 %9 to i64, !dbg !2300
  %11 = icmp slt i64 %8, %10, !dbg !2300
  br i1 %11, label %4, label %12, !dbg !2301, !llvm.loop !2307

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2309
  %14 = load i8*, i8** %13, align 8, !dbg !2309, !tbaa !2303
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2311
  br i1 %15, label %17, label %16, !dbg !2312

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2313
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2315, !tbaa !2316
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2317, !tbaa !2303
  br label %17, !dbg !2318

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2319
  br i1 %18, label %21, label %19, !dbg !2321

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2322
  tail call void @free(i8* %20) #10, !dbg !2324
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2325, !tbaa !657
  br label %21, !dbg !2326

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2327, !tbaa !846
  ret void, !dbg !2328
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2337
  ret i8* %3, !dbg !2338
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2343, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %1, metadata !2344, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %2, metadata !2345, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2346, metadata !DIExpression()), !dbg !2361
  %5 = tail call i32* @__errno_location() #16, !dbg !2362
  %6 = load i32, i32* %5, align 4, !dbg !2362, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %6, metadata !2347, metadata !DIExpression()), !dbg !2363
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2364, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2348, metadata !DIExpression()), !dbg !2365
  %8 = icmp slt i32 %0, 0, !dbg !2366
  br i1 %8, label %9, label %10, !dbg !2368

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2369
  unreachable, !dbg !2369

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2370, !tbaa !846
  %12 = icmp sgt i32 %11, %0, !dbg !2371
  br i1 %12, label %34, label %13, !dbg !2372

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2373
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2352, metadata !DIExpression()), !dbg !2374
  %15 = icmp eq i32 %0, 2147483647, !dbg !2375
  br i1 %15, label %16, label %17, !dbg !2377

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2378
  unreachable, !dbg !2378

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2379
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2379
  %20 = add nsw i32 %0, 1, !dbg !2380
  %21 = sext i32 %20 to i64, !dbg !2381
  %22 = shl nsw i64 %21, 4, !dbg !2382
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2383
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2348, metadata !DIExpression()), !dbg !2365
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2384, !tbaa !657
  br i1 %14, label %25, label %26, !dbg !2385

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2386, !tbaa.struct !2388
  br label %26, !dbg !2389

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2390, !tbaa !846
  %28 = sext i32 %27 to i64, !dbg !2391
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2391
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2392
  %31 = sub nsw i32 %20, %27, !dbg !2393
  %32 = sext i32 %31 to i64, !dbg !2394
  %33 = shl nsw i64 %32, 4, !dbg !2395
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2392
  store i32 %20, i32* @nslots, align 4, !dbg !2396, !tbaa !846
  br label %34, !dbg !2397

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2398
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2348, metadata !DIExpression()), !dbg !2365
  %36 = sext i32 %0 to i64, !dbg !2399
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2400
  %38 = load i64, i64* %37, align 8, !dbg !2400, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %38, metadata !2353, metadata !DIExpression()), !dbg !2401
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2402
  %40 = load i8*, i8** %39, align 8, !dbg !2402, !tbaa !2303
  call void @llvm.dbg.value(metadata i8* %40, metadata !2355, metadata !DIExpression()), !dbg !2403
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2404
  %42 = load i32, i32* %41, align 4, !dbg !2404, !tbaa !1305
  %43 = or i32 %42, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %43, metadata !2356, metadata !DIExpression()), !dbg !2406
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2407
  %45 = load i32, i32* %44, align 8, !dbg !2407, !tbaa !1245
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2408
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2409
  %48 = load i8*, i8** %47, align 8, !dbg !2409, !tbaa !1331
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2410
  %50 = load i8*, i8** %49, align 8, !dbg !2410, !tbaa !1334
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %51, metadata !2357, metadata !DIExpression()), !dbg !2412
  %52 = icmp ugt i64 %38, %51, !dbg !2413
  br i1 %52, label %63, label %53, !dbg !2415

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %54, metadata !2353, metadata !DIExpression()), !dbg !2401
  store i64 %54, i64* %37, align 8, !dbg !2418, !tbaa !2316
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2419
  br i1 %55, label %57, label %56, !dbg !2421

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2422
  br label %57, !dbg !2422

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2241, metadata !DIExpression()) #10, !dbg !2423
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %58, metadata !2355, metadata !DIExpression()), !dbg !2403
  store i8* %58, i8** %39, align 8, !dbg !2426, !tbaa !2303
  %59 = load i32, i32* %44, align 8, !dbg !2427, !tbaa !1245
  %60 = load i8*, i8** %47, align 8, !dbg !2428, !tbaa !1331
  %61 = load i8*, i8** %49, align 8, !dbg !2429, !tbaa !1334
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2430
  br label %63, !dbg !2431

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8* %64, metadata !2355, metadata !DIExpression()), !dbg !2403
  store i32 %6, i32* %5, align 4, !dbg !2433, !tbaa !846
  ret i8* %64, !dbg !2434
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %2, metadata !2441, metadata !DIExpression()), !dbg !2444
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2445
  ret i8* %4, !dbg !2446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !2333, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()) #10, !dbg !2455
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2456
  ret i8* %2, !dbg !2457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i64 %1, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #10, !dbg !2466
  call void @llvm.dbg.value(metadata i8* %0, metadata !2440, metadata !DIExpression()) #10, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %1, metadata !2441, metadata !DIExpression()) #10, !dbg !2469
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2470
  ret i8* %3, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2472 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()), !dbg !2482
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2483
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2479, metadata !DIExpression(DW_OP_deref)), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %1, metadata !2485, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2493, !alias.scope !2494
  %6 = icmp eq i32 %1, 10, !dbg !2497
  br i1 %6, label %7, label %8, !dbg !2499

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2500, !noalias !2494
  unreachable, !dbg !2500

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2501
  store i32 %1, i32* %9, align 8, !dbg !2502, !tbaa !1245, !alias.scope !2494
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2479, metadata !DIExpression(DW_OP_deref)), !dbg !2484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2493
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2504
  ret i8* %10, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2506 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2510, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 %1, metadata !2511, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %2, metadata !2512, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %3, metadata !2513, metadata !DIExpression()), !dbg !2518
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2519
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %1, metadata !2485, metadata !DIExpression()) #10, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2523, !alias.scope !2524
  %7 = icmp eq i32 %1, 10, !dbg !2527
  br i1 %7, label %8, label %9, !dbg !2528

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2529, !noalias !2524
  unreachable, !dbg !2529

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2530
  store i32 %1, i32* %10, align 8, !dbg !2531, !tbaa !1245, !alias.scope !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2523
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2533
  ret i8* %11, !dbg !2534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2535 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !2540, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2476, metadata !DIExpression()) #10, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %0, metadata !2477, metadata !DIExpression()) #10, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %1, metadata !2478, metadata !DIExpression()) #10, !dbg !2546
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2547
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2479, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()) #10, !dbg !2549
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2551, !alias.scope !2552
  %5 = icmp eq i32 %0, 10, !dbg !2555
  br i1 %5, label %6, label %7, !dbg !2556

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2557, !noalias !2552
  unreachable, !dbg !2557

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2558
  store i32 %0, i32* %8, align 8, !dbg !2559, !tbaa !1245, !alias.scope !2552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2479, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2490, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2551
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2561
  ret i8* %9, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2563 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %2, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2510, metadata !DIExpression()) #10, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %0, metadata !2511, metadata !DIExpression()) #10, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2512, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %2, metadata !2513, metadata !DIExpression()) #10, !dbg !2577
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()) #10, !dbg !2580
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2582, !alias.scope !2583
  %6 = icmp eq i32 %0, 10, !dbg !2586
  br i1 %6, label %7, label %8, !dbg !2587

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2588, !noalias !2583
  unreachable, !dbg !2588

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2589
  store i32 %0, i32* %9, align 8, !dbg !2590, !tbaa !1245, !alias.scope !2583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2490, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2582
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2592
  ret i8* %10, !dbg !2593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2594 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %2, metadata !2600, metadata !DIExpression()), !dbg !2604
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2606, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2608
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1264, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 %2, metadata !1265, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 1, metadata !1266, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 %2, metadata !1267, metadata !DIExpression()), !dbg !2613
  %6 = lshr i8 %2, 5, !dbg !2614
  %7 = zext i8 %6 to i64, !dbg !2614
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2615
  call void @llvm.dbg.value(metadata i32* %8, metadata !1269, metadata !DIExpression()), !dbg !2616
  %9 = and i8 %2, 31, !dbg !2617
  %10 = zext i8 %9 to i32, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %10, metadata !1271, metadata !DIExpression()), !dbg !2618
  %11 = load i32, i32* %8, align 4, !dbg !2619, !tbaa !846
  %12 = lshr i32 %11, %10, !dbg !2620
  %13 = and i32 %12, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %13, metadata !1272, metadata !DIExpression()), !dbg !2622
  %14 = xor i32 %13, 1, !dbg !2623
  %15 = shl i32 %14, %10, !dbg !2624
  %16 = xor i32 %15, %11, !dbg !2625
  store i32 %16, i32* %8, align 4, !dbg !2625, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2608
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2626
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2627
  ret i8* %17, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2629 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 %1, metadata !2634, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()) #10, !dbg !2637
  call void @llvm.dbg.value(metadata i64 -1, metadata !2599, metadata !DIExpression()) #10, !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !2600, metadata !DIExpression()) #10, !dbg !2640
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2642, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1264, metadata !DIExpression()) #10, !dbg !2644
  call void @llvm.dbg.value(metadata i8 %1, metadata !1265, metadata !DIExpression()) #10, !dbg !2646
  call void @llvm.dbg.value(metadata i32 1, metadata !1266, metadata !DIExpression()) #10, !dbg !2647
  call void @llvm.dbg.value(metadata i8 %1, metadata !1267, metadata !DIExpression()) #10, !dbg !2648
  %5 = lshr i8 %1, 5, !dbg !2649
  %6 = zext i8 %5 to i64, !dbg !2649
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2650
  call void @llvm.dbg.value(metadata i32* %7, metadata !1269, metadata !DIExpression()) #10, !dbg !2651
  %8 = and i8 %1, 31, !dbg !2652
  %9 = zext i8 %8 to i32, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %9, metadata !1271, metadata !DIExpression()) #10, !dbg !2653
  %10 = load i32, i32* %7, align 4, !dbg !2654, !tbaa !846
  %11 = lshr i32 %10, %9, !dbg !2655
  %12 = and i32 %11, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %12, metadata !1272, metadata !DIExpression()) #10, !dbg !2657
  %13 = xor i32 %12, 1, !dbg !2658
  %14 = shl i32 %13, %9, !dbg !2659
  %15 = xor i32 %14, %10, !dbg !2660
  store i32 %15, i32* %7, align 4, !dbg !2660, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2643
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2662
  ret i8* %16, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2664 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()) #10, !dbg !2668
  call void @llvm.dbg.value(metadata i8 58, metadata !2634, metadata !DIExpression()) #10, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()) #10, !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2599, metadata !DIExpression()) #10, !dbg !2673
  call void @llvm.dbg.value(metadata i8 58, metadata !2600, metadata !DIExpression()) #10, !dbg !2674
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2676, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1264, metadata !DIExpression()) #10, !dbg !2678
  call void @llvm.dbg.value(metadata i8 58, metadata !1265, metadata !DIExpression()) #10, !dbg !2680
  call void @llvm.dbg.value(metadata i32 1, metadata !1266, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata i8 58, metadata !1267, metadata !DIExpression()) #10, !dbg !2682
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2683
  call void @llvm.dbg.value(metadata i32* %4, metadata !1269, metadata !DIExpression()) #10, !dbg !2684
  call void @llvm.dbg.value(metadata i32 26, metadata !1271, metadata !DIExpression()) #10, !dbg !2685
  %5 = load i32, i32* %4, align 4, !dbg !2686, !tbaa !846
  %6 = or i32 %5, 67108864, !dbg !2687
  store i32 %6, i32* %4, align 4, !dbg !2687, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2677
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2689
  ret i8* %7, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2691 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %1, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()) #10, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()) #10, !dbg !2699
  call void @llvm.dbg.value(metadata i8 58, metadata !2600, metadata !DIExpression()) #10, !dbg !2700
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2702, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1264, metadata !DIExpression()) #10, !dbg !2704
  call void @llvm.dbg.value(metadata i8 58, metadata !1265, metadata !DIExpression()) #10, !dbg !2706
  call void @llvm.dbg.value(metadata i32 1, metadata !1266, metadata !DIExpression()) #10, !dbg !2707
  call void @llvm.dbg.value(metadata i8 58, metadata !1267, metadata !DIExpression()) #10, !dbg !2708
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2709
  call void @llvm.dbg.value(metadata i32* %5, metadata !1269, metadata !DIExpression()) #10, !dbg !2710
  call void @llvm.dbg.value(metadata i32 26, metadata !1271, metadata !DIExpression()) #10, !dbg !2711
  %6 = load i32, i32* %5, align 4, !dbg !2712, !tbaa !846
  %7 = or i32 %6, 67108864, !dbg !2713
  store i32 %7, i32* %5, align 4, !dbg !2713, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2601, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2703
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2715
  ret i8* %8, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2717 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2490, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %0, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %1, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %2, metadata !2721, metadata !DIExpression()), !dbg !2727
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2728
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %1, metadata !2485, metadata !DIExpression()) #10, !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2490, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2723
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2723, !alias.scope !2731
  %8 = icmp eq i32 %1, 10, !dbg !2734
  br i1 %8, label %9, label %10, !dbg !2735

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2736, !noalias !2731
  unreachable, !dbg !2736

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2490, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2723
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2729
  store i32 %1, i32* %11, align 8, !dbg !2729
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2729
  %13 = bitcast i32* %12 to i8*, !dbg !2729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2729
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2722, metadata !DIExpression(DW_OP_deref)), !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1264, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 58, metadata !1265, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 1, metadata !1266, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 58, metadata !1267, metadata !DIExpression()), !dbg !2742
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2743
  call void @llvm.dbg.value(metadata i32* %14, metadata !1269, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 26, metadata !1271, metadata !DIExpression()), !dbg !2745
  %15 = load i32, i32* %14, align 4, !dbg !2746, !tbaa !846
  %16 = or i32 %15, 67108864, !dbg !2747
  store i32 %16, i32* %14, align 4, !dbg !2747, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2722, metadata !DIExpression(DW_OP_deref)), !dbg !2737
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2749
  ret i8* %17, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2751 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %2, metadata !2757, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %3, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()) #10, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !2768, metadata !DIExpression()) #10, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !2769, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %3, metadata !2770, metadata !DIExpression()) #10, !dbg !2777
  call void @llvm.dbg.value(metadata i64 -1, metadata !2771, metadata !DIExpression()) #10, !dbg !2778
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2780, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1313, metadata !DIExpression()) #10, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %1, metadata !1314, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %2, metadata !1315, metadata !DIExpression()) #10, !dbg !2785
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1313, metadata !DIExpression()) #10, !dbg !2782
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2786
  store i32 10, i32* %7, align 8, !dbg !2787, !tbaa !1245
  %8 = icmp ne i8* %1, null, !dbg !2788
  %9 = icmp ne i8* %2, null, !dbg !2789
  %10 = and i1 %8, %9, !dbg !2790
  br i1 %10, label %12, label %11, !dbg !2790

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2791
  unreachable, !dbg !2791

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2792
  store i8* %1, i8** %13, align 8, !dbg !2793, !tbaa !1331
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2794
  store i8* %2, i8** %14, align 8, !dbg !2795, !tbaa !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2781
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2797
  ret i8* %15, !dbg !2798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2764 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %1, metadata !2768, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !2769, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %3, metadata !2770, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64 %4, metadata !2771, metadata !DIExpression()), !dbg !2803
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2805, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1313, metadata !DIExpression()) #10, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !1314, metadata !DIExpression()) #10, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %2, metadata !1315, metadata !DIExpression()) #10, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1313, metadata !DIExpression()) #10, !dbg !2807
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2811
  store i32 10, i32* %8, align 8, !dbg !2812, !tbaa !1245
  %9 = icmp ne i8* %1, null, !dbg !2813
  %10 = icmp ne i8* %2, null, !dbg !2814
  %11 = and i1 %9, %10, !dbg !2815
  br i1 %11, label %13, label %12, !dbg !2815

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2816
  unreachable, !dbg !2816

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2817
  store i8* %1, i8** %14, align 8, !dbg !2818, !tbaa !1331
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2819
  store i8* %2, i8** %15, align 8, !dbg !2820, !tbaa !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2821
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2822
  ret i8* %16, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2824 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #10, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2757, metadata !DIExpression()) #10, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !2758, metadata !DIExpression()) #10, !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()) #10, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2769, metadata !DIExpression()) #10, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2770, metadata !DIExpression()) #10, !dbg !2843
  call void @llvm.dbg.value(metadata i64 -1, metadata !2771, metadata !DIExpression()) #10, !dbg !2844
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2846, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1313, metadata !DIExpression()) #10, !dbg !2848
  call void @llvm.dbg.value(metadata i8* %0, metadata !1314, metadata !DIExpression()) #10, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !1315, metadata !DIExpression()) #10, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1313, metadata !DIExpression()) #10, !dbg !2848
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2852
  store i32 10, i32* %6, align 8, !dbg !2853, !tbaa !1245
  %7 = icmp ne i8* %0, null, !dbg !2854
  %8 = icmp ne i8* %1, null, !dbg !2855
  %9 = and i1 %7, %8, !dbg !2856
  br i1 %9, label %11, label %10, !dbg !2856

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2857
  unreachable, !dbg !2857

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2858
  store i8* %0, i8** %12, align 8, !dbg !2859, !tbaa !1331
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2860
  store i8* %1, i8** %13, align 8, !dbg !2861, !tbaa !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2847
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2863
  ret i8* %14, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2865 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2869, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %1, metadata !2870, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8* %2, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %3, metadata !2872, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()) #10, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !2769, metadata !DIExpression()) #10, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2770, metadata !DIExpression()) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %3, metadata !2771, metadata !DIExpression()) #10, !dbg !2882
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2884, !tbaa.struct !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2885
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1313, metadata !DIExpression()) #10, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %0, metadata !1314, metadata !DIExpression()) #10, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %1, metadata !1315, metadata !DIExpression()) #10, !dbg !2889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1313, metadata !DIExpression()) #10, !dbg !2886
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2890
  store i32 10, i32* %7, align 8, !dbg !2891, !tbaa !1245
  %8 = icmp ne i8* %0, null, !dbg !2892
  %9 = icmp ne i8* %1, null, !dbg !2893
  %10 = and i1 %8, %9, !dbg !2894
  br i1 %10, label %12, label %11, !dbg !2894

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2895
  unreachable, !dbg !2895

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2896
  store i8* %0, i8** %13, align 8, !dbg !2897, !tbaa !1331
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2898
  store i8* %1, i8** %14, align 8, !dbg !2899, !tbaa !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2772, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2885
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2900
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2901
  ret i8* %15, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2908, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !2912
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2913
  ret i8* %4, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()) #10, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()) #10, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()) #10, !dbg !2926
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2927
  ret i8* %3, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #10, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %1, metadata !2908, metadata !DIExpression()) #10, !dbg !2939
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #10, !dbg !2940
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2941
  ret i8* %3, !dbg !2942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()) #10, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()) #10, !dbg !2951
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()) #10, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()) #10, !dbg !2954
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #10, !dbg !2955
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2956
  ret i8* %2, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2958 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %2, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8** %4, metadata !3019, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %5, metadata !3020, metadata !DIExpression()), !dbg !3026
  %7 = icmp eq i8* %1, null, !dbg !3027
  br i1 %7, label %10, label %8, !dbg !3029

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3030
  br label %12, !dbg !3030

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3031
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i32 5) #10, !dbg !3032
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3032
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.101, i64 0, i64 0), i32 5) #10, !dbg !3033
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3033
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
  ], !dbg !3034

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3035
  unreachable, !dbg !3035

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.102, i64 0, i64 0), i32 5) #10, !dbg !3037
  %20 = load i8*, i8** %4, align 8, !dbg !3037, !tbaa !657
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3037
  br label %146, !dbg !3038

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.103, i64 0, i64 0), i32 5) #10, !dbg !3039
  %24 = load i8*, i8** %4, align 8, !dbg !3039, !tbaa !657
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3039
  %26 = load i8*, i8** %25, align 8, !dbg !3039, !tbaa !657
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3039
  br label %146, !dbg !3040

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.104, i64 0, i64 0), i32 5) #10, !dbg !3041
  %30 = load i8*, i8** %4, align 8, !dbg !3041, !tbaa !657
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3041
  %32 = load i8*, i8** %31, align 8, !dbg !3041, !tbaa !657
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3041
  %34 = load i8*, i8** %33, align 8, !dbg !3041, !tbaa !657
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3041
  br label %146, !dbg !3042

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.105, i64 0, i64 0), i32 5) #10, !dbg !3043
  %38 = load i8*, i8** %4, align 8, !dbg !3043, !tbaa !657
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3043
  %40 = load i8*, i8** %39, align 8, !dbg !3043, !tbaa !657
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3043
  %42 = load i8*, i8** %41, align 8, !dbg !3043, !tbaa !657
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3043
  %44 = load i8*, i8** %43, align 8, !dbg !3043, !tbaa !657
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3043
  br label %146, !dbg !3044

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.106, i64 0, i64 0), i32 5) #10, !dbg !3045
  %48 = load i8*, i8** %4, align 8, !dbg !3045, !tbaa !657
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3045
  %50 = load i8*, i8** %49, align 8, !dbg !3045, !tbaa !657
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3045
  %52 = load i8*, i8** %51, align 8, !dbg !3045, !tbaa !657
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3045
  %54 = load i8*, i8** %53, align 8, !dbg !3045, !tbaa !657
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3045
  %56 = load i8*, i8** %55, align 8, !dbg !3045, !tbaa !657
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3045
  br label %146, !dbg !3046

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.107, i64 0, i64 0), i32 5) #10, !dbg !3047
  %60 = load i8*, i8** %4, align 8, !dbg !3047, !tbaa !657
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3047
  %62 = load i8*, i8** %61, align 8, !dbg !3047, !tbaa !657
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3047
  %64 = load i8*, i8** %63, align 8, !dbg !3047, !tbaa !657
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3047
  %66 = load i8*, i8** %65, align 8, !dbg !3047, !tbaa !657
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3047
  %68 = load i8*, i8** %67, align 8, !dbg !3047, !tbaa !657
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3047
  %70 = load i8*, i8** %69, align 8, !dbg !3047, !tbaa !657
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3047
  br label %146, !dbg !3048

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.108, i64 0, i64 0), i32 5) #10, !dbg !3049
  %74 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !657
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %76 = load i8*, i8** %75, align 8, !dbg !3049, !tbaa !657
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %78 = load i8*, i8** %77, align 8, !dbg !3049, !tbaa !657
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3049
  %80 = load i8*, i8** %79, align 8, !dbg !3049, !tbaa !657
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3049
  %82 = load i8*, i8** %81, align 8, !dbg !3049, !tbaa !657
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3049
  %84 = load i8*, i8** %83, align 8, !dbg !3049, !tbaa !657
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3049
  %86 = load i8*, i8** %85, align 8, !dbg !3049, !tbaa !657
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3049
  br label %146, !dbg !3050

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.109, i64 0, i64 0), i32 5) #10, !dbg !3051
  %90 = load i8*, i8** %4, align 8, !dbg !3051, !tbaa !657
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3051
  %92 = load i8*, i8** %91, align 8, !dbg !3051, !tbaa !657
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3051
  %94 = load i8*, i8** %93, align 8, !dbg !3051, !tbaa !657
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3051
  %96 = load i8*, i8** %95, align 8, !dbg !3051, !tbaa !657
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3051
  %98 = load i8*, i8** %97, align 8, !dbg !3051, !tbaa !657
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3051
  %100 = load i8*, i8** %99, align 8, !dbg !3051, !tbaa !657
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3051
  %102 = load i8*, i8** %101, align 8, !dbg !3051, !tbaa !657
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3051
  %104 = load i8*, i8** %103, align 8, !dbg !3051, !tbaa !657
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3051
  br label %146, !dbg !3052

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.110, i64 0, i64 0), i32 5) #10, !dbg !3053
  %108 = load i8*, i8** %4, align 8, !dbg !3053, !tbaa !657
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3053
  %110 = load i8*, i8** %109, align 8, !dbg !3053, !tbaa !657
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3053
  %112 = load i8*, i8** %111, align 8, !dbg !3053, !tbaa !657
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3053
  %114 = load i8*, i8** %113, align 8, !dbg !3053, !tbaa !657
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3053
  %116 = load i8*, i8** %115, align 8, !dbg !3053, !tbaa !657
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3053
  %118 = load i8*, i8** %117, align 8, !dbg !3053, !tbaa !657
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3053
  %120 = load i8*, i8** %119, align 8, !dbg !3053, !tbaa !657
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3053
  %122 = load i8*, i8** %121, align 8, !dbg !3053, !tbaa !657
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3053
  %124 = load i8*, i8** %123, align 8, !dbg !3053, !tbaa !657
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3053
  br label %146, !dbg !3054

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.111, i64 0, i64 0), i32 5) #10, !dbg !3055
  %128 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !657
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %130 = load i8*, i8** %129, align 8, !dbg !3055, !tbaa !657
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %132 = load i8*, i8** %131, align 8, !dbg !3055, !tbaa !657
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3055
  %134 = load i8*, i8** %133, align 8, !dbg !3055, !tbaa !657
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3055
  %136 = load i8*, i8** %135, align 8, !dbg !3055, !tbaa !657
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3055
  %138 = load i8*, i8** %137, align 8, !dbg !3055, !tbaa !657
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3055
  %140 = load i8*, i8** %139, align 8, !dbg !3055, !tbaa !657
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3055
  %142 = load i8*, i8** %141, align 8, !dbg !3055, !tbaa !657
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3055
  %144 = load i8*, i8** %143, align 8, !dbg !3055, !tbaa !657
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3055
  br label %146, !dbg !3056

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3058 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3062, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %2, metadata !3064, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %3, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8** %4, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3073
  br label %6, !dbg !3074

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3076
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3078
  %9 = load i8*, i8** %8, align 8, !dbg !3078, !tbaa !657
  %10 = icmp eq i8* %9, null, !dbg !3079
  %11 = add i64 %7, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %11, metadata !3067, metadata !DIExpression()), !dbg !3073
  br i1 %10, label %12, label %6, !dbg !3079, !llvm.loop !3081

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()), !dbg !3073
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3083
  ret void, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3085 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3096, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3099, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3100, metadata !DIExpression()), !dbg !3108
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3109
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3102, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3111
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3111
  %11 = load i32, i32* %8, align 8, !dbg !3112
  %12 = icmp ult i32 %11, 41, !dbg !3112
  br i1 %12, label %13, label %18, !dbg !3112

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3112
  %15 = sext i32 %11 to i64, !dbg !3112
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3112
  %17 = add i32 %11, 8, !dbg !3112
  store i32 %17, i32* %8, align 8, !dbg !3112
  br label %21, !dbg !3112

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3112
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3112
  store i8* %20, i8** %10, align 8, !dbg !3112
  br label %21, !dbg !3112

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3112
  %25 = load i8*, i8** %24, align 8, !dbg !3112
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3115
  store i8* %25, i8** %26, align 16, !dbg !3116, !tbaa !657
  %27 = icmp eq i8* %25, null, !dbg !3117
  br i1 %27, label %30, label %28, !dbg !3118

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3111
  %29 = icmp ult i32 %22, 41, !dbg !3112
  br i1 %29, label %35, label %32, !dbg !3112

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3119
  call void @llvm.dbg.value(metadata i64 %31, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %31, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3120
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3121
  ret void, !dbg !3121

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3112
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3112
  store i8* %34, i8** %10, align 8, !dbg !3112
  br label %40, !dbg !3112

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3112
  %37 = sext i32 %22 to i64, !dbg !3112
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3112
  %39 = add i32 %22, 8, !dbg !3112
  store i32 %39, i32* %8, align 8, !dbg !3112
  br label %40, !dbg !3112

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3112
  %44 = load i8*, i8** %43, align 8, !dbg !3112
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3115
  store i8* %44, i8** %45, align 8, !dbg !3116, !tbaa !657
  %46 = icmp eq i8* %44, null, !dbg !3117
  br i1 %46, label %30, label %47, !dbg !3118

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3111
  %48 = icmp ult i32 %41, 41, !dbg !3112
  br i1 %48, label %52, label %49, !dbg !3112

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3112
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3112
  store i8* %51, i8** %10, align 8, !dbg !3112
  br label %57, !dbg !3112

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3112
  %54 = sext i32 %41 to i64, !dbg !3112
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3112
  %56 = add i32 %41, 8, !dbg !3112
  store i32 %56, i32* %8, align 8, !dbg !3112
  br label %57, !dbg !3112

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3112
  %61 = load i8*, i8** %60, align 8, !dbg !3112
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3115
  store i8* %61, i8** %62, align 16, !dbg !3116, !tbaa !657
  %63 = icmp eq i8* %61, null, !dbg !3117
  br i1 %63, label %30, label %64, !dbg !3118

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3111
  %65 = icmp ult i32 %58, 41, !dbg !3112
  br i1 %65, label %69, label %66, !dbg !3112

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3112
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3112
  store i8* %68, i8** %10, align 8, !dbg !3112
  br label %74, !dbg !3112

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3112
  %71 = sext i32 %58 to i64, !dbg !3112
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3112
  %73 = add i32 %58, 8, !dbg !3112
  store i32 %73, i32* %8, align 8, !dbg !3112
  br label %74, !dbg !3112

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3112
  %78 = load i8*, i8** %77, align 8, !dbg !3112
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3115
  store i8* %78, i8** %79, align 8, !dbg !3116, !tbaa !657
  %80 = icmp eq i8* %78, null, !dbg !3117
  br i1 %80, label %30, label %81, !dbg !3118

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3111
  %82 = icmp ult i32 %75, 41, !dbg !3112
  br i1 %82, label %86, label %83, !dbg !3112

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3112
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3112
  store i8* %85, i8** %10, align 8, !dbg !3112
  br label %91, !dbg !3112

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3112
  %88 = sext i32 %75 to i64, !dbg !3112
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3112
  %90 = add i32 %75, 8, !dbg !3112
  store i32 %90, i32* %8, align 8, !dbg !3112
  br label %91, !dbg !3112

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3112
  %95 = load i8*, i8** %94, align 8, !dbg !3112
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3115
  store i8* %95, i8** %96, align 16, !dbg !3116, !tbaa !657
  %97 = icmp eq i8* %95, null, !dbg !3117
  br i1 %97, label %30, label %98, !dbg !3118

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3111
  %99 = icmp ult i32 %92, 41, !dbg !3112
  br i1 %99, label %103, label %100, !dbg !3112

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3112
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3112
  store i8* %102, i8** %10, align 8, !dbg !3112
  br label %108, !dbg !3112

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3112
  %105 = sext i32 %92 to i64, !dbg !3112
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3112
  %107 = add i32 %92, 8, !dbg !3112
  store i32 %107, i32* %8, align 8, !dbg !3112
  br label %108, !dbg !3112

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3112
  %111 = load i8*, i8** %110, align 8, !dbg !3112
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3115
  store i8* %111, i8** %112, align 8, !dbg !3116, !tbaa !657
  %113 = icmp eq i8* %111, null, !dbg !3117
  br i1 %113, label %30, label %114, !dbg !3118

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 6, metadata !3101, metadata !DIExpression()), !dbg !3111
  %115 = load i8*, i8** %10, align 8, !dbg !3112
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3112
  store i8* %116, i8** %10, align 8, !dbg !3112
  %117 = bitcast i8* %115 to i8**, !dbg !3112
  %118 = load i8*, i8** %117, align 8, !dbg !3112
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3115
  store i8* %118, i8** %119, align 16, !dbg !3116, !tbaa !657
  %120 = icmp eq i8* %118, null, !dbg !3117
  br i1 %120, label %30, label %121, !dbg !3118

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 7, metadata !3101, metadata !DIExpression()), !dbg !3111
  %122 = load i8*, i8** %10, align 8, !dbg !3112
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3112
  store i8* %123, i8** %10, align 8, !dbg !3112
  %124 = bitcast i8* %122 to i8**, !dbg !3112
  %125 = load i8*, i8** %124, align 8, !dbg !3112
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3115
  store i8* %125, i8** %126, align 8, !dbg !3116, !tbaa !657
  %127 = icmp eq i8* %125, null, !dbg !3117
  br i1 %127, label %30, label %128, !dbg !3118

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 8, metadata !3101, metadata !DIExpression()), !dbg !3111
  %129 = load i8*, i8** %10, align 8, !dbg !3112
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3112
  store i8* %130, i8** %10, align 8, !dbg !3112
  %131 = bitcast i8* %129 to i8**, !dbg !3112
  %132 = load i8*, i8** %131, align 8, !dbg !3112
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3115
  store i8* %132, i8** %133, align 16, !dbg !3116, !tbaa !657
  %134 = icmp eq i8* %132, null, !dbg !3117
  br i1 %134, label %30, label %135, !dbg !3118

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3101, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 9, metadata !3101, metadata !DIExpression()), !dbg !3111
  %136 = load i8*, i8** %10, align 8, !dbg !3112
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3112
  store i8* %137, i8** %10, align 8, !dbg !3112
  %138 = bitcast i8* %136 to i8**, !dbg !3112
  %139 = load i8*, i8** %138, align 8, !dbg !3112
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3115
  store i8* %139, i8** %140, align 8, !dbg !3116, !tbaa !657
  %141 = icmp eq i8* %139, null, !dbg !3117
  %142 = select i1 %141, i64 9, i64 10, !dbg !3118
  br label %30, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3122 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3126, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %1, metadata !3127, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8* %2, metadata !3128, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %3, metadata !3129, metadata !DIExpression()), !dbg !3139
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3130, metadata !DIExpression()), !dbg !3141
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3142
  call void @llvm.va_start(i8* nonnull %6), !dbg !3142
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3143
  call void @llvm.va_end(i8* nonnull %6), !dbg !3144
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3145
  ret void, !dbg !3145
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3146 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.114, i64 0, i64 0), i32 5) #10, !dbg !3147
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.115, i64 0, i64 0)) #10, !dbg !3147
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.116, i64 0, i64 0), i32 5) #10, !dbg !3148
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.117, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.118, i64 0, i64 0)) #10, !dbg !3148
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.119, i64 0, i64 0), i32 5) #10, !dbg !3149
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3149, !tbaa !657
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3149
  ret void, !dbg !3150
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3151 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3158
  %3 = udiv i64 9223372036854775807, %1, !dbg !3159
  %4 = icmp ult i64 %3, %0, !dbg !3159
  br i1 %4, label %5, label %6, !dbg !3161

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3162
  unreachable, !dbg !3162

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()) #10, !dbg !3171
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %8, metadata !3170, metadata !DIExpression()) #10, !dbg !3174
  %9 = icmp eq i8* %8, null, !dbg !3175
  %10 = icmp ne i64 %7, 0, !dbg !3177
  %11 = and i1 %10, %9, !dbg !3178
  br i1 %11, label %12, label %13, !dbg !3178

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3179
  unreachable, !dbg !3179

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3180
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3165 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()), !dbg !3181
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()), !dbg !3183
  %3 = icmp eq i8* %2, null, !dbg !3184
  %4 = icmp ne i64 %0, 0, !dbg !3185
  %5 = and i1 %4, %3, !dbg !3186
  br i1 %5, label %6, label %7, !dbg !3186

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3187
  unreachable, !dbg !3187

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3188
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %1, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %2, metadata !3195, metadata !DIExpression()), !dbg !3198
  %4 = udiv i64 9223372036854775807, %2, !dbg !3199
  %5 = icmp ult i64 %4, %1, !dbg !3199
  br i1 %5, label %6, label %7, !dbg !3201

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3202
  unreachable, !dbg !3202

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %8, metadata !3209, metadata !DIExpression()) #10, !dbg !3212
  %9 = icmp eq i64 %8, 0, !dbg !3213
  %10 = icmp ne i8* %0, null, !dbg !3215
  %11 = and i1 %10, %9, !dbg !3216
  br i1 %11, label %12, label %13, !dbg !3216

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3217
  br label %19, !dbg !3219

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %14, metadata !3204, metadata !DIExpression()) #10, !dbg !3210
  %15 = icmp eq i8* %14, null, !dbg !3221
  %16 = icmp ne i64 %8, 0, !dbg !3223
  %17 = and i1 %16, %15, !dbg !3224
  br i1 %17, label %18, label %19, !dbg !3224

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3225
  unreachable, !dbg !3225

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3226
  ret i8* %20, !dbg !3227
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3229
  %3 = icmp eq i64 %1, 0, !dbg !3230
  %4 = icmp ne i8* %0, null, !dbg !3231
  %5 = and i1 %4, %3, !dbg !3232
  br i1 %5, label %6, label %7, !dbg !3232

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3233
  br label %13, !dbg !3234

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %8, metadata !3204, metadata !DIExpression()), !dbg !3228
  %9 = icmp eq i8* %8, null, !dbg !3236
  %10 = icmp ne i64 %1, 0, !dbg !3237
  %11 = and i1 %10, %9, !dbg !3238
  br i1 %11, label %12, label %13, !dbg !3238

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3239
  unreachable, !dbg !3239

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3240
  ret i8* %14, !dbg !3241
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %2, metadata !196, metadata !DIExpression()), !dbg !3244
  %4 = load i64, i64* %1, align 8, !dbg !3245, !tbaa !2287
  call void @llvm.dbg.value(metadata i64 %4, metadata !197, metadata !DIExpression()), !dbg !3246
  %5 = icmp eq i8* %0, null, !dbg !3247
  br i1 %5, label %6, label %20, !dbg !3249

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3250
  br i1 %7, label %8, label %13, !dbg !3253

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %9, metadata !197, metadata !DIExpression()), !dbg !3246
  %10 = icmp ugt i64 %2, 128, !dbg !3256
  %11 = zext i1 %10 to i64, !dbg !3256
  %12 = add nuw nsw i64 %9, %11, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %12, metadata !197, metadata !DIExpression()), !dbg !3246
  br label %13, !dbg !3258

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3259
  call void @llvm.dbg.value(metadata i64 %14, metadata !197, metadata !DIExpression()), !dbg !3246
  %15 = udiv i64 9223372036854775807, %2, !dbg !3260
  %16 = icmp ult i64 %15, %14, !dbg !3260
  br i1 %16, label %19, label %17, !dbg !3262

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3246
  store i64 %14, i64* %1, align 8, !dbg !3263, !tbaa !2287
  %18 = mul i64 %14, %2, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %28, metadata !3209, metadata !DIExpression()) #10, !dbg !3267
  br label %31, !dbg !3268

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3269
  unreachable, !dbg !3269

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3270
  %22 = icmp ugt i64 %21, %4, !dbg !3273
  br i1 %22, label %24, label %23, !dbg !3274

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3275
  unreachable, !dbg !3275

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3276
  %26 = add i64 %4, 1, !dbg !3277
  %27 = add i64 %26, %25, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %27, metadata !197, metadata !DIExpression()), !dbg !3246
  store i64 %27, i64* %1, align 8, !dbg !3263, !tbaa !2287
  %28 = mul i64 %27, %2, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %28, metadata !3209, metadata !DIExpression()) #10, !dbg !3267
  %29 = icmp eq i64 %28, 0, !dbg !3279
  br i1 %29, label %30, label %31, !dbg !3268

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3280
  br label %38, !dbg !3281

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %33, metadata !3204, metadata !DIExpression()) #10, !dbg !3265
  %34 = icmp eq i8* %33, null, !dbg !3283
  %35 = icmp ne i64 %32, 0, !dbg !3284
  %36 = and i1 %35, %34, !dbg !3285
  br i1 %36, label %37, label %38, !dbg !3285

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3286
  unreachable, !dbg !3286

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3287
  ret i8* %39, !dbg !3288
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #10, !dbg !3293
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()) #10, !dbg !3296
  %3 = icmp eq i8* %2, null, !dbg !3297
  %4 = icmp ne i64 %0, 0, !dbg !3298
  %5 = and i1 %4, %3, !dbg !3299
  br i1 %5, label %6, label %7, !dbg !3299

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3300
  unreachable, !dbg !3300

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3302 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64* %1, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %0, metadata !194, metadata !DIExpression()) #10, !dbg !3310
  call void @llvm.dbg.value(metadata i64* %1, metadata !195, metadata !DIExpression()) #10, !dbg !3312
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()) #10, !dbg !3313
  %3 = load i64, i64* %1, align 8, !dbg !3314, !tbaa !2287
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #10, !dbg !3315
  %4 = icmp eq i8* %0, null, !dbg !3316
  br i1 %4, label %5, label %12, !dbg !3317

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3318
  br i1 %6, label %9, label %7, !dbg !3319

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !197, metadata !DIExpression()) #10, !dbg !3315
  %8 = icmp slt i64 %3, 0, !dbg !3320
  br i1 %8, label %11, label %9, !dbg !3321

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3315
  store i64 %10, i64* %1, align 8, !dbg !3322, !tbaa !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %18, metadata !3209, metadata !DIExpression()) #10, !dbg !3325
  br label %21, !dbg !3326

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3327
  unreachable, !dbg !3327

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3328
  br i1 %13, label %15, label %14, !dbg !3329

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3330
  unreachable, !dbg !3330

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3331
  %17 = add i64 %3, 1, !dbg !3332
  %18 = add i64 %17, %16, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %18, metadata !197, metadata !DIExpression()) #10, !dbg !3315
  store i64 %18, i64* %1, align 8, !dbg !3322, !tbaa !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #10, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %18, metadata !3209, metadata !DIExpression()) #10, !dbg !3325
  %19 = icmp eq i64 %18, 0, !dbg !3334
  br i1 %19, label %20, label %21, !dbg !3326

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3335
  br label %28, !dbg !3336

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %23, metadata !3204, metadata !DIExpression()) #10, !dbg !3323
  %24 = icmp eq i8* %23, null, !dbg !3338
  %25 = icmp ne i64 %22, 0, !dbg !3339
  %26 = and i1 %25, %24, !dbg !3340
  br i1 %26, label %27, label %28, !dbg !3340

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3341
  unreachable, !dbg !3341

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3342
  ret i8* %29, !dbg !3343
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3344 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #10, !dbg !3348
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()) #10, !dbg !3351
  %3 = icmp eq i8* %2, null, !dbg !3352
  %4 = icmp ne i64 %0, 0, !dbg !3353
  %5 = and i1 %4, %3, !dbg !3354
  br i1 %5, label %6, label %7, !dbg !3354

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3355
  unreachable, !dbg !3355

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3356
  ret i8* %2, !dbg !3357
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3358 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3364
  %3 = udiv i64 9223372036854775807, %1, !dbg !3365
  %4 = icmp ult i64 %3, %0, !dbg !3365
  br i1 %4, label %8, label %5, !dbg !3367

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %6, metadata !3362, metadata !DIExpression()), !dbg !3369
  %7 = icmp eq i8* %6, null, !dbg !3370
  br i1 %7, label %8, label %9, !dbg !3371

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3372
  unreachable, !dbg !3372

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()) #10, !dbg !3384
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %3, metadata !3170, metadata !DIExpression()) #10, !dbg !3387
  %4 = icmp eq i8* %3, null, !dbg !3388
  %5 = icmp ne i64 %1, 0, !dbg !3389
  %6 = and i1 %5, %4, !dbg !3390
  br i1 %6, label %7, label %8, !dbg !3390

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3391
  unreachable, !dbg !3391

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3392
  ret i8* %3, !dbg !3393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3396, metadata !DIExpression()), !dbg !3397
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3398
  %3 = add i64 %2, 1, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3381, metadata !DIExpression()) #10, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %3, metadata !3164, metadata !DIExpression()) #10, !dbg !3403
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %4, metadata !3170, metadata !DIExpression()) #10, !dbg !3406
  %5 = icmp eq i8* %4, null, !dbg !3407
  %6 = icmp ne i64 %3, 0, !dbg !3408
  %7 = and i1 %6, %5, !dbg !3409
  br i1 %7, label %8, label %9, !dbg !3409

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3410
  unreachable, !dbg !3410

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3411
  ret i8* %4, !dbg !3412
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3413 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3415, !tbaa !846
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #10, !dbg !3416
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* %2) #10, !dbg !3417
  tail call void @abort() #15, !dbg !3418
  unreachable, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3419 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3424, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 %1, metadata !3425, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %2, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %3, metadata !3427, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %4, metadata !3428, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %5, metadata !3429, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %6, metadata !3430, metadata !DIExpression()), !dbg !3440
  %9 = bitcast i64* %8 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3441
  call void @llvm.dbg.value(metadata i64* %8, metadata !3433, metadata !DIExpression(DW_OP_deref)), !dbg !3442
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %10, metadata !3431, metadata !DIExpression()), !dbg !3444
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %27
    i32 3, label %29
  ], !dbg !3445

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #16, !dbg !3446
  br label %31, !dbg !3445

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3449, !tbaa !2287
  call void @llvm.dbg.value(metadata i64 %14, metadata !3433, metadata !DIExpression()), !dbg !3442
  %15 = icmp slt i64 %14, %2, !dbg !3453
  %16 = icmp sgt i64 %14, %3, !dbg !3454
  %17 = or i1 %15, %16, !dbg !3455
  br i1 %17, label %18, label %40, !dbg !3455

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3431, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %14, metadata !3433, metadata !DIExpression()), !dbg !3442
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3456
  br i1 %19, label %20, label %22, !dbg !3459

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #16, !dbg !3460
  store i32 75, i32* %21, align 4, !dbg !3461, !tbaa !846
  br label %31, !dbg !3460

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3462
  %24 = tail call i32* @__errno_location() #16, !dbg !3464
  br i1 %23, label %25, label %26, !dbg !3465

; <label>:25:                                     ; preds = %22
  store i32 75, i32* %24, align 4, !dbg !3466, !tbaa !846
  br label %31, !dbg !3467

; <label>:26:                                     ; preds = %22
  store i32 34, i32* %24, align 4, !dbg !3468, !tbaa !846
  br label %31

; <label>:27:                                     ; preds = %7
  %28 = tail call i32* @__errno_location() #16, !dbg !3469
  store i32 75, i32* %28, align 4, !dbg !3471, !tbaa !846
  br label %31, !dbg !3469

; <label>:29:                                     ; preds = %7
  %30 = tail call i32* @__errno_location() #16, !dbg !3472
  store i32 0, i32* %30, align 4, !dbg !3474, !tbaa !846
  br label %31, !dbg !3472

; <label>:31:                                     ; preds = %11, %20, %25, %26, %27, %29
  %32 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %25 ], [ %24, %26 ], [ %28, %27 ], [ %30, %29 ], !dbg !3446
  %33 = icmp eq i32 %6, 0, !dbg !3475
  %34 = select i1 %33, i32 1, i32 %6, !dbg !3475
  %35 = load i32, i32* %32, align 4, !dbg !3446, !tbaa !846
  %36 = icmp eq i32 %35, 22, !dbg !3476
  %37 = select i1 %36, i32 0, i32 %35, !dbg !3446
  %38 = call i8* @quote(i8* %0) #10, !dbg !3477
  call void (i32, i32, i8*, ...) @error(i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i64 0, i64 0), i8* %5, i8* %38) #10, !dbg !3478
  %39 = load i64, i64* %8, align 8, !dbg !3479, !tbaa !2287
  br label %40, !dbg !3480

; <label>:40:                                     ; preds = %13, %31
  %41 = phi i64 [ %14, %13 ], [ %39, %31 ], !dbg !3479
  call void @llvm.dbg.value(metadata i64 %41, metadata !3433, metadata !DIExpression()), !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3481
  ret i64 %41, !dbg !3482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8* %3, metadata !3490, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* %4, metadata !3491, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %5, metadata !3492, metadata !DIExpression()), !dbg !3498
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3499
  ret i64 %7, !dbg !3500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3501 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8** %1, metadata !3508, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %2, metadata !3509, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64* %3, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %4, metadata !3511, metadata !DIExpression()), !dbg !3525
  %7 = bitcast i8** %6 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3515, metadata !DIExpression()), !dbg !3527
  %8 = icmp ult i32 %2, 37, !dbg !3528
  br i1 %8, label %10, label %9, !dbg !3528

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.138, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #15, !dbg !3528
  unreachable, !dbg !3528

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3531
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3531
  call void @llvm.dbg.value(metadata i8** %12, metadata !3513, metadata !DIExpression()), !dbg !3532
  %13 = tail call i32* @__errno_location() #16, !dbg !3533
  store i32 0, i32* %13, align 4, !dbg !3534, !tbaa !846
  call void @llvm.dbg.value(metadata i8* %0, metadata !3535, metadata !DIExpression()) #10, !dbg !3545
  call void @llvm.dbg.value(metadata i8** %12, metadata !3543, metadata !DIExpression()) #10, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %2, metadata !3544, metadata !DIExpression()) #10, !dbg !3545
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %14, metadata !3514, metadata !DIExpression()), !dbg !3548
  %15 = load i8*, i8** %12, align 8, !dbg !3549, !tbaa !657
  %16 = icmp eq i8* %15, %0, !dbg !3551
  br i1 %16, label %17, label %26, !dbg !3552

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3553
  br i1 %18, label %196, label %19, !dbg !3556

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3557, !tbaa !796
  %21 = icmp eq i8 %20, 0, !dbg !3557
  br i1 %21, label %196, label %22, !dbg !3558

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3557
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !3559
  %25 = icmp eq i8* %24, null, !dbg !3559
  br i1 %25, label %196, label %33, !dbg !3560

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3561, !tbaa !846
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3563

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !3515, metadata !DIExpression()), !dbg !3527
  br label %29, !dbg !3564

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !3566
  call void @llvm.dbg.value(metadata i32 %30, metadata !3515, metadata !DIExpression()), !dbg !3527
  %31 = icmp eq i8* %4, null, !dbg !3567
  br i1 %31, label %32, label %33, !dbg !3569

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !3514, metadata !DIExpression()), !dbg !3548
  store i64 %14, i64* %3, align 8, !dbg !3570, !tbaa !2287
  br label %196, !dbg !3572

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3573, !tbaa !796
  %37 = sext i8 %36 to i32, !dbg !3573
  %38 = icmp eq i8 %36, 0, !dbg !3574
  br i1 %38, label %193, label %39, !dbg !3575

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !3516, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3577
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3578
  %41 = icmp eq i8* %40, null, !dbg !3578
  br i1 %41, label %42, label %44, !dbg !3580

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !3514, metadata !DIExpression()), !dbg !3548
  store i64 %35, i64* %3, align 8, !dbg !3581, !tbaa !2287
  %43 = or i32 %34, 2, !dbg !3583
  br label %196, !dbg !3584

; <label>:44:                                     ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3585

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3586
  %47 = icmp eq i8* %46, null, !dbg !3586
  br i1 %47, label %58, label %48, !dbg !3589

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3590
  %50 = load i8, i8* %49, align 1, !dbg !3590, !tbaa !796
  %51 = sext i8 %50 to i32, !dbg !3590
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3591

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3592
  %54 = load i8, i8* %53, align 1, !dbg !3592, !tbaa !796
  %55 = icmp eq i8 %54, 66, !dbg !3595
  %56 = select i1 %55, i64 3, i64 1, !dbg !3596
  br label %58, !dbg !3596

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !3516, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 2, metadata !3519, metadata !DIExpression()), !dbg !3577
  br label %58, !dbg !3597

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3598

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 512, metadata !3599, metadata !DIExpression()), !dbg !3605
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3608
  br i1 %62, label %184, label %63, !dbg !3610

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3611
  %65 = shl nsw i64 %35, 9, !dbg !3613
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3614
  %67 = zext i1 %64 to i32, !dbg !3614
  br label %184, !dbg !3614

; <label>:68:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 1024, metadata !3599, metadata !DIExpression()), !dbg !3615
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3617
  br i1 %69, label %184, label %70, !dbg !3618

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3619
  %72 = shl nsw i64 %35, 10, !dbg !3620
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3621
  %74 = zext i1 %71 to i32, !dbg !3621
  br label %184, !dbg !3621

; <label>:75:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3632
  %76 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3630
  %77 = icmp slt i64 %35, %76, !dbg !3633
  br i1 %77, label %84, label %78, !dbg !3635

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3636
  %80 = icmp slt i64 %79, %35, !dbg !3637
  %81 = mul nsw i64 %35, %59, !dbg !3638
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3639
  %83 = zext i1 %80 to i32, !dbg !3639
  br label %84, !dbg !3639

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ], !dbg !3640
  call void @llvm.dbg.value(metadata i32 %86, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %86, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3630
  %87 = icmp slt i64 %85, %76, !dbg !3633
  br i1 %87, label %204, label %198, !dbg !3635

; <label>:88:                                     ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3643
  %89 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3641
  %90 = icmp slt i64 %35, %89, !dbg !3644
  br i1 %90, label %97, label %91, !dbg !3646

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3647
  %93 = icmp slt i64 %92, %35, !dbg !3648
  %94 = mul nsw i64 %35, %59, !dbg !3649
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3650
  %96 = zext i1 %93 to i32, !dbg !3650
  br label %97, !dbg !3650

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ], !dbg !3651
  call void @llvm.dbg.value(metadata i32 %99, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %99, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3641
  %100 = icmp slt i64 %98, %89, !dbg !3644
  br i1 %100, label %258, label %252, !dbg !3646

; <label>:101:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3654
  %102 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 undef, metadata !3622, metadata !DIExpression()), !dbg !3652
  %103 = icmp slt i64 %35, %102, !dbg !3655
  br i1 %103, label %184, label %104, !dbg !3657

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3658
  %106 = icmp slt i64 %105, %35, !dbg !3659
  %107 = mul nsw i64 %35, %59, !dbg !3660
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3661
  %109 = zext i1 %106 to i32, !dbg !3661
  br label %184, !dbg !3661

; <label>:110:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3664
  %111 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3662
  %112 = icmp slt i64 %35, %111, !dbg !3665
  br i1 %112, label %119, label %113, !dbg !3667

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3668
  %115 = icmp slt i64 %114, %35, !dbg !3669
  %116 = mul nsw i64 %35, %59, !dbg !3670
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3671
  %118 = zext i1 %115 to i32, !dbg !3671
  br label %119, !dbg !3671

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ], !dbg !3672
  call void @llvm.dbg.value(metadata i32 %121, metadata !3629, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %121, metadata !3629, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3662
  %122 = icmp slt i64 %120, %111, !dbg !3665
  br i1 %122, label %279, label %273, !dbg !3667

; <label>:123:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3675
  %124 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3673
  %125 = icmp slt i64 %35, %124, !dbg !3676
  br i1 %125, label %132, label %126, !dbg !3678

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3679
  %128 = icmp slt i64 %127, %35, !dbg !3680
  %129 = mul nsw i64 %35, %59, !dbg !3681
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3682
  %131 = zext i1 %128 to i32, !dbg !3682
  br label %132, !dbg !3682

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ], !dbg !3683
  call void @llvm.dbg.value(metadata i32 %134, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %134, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3673
  %135 = icmp slt i64 %133, %124, !dbg !3676
  br i1 %135, label %289, label %283, !dbg !3678

; <label>:136:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3686
  %137 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3684
  %138 = icmp slt i64 %35, %137, !dbg !3687
  br i1 %138, label %145, label %139, !dbg !3689

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3690
  %141 = icmp slt i64 %140, %35, !dbg !3691
  %142 = mul nsw i64 %35, %59, !dbg !3692
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3693
  %144 = zext i1 %141 to i32, !dbg !3693
  br label %145, !dbg !3693

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ], !dbg !3694
  call void @llvm.dbg.value(metadata i32 %147, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %147, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3684
  %148 = icmp slt i64 %146, %137, !dbg !3687
  br i1 %148, label %332, label %326, !dbg !3689

; <label>:149:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3599, metadata !DIExpression()), !dbg !3695
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3697
  br i1 %150, label %184, label %151, !dbg !3698

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3699
  %153 = shl nsw i64 %35, 1, !dbg !3700
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3701
  %155 = zext i1 %152 to i32, !dbg !3701
  br label %184, !dbg !3701

; <label>:156:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 8, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3704
  %157 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 8, metadata !3622, metadata !DIExpression()), !dbg !3702
  %158 = icmp slt i64 %35, %157, !dbg !3705
  br i1 %158, label %165, label %159, !dbg !3707

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3708
  %161 = icmp slt i64 %160, %35, !dbg !3709
  %162 = mul nsw i64 %35, %59, !dbg !3710
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3711
  %164 = zext i1 %161 to i32, !dbg !3711
  br label %165, !dbg !3711

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ], !dbg !3712
  call void @llvm.dbg.value(metadata i32 %167, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 7, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %167, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 7, metadata !3622, metadata !DIExpression()), !dbg !3702
  %168 = icmp slt i64 %166, %157, !dbg !3705
  br i1 %168, label %364, label %358, !dbg !3707

; <label>:169:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 7, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3715
  %170 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 7, metadata !3622, metadata !DIExpression()), !dbg !3713
  %171 = icmp slt i64 %35, %170, !dbg !3716
  br i1 %171, label %178, label %172, !dbg !3718

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3719
  %174 = icmp slt i64 %173, %35, !dbg !3720
  %175 = mul nsw i64 %35, %59, !dbg !3721
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3722
  %177 = zext i1 %174 to i32, !dbg !3722
  br label %178, !dbg !3722

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ], !dbg !3723
  call void @llvm.dbg.value(metadata i32 %180, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %180, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3713
  %181 = icmp slt i64 %179, %170, !dbg !3716
  br i1 %181, label %440, label %434, !dbg !3718

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !3514, metadata !DIExpression()), !dbg !3548
  store i64 %35, i64* %3, align 8, !dbg !3724, !tbaa !2287
  %183 = or i32 %34, 2, !dbg !3725
  br label %196, !dbg !3726

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %151, %70, %63, %58, %61, %68, %149
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %149 ], [ %66, %63 ], [ %73, %70 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ], !dbg !3727
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %149 ], [ %67, %63 ], [ %74, %70 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ], !dbg !3727
  call void @llvm.dbg.value(metadata i32 %186, metadata !3520, metadata !DIExpression()), !dbg !3728
  %187 = or i32 %186, %34, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %187, metadata !3515, metadata !DIExpression()), !dbg !3527
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3730
  store i8* %188, i8** %12, align 8, !dbg !3730, !tbaa !657
  %189 = load i8, i8* %188, align 1, !dbg !3731, !tbaa !796
  %190 = icmp eq i8 %189, 0, !dbg !3731
  %191 = or i32 %187, 2, !dbg !3733
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %192, metadata !3515, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %192, metadata !3515, metadata !DIExpression()), !dbg !3527
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ], !dbg !3735
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ], !dbg !3527
  call void @llvm.dbg.value(metadata i32 %195, metadata !3515, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %194, metadata !3514, metadata !DIExpression()), !dbg !3548
  store i64 %194, i64* %3, align 8, !dbg !3736, !tbaa !2287
  br label %196, !dbg !3737

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ], !dbg !3738
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3740
  ret i32 %197, !dbg !3740

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3636
  %200 = icmp slt i64 %199, %85, !dbg !3637
  %201 = mul nsw i64 %85, %59, !dbg !3638
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3639
  %203 = zext i1 %200 to i32, !dbg !3639
  br label %204, !dbg !3639

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ], !dbg !3640
  %207 = or i32 %206, %86, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %207, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %207, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3630
  %208 = icmp slt i64 %205, %76, !dbg !3633
  br i1 %208, label %215, label %209, !dbg !3635

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3636
  %211 = icmp slt i64 %210, %205, !dbg !3637
  %212 = mul nsw i64 %205, %59, !dbg !3638
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3639
  %214 = zext i1 %211 to i32, !dbg !3639
  br label %215, !dbg !3639

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ], !dbg !3640
  %218 = or i32 %217, %207, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %218, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %218, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3630
  %219 = icmp slt i64 %216, %76, !dbg !3633
  br i1 %219, label %226, label %220, !dbg !3635

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3636
  %222 = icmp slt i64 %221, %216, !dbg !3637
  %223 = mul nsw i64 %216, %59, !dbg !3638
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3639
  %225 = zext i1 %222 to i32, !dbg !3639
  br label %226, !dbg !3639

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ], !dbg !3640
  %229 = or i32 %228, %218, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %229, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %229, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3630
  %230 = icmp slt i64 %227, %76, !dbg !3633
  br i1 %230, label %237, label %231, !dbg !3635

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3636
  %233 = icmp slt i64 %232, %227, !dbg !3637
  %234 = mul nsw i64 %227, %59, !dbg !3638
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3639
  %236 = zext i1 %233 to i32, !dbg !3639
  br label %237, !dbg !3639

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ], !dbg !3640
  %240 = or i32 %239, %229, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %240, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %240, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3630
  %241 = icmp slt i64 %238, %76, !dbg !3633
  br i1 %241, label %248, label %242, !dbg !3635

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3636
  %244 = icmp slt i64 %243, %238, !dbg !3637
  %245 = mul nsw i64 %238, %59, !dbg !3638
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3639
  %247 = zext i1 %244 to i32, !dbg !3639
  br label %248, !dbg !3639

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ], !dbg !3727
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ], !dbg !3640
  %251 = or i32 %250, %240, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %251, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3630
  br label %184, !dbg !3729

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3647
  %254 = icmp slt i64 %253, %98, !dbg !3648
  %255 = mul nsw i64 %98, %59, !dbg !3649
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3650
  %257 = zext i1 %254 to i32, !dbg !3650
  br label %258, !dbg !3650

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ], !dbg !3651
  %261 = or i32 %260, %99, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %261, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %261, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3641
  %262 = icmp slt i64 %259, %89, !dbg !3644
  br i1 %262, label %269, label %263, !dbg !3646

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3647
  %265 = icmp slt i64 %264, %259, !dbg !3648
  %266 = mul nsw i64 %259, %59, !dbg !3649
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3650
  %268 = zext i1 %265 to i32, !dbg !3650
  br label %269, !dbg !3650

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ], !dbg !3727
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ], !dbg !3651
  %272 = or i32 %271, %261, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %272, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3641
  br label %184, !dbg !3729

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3668
  %275 = icmp slt i64 %274, %120, !dbg !3669
  %276 = mul nsw i64 %120, %59, !dbg !3670
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3671
  %278 = zext i1 %275 to i32, !dbg !3671
  br label %279, !dbg !3671

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ], !dbg !3727
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ], !dbg !3672
  %282 = or i32 %281, %121, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %282, metadata !3629, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3662
  br label %184, !dbg !3729

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3679
  %285 = icmp slt i64 %284, %133, !dbg !3680
  %286 = mul nsw i64 %133, %59, !dbg !3681
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3682
  %288 = zext i1 %285 to i32, !dbg !3682
  br label %289, !dbg !3682

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ], !dbg !3683
  %292 = or i32 %291, %134, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %292, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %292, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3673
  %293 = icmp slt i64 %290, %124, !dbg !3676
  br i1 %293, label %300, label %294, !dbg !3678

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3679
  %296 = icmp slt i64 %295, %290, !dbg !3680
  %297 = mul nsw i64 %290, %59, !dbg !3681
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3682
  %299 = zext i1 %296 to i32, !dbg !3682
  br label %300, !dbg !3682

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ], !dbg !3683
  %303 = or i32 %302, %292, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %303, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %303, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3673
  %304 = icmp slt i64 %301, %124, !dbg !3676
  br i1 %304, label %311, label %305, !dbg !3678

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3679
  %307 = icmp slt i64 %306, %301, !dbg !3680
  %308 = mul nsw i64 %301, %59, !dbg !3681
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3682
  %310 = zext i1 %307 to i32, !dbg !3682
  br label %311, !dbg !3682

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ], !dbg !3683
  %314 = or i32 %313, %303, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %314, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %314, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3673
  %315 = icmp slt i64 %312, %124, !dbg !3676
  br i1 %315, label %322, label %316, !dbg !3678

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3679
  %318 = icmp slt i64 %317, %312, !dbg !3680
  %319 = mul nsw i64 %312, %59, !dbg !3681
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3682
  %321 = zext i1 %318 to i32, !dbg !3682
  br label %322, !dbg !3682

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ], !dbg !3727
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ], !dbg !3683
  %325 = or i32 %324, %314, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %325, metadata !3629, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3673
  br label %184, !dbg !3729

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3690
  %328 = icmp slt i64 %327, %146, !dbg !3691
  %329 = mul nsw i64 %146, %59, !dbg !3692
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3693
  %331 = zext i1 %328 to i32, !dbg !3693
  br label %332, !dbg !3693

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ], !dbg !3694
  %335 = or i32 %334, %147, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %335, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %335, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3684
  %336 = icmp slt i64 %333, %137, !dbg !3687
  br i1 %336, label %343, label %337, !dbg !3689

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3690
  %339 = icmp slt i64 %338, %333, !dbg !3691
  %340 = mul nsw i64 %333, %59, !dbg !3692
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3693
  %342 = zext i1 %339 to i32, !dbg !3693
  br label %343, !dbg !3693

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ], !dbg !3694
  %346 = or i32 %345, %335, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %346, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %346, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3684
  %347 = icmp slt i64 %344, %137, !dbg !3687
  br i1 %347, label %354, label %348, !dbg !3689

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3690
  %350 = icmp slt i64 %349, %344, !dbg !3691
  %351 = mul nsw i64 %344, %59, !dbg !3692
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3693
  %353 = zext i1 %350 to i32, !dbg !3693
  br label %354, !dbg !3693

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ], !dbg !3727
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ], !dbg !3694
  %357 = or i32 %356, %346, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %357, metadata !3629, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3684
  br label %184, !dbg !3729

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3708
  %360 = icmp slt i64 %359, %166, !dbg !3709
  %361 = mul nsw i64 %166, %59, !dbg !3710
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3711
  %363 = zext i1 %360 to i32, !dbg !3711
  br label %364, !dbg !3711

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ], !dbg !3712
  %367 = or i32 %366, %167, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %367, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %367, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 6, metadata !3622, metadata !DIExpression()), !dbg !3702
  %368 = icmp slt i64 %365, %157, !dbg !3705
  br i1 %368, label %375, label %369, !dbg !3707

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3708
  %371 = icmp slt i64 %370, %365, !dbg !3709
  %372 = mul nsw i64 %365, %59, !dbg !3710
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3711
  %374 = zext i1 %371 to i32, !dbg !3711
  br label %375, !dbg !3711

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ], !dbg !3712
  %378 = or i32 %377, %367, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %378, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %378, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3702
  %379 = icmp slt i64 %376, %157, !dbg !3705
  br i1 %379, label %386, label %380, !dbg !3707

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3708
  %382 = icmp slt i64 %381, %376, !dbg !3709
  %383 = mul nsw i64 %376, %59, !dbg !3710
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3711
  %385 = zext i1 %382 to i32, !dbg !3711
  br label %386, !dbg !3711

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ], !dbg !3712
  %389 = or i32 %388, %378, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %389, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %389, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3702
  %390 = icmp slt i64 %387, %157, !dbg !3705
  br i1 %390, label %397, label %391, !dbg !3707

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3708
  %393 = icmp slt i64 %392, %387, !dbg !3709
  %394 = mul nsw i64 %387, %59, !dbg !3710
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3711
  %396 = zext i1 %393 to i32, !dbg !3711
  br label %397, !dbg !3711

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ], !dbg !3712
  %400 = or i32 %399, %389, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %400, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %400, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3702
  %401 = icmp slt i64 %398, %157, !dbg !3705
  br i1 %401, label %408, label %402, !dbg !3707

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3708
  %404 = icmp slt i64 %403, %398, !dbg !3709
  %405 = mul nsw i64 %398, %59, !dbg !3710
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3711
  %407 = zext i1 %404 to i32, !dbg !3711
  br label %408, !dbg !3711

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ], !dbg !3712
  %411 = or i32 %410, %400, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %411, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %411, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3702
  %412 = icmp slt i64 %409, %157, !dbg !3705
  br i1 %412, label %419, label %413, !dbg !3707

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3708
  %415 = icmp slt i64 %414, %409, !dbg !3709
  %416 = mul nsw i64 %409, %59, !dbg !3710
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3711
  %418 = zext i1 %415 to i32, !dbg !3711
  br label %419, !dbg !3711

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ], !dbg !3712
  %422 = or i32 %421, %411, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %422, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %422, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3702
  %423 = icmp slt i64 %420, %157, !dbg !3705
  br i1 %423, label %430, label %424, !dbg !3707

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3708
  %426 = icmp slt i64 %425, %420, !dbg !3709
  %427 = mul nsw i64 %420, %59, !dbg !3710
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3711
  %429 = zext i1 %426 to i32, !dbg !3711
  br label %430, !dbg !3711

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ], !dbg !3727
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ], !dbg !3712
  %433 = or i32 %432, %422, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %433, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3702
  br label %184, !dbg !3729

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3719
  %436 = icmp slt i64 %435, %179, !dbg !3720
  %437 = mul nsw i64 %179, %59, !dbg !3721
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3722
  %439 = zext i1 %436 to i32, !dbg !3722
  br label %440, !dbg !3722

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ], !dbg !3723
  %443 = or i32 %442, %180, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %443, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %443, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 5, metadata !3622, metadata !DIExpression()), !dbg !3713
  %444 = icmp slt i64 %441, %170, !dbg !3716
  br i1 %444, label %451, label %445, !dbg !3718

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3719
  %447 = icmp slt i64 %446, %441, !dbg !3720
  %448 = mul nsw i64 %441, %59, !dbg !3721
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3722
  %450 = zext i1 %447 to i32, !dbg !3722
  br label %451, !dbg !3722

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ], !dbg !3723
  %454 = or i32 %453, %443, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %454, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %454, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 4, metadata !3622, metadata !DIExpression()), !dbg !3713
  %455 = icmp slt i64 %452, %170, !dbg !3716
  br i1 %455, label %462, label %456, !dbg !3718

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3719
  %458 = icmp slt i64 %457, %452, !dbg !3720
  %459 = mul nsw i64 %452, %59, !dbg !3721
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3722
  %461 = zext i1 %458 to i32, !dbg !3722
  br label %462, !dbg !3722

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ], !dbg !3723
  %465 = or i32 %464, %454, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %465, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %465, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 3, metadata !3622, metadata !DIExpression()), !dbg !3713
  %466 = icmp slt i64 %463, %170, !dbg !3716
  br i1 %466, label %473, label %467, !dbg !3718

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3719
  %469 = icmp slt i64 %468, %463, !dbg !3720
  %470 = mul nsw i64 %463, %59, !dbg !3721
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3722
  %472 = zext i1 %469 to i32, !dbg !3722
  br label %473, !dbg !3722

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ], !dbg !3723
  %476 = or i32 %475, %465, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %476, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %476, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 2, metadata !3622, metadata !DIExpression()), !dbg !3713
  %477 = icmp slt i64 %474, %170, !dbg !3716
  br i1 %477, label %484, label %478, !dbg !3718

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3719
  %480 = icmp slt i64 %479, %474, !dbg !3720
  %481 = mul nsw i64 %474, %59, !dbg !3721
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3722
  %483 = zext i1 %480 to i32, !dbg !3722
  br label %484, !dbg !3722

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ], !dbg !3723
  %487 = or i32 %486, %476, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %487, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %487, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 1, metadata !3622, metadata !DIExpression()), !dbg !3713
  %488 = icmp slt i64 %485, %170, !dbg !3716
  br i1 %488, label %495, label %489, !dbg !3718

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3719
  %491 = icmp slt i64 %490, %485, !dbg !3720
  %492 = mul nsw i64 %485, %59, !dbg !3721
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3722
  %494 = zext i1 %491 to i32, !dbg !3722
  br label %495, !dbg !3722

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ], !dbg !3727
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ], !dbg !3723
  %498 = or i32 %497, %487, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %498, metadata !3629, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3713
  br label %184, !dbg !3729
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3748 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3758
  %3 = icmp eq i64 %0, 0, !dbg !3759
  %4 = icmp eq i64 %1, 0, !dbg !3760
  %5 = or i1 %3, %4, !dbg !3761
  br i1 %5, label %12, label %6, !dbg !3761

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %7, metadata !3754, metadata !DIExpression()), !dbg !3763
  %8 = udiv i64 %7, %1, !dbg !3764
  %9 = icmp eq i64 %8, %0, !dbg !3766
  br i1 %9, label %12, label %10, !dbg !3767

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3768
  store i32 12, i32* %11, align 4, !dbg !3770, !tbaa !846
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %13, metadata !3752, metadata !DIExpression()), !dbg !3758
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %15, metadata !3753, metadata !DIExpression()), !dbg !3772
  br label %16, !dbg !3773

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3774
  ret i8* %17, !dbg !3775
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3776 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3793, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %1, metadata !3794, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %2, metadata !3795, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3796, metadata !DIExpression()), !dbg !3805
  %6 = bitcast i32* %5 to i8*, !dbg !3806
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3806
  %7 = icmp eq i32* %0, null, !dbg !3807
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3809
  call void @llvm.dbg.value(metadata i32* %8, metadata !3793, metadata !DIExpression()), !dbg !3802
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %9, metadata !3797, metadata !DIExpression()), !dbg !3811
  %10 = icmp ugt i64 %9, -3, !dbg !3812
  %11 = icmp ne i64 %2, 0, !dbg !3813
  %12 = and i1 %11, %10, !dbg !3814
  br i1 %12, label %13, label %18, !dbg !3814

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3815
  br i1 %14, label %18, label %15, !dbg !3816

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3817, !tbaa !796
  call void @llvm.dbg.value(metadata i8 %16, metadata !3799, metadata !DIExpression()), !dbg !3818
  %17 = zext i8 %16 to i32, !dbg !3819
  store i32 %17, i32* %8, align 4, !dbg !3820, !tbaa !846
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3822
  ret i64 %19, !dbg !3822
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3823 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3862, metadata !DIExpression()), !dbg !3867
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3868
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3869, metadata !DIExpression()), !dbg !3873
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3875
  %4 = load i32, i32* %3, align 8, !dbg !3875, !tbaa !3876
  %5 = and i32 %4, 32, !dbg !3875
  %6 = icmp eq i32 %5, 0, !dbg !3878
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3879
  %8 = icmp ne i32 %7, 0, !dbg !3880
  br i1 %6, label %9, label %19, !dbg !3881

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3883
  %11 = xor i1 %8, true, !dbg !3884
  %12 = or i1 %10, %11, !dbg !3884
  %13 = sext i1 %8 to i32, !dbg !3884
  br i1 %12, label %22, label %14, !dbg !3884

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3885
  %16 = load i32, i32* %15, align 4, !dbg !3885, !tbaa !846
  %17 = icmp ne i32 %16, 9, !dbg !3886
  %18 = sext i1 %17 to i32, !dbg !3887
  br label %22, !dbg !3887

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3888

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3890
  store i32 0, i32* %21, align 4, !dbg !3892, !tbaa !846
  br label %22, !dbg !3890

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3893
  ret i32 %23, !dbg !3894
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i8 1, metadata !3901, metadata !DIExpression()), !dbg !3904
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %2, metadata !3902, metadata !DIExpression()), !dbg !3906
  %3 = icmp eq i8* %2, null, !dbg !3907
  br i1 %3, label %11, label %4, !dbg !3909

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0)) #14, !dbg !3910
  %6 = icmp eq i32 %5, 0, !dbg !3915
  br i1 %6, label %10, label %7, !dbg !3916

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0)) #14, !dbg !3917
  %9 = icmp eq i32 %8, 0, !dbg !3918
  br i1 %9, label %10, label %11, !dbg !3919

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3901, metadata !DIExpression()), !dbg !3904
  br label %11, !dbg !3920

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3922 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %1, metadata !3927, metadata !DIExpression()), !dbg !3929
  %2 = icmp eq i8* %1, null, !dbg !3930
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !3932
  call void @llvm.dbg.value(metadata i8* %3, metadata !3927, metadata !DIExpression()), !dbg !3929
  %4 = load i8, i8* %3, align 1, !dbg !3933, !tbaa !796
  %5 = icmp eq i8 %4, 0, !dbg !3937
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %6, metadata !3927, metadata !DIExpression()), !dbg !3929
  ret i8* %6, !dbg !3939
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3940 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3979, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 0, metadata !3980, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 0, metadata !3982, metadata !DIExpression()), !dbg !3985
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %2, metadata !3981, metadata !DIExpression()), !dbg !3987
  %3 = icmp slt i32 %2, 0, !dbg !3988
  br i1 %3, label %4, label %6, !dbg !3990

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3991
  br label %24, !dbg !3992

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3993
  %8 = icmp eq i32 %7, 0, !dbg !3993
  br i1 %8, label %13, label %9, !dbg !3995

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3996
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3997
  %12 = icmp eq i64 %11, -1, !dbg !3998
  br i1 %12, label %16, label %13, !dbg !3999

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4000
  %15 = icmp eq i32 %14, 0, !dbg !4000
  br i1 %15, label %16, label %18, !dbg !4001

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3980, metadata !DIExpression()), !dbg !3984
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4002
  call void @llvm.dbg.value(metadata i32 %21, metadata !3982, metadata !DIExpression()), !dbg !3985
  br label %24, !dbg !4003

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4004
  %20 = load i32, i32* %19, align 4, !dbg !4004, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %20, metadata !3980, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 %20, metadata !3980, metadata !DIExpression()), !dbg !3984
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4002
  call void @llvm.dbg.value(metadata i32 %21, metadata !3982, metadata !DIExpression()), !dbg !3985
  %22 = icmp eq i32 %20, 0, !dbg !4005
  br i1 %22, label %24, label %23, !dbg !4003

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4007, !tbaa !846
  call void @llvm.dbg.value(metadata i32 -1, metadata !3982, metadata !DIExpression()), !dbg !3985
  br label %24, !dbg !4009

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4010
  ret i32 %25, !dbg !4011
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4012 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4051, metadata !DIExpression()), !dbg !4052
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4053
  br i1 %2, label %6, label %3, !dbg !4055

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4056
  %5 = icmp eq i32 %4, 0, !dbg !4056
  br i1 %5, label %6, label %8, !dbg !4057

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4058
  br label %17, !dbg !4059

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4060, metadata !DIExpression()) #10, !dbg !4065
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4067
  %10 = load i32, i32* %9, align 8, !dbg !4067, !tbaa !3876
  %11 = and i32 %10, 256, !dbg !4069
  %12 = icmp eq i32 %11, 0, !dbg !4069
  br i1 %12, label %15, label %13, !dbg !4070

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4071
  br label %15, !dbg !4071

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4072
  br label %17, !dbg !4073

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4074
  ret i32 %18, !dbg !4075
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4076 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4115, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %1, metadata !4116, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %2, metadata !4117, metadata !DIExpression()), !dbg !4123
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4124
  %5 = load i8*, i8** %4, align 8, !dbg !4124, !tbaa !4125
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4126
  %7 = load i8*, i8** %6, align 8, !dbg !4126, !tbaa !4127
  %8 = icmp eq i8* %5, %7, !dbg !4128
  br i1 %8, label %9, label %28, !dbg !4129

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4130
  %11 = load i8*, i8** %10, align 8, !dbg !4130, !tbaa !4131
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4132
  %13 = load i8*, i8** %12, align 8, !dbg !4132, !tbaa !4133
  %14 = icmp eq i8* %11, %13, !dbg !4134
  br i1 %14, label %15, label %28, !dbg !4135

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4136
  %17 = load i8*, i8** %16, align 8, !dbg !4136, !tbaa !4137
  %18 = icmp eq i8* %17, null, !dbg !4138
  br i1 %18, label %19, label %28, !dbg !4139

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4140
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %21, metadata !4118, metadata !DIExpression()), !dbg !4142
  %22 = icmp eq i64 %21, -1, !dbg !4143
  br i1 %22, label %30, label %23, !dbg !4145

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4146
  %25 = load i32, i32* %24, align 8, !dbg !4147, !tbaa !3876
  %26 = and i32 %25, -17, !dbg !4147
  store i32 %26, i32* %24, align 8, !dbg !4147, !tbaa !3876
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4148
  store i64 %21, i64* %27, align 8, !dbg !4149, !tbaa !4150
  br label %30, !dbg !4151

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4152
  br label %30, !dbg !4153

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4154
  ret i32 %31, !dbg !4155
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
attributes #16 = { nounwind readnone }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !88, !94, !102, !109, !116, !176, !169, !184, !201, !203, !214, !216, !218, !221, !223, !225, !614, !616, !618}
!llvm.ident = !{!620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620, !620}
!llvm.module.flags = !{!621, !622, !623, !624, !625}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !72, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !62)
!3 = !DIFile(filename: "src/truncate.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !14, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 60, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "rm_abs", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "rm_rel", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "rm_min", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "rm_max", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "rm_rdn", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "rm_rup", value: 5, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!18 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !30, line: 32, baseType: !6, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!37 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!38 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!39 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!40 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!41 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!42 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!43 = !{!44, !45, !46, !51, !53, !54, !57, !60}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 150, baseType: !50)
!49 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !58, line: 101, baseType: !59)
!58 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !49, line: 71, baseType: !50)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !58, line: 102, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !49, line: 72, baseType: !56)
!62 = !{!63, !66, !68, !0}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 41, type: !65, isLocal: true, isDefinition: true)
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 44, type: !65, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 47, type: !70, isLocal: true, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1792, elements: !82)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !75, line: 50, size: 256, elements: !76)
!75 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !{!77, !78, !79, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 52, baseType: !70, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !74, file: !75, line: 55, baseType: !44, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !74, file: !75, line: 56, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !75, line: 57, baseType: !44, size: 32, offset: 192)
!82 = !{!83}
!83 = !DISubrange(count: 7)
!84 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!85 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "Version", scope: !88, file: !89, line: 2, type: !70, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !91)
!89 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!90 = !{}
!91 = !{!86}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "file_name", scope: !94, file: !99, line: 46, type: !70, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !96)
!95 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !{!92, !97}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !94, file: !99, line: 56, type: !65, isLocal: true, isDefinition: true)
!99 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "exit_failure", scope: !102, file: !105, line: 24, type: !106, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !104)
!103 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!104 = !{!100}
!105 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "program_name", scope: !109, file: !113, line: 33, type: !70, isLocal: false, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !111, globals: !112)
!110 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!111 = !{!53, !51}
!112 = !{!107}
!113 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !116, file: !128, line: 85, type: !163, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !118, retainedTypes: !124, globals: !125)
!117 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !{!29, !119, !14}
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 242, baseType: !6, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!124 = !{!44, !45, !54, !51}
!125 = !{!114, !126, !133, !145, !147, !152, !159, !161}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !116, file: !128, line: 101, type: !129, isLocal: false, isDefinition: true)
!128 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 320, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!131 = !{!132}
!132 = !DISubrange(count: 10)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !116, file: !128, line: 1052, type: !135, isLocal: false, isDefinition: true)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !128, line: 65, size: 448, elements: !136)
!136 = !{!137, !138, !139, !143, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !135, file: !128, line: 68, baseType: !29, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !128, line: 71, baseType: !44, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !135, file: !128, line: 75, baseType: !140, size: 256, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !135, file: !128, line: 78, baseType: !70, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !135, file: !128, line: 81, baseType: !70, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !116, file: !128, line: 116, type: !135, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !116, file: !128, line: 842, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slotvec", scope: !116, file: !128, line: 845, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !128, line: 834, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !128, line: 836, baseType: !54, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !155, file: !128, line: 837, baseType: !51, size: 64, offset: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "nslots", scope: !116, file: !128, line: 843, type: !44, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "slotvec0", scope: !116, file: !128, line: 844, type: !155, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 704, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!165 = !{!166}
!166 = !DISubrange(count: 11)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !169, file: !172, line: 26, type: !173, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !171)
!170 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !{!167}
!172 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !183)
!177 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = !{!179}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 41, baseType: !6, size: 32, elements: !181)
!180 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !{!182}
!182 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!183 = !{!53}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !200)
!185 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !189, file: !188, line: 186, baseType: !6, size: 32, elements: !198)
!188 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = distinct !DISubprogram(name: "x2nrealloc", scope: !188, file: !188, line: 174, type: !190, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !193)
!190 = !DISubroutineType(types: !191)
!191 = !{!53, !53, !192, !54}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(name: "p", arg: 1, scope: !189, file: !188, line: 174, type: !53)
!195 = !DILocalVariable(name: "pn", arg: 2, scope: !189, file: !188, line: 174, type: !192)
!196 = !DILocalVariable(name: "s", arg: 3, scope: !189, file: !188, line: 174, type: !54)
!197 = !DILocalVariable(name: "n", scope: !189, file: !188, line: 176, type: !54)
!198 = !{!199}
!199 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!200 = !{!54, !51, !53}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!202 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205)
!204 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = !{!206}
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !207, line: 26, baseType: !6, size: 32, elements: !208)
!207 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!212 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!213 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205)
!215 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !183)
!217 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !220)
!219 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = !{!54}
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!222 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!224 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !183)
!226 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = !{!228}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !229, line: 41, baseType: !6, size: 32, elements: !230)
!229 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!231 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!233 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!234 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!235 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!236 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!237 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!241 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!242 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!244 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!269 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!270 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!271 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!272 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!273 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!274 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!275 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!276 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!277 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!278 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!279 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!280 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!339 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!426 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!500 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!501 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!502 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!503 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!504 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!505 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!507 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!508 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!509 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!510 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!511 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!512 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!513 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!518 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!519 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!520 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!546 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!547 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!548 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!549 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!550 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!555 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!556 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!557 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!558 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!615 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !183)
!617 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !183)
!619 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!620 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!621 = !{i32 2, !"Dwarf Version", i32 4}
!622 = !{i32 2, !"Debug Info Version", i32 3}
!623 = !{i32 1, !"wchar_size", i32 4}
!624 = !{i32 7, !"PIC Level", i32 2}
!625 = !{i32 7, !"PIE Level", i32 2}
!626 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !627, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !44}
!629 = !{!630}
!630 = !DILocalVariable(name: "status", arg: 1, scope: !626, file: !3, line: 64, type: !44)
!631 = !DILocalVariable(name: "infomap", scope: !632, file: !633, line: 632, type: !647)
!632 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !633, file: !633, line: 630, type: !634, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !636)
!633 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!634 = !DISubroutineType(types: !635)
!635 = !{null, !70}
!636 = !{!637, !631, !638, !639, !646}
!637 = !DILocalVariable(name: "program", arg: 1, scope: !632, file: !633, line: 630, type: !70)
!638 = !DILocalVariable(name: "node", scope: !632, file: !633, line: 642, type: !70)
!639 = !DILocalVariable(name: "map_prog", scope: !632, file: !633, line: 643, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !632, file: !633, line: 632, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !642, file: !633, line: 632, baseType: !70, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !633, line: 632, baseType: !70, size: 64, offset: 64)
!646 = !DILocalVariable(name: "lc_messages", scope: !632, file: !633, line: 655, type: !70)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 896, elements: !82)
!648 = !DILocation(line: 632, column: 67, scope: !632, inlinedAt: !649)
!649 = distinct !DILocation(line: 99, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 69, column: 5)
!651 = distinct !DILexicalBlock(scope: !626, file: !3, line: 66, column: 7)
!652 = !DILocation(line: 64, column: 12, scope: !626)
!653 = !DILocation(line: 66, column: 14, scope: !651)
!654 = !DILocation(line: 66, column: 7, scope: !626)
!655 = !DILocation(line: 67, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !3, line: 67, column: 5)
!657 = !{!658, !658, i64 0}
!658 = !{!"any pointer", !659, i64 0}
!659 = !{!"omnipotent char", !660, i64 0}
!660 = !{!"Simple C/C++ TBAA"}
!661 = !DILocation(line: 70, column: 7, scope: !650)
!662 = !DILocation(line: 71, column: 7, scope: !650)
!663 = !DILocation(line: 587, column: 3, scope: !664, inlinedAt: !667)
!664 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !633, file: !633, line: 585, type: !665, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !90)
!665 = !DISubroutineType(types: !666)
!666 = !{null}
!667 = distinct !DILocation(line: 81, column: 7, scope: !650)
!668 = !DILocation(line: 83, column: 7, scope: !650)
!669 = !DILocation(line: 86, column: 7, scope: !650)
!670 = !DILocation(line: 89, column: 7, scope: !650)
!671 = !DILocation(line: 92, column: 7, scope: !650)
!672 = !DILocation(line: 93, column: 7, scope: !650)
!673 = !DILocation(line: 595, column: 3, scope: !674, inlinedAt: !675)
!674 = distinct !DISubprogram(name: "emit_size_note", scope: !633, file: !633, line: 593, type: !665, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !90)
!675 = distinct !DILocation(line: 94, column: 7, scope: !650)
!676 = !DILocation(line: 95, column: 7, scope: !650)
!677 = !DILocation(line: 632, column: 3, scope: !632, inlinedAt: !649)
!678 = !DILocation(line: 643, column: 36, scope: !632, inlinedAt: !649)
!679 = !DILocation(line: 643, column: 25, scope: !632, inlinedAt: !649)
!680 = !DILocation(line: 645, column: 33, scope: !632, inlinedAt: !649)
!681 = !DILocation(line: 645, column: 3, scope: !632, inlinedAt: !649)
!682 = !DILocation(line: 646, column: 13, scope: !632, inlinedAt: !649)
!683 = !DILocation(line: 645, column: 20, scope: !632, inlinedAt: !649)
!684 = !{!685, !658, i64 0}
!685 = !{!"infomap", !658, i64 0, !658, i64 8}
!686 = !DILocation(line: 645, column: 10, scope: !632, inlinedAt: !649)
!687 = !DILocation(line: 645, column: 28, scope: !632, inlinedAt: !649)
!688 = distinct !{!688, !689, !690}
!689 = !DILocation(line: 645, column: 3, scope: !632)
!690 = !DILocation(line: 646, column: 13, scope: !632)
!691 = !DILocation(line: 648, column: 17, scope: !692, inlinedAt: !649)
!692 = distinct !DILexicalBlock(scope: !632, file: !633, line: 648, column: 7)
!693 = !{!685, !658, i64 8}
!694 = !DILocation(line: 648, column: 7, scope: !692, inlinedAt: !649)
!695 = !DILocation(line: 648, column: 7, scope: !632, inlinedAt: !649)
!696 = !DILocation(line: 642, column: 15, scope: !632, inlinedAt: !649)
!697 = !DILocation(line: 651, column: 3, scope: !632, inlinedAt: !649)
!698 = !DILocation(line: 655, column: 29, scope: !632, inlinedAt: !649)
!699 = !DILocation(line: 655, column: 15, scope: !632, inlinedAt: !649)
!700 = !DILocation(line: 656, column: 7, scope: !701, inlinedAt: !649)
!701 = distinct !DILexicalBlock(scope: !632, file: !633, line: 656, column: 7)
!702 = !DILocation(line: 656, column: 19, scope: !701, inlinedAt: !649)
!703 = !DILocation(line: 656, column: 22, scope: !701, inlinedAt: !649)
!704 = !DILocation(line: 656, column: 7, scope: !632, inlinedAt: !649)
!705 = !DILocation(line: 662, column: 7, scope: !706, inlinedAt: !649)
!706 = distinct !DILexicalBlock(scope: !701, file: !633, line: 657, column: 5)
!707 = !DILocation(line: 664, column: 5, scope: !706, inlinedAt: !649)
!708 = !DILocation(line: 665, column: 3, scope: !632, inlinedAt: !649)
!709 = !DILocation(line: 667, column: 3, scope: !632, inlinedAt: !649)
!710 = !DILocation(line: 669, column: 1, scope: !632, inlinedAt: !649)
!711 = !DILocation(line: 101, column: 3, scope: !626)
!712 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 213, type: !713, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!44, !44, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !725, !726, !727, !728, !729, !768, !769, !772, !775}
!717 = !DILocalVariable(name: "argc", arg: 1, scope: !712, file: !3, line: 213, type: !44)
!718 = !DILocalVariable(name: "argv", arg: 2, scope: !712, file: !3, line: 213, type: !715)
!719 = !DILocalVariable(name: "got_size", scope: !712, file: !3, line: 215, type: !65)
!720 = !DILocalVariable(name: "errors", scope: !712, file: !3, line: 216, type: !65)
!721 = !DILocalVariable(name: "size", scope: !712, file: !3, line: 217, type: !46)
!722 = !DILocalVariable(name: "rsize", scope: !712, file: !3, line: 218, type: !46)
!723 = !DILocalVariable(name: "rel_mode", scope: !712, file: !3, line: 219, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 61, baseType: !5)
!725 = !DILocalVariable(name: "c", scope: !712, file: !3, line: 220, type: !44)
!726 = !DILocalVariable(name: "fd", scope: !712, file: !3, line: 220, type: !44)
!727 = !DILocalVariable(name: "oflags", scope: !712, file: !3, line: 220, type: !44)
!728 = !DILocalVariable(name: "fname", scope: !712, file: !3, line: 221, type: !70)
!729 = !DILocalVariable(name: "sb", scope: !730, file: !3, line: 335, type: !732)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 334, column: 5)
!731 = distinct !DILexicalBlock(scope: !712, file: !3, line: 333, column: 7)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !733, line: 46, size: 1152, elements: !734)
!733 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!734 = !{!735, !737, !739, !741, !743, !745, !747, !748, !749, !750, !752, !754, !762, !763, !764}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !732, file: !733, line: 48, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !49, line: 143, baseType: !56)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !732, file: !733, line: 53, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !49, line: 146, baseType: !56)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !732, file: !733, line: 61, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !49, line: 149, baseType: !56)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !732, file: !733, line: 62, baseType: !742, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !49, line: 148, baseType: !6)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !732, file: !733, line: 64, baseType: !744, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !49, line: 144, baseType: !6)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !732, file: !733, line: 65, baseType: !746, size: 32, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !49, line: 145, baseType: !6)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !732, file: !733, line: 67, baseType: !44, size: 32, offset: 288)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !732, file: !733, line: 69, baseType: !736, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !732, file: !733, line: 74, baseType: !48, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !732, file: !733, line: 78, baseType: !751, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !49, line: 172, baseType: !50)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !732, file: !733, line: 80, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !49, line: 177, baseType: !50)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !732, file: !733, line: 91, baseType: !755, size: 128, offset: 576)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !756, line: 9, size: 128, elements: !757)
!756 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !755, file: !756, line: 11, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !49, line: 158, baseType: !50)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !755, file: !756, line: 12, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !49, line: 194, baseType: !50)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !732, file: !733, line: 92, baseType: !755, size: 128, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !732, file: !733, line: 93, baseType: !755, size: 128, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !732, file: !733, line: 106, baseType: !765, size: 192, offset: 960)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 192, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 3)
!768 = !DILocalVariable(name: "file_size", scope: !730, file: !3, line: 336, type: !46)
!769 = !DILocalVariable(name: "ref_fd", scope: !770, file: !3, line: 343, type: !44)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 342, column: 9)
!771 = distinct !DILexicalBlock(scope: !730, file: !3, line: 339, column: 11)
!772 = !DILocalVariable(name: "file_end", scope: !773, file: !3, line: 346, type: !46)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 345, column: 13)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 344, column: 15)
!775 = !DILocalVariable(name: "saved_errno", scope: !773, file: !3, line: 347, type: !44)
!776 = !DILocation(line: 213, column: 11, scope: !712)
!777 = !DILocation(line: 213, column: 24, scope: !712)
!778 = !DILocation(line: 215, column: 8, scope: !712)
!779 = !DILocation(line: 216, column: 8, scope: !712)
!780 = !DILocation(line: 218, column: 9, scope: !712)
!781 = !DILocation(line: 219, column: 14, scope: !712)
!782 = !DILocation(line: 220, column: 10, scope: !712)
!783 = !DILocation(line: 224, column: 21, scope: !712)
!784 = !DILocation(line: 224, column: 3, scope: !712)
!785 = !DILocation(line: 225, column: 3, scope: !712)
!786 = !DILocation(line: 226, column: 3, scope: !712)
!787 = !DILocation(line: 227, column: 3, scope: !712)
!788 = !DILocation(line: 229, column: 3, scope: !712)
!789 = !DILocation(line: 231, column: 3, scope: !712)
!790 = !DILocation(line: 231, column: 15, scope: !712)
!791 = !DILocation(line: 217, column: 9, scope: !712)
!792 = !DILocation(line: 220, column: 7, scope: !712)
!793 = !DILocation(line: 249, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 234, column: 9)
!795 = distinct !DILexicalBlock(scope: !712, file: !3, line: 232, column: 5)
!796 = !{!659, !659, i64 0}
!797 = !{!798, !798, i64 0}
!798 = !{!"short", !659, i64 0}
!799 = !DILocation(line: 249, column: 11, scope: !794)
!800 = !DILocation(line: 237, column: 11, scope: !794)
!801 = !DILocation(line: 241, column: 11, scope: !794)
!802 = !DILocation(line: 244, column: 22, scope: !794)
!803 = !DILocation(line: 244, column: 20, scope: !794)
!804 = !DILocation(line: 245, column: 11, scope: !794)
!805 = distinct !{!805, !789, !806}
!806 = !DILocation(line: 300, column: 5, scope: !712)
!807 = !DILocation(line: 250, column: 19, scope: !794)
!808 = distinct !{!808, !799, !807}
!809 = !DILocation(line: 251, column: 19, scope: !794)
!810 = !DILocation(line: 251, column: 11, scope: !794)
!811 = !DILocation(line: 255, column: 21, scope: !812)
!812 = distinct !DILexicalBlock(scope: !794, file: !3, line: 252, column: 13)
!813 = !DILocation(line: 256, column: 15, scope: !812)
!814 = !DILocation(line: 259, column: 21, scope: !812)
!815 = !DILocation(line: 260, column: 15, scope: !812)
!816 = !DILocation(line: 263, column: 21, scope: !812)
!817 = !DILocation(line: 264, column: 15, scope: !812)
!818 = !DILocation(line: 267, column: 21, scope: !812)
!819 = !DILocation(line: 268, column: 15, scope: !812)
!820 = !DILocation(line: 0, scope: !812)
!821 = !DILocation(line: 271, column: 18, scope: !794)
!822 = !DILocation(line: 271, column: 11, scope: !794)
!823 = !DILocation(line: 272, column: 19, scope: !794)
!824 = distinct !{!824, !822, !823}
!825 = !DILocation(line: 273, column: 30, scope: !826)
!826 = distinct !DILexicalBlock(scope: !794, file: !3, line: 273, column: 15)
!827 = !DILocation(line: 275, column: 19, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 275, column: 19)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 274, column: 13)
!830 = !DILocation(line: 275, column: 19, scope: !829)
!831 = !DILocation(line: 277, column: 32, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !3, line: 276, column: 17)
!833 = !DILocation(line: 277, column: 19, scope: !832)
!834 = !DILocation(line: 279, column: 19, scope: !832)
!835 = !DILocation(line: 0, scope: !712)
!836 = !DILocation(line: 286, column: 30, scope: !794)
!837 = !DILocation(line: 285, column: 18, scope: !794)
!838 = !DILocation(line: 288, column: 35, scope: !839)
!839 = distinct !DILexicalBlock(scope: !794, file: !3, line: 288, column: 15)
!840 = !DILocation(line: 288, column: 66, scope: !839)
!841 = !DILocation(line: 289, column: 13, scope: !839)
!842 = !DILocation(line: 293, column: 9, scope: !794)
!843 = !DILocation(line: 295, column: 9, scope: !794)
!844 = !DILocation(line: 298, column: 11, scope: !794)
!845 = !DILocation(line: 302, column: 11, scope: !712)
!846 = !{!847, !847, i64 0}
!847 = !{!"int", !659, i64 0}
!848 = !DILocation(line: 302, column: 8, scope: !712)
!849 = !DILocation(line: 306, column: 8, scope: !850)
!850 = distinct !DILexicalBlock(scope: !712, file: !3, line: 306, column: 7)
!851 = !DILocation(line: 306, column: 21, scope: !850)
!852 = !DILocation(line: 306, column: 17, scope: !850)
!853 = !DILocation(line: 308, column: 20, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 307, column: 5)
!855 = !DILocation(line: 309, column: 14, scope: !854)
!856 = !DILocation(line: 309, column: 37, scope: !854)
!857 = !DILocation(line: 308, column: 7, scope: !854)
!858 = !DILocation(line: 310, column: 7, scope: !854)
!859 = !DILocation(line: 313, column: 32, scope: !860)
!860 = distinct !DILexicalBlock(scope: !712, file: !3, line: 313, column: 7)
!861 = !DILocation(line: 313, column: 28, scope: !860)
!862 = !DILocation(line: 313, column: 16, scope: !860)
!863 = !DILocation(line: 315, column: 20, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 314, column: 5)
!865 = !DILocation(line: 316, column: 14, scope: !864)
!866 = !DILocation(line: 316, column: 37, scope: !864)
!867 = !DILocation(line: 315, column: 7, scope: !864)
!868 = !DILocation(line: 317, column: 7, scope: !864)
!869 = !DILocation(line: 320, column: 18, scope: !870)
!870 = distinct !DILexicalBlock(scope: !712, file: !3, line: 320, column: 7)
!871 = !DILocation(line: 322, column: 20, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !3, line: 321, column: 5)
!873 = !DILocation(line: 323, column: 14, scope: !872)
!874 = !DILocation(line: 323, column: 42, scope: !872)
!875 = !DILocation(line: 322, column: 7, scope: !872)
!876 = !DILocation(line: 324, column: 7, scope: !872)
!877 = !DILocation(line: 327, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !712, file: !3, line: 327, column: 7)
!879 = !DILocation(line: 327, column: 7, scope: !712)
!880 = !DILocation(line: 329, column: 20, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 328, column: 5)
!882 = !DILocation(line: 329, column: 7, scope: !881)
!883 = !DILocation(line: 330, column: 7, scope: !881)
!884 = !DILocation(line: 333, column: 7, scope: !712)
!885 = !DILocation(line: 335, column: 7, scope: !730)
!886 = !DILocation(line: 336, column: 13, scope: !730)
!887 = !DILocation(line: 335, column: 19, scope: !730)
!888 = !DILocalVariable(name: "__path", arg: 1, scope: !889, file: !890, line: 453, type: !70)
!889 = distinct !DISubprogram(name: "stat", scope: !890, file: !890, line: 453, type: !891, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !894)
!890 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!891 = !DISubroutineType(types: !892)
!892 = !{!44, !70, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!894 = !{!888, !895}
!895 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !889, file: !890, line: 453, type: !893)
!896 = !DILocation(line: 453, column: 1, scope: !889, inlinedAt: !897)
!897 = distinct !DILocation(line: 337, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !730, file: !3, line: 337, column: 11)
!899 = !DILocation(line: 455, column: 10, scope: !889, inlinedAt: !897)
!900 = !DILocation(line: 337, column: 32, scope: !898)
!901 = !DILocation(line: 337, column: 11, scope: !730)
!902 = !DILocation(line: 338, column: 9, scope: !898)
!903 = !DILocalVariable(name: "sb", arg: 1, scope: !904, file: !633, line: 701, type: !907)
!904 = distinct !DISubprogram(name: "usable_st_size", scope: !633, file: !633, line: 701, type: !905, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !909)
!905 = !DISubroutineType(types: !906)
!906 = !{!65, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!909 = !{!903}
!910 = !DILocation(line: 701, column: 36, scope: !904, inlinedAt: !911)
!911 = distinct !DILocation(line: 339, column: 11, scope: !771)
!912 = !DILocation(line: 703, column: 11, scope: !904, inlinedAt: !911)
!913 = !{!914, !847, i64 24}
!914 = !{!"stat", !915, i64 0, !915, i64 8, !915, i64 16, !847, i64 24, !847, i64 28, !847, i64 32, !847, i64 36, !915, i64 40, !915, i64 48, !915, i64 56, !915, i64 64, !916, i64 72, !916, i64 88, !916, i64 104, !659, i64 120}
!915 = !{!"long", !659, i64 0}
!916 = !{!"timespec", !915, i64 0, !915, i64 8}
!917 = !DILocation(line: 703, column: 33, scope: !904, inlinedAt: !911)
!918 = !DILocation(line: 343, column: 30, scope: !770)
!919 = !DILocation(line: 343, column: 24, scope: !770)
!920 = !DILocation(line: 343, column: 15, scope: !770)
!921 = !DILocation(line: 344, column: 17, scope: !774)
!922 = !DILocation(line: 344, column: 15, scope: !770)
!923 = !DILocation(line: 346, column: 32, scope: !773)
!924 = !DILocation(line: 346, column: 21, scope: !773)
!925 = !DILocation(line: 347, column: 33, scope: !773)
!926 = !DILocation(line: 347, column: 19, scope: !773)
!927 = !DILocation(line: 348, column: 15, scope: !773)
!928 = !DILocation(line: 349, column: 21, scope: !929)
!929 = distinct !DILexicalBlock(scope: !773, file: !3, line: 349, column: 19)
!930 = !DILocation(line: 349, column: 19, scope: !773)
!931 = !DILocation(line: 354, column: 25, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 352, column: 17)
!933 = !DILocation(line: 340, column: 24, scope: !771)
!934 = !{!914, !915, i64 48}
!935 = !DILocation(line: 358, column: 21, scope: !936)
!936 = distinct !DILexicalBlock(scope: !730, file: !3, line: 358, column: 11)
!937 = !DILocation(line: 358, column: 11, scope: !730)
!938 = !DILocation(line: 359, column: 9, scope: !936)
!939 = !DILocation(line: 362, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !730, file: !3, line: 361, column: 11)
!941 = !DILocation(line: 365, column: 5, scope: !731)
!942 = !DILocation(line: 365, column: 5, scope: !730)
!943 = !DILocation(line: 367, column: 49, scope: !712)
!944 = !DILocation(line: 220, column: 19, scope: !712)
!945 = !DILocation(line: 369, column: 19, scope: !712)
!946 = !DILocation(line: 221, column: 15, scope: !712)
!947 = !DILocation(line: 369, column: 28, scope: !712)
!948 = !DILocation(line: 369, column: 3, scope: !712)
!949 = !DILocation(line: 369, column: 24, scope: !712)
!950 = !DILocation(line: 371, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 371, column: 11)
!952 = distinct !DILexicalBlock(scope: !712, file: !3, line: 370, column: 5)
!953 = !DILocation(line: 371, column: 52, scope: !951)
!954 = !DILocation(line: 371, column: 11, scope: !952)
!955 = !DILocation(line: 0, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 378, column: 13)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 377, column: 15)
!958 = distinct !DILexicalBlock(scope: !951, file: !3, line: 372, column: 9)
!959 = !DILocation(line: 377, column: 27, scope: !957)
!960 = !DILocation(line: 377, column: 30, scope: !957)
!961 = !DILocation(line: 377, column: 36, scope: !957)
!962 = !DILocation(line: 377, column: 15, scope: !958)
!963 = !DILocation(line: 379, column: 25, scope: !956)
!964 = !DILocation(line: 379, column: 32, scope: !956)
!965 = !DILocation(line: 380, column: 22, scope: !956)
!966 = !DILocation(line: 379, column: 15, scope: !956)
!967 = !DILocation(line: 382, column: 13, scope: !956)
!968 = distinct !{!968, !948, !969}
!969 = !DILocation(line: 396, column: 5, scope: !712)
!970 = !DILocalVariable(name: "fd", arg: 1, scope: !971, file: !3, line: 106, type: !44)
!971 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 106, type: !972, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!65, !44, !70, !46, !46, !724}
!974 = !{!970, !975, !976, !977, !978, !979, !980, !981, !985, !988, !991}
!975 = !DILocalVariable(name: "fname", arg: 2, scope: !971, file: !3, line: 106, type: !70)
!976 = !DILocalVariable(name: "ssize", arg: 3, scope: !971, file: !3, line: 106, type: !46)
!977 = !DILocalVariable(name: "rsize", arg: 4, scope: !971, file: !3, line: 106, type: !46)
!978 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !971, file: !3, line: 107, type: !724)
!979 = !DILocalVariable(name: "sb", scope: !971, file: !3, line: 109, type: !732)
!980 = !DILocalVariable(name: "nsize", scope: !971, file: !3, line: 110, type: !46)
!981 = !DILocalVariable(name: "blksize", scope: !982, file: !3, line: 119, type: !984)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 118, column: 5)
!983 = distinct !DILexicalBlock(scope: !971, file: !3, line: 117, column: 7)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!985 = !DILocalVariable(name: "fsize", scope: !986, file: !3, line: 133, type: !60)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 132, column: 5)
!987 = distinct !DILexicalBlock(scope: !971, file: !3, line: 131, column: 7)
!988 = !DILocalVariable(name: "file_size", scope: !989, file: !3, line: 139, type: !46)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 138, column: 9)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 135, column: 11)
!991 = !DILocalVariable(name: "overflow", scope: !992, file: !3, line: 176, type: !997)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 174, column: 9)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 172, column: 16)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 169, column: 16)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 167, column: 16)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 165, column: 11)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!998 = !DILocation(line: 106, column: 19, scope: !971, inlinedAt: !999)
!999 = distinct !DILocation(line: 389, column: 22, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 388, column: 9)
!1001 = distinct !DILexicalBlock(scope: !952, file: !3, line: 387, column: 11)
!1002 = !DILocation(line: 106, column: 35, scope: !971, inlinedAt: !999)
!1003 = !DILocation(line: 106, column: 48, scope: !971, inlinedAt: !999)
!1004 = !DILocation(line: 106, column: 61, scope: !971, inlinedAt: !999)
!1005 = !DILocation(line: 107, column: 26, scope: !971, inlinedAt: !999)
!1006 = !DILocation(line: 109, column: 3, scope: !971, inlinedAt: !999)
!1007 = !DILocation(line: 112, column: 19, scope: !1008, inlinedAt: !999)
!1008 = distinct !DILexicalBlock(scope: !971, file: !3, line: 112, column: 7)
!1009 = !DILocation(line: 109, column: 15, scope: !971, inlinedAt: !999)
!1010 = !DILocalVariable(name: "__fd", arg: 1, scope: !1011, file: !890, line: 467, type: !44)
!1011 = distinct !DISubprogram(name: "fstat", scope: !890, file: !890, line: 467, type: !1012, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!44, !44, !893}
!1014 = !{!1010, !1015}
!1015 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1011, file: !890, line: 467, type: !893)
!1016 = !DILocation(line: 467, column: 1, scope: !1011, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 112, column: 50, scope: !1008, inlinedAt: !999)
!1018 = !DILocation(line: 469, column: 10, scope: !1011, inlinedAt: !1017)
!1019 = !DILocation(line: 112, column: 66, scope: !1008, inlinedAt: !999)
!1020 = !DILocation(line: 112, column: 7, scope: !971, inlinedAt: !999)
!1021 = !DILocation(line: 114, column: 17, scope: !1022, inlinedAt: !999)
!1022 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 113, column: 5)
!1023 = !DILocation(line: 114, column: 24, scope: !1022, inlinedAt: !999)
!1024 = !DILocation(line: 114, column: 46, scope: !1022, inlinedAt: !999)
!1025 = !DILocation(line: 114, column: 7, scope: !1022, inlinedAt: !999)
!1026 = !DILocation(line: 115, column: 7, scope: !1022, inlinedAt: !999)
!1027 = !DILocation(line: 117, column: 7, scope: !971, inlinedAt: !999)
!1028 = !DILocation(line: 119, column: 29, scope: !982, inlinedAt: !999)
!1029 = !{!914, !915, i64 56}
!1030 = !DILocation(line: 119, column: 19, scope: !982, inlinedAt: !999)
!1031 = !DILocation(line: 120, column: 29, scope: !1032, inlinedAt: !999)
!1032 = distinct !DILexicalBlock(scope: !982, file: !3, line: 120, column: 11)
!1033 = !DILocation(line: 120, column: 17, scope: !1032, inlinedAt: !999)
!1034 = !DILocation(line: 120, column: 39, scope: !1032, inlinedAt: !999)
!1035 = !DILocation(line: 120, column: 60, scope: !1032, inlinedAt: !999)
!1036 = !DILocation(line: 120, column: 48, scope: !1032, inlinedAt: !999)
!1037 = !DILocation(line: 120, column: 11, scope: !982, inlinedAt: !999)
!1038 = !DILocation(line: 129, column: 13, scope: !982, inlinedAt: !999)
!1039 = !DILocation(line: 123, column: 18, scope: !1040, inlinedAt: !999)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 121, column: 9)
!1041 = !DILocation(line: 126, column: 18, scope: !1040, inlinedAt: !999)
!1042 = !DILocation(line: 122, column: 11, scope: !1040, inlinedAt: !999)
!1043 = !DILocation(line: 131, column: 7, scope: !971, inlinedAt: !999)
!1044 = !DILocation(line: 135, column: 11, scope: !986, inlinedAt: !999)
!1045 = !DILocation(line: 701, column: 36, scope: !904, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 140, column: 15, scope: !1047, inlinedAt: !999)
!1047 = distinct !DILexicalBlock(scope: !989, file: !3, line: 140, column: 15)
!1048 = !DILocation(line: 703, column: 11, scope: !904, inlinedAt: !1046)
!1049 = !DILocation(line: 703, column: 33, scope: !904, inlinedAt: !1046)
!1050 = !DILocation(line: 142, column: 30, scope: !1051, inlinedAt: !999)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 141, column: 13)
!1052 = !DILocation(line: 139, column: 17, scope: !989, inlinedAt: !999)
!1053 = !DILocation(line: 143, column: 29, scope: !1054, inlinedAt: !999)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 143, column: 19)
!1055 = !DILocation(line: 143, column: 19, scope: !1051, inlinedAt: !999)
!1056 = !DILocation(line: 147, column: 32, scope: !1057, inlinedAt: !999)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 144, column: 17)
!1058 = !DILocation(line: 148, column: 26, scope: !1057, inlinedAt: !999)
!1059 = !DILocation(line: 147, column: 19, scope: !1057, inlinedAt: !999)
!1060 = !DILocation(line: 149, column: 19, scope: !1057, inlinedAt: !999)
!1061 = !DILocation(line: 154, column: 27, scope: !1062, inlinedAt: !999)
!1062 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 153, column: 13)
!1063 = !DILocation(line: 155, column: 29, scope: !1064, inlinedAt: !999)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 155, column: 19)
!1065 = !DILocation(line: 155, column: 19, scope: !1062, inlinedAt: !999)
!1066 = !DILocation(line: 157, column: 29, scope: !1067, inlinedAt: !999)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 156, column: 17)
!1068 = !DILocation(line: 157, column: 36, scope: !1067, inlinedAt: !999)
!1069 = !DILocation(line: 158, column: 26, scope: !1067, inlinedAt: !999)
!1070 = !DILocation(line: 157, column: 19, scope: !1067, inlinedAt: !999)
!1071 = !DILocation(line: 159, column: 19, scope: !1067, inlinedAt: !999)
!1072 = !DILocation(line: 133, column: 17, scope: !986, inlinedAt: !999)
!1073 = !DILocation(line: 165, column: 11, scope: !986, inlinedAt: !999)
!1074 = !DILocation(line: 166, column: 17, scope: !996, inlinedAt: !999)
!1075 = !DILocation(line: 110, column: 9, scope: !971, inlinedAt: !999)
!1076 = !DILocation(line: 166, column: 9, scope: !996, inlinedAt: !999)
!1077 = !DILocation(line: 168, column: 17, scope: !995, inlinedAt: !999)
!1078 = !DILocation(line: 168, column: 9, scope: !995, inlinedAt: !999)
!1079 = !DILocation(line: 171, column: 33, scope: !994, inlinedAt: !999)
!1080 = !DILocation(line: 171, column: 9, scope: !994, inlinedAt: !999)
!1081 = !DILocation(line: 176, column: 46, scope: !992, inlinedAt: !999)
!1082 = !DILocation(line: 176, column: 54, scope: !992, inlinedAt: !999)
!1083 = !DILocation(line: 176, column: 68, scope: !992, inlinedAt: !999)
!1084 = !DILocation(line: 176, column: 27, scope: !992, inlinedAt: !999)
!1085 = !DILocation(line: 177, column: 24, scope: !1086, inlinedAt: !999)
!1086 = distinct !DILexicalBlock(scope: !992, file: !3, line: 177, column: 15)
!1087 = !DILocation(line: 177, column: 15, scope: !992, inlinedAt: !999)
!1088 = !DILocation(line: 179, column: 28, scope: !1089, inlinedAt: !999)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 178, column: 13)
!1090 = !DILocation(line: 180, column: 22, scope: !1089, inlinedAt: !999)
!1091 = !DILocation(line: 179, column: 15, scope: !1089, inlinedAt: !999)
!1092 = !DILocation(line: 187, column: 33, scope: !1093, inlinedAt: !999)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 187, column: 15)
!1094 = distinct !DILexicalBlock(scope: !993, file: !3, line: 186, column: 9)
!1095 = !DILocation(line: 187, column: 21, scope: !1093, inlinedAt: !999)
!1096 = !DILocation(line: 187, column: 15, scope: !1094, inlinedAt: !999)
!1097 = !DILocation(line: 189, column: 28, scope: !1098, inlinedAt: !999)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 188, column: 13)
!1099 = !DILocation(line: 190, column: 22, scope: !1098, inlinedAt: !999)
!1100 = !DILocation(line: 189, column: 15, scope: !1098, inlinedAt: !999)
!1101 = !DILocation(line: 191, column: 15, scope: !1098, inlinedAt: !999)
!1102 = !DILocation(line: 193, column: 25, scope: !1094, inlinedAt: !999)
!1103 = !DILocation(line: 0, scope: !987, inlinedAt: !999)
!1104 = !DILocation(line: 198, column: 7, scope: !971, inlinedAt: !999)
!1105 = !DILocation(line: 201, column: 7, scope: !1106, inlinedAt: !999)
!1106 = distinct !DILexicalBlock(scope: !971, file: !3, line: 201, column: 7)
!1107 = !DILocation(line: 201, column: 29, scope: !1106, inlinedAt: !999)
!1108 = !DILocation(line: 201, column: 7, scope: !971, inlinedAt: !999)
!1109 = !DILocation(line: 203, column: 17, scope: !1110, inlinedAt: !999)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 202, column: 5)
!1111 = !DILocation(line: 204, column: 14, scope: !1110, inlinedAt: !999)
!1112 = !DILocation(line: 204, column: 64, scope: !1110, inlinedAt: !999)
!1113 = !DILocation(line: 203, column: 7, scope: !1110, inlinedAt: !999)
!1114 = !DILocation(line: 206, column: 7, scope: !1110, inlinedAt: !999)
!1115 = !DILocation(line: 210, column: 1, scope: !971, inlinedAt: !999)
!1116 = !DILocation(line: 389, column: 18, scope: !1000)
!1117 = !DILocation(line: 390, column: 15, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 390, column: 15)
!1119 = !DILocation(line: 390, column: 26, scope: !1118)
!1120 = !DILocation(line: 390, column: 15, scope: !1000)
!1121 = !DILocation(line: 392, column: 25, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 391, column: 13)
!1123 = !DILocation(line: 392, column: 32, scope: !1122)
!1124 = !DILocation(line: 392, column: 57, scope: !1122)
!1125 = !DILocation(line: 392, column: 15, scope: !1122)
!1126 = !DILocation(line: 394, column: 13, scope: !1122)
!1127 = !DILocation(line: 0, scope: !1122)
!1128 = !DILocation(line: 398, column: 10, scope: !712)
!1129 = !DILocation(line: 399, column: 1, scope: !712)
!1130 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !99, file: !99, line: 51, type: !634, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1131)
!1131 = !{!1132}
!1132 = !DILocalVariable(name: "file", arg: 1, scope: !1130, file: !99, line: 51, type: !70)
!1133 = !DILocation(line: 51, column: 41, scope: !1130)
!1134 = !DILocation(line: 53, column: 13, scope: !1130)
!1135 = !DILocation(line: 54, column: 1, scope: !1130)
!1136 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !99, file: !99, line: 88, type: !1137, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !65}
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "ignore", arg: 1, scope: !1136, file: !99, line: 88, type: !65)
!1141 = !DILocation(line: 88, column: 37, scope: !1136)
!1142 = !DILocation(line: 90, column: 16, scope: !1136)
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"_Bool", !659, i64 0}
!1145 = !DILocation(line: 91, column: 1, scope: !1136)
!1146 = distinct !DISubprogram(name: "close_stdout", scope: !99, file: !99, line: 117, type: !665, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1147)
!1147 = !{!1148}
!1148 = !DILocalVariable(name: "write_error", scope: !1149, file: !99, line: 122, type: !70)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !99, line: 121, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !99, line: 119, column: 7)
!1151 = !DILocation(line: 119, column: 21, scope: !1150)
!1152 = !DILocation(line: 119, column: 7, scope: !1150)
!1153 = !DILocation(line: 119, column: 29, scope: !1150)
!1154 = !DILocation(line: 120, column: 7, scope: !1150)
!1155 = !DILocation(line: 120, column: 12, scope: !1150)
!1156 = !{i8 0, i8 2}
!1157 = !DILocation(line: 120, column: 25, scope: !1150)
!1158 = !DILocation(line: 120, column: 28, scope: !1150)
!1159 = !DILocation(line: 120, column: 34, scope: !1150)
!1160 = !DILocation(line: 119, column: 7, scope: !1146)
!1161 = !DILocation(line: 122, column: 33, scope: !1149)
!1162 = !DILocation(line: 122, column: 19, scope: !1149)
!1163 = !DILocation(line: 123, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1149, file: !99, line: 123, column: 11)
!1165 = !DILocation(line: 0, scope: !1164)
!1166 = !DILocation(line: 123, column: 11, scope: !1149)
!1167 = !DILocation(line: 124, column: 36, scope: !1164)
!1168 = !DILocation(line: 124, column: 9, scope: !1164)
!1169 = !DILocation(line: 127, column: 9, scope: !1164)
!1170 = !DILocation(line: 129, column: 14, scope: !1149)
!1171 = !DILocation(line: 129, column: 7, scope: !1149)
!1172 = !DILocation(line: 134, column: 42, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1146, file: !99, line: 134, column: 7)
!1174 = !DILocation(line: 134, column: 28, scope: !1173)
!1175 = !DILocation(line: 134, column: 50, scope: !1173)
!1176 = !DILocation(line: 134, column: 7, scope: !1146)
!1177 = !DILocation(line: 135, column: 12, scope: !1173)
!1178 = !DILocation(line: 135, column: 5, scope: !1173)
!1179 = !DILocation(line: 136, column: 1, scope: !1146)
!1180 = distinct !DISubprogram(name: "set_program_name", scope: !113, file: !113, line: 39, type: !634, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DILocalVariable(name: "argv0", arg: 1, scope: !1180, file: !113, line: 39, type: !70)
!1183 = !DILocalVariable(name: "slash", scope: !1180, file: !113, line: 46, type: !70)
!1184 = !DILocalVariable(name: "base", scope: !1180, file: !113, line: 47, type: !70)
!1185 = !DILocation(line: 39, column: 31, scope: !1180)
!1186 = !DILocation(line: 51, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !113, line: 51, column: 7)
!1188 = !DILocation(line: 51, column: 7, scope: !1180)
!1189 = !DILocation(line: 55, column: 14, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !113, line: 52, column: 5)
!1191 = !DILocation(line: 54, column: 7, scope: !1190)
!1192 = !DILocation(line: 56, column: 7, scope: !1190)
!1193 = !DILocation(line: 59, column: 11, scope: !1180)
!1194 = !DILocation(line: 46, column: 15, scope: !1180)
!1195 = !DILocation(line: 60, column: 17, scope: !1180)
!1196 = !DILocation(line: 60, column: 33, scope: !1180)
!1197 = !DILocation(line: 60, column: 11, scope: !1180)
!1198 = !DILocation(line: 47, column: 15, scope: !1180)
!1199 = !DILocation(line: 61, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1180, file: !113, line: 61, column: 7)
!1201 = !DILocation(line: 61, column: 20, scope: !1200)
!1202 = !DILocation(line: 61, column: 25, scope: !1200)
!1203 = !DILocation(line: 61, column: 42, scope: !1200)
!1204 = !DILocation(line: 61, column: 28, scope: !1200)
!1205 = !DILocation(line: 61, column: 61, scope: !1200)
!1206 = !DILocation(line: 61, column: 7, scope: !1180)
!1207 = !DILocation(line: 64, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !113, line: 64, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !113, line: 62, column: 5)
!1210 = !DILocation(line: 64, column: 36, scope: !1208)
!1211 = !DILocation(line: 64, column: 11, scope: !1209)
!1212 = !DILocation(line: 66, column: 24, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !113, line: 65, column: 9)
!1214 = !DILocation(line: 70, column: 41, scope: !1213)
!1215 = !DILocation(line: 72, column: 9, scope: !1213)
!1216 = !DILocation(line: 84, column: 16, scope: !1180)
!1217 = !DILocation(line: 90, column: 27, scope: !1180)
!1218 = !DILocation(line: 92, column: 1, scope: !1180)
!1219 = distinct !DISubprogram(name: "clone_quoting_options", scope: !128, file: !128, line: 122, type: !1220, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1223)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1223 = !{!1224, !1225, !1226}
!1224 = !DILocalVariable(name: "o", arg: 1, scope: !1219, file: !128, line: 122, type: !1222)
!1225 = !DILocalVariable(name: "e", scope: !1219, file: !128, line: 124, type: !44)
!1226 = !DILocalVariable(name: "p", scope: !1219, file: !128, line: 125, type: !1222)
!1227 = !DILocation(line: 122, column: 48, scope: !1219)
!1228 = !DILocation(line: 124, column: 11, scope: !1219)
!1229 = !DILocation(line: 124, column: 7, scope: !1219)
!1230 = !DILocation(line: 125, column: 40, scope: !1219)
!1231 = !DILocation(line: 125, column: 31, scope: !1219)
!1232 = !DILocation(line: 125, column: 27, scope: !1219)
!1233 = !DILocation(line: 127, column: 9, scope: !1219)
!1234 = !DILocation(line: 128, column: 3, scope: !1219)
!1235 = distinct !DISubprogram(name: "get_quoting_style", scope: !128, file: !128, line: 133, type: !1236, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1240)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!29, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !128, line: 133, type: !1238)
!1242 = !DILocation(line: 133, column: 50, scope: !1235)
!1243 = !DILocation(line: 135, column: 11, scope: !1235)
!1244 = !DILocation(line: 135, column: 46, scope: !1235)
!1245 = !{!1246, !659, i64 0}
!1246 = !{!"quoting_options", !659, i64 0, !847, i64 4, !659, i64 8, !658, i64 40, !658, i64 48}
!1247 = !DILocation(line: 135, column: 3, scope: !1235)
!1248 = distinct !DISubprogram(name: "set_quoting_style", scope: !128, file: !128, line: 141, type: !1249, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !1222, !29}
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "o", arg: 1, scope: !1248, file: !128, line: 141, type: !1222)
!1253 = !DILocalVariable(name: "s", arg: 2, scope: !1248, file: !128, line: 141, type: !29)
!1254 = !DILocation(line: 141, column: 44, scope: !1248)
!1255 = !DILocation(line: 141, column: 66, scope: !1248)
!1256 = !DILocation(line: 143, column: 4, scope: !1248)
!1257 = !DILocation(line: 143, column: 39, scope: !1248)
!1258 = !DILocation(line: 143, column: 45, scope: !1248)
!1259 = !DILocation(line: 144, column: 1, scope: !1248)
!1260 = distinct !DISubprogram(name: "set_char_quoting", scope: !128, file: !128, line: 152, type: !1261, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!44, !1222, !52, !44}
!1263 = !{!1264, !1265, !1266, !1267, !1269, !1271, !1272}
!1264 = !DILocalVariable(name: "o", arg: 1, scope: !1260, file: !128, line: 152, type: !1222)
!1265 = !DILocalVariable(name: "c", arg: 2, scope: !1260, file: !128, line: 152, type: !52)
!1266 = !DILocalVariable(name: "i", arg: 3, scope: !1260, file: !128, line: 152, type: !44)
!1267 = !DILocalVariable(name: "uc", scope: !1260, file: !128, line: 154, type: !1268)
!1268 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1269 = !DILocalVariable(name: "p", scope: !1260, file: !128, line: 155, type: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1271 = !DILocalVariable(name: "shift", scope: !1260, file: !128, line: 157, type: !44)
!1272 = !DILocalVariable(name: "r", scope: !1260, file: !128, line: 158, type: !44)
!1273 = !DILocation(line: 152, column: 43, scope: !1260)
!1274 = !DILocation(line: 152, column: 51, scope: !1260)
!1275 = !DILocation(line: 152, column: 58, scope: !1260)
!1276 = !DILocation(line: 154, column: 17, scope: !1260)
!1277 = !DILocation(line: 156, column: 6, scope: !1260)
!1278 = !DILocation(line: 156, column: 62, scope: !1260)
!1279 = !DILocation(line: 156, column: 57, scope: !1260)
!1280 = !DILocation(line: 155, column: 17, scope: !1260)
!1281 = !DILocation(line: 157, column: 15, scope: !1260)
!1282 = !DILocation(line: 157, column: 7, scope: !1260)
!1283 = !DILocation(line: 158, column: 12, scope: !1260)
!1284 = !DILocation(line: 158, column: 15, scope: !1260)
!1285 = !DILocation(line: 158, column: 25, scope: !1260)
!1286 = !DILocation(line: 158, column: 7, scope: !1260)
!1287 = !DILocation(line: 159, column: 13, scope: !1260)
!1288 = !DILocation(line: 159, column: 18, scope: !1260)
!1289 = !DILocation(line: 159, column: 23, scope: !1260)
!1290 = !DILocation(line: 159, column: 6, scope: !1260)
!1291 = !DILocation(line: 160, column: 3, scope: !1260)
!1292 = distinct !DISubprogram(name: "set_quoting_flags", scope: !128, file: !128, line: 168, type: !1293, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!44, !1222, !44}
!1295 = !{!1296, !1297, !1298}
!1296 = !DILocalVariable(name: "o", arg: 1, scope: !1292, file: !128, line: 168, type: !1222)
!1297 = !DILocalVariable(name: "i", arg: 2, scope: !1292, file: !128, line: 168, type: !44)
!1298 = !DILocalVariable(name: "r", scope: !1292, file: !128, line: 170, type: !44)
!1299 = !DILocation(line: 168, column: 44, scope: !1292)
!1300 = !DILocation(line: 168, column: 51, scope: !1292)
!1301 = !DILocation(line: 171, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1292, file: !128, line: 171, column: 7)
!1303 = !DILocation(line: 171, column: 7, scope: !1292)
!1304 = !DILocation(line: 173, column: 10, scope: !1292)
!1305 = !{!1246, !847, i64 4}
!1306 = !DILocation(line: 170, column: 7, scope: !1292)
!1307 = !DILocation(line: 174, column: 12, scope: !1292)
!1308 = !DILocation(line: 175, column: 3, scope: !1292)
!1309 = distinct !DISubprogram(name: "set_custom_quoting", scope: !128, file: !128, line: 179, type: !1310, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1222, !70, !70}
!1312 = !{!1313, !1314, !1315}
!1313 = !DILocalVariable(name: "o", arg: 1, scope: !1309, file: !128, line: 179, type: !1222)
!1314 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1309, file: !128, line: 180, type: !70)
!1315 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1309, file: !128, line: 180, type: !70)
!1316 = !DILocation(line: 179, column: 45, scope: !1309)
!1317 = !DILocation(line: 180, column: 33, scope: !1309)
!1318 = !DILocation(line: 180, column: 57, scope: !1309)
!1319 = !DILocation(line: 182, column: 8, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1309, file: !128, line: 182, column: 7)
!1321 = !DILocation(line: 182, column: 7, scope: !1309)
!1322 = !DILocation(line: 184, column: 6, scope: !1309)
!1323 = !DILocation(line: 184, column: 12, scope: !1309)
!1324 = !DILocation(line: 185, column: 8, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1309, file: !128, line: 185, column: 7)
!1326 = !DILocation(line: 185, column: 23, scope: !1325)
!1327 = !DILocation(line: 185, column: 19, scope: !1325)
!1328 = !DILocation(line: 186, column: 5, scope: !1325)
!1329 = !DILocation(line: 187, column: 6, scope: !1309)
!1330 = !DILocation(line: 187, column: 17, scope: !1309)
!1331 = !{!1246, !658, i64 40}
!1332 = !DILocation(line: 188, column: 6, scope: !1309)
!1333 = !DILocation(line: 188, column: 18, scope: !1309)
!1334 = !{!1246, !658, i64 48}
!1335 = !DILocation(line: 189, column: 1, scope: !1309)
!1336 = distinct !DISubprogram(name: "quotearg_buffer", scope: !128, file: !128, line: 784, type: !1337, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!54, !51, !54, !70, !54, !1238}
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1340 = !DILocalVariable(name: "buffer", arg: 1, scope: !1336, file: !128, line: 784, type: !51)
!1341 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1336, file: !128, line: 784, type: !54)
!1342 = !DILocalVariable(name: "arg", arg: 3, scope: !1336, file: !128, line: 785, type: !70)
!1343 = !DILocalVariable(name: "argsize", arg: 4, scope: !1336, file: !128, line: 785, type: !54)
!1344 = !DILocalVariable(name: "o", arg: 5, scope: !1336, file: !128, line: 786, type: !1238)
!1345 = !DILocalVariable(name: "p", scope: !1336, file: !128, line: 788, type: !1238)
!1346 = !DILocalVariable(name: "e", scope: !1336, file: !128, line: 789, type: !44)
!1347 = !DILocalVariable(name: "r", scope: !1336, file: !128, line: 790, type: !54)
!1348 = !DILocation(line: 784, column: 24, scope: !1336)
!1349 = !DILocation(line: 784, column: 39, scope: !1336)
!1350 = !DILocation(line: 785, column: 30, scope: !1336)
!1351 = !DILocation(line: 785, column: 42, scope: !1336)
!1352 = !DILocation(line: 786, column: 48, scope: !1336)
!1353 = !DILocation(line: 788, column: 37, scope: !1336)
!1354 = !DILocation(line: 788, column: 33, scope: !1336)
!1355 = !DILocation(line: 789, column: 11, scope: !1336)
!1356 = !DILocation(line: 789, column: 7, scope: !1336)
!1357 = !DILocation(line: 791, column: 43, scope: !1336)
!1358 = !DILocation(line: 791, column: 53, scope: !1336)
!1359 = !DILocation(line: 791, column: 60, scope: !1336)
!1360 = !DILocation(line: 792, column: 43, scope: !1336)
!1361 = !DILocation(line: 792, column: 58, scope: !1336)
!1362 = !DILocation(line: 790, column: 14, scope: !1336)
!1363 = !DILocation(line: 790, column: 10, scope: !1336)
!1364 = !DILocation(line: 793, column: 9, scope: !1336)
!1365 = !DILocation(line: 794, column: 3, scope: !1336)
!1366 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !128, file: !128, line: 256, type: !1367, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1371)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!54, !51, !54, !70, !54, !29, !44, !1369, !70, !70}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1396, !1397, !1398, !1399, !1400, !1403, !1404, !1422, !1425, !1426, !1433}
!1372 = !DILocalVariable(name: "buffer", arg: 1, scope: !1366, file: !128, line: 256, type: !51)
!1373 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1366, file: !128, line: 256, type: !54)
!1374 = !DILocalVariable(name: "arg", arg: 3, scope: !1366, file: !128, line: 257, type: !70)
!1375 = !DILocalVariable(name: "argsize", arg: 4, scope: !1366, file: !128, line: 257, type: !54)
!1376 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1366, file: !128, line: 258, type: !29)
!1377 = !DILocalVariable(name: "flags", arg: 6, scope: !1366, file: !128, line: 258, type: !44)
!1378 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1366, file: !128, line: 259, type: !1369)
!1379 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1366, file: !128, line: 260, type: !70)
!1380 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1366, file: !128, line: 261, type: !70)
!1381 = !DILocalVariable(name: "i", scope: !1366, file: !128, line: 263, type: !54)
!1382 = !DILocalVariable(name: "len", scope: !1366, file: !128, line: 264, type: !54)
!1383 = !DILocalVariable(name: "orig_buffersize", scope: !1366, file: !128, line: 265, type: !54)
!1384 = !DILocalVariable(name: "quote_string", scope: !1366, file: !128, line: 266, type: !70)
!1385 = !DILocalVariable(name: "quote_string_len", scope: !1366, file: !128, line: 267, type: !54)
!1386 = !DILocalVariable(name: "backslash_escapes", scope: !1366, file: !128, line: 268, type: !65)
!1387 = !DILocalVariable(name: "unibyte_locale", scope: !1366, file: !128, line: 269, type: !65)
!1388 = !DILocalVariable(name: "elide_outer_quotes", scope: !1366, file: !128, line: 270, type: !65)
!1389 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1366, file: !128, line: 271, type: !65)
!1390 = !DILocalVariable(name: "encountered_single_quote", scope: !1366, file: !128, line: 272, type: !65)
!1391 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1366, file: !128, line: 273, type: !65)
!1392 = !DILocalVariable(name: "c", scope: !1393, file: !128, line: 402, type: !1268)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !128, line: 401, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !128, line: 400, column: 3)
!1395 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 400, column: 3)
!1396 = !DILocalVariable(name: "esc", scope: !1393, file: !128, line: 403, type: !1268)
!1397 = !DILocalVariable(name: "is_right_quote", scope: !1393, file: !128, line: 404, type: !65)
!1398 = !DILocalVariable(name: "escaping", scope: !1393, file: !128, line: 405, type: !65)
!1399 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1393, file: !128, line: 406, type: !65)
!1400 = !DILocalVariable(name: "m", scope: !1401, file: !128, line: 610, type: !54)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 608, column: 11)
!1402 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 426, column: 9)
!1403 = !DILocalVariable(name: "printable", scope: !1401, file: !128, line: 612, type: !65)
!1404 = !DILocalVariable(name: "mbstate", scope: !1405, file: !128, line: 621, type: !1407)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !128, line: 620, column: 15)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !128, line: 614, column: 17)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1408, line: 6, baseType: !1409)
!1408 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1410, line: 21, baseType: !1411)
!1410 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 13, size: 64, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1411, file: !1410, line: 15, baseType: !44, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1411, file: !1410, line: 20, baseType: !1415, size: 32, offset: 32)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1410, line: 16, size: 32, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1415, file: !1410, line: 18, baseType: !6, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1415, file: !1410, line: 19, baseType: !1419, size: 32)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 4)
!1422 = !DILocalVariable(name: "w", scope: !1423, file: !128, line: 631, type: !1424)
!1423 = distinct !DILexicalBlock(scope: !1405, file: !128, line: 630, column: 19)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !55, line: 90, baseType: !44)
!1425 = !DILocalVariable(name: "bytes", scope: !1423, file: !128, line: 632, type: !54)
!1426 = !DILocalVariable(name: "j", scope: !1427, file: !128, line: 657, type: !54)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !128, line: 656, column: 27)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !128, line: 654, column: 29)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !128, line: 649, column: 23)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !128, line: 641, column: 30)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !128, line: 636, column: 30)
!1432 = distinct !DILexicalBlock(scope: !1423, file: !128, line: 634, column: 25)
!1433 = !DILocalVariable(name: "ilim", scope: !1434, file: !128, line: 684, type: !54)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !128, line: 681, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1401, file: !128, line: 680, column: 17)
!1436 = !DILocation(line: 256, column: 33, scope: !1366)
!1437 = !DILocation(line: 256, column: 48, scope: !1366)
!1438 = !DILocation(line: 257, column: 39, scope: !1366)
!1439 = !DILocation(line: 257, column: 51, scope: !1366)
!1440 = !DILocation(line: 258, column: 46, scope: !1366)
!1441 = !DILocation(line: 258, column: 65, scope: !1366)
!1442 = !DILocation(line: 259, column: 47, scope: !1366)
!1443 = !DILocation(line: 260, column: 39, scope: !1366)
!1444 = !DILocation(line: 261, column: 39, scope: !1366)
!1445 = !DILocation(line: 264, column: 10, scope: !1366)
!1446 = !DILocation(line: 265, column: 10, scope: !1366)
!1447 = !DILocation(line: 266, column: 15, scope: !1366)
!1448 = !DILocation(line: 267, column: 10, scope: !1366)
!1449 = !DILocation(line: 268, column: 8, scope: !1366)
!1450 = !DILocation(line: 269, column: 25, scope: !1366)
!1451 = !DILocation(line: 269, column: 36, scope: !1366)
!1452 = !DILocation(line: 270, column: 8, scope: !1366)
!1453 = !DILocation(line: 271, column: 8, scope: !1366)
!1454 = !DILocation(line: 272, column: 8, scope: !1366)
!1455 = !DILocation(line: 273, column: 8, scope: !1366)
!1456 = !DILocation(line: 273, column: 3, scope: !1366)
!1457 = !DILocation(line: 0, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 317, column: 5)
!1459 = !DILocation(line: 316, column: 3, scope: !1366)
!1460 = !DILocation(line: 323, column: 11, scope: !1458)
!1461 = !DILocation(line: 323, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !128, line: 323, column: 11)
!1463 = !DILocation(line: 324, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !128, line: 324, column: 9)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !128, line: 324, column: 9)
!1466 = !DILocation(line: 324, column: 9, scope: !1465)
!1467 = !DILocation(line: 362, column: 26, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !128, line: 340, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !128, line: 339, column: 13)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !128, line: 338, column: 7)
!1471 = !DILocation(line: 363, column: 27, scope: !1468)
!1472 = !DILocation(line: 364, column: 11, scope: !1468)
!1473 = !DILocation(line: 365, column: 14, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !128, line: 365, column: 13)
!1475 = !DILocation(line: 365, column: 13, scope: !1470)
!1476 = !DILocation(line: 366, column: 43, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !128, line: 366, column: 11)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !128, line: 366, column: 11)
!1479 = !DILocation(line: 366, column: 11, scope: !1478)
!1480 = !DILocation(line: 367, column: 13, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !128, line: 367, column: 13)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !128, line: 367, column: 13)
!1483 = !DILocation(line: 367, column: 13, scope: !1482)
!1484 = !DILocation(line: 366, column: 70, scope: !1477)
!1485 = distinct !{!1485, !1479, !1486}
!1486 = !DILocation(line: 367, column: 13, scope: !1478)
!1487 = !DILocation(line: 370, column: 28, scope: !1470)
!1488 = !DILocation(line: 372, column: 7, scope: !1458)
!1489 = !DILocation(line: 376, column: 7, scope: !1458)
!1490 = !DILocation(line: 379, column: 7, scope: !1458)
!1491 = !DILocation(line: 381, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1458, file: !128, line: 381, column: 11)
!1493 = !DILocation(line: 381, column: 11, scope: !1458)
!1494 = !DILocation(line: 0, scope: !1492)
!1495 = !DILocation(line: 386, column: 12, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1458, file: !128, line: 386, column: 11)
!1497 = !DILocation(line: 386, column: 11, scope: !1458)
!1498 = !DILocation(line: 387, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !128, line: 387, column: 9)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !128, line: 387, column: 9)
!1501 = !DILocation(line: 387, column: 9, scope: !1500)
!1502 = !DILocation(line: 394, column: 7, scope: !1458)
!1503 = !DILocation(line: 397, column: 7, scope: !1458)
!1504 = !DILocation(line: 0, scope: !1366)
!1505 = !DILocation(line: 263, column: 10, scope: !1366)
!1506 = !DILocation(line: 400, column: 8, scope: !1395)
!1507 = !DILocation(line: 0, scope: !1394)
!1508 = !DILocation(line: 400, column: 27, scope: !1394)
!1509 = !DILocation(line: 400, column: 19, scope: !1394)
!1510 = !DILocation(line: 400, column: 41, scope: !1394)
!1511 = !DILocation(line: 400, column: 48, scope: !1394)
!1512 = !DILocation(line: 400, column: 3, scope: !1395)
!1513 = !DILocation(line: 400, column: 60, scope: !1394)
!1514 = !DILocation(line: 404, column: 12, scope: !1393)
!1515 = !DILocation(line: 405, column: 12, scope: !1393)
!1516 = !DILocation(line: 406, column: 12, scope: !1393)
!1517 = !DILocation(line: 409, column: 11, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 408, column: 11)
!1519 = !DILocation(line: 411, column: 17, scope: !1518)
!1520 = !DILocation(line: 412, column: 39, scope: !1518)
!1521 = !DILocation(line: 416, column: 32, scope: !1518)
!1522 = !DILocation(line: 412, column: 19, scope: !1518)
!1523 = !DILocation(line: 412, column: 15, scope: !1518)
!1524 = !DILocation(line: 417, column: 11, scope: !1518)
!1525 = !DILocation(line: 417, column: 26, scope: !1518)
!1526 = !DILocation(line: 417, column: 14, scope: !1518)
!1527 = !DILocation(line: 417, column: 63, scope: !1518)
!1528 = !DILocation(line: 408, column: 11, scope: !1393)
!1529 = !DILocation(line: 0, scope: !1393)
!1530 = !DILocation(line: 424, column: 11, scope: !1393)
!1531 = !DILocation(line: 402, column: 21, scope: !1393)
!1532 = !DILocation(line: 425, column: 7, scope: !1393)
!1533 = !DILocation(line: 428, column: 15, scope: !1402)
!1534 = !DILocation(line: 430, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !128, line: 430, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !128, line: 429, column: 13)
!1537 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 428, column: 15)
!1538 = !DILocation(line: 430, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !128, line: 430, column: 15)
!1540 = !DILocation(line: 430, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !128, line: 430, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !128, line: 430, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !128, line: 430, column: 15)
!1544 = !DILocation(line: 430, column: 15, scope: !1542)
!1545 = !DILocation(line: 430, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !128, line: 430, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !128, line: 430, column: 15)
!1548 = !DILocation(line: 430, column: 15, scope: !1547)
!1549 = !DILocation(line: 430, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !128, line: 430, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1543, file: !128, line: 430, column: 15)
!1552 = !DILocation(line: 430, column: 15, scope: !1551)
!1553 = !DILocation(line: 430, column: 15, scope: !1543)
!1554 = !DILocation(line: 430, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !128, line: 430, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1535, file: !128, line: 430, column: 15)
!1557 = !DILocation(line: 430, column: 15, scope: !1556)
!1558 = !DILocation(line: 438, column: 19, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1536, file: !128, line: 437, column: 19)
!1560 = !DILocation(line: 438, column: 24, scope: !1559)
!1561 = !DILocation(line: 438, column: 28, scope: !1559)
!1562 = !DILocation(line: 438, column: 38, scope: !1559)
!1563 = !DILocation(line: 438, column: 48, scope: !1559)
!1564 = !DILocation(line: 438, column: 59, scope: !1559)
!1565 = !DILocation(line: 440, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !128, line: 440, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !128, line: 440, column: 19)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !128, line: 439, column: 17)
!1569 = !DILocation(line: 440, column: 19, scope: !1567)
!1570 = !DILocation(line: 441, column: 19, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !128, line: 441, column: 19)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !128, line: 441, column: 19)
!1573 = !DILocation(line: 441, column: 19, scope: !1572)
!1574 = !DILocation(line: 442, column: 17, scope: !1568)
!1575 = !DILocation(line: 449, column: 20, scope: !1537)
!1576 = !DILocation(line: 454, column: 11, scope: !1402)
!1577 = !DILocation(line: 457, column: 19, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 455, column: 13)
!1579 = !DILocation(line: 463, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1578, file: !128, line: 462, column: 19)
!1581 = !DILocation(line: 463, column: 24, scope: !1580)
!1582 = !DILocation(line: 463, column: 28, scope: !1580)
!1583 = !DILocation(line: 463, column: 38, scope: !1580)
!1584 = !DILocation(line: 463, column: 47, scope: !1580)
!1585 = !DILocation(line: 463, column: 41, scope: !1580)
!1586 = !DILocation(line: 463, column: 52, scope: !1580)
!1587 = !DILocation(line: 462, column: 19, scope: !1578)
!1588 = !DILocation(line: 464, column: 25, scope: !1580)
!1589 = !DILocation(line: 464, column: 17, scope: !1580)
!1590 = !DILocation(line: 471, column: 25, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !128, line: 465, column: 19)
!1592 = !DILocation(line: 475, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !128, line: 475, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !128, line: 475, column: 21)
!1595 = !DILocation(line: 475, column: 21, scope: !1594)
!1596 = !DILocation(line: 476, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !128, line: 476, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !128, line: 476, column: 21)
!1599 = !DILocation(line: 476, column: 21, scope: !1598)
!1600 = !DILocation(line: 477, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !128, line: 477, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1591, file: !128, line: 477, column: 21)
!1603 = !DILocation(line: 477, column: 21, scope: !1602)
!1604 = !DILocation(line: 478, column: 21, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !128, line: 478, column: 21)
!1606 = distinct !DILexicalBlock(scope: !1591, file: !128, line: 478, column: 21)
!1607 = !DILocation(line: 478, column: 21, scope: !1606)
!1608 = !DILocation(line: 479, column: 21, scope: !1591)
!1609 = !DILocation(line: 403, column: 21, scope: !1393)
!1610 = !DILocation(line: 492, column: 31, scope: !1402)
!1611 = !DILocation(line: 493, column: 31, scope: !1402)
!1612 = !DILocation(line: 495, column: 31, scope: !1402)
!1613 = !DILocation(line: 496, column: 31, scope: !1402)
!1614 = !DILocation(line: 497, column: 31, scope: !1402)
!1615 = !DILocation(line: 500, column: 15, scope: !1402)
!1616 = !DILocation(line: 502, column: 19, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !128, line: 501, column: 13)
!1618 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 500, column: 15)
!1619 = !DILocation(line: 509, column: 33, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 509, column: 15)
!1621 = !DILocation(line: 0, scope: !1402)
!1622 = !DILocation(line: 514, column: 15, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 513, column: 15)
!1624 = !DILocation(line: 518, column: 15, scope: !1402)
!1625 = !DILocation(line: 526, column: 26, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 526, column: 15)
!1627 = !DILocation(line: 526, column: 15, scope: !1402)
!1628 = !DILocation(line: 526, column: 40, scope: !1626)
!1629 = !DILocation(line: 526, column: 47, scope: !1626)
!1630 = !DILocation(line: 530, column: 17, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 530, column: 15)
!1632 = !DILocation(line: 526, column: 18, scope: !1626)
!1633 = !DILocation(line: 526, column: 65, scope: !1626)
!1634 = !DILocation(line: 530, column: 15, scope: !1402)
!1635 = !DILocation(line: 535, column: 11, scope: !1402)
!1636 = !DILocation(line: 549, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 548, column: 15)
!1638 = !DILocation(line: 556, column: 15, scope: !1402)
!1639 = !DILocation(line: 558, column: 19, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !128, line: 557, column: 13)
!1641 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 556, column: 15)
!1642 = !DILocation(line: 561, column: 19, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !128, line: 561, column: 19)
!1644 = !DILocation(line: 561, column: 35, scope: !1643)
!1645 = !DILocation(line: 561, column: 30, scope: !1643)
!1646 = !DILocation(line: 570, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !128, line: 570, column: 15)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !128, line: 570, column: 15)
!1649 = !DILocation(line: 570, column: 15, scope: !1648)
!1650 = !DILocation(line: 571, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !128, line: 571, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1640, file: !128, line: 571, column: 15)
!1653 = !DILocation(line: 571, column: 15, scope: !1652)
!1654 = !DILocation(line: 572, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !128, line: 572, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1640, file: !128, line: 572, column: 15)
!1657 = !DILocation(line: 572, column: 15, scope: !1656)
!1658 = !DILocation(line: 574, column: 13, scope: !1640)
!1659 = !DILocation(line: 614, column: 17, scope: !1401)
!1660 = !DILocation(line: 610, column: 20, scope: !1401)
!1661 = !DILocation(line: 617, column: 29, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1406, file: !128, line: 615, column: 15)
!1663 = !DILocation(line: 617, column: 27, scope: !1662)
!1664 = !DILocation(line: 612, column: 18, scope: !1401)
!1665 = !DILocation(line: 618, column: 15, scope: !1662)
!1666 = !DILocation(line: 621, column: 17, scope: !1405)
!1667 = !DILocation(line: 622, column: 17, scope: !1405)
!1668 = !DILocation(line: 626, column: 29, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1405, file: !128, line: 626, column: 21)
!1670 = !DILocation(line: 626, column: 21, scope: !1405)
!1671 = !DILocation(line: 627, column: 29, scope: !1669)
!1672 = !DILocation(line: 627, column: 19, scope: !1669)
!1673 = !DILocation(line: 0, scope: !1518)
!1674 = !DILocation(line: 629, column: 17, scope: !1405)
!1675 = !DILocation(line: 624, column: 19, scope: !1405)
!1676 = !DILocation(line: 625, column: 27, scope: !1405)
!1677 = !DILocation(line: 631, column: 21, scope: !1423)
!1678 = !DILocation(line: 632, column: 56, scope: !1423)
!1679 = !DILocation(line: 632, column: 50, scope: !1423)
!1680 = !DILocation(line: 633, column: 53, scope: !1423)
!1681 = !DILocation(line: 621, column: 27, scope: !1405)
!1682 = !DILocation(line: 631, column: 29, scope: !1423)
!1683 = !DILocation(line: 632, column: 36, scope: !1423)
!1684 = !DILocation(line: 632, column: 28, scope: !1423)
!1685 = !DILocation(line: 634, column: 25, scope: !1423)
!1686 = !DILocation(line: 644, column: 38, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1430, file: !128, line: 642, column: 23)
!1688 = !DILocation(line: 644, column: 48, scope: !1687)
!1689 = !DILocation(line: 644, column: 51, scope: !1687)
!1690 = !DILocation(line: 644, column: 25, scope: !1687)
!1691 = !DILocation(line: 645, column: 28, scope: !1687)
!1692 = !DILocation(line: 644, column: 34, scope: !1687)
!1693 = distinct !{!1693, !1690, !1691}
!1694 = !DILocation(line: 658, column: 43, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !128, line: 658, column: 29)
!1696 = distinct !DILexicalBlock(scope: !1427, file: !128, line: 658, column: 29)
!1697 = !DILocation(line: 655, column: 29, scope: !1428)
!1698 = !DILocation(line: 657, column: 36, scope: !1427)
!1699 = !DILocation(line: 659, column: 49, scope: !1695)
!1700 = !DILocation(line: 659, column: 39, scope: !1695)
!1701 = !DILocation(line: 659, column: 31, scope: !1695)
!1702 = !DILocation(line: 658, column: 53, scope: !1695)
!1703 = !DILocation(line: 658, column: 29, scope: !1696)
!1704 = distinct !{!1704, !1703, !1705}
!1705 = !DILocation(line: 667, column: 33, scope: !1696)
!1706 = !DILocation(line: 674, column: 19, scope: !1405)
!1707 = !DILocation(line: 670, column: 41, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1429, file: !128, line: 670, column: 29)
!1709 = !DILocation(line: 670, column: 31, scope: !1708)
!1710 = !DILocation(line: 670, column: 29, scope: !1429)
!1711 = !DILocation(line: 672, column: 27, scope: !1429)
!1712 = !DILocation(line: 675, column: 26, scope: !1405)
!1713 = !DILocation(line: 675, column: 24, scope: !1405)
!1714 = !DILocation(line: 674, column: 19, scope: !1423)
!1715 = distinct !{!1715, !1674, !1716}
!1716 = !DILocation(line: 675, column: 44, scope: !1405)
!1717 = !DILocation(line: 676, column: 15, scope: !1406)
!1718 = !DILocation(line: 0, scope: !1669)
!1719 = !DILocation(line: 0, scope: !1405)
!1720 = !DILocation(line: 678, column: 40, scope: !1401)
!1721 = !DILocation(line: 680, column: 19, scope: !1435)
!1722 = !DILocation(line: 680, column: 45, scope: !1435)
!1723 = !DILocation(line: 680, column: 23, scope: !1435)
!1724 = !DILocation(line: 684, column: 33, scope: !1434)
!1725 = !DILocation(line: 684, column: 24, scope: !1434)
!1726 = !DILocation(line: 686, column: 17, scope: !1434)
!1727 = !DILocation(line: 0, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !128, line: 687, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !128, line: 686, column: 17)
!1730 = distinct !DILexicalBlock(scope: !1434, file: !128, line: 686, column: 17)
!1731 = !DILocation(line: 0, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !128, line: 703, column: 21)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !128, line: 696, column: 23)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !128, line: 695, column: 30)
!1736 = distinct !DILexicalBlock(scope: !1728, file: !128, line: 688, column: 25)
!1737 = !DILocation(line: 688, column: 43, scope: !1736)
!1738 = !DILocation(line: 690, column: 25, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !128, line: 690, column: 25)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !128, line: 689, column: 23)
!1741 = !DILocation(line: 690, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !128, line: 690, column: 25)
!1743 = !DILocation(line: 690, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !128, line: 690, column: 25)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !128, line: 690, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !128, line: 690, column: 25)
!1747 = !DILocation(line: 690, column: 25, scope: !1745)
!1748 = !DILocation(line: 690, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !128, line: 690, column: 25)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !128, line: 690, column: 25)
!1751 = !DILocation(line: 690, column: 25, scope: !1750)
!1752 = !DILocation(line: 690, column: 25, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !128, line: 690, column: 25)
!1754 = distinct !DILexicalBlock(scope: !1746, file: !128, line: 690, column: 25)
!1755 = !DILocation(line: 690, column: 25, scope: !1754)
!1756 = !DILocation(line: 690, column: 25, scope: !1746)
!1757 = !DILocation(line: 690, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !128, line: 690, column: 25)
!1759 = distinct !DILexicalBlock(scope: !1739, file: !128, line: 690, column: 25)
!1760 = !DILocation(line: 690, column: 25, scope: !1759)
!1761 = !DILocation(line: 691, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !128, line: 691, column: 25)
!1763 = distinct !DILexicalBlock(scope: !1740, file: !128, line: 691, column: 25)
!1764 = !DILocation(line: 691, column: 25, scope: !1763)
!1765 = !DILocation(line: 692, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !128, line: 692, column: 25)
!1767 = distinct !DILexicalBlock(scope: !1740, file: !128, line: 692, column: 25)
!1768 = !DILocation(line: 692, column: 25, scope: !1767)
!1769 = !DILocation(line: 693, column: 38, scope: !1740)
!1770 = !DILocation(line: 693, column: 33, scope: !1740)
!1771 = !DILocation(line: 694, column: 23, scope: !1740)
!1772 = !DILocation(line: 695, column: 30, scope: !1735)
!1773 = !DILocation(line: 695, column: 30, scope: !1736)
!1774 = !DILocation(line: 697, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !128, line: 697, column: 25)
!1776 = distinct !DILexicalBlock(scope: !1734, file: !128, line: 697, column: 25)
!1777 = !DILocation(line: 697, column: 25, scope: !1776)
!1778 = !DILocation(line: 699, column: 23, scope: !1734)
!1779 = !DILocation(line: 0, scope: !1767)
!1780 = !DILocation(line: 0, scope: !1740)
!1781 = !DILocation(line: 0, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1518, file: !128, line: 418, column: 9)
!1783 = !DILocation(line: 0, scope: !1739)
!1784 = !DILocation(line: 700, column: 35, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1728, file: !128, line: 700, column: 25)
!1786 = !DILocation(line: 700, column: 30, scope: !1785)
!1787 = !DILocation(line: 700, column: 25, scope: !1728)
!1788 = !DILocation(line: 702, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !128, line: 702, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1728, file: !128, line: 702, column: 21)
!1791 = !DILocation(line: 702, column: 21, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !128, line: 702, column: 21)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !128, line: 702, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !128, line: 702, column: 21)
!1795 = !DILocation(line: 702, column: 21, scope: !1793)
!1796 = !DILocation(line: 702, column: 21, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !128, line: 702, column: 21)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !128, line: 702, column: 21)
!1799 = !DILocation(line: 702, column: 21, scope: !1798)
!1800 = !DILocation(line: 702, column: 21, scope: !1794)
!1801 = !DILocation(line: 0, scope: !1776)
!1802 = !DILocation(line: 703, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1732, file: !128, line: 703, column: 21)
!1804 = !DILocation(line: 703, column: 21, scope: !1732)
!1805 = !DILocation(line: 704, column: 25, scope: !1728)
!1806 = !DILocation(line: 686, column: 17, scope: !1729)
!1807 = distinct !{!1807, !1808, !1809}
!1808 = !DILocation(line: 686, column: 17, scope: !1730)
!1809 = !DILocation(line: 705, column: 19, scope: !1730)
!1810 = !DILocation(line: 0, scope: !1395)
!1811 = !DILocation(line: 416, column: 30, scope: !1518)
!1812 = !DILocation(line: 712, column: 34, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 712, column: 11)
!1814 = !DILocation(line: 714, column: 14, scope: !1813)
!1815 = !DILocation(line: 715, column: 14, scope: !1813)
!1816 = !DILocation(line: 715, column: 35, scope: !1813)
!1817 = !DILocation(line: 715, column: 17, scope: !1813)
!1818 = !DILocation(line: 715, column: 47, scope: !1813)
!1819 = !DILocation(line: 715, column: 65, scope: !1813)
!1820 = !DILocation(line: 716, column: 15, scope: !1813)
!1821 = !DILocation(line: 716, column: 11, scope: !1813)
!1822 = !DILocation(line: 712, column: 11, scope: !1393)
!1823 = !DILocation(line: 400, column: 10, scope: !1395)
!1824 = !DILocation(line: 0, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !128, line: 519, column: 13)
!1826 = distinct !DILexicalBlock(scope: !1402, file: !128, line: 518, column: 15)
!1827 = !DILocation(line: 720, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 720, column: 7)
!1829 = !DILocation(line: 720, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !128, line: 720, column: 7)
!1831 = !DILocation(line: 720, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !128, line: 720, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !128, line: 720, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !128, line: 720, column: 7)
!1835 = !DILocation(line: 720, column: 7, scope: !1833)
!1836 = !DILocation(line: 720, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !128, line: 720, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !128, line: 720, column: 7)
!1839 = !DILocation(line: 720, column: 7, scope: !1838)
!1840 = !DILocation(line: 720, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !128, line: 720, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !128, line: 720, column: 7)
!1843 = !DILocation(line: 720, column: 7, scope: !1842)
!1844 = !DILocation(line: 720, column: 7, scope: !1834)
!1845 = !DILocation(line: 720, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !128, line: 720, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1828, file: !128, line: 720, column: 7)
!1848 = !DILocation(line: 720, column: 7, scope: !1847)
!1849 = !DILocation(line: 723, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !128, line: 723, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 723, column: 7)
!1852 = !DILocation(line: 424, column: 9, scope: !1393)
!1853 = !DILocation(line: 723, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !128, line: 723, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !128, line: 723, column: 7)
!1856 = distinct !DILexicalBlock(scope: !1850, file: !128, line: 723, column: 7)
!1857 = !DILocation(line: 723, column: 7, scope: !1855)
!1858 = !DILocation(line: 723, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !128, line: 723, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !128, line: 723, column: 7)
!1861 = !DILocation(line: 723, column: 7, scope: !1860)
!1862 = !DILocation(line: 723, column: 7, scope: !1856)
!1863 = !DILocation(line: 724, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !128, line: 724, column: 7)
!1865 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 724, column: 7)
!1866 = !DILocation(line: 724, column: 7, scope: !1865)
!1867 = !DILocation(line: 726, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1393, file: !128, line: 726, column: 11)
!1869 = !DILocation(line: 726, column: 11, scope: !1393)
!1870 = !DILocation(line: 728, column: 5, scope: !1394)
!1871 = !DILocation(line: 400, column: 75, scope: !1394)
!1872 = !DILocation(line: 400, column: 3, scope: !1394)
!1873 = distinct !{!1873, !1512, !1874}
!1874 = !DILocation(line: 728, column: 5, scope: !1395)
!1875 = !DILocation(line: 730, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 730, column: 7)
!1877 = !DILocation(line: 730, column: 16, scope: !1876)
!1878 = !DILocation(line: 738, column: 51, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 738, column: 7)
!1880 = !DILocation(line: 739, column: 10, scope: !1879)
!1881 = !DILocation(line: 741, column: 11, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !128, line: 741, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !128, line: 740, column: 5)
!1884 = !DILocation(line: 741, column: 11, scope: !1883)
!1885 = !DILocation(line: 742, column: 16, scope: !1882)
!1886 = !DILocation(line: 742, column: 9, scope: !1882)
!1887 = !DILocation(line: 746, column: 18, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !128, line: 746, column: 16)
!1889 = !DILocation(line: 746, column: 32, scope: !1888)
!1890 = !DILocation(line: 746, column: 29, scope: !1888)
!1891 = !DILocation(line: 755, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 755, column: 7)
!1893 = !DILocation(line: 755, column: 20, scope: !1892)
!1894 = !DILocation(line: 756, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !128, line: 756, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !128, line: 756, column: 5)
!1897 = !DILocation(line: 756, column: 5, scope: !1896)
!1898 = !DILocation(line: 757, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !128, line: 757, column: 7)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !128, line: 757, column: 7)
!1901 = !DILocation(line: 757, column: 7, scope: !1900)
!1902 = !DILocation(line: 756, column: 39, scope: !1895)
!1903 = distinct !{!1903, !1897, !1904}
!1904 = !DILocation(line: 757, column: 7, scope: !1896)
!1905 = !DILocation(line: 759, column: 11, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 759, column: 7)
!1907 = !DILocation(line: 759, column: 7, scope: !1366)
!1908 = !DILocation(line: 760, column: 5, scope: !1906)
!1909 = !DILocation(line: 760, column: 17, scope: !1906)
!1910 = !DILocation(line: 766, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1366, file: !128, line: 766, column: 7)
!1912 = !DILocation(line: 766, column: 54, scope: !1911)
!1913 = !DILocation(line: 766, column: 51, scope: !1911)
!1914 = !DILocation(line: 770, column: 42, scope: !1366)
!1915 = !DILocation(line: 768, column: 10, scope: !1366)
!1916 = !DILocation(line: 768, column: 3, scope: !1366)
!1917 = !DILocation(line: 772, column: 1, scope: !1366)
!1918 = distinct !DISubprogram(name: "gettext_quote", scope: !128, file: !128, line: 207, type: !1919, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!70, !70, !29}
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DILocalVariable(name: "msgid", arg: 1, scope: !1918, file: !128, line: 207, type: !70)
!1923 = !DILocalVariable(name: "s", arg: 2, scope: !1918, file: !128, line: 207, type: !29)
!1924 = !DILocalVariable(name: "translation", scope: !1918, file: !128, line: 209, type: !70)
!1925 = !DILocalVariable(name: "locale_code", scope: !1918, file: !128, line: 210, type: !70)
!1926 = !DILocation(line: 207, column: 28, scope: !1918)
!1927 = !DILocation(line: 207, column: 54, scope: !1918)
!1928 = !DILocation(line: 209, column: 29, scope: !1918)
!1929 = !DILocation(line: 209, column: 15, scope: !1918)
!1930 = !DILocation(line: 212, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1918, file: !128, line: 212, column: 7)
!1932 = !DILocation(line: 212, column: 7, scope: !1918)
!1933 = !DILocation(line: 233, column: 17, scope: !1918)
!1934 = !DILocation(line: 210, column: 15, scope: !1918)
!1935 = !DILocalVariable(name: "s1", arg: 1, scope: !1936, file: !1937, line: 160, type: !70)
!1936 = distinct !DISubprogram(name: "strcaseeq0", scope: !1937, file: !1937, line: 160, type: !1938, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1940)
!1937 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!44, !70, !70, !52, !52, !52, !52, !52, !52, !52, !52, !52}
!1940 = !{!1935, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1941 = !DILocalVariable(name: "s2", arg: 2, scope: !1936, file: !1937, line: 160, type: !70)
!1942 = !DILocalVariable(name: "s20", arg: 3, scope: !1936, file: !1937, line: 160, type: !52)
!1943 = !DILocalVariable(name: "s21", arg: 4, scope: !1936, file: !1937, line: 160, type: !52)
!1944 = !DILocalVariable(name: "s22", arg: 5, scope: !1936, file: !1937, line: 160, type: !52)
!1945 = !DILocalVariable(name: "s23", arg: 6, scope: !1936, file: !1937, line: 160, type: !52)
!1946 = !DILocalVariable(name: "s24", arg: 7, scope: !1936, file: !1937, line: 160, type: !52)
!1947 = !DILocalVariable(name: "s25", arg: 8, scope: !1936, file: !1937, line: 160, type: !52)
!1948 = !DILocalVariable(name: "s26", arg: 9, scope: !1936, file: !1937, line: 160, type: !52)
!1949 = !DILocalVariable(name: "s27", arg: 10, scope: !1936, file: !1937, line: 160, type: !52)
!1950 = !DILocalVariable(name: "s28", arg: 11, scope: !1936, file: !1937, line: 160, type: !52)
!1951 = !DILocation(line: 160, column: 25, scope: !1936, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 234, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1918, file: !128, line: 234, column: 7)
!1954 = !DILocation(line: 160, column: 41, scope: !1936, inlinedAt: !1952)
!1955 = !DILocation(line: 160, column: 50, scope: !1936, inlinedAt: !1952)
!1956 = !DILocation(line: 160, column: 60, scope: !1936, inlinedAt: !1952)
!1957 = !DILocation(line: 160, column: 70, scope: !1936, inlinedAt: !1952)
!1958 = !DILocation(line: 160, column: 80, scope: !1936, inlinedAt: !1952)
!1959 = !DILocation(line: 160, column: 90, scope: !1936, inlinedAt: !1952)
!1960 = !DILocation(line: 160, column: 100, scope: !1936, inlinedAt: !1952)
!1961 = !DILocation(line: 160, column: 110, scope: !1936, inlinedAt: !1952)
!1962 = !DILocation(line: 160, column: 120, scope: !1936, inlinedAt: !1952)
!1963 = !DILocation(line: 160, column: 130, scope: !1936, inlinedAt: !1952)
!1964 = !DILocation(line: 162, column: 7, scope: !1965, inlinedAt: !1952)
!1965 = distinct !DILexicalBlock(scope: !1936, file: !1937, line: 162, column: 7)
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1967, file: !1937, line: 146, type: !70)
!1967 = distinct !DISubprogram(name: "strcaseeq1", scope: !1937, file: !1937, line: 146, type: !1968, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!44, !70, !70, !52, !52, !52, !52, !52, !52, !52, !52}
!1970 = !{!1966, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1971 = !DILocalVariable(name: "s2", arg: 2, scope: !1967, file: !1937, line: 146, type: !70)
!1972 = !DILocalVariable(name: "s21", arg: 3, scope: !1967, file: !1937, line: 146, type: !52)
!1973 = !DILocalVariable(name: "s22", arg: 4, scope: !1967, file: !1937, line: 146, type: !52)
!1974 = !DILocalVariable(name: "s23", arg: 5, scope: !1967, file: !1937, line: 146, type: !52)
!1975 = !DILocalVariable(name: "s24", arg: 6, scope: !1967, file: !1937, line: 146, type: !52)
!1976 = !DILocalVariable(name: "s25", arg: 7, scope: !1967, file: !1937, line: 146, type: !52)
!1977 = !DILocalVariable(name: "s26", arg: 8, scope: !1967, file: !1937, line: 146, type: !52)
!1978 = !DILocalVariable(name: "s27", arg: 9, scope: !1967, file: !1937, line: 146, type: !52)
!1979 = !DILocalVariable(name: "s28", arg: 10, scope: !1967, file: !1937, line: 146, type: !52)
!1980 = !DILocation(line: 146, column: 25, scope: !1967, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 167, column: 16, scope: !1982, inlinedAt: !1952)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1937, line: 164, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1965, file: !1937, line: 163, column: 5)
!1984 = !DILocation(line: 146, column: 41, scope: !1967, inlinedAt: !1981)
!1985 = !DILocation(line: 146, column: 50, scope: !1967, inlinedAt: !1981)
!1986 = !DILocation(line: 146, column: 60, scope: !1967, inlinedAt: !1981)
!1987 = !DILocation(line: 146, column: 70, scope: !1967, inlinedAt: !1981)
!1988 = !DILocation(line: 146, column: 80, scope: !1967, inlinedAt: !1981)
!1989 = !DILocation(line: 146, column: 90, scope: !1967, inlinedAt: !1981)
!1990 = !DILocation(line: 146, column: 100, scope: !1967, inlinedAt: !1981)
!1991 = !DILocation(line: 146, column: 110, scope: !1967, inlinedAt: !1981)
!1992 = !DILocation(line: 146, column: 120, scope: !1967, inlinedAt: !1981)
!1993 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !1981)
!1994 = distinct !DILexicalBlock(scope: !1967, file: !1937, line: 148, column: 7)
!1995 = !DILocalVariable(name: "s1", arg: 1, scope: !1996, file: !1937, line: 132, type: !70)
!1996 = distinct !DISubprogram(name: "strcaseeq2", scope: !1937, file: !1937, line: 132, type: !1997, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!44, !70, !70, !52, !52, !52, !52, !52, !52, !52}
!1999 = !{!1995, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!2000 = !DILocalVariable(name: "s2", arg: 2, scope: !1996, file: !1937, line: 132, type: !70)
!2001 = !DILocalVariable(name: "s22", arg: 3, scope: !1996, file: !1937, line: 132, type: !52)
!2002 = !DILocalVariable(name: "s23", arg: 4, scope: !1996, file: !1937, line: 132, type: !52)
!2003 = !DILocalVariable(name: "s24", arg: 5, scope: !1996, file: !1937, line: 132, type: !52)
!2004 = !DILocalVariable(name: "s25", arg: 6, scope: !1996, file: !1937, line: 132, type: !52)
!2005 = !DILocalVariable(name: "s26", arg: 7, scope: !1996, file: !1937, line: 132, type: !52)
!2006 = !DILocalVariable(name: "s27", arg: 8, scope: !1996, file: !1937, line: 132, type: !52)
!2007 = !DILocalVariable(name: "s28", arg: 9, scope: !1996, file: !1937, line: 132, type: !52)
!2008 = !DILocation(line: 132, column: 25, scope: !1996, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !1981)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1937, line: 150, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1994, file: !1937, line: 149, column: 5)
!2012 = !DILocation(line: 132, column: 41, scope: !1996, inlinedAt: !2009)
!2013 = !DILocation(line: 132, column: 50, scope: !1996, inlinedAt: !2009)
!2014 = !DILocation(line: 132, column: 60, scope: !1996, inlinedAt: !2009)
!2015 = !DILocation(line: 132, column: 70, scope: !1996, inlinedAt: !2009)
!2016 = !DILocation(line: 132, column: 80, scope: !1996, inlinedAt: !2009)
!2017 = !DILocation(line: 132, column: 90, scope: !1996, inlinedAt: !2009)
!2018 = !DILocation(line: 132, column: 100, scope: !1996, inlinedAt: !2009)
!2019 = !DILocation(line: 132, column: 110, scope: !1996, inlinedAt: !2009)
!2020 = !DILocation(line: 134, column: 7, scope: !2021, inlinedAt: !2009)
!2021 = distinct !DILexicalBlock(scope: !1996, file: !1937, line: 134, column: 7)
!2022 = !DILocalVariable(name: "s1", arg: 1, scope: !2023, file: !1937, line: 118, type: !70)
!2023 = distinct !DISubprogram(name: "strcaseeq3", scope: !1937, file: !1937, line: 118, type: !2024, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!44, !70, !70, !52, !52, !52, !52, !52, !52}
!2026 = !{!2022, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!2027 = !DILocalVariable(name: "s2", arg: 2, scope: !2023, file: !1937, line: 118, type: !70)
!2028 = !DILocalVariable(name: "s23", arg: 3, scope: !2023, file: !1937, line: 118, type: !52)
!2029 = !DILocalVariable(name: "s24", arg: 4, scope: !2023, file: !1937, line: 118, type: !52)
!2030 = !DILocalVariable(name: "s25", arg: 5, scope: !2023, file: !1937, line: 118, type: !52)
!2031 = !DILocalVariable(name: "s26", arg: 6, scope: !2023, file: !1937, line: 118, type: !52)
!2032 = !DILocalVariable(name: "s27", arg: 7, scope: !2023, file: !1937, line: 118, type: !52)
!2033 = !DILocalVariable(name: "s28", arg: 8, scope: !2023, file: !1937, line: 118, type: !52)
!2034 = !DILocation(line: 118, column: 25, scope: !2023, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 139, column: 16, scope: !2036, inlinedAt: !2009)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1937, line: 136, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !1937, line: 135, column: 5)
!2038 = !DILocation(line: 118, column: 41, scope: !2023, inlinedAt: !2035)
!2039 = !DILocation(line: 118, column: 50, scope: !2023, inlinedAt: !2035)
!2040 = !DILocation(line: 118, column: 60, scope: !2023, inlinedAt: !2035)
!2041 = !DILocation(line: 118, column: 70, scope: !2023, inlinedAt: !2035)
!2042 = !DILocation(line: 118, column: 80, scope: !2023, inlinedAt: !2035)
!2043 = !DILocation(line: 118, column: 90, scope: !2023, inlinedAt: !2035)
!2044 = !DILocation(line: 118, column: 100, scope: !2023, inlinedAt: !2035)
!2045 = !DILocation(line: 120, column: 7, scope: !2046, inlinedAt: !2035)
!2046 = distinct !DILexicalBlock(scope: !2023, file: !1937, line: 120, column: 7)
!2047 = !DILocation(line: 120, column: 7, scope: !2023, inlinedAt: !2035)
!2048 = !DILocalVariable(name: "s1", arg: 1, scope: !2049, file: !1937, line: 104, type: !70)
!2049 = distinct !DISubprogram(name: "strcaseeq4", scope: !1937, file: !1937, line: 104, type: !2050, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!44, !70, !70, !52, !52, !52, !52, !52}
!2052 = !{!2048, !2053, !2054, !2055, !2056, !2057, !2058}
!2053 = !DILocalVariable(name: "s2", arg: 2, scope: !2049, file: !1937, line: 104, type: !70)
!2054 = !DILocalVariable(name: "s24", arg: 3, scope: !2049, file: !1937, line: 104, type: !52)
!2055 = !DILocalVariable(name: "s25", arg: 4, scope: !2049, file: !1937, line: 104, type: !52)
!2056 = !DILocalVariable(name: "s26", arg: 5, scope: !2049, file: !1937, line: 104, type: !52)
!2057 = !DILocalVariable(name: "s27", arg: 6, scope: !2049, file: !1937, line: 104, type: !52)
!2058 = !DILocalVariable(name: "s28", arg: 7, scope: !2049, file: !1937, line: 104, type: !52)
!2059 = !DILocation(line: 104, column: 25, scope: !2049, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 125, column: 16, scope: !2061, inlinedAt: !2035)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !1937, line: 122, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2046, file: !1937, line: 121, column: 5)
!2063 = !DILocation(line: 104, column: 41, scope: !2049, inlinedAt: !2060)
!2064 = !DILocation(line: 104, column: 50, scope: !2049, inlinedAt: !2060)
!2065 = !DILocation(line: 104, column: 60, scope: !2049, inlinedAt: !2060)
!2066 = !DILocation(line: 104, column: 70, scope: !2049, inlinedAt: !2060)
!2067 = !DILocation(line: 104, column: 80, scope: !2049, inlinedAt: !2060)
!2068 = !DILocation(line: 104, column: 90, scope: !2049, inlinedAt: !2060)
!2069 = !DILocation(line: 106, column: 7, scope: !2070, inlinedAt: !2060)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !1937, line: 106, column: 7)
!2071 = !DILocation(line: 106, column: 7, scope: !2049, inlinedAt: !2060)
!2072 = !DILocalVariable(name: "s1", arg: 1, scope: !2073, file: !1937, line: 90, type: !70)
!2073 = distinct !DISubprogram(name: "strcaseeq5", scope: !1937, file: !1937, line: 90, type: !2074, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!44, !70, !70, !52, !52, !52, !52}
!2076 = !{!2072, !2077, !2078, !2079, !2080, !2081}
!2077 = !DILocalVariable(name: "s2", arg: 2, scope: !2073, file: !1937, line: 90, type: !70)
!2078 = !DILocalVariable(name: "s25", arg: 3, scope: !2073, file: !1937, line: 90, type: !52)
!2079 = !DILocalVariable(name: "s26", arg: 4, scope: !2073, file: !1937, line: 90, type: !52)
!2080 = !DILocalVariable(name: "s27", arg: 5, scope: !2073, file: !1937, line: 90, type: !52)
!2081 = !DILocalVariable(name: "s28", arg: 6, scope: !2073, file: !1937, line: 90, type: !52)
!2082 = !DILocation(line: 90, column: 25, scope: !2073, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 111, column: 16, scope: !2084, inlinedAt: !2060)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !1937, line: 108, column: 11)
!2085 = distinct !DILexicalBlock(scope: !2070, file: !1937, line: 107, column: 5)
!2086 = !DILocation(line: 90, column: 41, scope: !2073, inlinedAt: !2083)
!2087 = !DILocation(line: 90, column: 50, scope: !2073, inlinedAt: !2083)
!2088 = !DILocation(line: 90, column: 60, scope: !2073, inlinedAt: !2083)
!2089 = !DILocation(line: 90, column: 70, scope: !2073, inlinedAt: !2083)
!2090 = !DILocation(line: 90, column: 80, scope: !2073, inlinedAt: !2083)
!2091 = !DILocation(line: 92, column: 7, scope: !2092, inlinedAt: !2083)
!2092 = distinct !DILexicalBlock(scope: !2073, file: !1937, line: 92, column: 7)
!2093 = !DILocation(line: 92, column: 7, scope: !2073, inlinedAt: !2083)
!2094 = !DILocation(line: 235, column: 12, scope: !1953)
!2095 = !DILocation(line: 235, column: 21, scope: !1953)
!2096 = !DILocation(line: 235, column: 5, scope: !1953)
!2097 = !DILocation(line: 146, column: 25, scope: !1967, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 167, column: 16, scope: !1982, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 236, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1918, file: !128, line: 236, column: 7)
!2101 = !DILocation(line: 146, column: 41, scope: !1967, inlinedAt: !2098)
!2102 = !DILocation(line: 146, column: 50, scope: !1967, inlinedAt: !2098)
!2103 = !DILocation(line: 146, column: 60, scope: !1967, inlinedAt: !2098)
!2104 = !DILocation(line: 146, column: 70, scope: !1967, inlinedAt: !2098)
!2105 = !DILocation(line: 146, column: 80, scope: !1967, inlinedAt: !2098)
!2106 = !DILocation(line: 146, column: 90, scope: !1967, inlinedAt: !2098)
!2107 = !DILocation(line: 146, column: 100, scope: !1967, inlinedAt: !2098)
!2108 = !DILocation(line: 146, column: 110, scope: !1967, inlinedAt: !2098)
!2109 = !DILocation(line: 146, column: 120, scope: !1967, inlinedAt: !2098)
!2110 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !2098)
!2111 = !DILocation(line: 132, column: 25, scope: !1996, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !2098)
!2113 = !DILocation(line: 132, column: 41, scope: !1996, inlinedAt: !2112)
!2114 = !DILocation(line: 132, column: 50, scope: !1996, inlinedAt: !2112)
!2115 = !DILocation(line: 132, column: 60, scope: !1996, inlinedAt: !2112)
!2116 = !DILocation(line: 132, column: 70, scope: !1996, inlinedAt: !2112)
!2117 = !DILocation(line: 132, column: 80, scope: !1996, inlinedAt: !2112)
!2118 = !DILocation(line: 132, column: 90, scope: !1996, inlinedAt: !2112)
!2119 = !DILocation(line: 132, column: 100, scope: !1996, inlinedAt: !2112)
!2120 = !DILocation(line: 132, column: 110, scope: !1996, inlinedAt: !2112)
!2121 = !DILocation(line: 134, column: 7, scope: !2021, inlinedAt: !2112)
!2122 = !DILocation(line: 134, column: 7, scope: !1996, inlinedAt: !2112)
!2123 = !DILocation(line: 118, column: 25, scope: !2023, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 139, column: 16, scope: !2036, inlinedAt: !2112)
!2125 = !DILocation(line: 118, column: 41, scope: !2023, inlinedAt: !2124)
!2126 = !DILocation(line: 118, column: 50, scope: !2023, inlinedAt: !2124)
!2127 = !DILocation(line: 118, column: 60, scope: !2023, inlinedAt: !2124)
!2128 = !DILocation(line: 118, column: 70, scope: !2023, inlinedAt: !2124)
!2129 = !DILocation(line: 118, column: 80, scope: !2023, inlinedAt: !2124)
!2130 = !DILocation(line: 118, column: 90, scope: !2023, inlinedAt: !2124)
!2131 = !DILocation(line: 118, column: 100, scope: !2023, inlinedAt: !2124)
!2132 = !DILocation(line: 120, column: 7, scope: !2046, inlinedAt: !2124)
!2133 = !DILocation(line: 120, column: 7, scope: !2023, inlinedAt: !2124)
!2134 = !DILocation(line: 104, column: 25, scope: !2049, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 125, column: 16, scope: !2061, inlinedAt: !2124)
!2136 = !DILocation(line: 104, column: 41, scope: !2049, inlinedAt: !2135)
!2137 = !DILocation(line: 104, column: 50, scope: !2049, inlinedAt: !2135)
!2138 = !DILocation(line: 104, column: 60, scope: !2049, inlinedAt: !2135)
!2139 = !DILocation(line: 104, column: 70, scope: !2049, inlinedAt: !2135)
!2140 = !DILocation(line: 104, column: 80, scope: !2049, inlinedAt: !2135)
!2141 = !DILocation(line: 104, column: 90, scope: !2049, inlinedAt: !2135)
!2142 = !DILocation(line: 106, column: 7, scope: !2070, inlinedAt: !2135)
!2143 = !DILocation(line: 106, column: 7, scope: !2049, inlinedAt: !2135)
!2144 = !DILocation(line: 90, column: 25, scope: !2073, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 111, column: 16, scope: !2084, inlinedAt: !2135)
!2146 = !DILocation(line: 90, column: 41, scope: !2073, inlinedAt: !2145)
!2147 = !DILocation(line: 90, column: 50, scope: !2073, inlinedAt: !2145)
!2148 = !DILocation(line: 90, column: 60, scope: !2073, inlinedAt: !2145)
!2149 = !DILocation(line: 90, column: 70, scope: !2073, inlinedAt: !2145)
!2150 = !DILocation(line: 90, column: 80, scope: !2073, inlinedAt: !2145)
!2151 = !DILocation(line: 92, column: 7, scope: !2092, inlinedAt: !2145)
!2152 = !DILocation(line: 92, column: 7, scope: !2073, inlinedAt: !2145)
!2153 = !DILocalVariable(name: "s1", arg: 1, scope: !2154, file: !1937, line: 76, type: !70)
!2154 = distinct !DISubprogram(name: "strcaseeq6", scope: !1937, file: !1937, line: 76, type: !2155, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!44, !70, !70, !52, !52, !52}
!2157 = !{!2153, !2158, !2159, !2160, !2161}
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2154, file: !1937, line: 76, type: !70)
!2159 = !DILocalVariable(name: "s26", arg: 3, scope: !2154, file: !1937, line: 76, type: !52)
!2160 = !DILocalVariable(name: "s27", arg: 4, scope: !2154, file: !1937, line: 76, type: !52)
!2161 = !DILocalVariable(name: "s28", arg: 5, scope: !2154, file: !1937, line: 76, type: !52)
!2162 = !DILocation(line: 76, column: 25, scope: !2154, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 97, column: 16, scope: !2164, inlinedAt: !2145)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !1937, line: 94, column: 11)
!2165 = distinct !DILexicalBlock(scope: !2092, file: !1937, line: 93, column: 5)
!2166 = !DILocation(line: 76, column: 41, scope: !2154, inlinedAt: !2163)
!2167 = !DILocation(line: 76, column: 50, scope: !2154, inlinedAt: !2163)
!2168 = !DILocation(line: 76, column: 60, scope: !2154, inlinedAt: !2163)
!2169 = !DILocation(line: 76, column: 70, scope: !2154, inlinedAt: !2163)
!2170 = !DILocation(line: 78, column: 7, scope: !2171, inlinedAt: !2163)
!2171 = distinct !DILexicalBlock(scope: !2154, file: !1937, line: 78, column: 7)
!2172 = !DILocation(line: 78, column: 7, scope: !2154, inlinedAt: !2163)
!2173 = !DILocalVariable(name: "s1", arg: 1, scope: !2174, file: !1937, line: 62, type: !70)
!2174 = distinct !DISubprogram(name: "strcaseeq7", scope: !1937, file: !1937, line: 62, type: !2175, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!44, !70, !70, !52, !52}
!2177 = !{!2173, !2178, !2179, !2180}
!2178 = !DILocalVariable(name: "s2", arg: 2, scope: !2174, file: !1937, line: 62, type: !70)
!2179 = !DILocalVariable(name: "s27", arg: 3, scope: !2174, file: !1937, line: 62, type: !52)
!2180 = !DILocalVariable(name: "s28", arg: 4, scope: !2174, file: !1937, line: 62, type: !52)
!2181 = !DILocation(line: 62, column: 25, scope: !2174, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 83, column: 16, scope: !2183, inlinedAt: !2163)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !1937, line: 80, column: 11)
!2184 = distinct !DILexicalBlock(scope: !2171, file: !1937, line: 79, column: 5)
!2185 = !DILocation(line: 62, column: 41, scope: !2174, inlinedAt: !2182)
!2186 = !DILocation(line: 62, column: 50, scope: !2174, inlinedAt: !2182)
!2187 = !DILocation(line: 62, column: 60, scope: !2174, inlinedAt: !2182)
!2188 = !DILocation(line: 64, column: 7, scope: !2189, inlinedAt: !2182)
!2189 = distinct !DILexicalBlock(scope: !2174, file: !1937, line: 64, column: 7)
!2190 = !DILocation(line: 236, column: 7, scope: !1918)
!2191 = !DILocation(line: 237, column: 12, scope: !2100)
!2192 = !DILocation(line: 237, column: 21, scope: !2100)
!2193 = !DILocation(line: 237, column: 5, scope: !2100)
!2194 = !DILocation(line: 239, column: 13, scope: !1918)
!2195 = !DILocation(line: 239, column: 11, scope: !1918)
!2196 = !DILocation(line: 239, column: 3, scope: !1918)
!2197 = !DILocation(line: 0, scope: !1918)
!2198 = !DILocation(line: 240, column: 1, scope: !1918)
!2199 = distinct !DISubprogram(name: "quotearg_alloc", scope: !128, file: !128, line: 799, type: !2200, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!51, !70, !54, !1238}
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "arg", arg: 1, scope: !2199, file: !128, line: 799, type: !70)
!2204 = !DILocalVariable(name: "argsize", arg: 2, scope: !2199, file: !128, line: 799, type: !54)
!2205 = !DILocalVariable(name: "o", arg: 3, scope: !2199, file: !128, line: 800, type: !1238)
!2206 = !DILocation(line: 799, column: 29, scope: !2199)
!2207 = !DILocation(line: 799, column: 41, scope: !2199)
!2208 = !DILocation(line: 800, column: 47, scope: !2199)
!2209 = !DILocalVariable(name: "arg", arg: 1, scope: !2210, file: !128, line: 812, type: !70)
!2210 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !128, file: !128, line: 812, type: !2211, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!51, !70, !54, !192, !1238}
!2213 = !{!2209, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2214 = !DILocalVariable(name: "argsize", arg: 2, scope: !2210, file: !128, line: 812, type: !54)
!2215 = !DILocalVariable(name: "size", arg: 3, scope: !2210, file: !128, line: 812, type: !192)
!2216 = !DILocalVariable(name: "o", arg: 4, scope: !2210, file: !128, line: 813, type: !1238)
!2217 = !DILocalVariable(name: "p", scope: !2210, file: !128, line: 815, type: !1238)
!2218 = !DILocalVariable(name: "e", scope: !2210, file: !128, line: 816, type: !44)
!2219 = !DILocalVariable(name: "flags", scope: !2210, file: !128, line: 818, type: !44)
!2220 = !DILocalVariable(name: "bufsize", scope: !2210, file: !128, line: 819, type: !54)
!2221 = !DILocalVariable(name: "buf", scope: !2210, file: !128, line: 823, type: !51)
!2222 = !DILocation(line: 812, column: 33, scope: !2210, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 802, column: 10, scope: !2199)
!2224 = !DILocation(line: 812, column: 45, scope: !2210, inlinedAt: !2223)
!2225 = !DILocation(line: 812, column: 62, scope: !2210, inlinedAt: !2223)
!2226 = !DILocation(line: 813, column: 51, scope: !2210, inlinedAt: !2223)
!2227 = !DILocation(line: 815, column: 37, scope: !2210, inlinedAt: !2223)
!2228 = !DILocation(line: 815, column: 33, scope: !2210, inlinedAt: !2223)
!2229 = !DILocation(line: 816, column: 11, scope: !2210, inlinedAt: !2223)
!2230 = !DILocation(line: 816, column: 7, scope: !2210, inlinedAt: !2223)
!2231 = !DILocation(line: 818, column: 18, scope: !2210, inlinedAt: !2223)
!2232 = !DILocation(line: 818, column: 24, scope: !2210, inlinedAt: !2223)
!2233 = !DILocation(line: 818, column: 7, scope: !2210, inlinedAt: !2223)
!2234 = !DILocation(line: 819, column: 69, scope: !2210, inlinedAt: !2223)
!2235 = !DILocation(line: 820, column: 53, scope: !2210, inlinedAt: !2223)
!2236 = !DILocation(line: 821, column: 49, scope: !2210, inlinedAt: !2223)
!2237 = !DILocation(line: 822, column: 49, scope: !2210, inlinedAt: !2223)
!2238 = !DILocation(line: 819, column: 20, scope: !2210, inlinedAt: !2223)
!2239 = !DILocation(line: 822, column: 62, scope: !2210, inlinedAt: !2223)
!2240 = !DILocation(line: 819, column: 10, scope: !2210, inlinedAt: !2223)
!2241 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !188, line: 216, type: !54)
!2242 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !2243, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!51, !54}
!2245 = !{!2241}
!2246 = !DILocation(line: 216, column: 20, scope: !2242, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 823, column: 15, scope: !2210, inlinedAt: !2223)
!2248 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2247)
!2249 = !DILocation(line: 823, column: 9, scope: !2210, inlinedAt: !2223)
!2250 = !DILocation(line: 824, column: 60, scope: !2210, inlinedAt: !2223)
!2251 = !DILocation(line: 826, column: 32, scope: !2210, inlinedAt: !2223)
!2252 = !DILocation(line: 826, column: 47, scope: !2210, inlinedAt: !2223)
!2253 = !DILocation(line: 824, column: 3, scope: !2210, inlinedAt: !2223)
!2254 = !DILocation(line: 827, column: 9, scope: !2210, inlinedAt: !2223)
!2255 = !DILocation(line: 802, column: 3, scope: !2199)
!2256 = !DILocation(line: 812, column: 33, scope: !2210)
!2257 = !DILocation(line: 812, column: 45, scope: !2210)
!2258 = !DILocation(line: 812, column: 62, scope: !2210)
!2259 = !DILocation(line: 813, column: 51, scope: !2210)
!2260 = !DILocation(line: 815, column: 37, scope: !2210)
!2261 = !DILocation(line: 815, column: 33, scope: !2210)
!2262 = !DILocation(line: 816, column: 11, scope: !2210)
!2263 = !DILocation(line: 816, column: 7, scope: !2210)
!2264 = !DILocation(line: 818, column: 18, scope: !2210)
!2265 = !DILocation(line: 818, column: 27, scope: !2210)
!2266 = !DILocation(line: 818, column: 24, scope: !2210)
!2267 = !DILocation(line: 818, column: 7, scope: !2210)
!2268 = !DILocation(line: 819, column: 69, scope: !2210)
!2269 = !DILocation(line: 820, column: 53, scope: !2210)
!2270 = !DILocation(line: 821, column: 49, scope: !2210)
!2271 = !DILocation(line: 822, column: 49, scope: !2210)
!2272 = !DILocation(line: 819, column: 20, scope: !2210)
!2273 = !DILocation(line: 822, column: 62, scope: !2210)
!2274 = !DILocation(line: 819, column: 10, scope: !2210)
!2275 = !DILocation(line: 216, column: 20, scope: !2242, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 823, column: 15, scope: !2210)
!2277 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2276)
!2278 = !DILocation(line: 823, column: 9, scope: !2210)
!2279 = !DILocation(line: 824, column: 60, scope: !2210)
!2280 = !DILocation(line: 826, column: 32, scope: !2210)
!2281 = !DILocation(line: 826, column: 47, scope: !2210)
!2282 = !DILocation(line: 824, column: 3, scope: !2210)
!2283 = !DILocation(line: 827, column: 9, scope: !2210)
!2284 = !DILocation(line: 828, column: 7, scope: !2210)
!2285 = !DILocation(line: 829, column: 11, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2210, file: !128, line: 828, column: 7)
!2287 = !{!915, !915, i64 0}
!2288 = !DILocation(line: 829, column: 5, scope: !2286)
!2289 = !DILocation(line: 830, column: 3, scope: !2210)
!2290 = distinct !DISubprogram(name: "quotearg_free", scope: !128, file: !128, line: 848, type: !665, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2291)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "sv", scope: !2290, file: !128, line: 850, type: !154)
!2293 = !DILocalVariable(name: "i", scope: !2290, file: !128, line: 851, type: !44)
!2294 = !DILocation(line: 850, column: 24, scope: !2290)
!2295 = !DILocation(line: 850, column: 19, scope: !2290)
!2296 = !DILocation(line: 851, column: 7, scope: !2290)
!2297 = !DILocation(line: 852, column: 19, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !128, line: 852, column: 3)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !128, line: 852, column: 3)
!2300 = !DILocation(line: 852, column: 17, scope: !2298)
!2301 = !DILocation(line: 852, column: 3, scope: !2299)
!2302 = !DILocation(line: 853, column: 17, scope: !2298)
!2303 = !{!2304, !658, i64 8}
!2304 = !{!"slotvec", !915, i64 0, !658, i64 8}
!2305 = !DILocation(line: 853, column: 5, scope: !2298)
!2306 = !DILocation(line: 852, column: 28, scope: !2298)
!2307 = distinct !{!2307, !2301, !2308}
!2308 = !DILocation(line: 853, column: 20, scope: !2299)
!2309 = !DILocation(line: 854, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !128, line: 854, column: 7)
!2311 = !DILocation(line: 854, column: 17, scope: !2310)
!2312 = !DILocation(line: 854, column: 7, scope: !2290)
!2313 = !DILocation(line: 856, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !128, line: 855, column: 5)
!2315 = !DILocation(line: 857, column: 21, scope: !2314)
!2316 = !{!2304, !915, i64 0}
!2317 = !DILocation(line: 858, column: 20, scope: !2314)
!2318 = !DILocation(line: 859, column: 5, scope: !2314)
!2319 = !DILocation(line: 860, column: 10, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2290, file: !128, line: 860, column: 7)
!2321 = !DILocation(line: 860, column: 7, scope: !2290)
!2322 = !DILocation(line: 862, column: 13, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !128, line: 861, column: 5)
!2324 = !DILocation(line: 862, column: 7, scope: !2323)
!2325 = !DILocation(line: 863, column: 15, scope: !2323)
!2326 = !DILocation(line: 864, column: 5, scope: !2323)
!2327 = !DILocation(line: 865, column: 10, scope: !2290)
!2328 = !DILocation(line: 866, column: 1, scope: !2290)
!2329 = distinct !DISubprogram(name: "quotearg_n", scope: !128, file: !128, line: 931, type: !2330, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!51, !44, !70}
!2332 = !{!2333, !2334}
!2333 = !DILocalVariable(name: "n", arg: 1, scope: !2329, file: !128, line: 931, type: !44)
!2334 = !DILocalVariable(name: "arg", arg: 2, scope: !2329, file: !128, line: 931, type: !70)
!2335 = !DILocation(line: 931, column: 17, scope: !2329)
!2336 = !DILocation(line: 931, column: 32, scope: !2329)
!2337 = !DILocation(line: 933, column: 10, scope: !2329)
!2338 = !DILocation(line: 933, column: 3, scope: !2329)
!2339 = distinct !DISubprogram(name: "quotearg_n_options", scope: !128, file: !128, line: 877, type: !2340, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!51, !44, !70, !54, !1238}
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2352, !2353, !2355, !2356, !2357}
!2343 = !DILocalVariable(name: "n", arg: 1, scope: !2339, file: !128, line: 877, type: !44)
!2344 = !DILocalVariable(name: "arg", arg: 2, scope: !2339, file: !128, line: 877, type: !70)
!2345 = !DILocalVariable(name: "argsize", arg: 3, scope: !2339, file: !128, line: 877, type: !54)
!2346 = !DILocalVariable(name: "options", arg: 4, scope: !2339, file: !128, line: 878, type: !1238)
!2347 = !DILocalVariable(name: "e", scope: !2339, file: !128, line: 880, type: !44)
!2348 = !DILocalVariable(name: "sv", scope: !2339, file: !128, line: 882, type: !154)
!2349 = !DILocalVariable(name: "preallocated", scope: !2350, file: !128, line: 889, type: !65)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !128, line: 888, column: 5)
!2351 = distinct !DILexicalBlock(scope: !2339, file: !128, line: 887, column: 7)
!2352 = !DILocalVariable(name: "nmax", scope: !2350, file: !128, line: 890, type: !44)
!2353 = !DILocalVariable(name: "size", scope: !2354, file: !128, line: 903, type: !54)
!2354 = distinct !DILexicalBlock(scope: !2339, file: !128, line: 902, column: 3)
!2355 = !DILocalVariable(name: "val", scope: !2354, file: !128, line: 904, type: !51)
!2356 = !DILocalVariable(name: "flags", scope: !2354, file: !128, line: 906, type: !44)
!2357 = !DILocalVariable(name: "qsize", scope: !2354, file: !128, line: 907, type: !54)
!2358 = !DILocation(line: 877, column: 25, scope: !2339)
!2359 = !DILocation(line: 877, column: 40, scope: !2339)
!2360 = !DILocation(line: 877, column: 52, scope: !2339)
!2361 = !DILocation(line: 878, column: 51, scope: !2339)
!2362 = !DILocation(line: 880, column: 11, scope: !2339)
!2363 = !DILocation(line: 880, column: 7, scope: !2339)
!2364 = !DILocation(line: 882, column: 24, scope: !2339)
!2365 = !DILocation(line: 882, column: 19, scope: !2339)
!2366 = !DILocation(line: 884, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2339, file: !128, line: 884, column: 7)
!2368 = !DILocation(line: 884, column: 7, scope: !2339)
!2369 = !DILocation(line: 885, column: 5, scope: !2367)
!2370 = !DILocation(line: 887, column: 7, scope: !2351)
!2371 = !DILocation(line: 887, column: 14, scope: !2351)
!2372 = !DILocation(line: 887, column: 7, scope: !2339)
!2373 = !DILocation(line: 889, column: 31, scope: !2350)
!2374 = !DILocation(line: 890, column: 11, scope: !2350)
!2375 = !DILocation(line: 892, column: 16, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2350, file: !128, line: 892, column: 11)
!2377 = !DILocation(line: 892, column: 11, scope: !2350)
!2378 = !DILocation(line: 893, column: 9, scope: !2376)
!2379 = !DILocation(line: 895, column: 32, scope: !2350)
!2380 = !DILocation(line: 895, column: 61, scope: !2350)
!2381 = !DILocation(line: 895, column: 58, scope: !2350)
!2382 = !DILocation(line: 895, column: 66, scope: !2350)
!2383 = !DILocation(line: 895, column: 22, scope: !2350)
!2384 = !DILocation(line: 895, column: 15, scope: !2350)
!2385 = !DILocation(line: 896, column: 11, scope: !2350)
!2386 = !DILocation(line: 897, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2350, file: !128, line: 896, column: 11)
!2388 = !{i64 0, i64 8, !2287, i64 8, i64 8, !657}
!2389 = !DILocation(line: 897, column: 9, scope: !2387)
!2390 = !DILocation(line: 898, column: 20, scope: !2350)
!2391 = !DILocation(line: 898, column: 18, scope: !2350)
!2392 = !DILocation(line: 898, column: 7, scope: !2350)
!2393 = !DILocation(line: 898, column: 38, scope: !2350)
!2394 = !DILocation(line: 898, column: 31, scope: !2350)
!2395 = !DILocation(line: 898, column: 48, scope: !2350)
!2396 = !DILocation(line: 899, column: 14, scope: !2350)
!2397 = !DILocation(line: 900, column: 5, scope: !2350)
!2398 = !DILocation(line: 0, scope: !2339)
!2399 = !DILocation(line: 903, column: 19, scope: !2354)
!2400 = !DILocation(line: 903, column: 25, scope: !2354)
!2401 = !DILocation(line: 903, column: 12, scope: !2354)
!2402 = !DILocation(line: 904, column: 23, scope: !2354)
!2403 = !DILocation(line: 904, column: 11, scope: !2354)
!2404 = !DILocation(line: 906, column: 26, scope: !2354)
!2405 = !DILocation(line: 906, column: 32, scope: !2354)
!2406 = !DILocation(line: 906, column: 9, scope: !2354)
!2407 = !DILocation(line: 908, column: 55, scope: !2354)
!2408 = !DILocation(line: 909, column: 46, scope: !2354)
!2409 = !DILocation(line: 910, column: 55, scope: !2354)
!2410 = !DILocation(line: 911, column: 55, scope: !2354)
!2411 = !DILocation(line: 907, column: 20, scope: !2354)
!2412 = !DILocation(line: 907, column: 12, scope: !2354)
!2413 = !DILocation(line: 913, column: 14, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2354, file: !128, line: 913, column: 9)
!2415 = !DILocation(line: 913, column: 9, scope: !2354)
!2416 = !DILocation(line: 915, column: 35, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !128, line: 914, column: 7)
!2418 = !DILocation(line: 915, column: 20, scope: !2417)
!2419 = !DILocation(line: 916, column: 17, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !128, line: 916, column: 13)
!2421 = !DILocation(line: 916, column: 13, scope: !2417)
!2422 = !DILocation(line: 917, column: 11, scope: !2420)
!2423 = !DILocation(line: 216, column: 20, scope: !2242, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 918, column: 27, scope: !2417)
!2425 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2424)
!2426 = !DILocation(line: 918, column: 19, scope: !2417)
!2427 = !DILocation(line: 919, column: 69, scope: !2417)
!2428 = !DILocation(line: 921, column: 44, scope: !2417)
!2429 = !DILocation(line: 922, column: 44, scope: !2417)
!2430 = !DILocation(line: 919, column: 9, scope: !2417)
!2431 = !DILocation(line: 923, column: 7, scope: !2417)
!2432 = !DILocation(line: 0, scope: !2354)
!2433 = !DILocation(line: 925, column: 11, scope: !2354)
!2434 = !DILocation(line: 926, column: 5, scope: !2354)
!2435 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !128, file: !128, line: 937, type: !2436, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!51, !44, !70, !54}
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !128, line: 937, type: !44)
!2440 = !DILocalVariable(name: "arg", arg: 2, scope: !2435, file: !128, line: 937, type: !70)
!2441 = !DILocalVariable(name: "argsize", arg: 3, scope: !2435, file: !128, line: 937, type: !54)
!2442 = !DILocation(line: 937, column: 21, scope: !2435)
!2443 = !DILocation(line: 937, column: 36, scope: !2435)
!2444 = !DILocation(line: 937, column: 48, scope: !2435)
!2445 = !DILocation(line: 939, column: 10, scope: !2435)
!2446 = !DILocation(line: 939, column: 3, scope: !2435)
!2447 = distinct !DISubprogram(name: "quotearg", scope: !128, file: !128, line: 943, type: !2448, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!51, !70}
!2450 = !{!2451}
!2451 = !DILocalVariable(name: "arg", arg: 1, scope: !2447, file: !128, line: 943, type: !70)
!2452 = !DILocation(line: 943, column: 23, scope: !2447)
!2453 = !DILocation(line: 931, column: 17, scope: !2329, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 945, column: 10, scope: !2447)
!2455 = !DILocation(line: 931, column: 32, scope: !2329, inlinedAt: !2454)
!2456 = !DILocation(line: 933, column: 10, scope: !2329, inlinedAt: !2454)
!2457 = !DILocation(line: 945, column: 3, scope: !2447)
!2458 = distinct !DISubprogram(name: "quotearg_mem", scope: !128, file: !128, line: 949, type: !2459, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!51, !70, !54}
!2461 = !{!2462, !2463}
!2462 = !DILocalVariable(name: "arg", arg: 1, scope: !2458, file: !128, line: 949, type: !70)
!2463 = !DILocalVariable(name: "argsize", arg: 2, scope: !2458, file: !128, line: 949, type: !54)
!2464 = !DILocation(line: 949, column: 27, scope: !2458)
!2465 = !DILocation(line: 949, column: 39, scope: !2458)
!2466 = !DILocation(line: 937, column: 21, scope: !2435, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 951, column: 10, scope: !2458)
!2468 = !DILocation(line: 937, column: 36, scope: !2435, inlinedAt: !2467)
!2469 = !DILocation(line: 937, column: 48, scope: !2435, inlinedAt: !2467)
!2470 = !DILocation(line: 939, column: 10, scope: !2435, inlinedAt: !2467)
!2471 = !DILocation(line: 951, column: 3, scope: !2458)
!2472 = distinct !DISubprogram(name: "quotearg_n_style", scope: !128, file: !128, line: 955, type: !2473, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!51, !44, !29, !70}
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !128, line: 955, type: !44)
!2477 = !DILocalVariable(name: "s", arg: 2, scope: !2472, file: !128, line: 955, type: !29)
!2478 = !DILocalVariable(name: "arg", arg: 3, scope: !2472, file: !128, line: 955, type: !70)
!2479 = !DILocalVariable(name: "o", scope: !2472, file: !128, line: 957, type: !1239)
!2480 = !DILocation(line: 955, column: 23, scope: !2472)
!2481 = !DILocation(line: 955, column: 45, scope: !2472)
!2482 = !DILocation(line: 955, column: 60, scope: !2472)
!2483 = !DILocation(line: 957, column: 3, scope: !2472)
!2484 = !DILocation(line: 957, column: 32, scope: !2472)
!2485 = !DILocalVariable(name: "style", arg: 1, scope: !2486, file: !128, line: 193, type: !29)
!2486 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !128, file: !128, line: 193, type: !2487, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!135, !29}
!2489 = !{!2485, !2490}
!2490 = !DILocalVariable(name: "o", scope: !2486, file: !128, line: 195, type: !135)
!2491 = !DILocation(line: 193, column: 48, scope: !2486, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 957, column: 36, scope: !2472)
!2493 = !DILocation(line: 195, column: 26, scope: !2486, inlinedAt: !2492)
!2494 = !{!2495}
!2495 = distinct !{!2495, !2496, !"quoting_options_from_style: argument 0"}
!2496 = distinct !{!2496, !"quoting_options_from_style"}
!2497 = !DILocation(line: 196, column: 13, scope: !2498, inlinedAt: !2492)
!2498 = distinct !DILexicalBlock(scope: !2486, file: !128, line: 196, column: 7)
!2499 = !DILocation(line: 196, column: 7, scope: !2486, inlinedAt: !2492)
!2500 = !DILocation(line: 197, column: 5, scope: !2498, inlinedAt: !2492)
!2501 = !DILocation(line: 198, column: 5, scope: !2486, inlinedAt: !2492)
!2502 = !DILocation(line: 198, column: 11, scope: !2486, inlinedAt: !2492)
!2503 = !DILocation(line: 958, column: 10, scope: !2472)
!2504 = !DILocation(line: 959, column: 1, scope: !2472)
!2505 = !DILocation(line: 958, column: 3, scope: !2472)
!2506 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !128, file: !128, line: 962, type: !2507, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!51, !44, !29, !70, !54}
!2509 = !{!2510, !2511, !2512, !2513, !2514}
!2510 = !DILocalVariable(name: "n", arg: 1, scope: !2506, file: !128, line: 962, type: !44)
!2511 = !DILocalVariable(name: "s", arg: 2, scope: !2506, file: !128, line: 962, type: !29)
!2512 = !DILocalVariable(name: "arg", arg: 3, scope: !2506, file: !128, line: 963, type: !70)
!2513 = !DILocalVariable(name: "argsize", arg: 4, scope: !2506, file: !128, line: 963, type: !54)
!2514 = !DILocalVariable(name: "o", scope: !2506, file: !128, line: 965, type: !1239)
!2515 = !DILocation(line: 962, column: 27, scope: !2506)
!2516 = !DILocation(line: 962, column: 49, scope: !2506)
!2517 = !DILocation(line: 963, column: 35, scope: !2506)
!2518 = !DILocation(line: 963, column: 47, scope: !2506)
!2519 = !DILocation(line: 965, column: 3, scope: !2506)
!2520 = !DILocation(line: 965, column: 32, scope: !2506)
!2521 = !DILocation(line: 193, column: 48, scope: !2486, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 965, column: 36, scope: !2506)
!2523 = !DILocation(line: 195, column: 26, scope: !2486, inlinedAt: !2522)
!2524 = !{!2525}
!2525 = distinct !{!2525, !2526, !"quoting_options_from_style: argument 0"}
!2526 = distinct !{!2526, !"quoting_options_from_style"}
!2527 = !DILocation(line: 196, column: 13, scope: !2498, inlinedAt: !2522)
!2528 = !DILocation(line: 196, column: 7, scope: !2486, inlinedAt: !2522)
!2529 = !DILocation(line: 197, column: 5, scope: !2498, inlinedAt: !2522)
!2530 = !DILocation(line: 198, column: 5, scope: !2486, inlinedAt: !2522)
!2531 = !DILocation(line: 198, column: 11, scope: !2486, inlinedAt: !2522)
!2532 = !DILocation(line: 966, column: 10, scope: !2506)
!2533 = !DILocation(line: 967, column: 1, scope: !2506)
!2534 = !DILocation(line: 966, column: 3, scope: !2506)
!2535 = distinct !DISubprogram(name: "quotearg_style", scope: !128, file: !128, line: 970, type: !2536, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!51, !29, !70}
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "s", arg: 1, scope: !2535, file: !128, line: 970, type: !29)
!2540 = !DILocalVariable(name: "arg", arg: 2, scope: !2535, file: !128, line: 970, type: !70)
!2541 = !DILocation(line: 970, column: 36, scope: !2535)
!2542 = !DILocation(line: 970, column: 51, scope: !2535)
!2543 = !DILocation(line: 955, column: 23, scope: !2472, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 972, column: 10, scope: !2535)
!2545 = !DILocation(line: 955, column: 45, scope: !2472, inlinedAt: !2544)
!2546 = !DILocation(line: 955, column: 60, scope: !2472, inlinedAt: !2544)
!2547 = !DILocation(line: 957, column: 3, scope: !2472, inlinedAt: !2544)
!2548 = !DILocation(line: 957, column: 32, scope: !2472, inlinedAt: !2544)
!2549 = !DILocation(line: 193, column: 48, scope: !2486, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 957, column: 36, scope: !2472, inlinedAt: !2544)
!2551 = !DILocation(line: 195, column: 26, scope: !2486, inlinedAt: !2550)
!2552 = !{!2553}
!2553 = distinct !{!2553, !2554, !"quoting_options_from_style: argument 0"}
!2554 = distinct !{!2554, !"quoting_options_from_style"}
!2555 = !DILocation(line: 196, column: 13, scope: !2498, inlinedAt: !2550)
!2556 = !DILocation(line: 196, column: 7, scope: !2486, inlinedAt: !2550)
!2557 = !DILocation(line: 197, column: 5, scope: !2498, inlinedAt: !2550)
!2558 = !DILocation(line: 198, column: 5, scope: !2486, inlinedAt: !2550)
!2559 = !DILocation(line: 198, column: 11, scope: !2486, inlinedAt: !2550)
!2560 = !DILocation(line: 958, column: 10, scope: !2472, inlinedAt: !2544)
!2561 = !DILocation(line: 959, column: 1, scope: !2472, inlinedAt: !2544)
!2562 = !DILocation(line: 972, column: 3, scope: !2535)
!2563 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !128, file: !128, line: 976, type: !2564, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!51, !29, !70, !54}
!2566 = !{!2567, !2568, !2569}
!2567 = !DILocalVariable(name: "s", arg: 1, scope: !2563, file: !128, line: 976, type: !29)
!2568 = !DILocalVariable(name: "arg", arg: 2, scope: !2563, file: !128, line: 976, type: !70)
!2569 = !DILocalVariable(name: "argsize", arg: 3, scope: !2563, file: !128, line: 976, type: !54)
!2570 = !DILocation(line: 976, column: 40, scope: !2563)
!2571 = !DILocation(line: 976, column: 55, scope: !2563)
!2572 = !DILocation(line: 976, column: 67, scope: !2563)
!2573 = !DILocation(line: 962, column: 27, scope: !2506, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 978, column: 10, scope: !2563)
!2575 = !DILocation(line: 962, column: 49, scope: !2506, inlinedAt: !2574)
!2576 = !DILocation(line: 963, column: 35, scope: !2506, inlinedAt: !2574)
!2577 = !DILocation(line: 963, column: 47, scope: !2506, inlinedAt: !2574)
!2578 = !DILocation(line: 965, column: 3, scope: !2506, inlinedAt: !2574)
!2579 = !DILocation(line: 965, column: 32, scope: !2506, inlinedAt: !2574)
!2580 = !DILocation(line: 193, column: 48, scope: !2486, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 965, column: 36, scope: !2506, inlinedAt: !2574)
!2582 = !DILocation(line: 195, column: 26, scope: !2486, inlinedAt: !2581)
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"quoting_options_from_style: argument 0"}
!2585 = distinct !{!2585, !"quoting_options_from_style"}
!2586 = !DILocation(line: 196, column: 13, scope: !2498, inlinedAt: !2581)
!2587 = !DILocation(line: 196, column: 7, scope: !2486, inlinedAt: !2581)
!2588 = !DILocation(line: 197, column: 5, scope: !2498, inlinedAt: !2581)
!2589 = !DILocation(line: 198, column: 5, scope: !2486, inlinedAt: !2581)
!2590 = !DILocation(line: 198, column: 11, scope: !2486, inlinedAt: !2581)
!2591 = !DILocation(line: 966, column: 10, scope: !2506, inlinedAt: !2574)
!2592 = !DILocation(line: 967, column: 1, scope: !2506, inlinedAt: !2574)
!2593 = !DILocation(line: 978, column: 3, scope: !2563)
!2594 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !128, file: !128, line: 982, type: !2595, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!51, !70, !54, !52}
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2594, file: !128, line: 982, type: !70)
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2594, file: !128, line: 982, type: !54)
!2600 = !DILocalVariable(name: "ch", arg: 3, scope: !2594, file: !128, line: 982, type: !52)
!2601 = !DILocalVariable(name: "options", scope: !2594, file: !128, line: 984, type: !135)
!2602 = !DILocation(line: 982, column: 32, scope: !2594)
!2603 = !DILocation(line: 982, column: 44, scope: !2594)
!2604 = !DILocation(line: 982, column: 58, scope: !2594)
!2605 = !DILocation(line: 984, column: 3, scope: !2594)
!2606 = !DILocation(line: 985, column: 13, scope: !2594)
!2607 = !{i64 0, i64 4, !796, i64 4, i64 4, !846, i64 8, i64 32, !796, i64 40, i64 8, !657, i64 48, i64 8, !657}
!2608 = !DILocation(line: 984, column: 26, scope: !2594)
!2609 = !DILocation(line: 152, column: 43, scope: !1260, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 986, column: 3, scope: !2594)
!2611 = !DILocation(line: 152, column: 51, scope: !1260, inlinedAt: !2610)
!2612 = !DILocation(line: 152, column: 58, scope: !1260, inlinedAt: !2610)
!2613 = !DILocation(line: 154, column: 17, scope: !1260, inlinedAt: !2610)
!2614 = !DILocation(line: 156, column: 62, scope: !1260, inlinedAt: !2610)
!2615 = !DILocation(line: 156, column: 57, scope: !1260, inlinedAt: !2610)
!2616 = !DILocation(line: 155, column: 17, scope: !1260, inlinedAt: !2610)
!2617 = !DILocation(line: 157, column: 15, scope: !1260, inlinedAt: !2610)
!2618 = !DILocation(line: 157, column: 7, scope: !1260, inlinedAt: !2610)
!2619 = !DILocation(line: 158, column: 12, scope: !1260, inlinedAt: !2610)
!2620 = !DILocation(line: 158, column: 15, scope: !1260, inlinedAt: !2610)
!2621 = !DILocation(line: 158, column: 25, scope: !1260, inlinedAt: !2610)
!2622 = !DILocation(line: 158, column: 7, scope: !1260, inlinedAt: !2610)
!2623 = !DILocation(line: 159, column: 18, scope: !1260, inlinedAt: !2610)
!2624 = !DILocation(line: 159, column: 23, scope: !1260, inlinedAt: !2610)
!2625 = !DILocation(line: 159, column: 6, scope: !1260, inlinedAt: !2610)
!2626 = !DILocation(line: 987, column: 10, scope: !2594)
!2627 = !DILocation(line: 988, column: 1, scope: !2594)
!2628 = !DILocation(line: 987, column: 3, scope: !2594)
!2629 = distinct !DISubprogram(name: "quotearg_char", scope: !128, file: !128, line: 991, type: !2630, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!51, !70, !52}
!2632 = !{!2633, !2634}
!2633 = !DILocalVariable(name: "arg", arg: 1, scope: !2629, file: !128, line: 991, type: !70)
!2634 = !DILocalVariable(name: "ch", arg: 2, scope: !2629, file: !128, line: 991, type: !52)
!2635 = !DILocation(line: 991, column: 28, scope: !2629)
!2636 = !DILocation(line: 991, column: 38, scope: !2629)
!2637 = !DILocation(line: 982, column: 32, scope: !2594, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 993, column: 10, scope: !2629)
!2639 = !DILocation(line: 982, column: 44, scope: !2594, inlinedAt: !2638)
!2640 = !DILocation(line: 982, column: 58, scope: !2594, inlinedAt: !2638)
!2641 = !DILocation(line: 984, column: 3, scope: !2594, inlinedAt: !2638)
!2642 = !DILocation(line: 985, column: 13, scope: !2594, inlinedAt: !2638)
!2643 = !DILocation(line: 984, column: 26, scope: !2594, inlinedAt: !2638)
!2644 = !DILocation(line: 152, column: 43, scope: !1260, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 986, column: 3, scope: !2594, inlinedAt: !2638)
!2646 = !DILocation(line: 152, column: 51, scope: !1260, inlinedAt: !2645)
!2647 = !DILocation(line: 152, column: 58, scope: !1260, inlinedAt: !2645)
!2648 = !DILocation(line: 154, column: 17, scope: !1260, inlinedAt: !2645)
!2649 = !DILocation(line: 156, column: 62, scope: !1260, inlinedAt: !2645)
!2650 = !DILocation(line: 156, column: 57, scope: !1260, inlinedAt: !2645)
!2651 = !DILocation(line: 155, column: 17, scope: !1260, inlinedAt: !2645)
!2652 = !DILocation(line: 157, column: 15, scope: !1260, inlinedAt: !2645)
!2653 = !DILocation(line: 157, column: 7, scope: !1260, inlinedAt: !2645)
!2654 = !DILocation(line: 158, column: 12, scope: !1260, inlinedAt: !2645)
!2655 = !DILocation(line: 158, column: 15, scope: !1260, inlinedAt: !2645)
!2656 = !DILocation(line: 158, column: 25, scope: !1260, inlinedAt: !2645)
!2657 = !DILocation(line: 158, column: 7, scope: !1260, inlinedAt: !2645)
!2658 = !DILocation(line: 159, column: 18, scope: !1260, inlinedAt: !2645)
!2659 = !DILocation(line: 159, column: 23, scope: !1260, inlinedAt: !2645)
!2660 = !DILocation(line: 159, column: 6, scope: !1260, inlinedAt: !2645)
!2661 = !DILocation(line: 987, column: 10, scope: !2594, inlinedAt: !2638)
!2662 = !DILocation(line: 988, column: 1, scope: !2594, inlinedAt: !2638)
!2663 = !DILocation(line: 993, column: 3, scope: !2629)
!2664 = distinct !DISubprogram(name: "quotearg_colon", scope: !128, file: !128, line: 997, type: !2448, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2665)
!2665 = !{!2666}
!2666 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !128, line: 997, type: !70)
!2667 = !DILocation(line: 997, column: 29, scope: !2664)
!2668 = !DILocation(line: 991, column: 28, scope: !2629, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 999, column: 10, scope: !2664)
!2670 = !DILocation(line: 991, column: 38, scope: !2629, inlinedAt: !2669)
!2671 = !DILocation(line: 982, column: 32, scope: !2594, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 993, column: 10, scope: !2629, inlinedAt: !2669)
!2673 = !DILocation(line: 982, column: 44, scope: !2594, inlinedAt: !2672)
!2674 = !DILocation(line: 982, column: 58, scope: !2594, inlinedAt: !2672)
!2675 = !DILocation(line: 984, column: 3, scope: !2594, inlinedAt: !2672)
!2676 = !DILocation(line: 985, column: 13, scope: !2594, inlinedAt: !2672)
!2677 = !DILocation(line: 984, column: 26, scope: !2594, inlinedAt: !2672)
!2678 = !DILocation(line: 152, column: 43, scope: !1260, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 986, column: 3, scope: !2594, inlinedAt: !2672)
!2680 = !DILocation(line: 152, column: 51, scope: !1260, inlinedAt: !2679)
!2681 = !DILocation(line: 152, column: 58, scope: !1260, inlinedAt: !2679)
!2682 = !DILocation(line: 154, column: 17, scope: !1260, inlinedAt: !2679)
!2683 = !DILocation(line: 156, column: 57, scope: !1260, inlinedAt: !2679)
!2684 = !DILocation(line: 155, column: 17, scope: !1260, inlinedAt: !2679)
!2685 = !DILocation(line: 157, column: 7, scope: !1260, inlinedAt: !2679)
!2686 = !DILocation(line: 158, column: 12, scope: !1260, inlinedAt: !2679)
!2687 = !DILocation(line: 159, column: 6, scope: !1260, inlinedAt: !2679)
!2688 = !DILocation(line: 987, column: 10, scope: !2594, inlinedAt: !2672)
!2689 = !DILocation(line: 988, column: 1, scope: !2594, inlinedAt: !2672)
!2690 = !DILocation(line: 999, column: 3, scope: !2664)
!2691 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !128, file: !128, line: 1003, type: !2459, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2692)
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !128, line: 1003, type: !70)
!2694 = !DILocalVariable(name: "argsize", arg: 2, scope: !2691, file: !128, line: 1003, type: !54)
!2695 = !DILocation(line: 1003, column: 33, scope: !2691)
!2696 = !DILocation(line: 1003, column: 45, scope: !2691)
!2697 = !DILocation(line: 982, column: 32, scope: !2594, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1005, column: 10, scope: !2691)
!2699 = !DILocation(line: 982, column: 44, scope: !2594, inlinedAt: !2698)
!2700 = !DILocation(line: 982, column: 58, scope: !2594, inlinedAt: !2698)
!2701 = !DILocation(line: 984, column: 3, scope: !2594, inlinedAt: !2698)
!2702 = !DILocation(line: 985, column: 13, scope: !2594, inlinedAt: !2698)
!2703 = !DILocation(line: 984, column: 26, scope: !2594, inlinedAt: !2698)
!2704 = !DILocation(line: 152, column: 43, scope: !1260, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 986, column: 3, scope: !2594, inlinedAt: !2698)
!2706 = !DILocation(line: 152, column: 51, scope: !1260, inlinedAt: !2705)
!2707 = !DILocation(line: 152, column: 58, scope: !1260, inlinedAt: !2705)
!2708 = !DILocation(line: 154, column: 17, scope: !1260, inlinedAt: !2705)
!2709 = !DILocation(line: 156, column: 57, scope: !1260, inlinedAt: !2705)
!2710 = !DILocation(line: 155, column: 17, scope: !1260, inlinedAt: !2705)
!2711 = !DILocation(line: 157, column: 7, scope: !1260, inlinedAt: !2705)
!2712 = !DILocation(line: 158, column: 12, scope: !1260, inlinedAt: !2705)
!2713 = !DILocation(line: 159, column: 6, scope: !1260, inlinedAt: !2705)
!2714 = !DILocation(line: 987, column: 10, scope: !2594, inlinedAt: !2698)
!2715 = !DILocation(line: 988, column: 1, scope: !2594, inlinedAt: !2698)
!2716 = !DILocation(line: 1005, column: 3, scope: !2691)
!2717 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !128, file: !128, line: 1009, type: !2473, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2718)
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !128, line: 1009, type: !44)
!2720 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !128, line: 1009, type: !29)
!2721 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !128, line: 1009, type: !70)
!2722 = !DILocalVariable(name: "options", scope: !2717, file: !128, line: 1011, type: !135)
!2723 = !DILocation(line: 195, column: 26, scope: !2486, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1012, column: 13, scope: !2717)
!2725 = !DILocation(line: 1009, column: 29, scope: !2717)
!2726 = !DILocation(line: 1009, column: 51, scope: !2717)
!2727 = !DILocation(line: 1009, column: 66, scope: !2717)
!2728 = !DILocation(line: 1011, column: 3, scope: !2717)
!2729 = !DILocation(line: 1012, column: 13, scope: !2717)
!2730 = !DILocation(line: 193, column: 48, scope: !2486, inlinedAt: !2724)
!2731 = !{!2732}
!2732 = distinct !{!2732, !2733, !"quoting_options_from_style: argument 0"}
!2733 = distinct !{!2733, !"quoting_options_from_style"}
!2734 = !DILocation(line: 196, column: 13, scope: !2498, inlinedAt: !2724)
!2735 = !DILocation(line: 196, column: 7, scope: !2486, inlinedAt: !2724)
!2736 = !DILocation(line: 197, column: 5, scope: !2498, inlinedAt: !2724)
!2737 = !DILocation(line: 1011, column: 26, scope: !2717)
!2738 = !DILocation(line: 152, column: 43, scope: !1260, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1013, column: 3, scope: !2717)
!2740 = !DILocation(line: 152, column: 51, scope: !1260, inlinedAt: !2739)
!2741 = !DILocation(line: 152, column: 58, scope: !1260, inlinedAt: !2739)
!2742 = !DILocation(line: 154, column: 17, scope: !1260, inlinedAt: !2739)
!2743 = !DILocation(line: 156, column: 57, scope: !1260, inlinedAt: !2739)
!2744 = !DILocation(line: 155, column: 17, scope: !1260, inlinedAt: !2739)
!2745 = !DILocation(line: 157, column: 7, scope: !1260, inlinedAt: !2739)
!2746 = !DILocation(line: 158, column: 12, scope: !1260, inlinedAt: !2739)
!2747 = !DILocation(line: 159, column: 6, scope: !1260, inlinedAt: !2739)
!2748 = !DILocation(line: 1014, column: 10, scope: !2717)
!2749 = !DILocation(line: 1015, column: 1, scope: !2717)
!2750 = !DILocation(line: 1014, column: 3, scope: !2717)
!2751 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !128, file: !128, line: 1018, type: !2752, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!51, !44, !70, !70, !70}
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !128, line: 1018, type: !44)
!2756 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2751, file: !128, line: 1018, type: !70)
!2757 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2751, file: !128, line: 1019, type: !70)
!2758 = !DILocalVariable(name: "arg", arg: 4, scope: !2751, file: !128, line: 1019, type: !70)
!2759 = !DILocation(line: 1018, column: 24, scope: !2751)
!2760 = !DILocation(line: 1018, column: 39, scope: !2751)
!2761 = !DILocation(line: 1019, column: 32, scope: !2751)
!2762 = !DILocation(line: 1019, column: 57, scope: !2751)
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2764, file: !128, line: 1026, type: !44)
!2764 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !128, file: !128, line: 1026, type: !2765, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!51, !44, !70, !70, !70, !54}
!2767 = !{!2763, !2768, !2769, !2770, !2771, !2772}
!2768 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2764, file: !128, line: 1026, type: !70)
!2769 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2764, file: !128, line: 1027, type: !70)
!2770 = !DILocalVariable(name: "arg", arg: 4, scope: !2764, file: !128, line: 1028, type: !70)
!2771 = !DILocalVariable(name: "argsize", arg: 5, scope: !2764, file: !128, line: 1028, type: !54)
!2772 = !DILocalVariable(name: "o", scope: !2764, file: !128, line: 1030, type: !135)
!2773 = !DILocation(line: 1026, column: 28, scope: !2764, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1021, column: 10, scope: !2751)
!2775 = !DILocation(line: 1026, column: 43, scope: !2764, inlinedAt: !2774)
!2776 = !DILocation(line: 1027, column: 36, scope: !2764, inlinedAt: !2774)
!2777 = !DILocation(line: 1028, column: 36, scope: !2764, inlinedAt: !2774)
!2778 = !DILocation(line: 1028, column: 48, scope: !2764, inlinedAt: !2774)
!2779 = !DILocation(line: 1030, column: 3, scope: !2764, inlinedAt: !2774)
!2780 = !DILocation(line: 1030, column: 30, scope: !2764, inlinedAt: !2774)
!2781 = !DILocation(line: 1030, column: 26, scope: !2764, inlinedAt: !2774)
!2782 = !DILocation(line: 179, column: 45, scope: !1309, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1031, column: 3, scope: !2764, inlinedAt: !2774)
!2784 = !DILocation(line: 180, column: 33, scope: !1309, inlinedAt: !2783)
!2785 = !DILocation(line: 180, column: 57, scope: !1309, inlinedAt: !2783)
!2786 = !DILocation(line: 184, column: 6, scope: !1309, inlinedAt: !2783)
!2787 = !DILocation(line: 184, column: 12, scope: !1309, inlinedAt: !2783)
!2788 = !DILocation(line: 185, column: 8, scope: !1325, inlinedAt: !2783)
!2789 = !DILocation(line: 185, column: 23, scope: !1325, inlinedAt: !2783)
!2790 = !DILocation(line: 185, column: 19, scope: !1325, inlinedAt: !2783)
!2791 = !DILocation(line: 186, column: 5, scope: !1325, inlinedAt: !2783)
!2792 = !DILocation(line: 187, column: 6, scope: !1309, inlinedAt: !2783)
!2793 = !DILocation(line: 187, column: 17, scope: !1309, inlinedAt: !2783)
!2794 = !DILocation(line: 188, column: 6, scope: !1309, inlinedAt: !2783)
!2795 = !DILocation(line: 188, column: 18, scope: !1309, inlinedAt: !2783)
!2796 = !DILocation(line: 1032, column: 10, scope: !2764, inlinedAt: !2774)
!2797 = !DILocation(line: 1033, column: 1, scope: !2764, inlinedAt: !2774)
!2798 = !DILocation(line: 1021, column: 3, scope: !2751)
!2799 = !DILocation(line: 1026, column: 28, scope: !2764)
!2800 = !DILocation(line: 1026, column: 43, scope: !2764)
!2801 = !DILocation(line: 1027, column: 36, scope: !2764)
!2802 = !DILocation(line: 1028, column: 36, scope: !2764)
!2803 = !DILocation(line: 1028, column: 48, scope: !2764)
!2804 = !DILocation(line: 1030, column: 3, scope: !2764)
!2805 = !DILocation(line: 1030, column: 30, scope: !2764)
!2806 = !DILocation(line: 1030, column: 26, scope: !2764)
!2807 = !DILocation(line: 179, column: 45, scope: !1309, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1031, column: 3, scope: !2764)
!2809 = !DILocation(line: 180, column: 33, scope: !1309, inlinedAt: !2808)
!2810 = !DILocation(line: 180, column: 57, scope: !1309, inlinedAt: !2808)
!2811 = !DILocation(line: 184, column: 6, scope: !1309, inlinedAt: !2808)
!2812 = !DILocation(line: 184, column: 12, scope: !1309, inlinedAt: !2808)
!2813 = !DILocation(line: 185, column: 8, scope: !1325, inlinedAt: !2808)
!2814 = !DILocation(line: 185, column: 23, scope: !1325, inlinedAt: !2808)
!2815 = !DILocation(line: 185, column: 19, scope: !1325, inlinedAt: !2808)
!2816 = !DILocation(line: 186, column: 5, scope: !1325, inlinedAt: !2808)
!2817 = !DILocation(line: 187, column: 6, scope: !1309, inlinedAt: !2808)
!2818 = !DILocation(line: 187, column: 17, scope: !1309, inlinedAt: !2808)
!2819 = !DILocation(line: 188, column: 6, scope: !1309, inlinedAt: !2808)
!2820 = !DILocation(line: 188, column: 18, scope: !1309, inlinedAt: !2808)
!2821 = !DILocation(line: 1032, column: 10, scope: !2764)
!2822 = !DILocation(line: 1033, column: 1, scope: !2764)
!2823 = !DILocation(line: 1032, column: 3, scope: !2764)
!2824 = distinct !DISubprogram(name: "quotearg_custom", scope: !128, file: !128, line: 1036, type: !2825, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!51, !70, !70, !70}
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2824, file: !128, line: 1036, type: !70)
!2829 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2824, file: !128, line: 1036, type: !70)
!2830 = !DILocalVariable(name: "arg", arg: 3, scope: !2824, file: !128, line: 1037, type: !70)
!2831 = !DILocation(line: 1036, column: 30, scope: !2824)
!2832 = !DILocation(line: 1036, column: 54, scope: !2824)
!2833 = !DILocation(line: 1037, column: 30, scope: !2824)
!2834 = !DILocation(line: 1018, column: 24, scope: !2751, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1039, column: 10, scope: !2824)
!2836 = !DILocation(line: 1018, column: 39, scope: !2751, inlinedAt: !2835)
!2837 = !DILocation(line: 1019, column: 32, scope: !2751, inlinedAt: !2835)
!2838 = !DILocation(line: 1019, column: 57, scope: !2751, inlinedAt: !2835)
!2839 = !DILocation(line: 1026, column: 28, scope: !2764, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1021, column: 10, scope: !2751, inlinedAt: !2835)
!2841 = !DILocation(line: 1026, column: 43, scope: !2764, inlinedAt: !2840)
!2842 = !DILocation(line: 1027, column: 36, scope: !2764, inlinedAt: !2840)
!2843 = !DILocation(line: 1028, column: 36, scope: !2764, inlinedAt: !2840)
!2844 = !DILocation(line: 1028, column: 48, scope: !2764, inlinedAt: !2840)
!2845 = !DILocation(line: 1030, column: 3, scope: !2764, inlinedAt: !2840)
!2846 = !DILocation(line: 1030, column: 30, scope: !2764, inlinedAt: !2840)
!2847 = !DILocation(line: 1030, column: 26, scope: !2764, inlinedAt: !2840)
!2848 = !DILocation(line: 179, column: 45, scope: !1309, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1031, column: 3, scope: !2764, inlinedAt: !2840)
!2850 = !DILocation(line: 180, column: 33, scope: !1309, inlinedAt: !2849)
!2851 = !DILocation(line: 180, column: 57, scope: !1309, inlinedAt: !2849)
!2852 = !DILocation(line: 184, column: 6, scope: !1309, inlinedAt: !2849)
!2853 = !DILocation(line: 184, column: 12, scope: !1309, inlinedAt: !2849)
!2854 = !DILocation(line: 185, column: 8, scope: !1325, inlinedAt: !2849)
!2855 = !DILocation(line: 185, column: 23, scope: !1325, inlinedAt: !2849)
!2856 = !DILocation(line: 185, column: 19, scope: !1325, inlinedAt: !2849)
!2857 = !DILocation(line: 186, column: 5, scope: !1325, inlinedAt: !2849)
!2858 = !DILocation(line: 187, column: 6, scope: !1309, inlinedAt: !2849)
!2859 = !DILocation(line: 187, column: 17, scope: !1309, inlinedAt: !2849)
!2860 = !DILocation(line: 188, column: 6, scope: !1309, inlinedAt: !2849)
!2861 = !DILocation(line: 188, column: 18, scope: !1309, inlinedAt: !2849)
!2862 = !DILocation(line: 1032, column: 10, scope: !2764, inlinedAt: !2840)
!2863 = !DILocation(line: 1033, column: 1, scope: !2764, inlinedAt: !2840)
!2864 = !DILocation(line: 1039, column: 3, scope: !2824)
!2865 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !128, file: !128, line: 1043, type: !2866, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!51, !70, !70, !70, !54}
!2868 = !{!2869, !2870, !2871, !2872}
!2869 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2865, file: !128, line: 1043, type: !70)
!2870 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2865, file: !128, line: 1043, type: !70)
!2871 = !DILocalVariable(name: "arg", arg: 3, scope: !2865, file: !128, line: 1044, type: !70)
!2872 = !DILocalVariable(name: "argsize", arg: 4, scope: !2865, file: !128, line: 1044, type: !54)
!2873 = !DILocation(line: 1043, column: 34, scope: !2865)
!2874 = !DILocation(line: 1043, column: 58, scope: !2865)
!2875 = !DILocation(line: 1044, column: 34, scope: !2865)
!2876 = !DILocation(line: 1044, column: 46, scope: !2865)
!2877 = !DILocation(line: 1026, column: 28, scope: !2764, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1046, column: 10, scope: !2865)
!2879 = !DILocation(line: 1026, column: 43, scope: !2764, inlinedAt: !2878)
!2880 = !DILocation(line: 1027, column: 36, scope: !2764, inlinedAt: !2878)
!2881 = !DILocation(line: 1028, column: 36, scope: !2764, inlinedAt: !2878)
!2882 = !DILocation(line: 1028, column: 48, scope: !2764, inlinedAt: !2878)
!2883 = !DILocation(line: 1030, column: 3, scope: !2764, inlinedAt: !2878)
!2884 = !DILocation(line: 1030, column: 30, scope: !2764, inlinedAt: !2878)
!2885 = !DILocation(line: 1030, column: 26, scope: !2764, inlinedAt: !2878)
!2886 = !DILocation(line: 179, column: 45, scope: !1309, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 1031, column: 3, scope: !2764, inlinedAt: !2878)
!2888 = !DILocation(line: 180, column: 33, scope: !1309, inlinedAt: !2887)
!2889 = !DILocation(line: 180, column: 57, scope: !1309, inlinedAt: !2887)
!2890 = !DILocation(line: 184, column: 6, scope: !1309, inlinedAt: !2887)
!2891 = !DILocation(line: 184, column: 12, scope: !1309, inlinedAt: !2887)
!2892 = !DILocation(line: 185, column: 8, scope: !1325, inlinedAt: !2887)
!2893 = !DILocation(line: 185, column: 23, scope: !1325, inlinedAt: !2887)
!2894 = !DILocation(line: 185, column: 19, scope: !1325, inlinedAt: !2887)
!2895 = !DILocation(line: 186, column: 5, scope: !1325, inlinedAt: !2887)
!2896 = !DILocation(line: 187, column: 6, scope: !1309, inlinedAt: !2887)
!2897 = !DILocation(line: 187, column: 17, scope: !1309, inlinedAt: !2887)
!2898 = !DILocation(line: 188, column: 6, scope: !1309, inlinedAt: !2887)
!2899 = !DILocation(line: 188, column: 18, scope: !1309, inlinedAt: !2887)
!2900 = !DILocation(line: 1032, column: 10, scope: !2764, inlinedAt: !2878)
!2901 = !DILocation(line: 1033, column: 1, scope: !2764, inlinedAt: !2878)
!2902 = !DILocation(line: 1046, column: 3, scope: !2865)
!2903 = distinct !DISubprogram(name: "quote_n_mem", scope: !128, file: !128, line: 1061, type: !2904, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!70, !44, !70, !54}
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !128, line: 1061, type: !44)
!2908 = !DILocalVariable(name: "arg", arg: 2, scope: !2903, file: !128, line: 1061, type: !70)
!2909 = !DILocalVariable(name: "argsize", arg: 3, scope: !2903, file: !128, line: 1061, type: !54)
!2910 = !DILocation(line: 1061, column: 18, scope: !2903)
!2911 = !DILocation(line: 1061, column: 33, scope: !2903)
!2912 = !DILocation(line: 1061, column: 45, scope: !2903)
!2913 = !DILocation(line: 1063, column: 10, scope: !2903)
!2914 = !DILocation(line: 1063, column: 3, scope: !2903)
!2915 = distinct !DISubprogram(name: "quote_mem", scope: !128, file: !128, line: 1067, type: !2916, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!70, !70, !54}
!2918 = !{!2919, !2920}
!2919 = !DILocalVariable(name: "arg", arg: 1, scope: !2915, file: !128, line: 1067, type: !70)
!2920 = !DILocalVariable(name: "argsize", arg: 2, scope: !2915, file: !128, line: 1067, type: !54)
!2921 = !DILocation(line: 1067, column: 24, scope: !2915)
!2922 = !DILocation(line: 1067, column: 36, scope: !2915)
!2923 = !DILocation(line: 1061, column: 18, scope: !2903, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1069, column: 10, scope: !2915)
!2925 = !DILocation(line: 1061, column: 33, scope: !2903, inlinedAt: !2924)
!2926 = !DILocation(line: 1061, column: 45, scope: !2903, inlinedAt: !2924)
!2927 = !DILocation(line: 1063, column: 10, scope: !2903, inlinedAt: !2924)
!2928 = !DILocation(line: 1069, column: 3, scope: !2915)
!2929 = distinct !DISubprogram(name: "quote_n", scope: !128, file: !128, line: 1073, type: !2930, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!70, !44, !70}
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !128, line: 1073, type: !44)
!2934 = !DILocalVariable(name: "arg", arg: 2, scope: !2929, file: !128, line: 1073, type: !70)
!2935 = !DILocation(line: 1073, column: 14, scope: !2929)
!2936 = !DILocation(line: 1073, column: 29, scope: !2929)
!2937 = !DILocation(line: 1061, column: 18, scope: !2903, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1075, column: 10, scope: !2929)
!2939 = !DILocation(line: 1061, column: 33, scope: !2903, inlinedAt: !2938)
!2940 = !DILocation(line: 1061, column: 45, scope: !2903, inlinedAt: !2938)
!2941 = !DILocation(line: 1063, column: 10, scope: !2903, inlinedAt: !2938)
!2942 = !DILocation(line: 1075, column: 3, scope: !2929)
!2943 = distinct !DISubprogram(name: "quote", scope: !128, file: !128, line: 1079, type: !2944, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !116, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!70, !70}
!2946 = !{!2947}
!2947 = !DILocalVariable(name: "arg", arg: 1, scope: !2943, file: !128, line: 1079, type: !70)
!2948 = !DILocation(line: 1079, column: 20, scope: !2943)
!2949 = !DILocation(line: 1073, column: 14, scope: !2929, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1081, column: 10, scope: !2943)
!2951 = !DILocation(line: 1073, column: 29, scope: !2929, inlinedAt: !2950)
!2952 = !DILocation(line: 1061, column: 18, scope: !2903, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1075, column: 10, scope: !2929, inlinedAt: !2950)
!2954 = !DILocation(line: 1061, column: 33, scope: !2903, inlinedAt: !2953)
!2955 = !DILocation(line: 1061, column: 45, scope: !2903, inlinedAt: !2953)
!2956 = !DILocation(line: 1063, column: 10, scope: !2903, inlinedAt: !2953)
!2957 = !DILocation(line: 1081, column: 3, scope: !2943)
!2958 = distinct !DISubprogram(name: "version_etc_arn", scope: !180, file: !180, line: 62, type: !2959, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3014)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2961, !70, !70, !70, !3013, !54}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2963, line: 7, baseType: !2964)
!2963 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 49, size: 1728, elements: !2966)
!2965 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2982, !2984, !2985, !2986, !2987, !2988, !2990, !2994, !2997, !2999, !3002, !3005, !3006, !3007, !3008, !3009}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2964, file: !2965, line: 51, baseType: !44, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2964, file: !2965, line: 54, baseType: !51, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2964, file: !2965, line: 55, baseType: !51, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2964, file: !2965, line: 56, baseType: !51, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2964, file: !2965, line: 57, baseType: !51, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2964, file: !2965, line: 58, baseType: !51, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2964, file: !2965, line: 59, baseType: !51, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2964, file: !2965, line: 60, baseType: !51, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2964, file: !2965, line: 61, baseType: !51, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2964, file: !2965, line: 64, baseType: !51, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2964, file: !2965, line: 65, baseType: !51, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2964, file: !2965, line: 66, baseType: !51, size: 64, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2964, file: !2965, line: 68, baseType: !2980, size: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2965, line: 36, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2964, file: !2965, line: 70, baseType: !2983, size: 64, offset: 832)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2964, file: !2965, line: 72, baseType: !44, size: 32, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2964, file: !2965, line: 73, baseType: !44, size: 32, offset: 928)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2964, file: !2965, line: 74, baseType: !48, size: 64, offset: 960)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2964, file: !2965, line: 77, baseType: !45, size: 16, offset: 1024)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2964, file: !2965, line: 78, baseType: !2989, size: 8, offset: 1040)
!2989 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2964, file: !2965, line: 79, baseType: !2991, size: 8, offset: 1048)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !2992)
!2992 = !{!2993}
!2993 = !DISubrange(count: 1)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2964, file: !2965, line: 81, baseType: !2995, size: 64, offset: 1088)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2965, line: 43, baseType: null)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2964, file: !2965, line: 89, baseType: !2998, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 151, baseType: !50)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2964, file: !2965, line: 91, baseType: !3000, size: 64, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2965, line: 37, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2964, file: !2965, line: 92, baseType: !3003, size: 64, offset: 1280)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2965, line: 38, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2964, file: !2965, line: 93, baseType: !2983, size: 64, offset: 1344)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2964, file: !2965, line: 94, baseType: !53, size: 64, offset: 1408)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2964, file: !2965, line: 95, baseType: !54, size: 64, offset: 1472)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2964, file: !2965, line: 96, baseType: !44, size: 32, offset: 1536)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2964, file: !2965, line: 98, baseType: !3010, size: 160, offset: 1568)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 20)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020}
!3015 = !DILocalVariable(name: "stream", arg: 1, scope: !2958, file: !180, line: 62, type: !2961)
!3016 = !DILocalVariable(name: "command_name", arg: 2, scope: !2958, file: !180, line: 63, type: !70)
!3017 = !DILocalVariable(name: "package", arg: 3, scope: !2958, file: !180, line: 63, type: !70)
!3018 = !DILocalVariable(name: "version", arg: 4, scope: !2958, file: !180, line: 64, type: !70)
!3019 = !DILocalVariable(name: "authors", arg: 5, scope: !2958, file: !180, line: 65, type: !3013)
!3020 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2958, file: !180, line: 65, type: !54)
!3021 = !DILocation(line: 62, column: 24, scope: !2958)
!3022 = !DILocation(line: 63, column: 30, scope: !2958)
!3023 = !DILocation(line: 63, column: 56, scope: !2958)
!3024 = !DILocation(line: 64, column: 30, scope: !2958)
!3025 = !DILocation(line: 65, column: 39, scope: !2958)
!3026 = !DILocation(line: 65, column: 55, scope: !2958)
!3027 = !DILocation(line: 67, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2958, file: !180, line: 67, column: 7)
!3029 = !DILocation(line: 67, column: 7, scope: !2958)
!3030 = !DILocation(line: 68, column: 5, scope: !3028)
!3031 = !DILocation(line: 70, column: 5, scope: !3028)
!3032 = !DILocation(line: 84, column: 3, scope: !2958)
!3033 = !DILocation(line: 86, column: 3, scope: !2958)
!3034 = !DILocation(line: 95, column: 3, scope: !2958)
!3035 = !DILocation(line: 99, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2958, file: !180, line: 96, column: 5)
!3037 = !DILocation(line: 102, column: 7, scope: !3036)
!3038 = !DILocation(line: 103, column: 7, scope: !3036)
!3039 = !DILocation(line: 106, column: 7, scope: !3036)
!3040 = !DILocation(line: 107, column: 7, scope: !3036)
!3041 = !DILocation(line: 110, column: 7, scope: !3036)
!3042 = !DILocation(line: 112, column: 7, scope: !3036)
!3043 = !DILocation(line: 117, column: 7, scope: !3036)
!3044 = !DILocation(line: 119, column: 7, scope: !3036)
!3045 = !DILocation(line: 124, column: 7, scope: !3036)
!3046 = !DILocation(line: 126, column: 7, scope: !3036)
!3047 = !DILocation(line: 131, column: 7, scope: !3036)
!3048 = !DILocation(line: 134, column: 7, scope: !3036)
!3049 = !DILocation(line: 139, column: 7, scope: !3036)
!3050 = !DILocation(line: 142, column: 7, scope: !3036)
!3051 = !DILocation(line: 147, column: 7, scope: !3036)
!3052 = !DILocation(line: 151, column: 7, scope: !3036)
!3053 = !DILocation(line: 156, column: 7, scope: !3036)
!3054 = !DILocation(line: 160, column: 7, scope: !3036)
!3055 = !DILocation(line: 167, column: 7, scope: !3036)
!3056 = !DILocation(line: 171, column: 7, scope: !3036)
!3057 = !DILocation(line: 173, column: 1, scope: !2958)
!3058 = distinct !DISubprogram(name: "version_etc_ar", scope: !180, file: !180, line: 180, type: !3059, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2961, !70, !70, !70, !3013}
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067}
!3062 = !DILocalVariable(name: "stream", arg: 1, scope: !3058, file: !180, line: 180, type: !2961)
!3063 = !DILocalVariable(name: "command_name", arg: 2, scope: !3058, file: !180, line: 181, type: !70)
!3064 = !DILocalVariable(name: "package", arg: 3, scope: !3058, file: !180, line: 181, type: !70)
!3065 = !DILocalVariable(name: "version", arg: 4, scope: !3058, file: !180, line: 182, type: !70)
!3066 = !DILocalVariable(name: "authors", arg: 5, scope: !3058, file: !180, line: 182, type: !3013)
!3067 = !DILocalVariable(name: "n_authors", scope: !3058, file: !180, line: 184, type: !54)
!3068 = !DILocation(line: 180, column: 23, scope: !3058)
!3069 = !DILocation(line: 181, column: 29, scope: !3058)
!3070 = !DILocation(line: 181, column: 55, scope: !3058)
!3071 = !DILocation(line: 182, column: 29, scope: !3058)
!3072 = !DILocation(line: 182, column: 59, scope: !3058)
!3073 = !DILocation(line: 184, column: 10, scope: !3058)
!3074 = !DILocation(line: 186, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3058, file: !180, line: 186, column: 3)
!3076 = !DILocation(line: 0, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3075, file: !180, line: 186, column: 3)
!3078 = !DILocation(line: 186, column: 23, scope: !3077)
!3079 = !DILocation(line: 186, column: 3, scope: !3075)
!3080 = !DILocation(line: 186, column: 52, scope: !3077)
!3081 = distinct !{!3081, !3079, !3082}
!3082 = !DILocation(line: 187, column: 5, scope: !3075)
!3083 = !DILocation(line: 188, column: 3, scope: !3058)
!3084 = !DILocation(line: 189, column: 1, scope: !3058)
!3085 = distinct !DISubprogram(name: "version_etc_va", scope: !180, file: !180, line: 196, type: !3086, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3095)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !2961, !70, !70, !70, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !177, line: 189, size: 192, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3089, file: !177, line: 189, baseType: !6, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3089, file: !177, line: 189, baseType: !6, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3089, file: !177, line: 189, baseType: !53, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3089, file: !177, line: 189, baseType: !53, size: 64, offset: 128)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3096 = !DILocalVariable(name: "stream", arg: 1, scope: !3085, file: !180, line: 196, type: !2961)
!3097 = !DILocalVariable(name: "command_name", arg: 2, scope: !3085, file: !180, line: 197, type: !70)
!3098 = !DILocalVariable(name: "package", arg: 3, scope: !3085, file: !180, line: 197, type: !70)
!3099 = !DILocalVariable(name: "version", arg: 4, scope: !3085, file: !180, line: 198, type: !70)
!3100 = !DILocalVariable(name: "authors", arg: 5, scope: !3085, file: !180, line: 198, type: !3088)
!3101 = !DILocalVariable(name: "n_authors", scope: !3085, file: !180, line: 200, type: !54)
!3102 = !DILocalVariable(name: "authtab", scope: !3085, file: !180, line: 201, type: !3103)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !131)
!3104 = !DILocation(line: 196, column: 23, scope: !3085)
!3105 = !DILocation(line: 197, column: 29, scope: !3085)
!3106 = !DILocation(line: 197, column: 55, scope: !3085)
!3107 = !DILocation(line: 198, column: 29, scope: !3085)
!3108 = !DILocation(line: 198, column: 46, scope: !3085)
!3109 = !DILocation(line: 201, column: 3, scope: !3085)
!3110 = !DILocation(line: 201, column: 15, scope: !3085)
!3111 = !DILocation(line: 200, column: 10, scope: !3085)
!3112 = !DILocation(line: 205, column: 35, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !180, line: 203, column: 3)
!3114 = distinct !DILexicalBlock(scope: !3085, file: !180, line: 203, column: 3)
!3115 = !DILocation(line: 205, column: 14, scope: !3113)
!3116 = !DILocation(line: 205, column: 33, scope: !3113)
!3117 = !DILocation(line: 205, column: 67, scope: !3113)
!3118 = !DILocation(line: 203, column: 3, scope: !3114)
!3119 = !DILocation(line: 0, scope: !3113)
!3120 = !DILocation(line: 208, column: 3, scope: !3085)
!3121 = !DILocation(line: 210, column: 1, scope: !3085)
!3122 = distinct !DISubprogram(name: "version_etc", scope: !180, file: !180, line: 227, type: !3123, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !2961, !70, !70, !70, null}
!3125 = !{!3126, !3127, !3128, !3129, !3130}
!3126 = !DILocalVariable(name: "stream", arg: 1, scope: !3122, file: !180, line: 227, type: !2961)
!3127 = !DILocalVariable(name: "command_name", arg: 2, scope: !3122, file: !180, line: 228, type: !70)
!3128 = !DILocalVariable(name: "package", arg: 3, scope: !3122, file: !180, line: 228, type: !70)
!3129 = !DILocalVariable(name: "version", arg: 4, scope: !3122, file: !180, line: 229, type: !70)
!3130 = !DILocalVariable(name: "authors", scope: !3122, file: !180, line: 231, type: !3131)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3133, line: 48, baseType: !3134)
!3133 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !177, line: 231, baseType: !3135)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 192, elements: !2992)
!3136 = !DILocation(line: 227, column: 20, scope: !3122)
!3137 = !DILocation(line: 228, column: 26, scope: !3122)
!3138 = !DILocation(line: 228, column: 52, scope: !3122)
!3139 = !DILocation(line: 229, column: 26, scope: !3122)
!3140 = !DILocation(line: 231, column: 3, scope: !3122)
!3141 = !DILocation(line: 231, column: 11, scope: !3122)
!3142 = !DILocation(line: 233, column: 3, scope: !3122)
!3143 = !DILocation(line: 234, column: 3, scope: !3122)
!3144 = !DILocation(line: 235, column: 3, scope: !3122)
!3145 = !DILocation(line: 236, column: 1, scope: !3122)
!3146 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !180, file: !180, line: 239, type: !665, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !176, retainedNodes: !90)
!3147 = !DILocation(line: 245, column: 3, scope: !3146)
!3148 = !DILocation(line: 251, column: 3, scope: !3146)
!3149 = !DILocation(line: 256, column: 3, scope: !3146)
!3150 = !DILocation(line: 258, column: 1, scope: !3146)
!3151 = distinct !DISubprogram(name: "xnmalloc", scope: !188, file: !188, line: 99, type: !3152, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!53, !54, !54}
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !188, line: 99, type: !54)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !188, line: 99, type: !54)
!3157 = !DILocation(line: 99, column: 18, scope: !3151)
!3158 = !DILocation(line: 99, column: 28, scope: !3151)
!3159 = !DILocation(line: 101, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3151, file: !188, line: 101, column: 7)
!3161 = !DILocation(line: 101, column: 7, scope: !3151)
!3162 = !DILocation(line: 102, column: 5, scope: !3160)
!3163 = !DILocation(line: 103, column: 21, scope: !3151)
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !3166, line: 39, type: !54)
!3165 = distinct !DISubprogram(name: "xmalloc", scope: !3166, file: !3166, line: 39, type: !3167, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3169)
!3166 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!53, !54}
!3169 = !{!3164, !3170}
!3170 = !DILocalVariable(name: "p", scope: !3165, file: !3166, line: 41, type: !53)
!3171 = !DILocation(line: 39, column: 17, scope: !3165, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 103, column: 10, scope: !3151)
!3173 = !DILocation(line: 41, column: 13, scope: !3165, inlinedAt: !3172)
!3174 = !DILocation(line: 41, column: 9, scope: !3165, inlinedAt: !3172)
!3175 = !DILocation(line: 42, column: 8, scope: !3176, inlinedAt: !3172)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !3166, line: 42, column: 7)
!3177 = !DILocation(line: 42, column: 15, scope: !3176, inlinedAt: !3172)
!3178 = !DILocation(line: 42, column: 10, scope: !3176, inlinedAt: !3172)
!3179 = !DILocation(line: 43, column: 5, scope: !3176, inlinedAt: !3172)
!3180 = !DILocation(line: 103, column: 3, scope: !3151)
!3181 = !DILocation(line: 39, column: 17, scope: !3165)
!3182 = !DILocation(line: 41, column: 13, scope: !3165)
!3183 = !DILocation(line: 41, column: 9, scope: !3165)
!3184 = !DILocation(line: 42, column: 8, scope: !3176)
!3185 = !DILocation(line: 42, column: 15, scope: !3176)
!3186 = !DILocation(line: 42, column: 10, scope: !3176)
!3187 = !DILocation(line: 43, column: 5, scope: !3176)
!3188 = !DILocation(line: 44, column: 3, scope: !3165)
!3189 = distinct !DISubprogram(name: "xnrealloc", scope: !188, file: !188, line: 112, type: !3190, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!53, !53, !54, !54}
!3192 = !{!3193, !3194, !3195}
!3193 = !DILocalVariable(name: "p", arg: 1, scope: !3189, file: !188, line: 112, type: !53)
!3194 = !DILocalVariable(name: "n", arg: 2, scope: !3189, file: !188, line: 112, type: !54)
!3195 = !DILocalVariable(name: "s", arg: 3, scope: !3189, file: !188, line: 112, type: !54)
!3196 = !DILocation(line: 112, column: 18, scope: !3189)
!3197 = !DILocation(line: 112, column: 28, scope: !3189)
!3198 = !DILocation(line: 112, column: 38, scope: !3189)
!3199 = !DILocation(line: 114, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3189, file: !188, line: 114, column: 7)
!3201 = !DILocation(line: 114, column: 7, scope: !3189)
!3202 = !DILocation(line: 115, column: 5, scope: !3200)
!3203 = !DILocation(line: 116, column: 25, scope: !3189)
!3204 = !DILocalVariable(name: "p", arg: 1, scope: !3205, file: !3166, line: 51, type: !53)
!3205 = distinct !DISubprogram(name: "xrealloc", scope: !3166, file: !3166, line: 51, type: !3206, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!53, !53, !54}
!3208 = !{!3204, !3209}
!3209 = !DILocalVariable(name: "n", arg: 2, scope: !3205, file: !3166, line: 51, type: !54)
!3210 = !DILocation(line: 51, column: 17, scope: !3205, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 116, column: 10, scope: !3189)
!3212 = !DILocation(line: 51, column: 27, scope: !3205, inlinedAt: !3211)
!3213 = !DILocation(line: 53, column: 8, scope: !3214, inlinedAt: !3211)
!3214 = distinct !DILexicalBlock(scope: !3205, file: !3166, line: 53, column: 7)
!3215 = !DILocation(line: 53, column: 13, scope: !3214, inlinedAt: !3211)
!3216 = !DILocation(line: 53, column: 10, scope: !3214, inlinedAt: !3211)
!3217 = !DILocation(line: 57, column: 7, scope: !3218, inlinedAt: !3211)
!3218 = distinct !DILexicalBlock(scope: !3214, file: !3166, line: 54, column: 5)
!3219 = !DILocation(line: 58, column: 7, scope: !3218, inlinedAt: !3211)
!3220 = !DILocation(line: 61, column: 7, scope: !3205, inlinedAt: !3211)
!3221 = !DILocation(line: 62, column: 8, scope: !3222, inlinedAt: !3211)
!3222 = distinct !DILexicalBlock(scope: !3205, file: !3166, line: 62, column: 7)
!3223 = !DILocation(line: 62, column: 13, scope: !3222, inlinedAt: !3211)
!3224 = !DILocation(line: 62, column: 10, scope: !3222, inlinedAt: !3211)
!3225 = !DILocation(line: 63, column: 5, scope: !3222, inlinedAt: !3211)
!3226 = !DILocation(line: 0, scope: !3205, inlinedAt: !3211)
!3227 = !DILocation(line: 116, column: 3, scope: !3189)
!3228 = !DILocation(line: 51, column: 17, scope: !3205)
!3229 = !DILocation(line: 51, column: 27, scope: !3205)
!3230 = !DILocation(line: 53, column: 8, scope: !3214)
!3231 = !DILocation(line: 53, column: 13, scope: !3214)
!3232 = !DILocation(line: 53, column: 10, scope: !3214)
!3233 = !DILocation(line: 57, column: 7, scope: !3218)
!3234 = !DILocation(line: 58, column: 7, scope: !3218)
!3235 = !DILocation(line: 61, column: 7, scope: !3205)
!3236 = !DILocation(line: 62, column: 8, scope: !3222)
!3237 = !DILocation(line: 62, column: 13, scope: !3222)
!3238 = !DILocation(line: 62, column: 10, scope: !3222)
!3239 = !DILocation(line: 63, column: 5, scope: !3222)
!3240 = !DILocation(line: 0, scope: !3205)
!3241 = !DILocation(line: 65, column: 1, scope: !3205)
!3242 = !DILocation(line: 174, column: 19, scope: !189)
!3243 = !DILocation(line: 174, column: 30, scope: !189)
!3244 = !DILocation(line: 174, column: 41, scope: !189)
!3245 = !DILocation(line: 176, column: 14, scope: !189)
!3246 = !DILocation(line: 176, column: 10, scope: !189)
!3247 = !DILocation(line: 178, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !189, file: !188, line: 178, column: 7)
!3249 = !DILocation(line: 178, column: 7, scope: !189)
!3250 = !DILocation(line: 180, column: 13, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !188, line: 180, column: 11)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !188, line: 179, column: 5)
!3253 = !DILocation(line: 180, column: 11, scope: !3252)
!3254 = !DILocation(line: 188, column: 30, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !188, line: 181, column: 9)
!3256 = !DILocation(line: 189, column: 16, scope: !3255)
!3257 = !DILocation(line: 189, column: 13, scope: !3255)
!3258 = !DILocation(line: 190, column: 9, scope: !3255)
!3259 = !DILocation(line: 0, scope: !3255)
!3260 = !DILocation(line: 191, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3252, file: !188, line: 191, column: 11)
!3262 = !DILocation(line: 191, column: 11, scope: !3252)
!3263 = !DILocation(line: 206, column: 7, scope: !189)
!3264 = !DILocation(line: 207, column: 25, scope: !189)
!3265 = !DILocation(line: 51, column: 17, scope: !3205, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 207, column: 10, scope: !189)
!3267 = !DILocation(line: 51, column: 27, scope: !3205, inlinedAt: !3266)
!3268 = !DILocation(line: 53, column: 10, scope: !3214, inlinedAt: !3266)
!3269 = !DILocation(line: 192, column: 9, scope: !3261)
!3270 = !DILocation(line: 200, column: 69, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !188, line: 200, column: 11)
!3272 = distinct !DILexicalBlock(scope: !3248, file: !188, line: 195, column: 5)
!3273 = !DILocation(line: 201, column: 11, scope: !3271)
!3274 = !DILocation(line: 200, column: 11, scope: !3272)
!3275 = !DILocation(line: 202, column: 9, scope: !3271)
!3276 = !DILocation(line: 203, column: 14, scope: !3272)
!3277 = !DILocation(line: 203, column: 18, scope: !3272)
!3278 = !DILocation(line: 203, column: 9, scope: !3272)
!3279 = !DILocation(line: 53, column: 8, scope: !3214, inlinedAt: !3266)
!3280 = !DILocation(line: 57, column: 7, scope: !3218, inlinedAt: !3266)
!3281 = !DILocation(line: 58, column: 7, scope: !3218, inlinedAt: !3266)
!3282 = !DILocation(line: 61, column: 7, scope: !3205, inlinedAt: !3266)
!3283 = !DILocation(line: 62, column: 8, scope: !3222, inlinedAt: !3266)
!3284 = !DILocation(line: 62, column: 13, scope: !3222, inlinedAt: !3266)
!3285 = !DILocation(line: 62, column: 10, scope: !3222, inlinedAt: !3266)
!3286 = !DILocation(line: 63, column: 5, scope: !3222, inlinedAt: !3266)
!3287 = !DILocation(line: 0, scope: !3205, inlinedAt: !3266)
!3288 = !DILocation(line: 207, column: 3, scope: !189)
!3289 = distinct !DISubprogram(name: "xcharalloc", scope: !188, file: !188, line: 216, type: !2243, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "n", arg: 1, scope: !3289, file: !188, line: 216, type: !54)
!3292 = !DILocation(line: 216, column: 20, scope: !3289)
!3293 = !DILocation(line: 39, column: 17, scope: !3165, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 218, column: 10, scope: !3289)
!3295 = !DILocation(line: 41, column: 13, scope: !3165, inlinedAt: !3294)
!3296 = !DILocation(line: 41, column: 9, scope: !3165, inlinedAt: !3294)
!3297 = !DILocation(line: 42, column: 8, scope: !3176, inlinedAt: !3294)
!3298 = !DILocation(line: 42, column: 15, scope: !3176, inlinedAt: !3294)
!3299 = !DILocation(line: 42, column: 10, scope: !3176, inlinedAt: !3294)
!3300 = !DILocation(line: 43, column: 5, scope: !3176, inlinedAt: !3294)
!3301 = !DILocation(line: 218, column: 3, scope: !3289)
!3302 = distinct !DISubprogram(name: "x2realloc", scope: !3166, file: !3166, line: 74, type: !3303, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!53, !53, !192}
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "p", arg: 1, scope: !3302, file: !3166, line: 74, type: !53)
!3307 = !DILocalVariable(name: "pn", arg: 2, scope: !3302, file: !3166, line: 74, type: !192)
!3308 = !DILocation(line: 74, column: 18, scope: !3302)
!3309 = !DILocation(line: 74, column: 29, scope: !3302)
!3310 = !DILocation(line: 174, column: 19, scope: !189, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 76, column: 10, scope: !3302)
!3312 = !DILocation(line: 174, column: 30, scope: !189, inlinedAt: !3311)
!3313 = !DILocation(line: 174, column: 41, scope: !189, inlinedAt: !3311)
!3314 = !DILocation(line: 176, column: 14, scope: !189, inlinedAt: !3311)
!3315 = !DILocation(line: 176, column: 10, scope: !189, inlinedAt: !3311)
!3316 = !DILocation(line: 178, column: 9, scope: !3248, inlinedAt: !3311)
!3317 = !DILocation(line: 178, column: 7, scope: !189, inlinedAt: !3311)
!3318 = !DILocation(line: 180, column: 13, scope: !3251, inlinedAt: !3311)
!3319 = !DILocation(line: 180, column: 11, scope: !3252, inlinedAt: !3311)
!3320 = !DILocation(line: 191, column: 11, scope: !3261, inlinedAt: !3311)
!3321 = !DILocation(line: 191, column: 11, scope: !3252, inlinedAt: !3311)
!3322 = !DILocation(line: 206, column: 7, scope: !189, inlinedAt: !3311)
!3323 = !DILocation(line: 51, column: 17, scope: !3205, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 207, column: 10, scope: !189, inlinedAt: !3311)
!3325 = !DILocation(line: 51, column: 27, scope: !3205, inlinedAt: !3324)
!3326 = !DILocation(line: 53, column: 10, scope: !3214, inlinedAt: !3324)
!3327 = !DILocation(line: 192, column: 9, scope: !3261, inlinedAt: !3311)
!3328 = !DILocation(line: 201, column: 11, scope: !3271, inlinedAt: !3311)
!3329 = !DILocation(line: 200, column: 11, scope: !3272, inlinedAt: !3311)
!3330 = !DILocation(line: 202, column: 9, scope: !3271, inlinedAt: !3311)
!3331 = !DILocation(line: 203, column: 14, scope: !3272, inlinedAt: !3311)
!3332 = !DILocation(line: 203, column: 18, scope: !3272, inlinedAt: !3311)
!3333 = !DILocation(line: 203, column: 9, scope: !3272, inlinedAt: !3311)
!3334 = !DILocation(line: 53, column: 8, scope: !3214, inlinedAt: !3324)
!3335 = !DILocation(line: 57, column: 7, scope: !3218, inlinedAt: !3324)
!3336 = !DILocation(line: 58, column: 7, scope: !3218, inlinedAt: !3324)
!3337 = !DILocation(line: 61, column: 7, scope: !3205, inlinedAt: !3324)
!3338 = !DILocation(line: 62, column: 8, scope: !3222, inlinedAt: !3324)
!3339 = !DILocation(line: 62, column: 13, scope: !3222, inlinedAt: !3324)
!3340 = !DILocation(line: 62, column: 10, scope: !3222, inlinedAt: !3324)
!3341 = !DILocation(line: 63, column: 5, scope: !3222, inlinedAt: !3324)
!3342 = !DILocation(line: 0, scope: !3205, inlinedAt: !3324)
!3343 = !DILocation(line: 76, column: 3, scope: !3302)
!3344 = distinct !DISubprogram(name: "xzalloc", scope: !3166, file: !3166, line: 84, type: !3167, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3345)
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "s", arg: 1, scope: !3344, file: !3166, line: 84, type: !54)
!3347 = !DILocation(line: 84, column: 17, scope: !3344)
!3348 = !DILocation(line: 39, column: 17, scope: !3165, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 86, column: 18, scope: !3344)
!3350 = !DILocation(line: 41, column: 13, scope: !3165, inlinedAt: !3349)
!3351 = !DILocation(line: 41, column: 9, scope: !3165, inlinedAt: !3349)
!3352 = !DILocation(line: 42, column: 8, scope: !3176, inlinedAt: !3349)
!3353 = !DILocation(line: 42, column: 15, scope: !3176, inlinedAt: !3349)
!3354 = !DILocation(line: 42, column: 10, scope: !3176, inlinedAt: !3349)
!3355 = !DILocation(line: 43, column: 5, scope: !3176, inlinedAt: !3349)
!3356 = !DILocation(line: 86, column: 10, scope: !3344)
!3357 = !DILocation(line: 86, column: 3, scope: !3344)
!3358 = distinct !DISubprogram(name: "xcalloc", scope: !3166, file: !3166, line: 93, type: !3152, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3359)
!3359 = !{!3360, !3361, !3362}
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !3166, line: 93, type: !54)
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3358, file: !3166, line: 93, type: !54)
!3362 = !DILocalVariable(name: "p", scope: !3358, file: !3166, line: 95, type: !53)
!3363 = !DILocation(line: 93, column: 17, scope: !3358)
!3364 = !DILocation(line: 93, column: 27, scope: !3358)
!3365 = !DILocation(line: 100, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3358, file: !3166, line: 100, column: 7)
!3367 = !DILocation(line: 101, column: 7, scope: !3366)
!3368 = !DILocation(line: 101, column: 18, scope: !3366)
!3369 = !DILocation(line: 95, column: 9, scope: !3358)
!3370 = !DILocation(line: 101, column: 16, scope: !3366)
!3371 = !DILocation(line: 100, column: 7, scope: !3358)
!3372 = !DILocation(line: 102, column: 5, scope: !3366)
!3373 = !DILocation(line: 103, column: 3, scope: !3358)
!3374 = distinct !DISubprogram(name: "xmemdup", scope: !3166, file: !3166, line: 111, type: !3375, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3379)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!53, !3377, !54}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "p", arg: 1, scope: !3374, file: !3166, line: 111, type: !3377)
!3381 = !DILocalVariable(name: "s", arg: 2, scope: !3374, file: !3166, line: 111, type: !54)
!3382 = !DILocation(line: 111, column: 22, scope: !3374)
!3383 = !DILocation(line: 111, column: 32, scope: !3374)
!3384 = !DILocation(line: 39, column: 17, scope: !3165, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 113, column: 18, scope: !3374)
!3386 = !DILocation(line: 41, column: 13, scope: !3165, inlinedAt: !3385)
!3387 = !DILocation(line: 41, column: 9, scope: !3165, inlinedAt: !3385)
!3388 = !DILocation(line: 42, column: 8, scope: !3176, inlinedAt: !3385)
!3389 = !DILocation(line: 42, column: 15, scope: !3176, inlinedAt: !3385)
!3390 = !DILocation(line: 42, column: 10, scope: !3176, inlinedAt: !3385)
!3391 = !DILocation(line: 43, column: 5, scope: !3176, inlinedAt: !3385)
!3392 = !DILocation(line: 113, column: 10, scope: !3374)
!3393 = !DILocation(line: 113, column: 3, scope: !3374)
!3394 = distinct !DISubprogram(name: "xstrdup", scope: !3166, file: !3166, line: 119, type: !2448, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3395)
!3395 = !{!3396}
!3396 = !DILocalVariable(name: "string", arg: 1, scope: !3394, file: !3166, line: 119, type: !70)
!3397 = !DILocation(line: 119, column: 22, scope: !3394)
!3398 = !DILocation(line: 121, column: 27, scope: !3394)
!3399 = !DILocation(line: 121, column: 43, scope: !3394)
!3400 = !DILocation(line: 111, column: 22, scope: !3374, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 121, column: 10, scope: !3394)
!3402 = !DILocation(line: 111, column: 32, scope: !3374, inlinedAt: !3401)
!3403 = !DILocation(line: 39, column: 17, scope: !3165, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 113, column: 18, scope: !3374, inlinedAt: !3401)
!3405 = !DILocation(line: 41, column: 13, scope: !3165, inlinedAt: !3404)
!3406 = !DILocation(line: 41, column: 9, scope: !3165, inlinedAt: !3404)
!3407 = !DILocation(line: 42, column: 8, scope: !3176, inlinedAt: !3404)
!3408 = !DILocation(line: 42, column: 15, scope: !3176, inlinedAt: !3404)
!3409 = !DILocation(line: 42, column: 10, scope: !3176, inlinedAt: !3404)
!3410 = !DILocation(line: 43, column: 5, scope: !3176, inlinedAt: !3404)
!3411 = !DILocation(line: 113, column: 10, scope: !3374, inlinedAt: !3401)
!3412 = !DILocation(line: 121, column: 3, scope: !3394)
!3413 = distinct !DISubprogram(name: "xalloc_die", scope: !3414, file: !3414, line: 32, type: !665, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !201, retainedNodes: !90)
!3414 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3415 = !DILocation(line: 34, column: 10, scope: !3413)
!3416 = !DILocation(line: 34, column: 33, scope: !3413)
!3417 = !DILocation(line: 34, column: 3, scope: !3413)
!3418 = !DILocation(line: 40, column: 3, scope: !3413)
!3419 = distinct !DISubprogram(name: "xnumtoimax", scope: !3420, file: !3420, line: 36, type: !3421, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3423)
!3420 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!57, !70, !44, !57, !57, !70, !70, !44}
!3423 = !{!3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3433}
!3424 = !DILocalVariable(name: "n_str", arg: 1, scope: !3419, file: !3420, line: 36, type: !70)
!3425 = !DILocalVariable(name: "base", arg: 2, scope: !3419, file: !3420, line: 36, type: !44)
!3426 = !DILocalVariable(name: "min", arg: 3, scope: !3419, file: !3420, line: 36, type: !57)
!3427 = !DILocalVariable(name: "max", arg: 4, scope: !3419, file: !3420, line: 36, type: !57)
!3428 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3419, file: !3420, line: 37, type: !70)
!3429 = !DILocalVariable(name: "err", arg: 6, scope: !3419, file: !3420, line: 37, type: !70)
!3430 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3419, file: !3420, line: 37, type: !44)
!3431 = !DILocalVariable(name: "s_err", scope: !3419, file: !3420, line: 39, type: !3432)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !207, line: 39, baseType: !206)
!3433 = !DILocalVariable(name: "tnum", scope: !3419, file: !3420, line: 41, type: !57)
!3434 = !DILocation(line: 36, column: 26, scope: !3419)
!3435 = !DILocation(line: 36, column: 37, scope: !3419)
!3436 = !DILocation(line: 36, column: 57, scope: !3419)
!3437 = !DILocation(line: 36, column: 76, scope: !3419)
!3438 = !DILocation(line: 37, column: 26, scope: !3419)
!3439 = !DILocation(line: 37, column: 48, scope: !3419)
!3440 = !DILocation(line: 37, column: 57, scope: !3419)
!3441 = !DILocation(line: 41, column: 3, scope: !3419)
!3442 = !DILocation(line: 41, column: 17, scope: !3419)
!3443 = !DILocation(line: 42, column: 11, scope: !3419)
!3444 = !DILocation(line: 39, column: 16, scope: !3419)
!3445 = !DILocation(line: 44, column: 7, scope: !3419)
!3446 = !DILocation(line: 69, column: 50, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3420, line: 67, column: 5)
!3448 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 66, column: 7)
!3449 = !DILocation(line: 46, column: 11, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3420, line: 46, column: 11)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3420, line: 45, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 44, column: 7)
!3453 = !DILocation(line: 46, column: 16, scope: !3450)
!3454 = !DILocation(line: 46, column: 29, scope: !3450)
!3455 = !DILocation(line: 46, column: 22, scope: !3450)
!3456 = !DILocation(line: 51, column: 20, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3420, line: 51, column: 15)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !3420, line: 47, column: 9)
!3459 = !DILocation(line: 51, column: 15, scope: !3458)
!3460 = !DILocation(line: 52, column: 13, scope: !3457)
!3461 = !DILocation(line: 52, column: 19, scope: !3457)
!3462 = !DILocation(line: 54, column: 25, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3457, file: !3420, line: 54, column: 20)
!3464 = !DILocation(line: 0, scope: !3463)
!3465 = !DILocation(line: 54, column: 20, scope: !3457)
!3466 = !DILocation(line: 55, column: 19, scope: !3463)
!3467 = !DILocation(line: 55, column: 13, scope: !3463)
!3468 = !DILocation(line: 58, column: 19, scope: !3463)
!3469 = !DILocation(line: 62, column: 5, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3452, file: !3420, line: 61, column: 12)
!3471 = !DILocation(line: 62, column: 11, scope: !3470)
!3472 = !DILocation(line: 64, column: 5, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3420, line: 63, column: 12)
!3474 = !DILocation(line: 64, column: 11, scope: !3473)
!3475 = !DILocation(line: 69, column: 14, scope: !3447)
!3476 = !DILocation(line: 69, column: 56, scope: !3447)
!3477 = !DILocation(line: 70, column: 29, scope: !3447)
!3478 = !DILocation(line: 69, column: 7, scope: !3447)
!3479 = !DILocation(line: 73, column: 10, scope: !3419)
!3480 = !DILocation(line: 71, column: 5, scope: !3447)
!3481 = !DILocation(line: 74, column: 1, scope: !3419)
!3482 = !DILocation(line: 73, column: 3, scope: !3419)
!3483 = distinct !DISubprogram(name: "xdectoimax", scope: !3420, file: !3420, line: 82, type: !3484, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!57, !70, !57, !57, !70, !70, !44}
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DILocalVariable(name: "n_str", arg: 1, scope: !3483, file: !3420, line: 82, type: !70)
!3488 = !DILocalVariable(name: "min", arg: 2, scope: !3483, file: !3420, line: 82, type: !57)
!3489 = !DILocalVariable(name: "max", arg: 3, scope: !3483, file: !3420, line: 82, type: !57)
!3490 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3483, file: !3420, line: 83, type: !70)
!3491 = !DILocalVariable(name: "err", arg: 5, scope: !3483, file: !3420, line: 83, type: !70)
!3492 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3483, file: !3420, line: 83, type: !44)
!3493 = !DILocation(line: 82, column: 26, scope: !3483)
!3494 = !DILocation(line: 82, column: 47, scope: !3483)
!3495 = !DILocation(line: 82, column: 66, scope: !3483)
!3496 = !DILocation(line: 83, column: 26, scope: !3483)
!3497 = !DILocation(line: 83, column: 48, scope: !3483)
!3498 = !DILocation(line: 83, column: 57, scope: !3483)
!3499 = !DILocation(line: 85, column: 10, scope: !3483)
!3500 = !DILocation(line: 85, column: 3, scope: !3483)
!3501 = distinct !DISubprogram(name: "xstrtoimax", scope: !3502, file: !3502, line: 88, type: !3503, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !3506)
!3502 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!3432, !70, !715, !44, !3505, !70}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3519, !3520}
!3507 = !DILocalVariable(name: "s", arg: 1, scope: !3501, file: !3502, line: 88, type: !70)
!3508 = !DILocalVariable(name: "ptr", arg: 2, scope: !3501, file: !3502, line: 88, type: !715)
!3509 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3501, file: !3502, line: 88, type: !44)
!3510 = !DILocalVariable(name: "val", arg: 4, scope: !3501, file: !3502, line: 89, type: !3505)
!3511 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3501, file: !3502, line: 89, type: !70)
!3512 = !DILocalVariable(name: "t_ptr", scope: !3501, file: !3502, line: 91, type: !51)
!3513 = !DILocalVariable(name: "p", scope: !3501, file: !3502, line: 92, type: !715)
!3514 = !DILocalVariable(name: "tmp", scope: !3501, file: !3502, line: 93, type: !57)
!3515 = !DILocalVariable(name: "err", scope: !3501, file: !3502, line: 94, type: !3432)
!3516 = !DILocalVariable(name: "base", scope: !3517, file: !3502, line: 141, type: !44)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3502, line: 140, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 139, column: 7)
!3519 = !DILocalVariable(name: "suffixes", scope: !3517, file: !3502, line: 142, type: !44)
!3520 = !DILocalVariable(name: "overflow", scope: !3517, file: !3502, line: 143, type: !3432)
!3521 = !DILocation(line: 88, column: 24, scope: !3501)
!3522 = !DILocation(line: 88, column: 34, scope: !3501)
!3523 = !DILocation(line: 88, column: 43, scope: !3501)
!3524 = !DILocation(line: 89, column: 24, scope: !3501)
!3525 = !DILocation(line: 89, column: 41, scope: !3501)
!3526 = !DILocation(line: 91, column: 3, scope: !3501)
!3527 = !DILocation(line: 94, column: 16, scope: !3501)
!3528 = !DILocation(line: 96, column: 3, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3502, line: 96, column: 3)
!3530 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 96, column: 3)
!3531 = !DILocation(line: 98, column: 8, scope: !3501)
!3532 = !DILocation(line: 92, column: 10, scope: !3501)
!3533 = !DILocation(line: 100, column: 3, scope: !3501)
!3534 = !DILocation(line: 100, column: 9, scope: !3501)
!3535 = !DILocalVariable(name: "nptr", arg: 1, scope: !3536, file: !3537, line: 324, type: !3540)
!3536 = distinct !DISubprogram(name: "strtoimax", scope: !3537, file: !3537, line: 324, type: !3538, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !3542)
!3537 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!57, !3540, !3541, !44}
!3540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!3541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !715)
!3542 = !{!3535, !3543, !3544}
!3543 = !DILocalVariable(name: "endptr", arg: 2, scope: !3536, file: !3537, line: 324, type: !3541)
!3544 = !DILocalVariable(name: "base", arg: 3, scope: !3536, file: !3537, line: 324, type: !44)
!3545 = !DILocation(line: 324, column: 1, scope: !3536, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 112, column: 9, scope: !3501)
!3547 = !DILocation(line: 327, column: 10, scope: !3536, inlinedAt: !3546)
!3548 = !DILocation(line: 93, column: 14, scope: !3501)
!3549 = !DILocation(line: 114, column: 7, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 114, column: 7)
!3551 = !DILocation(line: 114, column: 10, scope: !3550)
!3552 = !DILocation(line: 114, column: 7, scope: !3501)
!3553 = !DILocation(line: 118, column: 11, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3502, line: 118, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !3502, line: 115, column: 5)
!3556 = !DILocation(line: 118, column: 26, scope: !3554)
!3557 = !DILocation(line: 118, column: 29, scope: !3554)
!3558 = !DILocation(line: 118, column: 33, scope: !3554)
!3559 = !DILocation(line: 118, column: 36, scope: !3554)
!3560 = !DILocation(line: 118, column: 11, scope: !3555)
!3561 = !DILocation(line: 123, column: 12, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3550, file: !3502, line: 123, column: 12)
!3563 = !DILocation(line: 123, column: 12, scope: !3550)
!3564 = !DILocation(line: 128, column: 5, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !3502, line: 124, column: 5)
!3566 = !DILocation(line: 0, scope: !3501)
!3567 = !DILocation(line: 133, column: 8, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 133, column: 7)
!3569 = !DILocation(line: 133, column: 7, scope: !3501)
!3570 = !DILocation(line: 135, column: 12, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !3502, line: 134, column: 5)
!3572 = !DILocation(line: 136, column: 7, scope: !3571)
!3573 = !DILocation(line: 139, column: 7, scope: !3518)
!3574 = !DILocation(line: 139, column: 11, scope: !3518)
!3575 = !DILocation(line: 139, column: 7, scope: !3501)
!3576 = !DILocation(line: 141, column: 11, scope: !3517)
!3577 = !DILocation(line: 142, column: 11, scope: !3517)
!3578 = !DILocation(line: 145, column: 12, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3517, file: !3502, line: 145, column: 11)
!3580 = !DILocation(line: 145, column: 11, scope: !3517)
!3581 = !DILocation(line: 147, column: 16, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !3502, line: 146, column: 9)
!3583 = !DILocation(line: 148, column: 22, scope: !3582)
!3584 = !DILocation(line: 148, column: 11, scope: !3582)
!3585 = !DILocation(line: 151, column: 7, scope: !3517)
!3586 = !DILocation(line: 163, column: 15, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !3502, line: 163, column: 15)
!3588 = distinct !DILexicalBlock(scope: !3517, file: !3502, line: 152, column: 9)
!3589 = !DILocation(line: 163, column: 15, scope: !3588)
!3590 = !DILocation(line: 164, column: 21, scope: !3587)
!3591 = !DILocation(line: 164, column: 13, scope: !3587)
!3592 = !DILocation(line: 167, column: 21, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3502, line: 167, column: 21)
!3594 = distinct !DILexicalBlock(scope: !3587, file: !3502, line: 165, column: 15)
!3595 = !DILocation(line: 167, column: 29, scope: !3593)
!3596 = !DILocation(line: 167, column: 21, scope: !3594)
!3597 = !DILocation(line: 175, column: 17, scope: !3594)
!3598 = !DILocation(line: 179, column: 7, scope: !3517)
!3599 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3600, file: !3502, line: 60, type: !44)
!3600 = distinct !DISubprogram(name: "bkm_scale", scope: !3502, file: !3502, line: 60, type: !3601, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!3432, !3505, !44}
!3603 = !{!3604, !3599}
!3604 = !DILocalVariable(name: "x", arg: 1, scope: !3600, file: !3502, line: 60, type: !3505)
!3605 = !DILocation(line: 60, column: 31, scope: !3600, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 182, column: 22, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3517, file: !3502, line: 180, column: 9)
!3608 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3606)
!3609 = distinct !DILexicalBlock(scope: !3600, file: !3502, line: 62, column: 7)
!3610 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3606)
!3611 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3606)
!3612 = distinct !DILexicalBlock(scope: !3600, file: !3502, line: 67, column: 7)
!3613 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3606)
!3614 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3606)
!3615 = !DILocation(line: 60, column: 31, scope: !3600, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 189, column: 22, scope: !3607)
!3617 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3616)
!3618 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3616)
!3619 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3616)
!3620 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3616)
!3621 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3616)
!3622 = !DILocalVariable(name: "power", arg: 3, scope: !3623, file: !3502, line: 77, type: !44)
!3623 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3502, file: !3502, line: 77, type: !3624, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!3432, !3505, !44, !44}
!3626 = !{!3627, !3628, !3622, !3629}
!3627 = !DILocalVariable(name: "x", arg: 1, scope: !3623, file: !3502, line: 77, type: !3505)
!3628 = !DILocalVariable(name: "base", arg: 2, scope: !3623, file: !3502, line: 77, type: !44)
!3629 = !DILocalVariable(name: "err", scope: !3623, file: !3502, line: 79, type: !3432)
!3630 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 197, column: 22, scope: !3607)
!3632 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3631)
!3633 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3631)
!3635 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3634)
!3636 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3634)
!3637 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3634)
!3638 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3634)
!3639 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3634)
!3640 = !DILocation(line: 0, scope: !3600, inlinedAt: !3634)
!3641 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 202, column: 22, scope: !3607)
!3643 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3642)
!3644 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3642)
!3646 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3645)
!3647 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3645)
!3648 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3645)
!3649 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3645)
!3650 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3645)
!3651 = !DILocation(line: 0, scope: !3600, inlinedAt: !3645)
!3652 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 207, column: 22, scope: !3607)
!3654 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3653)
!3655 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3653)
!3657 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3656)
!3658 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3656)
!3659 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3656)
!3660 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3656)
!3661 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3656)
!3662 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 212, column: 22, scope: !3607)
!3664 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3663)
!3665 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3663)
!3667 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3666)
!3668 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3666)
!3669 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3666)
!3670 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3666)
!3671 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3666)
!3672 = !DILocation(line: 0, scope: !3600, inlinedAt: !3666)
!3673 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 216, column: 22, scope: !3607)
!3675 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3674)
!3676 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3674)
!3678 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3677)
!3679 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3677)
!3680 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3677)
!3681 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3677)
!3682 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3677)
!3683 = !DILocation(line: 0, scope: !3600, inlinedAt: !3677)
!3684 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 221, column: 22, scope: !3607)
!3686 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3685)
!3687 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3685)
!3689 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3688)
!3690 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3688)
!3691 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3688)
!3692 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3688)
!3693 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3688)
!3694 = !DILocation(line: 0, scope: !3600, inlinedAt: !3688)
!3695 = !DILocation(line: 60, column: 31, scope: !3600, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 225, column: 22, scope: !3607)
!3697 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3696)
!3698 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3696)
!3699 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3696)
!3700 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3696)
!3701 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3696)
!3702 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 229, column: 22, scope: !3607)
!3704 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3703)
!3705 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3703)
!3707 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3706)
!3708 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3706)
!3709 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3706)
!3710 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3706)
!3711 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3706)
!3712 = !DILocation(line: 0, scope: !3600, inlinedAt: !3706)
!3713 = !DILocation(line: 77, column: 50, scope: !3623, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 233, column: 22, scope: !3607)
!3715 = !DILocation(line: 79, column: 16, scope: !3623, inlinedAt: !3714)
!3716 = !DILocation(line: 62, column: 38, scope: !3609, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 81, column: 12, scope: !3623, inlinedAt: !3714)
!3718 = !DILocation(line: 62, column: 7, scope: !3600, inlinedAt: !3717)
!3719 = !DILocation(line: 67, column: 24, scope: !3612, inlinedAt: !3717)
!3720 = !DILocation(line: 67, column: 39, scope: !3612, inlinedAt: !3717)
!3721 = !DILocation(line: 72, column: 6, scope: !3600, inlinedAt: !3717)
!3722 = !DILocation(line: 67, column: 7, scope: !3600, inlinedAt: !3717)
!3723 = !DILocation(line: 0, scope: !3600, inlinedAt: !3717)
!3724 = !DILocation(line: 237, column: 16, scope: !3607)
!3725 = !DILocation(line: 238, column: 22, scope: !3607)
!3726 = !DILocation(line: 238, column: 11, scope: !3607)
!3727 = !DILocation(line: 0, scope: !3607)
!3728 = !DILocation(line: 143, column: 20, scope: !3517)
!3729 = !DILocation(line: 241, column: 11, scope: !3517)
!3730 = !DILocation(line: 242, column: 10, scope: !3517)
!3731 = !DILocation(line: 243, column: 11, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3517, file: !3502, line: 243, column: 11)
!3733 = !DILocation(line: 244, column: 13, scope: !3732)
!3734 = !DILocation(line: 243, column: 11, scope: !3517)
!3735 = !DILocation(line: 119, column: 13, scope: !3554)
!3736 = !DILocation(line: 247, column: 8, scope: !3501)
!3737 = !DILocation(line: 248, column: 3, scope: !3501)
!3738 = !DILocation(line: 0, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3565, file: !3502, line: 125, column: 11)
!3740 = !DILocation(line: 249, column: 1, scope: !3501)
!3741 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3631)
!3742 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3642)
!3743 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3663)
!3744 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3674)
!3745 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3685)
!3746 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3703)
!3747 = !DILocation(line: 81, column: 9, scope: !3623, inlinedAt: !3714)
!3748 = distinct !DISubprogram(name: "rpl_calloc", scope: !3749, file: !3749, line: 42, type: !3152, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !3750)
!3749 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !3749, line: 42, type: !54)
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3748, file: !3749, line: 42, type: !54)
!3753 = !DILocalVariable(name: "result", scope: !3748, file: !3749, line: 44, type: !53)
!3754 = !DILocalVariable(name: "bytes", scope: !3755, file: !3749, line: 56, type: !54)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3749, line: 53, column: 5)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3749, line: 47, column: 7)
!3757 = !DILocation(line: 42, column: 20, scope: !3748)
!3758 = !DILocation(line: 42, column: 30, scope: !3748)
!3759 = !DILocation(line: 47, column: 9, scope: !3756)
!3760 = !DILocation(line: 47, column: 19, scope: !3756)
!3761 = !DILocation(line: 47, column: 14, scope: !3756)
!3762 = !DILocation(line: 56, column: 24, scope: !3755)
!3763 = !DILocation(line: 56, column: 14, scope: !3755)
!3764 = !DILocation(line: 57, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3755, file: !3749, line: 57, column: 11)
!3766 = !DILocation(line: 57, column: 21, scope: !3765)
!3767 = !DILocation(line: 57, column: 11, scope: !3755)
!3768 = !DILocation(line: 59, column: 11, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !3749, line: 58, column: 9)
!3770 = !DILocation(line: 59, column: 17, scope: !3769)
!3771 = !DILocation(line: 65, column: 12, scope: !3748)
!3772 = !DILocation(line: 44, column: 9, scope: !3748)
!3773 = !DILocation(line: 72, column: 3, scope: !3748)
!3774 = !DILocation(line: 0, scope: !3769)
!3775 = !DILocation(line: 73, column: 1, scope: !3748)
!3776 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3777, file: !3777, line: 385, type: !3778, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !3792)
!3777 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!54, !3780, !70, !54, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1408, line: 6, baseType: !3783)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1410, line: 21, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 13, size: 64, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3784, file: !1410, line: 15, baseType: !44, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3784, file: !1410, line: 20, baseType: !3788, size: 32, offset: 32)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3784, file: !1410, line: 16, size: 32, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3788, file: !1410, line: 18, baseType: !6, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3788, file: !1410, line: 19, baseType: !1419, size: 32)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3793 = !DILocalVariable(name: "pwc", arg: 1, scope: !3776, file: !3777, line: 385, type: !3780)
!3794 = !DILocalVariable(name: "s", arg: 2, scope: !3776, file: !3777, line: 385, type: !70)
!3795 = !DILocalVariable(name: "n", arg: 3, scope: !3776, file: !3777, line: 385, type: !54)
!3796 = !DILocalVariable(name: "ps", arg: 4, scope: !3776, file: !3777, line: 385, type: !3781)
!3797 = !DILocalVariable(name: "ret", scope: !3776, file: !3777, line: 387, type: !54)
!3798 = !DILocalVariable(name: "wc", scope: !3776, file: !3777, line: 388, type: !1424)
!3799 = !DILocalVariable(name: "uc", scope: !3800, file: !3777, line: 449, type: !1268)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3777, line: 448, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 447, column: 7)
!3802 = !DILocation(line: 385, column: 23, scope: !3776)
!3803 = !DILocation(line: 385, column: 40, scope: !3776)
!3804 = !DILocation(line: 385, column: 50, scope: !3776)
!3805 = !DILocation(line: 385, column: 64, scope: !3776)
!3806 = !DILocation(line: 388, column: 3, scope: !3776)
!3807 = !DILocation(line: 404, column: 9, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 404, column: 7)
!3809 = !DILocation(line: 404, column: 7, scope: !3776)
!3810 = !DILocation(line: 439, column: 9, scope: !3776)
!3811 = !DILocation(line: 387, column: 10, scope: !3776)
!3812 = !DILocation(line: 447, column: 19, scope: !3801)
!3813 = !DILocation(line: 447, column: 31, scope: !3801)
!3814 = !DILocation(line: 447, column: 26, scope: !3801)
!3815 = !DILocation(line: 447, column: 41, scope: !3801)
!3816 = !DILocation(line: 447, column: 7, scope: !3776)
!3817 = !DILocation(line: 449, column: 26, scope: !3800)
!3818 = !DILocation(line: 449, column: 21, scope: !3800)
!3819 = !DILocation(line: 450, column: 14, scope: !3800)
!3820 = !DILocation(line: 450, column: 12, scope: !3800)
!3821 = !DILocation(line: 0, scope: !3800)
!3822 = !DILocation(line: 456, column: 1, scope: !3776)
!3823 = distinct !DISubprogram(name: "close_stream", scope: !3824, file: !3824, line: 56, type: !3825, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !221, retainedNodes: !3861)
!3824 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!44, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2963, line: 7, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 49, size: 1728, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3829, file: !2965, line: 51, baseType: !44, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3829, file: !2965, line: 54, baseType: !51, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3829, file: !2965, line: 55, baseType: !51, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3829, file: !2965, line: 56, baseType: !51, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3829, file: !2965, line: 57, baseType: !51, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3829, file: !2965, line: 58, baseType: !51, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3829, file: !2965, line: 59, baseType: !51, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3829, file: !2965, line: 60, baseType: !51, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3829, file: !2965, line: 61, baseType: !51, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3829, file: !2965, line: 64, baseType: !51, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3829, file: !2965, line: 65, baseType: !51, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3829, file: !2965, line: 66, baseType: !51, size: 64, offset: 704)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3829, file: !2965, line: 68, baseType: !2980, size: 64, offset: 768)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3829, file: !2965, line: 70, baseType: !3845, size: 64, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3829, file: !2965, line: 72, baseType: !44, size: 32, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3829, file: !2965, line: 73, baseType: !44, size: 32, offset: 928)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3829, file: !2965, line: 74, baseType: !48, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3829, file: !2965, line: 77, baseType: !45, size: 16, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3829, file: !2965, line: 78, baseType: !2989, size: 8, offset: 1040)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3829, file: !2965, line: 79, baseType: !2991, size: 8, offset: 1048)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3829, file: !2965, line: 81, baseType: !2995, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3829, file: !2965, line: 89, baseType: !2998, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3829, file: !2965, line: 91, baseType: !3000, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3829, file: !2965, line: 92, baseType: !3003, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3829, file: !2965, line: 93, baseType: !3845, size: 64, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3829, file: !2965, line: 94, baseType: !53, size: 64, offset: 1408)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3829, file: !2965, line: 95, baseType: !54, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3829, file: !2965, line: 96, baseType: !44, size: 32, offset: 1536)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3829, file: !2965, line: 98, baseType: !3010, size: 160, offset: 1568)
!3861 = !{!3862, !3863, !3865, !3866}
!3862 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !3824, line: 56, type: !3827)
!3863 = !DILocalVariable(name: "some_pending", scope: !3823, file: !3824, line: 58, type: !3864)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!3865 = !DILocalVariable(name: "prev_fail", scope: !3823, file: !3824, line: 59, type: !3864)
!3866 = !DILocalVariable(name: "fclose_fail", scope: !3823, file: !3824, line: 60, type: !3864)
!3867 = !DILocation(line: 56, column: 21, scope: !3823)
!3868 = !DILocation(line: 58, column: 30, scope: !3823)
!3869 = !DILocalVariable(name: "__stream", arg: 1, scope: !3870, file: !3871, line: 135, type: !3827)
!3870 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3871, file: !3871, line: 135, type: !3825, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !221, retainedNodes: !3872)
!3871 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3872 = !{!3869}
!3873 = !DILocation(line: 135, column: 1, scope: !3870, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 59, column: 27, scope: !3823)
!3875 = !DILocation(line: 137, column: 10, scope: !3870, inlinedAt: !3874)
!3876 = !{!3877, !847, i64 0}
!3877 = !{!"_IO_FILE", !847, i64 0, !658, i64 8, !658, i64 16, !658, i64 24, !658, i64 32, !658, i64 40, !658, i64 48, !658, i64 56, !658, i64 64, !658, i64 72, !658, i64 80, !658, i64 88, !658, i64 96, !658, i64 104, !847, i64 112, !847, i64 116, !915, i64 120, !798, i64 128, !659, i64 130, !659, i64 131, !658, i64 136, !915, i64 144, !658, i64 152, !658, i64 160, !658, i64 168, !658, i64 176, !915, i64 184, !847, i64 192, !659, i64 196}
!3878 = !DILocation(line: 59, column: 43, scope: !3823)
!3879 = !DILocation(line: 60, column: 29, scope: !3823)
!3880 = !DILocation(line: 60, column: 45, scope: !3823)
!3881 = !DILocation(line: 70, column: 17, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3823, file: !3824, line: 70, column: 7)
!3883 = !DILocation(line: 58, column: 50, scope: !3823)
!3884 = !DILocation(line: 70, column: 33, scope: !3882)
!3885 = !DILocation(line: 70, column: 53, scope: !3882)
!3886 = !DILocation(line: 70, column: 59, scope: !3882)
!3887 = !DILocation(line: 70, column: 7, scope: !3823)
!3888 = !DILocation(line: 72, column: 11, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3882, file: !3824, line: 71, column: 5)
!3890 = !DILocation(line: 73, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3889, file: !3824, line: 72, column: 11)
!3892 = !DILocation(line: 73, column: 15, scope: !3891)
!3893 = !DILocation(line: 0, scope: !3823)
!3894 = !DILocation(line: 78, column: 1, scope: !3823)
!3895 = distinct !DISubprogram(name: "hard_locale", scope: !3896, file: !3896, line: 38, type: !3897, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3899)
!3896 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!65, !44}
!3899 = !{!3900, !3901, !3902}
!3900 = !DILocalVariable(name: "category", arg: 1, scope: !3895, file: !3896, line: 38, type: !44)
!3901 = !DILocalVariable(name: "hard", scope: !3895, file: !3896, line: 40, type: !65)
!3902 = !DILocalVariable(name: "p", scope: !3895, file: !3896, line: 41, type: !70)
!3903 = !DILocation(line: 38, column: 18, scope: !3895)
!3904 = !DILocation(line: 40, column: 8, scope: !3895)
!3905 = !DILocation(line: 41, column: 19, scope: !3895)
!3906 = !DILocation(line: 41, column: 15, scope: !3895)
!3907 = !DILocation(line: 43, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3895, file: !3896, line: 43, column: 7)
!3909 = !DILocation(line: 43, column: 7, scope: !3895)
!3910 = !DILocation(line: 47, column: 15, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3896, line: 47, column: 15)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3896, line: 46, column: 9)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3896, line: 45, column: 11)
!3914 = distinct !DILexicalBlock(scope: !3908, file: !3896, line: 44, column: 5)
!3915 = !DILocation(line: 47, column: 31, scope: !3911)
!3916 = !DILocation(line: 47, column: 36, scope: !3911)
!3917 = !DILocation(line: 47, column: 39, scope: !3911)
!3918 = !DILocation(line: 47, column: 59, scope: !3911)
!3919 = !DILocation(line: 47, column: 15, scope: !3912)
!3920 = !DILocation(line: 48, column: 13, scope: !3911)
!3921 = !DILocation(line: 71, column: 3, scope: !3895)
!3922 = distinct !DISubprogram(name: "locale_charset", scope: !3923, file: !3923, line: 687, type: !3924, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !3926)
!3923 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!70}
!3926 = !{!3927}
!3927 = !DILocalVariable(name: "codeset", scope: !3922, file: !3923, line: 689, type: !70)
!3928 = !DILocation(line: 696, column: 13, scope: !3922)
!3929 = !DILocation(line: 689, column: 15, scope: !3922)
!3930 = !DILocation(line: 754, column: 15, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3922, file: !3923, line: 754, column: 7)
!3932 = !DILocation(line: 754, column: 7, scope: !3922)
!3933 = !DILocation(line: 907, column: 13, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3923, line: 907, column: 13)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3923, line: 897, column: 7)
!3936 = distinct !DILexicalBlock(scope: !3922, file: !3923, line: 856, column: 3)
!3937 = !DILocation(line: 907, column: 24, scope: !3934)
!3938 = !DILocation(line: 907, column: 13, scope: !3935)
!3939 = !DILocation(line: 995, column: 3, scope: !3922)
!3940 = distinct !DISubprogram(name: "rpl_fclose", scope: !3941, file: !3941, line: 58, type: !3942, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !614, retainedNodes: !3978)
!3941 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!44, !3944}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2963, line: 7, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 49, size: 1728, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3946, file: !2965, line: 51, baseType: !44, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3946, file: !2965, line: 54, baseType: !51, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3946, file: !2965, line: 55, baseType: !51, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3946, file: !2965, line: 56, baseType: !51, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3946, file: !2965, line: 57, baseType: !51, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3946, file: !2965, line: 58, baseType: !51, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3946, file: !2965, line: 59, baseType: !51, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3946, file: !2965, line: 60, baseType: !51, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3946, file: !2965, line: 61, baseType: !51, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3946, file: !2965, line: 64, baseType: !51, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3946, file: !2965, line: 65, baseType: !51, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3946, file: !2965, line: 66, baseType: !51, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3946, file: !2965, line: 68, baseType: !2980, size: 64, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3946, file: !2965, line: 70, baseType: !3962, size: 64, offset: 832)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3946, file: !2965, line: 72, baseType: !44, size: 32, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3946, file: !2965, line: 73, baseType: !44, size: 32, offset: 928)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3946, file: !2965, line: 74, baseType: !48, size: 64, offset: 960)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3946, file: !2965, line: 77, baseType: !45, size: 16, offset: 1024)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3946, file: !2965, line: 78, baseType: !2989, size: 8, offset: 1040)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3946, file: !2965, line: 79, baseType: !2991, size: 8, offset: 1048)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3946, file: !2965, line: 81, baseType: !2995, size: 64, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3946, file: !2965, line: 89, baseType: !2998, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3946, file: !2965, line: 91, baseType: !3000, size: 64, offset: 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3946, file: !2965, line: 92, baseType: !3003, size: 64, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3946, file: !2965, line: 93, baseType: !3962, size: 64, offset: 1344)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3946, file: !2965, line: 94, baseType: !53, size: 64, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3946, file: !2965, line: 95, baseType: !54, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3946, file: !2965, line: 96, baseType: !44, size: 32, offset: 1536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3946, file: !2965, line: 98, baseType: !3010, size: 160, offset: 1568)
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "fp", arg: 1, scope: !3940, file: !3941, line: 58, type: !3944)
!3980 = !DILocalVariable(name: "saved_errno", scope: !3940, file: !3941, line: 60, type: !44)
!3981 = !DILocalVariable(name: "fd", scope: !3940, file: !3941, line: 61, type: !44)
!3982 = !DILocalVariable(name: "result", scope: !3940, file: !3941, line: 62, type: !44)
!3983 = !DILocation(line: 58, column: 19, scope: !3940)
!3984 = !DILocation(line: 60, column: 7, scope: !3940)
!3985 = !DILocation(line: 62, column: 7, scope: !3940)
!3986 = !DILocation(line: 65, column: 8, scope: !3940)
!3987 = !DILocation(line: 61, column: 7, scope: !3940)
!3988 = !DILocation(line: 66, column: 10, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3940, file: !3941, line: 66, column: 7)
!3990 = !DILocation(line: 66, column: 7, scope: !3940)
!3991 = !DILocation(line: 67, column: 12, scope: !3989)
!3992 = !DILocation(line: 67, column: 5, scope: !3989)
!3993 = !DILocation(line: 72, column: 9, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3940, file: !3941, line: 72, column: 7)
!3995 = !DILocation(line: 72, column: 23, scope: !3994)
!3996 = !DILocation(line: 72, column: 33, scope: !3994)
!3997 = !DILocation(line: 72, column: 26, scope: !3994)
!3998 = !DILocation(line: 72, column: 59, scope: !3994)
!3999 = !DILocation(line: 73, column: 7, scope: !3994)
!4000 = !DILocation(line: 73, column: 10, scope: !3994)
!4001 = !DILocation(line: 72, column: 7, scope: !3940)
!4002 = !DILocation(line: 100, column: 12, scope: !3940)
!4003 = !DILocation(line: 105, column: 7, scope: !3940)
!4004 = !DILocation(line: 74, column: 19, scope: !3994)
!4005 = !DILocation(line: 105, column: 19, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3940, file: !3941, line: 105, column: 7)
!4007 = !DILocation(line: 107, column: 13, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4006, file: !3941, line: 106, column: 5)
!4009 = !DILocation(line: 109, column: 5, scope: !4008)
!4010 = !DILocation(line: 0, scope: !3940)
!4011 = !DILocation(line: 112, column: 1, scope: !3940)
!4012 = distinct !DISubprogram(name: "rpl_fflush", scope: !4013, file: !4013, line: 129, type: !4014, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !616, retainedNodes: !4050)
!4013 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!44, !4016}
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2963, line: 7, baseType: !4018)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 49, size: 1728, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4018, file: !2965, line: 51, baseType: !44, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4018, file: !2965, line: 54, baseType: !51, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4018, file: !2965, line: 55, baseType: !51, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4018, file: !2965, line: 56, baseType: !51, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4018, file: !2965, line: 57, baseType: !51, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4018, file: !2965, line: 58, baseType: !51, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4018, file: !2965, line: 59, baseType: !51, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4018, file: !2965, line: 60, baseType: !51, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4018, file: !2965, line: 61, baseType: !51, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4018, file: !2965, line: 64, baseType: !51, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4018, file: !2965, line: 65, baseType: !51, size: 64, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4018, file: !2965, line: 66, baseType: !51, size: 64, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4018, file: !2965, line: 68, baseType: !2980, size: 64, offset: 768)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4018, file: !2965, line: 70, baseType: !4034, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4018, file: !2965, line: 72, baseType: !44, size: 32, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4018, file: !2965, line: 73, baseType: !44, size: 32, offset: 928)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4018, file: !2965, line: 74, baseType: !48, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4018, file: !2965, line: 77, baseType: !45, size: 16, offset: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4018, file: !2965, line: 78, baseType: !2989, size: 8, offset: 1040)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4018, file: !2965, line: 79, baseType: !2991, size: 8, offset: 1048)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4018, file: !2965, line: 81, baseType: !2995, size: 64, offset: 1088)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4018, file: !2965, line: 89, baseType: !2998, size: 64, offset: 1152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4018, file: !2965, line: 91, baseType: !3000, size: 64, offset: 1216)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4018, file: !2965, line: 92, baseType: !3003, size: 64, offset: 1280)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4018, file: !2965, line: 93, baseType: !4034, size: 64, offset: 1344)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4018, file: !2965, line: 94, baseType: !53, size: 64, offset: 1408)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4018, file: !2965, line: 95, baseType: !54, size: 64, offset: 1472)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4018, file: !2965, line: 96, baseType: !44, size: 32, offset: 1536)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4018, file: !2965, line: 98, baseType: !3010, size: 160, offset: 1568)
!4050 = !{!4051}
!4051 = !DILocalVariable(name: "stream", arg: 1, scope: !4012, file: !4013, line: 129, type: !4016)
!4052 = !DILocation(line: 129, column: 19, scope: !4012)
!4053 = !DILocation(line: 150, column: 14, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4012, file: !4013, line: 150, column: 7)
!4055 = !DILocation(line: 150, column: 22, scope: !4054)
!4056 = !DILocation(line: 150, column: 27, scope: !4054)
!4057 = !DILocation(line: 150, column: 7, scope: !4012)
!4058 = !DILocation(line: 151, column: 12, scope: !4054)
!4059 = !DILocation(line: 151, column: 5, scope: !4054)
!4060 = !DILocalVariable(name: "fp", arg: 1, scope: !4061, file: !4013, line: 41, type: !4016)
!4061 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4013, file: !4013, line: 41, type: !4062, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !616, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4016}
!4064 = !{!4060}
!4065 = !DILocation(line: 41, column: 48, scope: !4061, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 156, column: 3, scope: !4012)
!4067 = !DILocation(line: 43, column: 11, scope: !4068, inlinedAt: !4066)
!4068 = distinct !DILexicalBlock(scope: !4061, file: !4013, line: 43, column: 7)
!4069 = !DILocation(line: 43, column: 18, scope: !4068, inlinedAt: !4066)
!4070 = !DILocation(line: 43, column: 7, scope: !4061, inlinedAt: !4066)
!4071 = !DILocation(line: 45, column: 5, scope: !4068, inlinedAt: !4066)
!4072 = !DILocation(line: 158, column: 10, scope: !4012)
!4073 = !DILocation(line: 158, column: 3, scope: !4012)
!4074 = !DILocation(line: 0, scope: !4012)
!4075 = !DILocation(line: 232, column: 1, scope: !4012)
!4076 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4077, file: !4077, line: 28, type: !4078, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !618, retainedNodes: !4114)
!4077 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!44, !4080, !46, !44}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2963, line: 7, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2965, line: 49, size: 1728, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4082, file: !2965, line: 51, baseType: !44, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4082, file: !2965, line: 54, baseType: !51, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4082, file: !2965, line: 55, baseType: !51, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4082, file: !2965, line: 56, baseType: !51, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4082, file: !2965, line: 57, baseType: !51, size: 64, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4082, file: !2965, line: 58, baseType: !51, size: 64, offset: 320)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4082, file: !2965, line: 59, baseType: !51, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4082, file: !2965, line: 60, baseType: !51, size: 64, offset: 448)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4082, file: !2965, line: 61, baseType: !51, size: 64, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4082, file: !2965, line: 64, baseType: !51, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4082, file: !2965, line: 65, baseType: !51, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4082, file: !2965, line: 66, baseType: !51, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4082, file: !2965, line: 68, baseType: !2980, size: 64, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4082, file: !2965, line: 70, baseType: !4098, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4082, file: !2965, line: 72, baseType: !44, size: 32, offset: 896)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4082, file: !2965, line: 73, baseType: !44, size: 32, offset: 928)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4082, file: !2965, line: 74, baseType: !48, size: 64, offset: 960)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4082, file: !2965, line: 77, baseType: !45, size: 16, offset: 1024)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4082, file: !2965, line: 78, baseType: !2989, size: 8, offset: 1040)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4082, file: !2965, line: 79, baseType: !2991, size: 8, offset: 1048)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4082, file: !2965, line: 81, baseType: !2995, size: 64, offset: 1088)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4082, file: !2965, line: 89, baseType: !2998, size: 64, offset: 1152)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4082, file: !2965, line: 91, baseType: !3000, size: 64, offset: 1216)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4082, file: !2965, line: 92, baseType: !3003, size: 64, offset: 1280)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4082, file: !2965, line: 93, baseType: !4098, size: 64, offset: 1344)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4082, file: !2965, line: 94, baseType: !53, size: 64, offset: 1408)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4082, file: !2965, line: 95, baseType: !54, size: 64, offset: 1472)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4082, file: !2965, line: 96, baseType: !44, size: 32, offset: 1536)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4082, file: !2965, line: 98, baseType: !3010, size: 160, offset: 1568)
!4114 = !{!4115, !4116, !4117, !4118}
!4115 = !DILocalVariable(name: "fp", arg: 1, scope: !4076, file: !4077, line: 28, type: !4080)
!4116 = !DILocalVariable(name: "offset", arg: 2, scope: !4076, file: !4077, line: 28, type: !46)
!4117 = !DILocalVariable(name: "whence", arg: 3, scope: !4076, file: !4077, line: 28, type: !44)
!4118 = !DILocalVariable(name: "pos", scope: !4119, file: !4077, line: 117, type: !46)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4077, line: 113, column: 5)
!4120 = distinct !DILexicalBlock(scope: !4076, file: !4077, line: 52, column: 7)
!4121 = !DILocation(line: 28, column: 15, scope: !4076)
!4122 = !DILocation(line: 28, column: 25, scope: !4076)
!4123 = !DILocation(line: 28, column: 37, scope: !4076)
!4124 = !DILocation(line: 52, column: 11, scope: !4120)
!4125 = !{!3877, !658, i64 16}
!4126 = !DILocation(line: 52, column: 31, scope: !4120)
!4127 = !{!3877, !658, i64 8}
!4128 = !DILocation(line: 52, column: 24, scope: !4120)
!4129 = !DILocation(line: 53, column: 7, scope: !4120)
!4130 = !DILocation(line: 53, column: 14, scope: !4120)
!4131 = !{!3877, !658, i64 40}
!4132 = !DILocation(line: 53, column: 35, scope: !4120)
!4133 = !{!3877, !658, i64 32}
!4134 = !DILocation(line: 53, column: 28, scope: !4120)
!4135 = !DILocation(line: 54, column: 7, scope: !4120)
!4136 = !DILocation(line: 54, column: 14, scope: !4120)
!4137 = !{!3877, !658, i64 72}
!4138 = !DILocation(line: 54, column: 28, scope: !4120)
!4139 = !DILocation(line: 52, column: 7, scope: !4076)
!4140 = !DILocation(line: 117, column: 26, scope: !4119)
!4141 = !DILocation(line: 117, column: 19, scope: !4119)
!4142 = !DILocation(line: 117, column: 13, scope: !4119)
!4143 = !DILocation(line: 118, column: 15, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4119, file: !4077, line: 118, column: 11)
!4145 = !DILocation(line: 118, column: 11, scope: !4119)
!4146 = !DILocation(line: 129, column: 11, scope: !4119)
!4147 = !DILocation(line: 129, column: 18, scope: !4119)
!4148 = !DILocation(line: 130, column: 11, scope: !4119)
!4149 = !DILocation(line: 130, column: 19, scope: !4119)
!4150 = !{!3877, !915, i64 144}
!4151 = !DILocation(line: 161, column: 7, scope: !4119)
!4152 = !DILocation(line: 163, column: 10, scope: !4076)
!4153 = !DILocation(line: 163, column: 3, scope: !4076)
!4154 = !DILocation(line: 0, scope: !4076)
!4155 = !DILocation(line: 164, column: 1, scope: !4076)
