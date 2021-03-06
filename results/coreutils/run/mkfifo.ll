; ModuleID = 'coreutils-8.30/src/mkfifo.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !40
@.str.16 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !46
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !51
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !55
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !62
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !69
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !100
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !119
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !126
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !133
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !121
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !135
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.99 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !141
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !599 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !604, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %0, metadata !603, metadata !DIExpression()), !dbg !627
  %3 = icmp eq i32 %0, 0, !dbg !628
  br i1 %3, label %9, label %4, !dbg !629

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !630, !tbaa !632
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !630
  %7 = load i8*, i8** @program_name, align 8, !dbg !630, !tbaa !632
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !630
  br label %66, !dbg !630

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !636
  %11 = load i8*, i8** @program_name, align 8, !dbg !636, !tbaa !632
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !636
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !637
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !632
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !637
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !638
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !632
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !638
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !643
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !632
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !643
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !644
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !632
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !644
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !645
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !632
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !645
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !646
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !632
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !646
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !647
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #10, !dbg !647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !623
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !648
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !612, metadata !DIExpression()) #10, !dbg !649
  br label %33, !dbg !650

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !612, metadata !DIExpression()) #10, !dbg !649
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #14, !dbg !650
  %37 = icmp eq i32 %36, 0, !dbg !650
  br i1 %37, label %43, label %38, !dbg !651

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !652
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !612, metadata !DIExpression()) #10, !dbg !649
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !653
  %41 = load i8*, i8** %40, align 8, !dbg !653, !tbaa !654
  %42 = icmp eq i8* %41, null, !dbg !656
  br i1 %42, label %43, label %33, !dbg !657, !llvm.loop !658

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !612, metadata !DIExpression()) #10, !dbg !649
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !612, metadata !DIExpression()) #10, !dbg !649
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !661
  %46 = load i8*, i8** %45, align 8, !dbg !661, !tbaa !663
  %47 = icmp eq i8* %46, null, !dbg !664
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !665
  call void @llvm.dbg.value(metadata i8* %48, metadata !611, metadata !DIExpression()) #10, !dbg !666
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !667
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !667
  %51 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !668
  call void @llvm.dbg.value(metadata i8* %51, metadata !619, metadata !DIExpression()) #10, !dbg !669
  %52 = icmp eq i8* %51, null, !dbg !670
  br i1 %52, label %59, label %53, !dbg !672

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !673
  %55 = icmp eq i32 %54, 0, !dbg !673
  br i1 %55, label %59, label %56, !dbg !674

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !675
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !675
  br label %59, !dbg !677

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !678
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !678
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !679
  %63 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !679
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !679
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #10, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #10, !dbg !680
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !681
  unreachable, !dbg !681
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !687, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8** %1, metadata !688, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* null, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 0, metadata !695, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i8* null, metadata !697, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i8 0, metadata !698, metadata !DIExpression()), !dbg !714
  %3 = load i8*, i8** %1, align 8, !dbg !715, !tbaa !632
  tail call void @set_program_name(i8* %3) #10, !dbg !716
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !717
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !718
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !719
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !720
  br label %8, !dbg !721

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !722

; <label>:10:                                     ; preds = %17, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* null, metadata !697, metadata !DIExpression()), !dbg !713
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !722
  call void @llvm.dbg.value(metadata i32 %11, metadata !696, metadata !DIExpression()), !dbg !723
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !721

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !724, !tbaa !632
  call void @llvm.dbg.value(metadata i8* %13, metadata !694, metadata !DIExpression()), !dbg !711
  br label %8, !dbg !727, !llvm.loop !728

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !730, !tbaa !632
  %16 = icmp eq i8* %15, null, !dbg !734
  br i1 %16, label %17, label %18, !dbg !735

; <label>:17:                                     ; preds = %14, %18
  br label %10, !dbg !711, !llvm.loop !728

; <label>:18:                                     ; preds = %14
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !736
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !738
  br label %17, !dbg !739

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !740
  unreachable, !dbg !740

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !632
  %23 = load i8*, i8** @Version, align 8, !dbg !741, !tbaa !632
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #10, !dbg !741
  tail call void @exit(i32 0) #15, !dbg !741
  unreachable, !dbg !741

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !742
  unreachable, !dbg !742

; <label>:25:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8* %9, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %9, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %9, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %9, metadata !694, metadata !DIExpression()), !dbg !711
  %26 = load i32, i32* @optind, align 4, !dbg !743, !tbaa !745
  %27 = icmp eq i32 %26, %0, !dbg !747
  br i1 %27, label %28, label %30, !dbg !748

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !749
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !751
  tail call void @usage(i32 1) #16, !dbg !752
  unreachable, !dbg !752

; <label>:30:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 438, metadata !689, metadata !DIExpression()), !dbg !753
  %31 = icmp ne i8* %9, null, !dbg !754
  br i1 %31, label %32, label %47, !dbg !755

; <label>:32:                                     ; preds = %30
  %33 = tail call %struct.mode_change* @mode_compile(i8* nonnull %9) #10, !dbg !756
  call void @llvm.dbg.value(metadata %struct.mode_change* %33, metadata !705, metadata !DIExpression()), !dbg !757
  %34 = icmp eq %struct.mode_change* %33, null, !dbg !758
  br i1 %34, label %35, label %37, !dbg !760

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !761
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36) #10, !dbg !761
  unreachable, !dbg !761

; <label>:37:                                     ; preds = %32
  %38 = tail call i32 @umask(i32 0) #10, !dbg !762
  call void @llvm.dbg.value(metadata i32 %38, metadata !702, metadata !DIExpression()), !dbg !763
  %39 = tail call i32 @umask(i32 %38) #10, !dbg !764
  %40 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %38, %struct.mode_change* nonnull %33, i32* null) #10, !dbg !765
  call void @llvm.dbg.value(metadata i32 %40, metadata !689, metadata !DIExpression()), !dbg !753
  %41 = bitcast %struct.mode_change* %33 to i8*, !dbg !766
  tail call void @free(i8* %41) #10, !dbg !767
  %42 = icmp ugt i32 %40, 511, !dbg !768
  br i1 %42, label %45, label %43, !dbg !770

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* @optind, align 4, !dbg !771, !tbaa !745
  br label %47, !dbg !770

; <label>:45:                                     ; preds = %37
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !774
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46) #10, !dbg !774
  unreachable, !dbg !774

; <label>:47:                                     ; preds = %43, %30
  %48 = phi i32 [ %26, %30 ], [ %44, %43 ], !dbg !771
  %49 = phi i32 [ 438, %30 ], [ %40, %43 ], !dbg !775
  call void @llvm.dbg.value(metadata i32 %49, metadata !689, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i32 0, metadata !695, metadata !DIExpression()), !dbg !712
  %50 = icmp slt i32 %48, %0, !dbg !776
  br i1 %50, label %51, label %90, !dbg !777

; <label>:51:                                     ; preds = %47, %85
  %52 = phi i32 [ %88, %85 ], [ %48, %47 ]
  %53 = phi i32 [ %86, %85 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !695, metadata !DIExpression()), !dbg !712
  %54 = sext i32 %52 to i64, !dbg !778
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !778
  %56 = load i8*, i8** %55, align 8, !dbg !778, !tbaa !632
  %57 = tail call i32 @mkfifo(i8* %56, i32 %49) #10, !dbg !781
  %58 = icmp eq i32 %57, 0, !dbg !782
  br i1 %58, label %68, label %59, !dbg !783

; <label>:59:                                     ; preds = %51
  %60 = tail call i32* @__errno_location() #17, !dbg !784
  %61 = load i32, i32* %60, align 4, !dbg !784, !tbaa !745
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !786
  %63 = load i32, i32* @optind, align 4, !dbg !787, !tbaa !745
  %64 = sext i32 %63 to i64, !dbg !787
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !787
  %66 = load i8*, i8** %65, align 8, !dbg !787, !tbaa !632
  %67 = tail call i8* @quotearg_style(i32 4, i8* %66) #10, !dbg !787
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %61, i8* %62, i8* %67) #10, !dbg !788
  call void @llvm.dbg.value(metadata i32 1, metadata !695, metadata !DIExpression()), !dbg !712
  br label %85, !dbg !789

; <label>:68:                                     ; preds = %51
  br i1 %31, label %69, label %85, !dbg !790

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* @optind, align 4, !dbg !792, !tbaa !745
  %71 = sext i32 %70 to i64, !dbg !793
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !793
  %73 = load i8*, i8** %72, align 8, !dbg !793, !tbaa !632
  %74 = tail call i32 @chmod(i8* %73, i32 %49) #10, !dbg !794
  %75 = icmp eq i32 %74, 0, !dbg !795
  br i1 %75, label %85, label %76, !dbg !796

; <label>:76:                                     ; preds = %69
  %77 = tail call i32* @__errno_location() #17, !dbg !797
  %78 = load i32, i32* %77, align 4, !dbg !797, !tbaa !745
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !799
  %80 = load i32, i32* @optind, align 4, !dbg !800, !tbaa !745
  %81 = sext i32 %80 to i64, !dbg !800
  %82 = getelementptr inbounds i8*, i8** %1, i64 %81, !dbg !800
  %83 = load i8*, i8** %82, align 8, !dbg !800, !tbaa !632
  %84 = tail call i8* @quotearg_style(i32 4, i8* %83) #10, !dbg !800
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %78, i8* %79, i8* %84) #10, !dbg !801
  call void @llvm.dbg.value(metadata i32 1, metadata !695, metadata !DIExpression()), !dbg !712
  br label %85, !dbg !802

; <label>:85:                                     ; preds = %69, %59, %76, %68
  %86 = phi i32 [ 1, %59 ], [ 1, %76 ], [ %53, %69 ], [ %53, %68 ], !dbg !775
  %87 = load i32, i32* @optind, align 4, !dbg !803, !tbaa !745
  %88 = add nsw i32 %87, 1, !dbg !803
  store i32 %88, i32* @optind, align 4, !dbg !803, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %86, metadata !695, metadata !DIExpression()), !dbg !712
  %89 = icmp slt i32 %88, %0, !dbg !776
  br i1 %89, label %51, label %90, !dbg !777, !llvm.loop !804

; <label>:90:                                     ; preds = %85, %47
  %91 = phi i32 [ 0, %47 ], [ %86, %85 ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %91, metadata !695, metadata !DIExpression()), !dbg !712
  ret i32 %91, !dbg !807
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
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !810, metadata !DIExpression()), !dbg !811
  store i8* %0, i8** @file_name, align 8, !dbg !812, !tbaa !632
  ret void, !dbg !813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !814 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !818, metadata !DIExpression()), !dbg !819
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !820, !tbaa !821
  ret void, !dbg !823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !824 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !632
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !830
  %3 = icmp eq i32 %2, 0, !dbg !831
  br i1 %3, label %22, label %4, !dbg !832

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !833, !tbaa !821, !range !834
  %6 = icmp eq i8 %5, 0, !dbg !833
  br i1 %6, label %11, label %7, !dbg !835

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !836
  %9 = load i32, i32* %8, align 4, !dbg !836, !tbaa !745
  %10 = icmp eq i32 %9, 32, !dbg !837
  br i1 %10, label %22, label %11, !dbg !838

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !839
  call void @llvm.dbg.value(metadata i8* %12, metadata !826, metadata !DIExpression()), !dbg !840
  %13 = load i8*, i8** @file_name, align 8, !dbg !841, !tbaa !632
  %14 = icmp eq i8* %13, null, !dbg !841
  %15 = tail call i32* @__errno_location() #17, !dbg !843
  %16 = load i32, i32* %15, align 4, !dbg !843, !tbaa !745
  br i1 %14, label %19, label %17, !dbg !844

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !845
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !846
  br label %20, !dbg !846

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !847
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !848, !tbaa !745
  tail call void @_exit(i32 %21) #15, !dbg !849
  unreachable, !dbg !849

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !850, !tbaa !632
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !852
  %25 = icmp eq i32 %24, 0, !dbg !853
  br i1 %25, label %28, label %26, !dbg !854

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !855, !tbaa !745
  tail call void @_exit(i32 %27) #15, !dbg !856
  unreachable, !dbg !856

; <label>:28:                                     ; preds = %22
  ret void, !dbg !857
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #7 !dbg !858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !870, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 0, metadata !872, metadata !DIExpression()), !dbg !895
  %2 = load i8, i8* %0, align 1, !dbg !896, !tbaa !897
  %3 = and i8 %2, -8, !dbg !898
  %4 = icmp eq i8 %3, 48, !dbg !898
  br i1 %4, label %5, label %39, !dbg !898

; <label>:5:                                      ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !899
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !901
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !901
  call void @llvm.dbg.value(metadata i8* %8, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %7, metadata !874, metadata !DIExpression()), !dbg !903
  %9 = shl i32 %7, 3, !dbg !904
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !905
  call void @llvm.dbg.value(metadata i8* %10, metadata !873, metadata !DIExpression()), !dbg !902
  %11 = sext i8 %6 to i32, !dbg !899
  %12 = add i32 %9, -48, !dbg !906
  %13 = add i32 %12, %11, !dbg !907
  call void @llvm.dbg.value(metadata i32 %13, metadata !874, metadata !DIExpression()), !dbg !903
  %14 = icmp ugt i32 %13, 4095, !dbg !908
  br i1 %14, label %151, label %15, !dbg !910

; <label>:15:                                     ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !911, !tbaa !897
  %17 = and i8 %16, -8, !dbg !912
  %18 = icmp eq i8 %17, 48, !dbg !912
  br i1 %18, label %5, label %19, !dbg !912, !llvm.loop !913

; <label>:19:                                     ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !916
  br i1 %20, label %21, label %151, !dbg !918

; <label>:21:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !877, metadata !DIExpression()), !dbg !919
  %22 = ptrtoint i8* %10 to i64, !dbg !920
  %23 = ptrtoint i8* %0 to i64, !dbg !920
  %24 = sub i64 %22, %23, !dbg !920
  %25 = icmp slt i64 %24, 5, !dbg !921
  %26 = and i32 %13, 3072, !dbg !922
  %27 = or i32 %26, 1023, !dbg !923
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !924
  call void @llvm.dbg.value(metadata i32 %28, metadata !878, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %13, metadata !926, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %28, metadata !931, metadata !DIExpression()) #10, !dbg !935
  %29 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !936
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !936
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !932, metadata !DIExpression()) #10, !dbg !937
  store i8 61, i8* %29, align 4, !dbg !938, !tbaa !939
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !941
  store i8 1, i8* %31, align 1, !dbg !942, !tbaa !943
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !944
  %33 = bitcast i8* %32 to i32*, !dbg !944
  store i32 4095, i32* %33, align 4, !dbg !945, !tbaa !946
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !947
  %35 = bitcast i8* %34 to i32*, !dbg !947
  store i32 %13, i32* %35, align 4, !dbg !948, !tbaa !949
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !950
  %37 = bitcast i8* %36 to i32*, !dbg !950
  store i32 %28, i32* %37, align 4, !dbg !951, !tbaa !952
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !953
  store i8 0, i8* %38, align 1, !dbg !954, !tbaa !943
  br label %151, !dbg !955

; <label>:39:                                     ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !956
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !959
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !959
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %41, metadata !873, metadata !DIExpression()), !dbg !902
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !961

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !962

; <label>:44:                                     ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !963
  call void @llvm.dbg.value(metadata i64 %46, metadata !879, metadata !DIExpression()), !dbg !960
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !964
  call void @llvm.dbg.value(metadata i8* %47, metadata !873, metadata !DIExpression()), !dbg !902
  %48 = load i8, i8* %47, align 1, !dbg !956, !tbaa !897
  br label %39, !dbg !965, !llvm.loop !966

; <label>:49:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !879, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %42, metadata !968, metadata !DIExpression()) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 16, metadata !973, metadata !DIExpression()) #10, !dbg !976
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !977
  br i1 %50, label %51, label %52, !dbg !979

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !980
  unreachable, !dbg !980

; <label>:52:                                     ; preds = %49
  %53 = shl i64 %42, 4, !dbg !981
  %54 = tail call noalias i8* @xmalloc(i64 %53) #10, !dbg !982
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !983
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !871, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %0, metadata !873, metadata !DIExpression()), !dbg !902
  br label %56, !dbg !985

; <label>:56:                                     ; preds = %146, %52
  %57 = phi i8* [ %0, %52 ], [ %147, %146 ], !dbg !986
  %58 = phi i64 [ 0, %52 ], [ %131, %146 ], !dbg !895
  call void @llvm.dbg.value(metadata i64 %58, metadata !872, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i8* %57, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !881, metadata !DIExpression()), !dbg !987
  br label %59, !dbg !988

; <label>:59:                                     ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !989
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !992
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  %62 = load i8, i8* %60, align 1, !dbg !994, !tbaa !897
  %63 = sext i8 %62 to i32, !dbg !994
  switch i32 %63, label %150 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !995

; <label>:64:                                     ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %60, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %61, metadata !881, metadata !DIExpression()), !dbg !987
  br label %72, !dbg !996

; <label>:65:                                     ; preds = %59
  br label %68, !dbg !997

; <label>:66:                                     ; preds = %59
  br label %68, !dbg !998

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !999

; <label>:68:                                     ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !992
  call void @llvm.dbg.value(metadata i32 %70, metadata !881, metadata !DIExpression()), !dbg !987
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %71, metadata !873, metadata !DIExpression()), !dbg !902
  br label %59, !dbg !1001, !llvm.loop !1002

; <label>:72:                                     ; preds = %145, %64
  %73 = phi i8 [ %62, %64 ], [ %144, %145 ], !dbg !1005
  %74 = phi i8* [ %60, %64 ], [ %126, %145 ], !dbg !1006
  %75 = phi i32 [ %61, %64 ], [ %127, %145 ], !dbg !987
  %76 = phi i64 [ %58, %64 ], [ %131, %145 ], !dbg !1006
  call void @llvm.dbg.value(metadata i64 %76, metadata !872, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %75, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %74, metadata !873, metadata !DIExpression()), !dbg !902
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %77, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8 %73, metadata !885, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8 3, metadata !889, metadata !DIExpression()), !dbg !1009
  %78 = load i8, i8* %77, align 1, !dbg !1010, !tbaa !897
  %79 = sext i8 %78 to i32, !dbg !1010
  switch i32 %79, label %104 [
    i32 48, label %80
    i32 49, label %80
    i32 50, label %80
    i32 51, label %80
    i32 52, label %80
    i32 53, label %80
    i32 54, label %80
    i32 55, label %80
    i32 117, label %98
    i32 103, label %100
    i32 111, label %102
  ], !dbg !1011

; <label>:80:                                     ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1012

; <label>:81:                                     ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1014
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1015
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1015
  call void @llvm.dbg.value(metadata i32 %84, metadata !891, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i8* %83, metadata !873, metadata !DIExpression()), !dbg !902
  %85 = shl i32 %84, 3, !dbg !1012
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %86, metadata !873, metadata !DIExpression()), !dbg !902
  %87 = sext i8 %82 to i32, !dbg !1014
  %88 = add i32 %85, -48, !dbg !1018
  %89 = add i32 %88, %87, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %89, metadata !891, metadata !DIExpression()), !dbg !1016
  %90 = icmp ugt i32 %89, 4095, !dbg !1020
  br i1 %90, label %150, label %91, !dbg !1022

; <label>:91:                                     ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1023, !tbaa !897
  %93 = and i8 %92, -8, !dbg !1024
  %94 = icmp eq i8 %93, 48, !dbg !1024
  br i1 %94, label %81, label %95, !dbg !1024, !llvm.loop !1025

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1028
  br i1 %96, label %97, label %150, !dbg !1030

; <label>:97:                                     ; preds = %95
  switch i8 %92, label %150 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1031

; <label>:98:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !887, metadata !DIExpression()), !dbg !1032
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %99, metadata !873, metadata !DIExpression()), !dbg !902
  br label %125, !dbg !1034

; <label>:100:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !887, metadata !DIExpression()), !dbg !1032
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %101, metadata !873, metadata !DIExpression()), !dbg !902
  br label %125, !dbg !1036

; <label>:102:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !887, metadata !DIExpression()), !dbg !1032
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %103, metadata !873, metadata !DIExpression()), !dbg !902
  br label %125, !dbg !1038

; <label>:104:                                    ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1039
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1042
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1043
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1045
  call void @llvm.dbg.value(metadata i8 %108, metadata !889, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %107, metadata !887, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i8* %106, metadata !873, metadata !DIExpression()), !dbg !902
  %109 = sext i8 %105 to i32, !dbg !1039
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1046

; <label>:110:                                    ; preds = %104
  %111 = or i32 %107, 292, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %111, metadata !887, metadata !DIExpression()), !dbg !1032
  br label %120, !dbg !1048

; <label>:112:                                    ; preds = %104
  %113 = or i32 %107, 146, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %113, metadata !887, metadata !DIExpression()), !dbg !1032
  br label %120, !dbg !1050

; <label>:114:                                    ; preds = %104
  %115 = or i32 %107, 73, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %115, metadata !887, metadata !DIExpression()), !dbg !1032
  br label %120, !dbg !1052

; <label>:116:                                    ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %117, metadata !887, metadata !DIExpression()), !dbg !1032
  br label %120, !dbg !1054

; <label>:118:                                    ; preds = %104
  %119 = or i32 %107, 512, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %119, metadata !887, metadata !DIExpression()), !dbg !1032
  br label %120, !dbg !1056

; <label>:120:                                    ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1043
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1057
  call void @llvm.dbg.value(metadata i8 %122, metadata !889, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %121, metadata !887, metadata !DIExpression()), !dbg !1032
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %123, metadata !873, metadata !DIExpression()), !dbg !902
  %124 = load i8, i8* %123, align 1, !dbg !1039, !tbaa !897
  br label %104, !dbg !1059, !llvm.loop !1060

; <label>:125:                                    ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1015
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !987
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1008
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1006
  call void @llvm.dbg.value(metadata i8 %130, metadata !889, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %129, metadata !888, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i32 %128, metadata !887, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %127, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  %131 = add i64 %76, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %131, metadata !872, metadata !DIExpression()), !dbg !895
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1064
  store i8 %73, i8* %132, align 4, !dbg !1065, !tbaa !939
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1066
  store i8 %130, i8* %133, align 1, !dbg !1067, !tbaa !943
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1068
  store i32 %127, i32* %134, align 4, !dbg !1069, !tbaa !946
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1070
  store i32 %128, i32* %135, align 4, !dbg !1071, !tbaa !949
  %136 = icmp eq i32 %129, 0, !dbg !1072
  br i1 %136, label %137, label %141, !dbg !1072

; <label>:137:                                    ; preds = %125
  %138 = icmp eq i32 %127, 0, !dbg !1073
  %139 = select i1 %138, i32 -1, i32 %127, !dbg !1073
  %140 = and i32 %139, %128, !dbg !1073
  br label %141, !dbg !1073

; <label>:141:                                    ; preds = %125, %137
  %142 = phi i32 [ %129, %125 ], [ %140, %137 ], !dbg !1072
  %143 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1074
  store i32 %142, i32* %143, align 4, !dbg !1075, !tbaa !952
  call void @llvm.dbg.value(metadata i64 %76, metadata !872, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %75, metadata !881, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %86, metadata !873, metadata !DIExpression()), !dbg !902
  %144 = load i8, i8* %126, align 1, !dbg !1076, !tbaa !897
  switch i8 %144, label %150 [
    i8 61, label %145
    i8 43, label %145
    i8 45, label %145
    i8 44, label %146
    i8 0, label %148
  ], !dbg !1077

; <label>:145:                                    ; preds = %141, %141, %141
  br label %72, !dbg !895

; <label>:146:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %128, metadata !887, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %131, metadata !872, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i8* %126, metadata !873, metadata !DIExpression()), !dbg !902
  %147 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %147, metadata !873, metadata !DIExpression()), !dbg !902
  br label %56, !dbg !1079, !llvm.loop !1080

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !1083
  store i8 0, i8* %149, align 1, !dbg !1086, !tbaa !943
  br label %151, !dbg !1087

; <label>:150:                                    ; preds = %59, %95, %97, %141, %81
  tail call void @free(i8* %54) #10, !dbg !1088
  br label %151, !dbg !1089

; <label>:151:                                    ; preds = %5, %21, %19, %150, %148
  %152 = phi %struct.mode_change* [ null, %150 ], [ %55, %148 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %152, !dbg !1090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #7 !dbg !1091 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1093, metadata !DIExpression()), !dbg !1132
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1133
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1133
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1094, metadata !DIExpression(DW_OP_deref)), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %0, metadata !1135, metadata !DIExpression()) #10, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1142, metadata !DIExpression()) #10, !dbg !1143
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1146
  %5 = icmp eq i32 %4, 0, !dbg !1147
  br i1 %5, label %6, label %19, !dbg !1148

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1149
  %8 = load i32, i32* %7, align 8, !dbg !1149, !tbaa !1150
  call void @llvm.dbg.value(metadata i32 %8, metadata !926, metadata !DIExpression()) #10, !dbg !1154
  call void @llvm.dbg.value(metadata i32 4095, metadata !931, metadata !DIExpression()) #10, !dbg !1156
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1157
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !932, metadata !DIExpression()) #10, !dbg !1158
  store i8 61, i8* %9, align 4, !dbg !1159, !tbaa !939
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1160
  store i8 1, i8* %11, align 1, !dbg !1161, !tbaa !943
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1162
  %13 = bitcast i8* %12 to i32*, !dbg !1162
  store i32 4095, i32* %13, align 4, !dbg !1163, !tbaa !946
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1164
  %15 = bitcast i8* %14 to i32*, !dbg !1164
  store i32 %8, i32* %15, align 4, !dbg !1165, !tbaa !949
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1166
  %17 = bitcast i8* %16 to i32*, !dbg !1166
  store i32 4095, i32* %17, align 4, !dbg !1167, !tbaa !952
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1168
  store i8 0, i8* %18, align 1, !dbg !1169, !tbaa !943
  br label %19, !dbg !1170

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1172
  ret %struct.mode_change* %20, !dbg !1172
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #7 !dbg !1173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1180, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i1 %1, metadata !1181, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %2, metadata !1182, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32* %4, metadata !1184, metadata !DIExpression()), !dbg !1200
  %6 = and i32 %0, 4095, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %6, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1183, metadata !DIExpression()), !dbg !1199
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1204
  %8 = load i8, i8* %7, align 1, !dbg !1204, !tbaa !943
  %9 = icmp eq i8 %8, 0, !dbg !1205
  br i1 %9, label %81, label %10, !dbg !1206

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1206

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %17, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %18, metadata !1186, metadata !DIExpression()), !dbg !1203
  %19 = sext i8 %15 to i32, !dbg !1207
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1208
  %21 = load i32, i32* %20, align 4, !dbg !1208, !tbaa !946
  call void @llvm.dbg.value(metadata i32 %21, metadata !1187, metadata !DIExpression()), !dbg !1209
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1210
  %23 = load i32, i32* %22, align 4, !dbg !1210, !tbaa !952
  %24 = xor i32 %23, -1, !dbg !1211
  %25 = and i32 %11, %24, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %25, metadata !1191, metadata !DIExpression()), !dbg !1213
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1214
  %27 = load i32, i32* %26, align 4, !dbg !1214, !tbaa !949
  call void @llvm.dbg.value(metadata i32 %27, metadata !1192, metadata !DIExpression()), !dbg !1215
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1216

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %29, metadata !1192, metadata !DIExpression()), !dbg !1215
  %30 = and i32 %29, 292, !dbg !1219
  %31 = icmp eq i32 %30, 0, !dbg !1220
  %32 = select i1 %31, i32 0, i32 292, !dbg !1220
  %33 = and i32 %29, 146, !dbg !1221
  %34 = icmp eq i32 %33, 0, !dbg !1222
  %35 = select i1 %34, i32 0, i32 146, !dbg !1222
  %36 = and i32 %29, 73, !dbg !1223
  %37 = icmp eq i32 %36, 0, !dbg !1224
  %38 = select i1 %37, i32 0, i32 73, !dbg !1224
  %39 = or i32 %35, %29, !dbg !1225
  %40 = or i32 %39, %32, !dbg !1226
  %41 = or i32 %40, %38, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %41, metadata !1192, metadata !DIExpression()), !dbg !1215
  br label %48, !dbg !1228

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1229
  %44 = or i32 %43, %13, !dbg !1231
  %45 = icmp eq i32 %44, 0, !dbg !1231
  %46 = or i32 %27, 73, !dbg !1232
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1233
  br label %48, !dbg !1233

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1234
  call void @llvm.dbg.value(metadata i32 %49, metadata !1192, metadata !DIExpression()), !dbg !1215
  %50 = icmp ne i32 %21, 0, !dbg !1235
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1235
  %52 = xor i32 %25, -1, !dbg !1236
  %53 = and i32 %51, %52, !dbg !1237
  %54 = and i32 %53, %49, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %54, metadata !1192, metadata !DIExpression()), !dbg !1215
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1239
  %56 = load i8, i8* %55, align 4, !dbg !1239, !tbaa !939
  %57 = sext i8 %56 to i32, !dbg !1240
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1241

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1242
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1243
  %61 = or i32 %60, %25, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %61, metadata !1193, metadata !DIExpression()), !dbg !1245
  %62 = and i32 %61, 4095, !dbg !1246
  %63 = xor i32 %62, 4095, !dbg !1246
  %64 = or i32 %63, %18, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %64, metadata !1186, metadata !DIExpression()), !dbg !1203
  %65 = and i32 %61, %17, !dbg !1248
  %66 = or i32 %54, %65, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %66, metadata !1185, metadata !DIExpression()), !dbg !1202
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %68, metadata !1186, metadata !DIExpression()), !dbg !1203
  %69 = or i32 %54, %17, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %69, metadata !1185, metadata !DIExpression()), !dbg !1202
  br label %74, !dbg !1252

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %71, metadata !1186, metadata !DIExpression()), !dbg !1203
  %72 = xor i32 %54, -1, !dbg !1254
  %73 = and i32 %17, %72, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %73, metadata !1185, metadata !DIExpression()), !dbg !1202
  br label %74, !dbg !1256

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1257
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1257
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1258
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %76, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %75, metadata !1186, metadata !DIExpression()), !dbg !1203
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1204
  %79 = load i8, i8* %78, align 1, !dbg !1204, !tbaa !943
  %80 = icmp eq i8 %79, 0, !dbg !1205
  br i1 %80, label %81, label %14, !dbg !1206, !llvm.loop !1259

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1203
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1202
  call void @llvm.dbg.value(metadata i32 %82, metadata !1186, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %83, metadata !1185, metadata !DIExpression()), !dbg !1202
  %84 = icmp eq i32* %4, null, !dbg !1261
  br i1 %84, label %86, label %85, !dbg !1263

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1264, !tbaa !745
  br label %86, !dbg !1265

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1266
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1269, metadata !DIExpression()), !dbg !1272
  %2 = icmp eq i8* %0, null, !dbg !1273
  br i1 %2, label %3, label %6, !dbg !1275

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1276, !tbaa !632
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1278
  tail call void @abort() #15, !dbg !1279
  unreachable, !dbg !1279

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1280
  call void @llvm.dbg.value(metadata i8* %7, metadata !1270, metadata !DIExpression()), !dbg !1281
  %8 = icmp eq i8* %7, null, !dbg !1282
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1283
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %10, metadata !1271, metadata !DIExpression()), !dbg !1285
  %11 = ptrtoint i8* %10 to i64, !dbg !1286
  %12 = ptrtoint i8* %0 to i64, !dbg !1286
  %13 = sub i64 %11, %12, !dbg !1286
  %14 = icmp sgt i64 %13, 6, !dbg !1288
  br i1 %14, label %15, label %24, !dbg !1289

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1290
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #14, !dbg !1291
  %18 = icmp eq i32 %17, 0, !dbg !1292
  br i1 %18, label %19, label %24, !dbg !1293

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1269, metadata !DIExpression()), !dbg !1272
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #14, !dbg !1294
  %21 = icmp eq i32 %20, 0, !dbg !1297
  br i1 %21, label %22, label %24, !dbg !1298

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %23, metadata !1269, metadata !DIExpression()), !dbg !1272
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1301, !tbaa !632
  br label %24, !dbg !1302

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1269, metadata !DIExpression()), !dbg !1272
  store i8* %25, i8** @program_name, align 8, !dbg !1303, !tbaa !632
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1304, !tbaa !632
  ret void, !dbg !1305
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1306 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1311, metadata !DIExpression()), !dbg !1314
  %2 = tail call i32* @__errno_location() #17, !dbg !1315
  %3 = load i32, i32* %2, align 4, !dbg !1315, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %3, metadata !1312, metadata !DIExpression()), !dbg !1316
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1317
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1317
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1317
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1318
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1313, metadata !DIExpression()), !dbg !1319
  store i32 %3, i32* %2, align 4, !dbg !1320, !tbaa !745
  ret %struct.quoting_options* %8, !dbg !1321
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1322 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1328, metadata !DIExpression()), !dbg !1329
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1330
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1330
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1331
  %5 = load i32, i32* %4, align 8, !dbg !1331, !tbaa !1332
  ret i32 %5, !dbg !1334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1335 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1339, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %1, metadata !1340, metadata !DIExpression()), !dbg !1342
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1343
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1343
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1344
  store i32 %1, i32* %5, align 8, !dbg !1345, !tbaa !1332
  ret void, !dbg !1346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1347 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1351, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %1, metadata !1352, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %2, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %1, metadata !1354, metadata !DIExpression()), !dbg !1363
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1364
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1364
  %6 = lshr i8 %1, 5, !dbg !1365
  %7 = zext i8 %6 to i64, !dbg !1365
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1366
  call void @llvm.dbg.value(metadata i32* %8, metadata !1356, metadata !DIExpression()), !dbg !1367
  %9 = and i8 %1, 31, !dbg !1368
  %10 = zext i8 %9 to i32, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %10, metadata !1358, metadata !DIExpression()), !dbg !1369
  %11 = load i32, i32* %8, align 4, !dbg !1370, !tbaa !745
  %12 = lshr i32 %11, %10, !dbg !1371
  %13 = and i32 %12, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %13, metadata !1359, metadata !DIExpression()), !dbg !1373
  %14 = and i32 %2, 1, !dbg !1374
  %15 = xor i32 %13, %14, !dbg !1375
  %16 = shl i32 %15, %10, !dbg !1376
  %17 = xor i32 %16, %11, !dbg !1377
  store i32 %17, i32* %8, align 4, !dbg !1377, !tbaa !745
  ret i32 %13, !dbg !1378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1379 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1383, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %1, metadata !1384, metadata !DIExpression()), !dbg !1387
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1388
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1383, metadata !DIExpression()), !dbg !1386
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1391
  %6 = load i32, i32* %5, align 4, !dbg !1391, !tbaa !1392
  call void @llvm.dbg.value(metadata i32 %6, metadata !1385, metadata !DIExpression()), !dbg !1393
  store i32 %1, i32* %5, align 4, !dbg !1394, !tbaa !1392
  ret i32 %6, !dbg !1395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1396 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1400, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8* %1, metadata !1401, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %2, metadata !1402, metadata !DIExpression()), !dbg !1405
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1406
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1400, metadata !DIExpression()), !dbg !1403
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1409
  store i32 10, i32* %6, align 8, !dbg !1410, !tbaa !1332
  %7 = icmp ne i8* %1, null, !dbg !1411
  %8 = icmp ne i8* %2, null, !dbg !1413
  %9 = and i1 %7, %8, !dbg !1414
  br i1 %9, label %11, label %10, !dbg !1414

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1415
  unreachable, !dbg !1415

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1416
  store i8* %1, i8** %12, align 8, !dbg !1417, !tbaa !1418
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1419
  store i8* %2, i8** %13, align 8, !dbg !1420, !tbaa !1421
  ret void, !dbg !1422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %1, metadata !1428, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %2, metadata !1429, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %3, metadata !1430, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1431, metadata !DIExpression()), !dbg !1439
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1440
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1432, metadata !DIExpression()), !dbg !1441
  %8 = tail call i32* @__errno_location() #17, !dbg !1442
  %9 = load i32, i32* %8, align 4, !dbg !1442, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %9, metadata !1433, metadata !DIExpression()), !dbg !1443
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1444
  %11 = load i32, i32* %10, align 8, !dbg !1444, !tbaa !1332
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1445
  %13 = load i32, i32* %12, align 4, !dbg !1445, !tbaa !1392
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1446
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1447
  %16 = load i8*, i8** %15, align 8, !dbg !1447, !tbaa !1418
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1448
  %18 = load i8*, i8** %17, align 8, !dbg !1448, !tbaa !1421
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %19, metadata !1434, metadata !DIExpression()), !dbg !1450
  store i32 %9, i32* %8, align 4, !dbg !1451, !tbaa !745
  ret i64 %19, !dbg !1452
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1453 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1459, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %1, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %2, metadata !1461, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %3, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %4, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %5, metadata !1464, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32* %6, metadata !1465, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8* %7, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %8, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 0, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* null, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1536
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1537
  %14 = icmp eq i64 %13, 1, !dbg !1538
  %15 = lshr i32 %5, 1, !dbg !1539
  %16 = trunc i32 %15 to i8, !dbg !1539
  %17 = and i8 %16, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i8 %17, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1542
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1543

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1533
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1534
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1535
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1536
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1544
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1540
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1541
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1542
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %39, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %38, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %37, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %36, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %35, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %34, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %33, metadata !1472, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %32, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %31, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8* %30, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %29, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %28, metadata !1463, metadata !DIExpression()), !dbg !1527
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
  ], !dbg !1546

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %36, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1527
  br label %93, !dbg !1547

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1527
  %43 = and i8 %36, 1, !dbg !1548
  %44 = icmp eq i8 %43, 0, !dbg !1548
  br i1 %44, label %45, label %93, !dbg !1547

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1550
  br i1 %46, label %93, label %47, !dbg !1553

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1550, !tbaa !897
  br label %93, !dbg !1550

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %49, metadata !1466, metadata !DIExpression()), !dbg !1530
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !1558
  call void @llvm.dbg.value(metadata i8* %50, metadata !1467, metadata !DIExpression()), !dbg !1531
  br label %51, !dbg !1559

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %52, metadata !1466, metadata !DIExpression()), !dbg !1530
  %54 = and i8 %36, 1, !dbg !1560
  %55 = icmp eq i8 %54, 0, !dbg !1560
  br i1 %55, label %56, label %71, !dbg !1562

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1532
  %57 = load i8, i8* %52, align 1, !dbg !1563, !tbaa !897
  %58 = icmp eq i8 %57, 0, !dbg !1566
  br i1 %58, label %71, label %59, !dbg !1566

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %62, metadata !1469, metadata !DIExpression()), !dbg !1532
  %63 = icmp ult i64 %62, %40, !dbg !1567
  br i1 %63, label %64, label %66, !dbg !1570

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1567
  store i8 %60, i8* %65, align 1, !dbg !1567, !tbaa !897
  br label %66, !dbg !1567

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1570
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %68, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %67, metadata !1469, metadata !DIExpression()), !dbg !1532
  %69 = load i8, i8* %68, align 1, !dbg !1563, !tbaa !897
  %70 = icmp eq i8 %69, 0, !dbg !1566
  br i1 %70, label %71, label %59, !dbg !1566, !llvm.loop !1572

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1532
  call void @llvm.dbg.value(metadata i64 %72, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %53, metadata !1471, metadata !DIExpression()), !dbg !1534
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %73, metadata !1472, metadata !DIExpression()), !dbg !1535
  br label %93, !dbg !1575

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1536
  br label %75, !dbg !1576

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %76, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1539
  br label %77, !dbg !1577

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1536
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %79, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %78, metadata !1473, metadata !DIExpression()), !dbg !1536
  %80 = and i8 %79, 1, !dbg !1578
  %81 = icmp eq i8 %80, 0, !dbg !1578
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1580
  br label %83, !dbg !1580

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1581
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %85, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %84, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  %86 = and i8 %85, 1, !dbg !1582
  %87 = icmp eq i8 %86, 0, !dbg !1582
  br i1 %87, label %88, label %93, !dbg !1584

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1585
  br i1 %89, label %93, label %90, !dbg !1588

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1585, !tbaa !897
  br label %93, !dbg !1585

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1475, metadata !DIExpression()), !dbg !1539
  br label %93, !dbg !1589

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1590
  unreachable, !dbg !1590

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1532
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ], !dbg !1544
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1544
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1544
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %101, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %99, metadata !1472, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %97, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1592
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
  br label %121, !dbg !1593

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1594
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1532
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1533
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1540
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1541
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1542
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %125, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %122, metadata !1468, metadata !DIExpression()), !dbg !1592
  %130 = icmp eq i64 %125, -1, !dbg !1595
  br i1 %130, label %131, label %135, !dbg !1596

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1597
  %133 = load i8, i8* %132, align 1, !dbg !1597, !tbaa !897
  %134 = icmp eq i8 %133, 0, !dbg !1598
  br i1 %134, label %617, label %137, !dbg !1599

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1600
  br i1 %136, label %617, label %137, !dbg !1599

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1484, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1486, metadata !DIExpression()), !dbg !1603
  br i1 %107, label %138, label %153, !dbg !1604

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1606
  %140 = and i1 %108, %130, !dbg !1607
  br i1 %140, label %141, label %143, !dbg !1607

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %142, metadata !1462, metadata !DIExpression()), !dbg !1526
  br label %143, !dbg !1609

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1462, metadata !DIExpression()), !dbg !1526
  %145 = icmp ugt i64 %139, %144, !dbg !1610
  br i1 %145, label %153, label %146, !dbg !1611

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1612
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1613
  %149 = icmp ne i32 %148, 0, !dbg !1614
  %150 = or i1 %149, %110, !dbg !1615
  %151 = xor i1 %149, true, !dbg !1615
  %152 = zext i1 %151 to i8, !dbg !1615
  br i1 %150, label %153, label %661, !dbg !1615

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %155, metadata !1484, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %154, metadata !1462, metadata !DIExpression()), !dbg !1526
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1617
  %157 = load i8, i8* %156, align 1, !dbg !1617, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %157, metadata !1479, metadata !DIExpression()), !dbg !1618
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
  ], !dbg !1619

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1620

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1621

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1485, metadata !DIExpression()), !dbg !1602
  %161 = and i8 %126, 1, !dbg !1625
  %162 = icmp eq i8 %161, 0, !dbg !1625
  %163 = and i1 %114, %162, !dbg !1625
  br i1 %163, label %164, label %180, !dbg !1625

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1627
  br i1 %165, label %166, label %168, !dbg !1631

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1627
  store i8 39, i8* %167, align 1, !dbg !1627, !tbaa !897
  br label %168, !dbg !1627

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %169, metadata !1469, metadata !DIExpression()), !dbg !1532
  %170 = icmp ult i64 %169, %129, !dbg !1632
  br i1 %170, label %171, label %173, !dbg !1635

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1632
  store i8 36, i8* %172, align 1, !dbg !1632, !tbaa !897
  br label %173, !dbg !1632

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %174, metadata !1469, metadata !DIExpression()), !dbg !1532
  %175 = icmp ult i64 %174, %129, !dbg !1636
  br i1 %175, label %176, label %178, !dbg !1639

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1636
  store i8 39, i8* %177, align 1, !dbg !1636, !tbaa !897
  br label %178, !dbg !1636

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %179, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %180, !dbg !1640

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1591
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %182, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %181, metadata !1469, metadata !DIExpression()), !dbg !1532
  %183 = icmp ult i64 %181, %129, !dbg !1641
  br i1 %183, label %184, label %186, !dbg !1644

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1641
  store i8 92, i8* %185, align 1, !dbg !1641, !tbaa !897
  br label %186, !dbg !1641

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %187, metadata !1469, metadata !DIExpression()), !dbg !1532
  br i1 %104, label %188, label %478, !dbg !1645

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1647
  %190 = icmp ult i64 %189, %154, !dbg !1648
  br i1 %190, label %191, label %467, !dbg !1649

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1650
  %193 = load i8, i8* %192, align 1, !dbg !1650, !tbaa !897
  %194 = add i8 %193, -48, !dbg !1651
  %195 = icmp ult i8 %194, 10, !dbg !1651
  br i1 %195, label %196, label %467, !dbg !1651

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1652
  br i1 %197, label %198, label %200, !dbg !1656

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1652
  store i8 48, i8* %199, align 1, !dbg !1652, !tbaa !897
  br label %200, !dbg !1652

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %201, metadata !1469, metadata !DIExpression()), !dbg !1532
  %202 = icmp ult i64 %201, %129, !dbg !1657
  br i1 %202, label %203, label %205, !dbg !1660

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1657
  store i8 48, i8* %204, align 1, !dbg !1657, !tbaa !897
  br label %205, !dbg !1657

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %206, metadata !1469, metadata !DIExpression()), !dbg !1532
  br label %467, !dbg !1661

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1662

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1663

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1664

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1666

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1668
  %213 = icmp ult i64 %212, %154, !dbg !1669
  br i1 %213, label %214, label %467, !dbg !1670

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1671
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1672
  %217 = load i8, i8* %216, align 1, !dbg !1672, !tbaa !897
  %218 = icmp eq i8 %217, 63, !dbg !1673
  br i1 %218, label %219, label %467, !dbg !1674

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1675
  %221 = load i8, i8* %220, align 1, !dbg !1675, !tbaa !897
  %222 = sext i8 %221 to i32, !dbg !1675
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
  ], !dbg !1676

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1677

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %212, metadata !1468, metadata !DIExpression()), !dbg !1592
  %225 = icmp ult i64 %123, %129, !dbg !1679
  br i1 %225, label %226, label %228, !dbg !1682

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1679
  store i8 63, i8* %227, align 1, !dbg !1679, !tbaa !897
  br label %228, !dbg !1679

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %229, metadata !1469, metadata !DIExpression()), !dbg !1532
  %230 = icmp ult i64 %229, %129, !dbg !1683
  br i1 %230, label %231, label %233, !dbg !1686

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1683
  store i8 34, i8* %232, align 1, !dbg !1683, !tbaa !897
  br label %233, !dbg !1683

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %234, metadata !1469, metadata !DIExpression()), !dbg !1532
  %235 = icmp ult i64 %234, %129, !dbg !1687
  br i1 %235, label %236, label %238, !dbg !1690

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1687
  store i8 34, i8* %237, align 1, !dbg !1687, !tbaa !897
  br label %238, !dbg !1687

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %239, metadata !1469, metadata !DIExpression()), !dbg !1532
  %240 = icmp ult i64 %239, %129, !dbg !1691
  br i1 %240, label %241, label %243, !dbg !1694

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1691
  store i8 63, i8* %242, align 1, !dbg !1691, !tbaa !897
  br label %243, !dbg !1691

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %244, metadata !1469, metadata !DIExpression()), !dbg !1532
  br label %467, !dbg !1695

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1483, metadata !DIExpression()), !dbg !1696
  br label %255, !dbg !1697

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1483, metadata !DIExpression()), !dbg !1696
  br label %255, !dbg !1698

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1483, metadata !DIExpression()), !dbg !1696
  br label %253, !dbg !1699

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1483, metadata !DIExpression()), !dbg !1696
  br label %253, !dbg !1700

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1483, metadata !DIExpression()), !dbg !1696
  br label %255, !dbg !1701

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1483, metadata !DIExpression()), !dbg !1696
  br i1 %114, label %251, label %252, !dbg !1702

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1703

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1706

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8 %254, metadata !1483, metadata !DIExpression()), !dbg !1696
  br i1 %113, label %255, label %661, !dbg !1709

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8 %256, metadata !1483, metadata !DIExpression()), !dbg !1696
  br i1 %103, label %524, label %478, !dbg !1711

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1712
  br i1 %258, label %259, label %264, !dbg !1714

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1715, !tbaa !897
  %261 = icmp ne i8 %260, 0, !dbg !1716
  %262 = icmp ne i64 %122, 0, !dbg !1717
  %263 = or i1 %262, %261, !dbg !1719
  br i1 %263, label %467, label %270, !dbg !1719

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1720
  %266 = icmp ne i64 %122, 0, !dbg !1717
  %267 = or i1 %266, %265, !dbg !1714
  br i1 %267, label %467, label %270, !dbg !1714

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1717
  br i1 %269, label %270, label %467, !dbg !1721

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1486, metadata !DIExpression()), !dbg !1603
  br label %271, !dbg !1722

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8 %272, metadata !1486, metadata !DIExpression()), !dbg !1603
  br i1 %113, label %467, label %661, !dbg !1723

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 1, metadata !1486, metadata !DIExpression()), !dbg !1603
  br i1 %114, label %274, label %467, !dbg !1725

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1726

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1729
  %277 = icmp ne i64 %124, 0, !dbg !1731
  %278 = or i1 %277, %276, !dbg !1732
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1732
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %280, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %279, metadata !1470, metadata !DIExpression()), !dbg !1533
  %281 = icmp ult i64 %123, %280, !dbg !1733
  br i1 %281, label %282, label %284, !dbg !1736

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1733
  store i8 39, i8* %283, align 1, !dbg !1733, !tbaa !897
  br label %284, !dbg !1733

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %285, metadata !1469, metadata !DIExpression()), !dbg !1532
  %286 = icmp ult i64 %285, %280, !dbg !1737
  br i1 %286, label %287, label %289, !dbg !1740

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1737
  store i8 92, i8* %288, align 1, !dbg !1737, !tbaa !897
  br label %289, !dbg !1737

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %290, metadata !1469, metadata !DIExpression()), !dbg !1532
  %291 = icmp ult i64 %290, %280, !dbg !1741
  br i1 %291, label %292, label %294, !dbg !1744

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1741
  store i8 39, i8* %293, align 1, !dbg !1741, !tbaa !897
  br label %294, !dbg !1741

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %295, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %467, !dbg !1745

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1746

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1487, metadata !DIExpression()), !dbg !1747
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1748
  %299 = load i16*, i16** %298, align 8, !dbg !1748, !tbaa !632
  %300 = zext i8 %157 to i64, !dbg !1748
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1748
  %302 = load i16, i16* %301, align 2, !dbg !1748, !tbaa !1750
  %303 = lshr i16 %302, 14, !dbg !1752
  %304 = trunc i16 %303 to i8, !dbg !1752
  %305 = and i8 %304, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i8 %305, metadata !1490, metadata !DIExpression()), !dbg !1753
  br label %359, !dbg !1754

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1755
  store i64 0, i64* %10, align 8, !dbg !1756
  call void @llvm.dbg.value(metadata i64 0, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1490, metadata !DIExpression()), !dbg !1753
  %307 = icmp eq i64 %154, -1, !dbg !1757
  br i1 %307, label %308, label %310, !dbg !1759

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %309, metadata !1462, metadata !DIExpression()), !dbg !1526
  br label %310, !dbg !1761

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1762
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  br label %312, !dbg !1763

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1764
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %314, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1766
  %315 = add i64 %313, %122, !dbg !1767
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1768
  %317 = sub i64 %311, %315, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1491, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  call void @llvm.dbg.value(metadata i32* %12, metadata !1509, metadata !DIExpression(DW_OP_deref)), !dbg !1771
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %318, metadata !1512, metadata !DIExpression()), !dbg !1773
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1774

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  %320 = icmp ugt i64 %311, %315, !dbg !1775
  br i1 %320, label %321, label %344, !dbg !1777

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1487, metadata !DIExpression()), !dbg !1747
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1778
  %325 = load i8, i8* %324, align 1, !dbg !1778, !tbaa !897
  %326 = icmp eq i8 %325, 0, !dbg !1777
  br i1 %326, label %344, label %327, !dbg !1779

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %328, metadata !1487, metadata !DIExpression()), !dbg !1747
  %329 = add i64 %328, %122, !dbg !1781
  %330 = icmp ult i64 %329, %311, !dbg !1775
  br i1 %330, label %321, label %344, !dbg !1777, !llvm.loop !1782

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1783
  %333 = and i1 %116, %332, !dbg !1786
  call void @llvm.dbg.value(metadata i64 1, metadata !1513, metadata !DIExpression()), !dbg !1787
  br i1 %333, label %334, label %347, !dbg !1786

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1513, metadata !DIExpression()), !dbg !1787
  %336 = add i64 %335, %315, !dbg !1788
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1789
  %338 = load i8, i8* %337, align 1, !dbg !1789, !tbaa !897
  %339 = sext i8 %338 to i32, !dbg !1789
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1790

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %341, metadata !1513, metadata !DIExpression()), !dbg !1787
  %342 = icmp ult i64 %341, %318, !dbg !1783
  br i1 %342, label %334, label %347, !dbg !1792, !llvm.loop !1793

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %314, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %313, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %314, metadata !1490, metadata !DIExpression()), !dbg !1753
  br label %344, !dbg !1795

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %352, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1795
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1796, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %348, metadata !1509, metadata !DIExpression()), !dbg !1771
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1798
  %350 = icmp eq i32 %349, 0, !dbg !1798
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1799
  call void @llvm.dbg.value(metadata i8 %351, metadata !1490, metadata !DIExpression()), !dbg !1753
  %352 = add i64 %318, %313, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %352, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %351, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %352, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1795
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1491, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1801
  %354 = icmp eq i32 %353, 0, !dbg !1802
  br i1 %354, label %312, label %355, !dbg !1803, !llvm.loop !1804

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1806
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %94, metadata !1463, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %351, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %352, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1795
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1806
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1807
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1808
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1808
  call void @llvm.dbg.value(metadata i8 %362, metadata !1490, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %361, metadata !1487, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %360, metadata !1462, metadata !DIExpression()), !dbg !1526
  %363 = and i8 %362, 1, !dbg !1809
  %364 = icmp ne i8 %363, 0, !dbg !1809
  call void @llvm.dbg.value(metadata i8 %363, metadata !1486, metadata !DIExpression()), !dbg !1603
  %365 = icmp ult i64 %361, 2, !dbg !1810
  %366 = or i1 %364, %115, !dbg !1811
  %367 = and i1 %365, %366, !dbg !1812
  br i1 %367, label %467, label %368, !dbg !1812

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %369, metadata !1520, metadata !DIExpression()), !dbg !1814
  br label %370, !dbg !1815

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1816
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1820
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1540
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1816
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1822
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %376, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %375, metadata !1484, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 %374, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %373, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %372, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %371, metadata !1468, metadata !DIExpression()), !dbg !1592
  br i1 %366, label %423, label %377, !dbg !1826

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1827

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1485, metadata !DIExpression()), !dbg !1602
  %379 = and i8 %373, 1, !dbg !1830
  %380 = icmp eq i8 %379, 0, !dbg !1830
  %381 = and i1 %114, %380, !dbg !1830
  br i1 %381, label %382, label %398, !dbg !1830

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1832
  br i1 %383, label %384, label %386, !dbg !1836

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1832
  store i8 39, i8* %385, align 1, !dbg !1832, !tbaa !897
  br label %386, !dbg !1832

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %387, metadata !1469, metadata !DIExpression()), !dbg !1532
  %388 = icmp ult i64 %387, %129, !dbg !1837
  br i1 %388, label %389, label %391, !dbg !1840

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1837
  store i8 36, i8* %390, align 1, !dbg !1837, !tbaa !897
  br label %391, !dbg !1837

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %392, metadata !1469, metadata !DIExpression()), !dbg !1532
  %393 = icmp ult i64 %392, %129, !dbg !1841
  br i1 %393, label %394, label %396, !dbg !1844

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1841
  store i8 39, i8* %395, align 1, !dbg !1841, !tbaa !897
  br label %396, !dbg !1841

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %397, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %398, !dbg !1845

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1591
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %400, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %399, metadata !1469, metadata !DIExpression()), !dbg !1532
  %401 = icmp ult i64 %399, %129, !dbg !1846
  br i1 %401, label %402, label %404, !dbg !1849

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1846
  store i8 92, i8* %403, align 1, !dbg !1846, !tbaa !897
  br label %404, !dbg !1846

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %405, metadata !1469, metadata !DIExpression()), !dbg !1532
  %406 = icmp ult i64 %405, %129, !dbg !1850
  br i1 %406, label %407, label %411, !dbg !1853

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1850
  %409 = or i8 %408, 48, !dbg !1850
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1850
  store i8 %409, i8* %410, align 1, !dbg !1850, !tbaa !897
  br label %411, !dbg !1850

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %412, metadata !1469, metadata !DIExpression()), !dbg !1532
  %413 = icmp ult i64 %412, %129, !dbg !1854
  br i1 %413, label %414, label %419, !dbg !1857

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1854
  %416 = and i8 %415, 7, !dbg !1854
  %417 = or i8 %416, 48, !dbg !1854
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1854
  store i8 %417, i8* %418, align 1, !dbg !1854, !tbaa !897
  br label %419, !dbg !1854

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %420, metadata !1469, metadata !DIExpression()), !dbg !1532
  %421 = and i8 %374, 7, !dbg !1858
  %422 = or i8 %421, 48, !dbg !1859
  call void @llvm.dbg.value(metadata i8 %422, metadata !1479, metadata !DIExpression()), !dbg !1618
  br label %432, !dbg !1860

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1861
  %425 = icmp eq i8 %424, 0, !dbg !1861
  br i1 %425, label %432, label %426, !dbg !1862

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1863
  br i1 %427, label %428, label %430, !dbg !1866

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1863
  store i8 92, i8* %429, align 1, !dbg !1863, !tbaa !897
  br label %430, !dbg !1863

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %431, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1484, metadata !DIExpression()), !dbg !1601
  br label %432, !dbg !1867

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1868
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1540
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1869
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1870
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1872
  call void @llvm.dbg.value(metadata i8 %437, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %436, metadata !1484, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 %435, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %434, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %433, metadata !1469, metadata !DIExpression()), !dbg !1532
  %438 = add i64 %371, 1, !dbg !1873
  %439 = icmp ugt i64 %369, %438, !dbg !1875
  br i1 %439, label %440, label %562, !dbg !1876

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1877
  %442 = icmp ne i8 %441, 0, !dbg !1877
  %443 = and i8 %437, 1, !dbg !1877
  %444 = icmp eq i8 %443, 0, !dbg !1877
  %445 = and i1 %442, %444, !dbg !1877
  br i1 %445, label %446, label %457, !dbg !1877

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1880
  br i1 %447, label %448, label %450, !dbg !1884

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1880
  store i8 39, i8* %449, align 1, !dbg !1880, !tbaa !897
  br label %450, !dbg !1880

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %451, metadata !1469, metadata !DIExpression()), !dbg !1532
  %452 = icmp ult i64 %451, %129, !dbg !1885
  br i1 %452, label %453, label %455, !dbg !1888

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1885
  store i8 39, i8* %454, align 1, !dbg !1885, !tbaa !897
  br label %455, !dbg !1885

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %456, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %457, !dbg !1889

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1890
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %459, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %458, metadata !1469, metadata !DIExpression()), !dbg !1532
  %460 = icmp ult i64 %458, %129, !dbg !1891
  br i1 %460, label %461, label %463, !dbg !1893

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1891
  store i8 %435, i8* %462, align 1, !dbg !1891, !tbaa !897
  br label %463, !dbg !1891

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %464, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %438, metadata !1468, metadata !DIExpression()), !dbg !1592
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1894
  %466 = load i8, i8* %465, align 1, !dbg !1894, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %466, metadata !1479, metadata !DIExpression()), !dbg !1618
  br label %370, !dbg !1895, !llvm.loop !1896

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1899
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1591
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1533
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1900
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1591
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1591
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1616
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1616
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1616
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %476, metadata !1486, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %475, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %155, metadata !1484, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 %474, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %473, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %472, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %471, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %470, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %469, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %468, metadata !1468, metadata !DIExpression()), !dbg !1592
  br i1 %105, label %489, label %478, !dbg !1901

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
  br i1 %112, label %490, label %512, !dbg !1903

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1904

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
  %501 = lshr i8 %494, 5, !dbg !1905
  %502 = zext i8 %501 to i64, !dbg !1905
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1906
  %504 = load i32, i32* %503, align 4, !dbg !1906, !tbaa !745
  %505 = and i8 %494, 31, !dbg !1907
  %506 = zext i8 %505 to i32, !dbg !1907
  %507 = shl i32 1, %506, !dbg !1908
  %508 = and i32 %504, %507, !dbg !1908
  %509 = icmp eq i32 %508, 0, !dbg !1908
  %510 = icmp eq i8 %155, 0, !dbg !1909
  %511 = and i1 %510, %509, !dbg !1910
  br i1 %511, label %562, label %524, !dbg !1910

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
  %523 = icmp eq i8 %155, 0, !dbg !1909
  br i1 %523, label %562, label %524, !dbg !1911

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1912
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1591
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1533
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1900
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1540
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1541
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1913
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1616
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %532, metadata !1486, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %531, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %530, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %529, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %528, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %527, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %526, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %525, metadata !1468, metadata !DIExpression()), !dbg !1592
  br i1 %110, label %534, label %661, !dbg !1916

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1485, metadata !DIExpression()), !dbg !1602
  %535 = and i8 %529, 1, !dbg !1918
  %536 = icmp eq i8 %535, 0, !dbg !1918
  %537 = and i1 %114, %536, !dbg !1918
  br i1 %537, label %538, label %554, !dbg !1918

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1920
  br i1 %539, label %540, label %542, !dbg !1924

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1920
  store i8 39, i8* %541, align 1, !dbg !1920, !tbaa !897
  br label %542, !dbg !1920

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %543, metadata !1469, metadata !DIExpression()), !dbg !1532
  %544 = icmp ult i64 %543, %533, !dbg !1925
  br i1 %544, label %545, label %547, !dbg !1928

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1925
  store i8 36, i8* %546, align 1, !dbg !1925, !tbaa !897
  br label %547, !dbg !1925

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %548, metadata !1469, metadata !DIExpression()), !dbg !1532
  %549 = icmp ult i64 %548, %533, !dbg !1929
  br i1 %549, label %550, label %552, !dbg !1932

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1929
  store i8 39, i8* %551, align 1, !dbg !1929, !tbaa !897
  br label %552, !dbg !1929

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %553, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %554, !dbg !1933

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1890
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %556, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %555, metadata !1469, metadata !DIExpression()), !dbg !1532
  %557 = icmp ult i64 %555, %533, !dbg !1934
  br i1 %557, label %558, label %560, !dbg !1937

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1934
  store i8 92, i8* %559, align 1, !dbg !1934, !tbaa !897
  br label %560, !dbg !1934

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %561, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %572, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %571, metadata !1486, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %570, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %569, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %568, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %567, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %566, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %565, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %564, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %563, metadata !1468, metadata !DIExpression()), !dbg !1592
  br label %589, !dbg !1938

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1912
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1591
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1533
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1900
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1540
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1541
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1941
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1616
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1616
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %571, metadata !1486, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %570, metadata !1485, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %569, metadata !1479, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 %568, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %567, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %566, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %565, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %564, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %563, metadata !1468, metadata !DIExpression()), !dbg !1592
  %573 = and i8 %567, 1, !dbg !1938
  %574 = icmp ne i8 %573, 0, !dbg !1938
  %575 = and i8 %570, 1, !dbg !1938
  %576 = icmp eq i8 %575, 0, !dbg !1938
  %577 = and i1 %574, %576, !dbg !1938
  br i1 %577, label %578, label %589, !dbg !1938

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1942
  br i1 %579, label %580, label %582, !dbg !1946

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1942
  store i8 39, i8* %581, align 1, !dbg !1942, !tbaa !897
  br label %582, !dbg !1942

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %583, metadata !1469, metadata !DIExpression()), !dbg !1532
  %584 = icmp ult i64 %583, %572, !dbg !1947
  br i1 %584, label %585, label %587, !dbg !1950

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1947
  store i8 39, i8* %586, align 1, !dbg !1947, !tbaa !897
  br label %587, !dbg !1947

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %588, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1540
  br label %589, !dbg !1951

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1890
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8 %598, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %597, metadata !1469, metadata !DIExpression()), !dbg !1532
  %599 = icmp ult i64 %597, %590, !dbg !1952
  br i1 %599, label %600, label %602, !dbg !1955

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1952
  store i8 %592, i8* %601, align 1, !dbg !1952, !tbaa !897
  br label %602, !dbg !1952

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %603, metadata !1469, metadata !DIExpression()), !dbg !1532
  %604 = and i8 %591, 1, !dbg !1956
  %605 = icmp eq i8 %604, 0, !dbg !1956
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %606, metadata !1478, metadata !DIExpression()), !dbg !1542
  br label %607, !dbg !1959

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1912
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1591
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1533
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1900
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1540
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1591
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1542
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8 %614, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %613, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %612, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %611, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %610, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %609, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %608, metadata !1468, metadata !DIExpression()), !dbg !1592
  %616 = add i64 %608, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %616, metadata !1468, metadata !DIExpression()), !dbg !1592
  br label %121, !dbg !1961, !llvm.loop !1962

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %125, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %125, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %126, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %127, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %128, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  %619 = icmp eq i64 %123, 0, !dbg !1964
  %620 = and i1 %114, %619, !dbg !1966
  %621 = xor i1 %620, true, !dbg !1966
  %622 = or i1 %110, %621, !dbg !1966
  br i1 %622, label %623, label %661, !dbg !1966

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1967
  %625 = xor i1 %624, true, !dbg !1967
  %626 = and i8 %127, 1, !dbg !1969
  %627 = icmp eq i8 %626, 0, !dbg !1969
  %628 = or i1 %627, %625, !dbg !1967
  br i1 %628, label %638, label %629, !dbg !1967

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1970
  %631 = icmp eq i8 %630, 0, !dbg !1970
  br i1 %631, label %634, label %632, !dbg !1973

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %95, metadata !1466, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %96, metadata !1467, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %124, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %125, metadata !1462, metadata !DIExpression()), !dbg !1526
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1974
  br label %671, !dbg !1975

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1976
  %636 = icmp ne i64 %124, 0, !dbg !1978
  %637 = and i1 %636, %635, !dbg !1979
  br i1 %637, label %27, label %638, !dbg !1979

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %129, metadata !1460, metadata !DIExpression()), !dbg !1524
  %639 = icmp ne i8* %98, null, !dbg !1980
  %640 = and i1 %639, %110, !dbg !1982
  br i1 %640, label %641, label %656, !dbg !1982

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %123, metadata !1469, metadata !DIExpression()), !dbg !1532
  %642 = load i8, i8* %98, align 1, !dbg !1983, !tbaa !897
  %643 = icmp eq i8 %642, 0, !dbg !1986
  br i1 %643, label %656, label %644, !dbg !1986

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %647, metadata !1469, metadata !DIExpression()), !dbg !1532
  %648 = icmp ult i64 %647, %129, !dbg !1987
  br i1 %648, label %649, label %651, !dbg !1990

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1987
  store i8 %645, i8* %650, align 1, !dbg !1987, !tbaa !897
  br label %651, !dbg !1987

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1990
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %653, metadata !1471, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %652, metadata !1469, metadata !DIExpression()), !dbg !1532
  %654 = load i8, i8* %653, align 1, !dbg !1983, !tbaa !897
  %655 = icmp eq i8 %654, 0, !dbg !1986
  br i1 %655, label %656, label %644, !dbg !1986, !llvm.loop !1992

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1532
  call void @llvm.dbg.value(metadata i64 %657, metadata !1469, metadata !DIExpression()), !dbg !1532
  %658 = icmp ult i64 %657, %129, !dbg !1994
  br i1 %658, label %659, label %671, !dbg !1996

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1997
  store i8 0, i8* %660, align 1, !dbg !1998, !tbaa !897
  br label %671, !dbg !1997

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1460, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %663, metadata !1462, metadata !DIExpression()), !dbg !1526
  %665 = icmp ne i32 %662, 2, !dbg !1999
  %666 = icmp eq i8 %102, 0, !dbg !2001
  %667 = or i1 %665, %666, !dbg !2002
  call void @llvm.dbg.value(metadata i32 4, metadata !1463, metadata !DIExpression()), !dbg !1527
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %668, metadata !1463, metadata !DIExpression()), !dbg !1527
  %669 = and i32 %5, -3, !dbg !2003
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2004
  br label %671, !dbg !2005

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2006
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %1, metadata !2012, metadata !DIExpression()), !dbg !2016
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2017
  call void @llvm.dbg.value(metadata i8* %3, metadata !2013, metadata !DIExpression()), !dbg !2018
  %4 = icmp eq i8* %3, %0, !dbg !2019
  br i1 %4, label %5, label %71, !dbg !2021

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8* %6, metadata !2024, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* null, metadata !2030, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 85, metadata !2031, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 84, metadata !2032, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 70, metadata !2033, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 45, metadata !2034, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 56, metadata !2035, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2052
  %7 = load i8, i8* %6, align 1, !dbg !2053, !tbaa !897
  %8 = and i8 %7, -33, !dbg !2053
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2053

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2055, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* null, metadata !2060, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 84, metadata !2061, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 70, metadata !2062, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 45, metadata !2063, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 56, metadata !2064, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2081
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2082
  %11 = load i8, i8* %10, align 1, !dbg !2082, !tbaa !897
  %12 = and i8 %11, -33, !dbg !2082
  %13 = icmp eq i8 %12, 84, !dbg !2082
  br i1 %13, label %14, label %68, !dbg !2082

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2084, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* null, metadata !2089, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 70, metadata !2090, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 45, metadata !2091, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 56, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2108
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2109
  %16 = load i8, i8* %15, align 1, !dbg !2109, !tbaa !897
  %17 = and i8 %16, -33, !dbg !2109
  %18 = icmp eq i8 %17, 70, !dbg !2109
  br i1 %18, label %19, label %68, !dbg !2109

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* null, metadata !2116, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 45, metadata !2117, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8 56, metadata !2118, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2119, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2133
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2134
  %21 = load i8, i8* %20, align 1, !dbg !2134, !tbaa !897
  %22 = icmp eq i8 %21, 45, !dbg !2134
  br i1 %22, label %23, label %68, !dbg !2136

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8* null, metadata !2142, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 56, metadata !2143, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2157
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2158
  %25 = load i8, i8* %24, align 1, !dbg !2158, !tbaa !897
  %26 = icmp eq i8 %25, 56, !dbg !2158
  br i1 %26, label %27, label %68, !dbg !2160

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* null, metadata !2166, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2179
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2180
  %29 = load i8, i8* %28, align 1, !dbg !2180, !tbaa !897
  %30 = icmp eq i8 %29, 0, !dbg !2180
  br i1 %30, label %31, label %68, !dbg !2182

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2183, !tbaa !897
  %33 = icmp eq i8 %32, 96, !dbg !2184
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2183
  br label %71, !dbg !2185

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2055, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8* null, metadata !2060, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 66, metadata !2061, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 49, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 56, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 48, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 51, metadata !2065, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 48, metadata !2066, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2198
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2199
  %37 = load i8, i8* %36, align 1, !dbg !2199, !tbaa !897
  %38 = and i8 %37, -33, !dbg !2199
  %39 = icmp eq i8 %38, 66, !dbg !2199
  br i1 %39, label %40, label %68, !dbg !2199

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2084, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* null, metadata !2089, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 49, metadata !2090, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 56, metadata !2091, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2092, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i8 51, metadata !2093, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 48, metadata !2094, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2209
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2210
  %42 = load i8, i8* %41, align 1, !dbg !2210, !tbaa !897
  %43 = icmp eq i8 %42, 49, !dbg !2210
  br i1 %43, label %44, label %68, !dbg !2211

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* null, metadata !2116, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 56, metadata !2117, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 48, metadata !2118, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 51, metadata !2119, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 48, metadata !2120, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2220
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2221
  %46 = load i8, i8* %45, align 1, !dbg !2221, !tbaa !897
  %47 = icmp eq i8 %46, 56, !dbg !2221
  br i1 %47, label %48, label %68, !dbg !2222

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* null, metadata !2142, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 48, metadata !2143, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 51, metadata !2144, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 48, metadata !2145, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2230
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2231
  %50 = load i8, i8* %49, align 1, !dbg !2231, !tbaa !897
  %51 = icmp eq i8 %50, 48, !dbg !2231
  br i1 %51, label %52, label %68, !dbg !2232

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* null, metadata !2166, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 51, metadata !2167, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 48, metadata !2168, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2239
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2240
  %54 = load i8, i8* %53, align 1, !dbg !2240, !tbaa !897
  %55 = icmp eq i8 %54, 51, !dbg !2240
  br i1 %55, label %56, label %68, !dbg !2241

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2242, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* null, metadata !2247, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 48, metadata !2248, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2258
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2259
  %58 = load i8, i8* %57, align 1, !dbg !2259, !tbaa !897
  %59 = icmp eq i8 %58, 48, !dbg !2259
  br i1 %59, label %60, label %68, !dbg !2261

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2262, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* null, metadata !2267, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2276
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2277
  %62 = load i8, i8* %61, align 1, !dbg !2277, !tbaa !897
  %63 = icmp eq i8 %62, 0, !dbg !2277
  br i1 %63, label %64, label %68, !dbg !2279

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2280, !tbaa !897
  %66 = icmp eq i8 %65, 96, !dbg !2281
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2280
  br label %71, !dbg !2282

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2283
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2284
  br label %71, !dbg !2285

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2286
  ret i8* %72, !dbg !2287
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %1, metadata !2293, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2294, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2303, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i64* null, metadata !2304, metadata !DIExpression()) #10, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2305, metadata !DIExpression()) #10, !dbg !2315
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2316
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2306, metadata !DIExpression()) #10, !dbg !2317
  %6 = tail call i32* @__errno_location() #17, !dbg !2318
  %7 = load i32, i32* %6, align 4, !dbg !2318, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %7, metadata !2307, metadata !DIExpression()) #10, !dbg !2319
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2320
  %9 = load i32, i32* %8, align 4, !dbg !2320, !tbaa !1392
  %10 = or i32 %9, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %10, metadata !2308, metadata !DIExpression()) #10, !dbg !2322
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2323
  %12 = load i32, i32* %11, align 8, !dbg !2323, !tbaa !1332
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2324
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2325
  %15 = load i8*, i8** %14, align 8, !dbg !2325, !tbaa !1418
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2326
  %17 = load i8*, i8** %16, align 8, !dbg !2326, !tbaa !1421
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2327
  %19 = add i64 %18, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %19, metadata !2309, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %19, metadata !2330, metadata !DIExpression()) #10, !dbg !2335
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %20, metadata !2310, metadata !DIExpression()) #10, !dbg !2338
  %21 = load i32, i32* %11, align 8, !dbg !2339, !tbaa !1332
  %22 = load i8*, i8** %14, align 8, !dbg !2340, !tbaa !1418
  %23 = load i8*, i8** %16, align 8, !dbg !2341, !tbaa !1421
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2342
  store i32 %7, i32* %6, align 4, !dbg !2343, !tbaa !745
  ret i8* %20, !dbg !2344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %1, metadata !2303, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64* %2, metadata !2304, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2305, metadata !DIExpression()), !dbg !2348
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2349
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2306, metadata !DIExpression()), !dbg !2350
  %7 = tail call i32* @__errno_location() #17, !dbg !2351
  %8 = load i32, i32* %7, align 4, !dbg !2351, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %8, metadata !2307, metadata !DIExpression()), !dbg !2352
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2353
  %10 = load i32, i32* %9, align 4, !dbg !2353, !tbaa !1392
  %11 = icmp ne i64* %2, null, !dbg !2354
  %12 = xor i1 %11, true, !dbg !2354
  %13 = zext i1 %12 to i32, !dbg !2354
  %14 = or i32 %10, %13, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %14, metadata !2308, metadata !DIExpression()), !dbg !2356
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2357
  %16 = load i32, i32* %15, align 8, !dbg !2357, !tbaa !1332
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2358
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2359
  %19 = load i8*, i8** %18, align 8, !dbg !2359, !tbaa !1418
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2360
  %21 = load i8*, i8** %20, align 8, !dbg !2360, !tbaa !1421
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2361
  %23 = add i64 %22, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %23, metadata !2309, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %23, metadata !2330, metadata !DIExpression()) #10, !dbg !2364
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2366
  call void @llvm.dbg.value(metadata i8* %24, metadata !2310, metadata !DIExpression()), !dbg !2367
  %25 = load i32, i32* %15, align 8, !dbg !2368, !tbaa !1332
  %26 = load i8*, i8** %18, align 8, !dbg !2369, !tbaa !1418
  %27 = load i8*, i8** %20, align 8, !dbg !2370, !tbaa !1421
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2371
  store i32 %8, i32* %7, align 4, !dbg !2372, !tbaa !745
  br i1 %11, label %29, label %30, !dbg !2373

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2374, !tbaa !2376
  br label %30, !dbg !2377

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2379 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2383, !tbaa !632
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2381, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 1, metadata !2382, metadata !DIExpression()), !dbg !2385
  %2 = load i32, i32* @nslots, align 4, !dbg !2386, !tbaa !745
  %3 = icmp sgt i32 %2, 1, !dbg !2389
  br i1 %3, label %4, label %12, !dbg !2390

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2382, metadata !DIExpression()), !dbg !2385
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2391
  %7 = load i8*, i8** %6, align 8, !dbg !2391, !tbaa !2392
  tail call void @free(i8* %7) #10, !dbg !2394
  %8 = add nuw nsw i64 %5, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i32 undef, metadata !2382, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2385
  %9 = load i32, i32* @nslots, align 4, !dbg !2386, !tbaa !745
  %10 = sext i32 %9 to i64, !dbg !2389
  %11 = icmp slt i64 %8, %10, !dbg !2389
  br i1 %11, label %4, label %12, !dbg !2390, !llvm.loop !2396

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2398
  %14 = load i8*, i8** %13, align 8, !dbg !2398, !tbaa !2392
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2400
  br i1 %15, label %17, label %16, !dbg !2401

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2402
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2404, !tbaa !2405
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2406, !tbaa !2392
  br label %17, !dbg !2407

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2408
  br i1 %18, label %21, label %19, !dbg !2410

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2411
  tail call void @free(i8* %20) #10, !dbg !2413
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2414, !tbaa !632
  br label %21, !dbg !2415

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2416, !tbaa !745
  ret void, !dbg !2417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()), !dbg !2425
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2426
  ret i8* %3, !dbg !2427
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2428 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2432, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2433, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %2, metadata !2434, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2435, metadata !DIExpression()), !dbg !2450
  %5 = tail call i32* @__errno_location() #17, !dbg !2451
  %6 = load i32, i32* %5, align 4, !dbg !2451, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %6, metadata !2436, metadata !DIExpression()), !dbg !2452
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2453, !tbaa !632
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2437, metadata !DIExpression()), !dbg !2454
  %8 = icmp slt i32 %0, 0, !dbg !2455
  br i1 %8, label %9, label %10, !dbg !2457

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2458
  unreachable, !dbg !2458

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2459, !tbaa !745
  %12 = icmp sgt i32 %11, %0, !dbg !2460
  br i1 %12, label %34, label %13, !dbg !2461

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2462
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2441, metadata !DIExpression()), !dbg !2463
  %15 = icmp eq i32 %0, 2147483647, !dbg !2464
  br i1 %15, label %16, label %17, !dbg !2466

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2467
  unreachable, !dbg !2467

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2468
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2468
  %20 = add nsw i32 %0, 1, !dbg !2469
  %21 = sext i32 %20 to i64, !dbg !2470
  %22 = shl nsw i64 %21, 4, !dbg !2471
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2472
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2437, metadata !DIExpression()), !dbg !2454
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2473, !tbaa !632
  br i1 %14, label %25, label %26, !dbg !2474

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2475, !tbaa.struct !2477
  br label %26, !dbg !2478

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2479, !tbaa !745
  %28 = sext i32 %27 to i64, !dbg !2480
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2480
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2481
  %31 = sub nsw i32 %20, %27, !dbg !2482
  %32 = sext i32 %31 to i64, !dbg !2483
  %33 = shl nsw i64 %32, 4, !dbg !2484
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2481
  store i32 %20, i32* @nslots, align 4, !dbg !2485, !tbaa !745
  br label %34, !dbg !2486

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2487
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2437, metadata !DIExpression()), !dbg !2454
  %36 = sext i32 %0 to i64, !dbg !2488
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2489
  %38 = load i64, i64* %37, align 8, !dbg !2489, !tbaa !2405
  call void @llvm.dbg.value(metadata i64 %38, metadata !2442, metadata !DIExpression()), !dbg !2490
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2491
  %40 = load i8*, i8** %39, align 8, !dbg !2491, !tbaa !2392
  call void @llvm.dbg.value(metadata i8* %40, metadata !2444, metadata !DIExpression()), !dbg !2492
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2493
  %42 = load i32, i32* %41, align 4, !dbg !2493, !tbaa !1392
  %43 = or i32 %42, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %43, metadata !2445, metadata !DIExpression()), !dbg !2495
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2496
  %45 = load i32, i32* %44, align 8, !dbg !2496, !tbaa !1332
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2497
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2498
  %48 = load i8*, i8** %47, align 8, !dbg !2498, !tbaa !1418
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2499
  %50 = load i8*, i8** %49, align 8, !dbg !2499, !tbaa !1421
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %51, metadata !2446, metadata !DIExpression()), !dbg !2501
  %52 = icmp ugt i64 %38, %51, !dbg !2502
  br i1 %52, label %63, label %53, !dbg !2504

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %54, metadata !2442, metadata !DIExpression()), !dbg !2490
  store i64 %54, i64* %37, align 8, !dbg !2507, !tbaa !2405
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2508
  br i1 %55, label %57, label %56, !dbg !2510

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2511
  br label %57, !dbg !2511

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2330, metadata !DIExpression()) #10, !dbg !2512
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %58, metadata !2444, metadata !DIExpression()), !dbg !2492
  store i8* %58, i8** %39, align 8, !dbg !2515, !tbaa !2392
  %59 = load i32, i32* %44, align 8, !dbg !2516, !tbaa !1332
  %60 = load i8*, i8** %47, align 8, !dbg !2517, !tbaa !1418
  %61 = load i8*, i8** %49, align 8, !dbg !2518, !tbaa !1421
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2519
  br label %63, !dbg !2520

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2521
  call void @llvm.dbg.value(metadata i8* %64, metadata !2444, metadata !DIExpression()), !dbg !2492
  store i32 %6, i32* %5, align 4, !dbg !2522, !tbaa !745
  ret i8* %64, !dbg !2523
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8* %1, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 %2, metadata !2530, metadata !DIExpression()), !dbg !2533
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2534
  ret i8* %4, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #10, !dbg !2544
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2545
  ret i8* %2, !dbg !2546
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2547 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !2528, metadata !DIExpression()) #10, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()) #10, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()) #10, !dbg !2558
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2559
  ret i8* %3, !dbg !2560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2561 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2565, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %2, metadata !2567, metadata !DIExpression()), !dbg !2571
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2568, metadata !DIExpression(DW_OP_deref)), !dbg !2573
  call void @llvm.dbg.value(metadata i32 %1, metadata !2574, metadata !DIExpression()) #10, !dbg !2580
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2582, !alias.scope !2583
  %6 = icmp eq i32 %1, 10, !dbg !2586
  br i1 %6, label %7, label %8, !dbg !2588

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2589, !noalias !2583
  unreachable, !dbg !2589

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2590
  store i32 %1, i32* %9, align 8, !dbg !2591, !tbaa !1332, !alias.scope !2583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2568, metadata !DIExpression(DW_OP_deref)), !dbg !2573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2579, metadata !DIExpression(DW_OP_deref)), !dbg !2582
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2592
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2593
  ret i8* %10, !dbg !2594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2595 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2600, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %3, metadata !2602, metadata !DIExpression()), !dbg !2607
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2603, metadata !DIExpression(DW_OP_deref)), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %1, metadata !2574, metadata !DIExpression()) #10, !dbg !2610
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2612, !alias.scope !2613
  %7 = icmp eq i32 %1, 10, !dbg !2616
  br i1 %7, label %8, label %9, !dbg !2617

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2618, !noalias !2613
  unreachable, !dbg !2618

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2619
  store i32 %1, i32* %10, align 8, !dbg !2620, !tbaa !1332, !alias.scope !2613
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2603, metadata !DIExpression(DW_OP_deref)), !dbg !2609
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2579, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2622
  ret i8* %11, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2624 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2565, metadata !DIExpression()) #10, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()) #10, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()) #10, !dbg !2635
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2568, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %0, metadata !2574, metadata !DIExpression()) #10, !dbg !2638
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2640, !alias.scope !2641
  %5 = icmp eq i32 %0, 10, !dbg !2644
  br i1 %5, label %6, label %7, !dbg !2645

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2646, !noalias !2641
  unreachable, !dbg !2646

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2647
  store i32 %0, i32* %8, align 8, !dbg !2648, !tbaa !1332, !alias.scope !2641
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2568, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2579, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2640
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2650
  ret i8* %9, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2652 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %2, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 0, metadata !2599, metadata !DIExpression()) #10, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()) #10, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %2, metadata !2602, metadata !DIExpression()) #10, !dbg !2666
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2667
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2603, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %0, metadata !2574, metadata !DIExpression()) #10, !dbg !2669
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2671, !alias.scope !2672
  %6 = icmp eq i32 %0, 10, !dbg !2675
  br i1 %6, label %7, label %8, !dbg !2676

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2677, !noalias !2672
  unreachable, !dbg !2677

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2678
  store i32 %0, i32* %9, align 8, !dbg !2679, !tbaa !1332, !alias.scope !2672
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2603, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2579, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2671
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2680
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2681
  ret i8* %10, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2695, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1351, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8 %2, metadata !1352, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 1, metadata !1353, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %2, metadata !1354, metadata !DIExpression()), !dbg !2702
  %6 = lshr i8 %2, 5, !dbg !2703
  %7 = zext i8 %6 to i64, !dbg !2703
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2704
  call void @llvm.dbg.value(metadata i32* %8, metadata !1356, metadata !DIExpression()), !dbg !2705
  %9 = and i8 %2, 31, !dbg !2706
  %10 = zext i8 %9 to i32, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %10, metadata !1358, metadata !DIExpression()), !dbg !2707
  %11 = load i32, i32* %8, align 4, !dbg !2708, !tbaa !745
  %12 = lshr i32 %11, %10, !dbg !2709
  %13 = and i32 %12, 1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %13, metadata !1359, metadata !DIExpression()), !dbg !2711
  %14 = xor i32 %13, 1, !dbg !2712
  %15 = shl i32 %14, %10, !dbg !2713
  %16 = xor i32 %15, %11, !dbg !2714
  store i32 %16, i32* %8, align 4, !dbg !2714, !tbaa !745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2697
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2716
  ret i8* %17, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2718 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %1, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()) #10, !dbg !2726
  call void @llvm.dbg.value(metadata i64 -1, metadata !2688, metadata !DIExpression()) #10, !dbg !2728
  call void @llvm.dbg.value(metadata i8 %1, metadata !2689, metadata !DIExpression()) #10, !dbg !2729
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2731, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1351, metadata !DIExpression()) #10, !dbg !2733
  call void @llvm.dbg.value(metadata i8 %1, metadata !1352, metadata !DIExpression()) #10, !dbg !2735
  call void @llvm.dbg.value(metadata i32 1, metadata !1353, metadata !DIExpression()) #10, !dbg !2736
  call void @llvm.dbg.value(metadata i8 %1, metadata !1354, metadata !DIExpression()) #10, !dbg !2737
  %5 = lshr i8 %1, 5, !dbg !2738
  %6 = zext i8 %5 to i64, !dbg !2738
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2739
  call void @llvm.dbg.value(metadata i32* %7, metadata !1356, metadata !DIExpression()) #10, !dbg !2740
  %8 = and i8 %1, 31, !dbg !2741
  %9 = zext i8 %8 to i32, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %9, metadata !1358, metadata !DIExpression()) #10, !dbg !2742
  %10 = load i32, i32* %7, align 4, !dbg !2743, !tbaa !745
  %11 = lshr i32 %10, %9, !dbg !2744
  %12 = and i32 %11, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %12, metadata !1359, metadata !DIExpression()) #10, !dbg !2746
  %13 = xor i32 %12, 1, !dbg !2747
  %14 = shl i32 %13, %9, !dbg !2748
  %15 = xor i32 %14, %10, !dbg !2749
  store i32 %15, i32* %7, align 4, !dbg !2749, !tbaa !745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2732
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2750
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2751
  ret i8* %16, !dbg !2752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2753 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()) #10, !dbg !2757
  call void @llvm.dbg.value(metadata i8 58, metadata !2723, metadata !DIExpression()) #10, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()) #10, !dbg !2760
  call void @llvm.dbg.value(metadata i64 -1, metadata !2688, metadata !DIExpression()) #10, !dbg !2762
  call void @llvm.dbg.value(metadata i8 58, metadata !2689, metadata !DIExpression()) #10, !dbg !2763
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2765, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1351, metadata !DIExpression()) #10, !dbg !2767
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()) #10, !dbg !2769
  call void @llvm.dbg.value(metadata i32 1, metadata !1353, metadata !DIExpression()) #10, !dbg !2770
  call void @llvm.dbg.value(metadata i8 58, metadata !1354, metadata !DIExpression()) #10, !dbg !2771
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2772
  call void @llvm.dbg.value(metadata i32* %4, metadata !1356, metadata !DIExpression()) #10, !dbg !2773
  call void @llvm.dbg.value(metadata i32 26, metadata !1358, metadata !DIExpression()) #10, !dbg !2774
  %5 = load i32, i32* %4, align 4, !dbg !2775, !tbaa !745
  %6 = or i32 %5, 67108864, !dbg !2776
  store i32 %6, i32* %4, align 4, !dbg !2776, !tbaa !745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2766
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2778
  ret i8* %7, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2780 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %1, metadata !2783, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()) #10, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()) #10, !dbg !2788
  call void @llvm.dbg.value(metadata i8 58, metadata !2689, metadata !DIExpression()) #10, !dbg !2789
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2791, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1351, metadata !DIExpression()) #10, !dbg !2793
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()) #10, !dbg !2795
  call void @llvm.dbg.value(metadata i32 1, metadata !1353, metadata !DIExpression()) #10, !dbg !2796
  call void @llvm.dbg.value(metadata i8 58, metadata !1354, metadata !DIExpression()) #10, !dbg !2797
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2798
  call void @llvm.dbg.value(metadata i32* %5, metadata !1356, metadata !DIExpression()) #10, !dbg !2799
  call void @llvm.dbg.value(metadata i32 26, metadata !1358, metadata !DIExpression()) #10, !dbg !2800
  %6 = load i32, i32* %5, align 4, !dbg !2801, !tbaa !745
  %7 = or i32 %6, 67108864, !dbg !2802
  store i32 %7, i32* %5, align 4, !dbg !2802, !tbaa !745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2792
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2804
  ret i8* %8, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2806 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2579, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2812
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %1, metadata !2809, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %2, metadata !2810, metadata !DIExpression()), !dbg !2816
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2817
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %1, metadata !2574, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata i32 0, metadata !2579, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2812
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2812, !alias.scope !2820
  %8 = icmp eq i32 %1, 10, !dbg !2823
  br i1 %8, label %9, label %10, !dbg !2824

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2825, !noalias !2820
  unreachable, !dbg !2825

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2579, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2812
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2818
  store i32 %1, i32* %11, align 8, !dbg !2818
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2818
  %13 = bitcast i32* %12 to i8*, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2818
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1351, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 1, metadata !1353, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 58, metadata !1354, metadata !DIExpression()), !dbg !2831
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32* %14, metadata !1356, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 26, metadata !1358, metadata !DIExpression()), !dbg !2834
  %15 = load i32, i32* %14, align 4, !dbg !2835, !tbaa !745
  %16 = or i32 %15, 67108864, !dbg !2836
  store i32 %16, i32* %14, align 4, !dbg !2836, !tbaa !745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2838
  ret i8* %17, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2840 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2844, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %3, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %1, metadata !2857, metadata !DIExpression()) #10, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2858, metadata !DIExpression()) #10, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %3, metadata !2859, metadata !DIExpression()) #10, !dbg !2866
  call void @llvm.dbg.value(metadata i64 -1, metadata !2860, metadata !DIExpression()) #10, !dbg !2867
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2868
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2869, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1400, metadata !DIExpression()) #10, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %1, metadata !1401, metadata !DIExpression()) #10, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !1402, metadata !DIExpression()) #10, !dbg !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1400, metadata !DIExpression()) #10, !dbg !2871
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2875
  store i32 10, i32* %7, align 8, !dbg !2876, !tbaa !1332
  %8 = icmp ne i8* %1, null, !dbg !2877
  %9 = icmp ne i8* %2, null, !dbg !2878
  %10 = and i1 %8, %9, !dbg !2879
  br i1 %10, label %12, label %11, !dbg !2879

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2880
  unreachable, !dbg !2880

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2881
  store i8* %1, i8** %13, align 8, !dbg !2882, !tbaa !1418
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2883
  store i8* %2, i8** %14, align 8, !dbg !2884, !tbaa !1421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2870
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2885
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2886
  ret i8* %15, !dbg !2887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2853 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %1, metadata !2857, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2858, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %3, metadata !2859, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %4, metadata !2860, metadata !DIExpression()), !dbg !2892
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2894, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2895
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1400, metadata !DIExpression()) #10, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %1, metadata !1401, metadata !DIExpression()) #10, !dbg !2898
  call void @llvm.dbg.value(metadata i8* %2, metadata !1402, metadata !DIExpression()) #10, !dbg !2899
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1400, metadata !DIExpression()) #10, !dbg !2896
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2900
  store i32 10, i32* %8, align 8, !dbg !2901, !tbaa !1332
  %9 = icmp ne i8* %1, null, !dbg !2902
  %10 = icmp ne i8* %2, null, !dbg !2903
  %11 = and i1 %9, %10, !dbg !2904
  br i1 %11, label %13, label %12, !dbg !2904

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2905
  unreachable, !dbg !2905

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2906
  store i8* %1, i8** %14, align 8, !dbg !2907, !tbaa !1418
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2908
  store i8* %2, i8** %15, align 8, !dbg !2909, !tbaa !1421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2895
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2911
  ret i8* %16, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2913 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* %1, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2844, metadata !DIExpression()) #10, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2845, metadata !DIExpression()) #10, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !2846, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i8* %2, metadata !2847, metadata !DIExpression()) #10, !dbg !2927
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()) #10, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2930
  call void @llvm.dbg.value(metadata i8* %1, metadata !2858, metadata !DIExpression()) #10, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %2, metadata !2859, metadata !DIExpression()) #10, !dbg !2932
  call void @llvm.dbg.value(metadata i64 -1, metadata !2860, metadata !DIExpression()) #10, !dbg !2933
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2935, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1400, metadata !DIExpression()) #10, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %0, metadata !1401, metadata !DIExpression()) #10, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %1, metadata !1402, metadata !DIExpression()) #10, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1400, metadata !DIExpression()) #10, !dbg !2937
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2941
  store i32 10, i32* %6, align 8, !dbg !2942, !tbaa !1332
  %7 = icmp ne i8* %0, null, !dbg !2943
  %8 = icmp ne i8* %1, null, !dbg !2944
  %9 = and i1 %7, %8, !dbg !2945
  br i1 %9, label %11, label %10, !dbg !2945

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2946
  unreachable, !dbg !2946

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2947
  store i8* %0, i8** %12, align 8, !dbg !2948, !tbaa !1418
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2949
  store i8* %1, i8** %13, align 8, !dbg !2950, !tbaa !1421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2936
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2951
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2952
  ret i8* %14, !dbg !2953
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2954 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2958, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %2, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()) #10, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2858, metadata !DIExpression()) #10, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %2, metadata !2859, metadata !DIExpression()) #10, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %3, metadata !2860, metadata !DIExpression()) #10, !dbg !2971
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2972
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2973, !tbaa.struct !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1400, metadata !DIExpression()) #10, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %0, metadata !1401, metadata !DIExpression()) #10, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %1, metadata !1402, metadata !DIExpression()) #10, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1400, metadata !DIExpression()) #10, !dbg !2975
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2979
  store i32 10, i32* %7, align 8, !dbg !2980, !tbaa !1332
  %8 = icmp ne i8* %0, null, !dbg !2981
  %9 = icmp ne i8* %1, null, !dbg !2982
  %10 = and i1 %8, %9, !dbg !2983
  br i1 %10, label %12, label %11, !dbg !2983

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2984
  unreachable, !dbg !2984

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2985
  store i8* %0, i8** %13, align 8, !dbg !2986, !tbaa !1418
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2987
  store i8* %1, i8** %14, align 8, !dbg !2988, !tbaa !1421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2861, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2974
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2990
  ret i8* %15, !dbg !2991
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !3001
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3002
  ret i8* %4, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 0, metadata !2996, metadata !DIExpression()) #10, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #10, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #10, !dbg !3015
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3016
  ret i8* %3, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8* %1, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()) #10, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %1, metadata !2997, metadata !DIExpression()) #10, !dbg !3028
  call void @llvm.dbg.value(metadata i64 -1, metadata !2998, metadata !DIExpression()) #10, !dbg !3029
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3030
  ret i8* %3, !dbg !3031
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !3022, metadata !DIExpression()) #10, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()) #10, !dbg !3040
  call void @llvm.dbg.value(metadata i32 0, metadata !2996, metadata !DIExpression()) #10, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #10, !dbg !3043
  call void @llvm.dbg.value(metadata i64 -1, metadata !2998, metadata !DIExpression()) #10, !dbg !3044
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3045
  ret i8* %2, !dbg !3046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3047 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3104, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %2, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8* %3, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8** %4, metadata !3108, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %5, metadata !3109, metadata !DIExpression()), !dbg !3115
  %7 = icmp eq i8* %1, null, !dbg !3116
  br i1 %7, label %10, label %8, !dbg !3118

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3119
  br label %12, !dbg !3119

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3120
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !3121
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3121
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !3122
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3122
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
  ], !dbg !3123

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3124
  unreachable, !dbg !3124

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !3126
  %20 = load i8*, i8** %4, align 8, !dbg !3126, !tbaa !632
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3126
  br label %146, !dbg !3127

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !3128
  %24 = load i8*, i8** %4, align 8, !dbg !3128, !tbaa !632
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3128
  %26 = load i8*, i8** %25, align 8, !dbg !3128, !tbaa !632
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3128
  br label %146, !dbg !3129

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !3130
  %30 = load i8*, i8** %4, align 8, !dbg !3130, !tbaa !632
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3130
  %32 = load i8*, i8** %31, align 8, !dbg !3130, !tbaa !632
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3130
  %34 = load i8*, i8** %33, align 8, !dbg !3130, !tbaa !632
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3130
  br label %146, !dbg !3131

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !3132
  %38 = load i8*, i8** %4, align 8, !dbg !3132, !tbaa !632
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3132
  %40 = load i8*, i8** %39, align 8, !dbg !3132, !tbaa !632
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3132
  %42 = load i8*, i8** %41, align 8, !dbg !3132, !tbaa !632
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3132
  %44 = load i8*, i8** %43, align 8, !dbg !3132, !tbaa !632
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3132
  br label %146, !dbg !3133

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !3134
  %48 = load i8*, i8** %4, align 8, !dbg !3134, !tbaa !632
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3134
  %50 = load i8*, i8** %49, align 8, !dbg !3134, !tbaa !632
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3134
  %52 = load i8*, i8** %51, align 8, !dbg !3134, !tbaa !632
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3134
  %54 = load i8*, i8** %53, align 8, !dbg !3134, !tbaa !632
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3134
  %56 = load i8*, i8** %55, align 8, !dbg !3134, !tbaa !632
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3134
  br label %146, !dbg !3135

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !3136
  %60 = load i8*, i8** %4, align 8, !dbg !3136, !tbaa !632
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3136
  %62 = load i8*, i8** %61, align 8, !dbg !3136, !tbaa !632
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3136
  %64 = load i8*, i8** %63, align 8, !dbg !3136, !tbaa !632
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3136
  %66 = load i8*, i8** %65, align 8, !dbg !3136, !tbaa !632
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3136
  %68 = load i8*, i8** %67, align 8, !dbg !3136, !tbaa !632
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3136
  %70 = load i8*, i8** %69, align 8, !dbg !3136, !tbaa !632
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3136
  br label %146, !dbg !3137

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !3138
  %74 = load i8*, i8** %4, align 8, !dbg !3138, !tbaa !632
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3138
  %76 = load i8*, i8** %75, align 8, !dbg !3138, !tbaa !632
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3138
  %78 = load i8*, i8** %77, align 8, !dbg !3138, !tbaa !632
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3138
  %80 = load i8*, i8** %79, align 8, !dbg !3138, !tbaa !632
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3138
  %82 = load i8*, i8** %81, align 8, !dbg !3138, !tbaa !632
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3138
  %84 = load i8*, i8** %83, align 8, !dbg !3138, !tbaa !632
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3138
  %86 = load i8*, i8** %85, align 8, !dbg !3138, !tbaa !632
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3138
  br label %146, !dbg !3139

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !3140
  %90 = load i8*, i8** %4, align 8, !dbg !3140, !tbaa !632
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3140
  %92 = load i8*, i8** %91, align 8, !dbg !3140, !tbaa !632
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3140
  %94 = load i8*, i8** %93, align 8, !dbg !3140, !tbaa !632
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3140
  %96 = load i8*, i8** %95, align 8, !dbg !3140, !tbaa !632
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3140
  %98 = load i8*, i8** %97, align 8, !dbg !3140, !tbaa !632
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3140
  %100 = load i8*, i8** %99, align 8, !dbg !3140, !tbaa !632
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3140
  %102 = load i8*, i8** %101, align 8, !dbg !3140, !tbaa !632
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3140
  %104 = load i8*, i8** %103, align 8, !dbg !3140, !tbaa !632
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3140
  br label %146, !dbg !3141

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !3142
  %108 = load i8*, i8** %4, align 8, !dbg !3142, !tbaa !632
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3142
  %110 = load i8*, i8** %109, align 8, !dbg !3142, !tbaa !632
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3142
  %112 = load i8*, i8** %111, align 8, !dbg !3142, !tbaa !632
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3142
  %114 = load i8*, i8** %113, align 8, !dbg !3142, !tbaa !632
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3142
  %116 = load i8*, i8** %115, align 8, !dbg !3142, !tbaa !632
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3142
  %118 = load i8*, i8** %117, align 8, !dbg !3142, !tbaa !632
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3142
  %120 = load i8*, i8** %119, align 8, !dbg !3142, !tbaa !632
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3142
  %122 = load i8*, i8** %121, align 8, !dbg !3142, !tbaa !632
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3142
  %124 = load i8*, i8** %123, align 8, !dbg !3142, !tbaa !632
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3142
  br label %146, !dbg !3143

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !3144
  %128 = load i8*, i8** %4, align 8, !dbg !3144, !tbaa !632
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3144
  %130 = load i8*, i8** %129, align 8, !dbg !3144, !tbaa !632
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3144
  %132 = load i8*, i8** %131, align 8, !dbg !3144, !tbaa !632
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3144
  %134 = load i8*, i8** %133, align 8, !dbg !3144, !tbaa !632
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3144
  %136 = load i8*, i8** %135, align 8, !dbg !3144, !tbaa !632
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3144
  %138 = load i8*, i8** %137, align 8, !dbg !3144, !tbaa !632
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3144
  %140 = load i8*, i8** %139, align 8, !dbg !3144, !tbaa !632
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3144
  %142 = load i8*, i8** %141, align 8, !dbg !3144, !tbaa !632
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3144
  %144 = load i8*, i8** %143, align 8, !dbg !3144, !tbaa !632
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3144
  br label %146, !dbg !3145

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3147 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3151, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3152, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %3, metadata !3154, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8** %4, metadata !3155, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 0, metadata !3156, metadata !DIExpression()), !dbg !3162
  br label %6, !dbg !3163

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3167
  %9 = load i8*, i8** %8, align 8, !dbg !3167, !tbaa !632
  %10 = icmp eq i8* %9, null, !dbg !3168
  %11 = add i64 %7, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %11, metadata !3156, metadata !DIExpression()), !dbg !3162
  br i1 %10, label %12, label %6, !dbg !3168, !llvm.loop !3170

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()), !dbg !3162
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3174 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3185, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %1, metadata !3186, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8* %2, metadata !3187, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %3, metadata !3188, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3189, metadata !DIExpression()), !dbg !3197
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3198
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3198
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3191, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3200
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3200
  %11 = load i32, i32* %8, align 8, !dbg !3201
  %12 = icmp ult i32 %11, 41, !dbg !3201
  br i1 %12, label %13, label %18, !dbg !3201

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3201
  %15 = sext i32 %11 to i64, !dbg !3201
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3201
  %17 = add i32 %11, 8, !dbg !3201
  store i32 %17, i32* %8, align 8, !dbg !3201
  br label %21, !dbg !3201

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3201
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3201
  store i8* %20, i8** %10, align 8, !dbg !3201
  br label %21, !dbg !3201

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3201
  %25 = load i8*, i8** %24, align 8, !dbg !3201
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3204
  store i8* %25, i8** %26, align 16, !dbg !3205, !tbaa !632
  %27 = icmp eq i8* %25, null, !dbg !3206
  br i1 %27, label %30, label %28, !dbg !3207

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 1, metadata !3190, metadata !DIExpression()), !dbg !3200
  %29 = icmp ult i32 %22, 41, !dbg !3201
  br i1 %29, label %35, label %32, !dbg !3201

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3208
  call void @llvm.dbg.value(metadata i64 %31, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %31, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3210
  ret void, !dbg !3210

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3201
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3201
  store i8* %34, i8** %10, align 8, !dbg !3201
  br label %40, !dbg !3201

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3201
  %37 = sext i32 %22 to i64, !dbg !3201
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3201
  %39 = add i32 %22, 8, !dbg !3201
  store i32 %39, i32* %8, align 8, !dbg !3201
  br label %40, !dbg !3201

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3201
  %44 = load i8*, i8** %43, align 8, !dbg !3201
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3204
  store i8* %44, i8** %45, align 8, !dbg !3205, !tbaa !632
  %46 = icmp eq i8* %44, null, !dbg !3206
  br i1 %46, label %30, label %47, !dbg !3207

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 2, metadata !3190, metadata !DIExpression()), !dbg !3200
  %48 = icmp ult i32 %41, 41, !dbg !3201
  br i1 %48, label %52, label %49, !dbg !3201

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3201
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3201
  store i8* %51, i8** %10, align 8, !dbg !3201
  br label %57, !dbg !3201

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3201
  %54 = sext i32 %41 to i64, !dbg !3201
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3201
  %56 = add i32 %41, 8, !dbg !3201
  store i32 %56, i32* %8, align 8, !dbg !3201
  br label %57, !dbg !3201

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3201
  %61 = load i8*, i8** %60, align 8, !dbg !3201
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3204
  store i8* %61, i8** %62, align 16, !dbg !3205, !tbaa !632
  %63 = icmp eq i8* %61, null, !dbg !3206
  br i1 %63, label %30, label %64, !dbg !3207

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 3, metadata !3190, metadata !DIExpression()), !dbg !3200
  %65 = icmp ult i32 %58, 41, !dbg !3201
  br i1 %65, label %69, label %66, !dbg !3201

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3201
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3201
  store i8* %68, i8** %10, align 8, !dbg !3201
  br label %74, !dbg !3201

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3201
  %71 = sext i32 %58 to i64, !dbg !3201
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3201
  %73 = add i32 %58, 8, !dbg !3201
  store i32 %73, i32* %8, align 8, !dbg !3201
  br label %74, !dbg !3201

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3201
  %78 = load i8*, i8** %77, align 8, !dbg !3201
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3204
  store i8* %78, i8** %79, align 8, !dbg !3205, !tbaa !632
  %80 = icmp eq i8* %78, null, !dbg !3206
  br i1 %80, label %30, label %81, !dbg !3207

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 4, metadata !3190, metadata !DIExpression()), !dbg !3200
  %82 = icmp ult i32 %75, 41, !dbg !3201
  br i1 %82, label %86, label %83, !dbg !3201

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3201
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3201
  store i8* %85, i8** %10, align 8, !dbg !3201
  br label %91, !dbg !3201

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3201
  %88 = sext i32 %75 to i64, !dbg !3201
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3201
  %90 = add i32 %75, 8, !dbg !3201
  store i32 %90, i32* %8, align 8, !dbg !3201
  br label %91, !dbg !3201

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3201
  %95 = load i8*, i8** %94, align 8, !dbg !3201
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3204
  store i8* %95, i8** %96, align 16, !dbg !3205, !tbaa !632
  %97 = icmp eq i8* %95, null, !dbg !3206
  br i1 %97, label %30, label %98, !dbg !3207

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 5, metadata !3190, metadata !DIExpression()), !dbg !3200
  %99 = icmp ult i32 %92, 41, !dbg !3201
  br i1 %99, label %103, label %100, !dbg !3201

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3201
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3201
  store i8* %102, i8** %10, align 8, !dbg !3201
  br label %108, !dbg !3201

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3201
  %105 = sext i32 %92 to i64, !dbg !3201
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3201
  %107 = add i32 %92, 8, !dbg !3201
  store i32 %107, i32* %8, align 8, !dbg !3201
  br label %108, !dbg !3201

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3201
  %111 = load i8*, i8** %110, align 8, !dbg !3201
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3204
  store i8* %111, i8** %112, align 8, !dbg !3205, !tbaa !632
  %113 = icmp eq i8* %111, null, !dbg !3206
  br i1 %113, label %30, label %114, !dbg !3207

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 6, metadata !3190, metadata !DIExpression()), !dbg !3200
  %115 = load i8*, i8** %10, align 8, !dbg !3201
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3201
  store i8* %116, i8** %10, align 8, !dbg !3201
  %117 = bitcast i8* %115 to i8**, !dbg !3201
  %118 = load i8*, i8** %117, align 8, !dbg !3201
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3204
  store i8* %118, i8** %119, align 16, !dbg !3205, !tbaa !632
  %120 = icmp eq i8* %118, null, !dbg !3206
  br i1 %120, label %30, label %121, !dbg !3207

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 7, metadata !3190, metadata !DIExpression()), !dbg !3200
  %122 = load i8*, i8** %10, align 8, !dbg !3201
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3201
  store i8* %123, i8** %10, align 8, !dbg !3201
  %124 = bitcast i8* %122 to i8**, !dbg !3201
  %125 = load i8*, i8** %124, align 8, !dbg !3201
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3204
  store i8* %125, i8** %126, align 8, !dbg !3205, !tbaa !632
  %127 = icmp eq i8* %125, null, !dbg !3206
  br i1 %127, label %30, label %128, !dbg !3207

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 8, metadata !3190, metadata !DIExpression()), !dbg !3200
  %129 = load i8*, i8** %10, align 8, !dbg !3201
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3201
  store i8* %130, i8** %10, align 8, !dbg !3201
  %131 = bitcast i8* %129 to i8**, !dbg !3201
  %132 = load i8*, i8** %131, align 8, !dbg !3201
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3204
  store i8* %132, i8** %133, align 16, !dbg !3205, !tbaa !632
  %134 = icmp eq i8* %132, null, !dbg !3206
  br i1 %134, label %30, label %135, !dbg !3207

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 9, metadata !3190, metadata !DIExpression()), !dbg !3200
  %136 = load i8*, i8** %10, align 8, !dbg !3201
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3201
  store i8* %137, i8** %10, align 8, !dbg !3201
  %138 = bitcast i8* %136 to i8**, !dbg !3201
  %139 = load i8*, i8** %138, align 8, !dbg !3201
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3204
  store i8* %139, i8** %140, align 8, !dbg !3205, !tbaa !632
  %141 = icmp eq i8* %139, null, !dbg !3206
  %142 = select i1 %141, i64 9, i64 10, !dbg !3207
  br label %30, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3211 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3215, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3217, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %3, metadata !3218, metadata !DIExpression()), !dbg !3229
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3230
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3219, metadata !DIExpression()), !dbg !3231
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3232
  call void @llvm.va_start(i8* nonnull %6), !dbg !3232
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3233
  call void @llvm.va_end(i8* nonnull %6), !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3235
  ret void, !dbg !3235
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3236 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !3237
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !3237
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !3238
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !3238
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.99, i64 0, i64 0), i32 5) #10, !dbg !3239
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3239, !tbaa !632
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3239
  ret void, !dbg !3240
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3241 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3246
  %3 = udiv i64 9223372036854775807, %1, !dbg !3247
  %4 = icmp ult i64 %3, %0, !dbg !3247
  br i1 %4, label %5, label %6, !dbg !3249

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3250
  unreachable, !dbg !3250

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %7, metadata !3252, metadata !DIExpression()) #10, !dbg !3259
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %8, metadata !3258, metadata !DIExpression()) #10, !dbg !3262
  %9 = icmp eq i8* %8, null, !dbg !3263
  %10 = icmp ne i64 %7, 0, !dbg !3265
  %11 = and i1 %10, %9, !dbg !3266
  br i1 %11, label %12, label %13, !dbg !3266

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3267
  unreachable, !dbg !3267

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3268
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3269
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()), !dbg !3271
  %3 = icmp eq i8* %2, null, !dbg !3272
  %4 = icmp ne i64 %0, 0, !dbg !3273
  %5 = and i1 %4, %3, !dbg !3274
  br i1 %5, label %6, label %7, !dbg !3274

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3275
  unreachable, !dbg !3275

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3276
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %2, metadata !3283, metadata !DIExpression()), !dbg !3286
  %4 = udiv i64 9223372036854775807, %2, !dbg !3287
  %5 = icmp ult i64 %4, %1, !dbg !3287
  br i1 %5, label %6, label %7, !dbg !3289

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3290
  unreachable, !dbg !3290

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %8, metadata !3297, metadata !DIExpression()) #10, !dbg !3300
  %9 = icmp eq i64 %8, 0, !dbg !3301
  %10 = icmp ne i8* %0, null, !dbg !3303
  %11 = and i1 %10, %9, !dbg !3304
  br i1 %11, label %12, label %13, !dbg !3304

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3305
  br label %19, !dbg !3307

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %14, metadata !3292, metadata !DIExpression()) #10, !dbg !3298
  %15 = icmp eq i8* %14, null, !dbg !3309
  %16 = icmp ne i64 %8, 0, !dbg !3311
  %17 = and i1 %16, %15, !dbg !3312
  br i1 %17, label %18, label %19, !dbg !3312

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3313
  unreachable, !dbg !3313

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3314
  ret i8* %20, !dbg !3315
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3317
  %3 = icmp eq i64 %1, 0, !dbg !3318
  %4 = icmp ne i8* %0, null, !dbg !3319
  %5 = and i1 %4, %3, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3320

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3321
  br label %13, !dbg !3322

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %8, metadata !3292, metadata !DIExpression()), !dbg !3316
  %9 = icmp eq i8* %8, null, !dbg !3324
  %10 = icmp ne i64 %1, 0, !dbg !3325
  %11 = and i1 %10, %9, !dbg !3326
  br i1 %11, label %12, label %13, !dbg !3326

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3327
  unreachable, !dbg !3327

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3328
  ret i8* %14, !dbg !3329
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !176 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !181, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64* %1, metadata !182, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %2, metadata !183, metadata !DIExpression()), !dbg !3332
  %4 = load i64, i64* %1, align 8, !dbg !3333, !tbaa !2376
  call void @llvm.dbg.value(metadata i64 %4, metadata !184, metadata !DIExpression()), !dbg !3334
  %5 = icmp eq i8* %0, null, !dbg !3335
  br i1 %5, label %6, label %20, !dbg !3337

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3338
  br i1 %7, label %8, label %13, !dbg !3341

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %9, metadata !184, metadata !DIExpression()), !dbg !3334
  %10 = icmp ugt i64 %2, 128, !dbg !3344
  %11 = zext i1 %10 to i64, !dbg !3344
  %12 = add nuw nsw i64 %9, %11, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %12, metadata !184, metadata !DIExpression()), !dbg !3334
  br label %13, !dbg !3346

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3347
  call void @llvm.dbg.value(metadata i64 %14, metadata !184, metadata !DIExpression()), !dbg !3334
  %15 = udiv i64 9223372036854775807, %2, !dbg !3348
  %16 = icmp ult i64 %15, %14, !dbg !3348
  br i1 %16, label %19, label %17, !dbg !3350

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !184, metadata !DIExpression()), !dbg !3334
  store i64 %14, i64* %1, align 8, !dbg !3351, !tbaa !2376
  %18 = mul i64 %14, %2, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #10, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %28, metadata !3297, metadata !DIExpression()) #10, !dbg !3355
  br label %31, !dbg !3356

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3357
  unreachable, !dbg !3357

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3358
  %22 = icmp ugt i64 %21, %4, !dbg !3361
  br i1 %22, label %24, label %23, !dbg !3362

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3363
  unreachable, !dbg !3363

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3364
  %26 = add i64 %4, 1, !dbg !3365
  %27 = add i64 %26, %25, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %27, metadata !184, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %27, metadata !184, metadata !DIExpression()), !dbg !3334
  store i64 %27, i64* %1, align 8, !dbg !3351, !tbaa !2376
  %28 = mul i64 %27, %2, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #10, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %28, metadata !3297, metadata !DIExpression()) #10, !dbg !3355
  %29 = icmp eq i64 %28, 0, !dbg !3367
  br i1 %29, label %30, label %31, !dbg !3356

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3368
  br label %38, !dbg !3369

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %33, metadata !3292, metadata !DIExpression()) #10, !dbg !3353
  %34 = icmp eq i8* %33, null, !dbg !3371
  %35 = icmp ne i64 %32, 0, !dbg !3372
  %36 = and i1 %35, %34, !dbg !3373
  br i1 %36, label %37, label %38, !dbg !3373

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3374
  unreachable, !dbg !3374

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3375
  ret i8* %39, !dbg !3376
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3377 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #10, !dbg !3381
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()) #10, !dbg !3384
  %3 = icmp eq i8* %2, null, !dbg !3385
  %4 = icmp ne i64 %0, 0, !dbg !3386
  %5 = and i1 %4, %3, !dbg !3387
  br i1 %5, label %6, label %7, !dbg !3387

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3388
  unreachable, !dbg !3388

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64* %1, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %0, metadata !181, metadata !DIExpression()) #10, !dbg !3398
  call void @llvm.dbg.value(metadata i64* %1, metadata !182, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i64 1, metadata !183, metadata !DIExpression()) #10, !dbg !3401
  %3 = load i64, i64* %1, align 8, !dbg !3402, !tbaa !2376
  call void @llvm.dbg.value(metadata i64 %3, metadata !184, metadata !DIExpression()) #10, !dbg !3403
  %4 = icmp eq i8* %0, null, !dbg !3404
  br i1 %4, label %5, label %12, !dbg !3405

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3406
  br i1 %6, label %9, label %7, !dbg !3407

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !184, metadata !DIExpression()) #10, !dbg !3403
  %8 = icmp slt i64 %3, 0, !dbg !3408
  br i1 %8, label %11, label %9, !dbg !3409

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !184, metadata !DIExpression()) #10, !dbg !3403
  store i64 %10, i64* %1, align 8, !dbg !3410, !tbaa !2376
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #10, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %18, metadata !3297, metadata !DIExpression()) #10, !dbg !3413
  br label %21, !dbg !3414

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3415
  unreachable, !dbg !3415

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3416
  br i1 %13, label %15, label %14, !dbg !3417

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3418
  unreachable, !dbg !3418

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3419
  %17 = add i64 %3, 1, !dbg !3420
  %18 = add i64 %17, %16, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %18, metadata !184, metadata !DIExpression()) #10, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %18, metadata !184, metadata !DIExpression()) #10, !dbg !3403
  store i64 %18, i64* %1, align 8, !dbg !3410, !tbaa !2376
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #10, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %18, metadata !3297, metadata !DIExpression()) #10, !dbg !3413
  %19 = icmp eq i64 %18, 0, !dbg !3422
  br i1 %19, label %20, label %21, !dbg !3414

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3423
  br label %28, !dbg !3424

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %23, metadata !3292, metadata !DIExpression()) #10, !dbg !3411
  %24 = icmp eq i8* %23, null, !dbg !3426
  %25 = icmp ne i64 %22, 0, !dbg !3427
  %26 = and i1 %25, %24, !dbg !3428
  br i1 %26, label %27, label %28, !dbg !3428

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3429
  unreachable, !dbg !3429

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3430
  ret i8* %29, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3432 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #10, !dbg !3436
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3438
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()) #10, !dbg !3439
  %3 = icmp eq i8* %2, null, !dbg !3440
  %4 = icmp ne i64 %0, 0, !dbg !3441
  %5 = and i1 %4, %3, !dbg !3442
  br i1 %5, label %6, label %7, !dbg !3442

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3443
  unreachable, !dbg !3443

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3444
  ret i8* %2, !dbg !3445
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3446 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3452
  %3 = udiv i64 9223372036854775807, %1, !dbg !3453
  %4 = icmp ult i64 %3, %0, !dbg !3453
  br i1 %4, label %8, label %5, !dbg !3455

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3456
  call void @llvm.dbg.value(metadata i8* %6, metadata !3450, metadata !DIExpression()), !dbg !3457
  %7 = icmp eq i8* %6, null, !dbg !3458
  br i1 %7, label %8, label %9, !dbg !3459

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3460
  unreachable, !dbg !3460

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3462 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %1, metadata !3469, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3252, metadata !DIExpression()) #10, !dbg !3472
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %3, metadata !3258, metadata !DIExpression()) #10, !dbg !3475
  %4 = icmp eq i8* %3, null, !dbg !3476
  %5 = icmp ne i64 %1, 0, !dbg !3477
  %6 = and i1 %5, %4, !dbg !3478
  br i1 %6, label %7, label %8, !dbg !3478

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3479
  unreachable, !dbg !3479

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3480
  ret i8* %3, !dbg !3481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3482 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3484, metadata !DIExpression()), !dbg !3485
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3486
  %3 = add i64 %2, 1, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %0, metadata !3468, metadata !DIExpression()) #10, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %3, metadata !3469, metadata !DIExpression()) #10, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %3, metadata !3252, metadata !DIExpression()) #10, !dbg !3491
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %4, metadata !3258, metadata !DIExpression()) #10, !dbg !3494
  %5 = icmp eq i8* %4, null, !dbg !3495
  %6 = icmp ne i64 %3, 0, !dbg !3496
  %7 = and i1 %6, %5, !dbg !3497
  br i1 %7, label %8, label %9, !dbg !3497

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3498
  unreachable, !dbg !3498

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3499
  ret i8* %4, !dbg !3500
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3501 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3503, !tbaa !745
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !3504
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !3505
  tail call void @abort() #15, !dbg !3506
  unreachable, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3507 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3510, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()), !dbg !3517
  %3 = icmp eq i64 %0, 0, !dbg !3518
  %4 = icmp eq i64 %1, 0, !dbg !3519
  %5 = or i1 %3, %4, !dbg !3520
  br i1 %5, label %12, label %6, !dbg !3520

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %7, metadata !3513, metadata !DIExpression()), !dbg !3522
  %8 = udiv i64 %7, %1, !dbg !3523
  %9 = icmp eq i64 %8, %0, !dbg !3525
  br i1 %9, label %12, label %10, !dbg !3526

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3527
  store i32 12, i32* %11, align 4, !dbg !3529, !tbaa !745
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3510, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %13, metadata !3511, metadata !DIExpression()), !dbg !3517
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3530
  call void @llvm.dbg.value(metadata i8* %15, metadata !3512, metadata !DIExpression()), !dbg !3531
  br label %16, !dbg !3532

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3533
  ret i8* %17, !dbg !3534
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3535 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3552, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* %1, metadata !3553, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %2, metadata !3554, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3555, metadata !DIExpression()), !dbg !3564
  %6 = bitcast i32* %5 to i8*, !dbg !3565
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3565
  %7 = icmp eq i32* %0, null, !dbg !3566
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3568
  call void @llvm.dbg.value(metadata i32* %8, metadata !3552, metadata !DIExpression()), !dbg !3561
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %9, metadata !3556, metadata !DIExpression()), !dbg !3570
  %10 = icmp ugt i64 %9, -3, !dbg !3571
  %11 = icmp ne i64 %2, 0, !dbg !3572
  %12 = and i1 %11, %10, !dbg !3573
  br i1 %12, label %13, label %18, !dbg !3573

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3574
  br i1 %14, label %18, label %15, !dbg !3575

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3576, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %16, metadata !3558, metadata !DIExpression()), !dbg !3577
  %17 = zext i8 %16 to i32, !dbg !3578
  store i32 %17, i32* %8, align 4, !dbg !3579, !tbaa !745
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3580
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3581
  ret i64 %19, !dbg !3581
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3582 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3621, metadata !DIExpression()), !dbg !3626
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3627
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3628, metadata !DIExpression()), !dbg !3632
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3634
  %4 = load i32, i32* %3, align 8, !dbg !3634, !tbaa !3635
  %5 = and i32 %4, 32, !dbg !3634
  %6 = icmp eq i32 %5, 0, !dbg !3637
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3638
  %8 = icmp ne i32 %7, 0, !dbg !3639
  br i1 %6, label %9, label %19, !dbg !3640

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3642
  %11 = xor i1 %8, true, !dbg !3643
  %12 = or i1 %10, %11, !dbg !3643
  %13 = sext i1 %8 to i32, !dbg !3643
  br i1 %12, label %22, label %14, !dbg !3643

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3644
  %16 = load i32, i32* %15, align 4, !dbg !3644, !tbaa !745
  %17 = icmp ne i32 %16, 9, !dbg !3645
  %18 = sext i1 %17 to i32, !dbg !3646
  br label %22, !dbg !3646

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3647

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3649
  store i32 0, i32* %21, align 4, !dbg !3651, !tbaa !745
  br label %22, !dbg !3649

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3652
  ret i32 %23, !dbg !3653
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3654 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 1, metadata !3660, metadata !DIExpression()), !dbg !3663
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %2, metadata !3661, metadata !DIExpression()), !dbg !3665
  %3 = icmp eq i8* %2, null, !dbg !3666
  br i1 %3, label %11, label %4, !dbg !3668

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !3669
  %6 = icmp eq i32 %5, 0, !dbg !3674
  br i1 %6, label %10, label %7, !dbg !3675

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !3676
  %9 = icmp eq i32 %8, 0, !dbg !3677
  br i1 %9, label %10, label %11, !dbg !3678

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3660, metadata !DIExpression()), !dbg !3663
  br label %11, !dbg !3679

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3681 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3687
  call void @llvm.dbg.value(metadata i8* %1, metadata !3686, metadata !DIExpression()), !dbg !3688
  %2 = icmp eq i8* %1, null, !dbg !3689
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %1, !dbg !3691
  call void @llvm.dbg.value(metadata i8* %3, metadata !3686, metadata !DIExpression()), !dbg !3688
  %4 = load i8, i8* %3, align 1, !dbg !3692, !tbaa !897
  %5 = icmp eq i8 %4, 0, !dbg !3696
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* %3, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %6, metadata !3686, metadata !DIExpression()), !dbg !3688
  ret i8* %6, !dbg !3698
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3699 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3739, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3744
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %2, metadata !3740, metadata !DIExpression()), !dbg !3746
  %3 = icmp slt i32 %2, 0, !dbg !3747
  br i1 %3, label %4, label %6, !dbg !3749

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3750
  br label %24, !dbg !3751

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3752
  %8 = icmp eq i32 %7, 0, !dbg !3752
  br i1 %8, label %13, label %9, !dbg !3754

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3755
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3756
  %12 = icmp eq i64 %11, -1, !dbg !3757
  br i1 %12, label %16, label %13, !dbg !3758

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3759
  %15 = icmp eq i32 %14, 0, !dbg !3759
  br i1 %15, label %16, label %18, !dbg !3760

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3739, metadata !DIExpression()), !dbg !3743
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %21, metadata !3741, metadata !DIExpression()), !dbg !3744
  br label %24, !dbg !3762

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3763
  %20 = load i32, i32* %19, align 4, !dbg !3763, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %20, metadata !3739, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %20, metadata !3739, metadata !DIExpression()), !dbg !3743
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %21, metadata !3741, metadata !DIExpression()), !dbg !3744
  %22 = icmp eq i32 %20, 0, !dbg !3764
  br i1 %22, label %24, label %23, !dbg !3762

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3766, !tbaa !745
  call void @llvm.dbg.value(metadata i32 -1, metadata !3741, metadata !DIExpression()), !dbg !3744
  br label %24, !dbg !3768

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3769
  ret i32 %25, !dbg !3770
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3771 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3812
  br i1 %2, label %6, label %3, !dbg !3814

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3815
  %5 = icmp eq i32 %4, 0, !dbg !3815
  br i1 %5, label %6, label %8, !dbg !3816

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3817
  br label %17, !dbg !3818

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3819, metadata !DIExpression()) #10, !dbg !3824
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3826
  %10 = load i32, i32* %9, align 8, !dbg !3826, !tbaa !3635
  %11 = and i32 %10, 256, !dbg !3828
  %12 = icmp eq i32 %11, 0, !dbg !3828
  br i1 %12, label %15, label %13, !dbg !3829

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3830
  br label %15, !dbg !3830

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3831
  br label %17, !dbg !3832

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3833
  ret i32 %18, !dbg !3834
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3835 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3875, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3876, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i32 %2, metadata !3877, metadata !DIExpression()), !dbg !3883
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3884
  %5 = load i8*, i8** %4, align 8, !dbg !3884, !tbaa !3885
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3886
  %7 = load i8*, i8** %6, align 8, !dbg !3886, !tbaa !3887
  %8 = icmp eq i8* %5, %7, !dbg !3888
  br i1 %8, label %9, label %28, !dbg !3889

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3890
  %11 = load i8*, i8** %10, align 8, !dbg !3890, !tbaa !3891
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3892
  %13 = load i8*, i8** %12, align 8, !dbg !3892, !tbaa !3893
  %14 = icmp eq i8* %11, %13, !dbg !3894
  br i1 %14, label %15, label %28, !dbg !3895

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3896
  %17 = load i8*, i8** %16, align 8, !dbg !3896, !tbaa !3897
  %18 = icmp eq i8* %17, null, !dbg !3898
  br i1 %18, label %19, label %28, !dbg !3899

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3900
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %21, metadata !3878, metadata !DIExpression()), !dbg !3902
  %22 = icmp eq i64 %21, -1, !dbg !3903
  br i1 %22, label %30, label %23, !dbg !3905

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3906
  %25 = load i32, i32* %24, align 8, !dbg !3907, !tbaa !3635
  %26 = and i32 %25, -17, !dbg !3907
  store i32 %26, i32* %24, align 8, !dbg !3907, !tbaa !3635
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3908
  store i64 %21, i64* %27, align 8, !dbg !3909, !tbaa !3910
  br label %30, !dbg !3911

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3912
  br label %30, !dbg !3913

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3914
  ret i32 %31, !dbg !3915
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

!llvm.dbg.cu = !{!2, !150, !42, !48, !57, !152, !64, !71, !163, !143, !171, !188, !190, !192, !194, !196, !198, !587, !589, !591}
!llvm.ident = !{!593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593, !593}
!llvm.module.flags = !{!594, !595, !596, !597, !598}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 38, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !24)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
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
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{!0}
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1280, elements: !38)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !28, line: 50, size: 256, elements: !29)
!28 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!29 = !{!30, !33, !35, !37}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 52, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !27, file: !28, line: 55, baseType: !34, size: 32, offset: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !27, file: !28, line: 56, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !27, file: !28, line: 57, baseType: !34, size: 32, offset: 192)
!38 = !{!39}
!39 = !DISubrange(count: 5)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "Version", scope: !42, file: !43, line: 2, type: !31, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !45)
!43 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !{}
!45 = !{!40}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "file_name", scope: !48, file: !53, line: 46, type: !31, isLocal: true, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !50)
!49 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !{!46, !51}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !48, file: !53, line: 56, type: !54, isLocal: true, isDefinition: true)
!53 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!54 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "exit_failure", scope: !57, file: !60, line: 24, type: !61, isLocal: false, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !59)
!58 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !{!55}
!60 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!61 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "program_name", scope: !64, file: !68, line: 33, type: !31, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !66, globals: !67)
!65 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!23, !21}
!67 = !{!62}
!68 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !71, file: !102, line: 85, type: !137, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !94, globals: !99)
!72 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !{!5, !74, !79}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!94 = !{!34, !95, !96, !21}
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 62, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!69, !100, !107, !119, !121, !126, !133, !135}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !71, file: !102, line: 101, type: !103, isLocal: false, isDefinition: true)
!102 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !71, file: !102, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !102, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !102, line: 68, baseType: !5, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !102, line: 71, baseType: !34, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !102, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !102, line: 78, baseType: !31, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !102, line: 81, baseType: !31, size: 64, offset: 384)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !71, file: !102, line: 116, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "slot0", scope: !71, file: !102, line: 842, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 256)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slotvec", scope: !71, file: !102, line: 845, type: !128, isLocal: true, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !102, line: 834, size: 128, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !102, line: 836, baseType: !96, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !102, line: 837, baseType: !21, size: 64, offset: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "nslots", scope: !71, file: !102, line: 843, type: !34, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slotvec0", scope: !71, file: !102, line: 844, type: !129, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 704, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!139 = !{!140}
!140 = !DISubrange(count: 11)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !143, file: !146, line: 26, type: !147, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !145)
!144 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!145 = !{!141}
!146 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 47)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44)
!151 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !154, retainedTypes: !162)
!153 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!154 = !{!155}
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 78, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!162 = !{!96}
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !165, retainedTypes: !170)
!164 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = !{!166}
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !167, line: 41, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !{!169}
!169 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!170 = !{!23}
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !187)
!172 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !176, file: !175, line: 186, baseType: !7, size: 32, elements: !185)
!175 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!176 = distinct !DISubprogram(name: "x2nrealloc", scope: !175, file: !175, line: 174, type: !177, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !180)
!177 = !DISubroutineType(types: !178)
!178 = !{!23, !23, !179, !96}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!180 = !{!181, !182, !183, !184}
!181 = !DILocalVariable(name: "p", arg: 1, scope: !176, file: !175, line: 174, type: !23)
!182 = !DILocalVariable(name: "pn", arg: 2, scope: !176, file: !175, line: 174, type: !179)
!183 = !DILocalVariable(name: "s", arg: 3, scope: !176, file: !175, line: 174, type: !96)
!184 = !DILocalVariable(name: "n", scope: !176, file: !175, line: 176, type: !96)
!185 = !{!186}
!186 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!187 = !{!96, !21, !23}
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44)
!189 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !170)
!191 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !162)
!193 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44)
!195 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44)
!197 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !170)
!199 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = !{!201}
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 41, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!204 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!205 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!206 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!207 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!211 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!212 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!242 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!243 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!244 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!245 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!246 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!247 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!248 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!249 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!250 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!251 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!252 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!253 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!312 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!399 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!473 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!474 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!475 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!476 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!477 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!478 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!480 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!481 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!482 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!483 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!484 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!485 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!519 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!520 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!521 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!522 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!523 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!528 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!529 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!530 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!531 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44)
!588 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !170)
!590 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !170)
!592 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!593 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!594 = !{i32 2, !"Dwarf Version", i32 4}
!595 = !{i32 2, !"Debug Info Version", i32 3}
!596 = !{i32 1, !"wchar_size", i32 4}
!597 = !{i32 7, !"PIC Level", i32 2}
!598 = !{i32 7, !"PIE Level", i32 2}
!599 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !600, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !34}
!602 = !{!603}
!603 = !DILocalVariable(name: "status", arg: 1, scope: !599, file: !3, line: 48, type: !34)
!604 = !DILocalVariable(name: "infomap", scope: !605, file: !606, line: 632, type: !620)
!605 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !606, file: !606, line: 630, type: !607, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !609)
!606 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!607 = !DISubroutineType(types: !608)
!608 = !{null, !31}
!609 = !{!610, !604, !611, !612, !619}
!610 = !DILocalVariable(name: "program", arg: 1, scope: !605, file: !606, line: 630, type: !31)
!611 = !DILocalVariable(name: "node", scope: !605, file: !606, line: 642, type: !31)
!612 = !DILocalVariable(name: "map_prog", scope: !605, file: !606, line: 643, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !605, file: !606, line: 632, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !615, file: !606, line: 632, baseType: !31, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !606, line: 632, baseType: !31, size: 64, offset: 64)
!619 = !DILocalVariable(name: "lc_messages", scope: !605, file: !606, line: 655, type: !31)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 896, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 7)
!623 = !DILocation(line: 632, column: 67, scope: !605, inlinedAt: !624)
!624 = distinct !DILocation(line: 71, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 53, column: 5)
!626 = distinct !DILexicalBlock(scope: !599, file: !3, line: 50, column: 7)
!627 = !DILocation(line: 48, column: 12, scope: !599)
!628 = !DILocation(line: 50, column: 14, scope: !626)
!629 = !DILocation(line: 50, column: 7, scope: !599)
!630 = !DILocation(line: 51, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 51, column: 5)
!632 = !{!633, !633, i64 0}
!633 = !{!"any pointer", !634, i64 0}
!634 = !{!"omnipotent char", !635, i64 0}
!635 = !{!"Simple C/C++ TBAA"}
!636 = !DILocation(line: 54, column: 7, scope: !625)
!637 = !DILocation(line: 55, column: 7, scope: !625)
!638 = !DILocation(line: 587, column: 3, scope: !639, inlinedAt: !642)
!639 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !606, file: !606, line: 585, type: !640, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !44)
!640 = !DISubroutineType(types: !641)
!641 = !{null}
!642 = distinct !DILocation(line: 59, column: 7, scope: !625)
!643 = !DILocation(line: 61, column: 7, scope: !625)
!644 = !DILocation(line: 64, column: 7, scope: !625)
!645 = !DILocation(line: 69, column: 7, scope: !625)
!646 = !DILocation(line: 70, column: 7, scope: !625)
!647 = !DILocation(line: 632, column: 3, scope: !605, inlinedAt: !624)
!648 = !DILocation(line: 643, column: 36, scope: !605, inlinedAt: !624)
!649 = !DILocation(line: 643, column: 25, scope: !605, inlinedAt: !624)
!650 = !DILocation(line: 645, column: 33, scope: !605, inlinedAt: !624)
!651 = !DILocation(line: 645, column: 3, scope: !605, inlinedAt: !624)
!652 = !DILocation(line: 646, column: 13, scope: !605, inlinedAt: !624)
!653 = !DILocation(line: 645, column: 20, scope: !605, inlinedAt: !624)
!654 = !{!655, !633, i64 0}
!655 = !{!"infomap", !633, i64 0, !633, i64 8}
!656 = !DILocation(line: 645, column: 10, scope: !605, inlinedAt: !624)
!657 = !DILocation(line: 645, column: 28, scope: !605, inlinedAt: !624)
!658 = distinct !{!658, !659, !660}
!659 = !DILocation(line: 645, column: 3, scope: !605)
!660 = !DILocation(line: 646, column: 13, scope: !605)
!661 = !DILocation(line: 648, column: 17, scope: !662, inlinedAt: !624)
!662 = distinct !DILexicalBlock(scope: !605, file: !606, line: 648, column: 7)
!663 = !{!655, !633, i64 8}
!664 = !DILocation(line: 648, column: 7, scope: !662, inlinedAt: !624)
!665 = !DILocation(line: 648, column: 7, scope: !605, inlinedAt: !624)
!666 = !DILocation(line: 642, column: 15, scope: !605, inlinedAt: !624)
!667 = !DILocation(line: 651, column: 3, scope: !605, inlinedAt: !624)
!668 = !DILocation(line: 655, column: 29, scope: !605, inlinedAt: !624)
!669 = !DILocation(line: 655, column: 15, scope: !605, inlinedAt: !624)
!670 = !DILocation(line: 656, column: 7, scope: !671, inlinedAt: !624)
!671 = distinct !DILexicalBlock(scope: !605, file: !606, line: 656, column: 7)
!672 = !DILocation(line: 656, column: 19, scope: !671, inlinedAt: !624)
!673 = !DILocation(line: 656, column: 22, scope: !671, inlinedAt: !624)
!674 = !DILocation(line: 656, column: 7, scope: !605, inlinedAt: !624)
!675 = !DILocation(line: 662, column: 7, scope: !676, inlinedAt: !624)
!676 = distinct !DILexicalBlock(scope: !671, file: !606, line: 657, column: 5)
!677 = !DILocation(line: 664, column: 5, scope: !676, inlinedAt: !624)
!678 = !DILocation(line: 665, column: 3, scope: !605, inlinedAt: !624)
!679 = !DILocation(line: 667, column: 3, scope: !605, inlinedAt: !624)
!680 = !DILocation(line: 669, column: 1, scope: !605, inlinedAt: !624)
!681 = !DILocation(line: 73, column: 3, scope: !599)
!682 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !683, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{!34, !34, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!686 = !{!687, !688, !689, !694, !695, !696, !697, !698, !699, !702, !705}
!687 = !DILocalVariable(name: "argc", arg: 1, scope: !682, file: !3, line: 77, type: !34)
!688 = !DILocalVariable(name: "argv", arg: 2, scope: !682, file: !3, line: 77, type: !685)
!689 = !DILocalVariable(name: "newmode", scope: !682, file: !3, line: 79, type: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !691, line: 69, baseType: !692)
!691 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !693, line: 148, baseType: !7)
!693 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!694 = !DILocalVariable(name: "specified_mode", scope: !682, file: !3, line: 80, type: !31)
!695 = !DILocalVariable(name: "exit_status", scope: !682, file: !3, line: 81, type: !34)
!696 = !DILocalVariable(name: "optc", scope: !682, file: !3, line: 82, type: !34)
!697 = !DILocalVariable(name: "scontext", scope: !682, file: !3, line: 83, type: !31)
!698 = !DILocalVariable(name: "set_security_context", scope: !682, file: !3, line: 84, type: !54)
!699 = !DILocalVariable(name: "ret", scope: !700, file: !3, line: 136, type: !34)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 135, column: 5)
!701 = distinct !DILexicalBlock(scope: !682, file: !3, line: 134, column: 7)
!702 = !DILocalVariable(name: "umask_value", scope: !703, file: !3, line: 151, type: !690)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 150, column: 5)
!704 = distinct !DILexicalBlock(scope: !682, file: !3, line: 149, column: 7)
!705 = !DILocalVariable(name: "change", scope: !703, file: !3, line: 152, type: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !708, line: 25, flags: DIFlagFwdDecl)
!708 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!709 = !DILocation(line: 77, column: 11, scope: !682)
!710 = !DILocation(line: 77, column: 24, scope: !682)
!711 = !DILocation(line: 80, column: 15, scope: !682)
!712 = !DILocation(line: 81, column: 7, scope: !682)
!713 = !DILocation(line: 83, column: 15, scope: !682)
!714 = !DILocation(line: 84, column: 8, scope: !682)
!715 = !DILocation(line: 87, column: 21, scope: !682)
!716 = !DILocation(line: 87, column: 3, scope: !682)
!717 = !DILocation(line: 88, column: 3, scope: !682)
!718 = !DILocation(line: 89, column: 3, scope: !682)
!719 = !DILocation(line: 90, column: 3, scope: !682)
!720 = !DILocation(line: 92, column: 3, scope: !682)
!721 = !DILocation(line: 94, column: 3, scope: !682)
!722 = !DILocation(line: 94, column: 18, scope: !682)
!723 = !DILocation(line: 82, column: 7, scope: !682)
!724 = !DILocation(line: 99, column: 28, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 97, column: 9)
!726 = distinct !DILexicalBlock(scope: !682, file: !3, line: 95, column: 5)
!727 = !DILocation(line: 100, column: 11, scope: !725)
!728 = distinct !{!728, !721, !729}
!729 = !DILocation(line: 126, column: 5, scope: !682)
!730 = !DILocation(line: 0, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 114, column: 20)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 107, column: 20)
!733 = distinct !DILexicalBlock(scope: !725, file: !3, line: 102, column: 15)
!734 = !DILocation(line: 114, column: 20, scope: !731)
!735 = !DILocation(line: 114, column: 20, scope: !732)
!736 = !DILocation(line: 117, column: 22, scope: !737)
!737 = distinct !DILexicalBlock(scope: !731, file: !3, line: 115, column: 13)
!738 = !DILocation(line: 116, column: 15, scope: !737)
!739 = !DILocation(line: 119, column: 13, scope: !737)
!740 = !DILocation(line: 121, column: 9, scope: !725)
!741 = !DILocation(line: 122, column: 9, scope: !725)
!742 = !DILocation(line: 124, column: 11, scope: !725)
!743 = !DILocation(line: 128, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !682, file: !3, line: 128, column: 7)
!745 = !{!746, !746, i64 0}
!746 = !{!"int", !634, i64 0}
!747 = !DILocation(line: 128, column: 14, scope: !744)
!748 = !DILocation(line: 128, column: 7, scope: !682)
!749 = !DILocation(line: 130, column: 20, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !3, line: 129, column: 5)
!751 = !DILocation(line: 130, column: 7, scope: !750)
!752 = !DILocation(line: 131, column: 7, scope: !750)
!753 = !DILocation(line: 79, column: 10, scope: !682)
!754 = !DILocation(line: 149, column: 7, scope: !704)
!755 = !DILocation(line: 149, column: 7, scope: !682)
!756 = !DILocation(line: 152, column: 36, scope: !703)
!757 = !DILocation(line: 152, column: 27, scope: !703)
!758 = !DILocation(line: 153, column: 12, scope: !759)
!759 = distinct !DILexicalBlock(scope: !703, file: !3, line: 153, column: 11)
!760 = !DILocation(line: 153, column: 11, scope: !703)
!761 = !DILocation(line: 154, column: 9, scope: !759)
!762 = !DILocation(line: 155, column: 21, scope: !703)
!763 = !DILocation(line: 151, column: 14, scope: !703)
!764 = !DILocation(line: 156, column: 7, scope: !703)
!765 = !DILocation(line: 157, column: 17, scope: !703)
!766 = !DILocation(line: 158, column: 13, scope: !703)
!767 = !DILocation(line: 158, column: 7, scope: !703)
!768 = !DILocation(line: 159, column: 19, scope: !769)
!769 = distinct !DILexicalBlock(scope: !703, file: !3, line: 159, column: 11)
!770 = !DILocation(line: 159, column: 11, scope: !703)
!771 = !DILocation(line: 164, column: 10, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 164, column: 3)
!773 = distinct !DILexicalBlock(scope: !682, file: !3, line: 164, column: 3)
!774 = !DILocation(line: 160, column: 9, scope: !769)
!775 = !DILocation(line: 0, scope: !682)
!776 = !DILocation(line: 164, column: 17, scope: !772)
!777 = !DILocation(line: 164, column: 3, scope: !773)
!778 = !DILocation(line: 168, column: 19, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 168, column: 11)
!780 = distinct !DILexicalBlock(scope: !772, file: !3, line: 165, column: 5)
!781 = !DILocation(line: 168, column: 11, scope: !779)
!782 = !DILocation(line: 168, column: 42, scope: !779)
!783 = !DILocation(line: 168, column: 11, scope: !780)
!784 = !DILocation(line: 170, column: 21, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !3, line: 169, column: 9)
!786 = !DILocation(line: 170, column: 28, scope: !785)
!787 = !DILocation(line: 170, column: 56, scope: !785)
!788 = !DILocation(line: 170, column: 11, scope: !785)
!789 = !DILocation(line: 172, column: 9, scope: !785)
!790 = !DILocation(line: 173, column: 31, scope: !791)
!791 = distinct !DILexicalBlock(scope: !779, file: !3, line: 173, column: 16)
!792 = !DILocation(line: 173, column: 47, scope: !791)
!793 = !DILocation(line: 173, column: 42, scope: !791)
!794 = !DILocation(line: 173, column: 34, scope: !791)
!795 = !DILocation(line: 173, column: 65, scope: !791)
!796 = !DILocation(line: 173, column: 16, scope: !779)
!797 = !DILocation(line: 175, column: 21, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !3, line: 174, column: 9)
!799 = !DILocation(line: 175, column: 28, scope: !798)
!800 = !DILocation(line: 176, column: 18, scope: !798)
!801 = !DILocation(line: 175, column: 11, scope: !798)
!802 = !DILocation(line: 178, column: 9, scope: !798)
!803 = !DILocation(line: 164, column: 25, scope: !772)
!804 = distinct !{!804, !777, !805}
!805 = !DILocation(line: 179, column: 5, scope: !773)
!806 = !DILocation(line: 0, scope: !785)
!807 = !DILocation(line: 181, column: 3, scope: !682)
!808 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !53, file: !53, line: 51, type: !607, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !48, retainedNodes: !809)
!809 = !{!810}
!810 = !DILocalVariable(name: "file", arg: 1, scope: !808, file: !53, line: 51, type: !31)
!811 = !DILocation(line: 51, column: 41, scope: !808)
!812 = !DILocation(line: 53, column: 13, scope: !808)
!813 = !DILocation(line: 54, column: 1, scope: !808)
!814 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !53, file: !53, line: 88, type: !815, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !48, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !54}
!817 = !{!818}
!818 = !DILocalVariable(name: "ignore", arg: 1, scope: !814, file: !53, line: 88, type: !54)
!819 = !DILocation(line: 88, column: 37, scope: !814)
!820 = !DILocation(line: 90, column: 16, scope: !814)
!821 = !{!822, !822, i64 0}
!822 = !{!"_Bool", !634, i64 0}
!823 = !DILocation(line: 91, column: 1, scope: !814)
!824 = distinct !DISubprogram(name: "close_stdout", scope: !53, file: !53, line: 117, type: !640, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !48, retainedNodes: !825)
!825 = !{!826}
!826 = !DILocalVariable(name: "write_error", scope: !827, file: !53, line: 122, type: !31)
!827 = distinct !DILexicalBlock(scope: !828, file: !53, line: 121, column: 5)
!828 = distinct !DILexicalBlock(scope: !824, file: !53, line: 119, column: 7)
!829 = !DILocation(line: 119, column: 21, scope: !828)
!830 = !DILocation(line: 119, column: 7, scope: !828)
!831 = !DILocation(line: 119, column: 29, scope: !828)
!832 = !DILocation(line: 120, column: 7, scope: !828)
!833 = !DILocation(line: 120, column: 12, scope: !828)
!834 = !{i8 0, i8 2}
!835 = !DILocation(line: 120, column: 25, scope: !828)
!836 = !DILocation(line: 120, column: 28, scope: !828)
!837 = !DILocation(line: 120, column: 34, scope: !828)
!838 = !DILocation(line: 119, column: 7, scope: !824)
!839 = !DILocation(line: 122, column: 33, scope: !827)
!840 = !DILocation(line: 122, column: 19, scope: !827)
!841 = !DILocation(line: 123, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !827, file: !53, line: 123, column: 11)
!843 = !DILocation(line: 0, scope: !842)
!844 = !DILocation(line: 123, column: 11, scope: !827)
!845 = !DILocation(line: 124, column: 36, scope: !842)
!846 = !DILocation(line: 124, column: 9, scope: !842)
!847 = !DILocation(line: 127, column: 9, scope: !842)
!848 = !DILocation(line: 129, column: 14, scope: !827)
!849 = !DILocation(line: 129, column: 7, scope: !827)
!850 = !DILocation(line: 134, column: 42, scope: !851)
!851 = distinct !DILexicalBlock(scope: !824, file: !53, line: 134, column: 7)
!852 = !DILocation(line: 134, column: 28, scope: !851)
!853 = !DILocation(line: 134, column: 50, scope: !851)
!854 = !DILocation(line: 134, column: 7, scope: !824)
!855 = !DILocation(line: 135, column: 12, scope: !851)
!856 = !DILocation(line: 135, column: 5, scope: !851)
!857 = !DILocation(line: 136, column: 1, scope: !824)
!858 = distinct !DISubprogram(name: "mode_compile", scope: !156, file: !156, line: 134, type: !859, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !869)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !31}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !156, line: 98, size: 128, elements: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !862, file: !156, line: 100, baseType: !22, size: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !862, file: !156, line: 101, baseType: !22, size: 8, offset: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !862, file: !156, line: 102, baseType: !690, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !862, file: !156, line: 103, baseType: !690, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !862, file: !156, line: 104, baseType: !690, size: 32, offset: 96)
!869 = !{!870, !871, !872, !873, !874, !877, !878, !879, !881, !885, !887, !888, !889, !890, !891}
!870 = !DILocalVariable(name: "mode_string", arg: 1, scope: !858, file: !156, line: 134, type: !31)
!871 = !DILocalVariable(name: "mc", scope: !858, file: !156, line: 137, type: !861)
!872 = !DILocalVariable(name: "used", scope: !858, file: !156, line: 138, type: !96)
!873 = !DILocalVariable(name: "p", scope: !858, file: !156, line: 139, type: !31)
!874 = !DILocalVariable(name: "octal_mode", scope: !875, file: !156, line: 143, type: !7)
!875 = distinct !DILexicalBlock(scope: !876, file: !156, line: 142, column: 5)
!876 = distinct !DILexicalBlock(scope: !858, file: !156, line: 141, column: 7)
!877 = !DILocalVariable(name: "mode", scope: !875, file: !156, line: 144, type: !690)
!878 = !DILocalVariable(name: "mentioned", scope: !875, file: !156, line: 145, type: !690)
!879 = !DILocalVariable(name: "needed", scope: !880, file: !156, line: 168, type: !96)
!880 = distinct !DILexicalBlock(scope: !858, file: !156, line: 167, column: 3)
!881 = !DILocalVariable(name: "affected", scope: !882, file: !156, line: 179, type: !690)
!882 = distinct !DILexicalBlock(scope: !883, file: !156, line: 177, column: 5)
!883 = distinct !DILexicalBlock(scope: !884, file: !156, line: 176, column: 3)
!884 = distinct !DILexicalBlock(scope: !858, file: !156, line: 176, column: 3)
!885 = !DILocalVariable(name: "op", scope: !886, file: !156, line: 206, type: !22)
!886 = distinct !DILexicalBlock(scope: !882, file: !156, line: 205, column: 9)
!887 = !DILocalVariable(name: "value", scope: !886, file: !156, line: 207, type: !690)
!888 = !DILocalVariable(name: "mentioned", scope: !886, file: !156, line: 208, type: !690)
!889 = !DILocalVariable(name: "flag", scope: !886, file: !156, line: 209, type: !22)
!890 = !DILocalVariable(name: "change", scope: !886, file: !156, line: 210, type: !861)
!891 = !DILocalVariable(name: "octal_mode", scope: !892, file: !156, line: 217, type: !7)
!892 = distinct !DILexicalBlock(scope: !893, file: !156, line: 216, column: 15)
!893 = distinct !DILexicalBlock(scope: !886, file: !156, line: 213, column: 13)
!894 = !DILocation(line: 134, column: 27, scope: !858)
!895 = !DILocation(line: 138, column: 10, scope: !858)
!896 = !DILocation(line: 141, column: 14, scope: !876)
!897 = !{!634, !634, i64 0}
!898 = !DILocation(line: 141, column: 27, scope: !876)
!899 = !DILocation(line: 150, column: 41, scope: !900)
!900 = distinct !DILexicalBlock(scope: !875, file: !156, line: 149, column: 9)
!901 = !DILocation(line: 0, scope: !900)
!902 = !DILocation(line: 139, column: 15, scope: !858)
!903 = !DILocation(line: 143, column: 20, scope: !875)
!904 = !DILocation(line: 150, column: 26, scope: !900)
!905 = !DILocation(line: 150, column: 43, scope: !900)
!906 = !DILocation(line: 150, column: 39, scope: !900)
!907 = !DILocation(line: 150, column: 46, scope: !900)
!908 = !DILocation(line: 151, column: 20, scope: !909)
!909 = distinct !DILexicalBlock(scope: !900, file: !156, line: 151, column: 15)
!910 = !DILocation(line: 151, column: 15, scope: !900)
!911 = !DILocation(line: 154, column: 21, scope: !875)
!912 = !DILocation(line: 154, column: 24, scope: !875)
!913 = distinct !{!913, !914, !915}
!914 = !DILocation(line: 148, column: 7, scope: !875)
!915 = !DILocation(line: 154, column: 35, scope: !875)
!916 = !DILocation(line: 156, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !875, file: !156, line: 156, column: 11)
!918 = !DILocation(line: 156, column: 11, scope: !875)
!919 = !DILocation(line: 144, column: 14, scope: !875)
!920 = !DILocation(line: 160, column: 22, scope: !875)
!921 = !DILocation(line: 160, column: 36, scope: !875)
!922 = !DILocation(line: 161, column: 28, scope: !875)
!923 = !DILocation(line: 161, column: 61, scope: !875)
!924 = !DILocation(line: 160, column: 20, scope: !875)
!925 = !DILocation(line: 145, column: 14, scope: !875)
!926 = !DILocalVariable(name: "new_mode", arg: 1, scope: !927, file: !156, line: 112, type: !690)
!927 = distinct !DISubprogram(name: "make_node_op_equals", scope: !156, file: !156, line: 112, type: !928, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!861, !690, !690}
!930 = !{!926, !931, !932}
!931 = !DILocalVariable(name: "mentioned", arg: 2, scope: !927, file: !156, line: 112, type: !690)
!932 = !DILocalVariable(name: "p", scope: !927, file: !156, line: 114, type: !861)
!933 = !DILocation(line: 112, column: 29, scope: !927, inlinedAt: !934)
!934 = distinct !DILocation(line: 163, column: 14, scope: !875)
!935 = !DILocation(line: 112, column: 46, scope: !927, inlinedAt: !934)
!936 = !DILocation(line: 114, column: 27, scope: !927, inlinedAt: !934)
!937 = !DILocation(line: 114, column: 23, scope: !927, inlinedAt: !934)
!938 = !DILocation(line: 115, column: 9, scope: !927, inlinedAt: !934)
!939 = !{!940, !634, i64 0}
!940 = !{!"mode_change", !634, i64 0, !634, i64 1, !746, i64 4, !746, i64 8, !746, i64 12}
!941 = !DILocation(line: 116, column: 6, scope: !927, inlinedAt: !934)
!942 = !DILocation(line: 116, column: 11, scope: !927, inlinedAt: !934)
!943 = !{!940, !634, i64 1}
!944 = !DILocation(line: 117, column: 6, scope: !927, inlinedAt: !934)
!945 = !DILocation(line: 117, column: 15, scope: !927, inlinedAt: !934)
!946 = !{!940, !746, i64 4}
!947 = !DILocation(line: 118, column: 6, scope: !927, inlinedAt: !934)
!948 = !DILocation(line: 118, column: 12, scope: !927, inlinedAt: !934)
!949 = !{!940, !746, i64 8}
!950 = !DILocation(line: 119, column: 6, scope: !927, inlinedAt: !934)
!951 = !DILocation(line: 119, column: 16, scope: !927, inlinedAt: !934)
!952 = !{!940, !746, i64 12}
!953 = !DILocation(line: 120, column: 8, scope: !927, inlinedAt: !934)
!954 = !DILocation(line: 120, column: 13, scope: !927, inlinedAt: !934)
!955 = !DILocation(line: 163, column: 7, scope: !875)
!956 = !DILocation(line: 169, column: 27, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !156, line: 169, column: 5)
!958 = distinct !DILexicalBlock(scope: !880, file: !156, line: 169, column: 5)
!959 = !DILocation(line: 0, scope: !957)
!960 = !DILocation(line: 168, column: 12, scope: !880)
!961 = !DILocation(line: 169, column: 5, scope: !958)
!962 = !DILocation(line: 170, column: 41, scope: !957)
!963 = !DILocation(line: 170, column: 14, scope: !957)
!964 = !DILocation(line: 169, column: 32, scope: !957)
!965 = !DILocation(line: 169, column: 5, scope: !957)
!966 = distinct !{!966, !961, !967}
!967 = !DILocation(line: 170, column: 53, scope: !958)
!968 = !DILocalVariable(name: "n", arg: 1, scope: !969, file: !175, line: 99, type: !96)
!969 = distinct !DISubprogram(name: "xnmalloc", scope: !175, file: !175, line: 99, type: !970, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!23, !96, !96}
!972 = !{!968, !973}
!973 = !DILocalVariable(name: "s", arg: 2, scope: !969, file: !175, line: 99, type: !96)
!974 = !DILocation(line: 99, column: 18, scope: !969, inlinedAt: !975)
!975 = distinct !DILocation(line: 171, column: 10, scope: !880)
!976 = !DILocation(line: 99, column: 28, scope: !969, inlinedAt: !975)
!977 = !DILocation(line: 101, column: 7, scope: !978, inlinedAt: !975)
!978 = distinct !DILexicalBlock(scope: !969, file: !175, line: 101, column: 7)
!979 = !DILocation(line: 101, column: 7, scope: !969, inlinedAt: !975)
!980 = !DILocation(line: 102, column: 5, scope: !978, inlinedAt: !975)
!981 = !DILocation(line: 103, column: 21, scope: !969, inlinedAt: !975)
!982 = !DILocation(line: 103, column: 10, scope: !969, inlinedAt: !975)
!983 = !DILocation(line: 171, column: 10, scope: !880)
!984 = !DILocation(line: 137, column: 23, scope: !858)
!985 = !DILocation(line: 176, column: 8, scope: !884)
!986 = !DILocation(line: 0, scope: !883)
!987 = !DILocation(line: 179, column: 14, scope: !882)
!988 = !DILocation(line: 182, column: 7, scope: !882)
!989 = !DILocation(line: 0, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !156, line: 182, column: 7)
!991 = distinct !DILexicalBlock(scope: !882, file: !156, line: 182, column: 7)
!992 = !DILocation(line: 0, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !156, line: 184, column: 11)
!994 = !DILocation(line: 183, column: 17, scope: !990)
!995 = !DILocation(line: 183, column: 9, scope: !990)
!996 = !DILocation(line: 206, column: 23, scope: !886)
!997 = !DILocation(line: 192, column: 13, scope: !993)
!998 = !DILocation(line: 195, column: 13, scope: !993)
!999 = !DILocation(line: 198, column: 13, scope: !993)
!1000 = !DILocation(line: 182, column: 16, scope: !990)
!1001 = !DILocation(line: 182, column: 7, scope: !990)
!1002 = distinct !{!1002, !1003, !1004}
!1003 = !DILocation(line: 182, column: 7, scope: !991)
!1004 = !DILocation(line: 201, column: 11, scope: !991)
!1005 = !DILocation(line: 206, column: 21, scope: !886)
!1006 = !DILocation(line: 0, scope: !886)
!1007 = !DILocation(line: 206, column: 16, scope: !886)
!1008 = !DILocation(line: 208, column: 18, scope: !886)
!1009 = !DILocation(line: 209, column: 16, scope: !886)
!1010 = !DILocation(line: 212, column: 19, scope: !886)
!1011 = !DILocation(line: 212, column: 11, scope: !886)
!1012 = !DILocation(line: 221, column: 36, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !892, file: !156, line: 220, column: 19)
!1014 = !DILocation(line: 221, column: 51, scope: !1013)
!1015 = !DILocation(line: 0, scope: !1013)
!1016 = !DILocation(line: 217, column: 30, scope: !892)
!1017 = !DILocation(line: 221, column: 53, scope: !1013)
!1018 = !DILocation(line: 221, column: 49, scope: !1013)
!1019 = !DILocation(line: 221, column: 56, scope: !1013)
!1020 = !DILocation(line: 222, column: 30, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !156, line: 222, column: 25)
!1022 = !DILocation(line: 222, column: 25, scope: !1013)
!1023 = !DILocation(line: 225, column: 31, scope: !892)
!1024 = !DILocation(line: 225, column: 34, scope: !892)
!1025 = distinct !{!1025, !1026, !1027}
!1026 = !DILocation(line: 219, column: 17, scope: !892)
!1027 = !DILocation(line: 225, column: 45, scope: !892)
!1028 = !DILocation(line: 227, column: 21, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !892, file: !156, line: 227, column: 21)
!1030 = !DILocation(line: 227, column: 30, scope: !1029)
!1031 = !DILocation(line: 227, column: 37, scope: !1029)
!1032 = !DILocation(line: 207, column: 18, scope: !886)
!1033 = !DILocation(line: 239, column: 16, scope: !893)
!1034 = !DILocation(line: 240, column: 15, scope: !893)
!1035 = !DILocation(line: 245, column: 16, scope: !893)
!1036 = !DILocation(line: 246, column: 15, scope: !893)
!1037 = !DILocation(line: 251, column: 16, scope: !893)
!1038 = !DILocation(line: 252, column: 15, scope: !893)
!1039 = !DILocation(line: 259, column: 25, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !156, line: 258, column: 15)
!1041 = distinct !DILexicalBlock(scope: !893, file: !156, line: 258, column: 15)
!1042 = !DILocation(line: 0, scope: !1040)
!1043 = !DILocation(line: 0, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !156, line: 260, column: 19)
!1045 = !DILocation(line: 256, column: 20, scope: !893)
!1046 = !DILocation(line: 259, column: 17, scope: !1040)
!1047 = !DILocation(line: 262, column: 27, scope: !1044)
!1048 = !DILocation(line: 263, column: 21, scope: !1044)
!1049 = !DILocation(line: 265, column: 27, scope: !1044)
!1050 = !DILocation(line: 266, column: 21, scope: !1044)
!1051 = !DILocation(line: 268, column: 27, scope: !1044)
!1052 = !DILocation(line: 269, column: 21, scope: !1044)
!1053 = !DILocation(line: 275, column: 27, scope: !1044)
!1054 = !DILocation(line: 276, column: 21, scope: !1044)
!1055 = !DILocation(line: 279, column: 27, scope: !1044)
!1056 = !DILocation(line: 280, column: 21, scope: !1044)
!1057 = !DILocation(line: 0, scope: !893)
!1058 = !DILocation(line: 258, column: 24, scope: !1040)
!1059 = !DILocation(line: 258, column: 15, scope: !1040)
!1060 = distinct !{!1060, !1061, !1062}
!1061 = !DILocation(line: 258, column: 15, scope: !1041)
!1062 = !DILocation(line: 283, column: 19, scope: !1041)
!1063 = !DILocation(line: 287, column: 28, scope: !886)
!1064 = !DILocation(line: 288, column: 19, scope: !886)
!1065 = !DILocation(line: 288, column: 22, scope: !886)
!1066 = !DILocation(line: 289, column: 19, scope: !886)
!1067 = !DILocation(line: 289, column: 24, scope: !886)
!1068 = !DILocation(line: 290, column: 19, scope: !886)
!1069 = !DILocation(line: 290, column: 28, scope: !886)
!1070 = !DILocation(line: 291, column: 19, scope: !886)
!1071 = !DILocation(line: 291, column: 25, scope: !886)
!1072 = !DILocation(line: 293, column: 14, scope: !886)
!1073 = !DILocation(line: 293, column: 38, scope: !886)
!1074 = !DILocation(line: 292, column: 19, scope: !886)
!1075 = !DILocation(line: 292, column: 29, scope: !886)
!1076 = !DILocation(line: 295, column: 14, scope: !882)
!1077 = !DILocation(line: 295, column: 24, scope: !882)
!1078 = !DILocation(line: 176, column: 28, scope: !883)
!1079 = !DILocation(line: 176, column: 3, scope: !883)
!1080 = distinct !{!1080, !1081, !1082}
!1081 = !DILocation(line: 176, column: 3, scope: !884)
!1082 = !DILocation(line: 299, column: 5, scope: !884)
!1083 = !DILocation(line: 303, column: 16, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !156, line: 302, column: 5)
!1085 = distinct !DILexicalBlock(scope: !858, file: !156, line: 301, column: 7)
!1086 = !DILocation(line: 303, column: 21, scope: !1084)
!1087 = !DILocation(line: 304, column: 7, scope: !1084)
!1088 = !DILocation(line: 308, column: 3, scope: !858)
!1089 = !DILocation(line: 309, column: 3, scope: !858)
!1090 = !DILocation(line: 310, column: 1, scope: !858)
!1091 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !156, file: !156, line: 316, type: !859, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !1092)
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1091, file: !156, line: 316, type: !31)
!1094 = !DILocalVariable(name: "ref_stats", scope: !1091, file: !156, line: 318, type: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1096, line: 46, size: 1152, elements: !1097)
!1096 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1097 = !{!1098, !1100, !1102, !1104, !1105, !1107, !1109, !1110, !1111, !1114, !1116, !1118, !1126, !1127, !1128}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1095, file: !1096, line: 48, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !693, line: 143, baseType: !98)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1095, file: !1096, line: 53, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !693, line: 146, baseType: !98)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1095, file: !1096, line: 61, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !693, line: 149, baseType: !98)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1095, file: !1096, line: 62, baseType: !692, size: 32, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1095, file: !1096, line: 64, baseType: !1106, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !693, line: 144, baseType: !7)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1095, file: !1096, line: 65, baseType: !1108, size: 32, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !693, line: 145, baseType: !7)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1095, file: !1096, line: 67, baseType: !34, size: 32, offset: 288)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1095, file: !1096, line: 69, baseType: !1099, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1095, file: !1096, line: 74, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !693, line: 150, baseType: !1113)
!1113 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1095, file: !1096, line: 78, baseType: !1115, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !693, line: 172, baseType: !1113)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1095, file: !1096, line: 80, baseType: !1117, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !693, line: 177, baseType: !1113)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1095, file: !1096, line: 91, baseType: !1119, size: 128, offset: 576)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1120, line: 9, size: 128, elements: !1121)
!1120 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1121 = !{!1122, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1119, file: !1120, line: 11, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !693, line: 158, baseType: !1113)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1119, file: !1120, line: 12, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !693, line: 194, baseType: !1113)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1095, file: !1096, line: 92, baseType: !1119, size: 128, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1095, file: !1096, line: 93, baseType: !1119, size: 128, offset: 832)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1095, file: !1096, line: 106, baseType: !1129, size: 192, offset: 960)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 192, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 3)
!1132 = !DILocation(line: 316, column: 35, scope: !1091)
!1133 = !DILocation(line: 318, column: 3, scope: !1091)
!1134 = !DILocation(line: 318, column: 15, scope: !1091)
!1135 = !DILocalVariable(name: "__path", arg: 1, scope: !1136, file: !1137, line: 453, type: !31)
!1136 = distinct !DISubprogram(name: "stat", scope: !1137, file: !1137, line: 453, type: !1138, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !1141)
!1137 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!34, !31, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1141 = !{!1135, !1142}
!1142 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1136, file: !1137, line: 453, type: !1140)
!1143 = !DILocation(line: 453, column: 1, scope: !1136, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 320, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1091, file: !156, line: 320, column: 7)
!1146 = !DILocation(line: 455, column: 10, scope: !1136, inlinedAt: !1144)
!1147 = !DILocation(line: 320, column: 35, scope: !1145)
!1148 = !DILocation(line: 320, column: 7, scope: !1091)
!1149 = !DILocation(line: 322, column: 41, scope: !1091)
!1150 = !{!1151, !746, i64 24}
!1151 = !{!"stat", !1152, i64 0, !1152, i64 8, !1152, i64 16, !746, i64 24, !746, i64 28, !746, i64 32, !746, i64 36, !1152, i64 40, !1152, i64 48, !1152, i64 56, !1152, i64 64, !1153, i64 72, !1153, i64 88, !1153, i64 104, !634, i64 120}
!1152 = !{!"long", !634, i64 0}
!1153 = !{!"timespec", !1152, i64 0, !1152, i64 8}
!1154 = !DILocation(line: 112, column: 29, scope: !927, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 322, column: 10, scope: !1091)
!1156 = !DILocation(line: 112, column: 46, scope: !927, inlinedAt: !1155)
!1157 = !DILocation(line: 114, column: 27, scope: !927, inlinedAt: !1155)
!1158 = !DILocation(line: 114, column: 23, scope: !927, inlinedAt: !1155)
!1159 = !DILocation(line: 115, column: 9, scope: !927, inlinedAt: !1155)
!1160 = !DILocation(line: 116, column: 6, scope: !927, inlinedAt: !1155)
!1161 = !DILocation(line: 116, column: 11, scope: !927, inlinedAt: !1155)
!1162 = !DILocation(line: 117, column: 6, scope: !927, inlinedAt: !1155)
!1163 = !DILocation(line: 117, column: 15, scope: !927, inlinedAt: !1155)
!1164 = !DILocation(line: 118, column: 6, scope: !927, inlinedAt: !1155)
!1165 = !DILocation(line: 118, column: 12, scope: !927, inlinedAt: !1155)
!1166 = !DILocation(line: 119, column: 6, scope: !927, inlinedAt: !1155)
!1167 = !DILocation(line: 119, column: 16, scope: !927, inlinedAt: !1155)
!1168 = !DILocation(line: 120, column: 8, scope: !927, inlinedAt: !1155)
!1169 = !DILocation(line: 120, column: 13, scope: !927, inlinedAt: !1155)
!1170 = !DILocation(line: 322, column: 3, scope: !1091)
!1171 = !DILocation(line: 0, scope: !1091)
!1172 = !DILocation(line: 323, column: 1, scope: !1091)
!1173 = distinct !DISubprogram(name: "mode_adjust", scope: !156, file: !156, line: 339, type: !1174, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !1179)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!690, !690, !54, !690, !1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1191, !1192, !1193}
!1180 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1173, file: !156, line: 339, type: !690)
!1181 = !DILocalVariable(name: "dir", arg: 2, scope: !1173, file: !156, line: 339, type: !54)
!1182 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1173, file: !156, line: 339, type: !690)
!1183 = !DILocalVariable(name: "changes", arg: 4, scope: !1173, file: !156, line: 340, type: !1176)
!1184 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1173, file: !156, line: 340, type: !1178)
!1185 = !DILocalVariable(name: "newmode", scope: !1173, file: !156, line: 343, type: !690)
!1186 = !DILocalVariable(name: "mode_bits", scope: !1173, file: !156, line: 346, type: !690)
!1187 = !DILocalVariable(name: "affected", scope: !1188, file: !156, line: 350, type: !690)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !156, line: 349, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !156, line: 348, column: 3)
!1190 = distinct !DILexicalBlock(scope: !1173, file: !156, line: 348, column: 3)
!1191 = !DILocalVariable(name: "omit_change", scope: !1188, file: !156, line: 351, type: !690)
!1192 = !DILocalVariable(name: "value", scope: !1188, file: !156, line: 353, type: !690)
!1193 = !DILocalVariable(name: "preserved", scope: !1194, file: !156, line: 393, type: !690)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !156, line: 392, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1188, file: !156, line: 387, column: 9)
!1196 = !DILocation(line: 339, column: 21, scope: !1173)
!1197 = !DILocation(line: 339, column: 35, scope: !1173)
!1198 = !DILocation(line: 339, column: 47, scope: !1173)
!1199 = !DILocation(line: 340, column: 40, scope: !1173)
!1200 = !DILocation(line: 340, column: 57, scope: !1173)
!1201 = !DILocation(line: 343, column: 28, scope: !1173)
!1202 = !DILocation(line: 343, column: 10, scope: !1173)
!1203 = !DILocation(line: 346, column: 10, scope: !1173)
!1204 = !DILocation(line: 348, column: 19, scope: !1189)
!1205 = !DILocation(line: 348, column: 24, scope: !1189)
!1206 = !DILocation(line: 348, column: 3, scope: !1190)
!1207 = !DILocation(line: 348, column: 10, scope: !1189)
!1208 = !DILocation(line: 350, column: 34, scope: !1188)
!1209 = !DILocation(line: 350, column: 14, scope: !1188)
!1210 = !DILocation(line: 352, column: 52, scope: !1188)
!1211 = !DILocation(line: 352, column: 41, scope: !1188)
!1212 = !DILocation(line: 352, column: 39, scope: !1188)
!1213 = !DILocation(line: 351, column: 14, scope: !1188)
!1214 = !DILocation(line: 353, column: 31, scope: !1188)
!1215 = !DILocation(line: 353, column: 14, scope: !1188)
!1216 = !DILocation(line: 355, column: 7, scope: !1188)
!1217 = !DILocation(line: 362, column: 17, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1188, file: !156, line: 356, column: 9)
!1219 = !DILocation(line: 365, column: 28, scope: !1218)
!1220 = !DILocation(line: 365, column: 22, scope: !1218)
!1221 = !DILocation(line: 367, column: 30, scope: !1218)
!1222 = !DILocation(line: 367, column: 24, scope: !1218)
!1223 = !DILocation(line: 369, column: 30, scope: !1218)
!1224 = !DILocation(line: 369, column: 24, scope: !1218)
!1225 = !DILocation(line: 367, column: 21, scope: !1218)
!1226 = !DILocation(line: 369, column: 21, scope: !1218)
!1227 = !DILocation(line: 365, column: 17, scope: !1218)
!1228 = !DILocation(line: 371, column: 11, scope: !1218)
!1229 = !DILocation(line: 376, column: 24, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1218, file: !156, line: 376, column: 15)
!1231 = !DILocation(line: 376, column: 57, scope: !1230)
!1232 = !DILocation(line: 377, column: 19, scope: !1230)
!1233 = !DILocation(line: 376, column: 15, scope: !1218)
!1234 = !DILocation(line: 0, scope: !1188)
!1235 = !DILocation(line: 384, column: 17, scope: !1188)
!1236 = !DILocation(line: 384, column: 55, scope: !1188)
!1237 = !DILocation(line: 384, column: 53, scope: !1188)
!1238 = !DILocation(line: 384, column: 13, scope: !1188)
!1239 = !DILocation(line: 386, column: 24, scope: !1188)
!1240 = !DILocation(line: 386, column: 15, scope: !1188)
!1241 = !DILocation(line: 386, column: 7, scope: !1188)
!1242 = !DILocation(line: 393, column: 44, scope: !1194)
!1243 = !DILocation(line: 393, column: 33, scope: !1194)
!1244 = !DILocation(line: 393, column: 59, scope: !1194)
!1245 = !DILocation(line: 393, column: 20, scope: !1194)
!1246 = !DILocation(line: 394, column: 42, scope: !1194)
!1247 = !DILocation(line: 394, column: 23, scope: !1194)
!1248 = !DILocation(line: 395, column: 32, scope: !1194)
!1249 = !DILocation(line: 395, column: 45, scope: !1194)
!1250 = !DILocation(line: 400, column: 21, scope: !1195)
!1251 = !DILocation(line: 401, column: 19, scope: !1195)
!1252 = !DILocation(line: 402, column: 11, scope: !1195)
!1253 = !DILocation(line: 405, column: 21, scope: !1195)
!1254 = !DILocation(line: 406, column: 22, scope: !1195)
!1255 = !DILocation(line: 406, column: 19, scope: !1195)
!1256 = !DILocation(line: 407, column: 11, scope: !1195)
!1257 = !DILocation(line: 0, scope: !1194)
!1258 = !DILocation(line: 348, column: 45, scope: !1189)
!1259 = distinct !{!1259, !1206, !1260}
!1260 = !DILocation(line: 409, column: 5, scope: !1190)
!1261 = !DILocation(line: 411, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1173, file: !156, line: 411, column: 7)
!1263 = !DILocation(line: 411, column: 7, scope: !1173)
!1264 = !DILocation(line: 412, column: 17, scope: !1262)
!1265 = !DILocation(line: 412, column: 5, scope: !1262)
!1266 = !DILocation(line: 413, column: 3, scope: !1173)
!1267 = distinct !DISubprogram(name: "set_program_name", scope: !68, file: !68, line: 39, type: !607, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !64, retainedNodes: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DILocalVariable(name: "argv0", arg: 1, scope: !1267, file: !68, line: 39, type: !31)
!1270 = !DILocalVariable(name: "slash", scope: !1267, file: !68, line: 46, type: !31)
!1271 = !DILocalVariable(name: "base", scope: !1267, file: !68, line: 47, type: !31)
!1272 = !DILocation(line: 39, column: 31, scope: !1267)
!1273 = !DILocation(line: 51, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !68, line: 51, column: 7)
!1275 = !DILocation(line: 51, column: 7, scope: !1267)
!1276 = !DILocation(line: 55, column: 14, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !68, line: 52, column: 5)
!1278 = !DILocation(line: 54, column: 7, scope: !1277)
!1279 = !DILocation(line: 56, column: 7, scope: !1277)
!1280 = !DILocation(line: 59, column: 11, scope: !1267)
!1281 = !DILocation(line: 46, column: 15, scope: !1267)
!1282 = !DILocation(line: 60, column: 17, scope: !1267)
!1283 = !DILocation(line: 60, column: 33, scope: !1267)
!1284 = !DILocation(line: 60, column: 11, scope: !1267)
!1285 = !DILocation(line: 47, column: 15, scope: !1267)
!1286 = !DILocation(line: 61, column: 12, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1267, file: !68, line: 61, column: 7)
!1288 = !DILocation(line: 61, column: 20, scope: !1287)
!1289 = !DILocation(line: 61, column: 25, scope: !1287)
!1290 = !DILocation(line: 61, column: 42, scope: !1287)
!1291 = !DILocation(line: 61, column: 28, scope: !1287)
!1292 = !DILocation(line: 61, column: 61, scope: !1287)
!1293 = !DILocation(line: 61, column: 7, scope: !1267)
!1294 = !DILocation(line: 64, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !68, line: 64, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !68, line: 62, column: 5)
!1297 = !DILocation(line: 64, column: 36, scope: !1295)
!1298 = !DILocation(line: 64, column: 11, scope: !1296)
!1299 = !DILocation(line: 66, column: 24, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !68, line: 65, column: 9)
!1301 = !DILocation(line: 70, column: 41, scope: !1300)
!1302 = !DILocation(line: 72, column: 9, scope: !1300)
!1303 = !DILocation(line: 84, column: 16, scope: !1267)
!1304 = !DILocation(line: 90, column: 27, scope: !1267)
!1305 = !DILocation(line: 92, column: 1, scope: !1267)
!1306 = distinct !DISubprogram(name: "clone_quoting_options", scope: !102, file: !102, line: 122, type: !1307, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1310)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1309, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "o", arg: 1, scope: !1306, file: !102, line: 122, type: !1309)
!1312 = !DILocalVariable(name: "e", scope: !1306, file: !102, line: 124, type: !34)
!1313 = !DILocalVariable(name: "p", scope: !1306, file: !102, line: 125, type: !1309)
!1314 = !DILocation(line: 122, column: 48, scope: !1306)
!1315 = !DILocation(line: 124, column: 11, scope: !1306)
!1316 = !DILocation(line: 124, column: 7, scope: !1306)
!1317 = !DILocation(line: 125, column: 40, scope: !1306)
!1318 = !DILocation(line: 125, column: 31, scope: !1306)
!1319 = !DILocation(line: 125, column: 27, scope: !1306)
!1320 = !DILocation(line: 127, column: 9, scope: !1306)
!1321 = !DILocation(line: 128, column: 3, scope: !1306)
!1322 = distinct !DISubprogram(name: "get_quoting_style", scope: !102, file: !102, line: 133, type: !1323, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1327)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!5, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "o", arg: 1, scope: !1322, file: !102, line: 133, type: !1325)
!1329 = !DILocation(line: 133, column: 50, scope: !1322)
!1330 = !DILocation(line: 135, column: 11, scope: !1322)
!1331 = !DILocation(line: 135, column: 46, scope: !1322)
!1332 = !{!1333, !634, i64 0}
!1333 = !{!"quoting_options", !634, i64 0, !746, i64 4, !634, i64 8, !633, i64 40, !633, i64 48}
!1334 = !DILocation(line: 135, column: 3, scope: !1322)
!1335 = distinct !DISubprogram(name: "set_quoting_style", scope: !102, file: !102, line: 141, type: !1336, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1309, !5}
!1338 = !{!1339, !1340}
!1339 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !102, line: 141, type: !1309)
!1340 = !DILocalVariable(name: "s", arg: 2, scope: !1335, file: !102, line: 141, type: !5)
!1341 = !DILocation(line: 141, column: 44, scope: !1335)
!1342 = !DILocation(line: 141, column: 66, scope: !1335)
!1343 = !DILocation(line: 143, column: 4, scope: !1335)
!1344 = !DILocation(line: 143, column: 39, scope: !1335)
!1345 = !DILocation(line: 143, column: 45, scope: !1335)
!1346 = !DILocation(line: 144, column: 1, scope: !1335)
!1347 = distinct !DISubprogram(name: "set_char_quoting", scope: !102, file: !102, line: 152, type: !1348, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!34, !1309, !22, !34}
!1350 = !{!1351, !1352, !1353, !1354, !1356, !1358, !1359}
!1351 = !DILocalVariable(name: "o", arg: 1, scope: !1347, file: !102, line: 152, type: !1309)
!1352 = !DILocalVariable(name: "c", arg: 2, scope: !1347, file: !102, line: 152, type: !22)
!1353 = !DILocalVariable(name: "i", arg: 3, scope: !1347, file: !102, line: 152, type: !34)
!1354 = !DILocalVariable(name: "uc", scope: !1347, file: !102, line: 154, type: !1355)
!1355 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1356 = !DILocalVariable(name: "p", scope: !1347, file: !102, line: 155, type: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1358 = !DILocalVariable(name: "shift", scope: !1347, file: !102, line: 157, type: !34)
!1359 = !DILocalVariable(name: "r", scope: !1347, file: !102, line: 158, type: !34)
!1360 = !DILocation(line: 152, column: 43, scope: !1347)
!1361 = !DILocation(line: 152, column: 51, scope: !1347)
!1362 = !DILocation(line: 152, column: 58, scope: !1347)
!1363 = !DILocation(line: 154, column: 17, scope: !1347)
!1364 = !DILocation(line: 156, column: 6, scope: !1347)
!1365 = !DILocation(line: 156, column: 62, scope: !1347)
!1366 = !DILocation(line: 156, column: 57, scope: !1347)
!1367 = !DILocation(line: 155, column: 17, scope: !1347)
!1368 = !DILocation(line: 157, column: 15, scope: !1347)
!1369 = !DILocation(line: 157, column: 7, scope: !1347)
!1370 = !DILocation(line: 158, column: 12, scope: !1347)
!1371 = !DILocation(line: 158, column: 15, scope: !1347)
!1372 = !DILocation(line: 158, column: 25, scope: !1347)
!1373 = !DILocation(line: 158, column: 7, scope: !1347)
!1374 = !DILocation(line: 159, column: 13, scope: !1347)
!1375 = !DILocation(line: 159, column: 18, scope: !1347)
!1376 = !DILocation(line: 159, column: 23, scope: !1347)
!1377 = !DILocation(line: 159, column: 6, scope: !1347)
!1378 = !DILocation(line: 160, column: 3, scope: !1347)
!1379 = distinct !DISubprogram(name: "set_quoting_flags", scope: !102, file: !102, line: 168, type: !1380, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!34, !1309, !34}
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "o", arg: 1, scope: !1379, file: !102, line: 168, type: !1309)
!1384 = !DILocalVariable(name: "i", arg: 2, scope: !1379, file: !102, line: 168, type: !34)
!1385 = !DILocalVariable(name: "r", scope: !1379, file: !102, line: 170, type: !34)
!1386 = !DILocation(line: 168, column: 44, scope: !1379)
!1387 = !DILocation(line: 168, column: 51, scope: !1379)
!1388 = !DILocation(line: 171, column: 8, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1379, file: !102, line: 171, column: 7)
!1390 = !DILocation(line: 171, column: 7, scope: !1379)
!1391 = !DILocation(line: 173, column: 10, scope: !1379)
!1392 = !{!1333, !746, i64 4}
!1393 = !DILocation(line: 170, column: 7, scope: !1379)
!1394 = !DILocation(line: 174, column: 12, scope: !1379)
!1395 = !DILocation(line: 175, column: 3, scope: !1379)
!1396 = distinct !DISubprogram(name: "set_custom_quoting", scope: !102, file: !102, line: 179, type: !1397, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1309, !31, !31}
!1399 = !{!1400, !1401, !1402}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1396, file: !102, line: 179, type: !1309)
!1401 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1396, file: !102, line: 180, type: !31)
!1402 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1396, file: !102, line: 180, type: !31)
!1403 = !DILocation(line: 179, column: 45, scope: !1396)
!1404 = !DILocation(line: 180, column: 33, scope: !1396)
!1405 = !DILocation(line: 180, column: 57, scope: !1396)
!1406 = !DILocation(line: 182, column: 8, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1396, file: !102, line: 182, column: 7)
!1408 = !DILocation(line: 182, column: 7, scope: !1396)
!1409 = !DILocation(line: 184, column: 6, scope: !1396)
!1410 = !DILocation(line: 184, column: 12, scope: !1396)
!1411 = !DILocation(line: 185, column: 8, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1396, file: !102, line: 185, column: 7)
!1413 = !DILocation(line: 185, column: 23, scope: !1412)
!1414 = !DILocation(line: 185, column: 19, scope: !1412)
!1415 = !DILocation(line: 186, column: 5, scope: !1412)
!1416 = !DILocation(line: 187, column: 6, scope: !1396)
!1417 = !DILocation(line: 187, column: 17, scope: !1396)
!1418 = !{!1333, !633, i64 40}
!1419 = !DILocation(line: 188, column: 6, scope: !1396)
!1420 = !DILocation(line: 188, column: 18, scope: !1396)
!1421 = !{!1333, !633, i64 48}
!1422 = !DILocation(line: 189, column: 1, scope: !1396)
!1423 = distinct !DISubprogram(name: "quotearg_buffer", scope: !102, file: !102, line: 784, type: !1424, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!96, !21, !96, !31, !96, !1325}
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1427 = !DILocalVariable(name: "buffer", arg: 1, scope: !1423, file: !102, line: 784, type: !21)
!1428 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1423, file: !102, line: 784, type: !96)
!1429 = !DILocalVariable(name: "arg", arg: 3, scope: !1423, file: !102, line: 785, type: !31)
!1430 = !DILocalVariable(name: "argsize", arg: 4, scope: !1423, file: !102, line: 785, type: !96)
!1431 = !DILocalVariable(name: "o", arg: 5, scope: !1423, file: !102, line: 786, type: !1325)
!1432 = !DILocalVariable(name: "p", scope: !1423, file: !102, line: 788, type: !1325)
!1433 = !DILocalVariable(name: "e", scope: !1423, file: !102, line: 789, type: !34)
!1434 = !DILocalVariable(name: "r", scope: !1423, file: !102, line: 790, type: !96)
!1435 = !DILocation(line: 784, column: 24, scope: !1423)
!1436 = !DILocation(line: 784, column: 39, scope: !1423)
!1437 = !DILocation(line: 785, column: 30, scope: !1423)
!1438 = !DILocation(line: 785, column: 42, scope: !1423)
!1439 = !DILocation(line: 786, column: 48, scope: !1423)
!1440 = !DILocation(line: 788, column: 37, scope: !1423)
!1441 = !DILocation(line: 788, column: 33, scope: !1423)
!1442 = !DILocation(line: 789, column: 11, scope: !1423)
!1443 = !DILocation(line: 789, column: 7, scope: !1423)
!1444 = !DILocation(line: 791, column: 43, scope: !1423)
!1445 = !DILocation(line: 791, column: 53, scope: !1423)
!1446 = !DILocation(line: 791, column: 60, scope: !1423)
!1447 = !DILocation(line: 792, column: 43, scope: !1423)
!1448 = !DILocation(line: 792, column: 58, scope: !1423)
!1449 = !DILocation(line: 790, column: 14, scope: !1423)
!1450 = !DILocation(line: 790, column: 10, scope: !1423)
!1451 = !DILocation(line: 793, column: 9, scope: !1423)
!1452 = !DILocation(line: 794, column: 3, scope: !1423)
!1453 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !102, file: !102, line: 256, type: !1454, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1458)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!96, !21, !96, !31, !96, !5, !34, !1456, !31, !31}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1483, !1484, !1485, !1486, !1487, !1490, !1491, !1509, !1512, !1513, !1520}
!1459 = !DILocalVariable(name: "buffer", arg: 1, scope: !1453, file: !102, line: 256, type: !21)
!1460 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1453, file: !102, line: 256, type: !96)
!1461 = !DILocalVariable(name: "arg", arg: 3, scope: !1453, file: !102, line: 257, type: !31)
!1462 = !DILocalVariable(name: "argsize", arg: 4, scope: !1453, file: !102, line: 257, type: !96)
!1463 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1453, file: !102, line: 258, type: !5)
!1464 = !DILocalVariable(name: "flags", arg: 6, scope: !1453, file: !102, line: 258, type: !34)
!1465 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1453, file: !102, line: 259, type: !1456)
!1466 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1453, file: !102, line: 260, type: !31)
!1467 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1453, file: !102, line: 261, type: !31)
!1468 = !DILocalVariable(name: "i", scope: !1453, file: !102, line: 263, type: !96)
!1469 = !DILocalVariable(name: "len", scope: !1453, file: !102, line: 264, type: !96)
!1470 = !DILocalVariable(name: "orig_buffersize", scope: !1453, file: !102, line: 265, type: !96)
!1471 = !DILocalVariable(name: "quote_string", scope: !1453, file: !102, line: 266, type: !31)
!1472 = !DILocalVariable(name: "quote_string_len", scope: !1453, file: !102, line: 267, type: !96)
!1473 = !DILocalVariable(name: "backslash_escapes", scope: !1453, file: !102, line: 268, type: !54)
!1474 = !DILocalVariable(name: "unibyte_locale", scope: !1453, file: !102, line: 269, type: !54)
!1475 = !DILocalVariable(name: "elide_outer_quotes", scope: !1453, file: !102, line: 270, type: !54)
!1476 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1453, file: !102, line: 271, type: !54)
!1477 = !DILocalVariable(name: "encountered_single_quote", scope: !1453, file: !102, line: 272, type: !54)
!1478 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1453, file: !102, line: 273, type: !54)
!1479 = !DILocalVariable(name: "c", scope: !1480, file: !102, line: 402, type: !1355)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !102, line: 401, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !102, line: 400, column: 3)
!1482 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 400, column: 3)
!1483 = !DILocalVariable(name: "esc", scope: !1480, file: !102, line: 403, type: !1355)
!1484 = !DILocalVariable(name: "is_right_quote", scope: !1480, file: !102, line: 404, type: !54)
!1485 = !DILocalVariable(name: "escaping", scope: !1480, file: !102, line: 405, type: !54)
!1486 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1480, file: !102, line: 406, type: !54)
!1487 = !DILocalVariable(name: "m", scope: !1488, file: !102, line: 610, type: !96)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 608, column: 11)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 426, column: 9)
!1490 = !DILocalVariable(name: "printable", scope: !1488, file: !102, line: 612, type: !54)
!1491 = !DILocalVariable(name: "mbstate", scope: !1492, file: !102, line: 621, type: !1494)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !102, line: 620, column: 15)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !102, line: 614, column: 17)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1495, line: 6, baseType: !1496)
!1495 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1497, line: 21, baseType: !1498)
!1497 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 13, size: 64, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1498, file: !1497, line: 15, baseType: !34, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1498, file: !1497, line: 20, baseType: !1502, size: 32, offset: 32)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1497, line: 16, size: 32, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1502, file: !1497, line: 18, baseType: !7, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1502, file: !1497, line: 19, baseType: !1506, size: 32)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1507)
!1507 = !{!1508}
!1508 = !DISubrange(count: 4)
!1509 = !DILocalVariable(name: "w", scope: !1510, file: !102, line: 631, type: !1511)
!1510 = distinct !DILexicalBlock(scope: !1492, file: !102, line: 630, column: 19)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !97, line: 90, baseType: !34)
!1512 = !DILocalVariable(name: "bytes", scope: !1510, file: !102, line: 632, type: !96)
!1513 = !DILocalVariable(name: "j", scope: !1514, file: !102, line: 657, type: !96)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !102, line: 656, column: 27)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !102, line: 654, column: 29)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !102, line: 649, column: 23)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !102, line: 641, column: 30)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !102, line: 636, column: 30)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !102, line: 634, column: 25)
!1520 = !DILocalVariable(name: "ilim", scope: !1521, file: !102, line: 684, type: !96)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !102, line: 681, column: 15)
!1522 = distinct !DILexicalBlock(scope: !1488, file: !102, line: 680, column: 17)
!1523 = !DILocation(line: 256, column: 33, scope: !1453)
!1524 = !DILocation(line: 256, column: 48, scope: !1453)
!1525 = !DILocation(line: 257, column: 39, scope: !1453)
!1526 = !DILocation(line: 257, column: 51, scope: !1453)
!1527 = !DILocation(line: 258, column: 46, scope: !1453)
!1528 = !DILocation(line: 258, column: 65, scope: !1453)
!1529 = !DILocation(line: 259, column: 47, scope: !1453)
!1530 = !DILocation(line: 260, column: 39, scope: !1453)
!1531 = !DILocation(line: 261, column: 39, scope: !1453)
!1532 = !DILocation(line: 264, column: 10, scope: !1453)
!1533 = !DILocation(line: 265, column: 10, scope: !1453)
!1534 = !DILocation(line: 266, column: 15, scope: !1453)
!1535 = !DILocation(line: 267, column: 10, scope: !1453)
!1536 = !DILocation(line: 268, column: 8, scope: !1453)
!1537 = !DILocation(line: 269, column: 25, scope: !1453)
!1538 = !DILocation(line: 269, column: 36, scope: !1453)
!1539 = !DILocation(line: 270, column: 8, scope: !1453)
!1540 = !DILocation(line: 271, column: 8, scope: !1453)
!1541 = !DILocation(line: 272, column: 8, scope: !1453)
!1542 = !DILocation(line: 273, column: 8, scope: !1453)
!1543 = !DILocation(line: 273, column: 3, scope: !1453)
!1544 = !DILocation(line: 0, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 317, column: 5)
!1546 = !DILocation(line: 316, column: 3, scope: !1453)
!1547 = !DILocation(line: 323, column: 11, scope: !1545)
!1548 = !DILocation(line: 323, column: 12, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !102, line: 323, column: 11)
!1550 = !DILocation(line: 324, column: 9, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !102, line: 324, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !102, line: 324, column: 9)
!1553 = !DILocation(line: 324, column: 9, scope: !1552)
!1554 = !DILocation(line: 362, column: 26, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !102, line: 340, column: 11)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !102, line: 339, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1545, file: !102, line: 338, column: 7)
!1558 = !DILocation(line: 363, column: 27, scope: !1555)
!1559 = !DILocation(line: 364, column: 11, scope: !1555)
!1560 = !DILocation(line: 365, column: 14, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !102, line: 365, column: 13)
!1562 = !DILocation(line: 365, column: 13, scope: !1557)
!1563 = !DILocation(line: 366, column: 43, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !102, line: 366, column: 11)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !102, line: 366, column: 11)
!1566 = !DILocation(line: 366, column: 11, scope: !1565)
!1567 = !DILocation(line: 367, column: 13, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !102, line: 367, column: 13)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !102, line: 367, column: 13)
!1570 = !DILocation(line: 367, column: 13, scope: !1569)
!1571 = !DILocation(line: 366, column: 70, scope: !1564)
!1572 = distinct !{!1572, !1566, !1573}
!1573 = !DILocation(line: 367, column: 13, scope: !1565)
!1574 = !DILocation(line: 370, column: 28, scope: !1557)
!1575 = !DILocation(line: 372, column: 7, scope: !1545)
!1576 = !DILocation(line: 376, column: 7, scope: !1545)
!1577 = !DILocation(line: 379, column: 7, scope: !1545)
!1578 = !DILocation(line: 381, column: 12, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1545, file: !102, line: 381, column: 11)
!1580 = !DILocation(line: 381, column: 11, scope: !1545)
!1581 = !DILocation(line: 0, scope: !1579)
!1582 = !DILocation(line: 386, column: 12, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1545, file: !102, line: 386, column: 11)
!1584 = !DILocation(line: 386, column: 11, scope: !1545)
!1585 = !DILocation(line: 387, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !102, line: 387, column: 9)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !102, line: 387, column: 9)
!1588 = !DILocation(line: 387, column: 9, scope: !1587)
!1589 = !DILocation(line: 394, column: 7, scope: !1545)
!1590 = !DILocation(line: 397, column: 7, scope: !1545)
!1591 = !DILocation(line: 0, scope: !1453)
!1592 = !DILocation(line: 263, column: 10, scope: !1453)
!1593 = !DILocation(line: 400, column: 8, scope: !1482)
!1594 = !DILocation(line: 0, scope: !1481)
!1595 = !DILocation(line: 400, column: 27, scope: !1481)
!1596 = !DILocation(line: 400, column: 19, scope: !1481)
!1597 = !DILocation(line: 400, column: 41, scope: !1481)
!1598 = !DILocation(line: 400, column: 48, scope: !1481)
!1599 = !DILocation(line: 400, column: 3, scope: !1482)
!1600 = !DILocation(line: 400, column: 60, scope: !1481)
!1601 = !DILocation(line: 404, column: 12, scope: !1480)
!1602 = !DILocation(line: 405, column: 12, scope: !1480)
!1603 = !DILocation(line: 406, column: 12, scope: !1480)
!1604 = !DILocation(line: 409, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 408, column: 11)
!1606 = !DILocation(line: 411, column: 17, scope: !1605)
!1607 = !DILocation(line: 412, column: 39, scope: !1605)
!1608 = !DILocation(line: 416, column: 32, scope: !1605)
!1609 = !DILocation(line: 412, column: 19, scope: !1605)
!1610 = !DILocation(line: 412, column: 15, scope: !1605)
!1611 = !DILocation(line: 417, column: 11, scope: !1605)
!1612 = !DILocation(line: 417, column: 26, scope: !1605)
!1613 = !DILocation(line: 417, column: 14, scope: !1605)
!1614 = !DILocation(line: 417, column: 63, scope: !1605)
!1615 = !DILocation(line: 408, column: 11, scope: !1480)
!1616 = !DILocation(line: 0, scope: !1480)
!1617 = !DILocation(line: 424, column: 11, scope: !1480)
!1618 = !DILocation(line: 402, column: 21, scope: !1480)
!1619 = !DILocation(line: 425, column: 7, scope: !1480)
!1620 = !DILocation(line: 428, column: 15, scope: !1489)
!1621 = !DILocation(line: 430, column: 15, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !102, line: 430, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !102, line: 429, column: 13)
!1624 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 428, column: 15)
!1625 = !DILocation(line: 430, column: 15, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !102, line: 430, column: 15)
!1627 = !DILocation(line: 430, column: 15, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !102, line: 430, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 430, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !102, line: 430, column: 15)
!1631 = !DILocation(line: 430, column: 15, scope: !1629)
!1632 = !DILocation(line: 430, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !102, line: 430, column: 15)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 430, column: 15)
!1635 = !DILocation(line: 430, column: 15, scope: !1634)
!1636 = !DILocation(line: 430, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !102, line: 430, column: 15)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 430, column: 15)
!1639 = !DILocation(line: 430, column: 15, scope: !1638)
!1640 = !DILocation(line: 430, column: 15, scope: !1630)
!1641 = !DILocation(line: 430, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !102, line: 430, column: 15)
!1643 = distinct !DILexicalBlock(scope: !1622, file: !102, line: 430, column: 15)
!1644 = !DILocation(line: 430, column: 15, scope: !1643)
!1645 = !DILocation(line: 438, column: 19, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1623, file: !102, line: 437, column: 19)
!1647 = !DILocation(line: 438, column: 24, scope: !1646)
!1648 = !DILocation(line: 438, column: 28, scope: !1646)
!1649 = !DILocation(line: 438, column: 38, scope: !1646)
!1650 = !DILocation(line: 438, column: 48, scope: !1646)
!1651 = !DILocation(line: 438, column: 59, scope: !1646)
!1652 = !DILocation(line: 440, column: 19, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !102, line: 440, column: 19)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !102, line: 440, column: 19)
!1655 = distinct !DILexicalBlock(scope: !1646, file: !102, line: 439, column: 17)
!1656 = !DILocation(line: 440, column: 19, scope: !1654)
!1657 = !DILocation(line: 441, column: 19, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !102, line: 441, column: 19)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !102, line: 441, column: 19)
!1660 = !DILocation(line: 441, column: 19, scope: !1659)
!1661 = !DILocation(line: 442, column: 17, scope: !1655)
!1662 = !DILocation(line: 449, column: 20, scope: !1624)
!1663 = !DILocation(line: 454, column: 11, scope: !1489)
!1664 = !DILocation(line: 457, column: 19, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 455, column: 13)
!1666 = !DILocation(line: 463, column: 19, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !102, line: 462, column: 19)
!1668 = !DILocation(line: 463, column: 24, scope: !1667)
!1669 = !DILocation(line: 463, column: 28, scope: !1667)
!1670 = !DILocation(line: 463, column: 38, scope: !1667)
!1671 = !DILocation(line: 463, column: 47, scope: !1667)
!1672 = !DILocation(line: 463, column: 41, scope: !1667)
!1673 = !DILocation(line: 463, column: 52, scope: !1667)
!1674 = !DILocation(line: 462, column: 19, scope: !1665)
!1675 = !DILocation(line: 464, column: 25, scope: !1667)
!1676 = !DILocation(line: 464, column: 17, scope: !1667)
!1677 = !DILocation(line: 471, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1667, file: !102, line: 465, column: 19)
!1679 = !DILocation(line: 475, column: 21, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !102, line: 475, column: 21)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 475, column: 21)
!1682 = !DILocation(line: 475, column: 21, scope: !1681)
!1683 = !DILocation(line: 476, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !102, line: 476, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 476, column: 21)
!1686 = !DILocation(line: 476, column: 21, scope: !1685)
!1687 = !DILocation(line: 477, column: 21, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !102, line: 477, column: 21)
!1689 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 477, column: 21)
!1690 = !DILocation(line: 477, column: 21, scope: !1689)
!1691 = !DILocation(line: 478, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !102, line: 478, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 478, column: 21)
!1694 = !DILocation(line: 478, column: 21, scope: !1693)
!1695 = !DILocation(line: 479, column: 21, scope: !1678)
!1696 = !DILocation(line: 403, column: 21, scope: !1480)
!1697 = !DILocation(line: 492, column: 31, scope: !1489)
!1698 = !DILocation(line: 493, column: 31, scope: !1489)
!1699 = !DILocation(line: 495, column: 31, scope: !1489)
!1700 = !DILocation(line: 496, column: 31, scope: !1489)
!1701 = !DILocation(line: 497, column: 31, scope: !1489)
!1702 = !DILocation(line: 500, column: 15, scope: !1489)
!1703 = !DILocation(line: 502, column: 19, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !102, line: 501, column: 13)
!1705 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 500, column: 15)
!1706 = !DILocation(line: 509, column: 33, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 509, column: 15)
!1708 = !DILocation(line: 0, scope: !1489)
!1709 = !DILocation(line: 514, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 513, column: 15)
!1711 = !DILocation(line: 518, column: 15, scope: !1489)
!1712 = !DILocation(line: 526, column: 26, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 526, column: 15)
!1714 = !DILocation(line: 526, column: 15, scope: !1489)
!1715 = !DILocation(line: 526, column: 40, scope: !1713)
!1716 = !DILocation(line: 526, column: 47, scope: !1713)
!1717 = !DILocation(line: 530, column: 17, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 530, column: 15)
!1719 = !DILocation(line: 526, column: 18, scope: !1713)
!1720 = !DILocation(line: 526, column: 65, scope: !1713)
!1721 = !DILocation(line: 530, column: 15, scope: !1489)
!1722 = !DILocation(line: 535, column: 11, scope: !1489)
!1723 = !DILocation(line: 549, column: 15, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 548, column: 15)
!1725 = !DILocation(line: 556, column: 15, scope: !1489)
!1726 = !DILocation(line: 558, column: 19, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !102, line: 557, column: 13)
!1728 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 556, column: 15)
!1729 = !DILocation(line: 561, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !102, line: 561, column: 19)
!1731 = !DILocation(line: 561, column: 35, scope: !1730)
!1732 = !DILocation(line: 561, column: 30, scope: !1730)
!1733 = !DILocation(line: 570, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !102, line: 570, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1727, file: !102, line: 570, column: 15)
!1736 = !DILocation(line: 570, column: 15, scope: !1735)
!1737 = !DILocation(line: 571, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !102, line: 571, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1727, file: !102, line: 571, column: 15)
!1740 = !DILocation(line: 571, column: 15, scope: !1739)
!1741 = !DILocation(line: 572, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !102, line: 572, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1727, file: !102, line: 572, column: 15)
!1744 = !DILocation(line: 572, column: 15, scope: !1743)
!1745 = !DILocation(line: 574, column: 13, scope: !1727)
!1746 = !DILocation(line: 614, column: 17, scope: !1488)
!1747 = !DILocation(line: 610, column: 20, scope: !1488)
!1748 = !DILocation(line: 617, column: 29, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1493, file: !102, line: 615, column: 15)
!1750 = !{!1751, !1751, i64 0}
!1751 = !{!"short", !634, i64 0}
!1752 = !DILocation(line: 617, column: 27, scope: !1749)
!1753 = !DILocation(line: 612, column: 18, scope: !1488)
!1754 = !DILocation(line: 618, column: 15, scope: !1749)
!1755 = !DILocation(line: 621, column: 17, scope: !1492)
!1756 = !DILocation(line: 622, column: 17, scope: !1492)
!1757 = !DILocation(line: 626, column: 29, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1492, file: !102, line: 626, column: 21)
!1759 = !DILocation(line: 626, column: 21, scope: !1492)
!1760 = !DILocation(line: 627, column: 29, scope: !1758)
!1761 = !DILocation(line: 627, column: 19, scope: !1758)
!1762 = !DILocation(line: 0, scope: !1605)
!1763 = !DILocation(line: 629, column: 17, scope: !1492)
!1764 = !DILocation(line: 624, column: 19, scope: !1492)
!1765 = !DILocation(line: 625, column: 27, scope: !1492)
!1766 = !DILocation(line: 631, column: 21, scope: !1510)
!1767 = !DILocation(line: 632, column: 56, scope: !1510)
!1768 = !DILocation(line: 632, column: 50, scope: !1510)
!1769 = !DILocation(line: 633, column: 53, scope: !1510)
!1770 = !DILocation(line: 621, column: 27, scope: !1492)
!1771 = !DILocation(line: 631, column: 29, scope: !1510)
!1772 = !DILocation(line: 632, column: 36, scope: !1510)
!1773 = !DILocation(line: 632, column: 28, scope: !1510)
!1774 = !DILocation(line: 634, column: 25, scope: !1510)
!1775 = !DILocation(line: 644, column: 38, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1517, file: !102, line: 642, column: 23)
!1777 = !DILocation(line: 644, column: 48, scope: !1776)
!1778 = !DILocation(line: 644, column: 51, scope: !1776)
!1779 = !DILocation(line: 644, column: 25, scope: !1776)
!1780 = !DILocation(line: 645, column: 28, scope: !1776)
!1781 = !DILocation(line: 644, column: 34, scope: !1776)
!1782 = distinct !{!1782, !1779, !1780}
!1783 = !DILocation(line: 658, column: 43, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !102, line: 658, column: 29)
!1785 = distinct !DILexicalBlock(scope: !1514, file: !102, line: 658, column: 29)
!1786 = !DILocation(line: 655, column: 29, scope: !1515)
!1787 = !DILocation(line: 657, column: 36, scope: !1514)
!1788 = !DILocation(line: 659, column: 49, scope: !1784)
!1789 = !DILocation(line: 659, column: 39, scope: !1784)
!1790 = !DILocation(line: 659, column: 31, scope: !1784)
!1791 = !DILocation(line: 658, column: 53, scope: !1784)
!1792 = !DILocation(line: 658, column: 29, scope: !1785)
!1793 = distinct !{!1793, !1792, !1794}
!1794 = !DILocation(line: 667, column: 33, scope: !1785)
!1795 = !DILocation(line: 674, column: 19, scope: !1492)
!1796 = !DILocation(line: 670, column: 41, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1516, file: !102, line: 670, column: 29)
!1798 = !DILocation(line: 670, column: 31, scope: !1797)
!1799 = !DILocation(line: 670, column: 29, scope: !1516)
!1800 = !DILocation(line: 672, column: 27, scope: !1516)
!1801 = !DILocation(line: 675, column: 26, scope: !1492)
!1802 = !DILocation(line: 675, column: 24, scope: !1492)
!1803 = !DILocation(line: 674, column: 19, scope: !1510)
!1804 = distinct !{!1804, !1763, !1805}
!1805 = !DILocation(line: 675, column: 44, scope: !1492)
!1806 = !DILocation(line: 676, column: 15, scope: !1493)
!1807 = !DILocation(line: 0, scope: !1758)
!1808 = !DILocation(line: 0, scope: !1492)
!1809 = !DILocation(line: 678, column: 40, scope: !1488)
!1810 = !DILocation(line: 680, column: 19, scope: !1522)
!1811 = !DILocation(line: 680, column: 45, scope: !1522)
!1812 = !DILocation(line: 680, column: 23, scope: !1522)
!1813 = !DILocation(line: 684, column: 33, scope: !1521)
!1814 = !DILocation(line: 684, column: 24, scope: !1521)
!1815 = !DILocation(line: 686, column: 17, scope: !1521)
!1816 = !DILocation(line: 0, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 687, column: 19)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !102, line: 686, column: 17)
!1819 = distinct !DILexicalBlock(scope: !1521, file: !102, line: 686, column: 17)
!1820 = !DILocation(line: 0, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 703, column: 21)
!1822 = !DILocation(line: 0, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !102, line: 696, column: 23)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !102, line: 695, column: 30)
!1825 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 688, column: 25)
!1826 = !DILocation(line: 688, column: 43, scope: !1825)
!1827 = !DILocation(line: 690, column: 25, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !102, line: 690, column: 25)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !102, line: 689, column: 23)
!1830 = !DILocation(line: 690, column: 25, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !102, line: 690, column: 25)
!1832 = !DILocation(line: 690, column: 25, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !102, line: 690, column: 25)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !102, line: 690, column: 25)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !102, line: 690, column: 25)
!1836 = !DILocation(line: 690, column: 25, scope: !1834)
!1837 = !DILocation(line: 690, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !102, line: 690, column: 25)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !102, line: 690, column: 25)
!1840 = !DILocation(line: 690, column: 25, scope: !1839)
!1841 = !DILocation(line: 690, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !102, line: 690, column: 25)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !102, line: 690, column: 25)
!1844 = !DILocation(line: 690, column: 25, scope: !1843)
!1845 = !DILocation(line: 690, column: 25, scope: !1835)
!1846 = !DILocation(line: 690, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !102, line: 690, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1828, file: !102, line: 690, column: 25)
!1849 = !DILocation(line: 690, column: 25, scope: !1848)
!1850 = !DILocation(line: 691, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !102, line: 691, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1829, file: !102, line: 691, column: 25)
!1853 = !DILocation(line: 691, column: 25, scope: !1852)
!1854 = !DILocation(line: 692, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !102, line: 692, column: 25)
!1856 = distinct !DILexicalBlock(scope: !1829, file: !102, line: 692, column: 25)
!1857 = !DILocation(line: 692, column: 25, scope: !1856)
!1858 = !DILocation(line: 693, column: 38, scope: !1829)
!1859 = !DILocation(line: 693, column: 33, scope: !1829)
!1860 = !DILocation(line: 694, column: 23, scope: !1829)
!1861 = !DILocation(line: 695, column: 30, scope: !1824)
!1862 = !DILocation(line: 695, column: 30, scope: !1825)
!1863 = !DILocation(line: 697, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !102, line: 697, column: 25)
!1865 = distinct !DILexicalBlock(scope: !1823, file: !102, line: 697, column: 25)
!1866 = !DILocation(line: 697, column: 25, scope: !1865)
!1867 = !DILocation(line: 699, column: 23, scope: !1823)
!1868 = !DILocation(line: 0, scope: !1856)
!1869 = !DILocation(line: 0, scope: !1829)
!1870 = !DILocation(line: 0, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1605, file: !102, line: 418, column: 9)
!1872 = !DILocation(line: 0, scope: !1828)
!1873 = !DILocation(line: 700, column: 35, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 700, column: 25)
!1875 = !DILocation(line: 700, column: 30, scope: !1874)
!1876 = !DILocation(line: 700, column: 25, scope: !1817)
!1877 = !DILocation(line: 702, column: 21, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !102, line: 702, column: 21)
!1879 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 702, column: 21)
!1880 = !DILocation(line: 702, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !102, line: 702, column: 21)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !102, line: 702, column: 21)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !102, line: 702, column: 21)
!1884 = !DILocation(line: 702, column: 21, scope: !1882)
!1885 = !DILocation(line: 702, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !102, line: 702, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !102, line: 702, column: 21)
!1888 = !DILocation(line: 702, column: 21, scope: !1887)
!1889 = !DILocation(line: 702, column: 21, scope: !1883)
!1890 = !DILocation(line: 0, scope: !1865)
!1891 = !DILocation(line: 703, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1821, file: !102, line: 703, column: 21)
!1893 = !DILocation(line: 703, column: 21, scope: !1821)
!1894 = !DILocation(line: 704, column: 25, scope: !1817)
!1895 = !DILocation(line: 686, column: 17, scope: !1818)
!1896 = distinct !{!1896, !1897, !1898}
!1897 = !DILocation(line: 686, column: 17, scope: !1819)
!1898 = !DILocation(line: 705, column: 19, scope: !1819)
!1899 = !DILocation(line: 0, scope: !1482)
!1900 = !DILocation(line: 416, column: 30, scope: !1605)
!1901 = !DILocation(line: 712, column: 34, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 712, column: 11)
!1903 = !DILocation(line: 714, column: 14, scope: !1902)
!1904 = !DILocation(line: 715, column: 14, scope: !1902)
!1905 = !DILocation(line: 715, column: 35, scope: !1902)
!1906 = !DILocation(line: 715, column: 17, scope: !1902)
!1907 = !DILocation(line: 715, column: 47, scope: !1902)
!1908 = !DILocation(line: 715, column: 65, scope: !1902)
!1909 = !DILocation(line: 716, column: 15, scope: !1902)
!1910 = !DILocation(line: 716, column: 11, scope: !1902)
!1911 = !DILocation(line: 712, column: 11, scope: !1480)
!1912 = !DILocation(line: 400, column: 10, scope: !1482)
!1913 = !DILocation(line: 0, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !102, line: 519, column: 13)
!1915 = distinct !DILexicalBlock(scope: !1489, file: !102, line: 518, column: 15)
!1916 = !DILocation(line: 720, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 720, column: 7)
!1918 = !DILocation(line: 720, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1917, file: !102, line: 720, column: 7)
!1920 = !DILocation(line: 720, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !102, line: 720, column: 7)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !102, line: 720, column: 7)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !102, line: 720, column: 7)
!1924 = !DILocation(line: 720, column: 7, scope: !1922)
!1925 = !DILocation(line: 720, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !102, line: 720, column: 7)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !102, line: 720, column: 7)
!1928 = !DILocation(line: 720, column: 7, scope: !1927)
!1929 = !DILocation(line: 720, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !102, line: 720, column: 7)
!1931 = distinct !DILexicalBlock(scope: !1923, file: !102, line: 720, column: 7)
!1932 = !DILocation(line: 720, column: 7, scope: !1931)
!1933 = !DILocation(line: 720, column: 7, scope: !1923)
!1934 = !DILocation(line: 720, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !102, line: 720, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1917, file: !102, line: 720, column: 7)
!1937 = !DILocation(line: 720, column: 7, scope: !1936)
!1938 = !DILocation(line: 723, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !102, line: 723, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 723, column: 7)
!1941 = !DILocation(line: 424, column: 9, scope: !1480)
!1942 = !DILocation(line: 723, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !102, line: 723, column: 7)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !102, line: 723, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1939, file: !102, line: 723, column: 7)
!1946 = !DILocation(line: 723, column: 7, scope: !1944)
!1947 = !DILocation(line: 723, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !102, line: 723, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !102, line: 723, column: 7)
!1950 = !DILocation(line: 723, column: 7, scope: !1949)
!1951 = !DILocation(line: 723, column: 7, scope: !1945)
!1952 = !DILocation(line: 724, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !102, line: 724, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 724, column: 7)
!1955 = !DILocation(line: 724, column: 7, scope: !1954)
!1956 = !DILocation(line: 726, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1480, file: !102, line: 726, column: 11)
!1958 = !DILocation(line: 726, column: 11, scope: !1480)
!1959 = !DILocation(line: 728, column: 5, scope: !1481)
!1960 = !DILocation(line: 400, column: 75, scope: !1481)
!1961 = !DILocation(line: 400, column: 3, scope: !1481)
!1962 = distinct !{!1962, !1599, !1963}
!1963 = !DILocation(line: 728, column: 5, scope: !1482)
!1964 = !DILocation(line: 730, column: 11, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 730, column: 7)
!1966 = !DILocation(line: 730, column: 16, scope: !1965)
!1967 = !DILocation(line: 738, column: 51, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 738, column: 7)
!1969 = !DILocation(line: 739, column: 10, scope: !1968)
!1970 = !DILocation(line: 741, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !102, line: 741, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !102, line: 740, column: 5)
!1973 = !DILocation(line: 741, column: 11, scope: !1972)
!1974 = !DILocation(line: 742, column: 16, scope: !1971)
!1975 = !DILocation(line: 742, column: 9, scope: !1971)
!1976 = !DILocation(line: 746, column: 18, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1971, file: !102, line: 746, column: 16)
!1978 = !DILocation(line: 746, column: 32, scope: !1977)
!1979 = !DILocation(line: 746, column: 29, scope: !1977)
!1980 = !DILocation(line: 755, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 755, column: 7)
!1982 = !DILocation(line: 755, column: 20, scope: !1981)
!1983 = !DILocation(line: 756, column: 12, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !102, line: 756, column: 5)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !102, line: 756, column: 5)
!1986 = !DILocation(line: 756, column: 5, scope: !1985)
!1987 = !DILocation(line: 757, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !102, line: 757, column: 7)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !102, line: 757, column: 7)
!1990 = !DILocation(line: 757, column: 7, scope: !1989)
!1991 = !DILocation(line: 756, column: 39, scope: !1984)
!1992 = distinct !{!1992, !1986, !1993}
!1993 = !DILocation(line: 757, column: 7, scope: !1985)
!1994 = !DILocation(line: 759, column: 11, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 759, column: 7)
!1996 = !DILocation(line: 759, column: 7, scope: !1453)
!1997 = !DILocation(line: 760, column: 5, scope: !1995)
!1998 = !DILocation(line: 760, column: 17, scope: !1995)
!1999 = !DILocation(line: 766, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 766, column: 7)
!2001 = !DILocation(line: 766, column: 54, scope: !2000)
!2002 = !DILocation(line: 766, column: 51, scope: !2000)
!2003 = !DILocation(line: 770, column: 42, scope: !1453)
!2004 = !DILocation(line: 768, column: 10, scope: !1453)
!2005 = !DILocation(line: 768, column: 3, scope: !1453)
!2006 = !DILocation(line: 772, column: 1, scope: !1453)
!2007 = distinct !DISubprogram(name: "gettext_quote", scope: !102, file: !102, line: 207, type: !2008, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!31, !31, !5}
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DILocalVariable(name: "msgid", arg: 1, scope: !2007, file: !102, line: 207, type: !31)
!2012 = !DILocalVariable(name: "s", arg: 2, scope: !2007, file: !102, line: 207, type: !5)
!2013 = !DILocalVariable(name: "translation", scope: !2007, file: !102, line: 209, type: !31)
!2014 = !DILocalVariable(name: "locale_code", scope: !2007, file: !102, line: 210, type: !31)
!2015 = !DILocation(line: 207, column: 28, scope: !2007)
!2016 = !DILocation(line: 207, column: 54, scope: !2007)
!2017 = !DILocation(line: 209, column: 29, scope: !2007)
!2018 = !DILocation(line: 209, column: 15, scope: !2007)
!2019 = !DILocation(line: 212, column: 19, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2007, file: !102, line: 212, column: 7)
!2021 = !DILocation(line: 212, column: 7, scope: !2007)
!2022 = !DILocation(line: 233, column: 17, scope: !2007)
!2023 = !DILocation(line: 210, column: 15, scope: !2007)
!2024 = !DILocalVariable(name: "s1", arg: 1, scope: !2025, file: !2026, line: 160, type: !31)
!2025 = distinct !DISubprogram(name: "strcaseeq0", scope: !2026, file: !2026, line: 160, type: !2027, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2029)
!2026 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2029 = !{!2024, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2030 = !DILocalVariable(name: "s2", arg: 2, scope: !2025, file: !2026, line: 160, type: !31)
!2031 = !DILocalVariable(name: "s20", arg: 3, scope: !2025, file: !2026, line: 160, type: !22)
!2032 = !DILocalVariable(name: "s21", arg: 4, scope: !2025, file: !2026, line: 160, type: !22)
!2033 = !DILocalVariable(name: "s22", arg: 5, scope: !2025, file: !2026, line: 160, type: !22)
!2034 = !DILocalVariable(name: "s23", arg: 6, scope: !2025, file: !2026, line: 160, type: !22)
!2035 = !DILocalVariable(name: "s24", arg: 7, scope: !2025, file: !2026, line: 160, type: !22)
!2036 = !DILocalVariable(name: "s25", arg: 8, scope: !2025, file: !2026, line: 160, type: !22)
!2037 = !DILocalVariable(name: "s26", arg: 9, scope: !2025, file: !2026, line: 160, type: !22)
!2038 = !DILocalVariable(name: "s27", arg: 10, scope: !2025, file: !2026, line: 160, type: !22)
!2039 = !DILocalVariable(name: "s28", arg: 11, scope: !2025, file: !2026, line: 160, type: !22)
!2040 = !DILocation(line: 160, column: 25, scope: !2025, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 234, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2007, file: !102, line: 234, column: 7)
!2043 = !DILocation(line: 160, column: 41, scope: !2025, inlinedAt: !2041)
!2044 = !DILocation(line: 160, column: 50, scope: !2025, inlinedAt: !2041)
!2045 = !DILocation(line: 160, column: 60, scope: !2025, inlinedAt: !2041)
!2046 = !DILocation(line: 160, column: 70, scope: !2025, inlinedAt: !2041)
!2047 = !DILocation(line: 160, column: 80, scope: !2025, inlinedAt: !2041)
!2048 = !DILocation(line: 160, column: 90, scope: !2025, inlinedAt: !2041)
!2049 = !DILocation(line: 160, column: 100, scope: !2025, inlinedAt: !2041)
!2050 = !DILocation(line: 160, column: 110, scope: !2025, inlinedAt: !2041)
!2051 = !DILocation(line: 160, column: 120, scope: !2025, inlinedAt: !2041)
!2052 = !DILocation(line: 160, column: 130, scope: !2025, inlinedAt: !2041)
!2053 = !DILocation(line: 162, column: 7, scope: !2054, inlinedAt: !2041)
!2054 = distinct !DILexicalBlock(scope: !2025, file: !2026, line: 162, column: 7)
!2055 = !DILocalVariable(name: "s1", arg: 1, scope: !2056, file: !2026, line: 146, type: !31)
!2056 = distinct !DISubprogram(name: "strcaseeq1", scope: !2026, file: !2026, line: 146, type: !2057, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22, !22}
!2059 = !{!2055, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2060 = !DILocalVariable(name: "s2", arg: 2, scope: !2056, file: !2026, line: 146, type: !31)
!2061 = !DILocalVariable(name: "s21", arg: 3, scope: !2056, file: !2026, line: 146, type: !22)
!2062 = !DILocalVariable(name: "s22", arg: 4, scope: !2056, file: !2026, line: 146, type: !22)
!2063 = !DILocalVariable(name: "s23", arg: 5, scope: !2056, file: !2026, line: 146, type: !22)
!2064 = !DILocalVariable(name: "s24", arg: 6, scope: !2056, file: !2026, line: 146, type: !22)
!2065 = !DILocalVariable(name: "s25", arg: 7, scope: !2056, file: !2026, line: 146, type: !22)
!2066 = !DILocalVariable(name: "s26", arg: 8, scope: !2056, file: !2026, line: 146, type: !22)
!2067 = !DILocalVariable(name: "s27", arg: 9, scope: !2056, file: !2026, line: 146, type: !22)
!2068 = !DILocalVariable(name: "s28", arg: 10, scope: !2056, file: !2026, line: 146, type: !22)
!2069 = !DILocation(line: 146, column: 25, scope: !2056, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 167, column: 16, scope: !2071, inlinedAt: !2041)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2026, line: 164, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2054, file: !2026, line: 163, column: 5)
!2073 = !DILocation(line: 146, column: 41, scope: !2056, inlinedAt: !2070)
!2074 = !DILocation(line: 146, column: 50, scope: !2056, inlinedAt: !2070)
!2075 = !DILocation(line: 146, column: 60, scope: !2056, inlinedAt: !2070)
!2076 = !DILocation(line: 146, column: 70, scope: !2056, inlinedAt: !2070)
!2077 = !DILocation(line: 146, column: 80, scope: !2056, inlinedAt: !2070)
!2078 = !DILocation(line: 146, column: 90, scope: !2056, inlinedAt: !2070)
!2079 = !DILocation(line: 146, column: 100, scope: !2056, inlinedAt: !2070)
!2080 = !DILocation(line: 146, column: 110, scope: !2056, inlinedAt: !2070)
!2081 = !DILocation(line: 146, column: 120, scope: !2056, inlinedAt: !2070)
!2082 = !DILocation(line: 148, column: 7, scope: !2083, inlinedAt: !2070)
!2083 = distinct !DILexicalBlock(scope: !2056, file: !2026, line: 148, column: 7)
!2084 = !DILocalVariable(name: "s1", arg: 1, scope: !2085, file: !2026, line: 132, type: !31)
!2085 = distinct !DISubprogram(name: "strcaseeq2", scope: !2026, file: !2026, line: 132, type: !2086, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22}
!2088 = !{!2084, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2089 = !DILocalVariable(name: "s2", arg: 2, scope: !2085, file: !2026, line: 132, type: !31)
!2090 = !DILocalVariable(name: "s22", arg: 3, scope: !2085, file: !2026, line: 132, type: !22)
!2091 = !DILocalVariable(name: "s23", arg: 4, scope: !2085, file: !2026, line: 132, type: !22)
!2092 = !DILocalVariable(name: "s24", arg: 5, scope: !2085, file: !2026, line: 132, type: !22)
!2093 = !DILocalVariable(name: "s25", arg: 6, scope: !2085, file: !2026, line: 132, type: !22)
!2094 = !DILocalVariable(name: "s26", arg: 7, scope: !2085, file: !2026, line: 132, type: !22)
!2095 = !DILocalVariable(name: "s27", arg: 8, scope: !2085, file: !2026, line: 132, type: !22)
!2096 = !DILocalVariable(name: "s28", arg: 9, scope: !2085, file: !2026, line: 132, type: !22)
!2097 = !DILocation(line: 132, column: 25, scope: !2085, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 153, column: 16, scope: !2099, inlinedAt: !2070)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !2026, line: 150, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2083, file: !2026, line: 149, column: 5)
!2101 = !DILocation(line: 132, column: 41, scope: !2085, inlinedAt: !2098)
!2102 = !DILocation(line: 132, column: 50, scope: !2085, inlinedAt: !2098)
!2103 = !DILocation(line: 132, column: 60, scope: !2085, inlinedAt: !2098)
!2104 = !DILocation(line: 132, column: 70, scope: !2085, inlinedAt: !2098)
!2105 = !DILocation(line: 132, column: 80, scope: !2085, inlinedAt: !2098)
!2106 = !DILocation(line: 132, column: 90, scope: !2085, inlinedAt: !2098)
!2107 = !DILocation(line: 132, column: 100, scope: !2085, inlinedAt: !2098)
!2108 = !DILocation(line: 132, column: 110, scope: !2085, inlinedAt: !2098)
!2109 = !DILocation(line: 134, column: 7, scope: !2110, inlinedAt: !2098)
!2110 = distinct !DILexicalBlock(scope: !2085, file: !2026, line: 134, column: 7)
!2111 = !DILocalVariable(name: "s1", arg: 1, scope: !2112, file: !2026, line: 118, type: !31)
!2112 = distinct !DISubprogram(name: "strcaseeq3", scope: !2026, file: !2026, line: 118, type: !2113, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22}
!2115 = !{!2111, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2116 = !DILocalVariable(name: "s2", arg: 2, scope: !2112, file: !2026, line: 118, type: !31)
!2117 = !DILocalVariable(name: "s23", arg: 3, scope: !2112, file: !2026, line: 118, type: !22)
!2118 = !DILocalVariable(name: "s24", arg: 4, scope: !2112, file: !2026, line: 118, type: !22)
!2119 = !DILocalVariable(name: "s25", arg: 5, scope: !2112, file: !2026, line: 118, type: !22)
!2120 = !DILocalVariable(name: "s26", arg: 6, scope: !2112, file: !2026, line: 118, type: !22)
!2121 = !DILocalVariable(name: "s27", arg: 7, scope: !2112, file: !2026, line: 118, type: !22)
!2122 = !DILocalVariable(name: "s28", arg: 8, scope: !2112, file: !2026, line: 118, type: !22)
!2123 = !DILocation(line: 118, column: 25, scope: !2112, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 139, column: 16, scope: !2125, inlinedAt: !2098)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !2026, line: 136, column: 11)
!2126 = distinct !DILexicalBlock(scope: !2110, file: !2026, line: 135, column: 5)
!2127 = !DILocation(line: 118, column: 41, scope: !2112, inlinedAt: !2124)
!2128 = !DILocation(line: 118, column: 50, scope: !2112, inlinedAt: !2124)
!2129 = !DILocation(line: 118, column: 60, scope: !2112, inlinedAt: !2124)
!2130 = !DILocation(line: 118, column: 70, scope: !2112, inlinedAt: !2124)
!2131 = !DILocation(line: 118, column: 80, scope: !2112, inlinedAt: !2124)
!2132 = !DILocation(line: 118, column: 90, scope: !2112, inlinedAt: !2124)
!2133 = !DILocation(line: 118, column: 100, scope: !2112, inlinedAt: !2124)
!2134 = !DILocation(line: 120, column: 7, scope: !2135, inlinedAt: !2124)
!2135 = distinct !DILexicalBlock(scope: !2112, file: !2026, line: 120, column: 7)
!2136 = !DILocation(line: 120, column: 7, scope: !2112, inlinedAt: !2124)
!2137 = !DILocalVariable(name: "s1", arg: 1, scope: !2138, file: !2026, line: 104, type: !31)
!2138 = distinct !DISubprogram(name: "strcaseeq4", scope: !2026, file: !2026, line: 104, type: !2139, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!34, !31, !31, !22, !22, !22, !22, !22}
!2141 = !{!2137, !2142, !2143, !2144, !2145, !2146, !2147}
!2142 = !DILocalVariable(name: "s2", arg: 2, scope: !2138, file: !2026, line: 104, type: !31)
!2143 = !DILocalVariable(name: "s24", arg: 3, scope: !2138, file: !2026, line: 104, type: !22)
!2144 = !DILocalVariable(name: "s25", arg: 4, scope: !2138, file: !2026, line: 104, type: !22)
!2145 = !DILocalVariable(name: "s26", arg: 5, scope: !2138, file: !2026, line: 104, type: !22)
!2146 = !DILocalVariable(name: "s27", arg: 6, scope: !2138, file: !2026, line: 104, type: !22)
!2147 = !DILocalVariable(name: "s28", arg: 7, scope: !2138, file: !2026, line: 104, type: !22)
!2148 = !DILocation(line: 104, column: 25, scope: !2138, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 125, column: 16, scope: !2150, inlinedAt: !2124)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !2026, line: 122, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2135, file: !2026, line: 121, column: 5)
!2152 = !DILocation(line: 104, column: 41, scope: !2138, inlinedAt: !2149)
!2153 = !DILocation(line: 104, column: 50, scope: !2138, inlinedAt: !2149)
!2154 = !DILocation(line: 104, column: 60, scope: !2138, inlinedAt: !2149)
!2155 = !DILocation(line: 104, column: 70, scope: !2138, inlinedAt: !2149)
!2156 = !DILocation(line: 104, column: 80, scope: !2138, inlinedAt: !2149)
!2157 = !DILocation(line: 104, column: 90, scope: !2138, inlinedAt: !2149)
!2158 = !DILocation(line: 106, column: 7, scope: !2159, inlinedAt: !2149)
!2159 = distinct !DILexicalBlock(scope: !2138, file: !2026, line: 106, column: 7)
!2160 = !DILocation(line: 106, column: 7, scope: !2138, inlinedAt: !2149)
!2161 = !DILocalVariable(name: "s1", arg: 1, scope: !2162, file: !2026, line: 90, type: !31)
!2162 = distinct !DISubprogram(name: "strcaseeq5", scope: !2026, file: !2026, line: 90, type: !2163, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!34, !31, !31, !22, !22, !22, !22}
!2165 = !{!2161, !2166, !2167, !2168, !2169, !2170}
!2166 = !DILocalVariable(name: "s2", arg: 2, scope: !2162, file: !2026, line: 90, type: !31)
!2167 = !DILocalVariable(name: "s25", arg: 3, scope: !2162, file: !2026, line: 90, type: !22)
!2168 = !DILocalVariable(name: "s26", arg: 4, scope: !2162, file: !2026, line: 90, type: !22)
!2169 = !DILocalVariable(name: "s27", arg: 5, scope: !2162, file: !2026, line: 90, type: !22)
!2170 = !DILocalVariable(name: "s28", arg: 6, scope: !2162, file: !2026, line: 90, type: !22)
!2171 = !DILocation(line: 90, column: 25, scope: !2162, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 111, column: 16, scope: !2173, inlinedAt: !2149)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2026, line: 108, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !2026, line: 107, column: 5)
!2175 = !DILocation(line: 90, column: 41, scope: !2162, inlinedAt: !2172)
!2176 = !DILocation(line: 90, column: 50, scope: !2162, inlinedAt: !2172)
!2177 = !DILocation(line: 90, column: 60, scope: !2162, inlinedAt: !2172)
!2178 = !DILocation(line: 90, column: 70, scope: !2162, inlinedAt: !2172)
!2179 = !DILocation(line: 90, column: 80, scope: !2162, inlinedAt: !2172)
!2180 = !DILocation(line: 92, column: 7, scope: !2181, inlinedAt: !2172)
!2181 = distinct !DILexicalBlock(scope: !2162, file: !2026, line: 92, column: 7)
!2182 = !DILocation(line: 92, column: 7, scope: !2162, inlinedAt: !2172)
!2183 = !DILocation(line: 235, column: 12, scope: !2042)
!2184 = !DILocation(line: 235, column: 21, scope: !2042)
!2185 = !DILocation(line: 235, column: 5, scope: !2042)
!2186 = !DILocation(line: 146, column: 25, scope: !2056, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 167, column: 16, scope: !2071, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 236, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2007, file: !102, line: 236, column: 7)
!2190 = !DILocation(line: 146, column: 41, scope: !2056, inlinedAt: !2187)
!2191 = !DILocation(line: 146, column: 50, scope: !2056, inlinedAt: !2187)
!2192 = !DILocation(line: 146, column: 60, scope: !2056, inlinedAt: !2187)
!2193 = !DILocation(line: 146, column: 70, scope: !2056, inlinedAt: !2187)
!2194 = !DILocation(line: 146, column: 80, scope: !2056, inlinedAt: !2187)
!2195 = !DILocation(line: 146, column: 90, scope: !2056, inlinedAt: !2187)
!2196 = !DILocation(line: 146, column: 100, scope: !2056, inlinedAt: !2187)
!2197 = !DILocation(line: 146, column: 110, scope: !2056, inlinedAt: !2187)
!2198 = !DILocation(line: 146, column: 120, scope: !2056, inlinedAt: !2187)
!2199 = !DILocation(line: 148, column: 7, scope: !2083, inlinedAt: !2187)
!2200 = !DILocation(line: 132, column: 25, scope: !2085, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 153, column: 16, scope: !2099, inlinedAt: !2187)
!2202 = !DILocation(line: 132, column: 41, scope: !2085, inlinedAt: !2201)
!2203 = !DILocation(line: 132, column: 50, scope: !2085, inlinedAt: !2201)
!2204 = !DILocation(line: 132, column: 60, scope: !2085, inlinedAt: !2201)
!2205 = !DILocation(line: 132, column: 70, scope: !2085, inlinedAt: !2201)
!2206 = !DILocation(line: 132, column: 80, scope: !2085, inlinedAt: !2201)
!2207 = !DILocation(line: 132, column: 90, scope: !2085, inlinedAt: !2201)
!2208 = !DILocation(line: 132, column: 100, scope: !2085, inlinedAt: !2201)
!2209 = !DILocation(line: 132, column: 110, scope: !2085, inlinedAt: !2201)
!2210 = !DILocation(line: 134, column: 7, scope: !2110, inlinedAt: !2201)
!2211 = !DILocation(line: 134, column: 7, scope: !2085, inlinedAt: !2201)
!2212 = !DILocation(line: 118, column: 25, scope: !2112, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 139, column: 16, scope: !2125, inlinedAt: !2201)
!2214 = !DILocation(line: 118, column: 41, scope: !2112, inlinedAt: !2213)
!2215 = !DILocation(line: 118, column: 50, scope: !2112, inlinedAt: !2213)
!2216 = !DILocation(line: 118, column: 60, scope: !2112, inlinedAt: !2213)
!2217 = !DILocation(line: 118, column: 70, scope: !2112, inlinedAt: !2213)
!2218 = !DILocation(line: 118, column: 80, scope: !2112, inlinedAt: !2213)
!2219 = !DILocation(line: 118, column: 90, scope: !2112, inlinedAt: !2213)
!2220 = !DILocation(line: 118, column: 100, scope: !2112, inlinedAt: !2213)
!2221 = !DILocation(line: 120, column: 7, scope: !2135, inlinedAt: !2213)
!2222 = !DILocation(line: 120, column: 7, scope: !2112, inlinedAt: !2213)
!2223 = !DILocation(line: 104, column: 25, scope: !2138, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 125, column: 16, scope: !2150, inlinedAt: !2213)
!2225 = !DILocation(line: 104, column: 41, scope: !2138, inlinedAt: !2224)
!2226 = !DILocation(line: 104, column: 50, scope: !2138, inlinedAt: !2224)
!2227 = !DILocation(line: 104, column: 60, scope: !2138, inlinedAt: !2224)
!2228 = !DILocation(line: 104, column: 70, scope: !2138, inlinedAt: !2224)
!2229 = !DILocation(line: 104, column: 80, scope: !2138, inlinedAt: !2224)
!2230 = !DILocation(line: 104, column: 90, scope: !2138, inlinedAt: !2224)
!2231 = !DILocation(line: 106, column: 7, scope: !2159, inlinedAt: !2224)
!2232 = !DILocation(line: 106, column: 7, scope: !2138, inlinedAt: !2224)
!2233 = !DILocation(line: 90, column: 25, scope: !2162, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 111, column: 16, scope: !2173, inlinedAt: !2224)
!2235 = !DILocation(line: 90, column: 41, scope: !2162, inlinedAt: !2234)
!2236 = !DILocation(line: 90, column: 50, scope: !2162, inlinedAt: !2234)
!2237 = !DILocation(line: 90, column: 60, scope: !2162, inlinedAt: !2234)
!2238 = !DILocation(line: 90, column: 70, scope: !2162, inlinedAt: !2234)
!2239 = !DILocation(line: 90, column: 80, scope: !2162, inlinedAt: !2234)
!2240 = !DILocation(line: 92, column: 7, scope: !2181, inlinedAt: !2234)
!2241 = !DILocation(line: 92, column: 7, scope: !2162, inlinedAt: !2234)
!2242 = !DILocalVariable(name: "s1", arg: 1, scope: !2243, file: !2026, line: 76, type: !31)
!2243 = distinct !DISubprogram(name: "strcaseeq6", scope: !2026, file: !2026, line: 76, type: !2244, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!34, !31, !31, !22, !22, !22}
!2246 = !{!2242, !2247, !2248, !2249, !2250}
!2247 = !DILocalVariable(name: "s2", arg: 2, scope: !2243, file: !2026, line: 76, type: !31)
!2248 = !DILocalVariable(name: "s26", arg: 3, scope: !2243, file: !2026, line: 76, type: !22)
!2249 = !DILocalVariable(name: "s27", arg: 4, scope: !2243, file: !2026, line: 76, type: !22)
!2250 = !DILocalVariable(name: "s28", arg: 5, scope: !2243, file: !2026, line: 76, type: !22)
!2251 = !DILocation(line: 76, column: 25, scope: !2243, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 97, column: 16, scope: !2253, inlinedAt: !2234)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2026, line: 94, column: 11)
!2254 = distinct !DILexicalBlock(scope: !2181, file: !2026, line: 93, column: 5)
!2255 = !DILocation(line: 76, column: 41, scope: !2243, inlinedAt: !2252)
!2256 = !DILocation(line: 76, column: 50, scope: !2243, inlinedAt: !2252)
!2257 = !DILocation(line: 76, column: 60, scope: !2243, inlinedAt: !2252)
!2258 = !DILocation(line: 76, column: 70, scope: !2243, inlinedAt: !2252)
!2259 = !DILocation(line: 78, column: 7, scope: !2260, inlinedAt: !2252)
!2260 = distinct !DILexicalBlock(scope: !2243, file: !2026, line: 78, column: 7)
!2261 = !DILocation(line: 78, column: 7, scope: !2243, inlinedAt: !2252)
!2262 = !DILocalVariable(name: "s1", arg: 1, scope: !2263, file: !2026, line: 62, type: !31)
!2263 = distinct !DISubprogram(name: "strcaseeq7", scope: !2026, file: !2026, line: 62, type: !2264, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!34, !31, !31, !22, !22}
!2266 = !{!2262, !2267, !2268, !2269}
!2267 = !DILocalVariable(name: "s2", arg: 2, scope: !2263, file: !2026, line: 62, type: !31)
!2268 = !DILocalVariable(name: "s27", arg: 3, scope: !2263, file: !2026, line: 62, type: !22)
!2269 = !DILocalVariable(name: "s28", arg: 4, scope: !2263, file: !2026, line: 62, type: !22)
!2270 = !DILocation(line: 62, column: 25, scope: !2263, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 83, column: 16, scope: !2272, inlinedAt: !2252)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !2026, line: 80, column: 11)
!2273 = distinct !DILexicalBlock(scope: !2260, file: !2026, line: 79, column: 5)
!2274 = !DILocation(line: 62, column: 41, scope: !2263, inlinedAt: !2271)
!2275 = !DILocation(line: 62, column: 50, scope: !2263, inlinedAt: !2271)
!2276 = !DILocation(line: 62, column: 60, scope: !2263, inlinedAt: !2271)
!2277 = !DILocation(line: 64, column: 7, scope: !2278, inlinedAt: !2271)
!2278 = distinct !DILexicalBlock(scope: !2263, file: !2026, line: 64, column: 7)
!2279 = !DILocation(line: 236, column: 7, scope: !2007)
!2280 = !DILocation(line: 237, column: 12, scope: !2189)
!2281 = !DILocation(line: 237, column: 21, scope: !2189)
!2282 = !DILocation(line: 237, column: 5, scope: !2189)
!2283 = !DILocation(line: 239, column: 13, scope: !2007)
!2284 = !DILocation(line: 239, column: 11, scope: !2007)
!2285 = !DILocation(line: 239, column: 3, scope: !2007)
!2286 = !DILocation(line: 0, scope: !2007)
!2287 = !DILocation(line: 240, column: 1, scope: !2007)
!2288 = distinct !DISubprogram(name: "quotearg_alloc", scope: !102, file: !102, line: 799, type: !2289, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!21, !31, !96, !1325}
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "arg", arg: 1, scope: !2288, file: !102, line: 799, type: !31)
!2293 = !DILocalVariable(name: "argsize", arg: 2, scope: !2288, file: !102, line: 799, type: !96)
!2294 = !DILocalVariable(name: "o", arg: 3, scope: !2288, file: !102, line: 800, type: !1325)
!2295 = !DILocation(line: 799, column: 29, scope: !2288)
!2296 = !DILocation(line: 799, column: 41, scope: !2288)
!2297 = !DILocation(line: 800, column: 47, scope: !2288)
!2298 = !DILocalVariable(name: "arg", arg: 1, scope: !2299, file: !102, line: 812, type: !31)
!2299 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !102, file: !102, line: 812, type: !2300, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!21, !31, !96, !179, !1325}
!2302 = !{!2298, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2303 = !DILocalVariable(name: "argsize", arg: 2, scope: !2299, file: !102, line: 812, type: !96)
!2304 = !DILocalVariable(name: "size", arg: 3, scope: !2299, file: !102, line: 812, type: !179)
!2305 = !DILocalVariable(name: "o", arg: 4, scope: !2299, file: !102, line: 813, type: !1325)
!2306 = !DILocalVariable(name: "p", scope: !2299, file: !102, line: 815, type: !1325)
!2307 = !DILocalVariable(name: "e", scope: !2299, file: !102, line: 816, type: !34)
!2308 = !DILocalVariable(name: "flags", scope: !2299, file: !102, line: 818, type: !34)
!2309 = !DILocalVariable(name: "bufsize", scope: !2299, file: !102, line: 819, type: !96)
!2310 = !DILocalVariable(name: "buf", scope: !2299, file: !102, line: 823, type: !21)
!2311 = !DILocation(line: 812, column: 33, scope: !2299, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 802, column: 10, scope: !2288)
!2313 = !DILocation(line: 812, column: 45, scope: !2299, inlinedAt: !2312)
!2314 = !DILocation(line: 812, column: 62, scope: !2299, inlinedAt: !2312)
!2315 = !DILocation(line: 813, column: 51, scope: !2299, inlinedAt: !2312)
!2316 = !DILocation(line: 815, column: 37, scope: !2299, inlinedAt: !2312)
!2317 = !DILocation(line: 815, column: 33, scope: !2299, inlinedAt: !2312)
!2318 = !DILocation(line: 816, column: 11, scope: !2299, inlinedAt: !2312)
!2319 = !DILocation(line: 816, column: 7, scope: !2299, inlinedAt: !2312)
!2320 = !DILocation(line: 818, column: 18, scope: !2299, inlinedAt: !2312)
!2321 = !DILocation(line: 818, column: 24, scope: !2299, inlinedAt: !2312)
!2322 = !DILocation(line: 818, column: 7, scope: !2299, inlinedAt: !2312)
!2323 = !DILocation(line: 819, column: 69, scope: !2299, inlinedAt: !2312)
!2324 = !DILocation(line: 820, column: 53, scope: !2299, inlinedAt: !2312)
!2325 = !DILocation(line: 821, column: 49, scope: !2299, inlinedAt: !2312)
!2326 = !DILocation(line: 822, column: 49, scope: !2299, inlinedAt: !2312)
!2327 = !DILocation(line: 819, column: 20, scope: !2299, inlinedAt: !2312)
!2328 = !DILocation(line: 822, column: 62, scope: !2299, inlinedAt: !2312)
!2329 = !DILocation(line: 819, column: 10, scope: !2299, inlinedAt: !2312)
!2330 = !DILocalVariable(name: "n", arg: 1, scope: !2331, file: !175, line: 216, type: !96)
!2331 = distinct !DISubprogram(name: "xcharalloc", scope: !175, file: !175, line: 216, type: !2332, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!21, !96}
!2334 = !{!2330}
!2335 = !DILocation(line: 216, column: 20, scope: !2331, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 823, column: 15, scope: !2299, inlinedAt: !2312)
!2337 = !DILocation(line: 218, column: 10, scope: !2331, inlinedAt: !2336)
!2338 = !DILocation(line: 823, column: 9, scope: !2299, inlinedAt: !2312)
!2339 = !DILocation(line: 824, column: 60, scope: !2299, inlinedAt: !2312)
!2340 = !DILocation(line: 826, column: 32, scope: !2299, inlinedAt: !2312)
!2341 = !DILocation(line: 826, column: 47, scope: !2299, inlinedAt: !2312)
!2342 = !DILocation(line: 824, column: 3, scope: !2299, inlinedAt: !2312)
!2343 = !DILocation(line: 827, column: 9, scope: !2299, inlinedAt: !2312)
!2344 = !DILocation(line: 802, column: 3, scope: !2288)
!2345 = !DILocation(line: 812, column: 33, scope: !2299)
!2346 = !DILocation(line: 812, column: 45, scope: !2299)
!2347 = !DILocation(line: 812, column: 62, scope: !2299)
!2348 = !DILocation(line: 813, column: 51, scope: !2299)
!2349 = !DILocation(line: 815, column: 37, scope: !2299)
!2350 = !DILocation(line: 815, column: 33, scope: !2299)
!2351 = !DILocation(line: 816, column: 11, scope: !2299)
!2352 = !DILocation(line: 816, column: 7, scope: !2299)
!2353 = !DILocation(line: 818, column: 18, scope: !2299)
!2354 = !DILocation(line: 818, column: 27, scope: !2299)
!2355 = !DILocation(line: 818, column: 24, scope: !2299)
!2356 = !DILocation(line: 818, column: 7, scope: !2299)
!2357 = !DILocation(line: 819, column: 69, scope: !2299)
!2358 = !DILocation(line: 820, column: 53, scope: !2299)
!2359 = !DILocation(line: 821, column: 49, scope: !2299)
!2360 = !DILocation(line: 822, column: 49, scope: !2299)
!2361 = !DILocation(line: 819, column: 20, scope: !2299)
!2362 = !DILocation(line: 822, column: 62, scope: !2299)
!2363 = !DILocation(line: 819, column: 10, scope: !2299)
!2364 = !DILocation(line: 216, column: 20, scope: !2331, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 823, column: 15, scope: !2299)
!2366 = !DILocation(line: 218, column: 10, scope: !2331, inlinedAt: !2365)
!2367 = !DILocation(line: 823, column: 9, scope: !2299)
!2368 = !DILocation(line: 824, column: 60, scope: !2299)
!2369 = !DILocation(line: 826, column: 32, scope: !2299)
!2370 = !DILocation(line: 826, column: 47, scope: !2299)
!2371 = !DILocation(line: 824, column: 3, scope: !2299)
!2372 = !DILocation(line: 827, column: 9, scope: !2299)
!2373 = !DILocation(line: 828, column: 7, scope: !2299)
!2374 = !DILocation(line: 829, column: 11, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2299, file: !102, line: 828, column: 7)
!2376 = !{!1152, !1152, i64 0}
!2377 = !DILocation(line: 829, column: 5, scope: !2375)
!2378 = !DILocation(line: 830, column: 3, scope: !2299)
!2379 = distinct !DISubprogram(name: "quotearg_free", scope: !102, file: !102, line: 848, type: !640, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2380)
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "sv", scope: !2379, file: !102, line: 850, type: !128)
!2382 = !DILocalVariable(name: "i", scope: !2379, file: !102, line: 851, type: !34)
!2383 = !DILocation(line: 850, column: 24, scope: !2379)
!2384 = !DILocation(line: 850, column: 19, scope: !2379)
!2385 = !DILocation(line: 851, column: 7, scope: !2379)
!2386 = !DILocation(line: 852, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !102, line: 852, column: 3)
!2388 = distinct !DILexicalBlock(scope: !2379, file: !102, line: 852, column: 3)
!2389 = !DILocation(line: 852, column: 17, scope: !2387)
!2390 = !DILocation(line: 852, column: 3, scope: !2388)
!2391 = !DILocation(line: 853, column: 17, scope: !2387)
!2392 = !{!2393, !633, i64 8}
!2393 = !{!"slotvec", !1152, i64 0, !633, i64 8}
!2394 = !DILocation(line: 853, column: 5, scope: !2387)
!2395 = !DILocation(line: 852, column: 28, scope: !2387)
!2396 = distinct !{!2396, !2390, !2397}
!2397 = !DILocation(line: 853, column: 20, scope: !2388)
!2398 = !DILocation(line: 854, column: 13, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2379, file: !102, line: 854, column: 7)
!2400 = !DILocation(line: 854, column: 17, scope: !2399)
!2401 = !DILocation(line: 854, column: 7, scope: !2379)
!2402 = !DILocation(line: 856, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !102, line: 855, column: 5)
!2404 = !DILocation(line: 857, column: 21, scope: !2403)
!2405 = !{!2393, !1152, i64 0}
!2406 = !DILocation(line: 858, column: 20, scope: !2403)
!2407 = !DILocation(line: 859, column: 5, scope: !2403)
!2408 = !DILocation(line: 860, column: 10, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2379, file: !102, line: 860, column: 7)
!2410 = !DILocation(line: 860, column: 7, scope: !2379)
!2411 = !DILocation(line: 862, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !102, line: 861, column: 5)
!2413 = !DILocation(line: 862, column: 7, scope: !2412)
!2414 = !DILocation(line: 863, column: 15, scope: !2412)
!2415 = !DILocation(line: 864, column: 5, scope: !2412)
!2416 = !DILocation(line: 865, column: 10, scope: !2379)
!2417 = !DILocation(line: 866, column: 1, scope: !2379)
!2418 = distinct !DISubprogram(name: "quotearg_n", scope: !102, file: !102, line: 931, type: !2419, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!21, !34, !31}
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !102, line: 931, type: !34)
!2423 = !DILocalVariable(name: "arg", arg: 2, scope: !2418, file: !102, line: 931, type: !31)
!2424 = !DILocation(line: 931, column: 17, scope: !2418)
!2425 = !DILocation(line: 931, column: 32, scope: !2418)
!2426 = !DILocation(line: 933, column: 10, scope: !2418)
!2427 = !DILocation(line: 933, column: 3, scope: !2418)
!2428 = distinct !DISubprogram(name: "quotearg_n_options", scope: !102, file: !102, line: 877, type: !2429, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!21, !34, !31, !96, !1325}
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2441, !2442, !2444, !2445, !2446}
!2432 = !DILocalVariable(name: "n", arg: 1, scope: !2428, file: !102, line: 877, type: !34)
!2433 = !DILocalVariable(name: "arg", arg: 2, scope: !2428, file: !102, line: 877, type: !31)
!2434 = !DILocalVariable(name: "argsize", arg: 3, scope: !2428, file: !102, line: 877, type: !96)
!2435 = !DILocalVariable(name: "options", arg: 4, scope: !2428, file: !102, line: 878, type: !1325)
!2436 = !DILocalVariable(name: "e", scope: !2428, file: !102, line: 880, type: !34)
!2437 = !DILocalVariable(name: "sv", scope: !2428, file: !102, line: 882, type: !128)
!2438 = !DILocalVariable(name: "preallocated", scope: !2439, file: !102, line: 889, type: !54)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !102, line: 888, column: 5)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !102, line: 887, column: 7)
!2441 = !DILocalVariable(name: "nmax", scope: !2439, file: !102, line: 890, type: !34)
!2442 = !DILocalVariable(name: "size", scope: !2443, file: !102, line: 903, type: !96)
!2443 = distinct !DILexicalBlock(scope: !2428, file: !102, line: 902, column: 3)
!2444 = !DILocalVariable(name: "val", scope: !2443, file: !102, line: 904, type: !21)
!2445 = !DILocalVariable(name: "flags", scope: !2443, file: !102, line: 906, type: !34)
!2446 = !DILocalVariable(name: "qsize", scope: !2443, file: !102, line: 907, type: !96)
!2447 = !DILocation(line: 877, column: 25, scope: !2428)
!2448 = !DILocation(line: 877, column: 40, scope: !2428)
!2449 = !DILocation(line: 877, column: 52, scope: !2428)
!2450 = !DILocation(line: 878, column: 51, scope: !2428)
!2451 = !DILocation(line: 880, column: 11, scope: !2428)
!2452 = !DILocation(line: 880, column: 7, scope: !2428)
!2453 = !DILocation(line: 882, column: 24, scope: !2428)
!2454 = !DILocation(line: 882, column: 19, scope: !2428)
!2455 = !DILocation(line: 884, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2428, file: !102, line: 884, column: 7)
!2457 = !DILocation(line: 884, column: 7, scope: !2428)
!2458 = !DILocation(line: 885, column: 5, scope: !2456)
!2459 = !DILocation(line: 887, column: 7, scope: !2440)
!2460 = !DILocation(line: 887, column: 14, scope: !2440)
!2461 = !DILocation(line: 887, column: 7, scope: !2428)
!2462 = !DILocation(line: 889, column: 31, scope: !2439)
!2463 = !DILocation(line: 890, column: 11, scope: !2439)
!2464 = !DILocation(line: 892, column: 16, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2439, file: !102, line: 892, column: 11)
!2466 = !DILocation(line: 892, column: 11, scope: !2439)
!2467 = !DILocation(line: 893, column: 9, scope: !2465)
!2468 = !DILocation(line: 895, column: 32, scope: !2439)
!2469 = !DILocation(line: 895, column: 61, scope: !2439)
!2470 = !DILocation(line: 895, column: 58, scope: !2439)
!2471 = !DILocation(line: 895, column: 66, scope: !2439)
!2472 = !DILocation(line: 895, column: 22, scope: !2439)
!2473 = !DILocation(line: 895, column: 15, scope: !2439)
!2474 = !DILocation(line: 896, column: 11, scope: !2439)
!2475 = !DILocation(line: 897, column: 15, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2439, file: !102, line: 896, column: 11)
!2477 = !{i64 0, i64 8, !2376, i64 8, i64 8, !632}
!2478 = !DILocation(line: 897, column: 9, scope: !2476)
!2479 = !DILocation(line: 898, column: 20, scope: !2439)
!2480 = !DILocation(line: 898, column: 18, scope: !2439)
!2481 = !DILocation(line: 898, column: 7, scope: !2439)
!2482 = !DILocation(line: 898, column: 38, scope: !2439)
!2483 = !DILocation(line: 898, column: 31, scope: !2439)
!2484 = !DILocation(line: 898, column: 48, scope: !2439)
!2485 = !DILocation(line: 899, column: 14, scope: !2439)
!2486 = !DILocation(line: 900, column: 5, scope: !2439)
!2487 = !DILocation(line: 0, scope: !2428)
!2488 = !DILocation(line: 903, column: 19, scope: !2443)
!2489 = !DILocation(line: 903, column: 25, scope: !2443)
!2490 = !DILocation(line: 903, column: 12, scope: !2443)
!2491 = !DILocation(line: 904, column: 23, scope: !2443)
!2492 = !DILocation(line: 904, column: 11, scope: !2443)
!2493 = !DILocation(line: 906, column: 26, scope: !2443)
!2494 = !DILocation(line: 906, column: 32, scope: !2443)
!2495 = !DILocation(line: 906, column: 9, scope: !2443)
!2496 = !DILocation(line: 908, column: 55, scope: !2443)
!2497 = !DILocation(line: 909, column: 46, scope: !2443)
!2498 = !DILocation(line: 910, column: 55, scope: !2443)
!2499 = !DILocation(line: 911, column: 55, scope: !2443)
!2500 = !DILocation(line: 907, column: 20, scope: !2443)
!2501 = !DILocation(line: 907, column: 12, scope: !2443)
!2502 = !DILocation(line: 913, column: 14, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2443, file: !102, line: 913, column: 9)
!2504 = !DILocation(line: 913, column: 9, scope: !2443)
!2505 = !DILocation(line: 915, column: 35, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !102, line: 914, column: 7)
!2507 = !DILocation(line: 915, column: 20, scope: !2506)
!2508 = !DILocation(line: 916, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !102, line: 916, column: 13)
!2510 = !DILocation(line: 916, column: 13, scope: !2506)
!2511 = !DILocation(line: 917, column: 11, scope: !2509)
!2512 = !DILocation(line: 216, column: 20, scope: !2331, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 918, column: 27, scope: !2506)
!2514 = !DILocation(line: 218, column: 10, scope: !2331, inlinedAt: !2513)
!2515 = !DILocation(line: 918, column: 19, scope: !2506)
!2516 = !DILocation(line: 919, column: 69, scope: !2506)
!2517 = !DILocation(line: 921, column: 44, scope: !2506)
!2518 = !DILocation(line: 922, column: 44, scope: !2506)
!2519 = !DILocation(line: 919, column: 9, scope: !2506)
!2520 = !DILocation(line: 923, column: 7, scope: !2506)
!2521 = !DILocation(line: 0, scope: !2443)
!2522 = !DILocation(line: 925, column: 11, scope: !2443)
!2523 = !DILocation(line: 926, column: 5, scope: !2443)
!2524 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !102, file: !102, line: 937, type: !2525, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!21, !34, !31, !96}
!2527 = !{!2528, !2529, !2530}
!2528 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !102, line: 937, type: !34)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !102, line: 937, type: !31)
!2530 = !DILocalVariable(name: "argsize", arg: 3, scope: !2524, file: !102, line: 937, type: !96)
!2531 = !DILocation(line: 937, column: 21, scope: !2524)
!2532 = !DILocation(line: 937, column: 36, scope: !2524)
!2533 = !DILocation(line: 937, column: 48, scope: !2524)
!2534 = !DILocation(line: 939, column: 10, scope: !2524)
!2535 = !DILocation(line: 939, column: 3, scope: !2524)
!2536 = distinct !DISubprogram(name: "quotearg", scope: !102, file: !102, line: 943, type: !2537, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!21, !31}
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "arg", arg: 1, scope: !2536, file: !102, line: 943, type: !31)
!2541 = !DILocation(line: 943, column: 23, scope: !2536)
!2542 = !DILocation(line: 931, column: 17, scope: !2418, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 945, column: 10, scope: !2536)
!2544 = !DILocation(line: 931, column: 32, scope: !2418, inlinedAt: !2543)
!2545 = !DILocation(line: 933, column: 10, scope: !2418, inlinedAt: !2543)
!2546 = !DILocation(line: 945, column: 3, scope: !2536)
!2547 = distinct !DISubprogram(name: "quotearg_mem", scope: !102, file: !102, line: 949, type: !2548, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!21, !31, !96}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !102, line: 949, type: !31)
!2552 = !DILocalVariable(name: "argsize", arg: 2, scope: !2547, file: !102, line: 949, type: !96)
!2553 = !DILocation(line: 949, column: 27, scope: !2547)
!2554 = !DILocation(line: 949, column: 39, scope: !2547)
!2555 = !DILocation(line: 937, column: 21, scope: !2524, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 951, column: 10, scope: !2547)
!2557 = !DILocation(line: 937, column: 36, scope: !2524, inlinedAt: !2556)
!2558 = !DILocation(line: 937, column: 48, scope: !2524, inlinedAt: !2556)
!2559 = !DILocation(line: 939, column: 10, scope: !2524, inlinedAt: !2556)
!2560 = !DILocation(line: 951, column: 3, scope: !2547)
!2561 = distinct !DISubprogram(name: "quotearg_n_style", scope: !102, file: !102, line: 955, type: !2562, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!21, !34, !5, !31}
!2564 = !{!2565, !2566, !2567, !2568}
!2565 = !DILocalVariable(name: "n", arg: 1, scope: !2561, file: !102, line: 955, type: !34)
!2566 = !DILocalVariable(name: "s", arg: 2, scope: !2561, file: !102, line: 955, type: !5)
!2567 = !DILocalVariable(name: "arg", arg: 3, scope: !2561, file: !102, line: 955, type: !31)
!2568 = !DILocalVariable(name: "o", scope: !2561, file: !102, line: 957, type: !1326)
!2569 = !DILocation(line: 955, column: 23, scope: !2561)
!2570 = !DILocation(line: 955, column: 45, scope: !2561)
!2571 = !DILocation(line: 955, column: 60, scope: !2561)
!2572 = !DILocation(line: 957, column: 3, scope: !2561)
!2573 = !DILocation(line: 957, column: 32, scope: !2561)
!2574 = !DILocalVariable(name: "style", arg: 1, scope: !2575, file: !102, line: 193, type: !5)
!2575 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !102, file: !102, line: 193, type: !2576, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!109, !5}
!2578 = !{!2574, !2579}
!2579 = !DILocalVariable(name: "o", scope: !2575, file: !102, line: 195, type: !109)
!2580 = !DILocation(line: 193, column: 48, scope: !2575, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 957, column: 36, scope: !2561)
!2582 = !DILocation(line: 195, column: 26, scope: !2575, inlinedAt: !2581)
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"quoting_options_from_style: argument 0"}
!2585 = distinct !{!2585, !"quoting_options_from_style"}
!2586 = !DILocation(line: 196, column: 13, scope: !2587, inlinedAt: !2581)
!2587 = distinct !DILexicalBlock(scope: !2575, file: !102, line: 196, column: 7)
!2588 = !DILocation(line: 196, column: 7, scope: !2575, inlinedAt: !2581)
!2589 = !DILocation(line: 197, column: 5, scope: !2587, inlinedAt: !2581)
!2590 = !DILocation(line: 198, column: 5, scope: !2575, inlinedAt: !2581)
!2591 = !DILocation(line: 198, column: 11, scope: !2575, inlinedAt: !2581)
!2592 = !DILocation(line: 958, column: 10, scope: !2561)
!2593 = !DILocation(line: 959, column: 1, scope: !2561)
!2594 = !DILocation(line: 958, column: 3, scope: !2561)
!2595 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !102, file: !102, line: 962, type: !2596, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!21, !34, !5, !31, !96}
!2598 = !{!2599, !2600, !2601, !2602, !2603}
!2599 = !DILocalVariable(name: "n", arg: 1, scope: !2595, file: !102, line: 962, type: !34)
!2600 = !DILocalVariable(name: "s", arg: 2, scope: !2595, file: !102, line: 962, type: !5)
!2601 = !DILocalVariable(name: "arg", arg: 3, scope: !2595, file: !102, line: 963, type: !31)
!2602 = !DILocalVariable(name: "argsize", arg: 4, scope: !2595, file: !102, line: 963, type: !96)
!2603 = !DILocalVariable(name: "o", scope: !2595, file: !102, line: 965, type: !1326)
!2604 = !DILocation(line: 962, column: 27, scope: !2595)
!2605 = !DILocation(line: 962, column: 49, scope: !2595)
!2606 = !DILocation(line: 963, column: 35, scope: !2595)
!2607 = !DILocation(line: 963, column: 47, scope: !2595)
!2608 = !DILocation(line: 965, column: 3, scope: !2595)
!2609 = !DILocation(line: 965, column: 32, scope: !2595)
!2610 = !DILocation(line: 193, column: 48, scope: !2575, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 965, column: 36, scope: !2595)
!2612 = !DILocation(line: 195, column: 26, scope: !2575, inlinedAt: !2611)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 196, column: 13, scope: !2587, inlinedAt: !2611)
!2617 = !DILocation(line: 196, column: 7, scope: !2575, inlinedAt: !2611)
!2618 = !DILocation(line: 197, column: 5, scope: !2587, inlinedAt: !2611)
!2619 = !DILocation(line: 198, column: 5, scope: !2575, inlinedAt: !2611)
!2620 = !DILocation(line: 198, column: 11, scope: !2575, inlinedAt: !2611)
!2621 = !DILocation(line: 966, column: 10, scope: !2595)
!2622 = !DILocation(line: 967, column: 1, scope: !2595)
!2623 = !DILocation(line: 966, column: 3, scope: !2595)
!2624 = distinct !DISubprogram(name: "quotearg_style", scope: !102, file: !102, line: 970, type: !2625, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!21, !5, !31}
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "s", arg: 1, scope: !2624, file: !102, line: 970, type: !5)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !102, line: 970, type: !31)
!2630 = !DILocation(line: 970, column: 36, scope: !2624)
!2631 = !DILocation(line: 970, column: 51, scope: !2624)
!2632 = !DILocation(line: 955, column: 23, scope: !2561, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 972, column: 10, scope: !2624)
!2634 = !DILocation(line: 955, column: 45, scope: !2561, inlinedAt: !2633)
!2635 = !DILocation(line: 955, column: 60, scope: !2561, inlinedAt: !2633)
!2636 = !DILocation(line: 957, column: 3, scope: !2561, inlinedAt: !2633)
!2637 = !DILocation(line: 957, column: 32, scope: !2561, inlinedAt: !2633)
!2638 = !DILocation(line: 193, column: 48, scope: !2575, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 957, column: 36, scope: !2561, inlinedAt: !2633)
!2640 = !DILocation(line: 195, column: 26, scope: !2575, inlinedAt: !2639)
!2641 = !{!2642}
!2642 = distinct !{!2642, !2643, !"quoting_options_from_style: argument 0"}
!2643 = distinct !{!2643, !"quoting_options_from_style"}
!2644 = !DILocation(line: 196, column: 13, scope: !2587, inlinedAt: !2639)
!2645 = !DILocation(line: 196, column: 7, scope: !2575, inlinedAt: !2639)
!2646 = !DILocation(line: 197, column: 5, scope: !2587, inlinedAt: !2639)
!2647 = !DILocation(line: 198, column: 5, scope: !2575, inlinedAt: !2639)
!2648 = !DILocation(line: 198, column: 11, scope: !2575, inlinedAt: !2639)
!2649 = !DILocation(line: 958, column: 10, scope: !2561, inlinedAt: !2633)
!2650 = !DILocation(line: 959, column: 1, scope: !2561, inlinedAt: !2633)
!2651 = !DILocation(line: 972, column: 3, scope: !2624)
!2652 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !102, file: !102, line: 976, type: !2653, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!21, !5, !31, !96}
!2655 = !{!2656, !2657, !2658}
!2656 = !DILocalVariable(name: "s", arg: 1, scope: !2652, file: !102, line: 976, type: !5)
!2657 = !DILocalVariable(name: "arg", arg: 2, scope: !2652, file: !102, line: 976, type: !31)
!2658 = !DILocalVariable(name: "argsize", arg: 3, scope: !2652, file: !102, line: 976, type: !96)
!2659 = !DILocation(line: 976, column: 40, scope: !2652)
!2660 = !DILocation(line: 976, column: 55, scope: !2652)
!2661 = !DILocation(line: 976, column: 67, scope: !2652)
!2662 = !DILocation(line: 962, column: 27, scope: !2595, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 978, column: 10, scope: !2652)
!2664 = !DILocation(line: 962, column: 49, scope: !2595, inlinedAt: !2663)
!2665 = !DILocation(line: 963, column: 35, scope: !2595, inlinedAt: !2663)
!2666 = !DILocation(line: 963, column: 47, scope: !2595, inlinedAt: !2663)
!2667 = !DILocation(line: 965, column: 3, scope: !2595, inlinedAt: !2663)
!2668 = !DILocation(line: 965, column: 32, scope: !2595, inlinedAt: !2663)
!2669 = !DILocation(line: 193, column: 48, scope: !2575, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 965, column: 36, scope: !2595, inlinedAt: !2663)
!2671 = !DILocation(line: 195, column: 26, scope: !2575, inlinedAt: !2670)
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"quoting_options_from_style: argument 0"}
!2674 = distinct !{!2674, !"quoting_options_from_style"}
!2675 = !DILocation(line: 196, column: 13, scope: !2587, inlinedAt: !2670)
!2676 = !DILocation(line: 196, column: 7, scope: !2575, inlinedAt: !2670)
!2677 = !DILocation(line: 197, column: 5, scope: !2587, inlinedAt: !2670)
!2678 = !DILocation(line: 198, column: 5, scope: !2575, inlinedAt: !2670)
!2679 = !DILocation(line: 198, column: 11, scope: !2575, inlinedAt: !2670)
!2680 = !DILocation(line: 966, column: 10, scope: !2595, inlinedAt: !2663)
!2681 = !DILocation(line: 967, column: 1, scope: !2595, inlinedAt: !2663)
!2682 = !DILocation(line: 978, column: 3, scope: !2652)
!2683 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !102, file: !102, line: 982, type: !2684, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!21, !31, !96, !22}
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2683, file: !102, line: 982, type: !31)
!2688 = !DILocalVariable(name: "argsize", arg: 2, scope: !2683, file: !102, line: 982, type: !96)
!2689 = !DILocalVariable(name: "ch", arg: 3, scope: !2683, file: !102, line: 982, type: !22)
!2690 = !DILocalVariable(name: "options", scope: !2683, file: !102, line: 984, type: !109)
!2691 = !DILocation(line: 982, column: 32, scope: !2683)
!2692 = !DILocation(line: 982, column: 44, scope: !2683)
!2693 = !DILocation(line: 982, column: 58, scope: !2683)
!2694 = !DILocation(line: 984, column: 3, scope: !2683)
!2695 = !DILocation(line: 985, column: 13, scope: !2683)
!2696 = !{i64 0, i64 4, !897, i64 4, i64 4, !745, i64 8, i64 32, !897, i64 40, i64 8, !632, i64 48, i64 8, !632}
!2697 = !DILocation(line: 984, column: 26, scope: !2683)
!2698 = !DILocation(line: 152, column: 43, scope: !1347, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 986, column: 3, scope: !2683)
!2700 = !DILocation(line: 152, column: 51, scope: !1347, inlinedAt: !2699)
!2701 = !DILocation(line: 152, column: 58, scope: !1347, inlinedAt: !2699)
!2702 = !DILocation(line: 154, column: 17, scope: !1347, inlinedAt: !2699)
!2703 = !DILocation(line: 156, column: 62, scope: !1347, inlinedAt: !2699)
!2704 = !DILocation(line: 156, column: 57, scope: !1347, inlinedAt: !2699)
!2705 = !DILocation(line: 155, column: 17, scope: !1347, inlinedAt: !2699)
!2706 = !DILocation(line: 157, column: 15, scope: !1347, inlinedAt: !2699)
!2707 = !DILocation(line: 157, column: 7, scope: !1347, inlinedAt: !2699)
!2708 = !DILocation(line: 158, column: 12, scope: !1347, inlinedAt: !2699)
!2709 = !DILocation(line: 158, column: 15, scope: !1347, inlinedAt: !2699)
!2710 = !DILocation(line: 158, column: 25, scope: !1347, inlinedAt: !2699)
!2711 = !DILocation(line: 158, column: 7, scope: !1347, inlinedAt: !2699)
!2712 = !DILocation(line: 159, column: 18, scope: !1347, inlinedAt: !2699)
!2713 = !DILocation(line: 159, column: 23, scope: !1347, inlinedAt: !2699)
!2714 = !DILocation(line: 159, column: 6, scope: !1347, inlinedAt: !2699)
!2715 = !DILocation(line: 987, column: 10, scope: !2683)
!2716 = !DILocation(line: 988, column: 1, scope: !2683)
!2717 = !DILocation(line: 987, column: 3, scope: !2683)
!2718 = distinct !DISubprogram(name: "quotearg_char", scope: !102, file: !102, line: 991, type: !2719, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!21, !31, !22}
!2721 = !{!2722, !2723}
!2722 = !DILocalVariable(name: "arg", arg: 1, scope: !2718, file: !102, line: 991, type: !31)
!2723 = !DILocalVariable(name: "ch", arg: 2, scope: !2718, file: !102, line: 991, type: !22)
!2724 = !DILocation(line: 991, column: 28, scope: !2718)
!2725 = !DILocation(line: 991, column: 38, scope: !2718)
!2726 = !DILocation(line: 982, column: 32, scope: !2683, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 993, column: 10, scope: !2718)
!2728 = !DILocation(line: 982, column: 44, scope: !2683, inlinedAt: !2727)
!2729 = !DILocation(line: 982, column: 58, scope: !2683, inlinedAt: !2727)
!2730 = !DILocation(line: 984, column: 3, scope: !2683, inlinedAt: !2727)
!2731 = !DILocation(line: 985, column: 13, scope: !2683, inlinedAt: !2727)
!2732 = !DILocation(line: 984, column: 26, scope: !2683, inlinedAt: !2727)
!2733 = !DILocation(line: 152, column: 43, scope: !1347, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 986, column: 3, scope: !2683, inlinedAt: !2727)
!2735 = !DILocation(line: 152, column: 51, scope: !1347, inlinedAt: !2734)
!2736 = !DILocation(line: 152, column: 58, scope: !1347, inlinedAt: !2734)
!2737 = !DILocation(line: 154, column: 17, scope: !1347, inlinedAt: !2734)
!2738 = !DILocation(line: 156, column: 62, scope: !1347, inlinedAt: !2734)
!2739 = !DILocation(line: 156, column: 57, scope: !1347, inlinedAt: !2734)
!2740 = !DILocation(line: 155, column: 17, scope: !1347, inlinedAt: !2734)
!2741 = !DILocation(line: 157, column: 15, scope: !1347, inlinedAt: !2734)
!2742 = !DILocation(line: 157, column: 7, scope: !1347, inlinedAt: !2734)
!2743 = !DILocation(line: 158, column: 12, scope: !1347, inlinedAt: !2734)
!2744 = !DILocation(line: 158, column: 15, scope: !1347, inlinedAt: !2734)
!2745 = !DILocation(line: 158, column: 25, scope: !1347, inlinedAt: !2734)
!2746 = !DILocation(line: 158, column: 7, scope: !1347, inlinedAt: !2734)
!2747 = !DILocation(line: 159, column: 18, scope: !1347, inlinedAt: !2734)
!2748 = !DILocation(line: 159, column: 23, scope: !1347, inlinedAt: !2734)
!2749 = !DILocation(line: 159, column: 6, scope: !1347, inlinedAt: !2734)
!2750 = !DILocation(line: 987, column: 10, scope: !2683, inlinedAt: !2727)
!2751 = !DILocation(line: 988, column: 1, scope: !2683, inlinedAt: !2727)
!2752 = !DILocation(line: 993, column: 3, scope: !2718)
!2753 = distinct !DISubprogram(name: "quotearg_colon", scope: !102, file: !102, line: 997, type: !2537, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2754)
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "arg", arg: 1, scope: !2753, file: !102, line: 997, type: !31)
!2756 = !DILocation(line: 997, column: 29, scope: !2753)
!2757 = !DILocation(line: 991, column: 28, scope: !2718, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 999, column: 10, scope: !2753)
!2759 = !DILocation(line: 991, column: 38, scope: !2718, inlinedAt: !2758)
!2760 = !DILocation(line: 982, column: 32, scope: !2683, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 993, column: 10, scope: !2718, inlinedAt: !2758)
!2762 = !DILocation(line: 982, column: 44, scope: !2683, inlinedAt: !2761)
!2763 = !DILocation(line: 982, column: 58, scope: !2683, inlinedAt: !2761)
!2764 = !DILocation(line: 984, column: 3, scope: !2683, inlinedAt: !2761)
!2765 = !DILocation(line: 985, column: 13, scope: !2683, inlinedAt: !2761)
!2766 = !DILocation(line: 984, column: 26, scope: !2683, inlinedAt: !2761)
!2767 = !DILocation(line: 152, column: 43, scope: !1347, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 986, column: 3, scope: !2683, inlinedAt: !2761)
!2769 = !DILocation(line: 152, column: 51, scope: !1347, inlinedAt: !2768)
!2770 = !DILocation(line: 152, column: 58, scope: !1347, inlinedAt: !2768)
!2771 = !DILocation(line: 154, column: 17, scope: !1347, inlinedAt: !2768)
!2772 = !DILocation(line: 156, column: 57, scope: !1347, inlinedAt: !2768)
!2773 = !DILocation(line: 155, column: 17, scope: !1347, inlinedAt: !2768)
!2774 = !DILocation(line: 157, column: 7, scope: !1347, inlinedAt: !2768)
!2775 = !DILocation(line: 158, column: 12, scope: !1347, inlinedAt: !2768)
!2776 = !DILocation(line: 159, column: 6, scope: !1347, inlinedAt: !2768)
!2777 = !DILocation(line: 987, column: 10, scope: !2683, inlinedAt: !2761)
!2778 = !DILocation(line: 988, column: 1, scope: !2683, inlinedAt: !2761)
!2779 = !DILocation(line: 999, column: 3, scope: !2753)
!2780 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !102, file: !102, line: 1003, type: !2548, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2781)
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "arg", arg: 1, scope: !2780, file: !102, line: 1003, type: !31)
!2783 = !DILocalVariable(name: "argsize", arg: 2, scope: !2780, file: !102, line: 1003, type: !96)
!2784 = !DILocation(line: 1003, column: 33, scope: !2780)
!2785 = !DILocation(line: 1003, column: 45, scope: !2780)
!2786 = !DILocation(line: 982, column: 32, scope: !2683, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1005, column: 10, scope: !2780)
!2788 = !DILocation(line: 982, column: 44, scope: !2683, inlinedAt: !2787)
!2789 = !DILocation(line: 982, column: 58, scope: !2683, inlinedAt: !2787)
!2790 = !DILocation(line: 984, column: 3, scope: !2683, inlinedAt: !2787)
!2791 = !DILocation(line: 985, column: 13, scope: !2683, inlinedAt: !2787)
!2792 = !DILocation(line: 984, column: 26, scope: !2683, inlinedAt: !2787)
!2793 = !DILocation(line: 152, column: 43, scope: !1347, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 986, column: 3, scope: !2683, inlinedAt: !2787)
!2795 = !DILocation(line: 152, column: 51, scope: !1347, inlinedAt: !2794)
!2796 = !DILocation(line: 152, column: 58, scope: !1347, inlinedAt: !2794)
!2797 = !DILocation(line: 154, column: 17, scope: !1347, inlinedAt: !2794)
!2798 = !DILocation(line: 156, column: 57, scope: !1347, inlinedAt: !2794)
!2799 = !DILocation(line: 155, column: 17, scope: !1347, inlinedAt: !2794)
!2800 = !DILocation(line: 157, column: 7, scope: !1347, inlinedAt: !2794)
!2801 = !DILocation(line: 158, column: 12, scope: !1347, inlinedAt: !2794)
!2802 = !DILocation(line: 159, column: 6, scope: !1347, inlinedAt: !2794)
!2803 = !DILocation(line: 987, column: 10, scope: !2683, inlinedAt: !2787)
!2804 = !DILocation(line: 988, column: 1, scope: !2683, inlinedAt: !2787)
!2805 = !DILocation(line: 1005, column: 3, scope: !2780)
!2806 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !102, file: !102, line: 1009, type: !2562, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2807)
!2807 = !{!2808, !2809, !2810, !2811}
!2808 = !DILocalVariable(name: "n", arg: 1, scope: !2806, file: !102, line: 1009, type: !34)
!2809 = !DILocalVariable(name: "s", arg: 2, scope: !2806, file: !102, line: 1009, type: !5)
!2810 = !DILocalVariable(name: "arg", arg: 3, scope: !2806, file: !102, line: 1009, type: !31)
!2811 = !DILocalVariable(name: "options", scope: !2806, file: !102, line: 1011, type: !109)
!2812 = !DILocation(line: 195, column: 26, scope: !2575, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1012, column: 13, scope: !2806)
!2814 = !DILocation(line: 1009, column: 29, scope: !2806)
!2815 = !DILocation(line: 1009, column: 51, scope: !2806)
!2816 = !DILocation(line: 1009, column: 66, scope: !2806)
!2817 = !DILocation(line: 1011, column: 3, scope: !2806)
!2818 = !DILocation(line: 1012, column: 13, scope: !2806)
!2819 = !DILocation(line: 193, column: 48, scope: !2575, inlinedAt: !2813)
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"quoting_options_from_style: argument 0"}
!2822 = distinct !{!2822, !"quoting_options_from_style"}
!2823 = !DILocation(line: 196, column: 13, scope: !2587, inlinedAt: !2813)
!2824 = !DILocation(line: 196, column: 7, scope: !2575, inlinedAt: !2813)
!2825 = !DILocation(line: 197, column: 5, scope: !2587, inlinedAt: !2813)
!2826 = !DILocation(line: 1011, column: 26, scope: !2806)
!2827 = !DILocation(line: 152, column: 43, scope: !1347, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 1013, column: 3, scope: !2806)
!2829 = !DILocation(line: 152, column: 51, scope: !1347, inlinedAt: !2828)
!2830 = !DILocation(line: 152, column: 58, scope: !1347, inlinedAt: !2828)
!2831 = !DILocation(line: 154, column: 17, scope: !1347, inlinedAt: !2828)
!2832 = !DILocation(line: 156, column: 57, scope: !1347, inlinedAt: !2828)
!2833 = !DILocation(line: 155, column: 17, scope: !1347, inlinedAt: !2828)
!2834 = !DILocation(line: 157, column: 7, scope: !1347, inlinedAt: !2828)
!2835 = !DILocation(line: 158, column: 12, scope: !1347, inlinedAt: !2828)
!2836 = !DILocation(line: 159, column: 6, scope: !1347, inlinedAt: !2828)
!2837 = !DILocation(line: 1014, column: 10, scope: !2806)
!2838 = !DILocation(line: 1015, column: 1, scope: !2806)
!2839 = !DILocation(line: 1014, column: 3, scope: !2806)
!2840 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !102, file: !102, line: 1018, type: !2841, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!21, !34, !31, !31, !31}
!2843 = !{!2844, !2845, !2846, !2847}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2840, file: !102, line: 1018, type: !34)
!2845 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2840, file: !102, line: 1018, type: !31)
!2846 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2840, file: !102, line: 1019, type: !31)
!2847 = !DILocalVariable(name: "arg", arg: 4, scope: !2840, file: !102, line: 1019, type: !31)
!2848 = !DILocation(line: 1018, column: 24, scope: !2840)
!2849 = !DILocation(line: 1018, column: 39, scope: !2840)
!2850 = !DILocation(line: 1019, column: 32, scope: !2840)
!2851 = !DILocation(line: 1019, column: 57, scope: !2840)
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !102, line: 1026, type: !34)
!2853 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !102, file: !102, line: 1026, type: !2854, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!21, !34, !31, !31, !31, !96}
!2856 = !{!2852, !2857, !2858, !2859, !2860, !2861}
!2857 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2853, file: !102, line: 1026, type: !31)
!2858 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2853, file: !102, line: 1027, type: !31)
!2859 = !DILocalVariable(name: "arg", arg: 4, scope: !2853, file: !102, line: 1028, type: !31)
!2860 = !DILocalVariable(name: "argsize", arg: 5, scope: !2853, file: !102, line: 1028, type: !96)
!2861 = !DILocalVariable(name: "o", scope: !2853, file: !102, line: 1030, type: !109)
!2862 = !DILocation(line: 1026, column: 28, scope: !2853, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1021, column: 10, scope: !2840)
!2864 = !DILocation(line: 1026, column: 43, scope: !2853, inlinedAt: !2863)
!2865 = !DILocation(line: 1027, column: 36, scope: !2853, inlinedAt: !2863)
!2866 = !DILocation(line: 1028, column: 36, scope: !2853, inlinedAt: !2863)
!2867 = !DILocation(line: 1028, column: 48, scope: !2853, inlinedAt: !2863)
!2868 = !DILocation(line: 1030, column: 3, scope: !2853, inlinedAt: !2863)
!2869 = !DILocation(line: 1030, column: 30, scope: !2853, inlinedAt: !2863)
!2870 = !DILocation(line: 1030, column: 26, scope: !2853, inlinedAt: !2863)
!2871 = !DILocation(line: 179, column: 45, scope: !1396, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1031, column: 3, scope: !2853, inlinedAt: !2863)
!2873 = !DILocation(line: 180, column: 33, scope: !1396, inlinedAt: !2872)
!2874 = !DILocation(line: 180, column: 57, scope: !1396, inlinedAt: !2872)
!2875 = !DILocation(line: 184, column: 6, scope: !1396, inlinedAt: !2872)
!2876 = !DILocation(line: 184, column: 12, scope: !1396, inlinedAt: !2872)
!2877 = !DILocation(line: 185, column: 8, scope: !1412, inlinedAt: !2872)
!2878 = !DILocation(line: 185, column: 23, scope: !1412, inlinedAt: !2872)
!2879 = !DILocation(line: 185, column: 19, scope: !1412, inlinedAt: !2872)
!2880 = !DILocation(line: 186, column: 5, scope: !1412, inlinedAt: !2872)
!2881 = !DILocation(line: 187, column: 6, scope: !1396, inlinedAt: !2872)
!2882 = !DILocation(line: 187, column: 17, scope: !1396, inlinedAt: !2872)
!2883 = !DILocation(line: 188, column: 6, scope: !1396, inlinedAt: !2872)
!2884 = !DILocation(line: 188, column: 18, scope: !1396, inlinedAt: !2872)
!2885 = !DILocation(line: 1032, column: 10, scope: !2853, inlinedAt: !2863)
!2886 = !DILocation(line: 1033, column: 1, scope: !2853, inlinedAt: !2863)
!2887 = !DILocation(line: 1021, column: 3, scope: !2840)
!2888 = !DILocation(line: 1026, column: 28, scope: !2853)
!2889 = !DILocation(line: 1026, column: 43, scope: !2853)
!2890 = !DILocation(line: 1027, column: 36, scope: !2853)
!2891 = !DILocation(line: 1028, column: 36, scope: !2853)
!2892 = !DILocation(line: 1028, column: 48, scope: !2853)
!2893 = !DILocation(line: 1030, column: 3, scope: !2853)
!2894 = !DILocation(line: 1030, column: 30, scope: !2853)
!2895 = !DILocation(line: 1030, column: 26, scope: !2853)
!2896 = !DILocation(line: 179, column: 45, scope: !1396, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1031, column: 3, scope: !2853)
!2898 = !DILocation(line: 180, column: 33, scope: !1396, inlinedAt: !2897)
!2899 = !DILocation(line: 180, column: 57, scope: !1396, inlinedAt: !2897)
!2900 = !DILocation(line: 184, column: 6, scope: !1396, inlinedAt: !2897)
!2901 = !DILocation(line: 184, column: 12, scope: !1396, inlinedAt: !2897)
!2902 = !DILocation(line: 185, column: 8, scope: !1412, inlinedAt: !2897)
!2903 = !DILocation(line: 185, column: 23, scope: !1412, inlinedAt: !2897)
!2904 = !DILocation(line: 185, column: 19, scope: !1412, inlinedAt: !2897)
!2905 = !DILocation(line: 186, column: 5, scope: !1412, inlinedAt: !2897)
!2906 = !DILocation(line: 187, column: 6, scope: !1396, inlinedAt: !2897)
!2907 = !DILocation(line: 187, column: 17, scope: !1396, inlinedAt: !2897)
!2908 = !DILocation(line: 188, column: 6, scope: !1396, inlinedAt: !2897)
!2909 = !DILocation(line: 188, column: 18, scope: !1396, inlinedAt: !2897)
!2910 = !DILocation(line: 1032, column: 10, scope: !2853)
!2911 = !DILocation(line: 1033, column: 1, scope: !2853)
!2912 = !DILocation(line: 1032, column: 3, scope: !2853)
!2913 = distinct !DISubprogram(name: "quotearg_custom", scope: !102, file: !102, line: 1036, type: !2914, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!21, !31, !31, !31}
!2916 = !{!2917, !2918, !2919}
!2917 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2913, file: !102, line: 1036, type: !31)
!2918 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2913, file: !102, line: 1036, type: !31)
!2919 = !DILocalVariable(name: "arg", arg: 3, scope: !2913, file: !102, line: 1037, type: !31)
!2920 = !DILocation(line: 1036, column: 30, scope: !2913)
!2921 = !DILocation(line: 1036, column: 54, scope: !2913)
!2922 = !DILocation(line: 1037, column: 30, scope: !2913)
!2923 = !DILocation(line: 1018, column: 24, scope: !2840, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1039, column: 10, scope: !2913)
!2925 = !DILocation(line: 1018, column: 39, scope: !2840, inlinedAt: !2924)
!2926 = !DILocation(line: 1019, column: 32, scope: !2840, inlinedAt: !2924)
!2927 = !DILocation(line: 1019, column: 57, scope: !2840, inlinedAt: !2924)
!2928 = !DILocation(line: 1026, column: 28, scope: !2853, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 1021, column: 10, scope: !2840, inlinedAt: !2924)
!2930 = !DILocation(line: 1026, column: 43, scope: !2853, inlinedAt: !2929)
!2931 = !DILocation(line: 1027, column: 36, scope: !2853, inlinedAt: !2929)
!2932 = !DILocation(line: 1028, column: 36, scope: !2853, inlinedAt: !2929)
!2933 = !DILocation(line: 1028, column: 48, scope: !2853, inlinedAt: !2929)
!2934 = !DILocation(line: 1030, column: 3, scope: !2853, inlinedAt: !2929)
!2935 = !DILocation(line: 1030, column: 30, scope: !2853, inlinedAt: !2929)
!2936 = !DILocation(line: 1030, column: 26, scope: !2853, inlinedAt: !2929)
!2937 = !DILocation(line: 179, column: 45, scope: !1396, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1031, column: 3, scope: !2853, inlinedAt: !2929)
!2939 = !DILocation(line: 180, column: 33, scope: !1396, inlinedAt: !2938)
!2940 = !DILocation(line: 180, column: 57, scope: !1396, inlinedAt: !2938)
!2941 = !DILocation(line: 184, column: 6, scope: !1396, inlinedAt: !2938)
!2942 = !DILocation(line: 184, column: 12, scope: !1396, inlinedAt: !2938)
!2943 = !DILocation(line: 185, column: 8, scope: !1412, inlinedAt: !2938)
!2944 = !DILocation(line: 185, column: 23, scope: !1412, inlinedAt: !2938)
!2945 = !DILocation(line: 185, column: 19, scope: !1412, inlinedAt: !2938)
!2946 = !DILocation(line: 186, column: 5, scope: !1412, inlinedAt: !2938)
!2947 = !DILocation(line: 187, column: 6, scope: !1396, inlinedAt: !2938)
!2948 = !DILocation(line: 187, column: 17, scope: !1396, inlinedAt: !2938)
!2949 = !DILocation(line: 188, column: 6, scope: !1396, inlinedAt: !2938)
!2950 = !DILocation(line: 188, column: 18, scope: !1396, inlinedAt: !2938)
!2951 = !DILocation(line: 1032, column: 10, scope: !2853, inlinedAt: !2929)
!2952 = !DILocation(line: 1033, column: 1, scope: !2853, inlinedAt: !2929)
!2953 = !DILocation(line: 1039, column: 3, scope: !2913)
!2954 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !102, file: !102, line: 1043, type: !2955, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!21, !31, !31, !31, !96}
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2954, file: !102, line: 1043, type: !31)
!2959 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2954, file: !102, line: 1043, type: !31)
!2960 = !DILocalVariable(name: "arg", arg: 3, scope: !2954, file: !102, line: 1044, type: !31)
!2961 = !DILocalVariable(name: "argsize", arg: 4, scope: !2954, file: !102, line: 1044, type: !96)
!2962 = !DILocation(line: 1043, column: 34, scope: !2954)
!2963 = !DILocation(line: 1043, column: 58, scope: !2954)
!2964 = !DILocation(line: 1044, column: 34, scope: !2954)
!2965 = !DILocation(line: 1044, column: 46, scope: !2954)
!2966 = !DILocation(line: 1026, column: 28, scope: !2853, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1046, column: 10, scope: !2954)
!2968 = !DILocation(line: 1026, column: 43, scope: !2853, inlinedAt: !2967)
!2969 = !DILocation(line: 1027, column: 36, scope: !2853, inlinedAt: !2967)
!2970 = !DILocation(line: 1028, column: 36, scope: !2853, inlinedAt: !2967)
!2971 = !DILocation(line: 1028, column: 48, scope: !2853, inlinedAt: !2967)
!2972 = !DILocation(line: 1030, column: 3, scope: !2853, inlinedAt: !2967)
!2973 = !DILocation(line: 1030, column: 30, scope: !2853, inlinedAt: !2967)
!2974 = !DILocation(line: 1030, column: 26, scope: !2853, inlinedAt: !2967)
!2975 = !DILocation(line: 179, column: 45, scope: !1396, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 1031, column: 3, scope: !2853, inlinedAt: !2967)
!2977 = !DILocation(line: 180, column: 33, scope: !1396, inlinedAt: !2976)
!2978 = !DILocation(line: 180, column: 57, scope: !1396, inlinedAt: !2976)
!2979 = !DILocation(line: 184, column: 6, scope: !1396, inlinedAt: !2976)
!2980 = !DILocation(line: 184, column: 12, scope: !1396, inlinedAt: !2976)
!2981 = !DILocation(line: 185, column: 8, scope: !1412, inlinedAt: !2976)
!2982 = !DILocation(line: 185, column: 23, scope: !1412, inlinedAt: !2976)
!2983 = !DILocation(line: 185, column: 19, scope: !1412, inlinedAt: !2976)
!2984 = !DILocation(line: 186, column: 5, scope: !1412, inlinedAt: !2976)
!2985 = !DILocation(line: 187, column: 6, scope: !1396, inlinedAt: !2976)
!2986 = !DILocation(line: 187, column: 17, scope: !1396, inlinedAt: !2976)
!2987 = !DILocation(line: 188, column: 6, scope: !1396, inlinedAt: !2976)
!2988 = !DILocation(line: 188, column: 18, scope: !1396, inlinedAt: !2976)
!2989 = !DILocation(line: 1032, column: 10, scope: !2853, inlinedAt: !2967)
!2990 = !DILocation(line: 1033, column: 1, scope: !2853, inlinedAt: !2967)
!2991 = !DILocation(line: 1046, column: 3, scope: !2954)
!2992 = distinct !DISubprogram(name: "quote_n_mem", scope: !102, file: !102, line: 1061, type: !2993, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!31, !34, !31, !96}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !102, line: 1061, type: !34)
!2997 = !DILocalVariable(name: "arg", arg: 2, scope: !2992, file: !102, line: 1061, type: !31)
!2998 = !DILocalVariable(name: "argsize", arg: 3, scope: !2992, file: !102, line: 1061, type: !96)
!2999 = !DILocation(line: 1061, column: 18, scope: !2992)
!3000 = !DILocation(line: 1061, column: 33, scope: !2992)
!3001 = !DILocation(line: 1061, column: 45, scope: !2992)
!3002 = !DILocation(line: 1063, column: 10, scope: !2992)
!3003 = !DILocation(line: 1063, column: 3, scope: !2992)
!3004 = distinct !DISubprogram(name: "quote_mem", scope: !102, file: !102, line: 1067, type: !3005, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!31, !31, !96}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "arg", arg: 1, scope: !3004, file: !102, line: 1067, type: !31)
!3009 = !DILocalVariable(name: "argsize", arg: 2, scope: !3004, file: !102, line: 1067, type: !96)
!3010 = !DILocation(line: 1067, column: 24, scope: !3004)
!3011 = !DILocation(line: 1067, column: 36, scope: !3004)
!3012 = !DILocation(line: 1061, column: 18, scope: !2992, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1069, column: 10, scope: !3004)
!3014 = !DILocation(line: 1061, column: 33, scope: !2992, inlinedAt: !3013)
!3015 = !DILocation(line: 1061, column: 45, scope: !2992, inlinedAt: !3013)
!3016 = !DILocation(line: 1063, column: 10, scope: !2992, inlinedAt: !3013)
!3017 = !DILocation(line: 1069, column: 3, scope: !3004)
!3018 = distinct !DISubprogram(name: "quote_n", scope: !102, file: !102, line: 1073, type: !3019, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!31, !34, !31}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "n", arg: 1, scope: !3018, file: !102, line: 1073, type: !34)
!3023 = !DILocalVariable(name: "arg", arg: 2, scope: !3018, file: !102, line: 1073, type: !31)
!3024 = !DILocation(line: 1073, column: 14, scope: !3018)
!3025 = !DILocation(line: 1073, column: 29, scope: !3018)
!3026 = !DILocation(line: 1061, column: 18, scope: !2992, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1075, column: 10, scope: !3018)
!3028 = !DILocation(line: 1061, column: 33, scope: !2992, inlinedAt: !3027)
!3029 = !DILocation(line: 1061, column: 45, scope: !2992, inlinedAt: !3027)
!3030 = !DILocation(line: 1063, column: 10, scope: !2992, inlinedAt: !3027)
!3031 = !DILocation(line: 1075, column: 3, scope: !3018)
!3032 = distinct !DISubprogram(name: "quote", scope: !102, file: !102, line: 1079, type: !3033, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!31, !31}
!3035 = !{!3036}
!3036 = !DILocalVariable(name: "arg", arg: 1, scope: !3032, file: !102, line: 1079, type: !31)
!3037 = !DILocation(line: 1079, column: 20, scope: !3032)
!3038 = !DILocation(line: 1073, column: 14, scope: !3018, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1081, column: 10, scope: !3032)
!3040 = !DILocation(line: 1073, column: 29, scope: !3018, inlinedAt: !3039)
!3041 = !DILocation(line: 1061, column: 18, scope: !2992, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 1075, column: 10, scope: !3018, inlinedAt: !3039)
!3043 = !DILocation(line: 1061, column: 33, scope: !2992, inlinedAt: !3042)
!3044 = !DILocation(line: 1061, column: 45, scope: !2992, inlinedAt: !3042)
!3045 = !DILocation(line: 1063, column: 10, scope: !2992, inlinedAt: !3042)
!3046 = !DILocation(line: 1081, column: 3, scope: !3032)
!3047 = distinct !DISubprogram(name: "version_etc_arn", scope: !167, file: !167, line: 62, type: !3048, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3103)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3050, !31, !31, !31, !3102, !96}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3052, line: 7, baseType: !3053)
!3052 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3054, line: 49, size: 1728, elements: !3055)
!3054 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3071, !3073, !3074, !3075, !3076, !3077, !3079, !3083, !3086, !3088, !3091, !3094, !3095, !3096, !3097, !3098}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3053, file: !3054, line: 51, baseType: !34, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3053, file: !3054, line: 54, baseType: !21, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3053, file: !3054, line: 55, baseType: !21, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3053, file: !3054, line: 56, baseType: !21, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3053, file: !3054, line: 57, baseType: !21, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3053, file: !3054, line: 58, baseType: !21, size: 64, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3053, file: !3054, line: 59, baseType: !21, size: 64, offset: 384)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3053, file: !3054, line: 60, baseType: !21, size: 64, offset: 448)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3053, file: !3054, line: 61, baseType: !21, size: 64, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3053, file: !3054, line: 64, baseType: !21, size: 64, offset: 576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3053, file: !3054, line: 65, baseType: !21, size: 64, offset: 640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3053, file: !3054, line: 66, baseType: !21, size: 64, offset: 704)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3053, file: !3054, line: 68, baseType: !3069, size: 64, offset: 768)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3054, line: 36, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3053, file: !3054, line: 70, baseType: !3072, size: 64, offset: 832)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3053, file: !3054, line: 72, baseType: !34, size: 32, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3053, file: !3054, line: 73, baseType: !34, size: 32, offset: 928)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3053, file: !3054, line: 74, baseType: !1112, size: 64, offset: 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3053, file: !3054, line: 77, baseType: !95, size: 16, offset: 1024)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3053, file: !3054, line: 78, baseType: !3078, size: 8, offset: 1040)
!3078 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3053, file: !3054, line: 79, baseType: !3080, size: 8, offset: 1048)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !3081)
!3081 = !{!3082}
!3082 = !DISubrange(count: 1)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3053, file: !3054, line: 81, baseType: !3084, size: 64, offset: 1088)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3054, line: 43, baseType: null)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3053, file: !3054, line: 89, baseType: !3087, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !693, line: 151, baseType: !1113)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3053, file: !3054, line: 91, baseType: !3089, size: 64, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3054, line: 37, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3053, file: !3054, line: 92, baseType: !3092, size: 64, offset: 1280)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3054, line: 38, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3053, file: !3054, line: 93, baseType: !3072, size: 64, offset: 1344)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3053, file: !3054, line: 94, baseType: !23, size: 64, offset: 1408)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3053, file: !3054, line: 95, baseType: !96, size: 64, offset: 1472)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3053, file: !3054, line: 96, baseType: !34, size: 32, offset: 1536)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3053, file: !3054, line: 98, baseType: !3099, size: 160, offset: 1568)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !3100)
!3100 = !{!3101}
!3101 = !DISubrange(count: 20)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109}
!3104 = !DILocalVariable(name: "stream", arg: 1, scope: !3047, file: !167, line: 62, type: !3050)
!3105 = !DILocalVariable(name: "command_name", arg: 2, scope: !3047, file: !167, line: 63, type: !31)
!3106 = !DILocalVariable(name: "package", arg: 3, scope: !3047, file: !167, line: 63, type: !31)
!3107 = !DILocalVariable(name: "version", arg: 4, scope: !3047, file: !167, line: 64, type: !31)
!3108 = !DILocalVariable(name: "authors", arg: 5, scope: !3047, file: !167, line: 65, type: !3102)
!3109 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3047, file: !167, line: 65, type: !96)
!3110 = !DILocation(line: 62, column: 24, scope: !3047)
!3111 = !DILocation(line: 63, column: 30, scope: !3047)
!3112 = !DILocation(line: 63, column: 56, scope: !3047)
!3113 = !DILocation(line: 64, column: 30, scope: !3047)
!3114 = !DILocation(line: 65, column: 39, scope: !3047)
!3115 = !DILocation(line: 65, column: 55, scope: !3047)
!3116 = !DILocation(line: 67, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3047, file: !167, line: 67, column: 7)
!3118 = !DILocation(line: 67, column: 7, scope: !3047)
!3119 = !DILocation(line: 68, column: 5, scope: !3117)
!3120 = !DILocation(line: 70, column: 5, scope: !3117)
!3121 = !DILocation(line: 84, column: 3, scope: !3047)
!3122 = !DILocation(line: 86, column: 3, scope: !3047)
!3123 = !DILocation(line: 95, column: 3, scope: !3047)
!3124 = !DILocation(line: 99, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3047, file: !167, line: 96, column: 5)
!3126 = !DILocation(line: 102, column: 7, scope: !3125)
!3127 = !DILocation(line: 103, column: 7, scope: !3125)
!3128 = !DILocation(line: 106, column: 7, scope: !3125)
!3129 = !DILocation(line: 107, column: 7, scope: !3125)
!3130 = !DILocation(line: 110, column: 7, scope: !3125)
!3131 = !DILocation(line: 112, column: 7, scope: !3125)
!3132 = !DILocation(line: 117, column: 7, scope: !3125)
!3133 = !DILocation(line: 119, column: 7, scope: !3125)
!3134 = !DILocation(line: 124, column: 7, scope: !3125)
!3135 = !DILocation(line: 126, column: 7, scope: !3125)
!3136 = !DILocation(line: 131, column: 7, scope: !3125)
!3137 = !DILocation(line: 134, column: 7, scope: !3125)
!3138 = !DILocation(line: 139, column: 7, scope: !3125)
!3139 = !DILocation(line: 142, column: 7, scope: !3125)
!3140 = !DILocation(line: 147, column: 7, scope: !3125)
!3141 = !DILocation(line: 151, column: 7, scope: !3125)
!3142 = !DILocation(line: 156, column: 7, scope: !3125)
!3143 = !DILocation(line: 160, column: 7, scope: !3125)
!3144 = !DILocation(line: 167, column: 7, scope: !3125)
!3145 = !DILocation(line: 171, column: 7, scope: !3125)
!3146 = !DILocation(line: 173, column: 1, scope: !3047)
!3147 = distinct !DISubprogram(name: "version_etc_ar", scope: !167, file: !167, line: 180, type: !3148, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !3050, !31, !31, !31, !3102}
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156}
!3151 = !DILocalVariable(name: "stream", arg: 1, scope: !3147, file: !167, line: 180, type: !3050)
!3152 = !DILocalVariable(name: "command_name", arg: 2, scope: !3147, file: !167, line: 181, type: !31)
!3153 = !DILocalVariable(name: "package", arg: 3, scope: !3147, file: !167, line: 181, type: !31)
!3154 = !DILocalVariable(name: "version", arg: 4, scope: !3147, file: !167, line: 182, type: !31)
!3155 = !DILocalVariable(name: "authors", arg: 5, scope: !3147, file: !167, line: 182, type: !3102)
!3156 = !DILocalVariable(name: "n_authors", scope: !3147, file: !167, line: 184, type: !96)
!3157 = !DILocation(line: 180, column: 23, scope: !3147)
!3158 = !DILocation(line: 181, column: 29, scope: !3147)
!3159 = !DILocation(line: 181, column: 55, scope: !3147)
!3160 = !DILocation(line: 182, column: 29, scope: !3147)
!3161 = !DILocation(line: 182, column: 59, scope: !3147)
!3162 = !DILocation(line: 184, column: 10, scope: !3147)
!3163 = !DILocation(line: 186, column: 8, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3147, file: !167, line: 186, column: 3)
!3165 = !DILocation(line: 0, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3164, file: !167, line: 186, column: 3)
!3167 = !DILocation(line: 186, column: 23, scope: !3166)
!3168 = !DILocation(line: 186, column: 3, scope: !3164)
!3169 = !DILocation(line: 186, column: 52, scope: !3166)
!3170 = distinct !{!3170, !3168, !3171}
!3171 = !DILocation(line: 187, column: 5, scope: !3164)
!3172 = !DILocation(line: 188, column: 3, scope: !3147)
!3173 = !DILocation(line: 189, column: 1, scope: !3147)
!3174 = distinct !DISubprogram(name: "version_etc_va", scope: !167, file: !167, line: 196, type: !3175, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3184)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !3050, !31, !31, !31, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !164, line: 189, size: 192, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3178, file: !164, line: 189, baseType: !7, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3178, file: !164, line: 189, baseType: !7, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3178, file: !164, line: 189, baseType: !23, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3178, file: !164, line: 189, baseType: !23, size: 64, offset: 128)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DILocalVariable(name: "stream", arg: 1, scope: !3174, file: !167, line: 196, type: !3050)
!3186 = !DILocalVariable(name: "command_name", arg: 2, scope: !3174, file: !167, line: 197, type: !31)
!3187 = !DILocalVariable(name: "package", arg: 3, scope: !3174, file: !167, line: 197, type: !31)
!3188 = !DILocalVariable(name: "version", arg: 4, scope: !3174, file: !167, line: 198, type: !31)
!3189 = !DILocalVariable(name: "authors", arg: 5, scope: !3174, file: !167, line: 198, type: !3177)
!3190 = !DILocalVariable(name: "n_authors", scope: !3174, file: !167, line: 200, type: !96)
!3191 = !DILocalVariable(name: "authtab", scope: !3174, file: !167, line: 201, type: !3192)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !105)
!3193 = !DILocation(line: 196, column: 23, scope: !3174)
!3194 = !DILocation(line: 197, column: 29, scope: !3174)
!3195 = !DILocation(line: 197, column: 55, scope: !3174)
!3196 = !DILocation(line: 198, column: 29, scope: !3174)
!3197 = !DILocation(line: 198, column: 46, scope: !3174)
!3198 = !DILocation(line: 201, column: 3, scope: !3174)
!3199 = !DILocation(line: 201, column: 15, scope: !3174)
!3200 = !DILocation(line: 200, column: 10, scope: !3174)
!3201 = !DILocation(line: 205, column: 35, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !167, line: 203, column: 3)
!3203 = distinct !DILexicalBlock(scope: !3174, file: !167, line: 203, column: 3)
!3204 = !DILocation(line: 205, column: 14, scope: !3202)
!3205 = !DILocation(line: 205, column: 33, scope: !3202)
!3206 = !DILocation(line: 205, column: 67, scope: !3202)
!3207 = !DILocation(line: 203, column: 3, scope: !3203)
!3208 = !DILocation(line: 0, scope: !3202)
!3209 = !DILocation(line: 208, column: 3, scope: !3174)
!3210 = !DILocation(line: 210, column: 1, scope: !3174)
!3211 = distinct !DISubprogram(name: "version_etc", scope: !167, file: !167, line: 227, type: !3212, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3050, !31, !31, !31, null}
!3214 = !{!3215, !3216, !3217, !3218, !3219}
!3215 = !DILocalVariable(name: "stream", arg: 1, scope: !3211, file: !167, line: 227, type: !3050)
!3216 = !DILocalVariable(name: "command_name", arg: 2, scope: !3211, file: !167, line: 228, type: !31)
!3217 = !DILocalVariable(name: "package", arg: 3, scope: !3211, file: !167, line: 228, type: !31)
!3218 = !DILocalVariable(name: "version", arg: 4, scope: !3211, file: !167, line: 229, type: !31)
!3219 = !DILocalVariable(name: "authors", scope: !3211, file: !167, line: 231, type: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3221, line: 52, baseType: !3222)
!3221 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3223, line: 48, baseType: !3224)
!3223 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !164, line: 231, baseType: !3225)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3178, size: 192, elements: !3081)
!3226 = !DILocation(line: 227, column: 20, scope: !3211)
!3227 = !DILocation(line: 228, column: 26, scope: !3211)
!3228 = !DILocation(line: 228, column: 52, scope: !3211)
!3229 = !DILocation(line: 229, column: 26, scope: !3211)
!3230 = !DILocation(line: 231, column: 3, scope: !3211)
!3231 = !DILocation(line: 231, column: 11, scope: !3211)
!3232 = !DILocation(line: 233, column: 3, scope: !3211)
!3233 = !DILocation(line: 234, column: 3, scope: !3211)
!3234 = !DILocation(line: 235, column: 3, scope: !3211)
!3235 = !DILocation(line: 236, column: 1, scope: !3211)
!3236 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !167, file: !167, line: 239, type: !640, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !44)
!3237 = !DILocation(line: 245, column: 3, scope: !3236)
!3238 = !DILocation(line: 251, column: 3, scope: !3236)
!3239 = !DILocation(line: 256, column: 3, scope: !3236)
!3240 = !DILocation(line: 258, column: 1, scope: !3236)
!3241 = distinct !DISubprogram(name: "xnmalloc", scope: !175, file: !175, line: 99, type: !970, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3242)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !175, line: 99, type: !96)
!3244 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !175, line: 99, type: !96)
!3245 = !DILocation(line: 99, column: 18, scope: !3241)
!3246 = !DILocation(line: 99, column: 28, scope: !3241)
!3247 = !DILocation(line: 101, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3241, file: !175, line: 101, column: 7)
!3249 = !DILocation(line: 101, column: 7, scope: !3241)
!3250 = !DILocation(line: 102, column: 5, scope: !3248)
!3251 = !DILocation(line: 103, column: 21, scope: !3241)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !3254, line: 39, type: !96)
!3253 = distinct !DISubprogram(name: "xmalloc", scope: !3254, file: !3254, line: 39, type: !3255, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3257)
!3254 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!23, !96}
!3257 = !{!3252, !3258}
!3258 = !DILocalVariable(name: "p", scope: !3253, file: !3254, line: 41, type: !23)
!3259 = !DILocation(line: 39, column: 17, scope: !3253, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 103, column: 10, scope: !3241)
!3261 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3260)
!3262 = !DILocation(line: 41, column: 9, scope: !3253, inlinedAt: !3260)
!3263 = !DILocation(line: 42, column: 8, scope: !3264, inlinedAt: !3260)
!3264 = distinct !DILexicalBlock(scope: !3253, file: !3254, line: 42, column: 7)
!3265 = !DILocation(line: 42, column: 15, scope: !3264, inlinedAt: !3260)
!3266 = !DILocation(line: 42, column: 10, scope: !3264, inlinedAt: !3260)
!3267 = !DILocation(line: 43, column: 5, scope: !3264, inlinedAt: !3260)
!3268 = !DILocation(line: 103, column: 3, scope: !3241)
!3269 = !DILocation(line: 39, column: 17, scope: !3253)
!3270 = !DILocation(line: 41, column: 13, scope: !3253)
!3271 = !DILocation(line: 41, column: 9, scope: !3253)
!3272 = !DILocation(line: 42, column: 8, scope: !3264)
!3273 = !DILocation(line: 42, column: 15, scope: !3264)
!3274 = !DILocation(line: 42, column: 10, scope: !3264)
!3275 = !DILocation(line: 43, column: 5, scope: !3264)
!3276 = !DILocation(line: 44, column: 3, scope: !3253)
!3277 = distinct !DISubprogram(name: "xnrealloc", scope: !175, file: !175, line: 112, type: !3278, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!23, !23, !96, !96}
!3280 = !{!3281, !3282, !3283}
!3281 = !DILocalVariable(name: "p", arg: 1, scope: !3277, file: !175, line: 112, type: !23)
!3282 = !DILocalVariable(name: "n", arg: 2, scope: !3277, file: !175, line: 112, type: !96)
!3283 = !DILocalVariable(name: "s", arg: 3, scope: !3277, file: !175, line: 112, type: !96)
!3284 = !DILocation(line: 112, column: 18, scope: !3277)
!3285 = !DILocation(line: 112, column: 28, scope: !3277)
!3286 = !DILocation(line: 112, column: 38, scope: !3277)
!3287 = !DILocation(line: 114, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3277, file: !175, line: 114, column: 7)
!3289 = !DILocation(line: 114, column: 7, scope: !3277)
!3290 = !DILocation(line: 115, column: 5, scope: !3288)
!3291 = !DILocation(line: 116, column: 25, scope: !3277)
!3292 = !DILocalVariable(name: "p", arg: 1, scope: !3293, file: !3254, line: 51, type: !23)
!3293 = distinct !DISubprogram(name: "xrealloc", scope: !3254, file: !3254, line: 51, type: !3294, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!23, !23, !96}
!3296 = !{!3292, !3297}
!3297 = !DILocalVariable(name: "n", arg: 2, scope: !3293, file: !3254, line: 51, type: !96)
!3298 = !DILocation(line: 51, column: 17, scope: !3293, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 116, column: 10, scope: !3277)
!3300 = !DILocation(line: 51, column: 27, scope: !3293, inlinedAt: !3299)
!3301 = !DILocation(line: 53, column: 8, scope: !3302, inlinedAt: !3299)
!3302 = distinct !DILexicalBlock(scope: !3293, file: !3254, line: 53, column: 7)
!3303 = !DILocation(line: 53, column: 13, scope: !3302, inlinedAt: !3299)
!3304 = !DILocation(line: 53, column: 10, scope: !3302, inlinedAt: !3299)
!3305 = !DILocation(line: 57, column: 7, scope: !3306, inlinedAt: !3299)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !3254, line: 54, column: 5)
!3307 = !DILocation(line: 58, column: 7, scope: !3306, inlinedAt: !3299)
!3308 = !DILocation(line: 61, column: 7, scope: !3293, inlinedAt: !3299)
!3309 = !DILocation(line: 62, column: 8, scope: !3310, inlinedAt: !3299)
!3310 = distinct !DILexicalBlock(scope: !3293, file: !3254, line: 62, column: 7)
!3311 = !DILocation(line: 62, column: 13, scope: !3310, inlinedAt: !3299)
!3312 = !DILocation(line: 62, column: 10, scope: !3310, inlinedAt: !3299)
!3313 = !DILocation(line: 63, column: 5, scope: !3310, inlinedAt: !3299)
!3314 = !DILocation(line: 0, scope: !3293, inlinedAt: !3299)
!3315 = !DILocation(line: 116, column: 3, scope: !3277)
!3316 = !DILocation(line: 51, column: 17, scope: !3293)
!3317 = !DILocation(line: 51, column: 27, scope: !3293)
!3318 = !DILocation(line: 53, column: 8, scope: !3302)
!3319 = !DILocation(line: 53, column: 13, scope: !3302)
!3320 = !DILocation(line: 53, column: 10, scope: !3302)
!3321 = !DILocation(line: 57, column: 7, scope: !3306)
!3322 = !DILocation(line: 58, column: 7, scope: !3306)
!3323 = !DILocation(line: 61, column: 7, scope: !3293)
!3324 = !DILocation(line: 62, column: 8, scope: !3310)
!3325 = !DILocation(line: 62, column: 13, scope: !3310)
!3326 = !DILocation(line: 62, column: 10, scope: !3310)
!3327 = !DILocation(line: 63, column: 5, scope: !3310)
!3328 = !DILocation(line: 0, scope: !3293)
!3329 = !DILocation(line: 65, column: 1, scope: !3293)
!3330 = !DILocation(line: 174, column: 19, scope: !176)
!3331 = !DILocation(line: 174, column: 30, scope: !176)
!3332 = !DILocation(line: 174, column: 41, scope: !176)
!3333 = !DILocation(line: 176, column: 14, scope: !176)
!3334 = !DILocation(line: 176, column: 10, scope: !176)
!3335 = !DILocation(line: 178, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !176, file: !175, line: 178, column: 7)
!3337 = !DILocation(line: 178, column: 7, scope: !176)
!3338 = !DILocation(line: 180, column: 13, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !175, line: 180, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !175, line: 179, column: 5)
!3341 = !DILocation(line: 180, column: 11, scope: !3340)
!3342 = !DILocation(line: 188, column: 30, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !175, line: 181, column: 9)
!3344 = !DILocation(line: 189, column: 16, scope: !3343)
!3345 = !DILocation(line: 189, column: 13, scope: !3343)
!3346 = !DILocation(line: 190, column: 9, scope: !3343)
!3347 = !DILocation(line: 0, scope: !3343)
!3348 = !DILocation(line: 191, column: 11, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3340, file: !175, line: 191, column: 11)
!3350 = !DILocation(line: 191, column: 11, scope: !3340)
!3351 = !DILocation(line: 206, column: 7, scope: !176)
!3352 = !DILocation(line: 207, column: 25, scope: !176)
!3353 = !DILocation(line: 51, column: 17, scope: !3293, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 207, column: 10, scope: !176)
!3355 = !DILocation(line: 51, column: 27, scope: !3293, inlinedAt: !3354)
!3356 = !DILocation(line: 53, column: 10, scope: !3302, inlinedAt: !3354)
!3357 = !DILocation(line: 192, column: 9, scope: !3349)
!3358 = !DILocation(line: 200, column: 69, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !175, line: 200, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3336, file: !175, line: 195, column: 5)
!3361 = !DILocation(line: 201, column: 11, scope: !3359)
!3362 = !DILocation(line: 200, column: 11, scope: !3360)
!3363 = !DILocation(line: 202, column: 9, scope: !3359)
!3364 = !DILocation(line: 203, column: 14, scope: !3360)
!3365 = !DILocation(line: 203, column: 18, scope: !3360)
!3366 = !DILocation(line: 203, column: 9, scope: !3360)
!3367 = !DILocation(line: 53, column: 8, scope: !3302, inlinedAt: !3354)
!3368 = !DILocation(line: 57, column: 7, scope: !3306, inlinedAt: !3354)
!3369 = !DILocation(line: 58, column: 7, scope: !3306, inlinedAt: !3354)
!3370 = !DILocation(line: 61, column: 7, scope: !3293, inlinedAt: !3354)
!3371 = !DILocation(line: 62, column: 8, scope: !3310, inlinedAt: !3354)
!3372 = !DILocation(line: 62, column: 13, scope: !3310, inlinedAt: !3354)
!3373 = !DILocation(line: 62, column: 10, scope: !3310, inlinedAt: !3354)
!3374 = !DILocation(line: 63, column: 5, scope: !3310, inlinedAt: !3354)
!3375 = !DILocation(line: 0, scope: !3293, inlinedAt: !3354)
!3376 = !DILocation(line: 207, column: 3, scope: !176)
!3377 = distinct !DISubprogram(name: "xcharalloc", scope: !175, file: !175, line: 216, type: !2332, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3378)
!3378 = !{!3379}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3377, file: !175, line: 216, type: !96)
!3380 = !DILocation(line: 216, column: 20, scope: !3377)
!3381 = !DILocation(line: 39, column: 17, scope: !3253, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 218, column: 10, scope: !3377)
!3383 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3382)
!3384 = !DILocation(line: 41, column: 9, scope: !3253, inlinedAt: !3382)
!3385 = !DILocation(line: 42, column: 8, scope: !3264, inlinedAt: !3382)
!3386 = !DILocation(line: 42, column: 15, scope: !3264, inlinedAt: !3382)
!3387 = !DILocation(line: 42, column: 10, scope: !3264, inlinedAt: !3382)
!3388 = !DILocation(line: 43, column: 5, scope: !3264, inlinedAt: !3382)
!3389 = !DILocation(line: 218, column: 3, scope: !3377)
!3390 = distinct !DISubprogram(name: "x2realloc", scope: !3254, file: !3254, line: 74, type: !3391, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!23, !23, !179}
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !3390, file: !3254, line: 74, type: !23)
!3395 = !DILocalVariable(name: "pn", arg: 2, scope: !3390, file: !3254, line: 74, type: !179)
!3396 = !DILocation(line: 74, column: 18, scope: !3390)
!3397 = !DILocation(line: 74, column: 29, scope: !3390)
!3398 = !DILocation(line: 174, column: 19, scope: !176, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 76, column: 10, scope: !3390)
!3400 = !DILocation(line: 174, column: 30, scope: !176, inlinedAt: !3399)
!3401 = !DILocation(line: 174, column: 41, scope: !176, inlinedAt: !3399)
!3402 = !DILocation(line: 176, column: 14, scope: !176, inlinedAt: !3399)
!3403 = !DILocation(line: 176, column: 10, scope: !176, inlinedAt: !3399)
!3404 = !DILocation(line: 178, column: 9, scope: !3336, inlinedAt: !3399)
!3405 = !DILocation(line: 178, column: 7, scope: !176, inlinedAt: !3399)
!3406 = !DILocation(line: 180, column: 13, scope: !3339, inlinedAt: !3399)
!3407 = !DILocation(line: 180, column: 11, scope: !3340, inlinedAt: !3399)
!3408 = !DILocation(line: 191, column: 11, scope: !3349, inlinedAt: !3399)
!3409 = !DILocation(line: 191, column: 11, scope: !3340, inlinedAt: !3399)
!3410 = !DILocation(line: 206, column: 7, scope: !176, inlinedAt: !3399)
!3411 = !DILocation(line: 51, column: 17, scope: !3293, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 207, column: 10, scope: !176, inlinedAt: !3399)
!3413 = !DILocation(line: 51, column: 27, scope: !3293, inlinedAt: !3412)
!3414 = !DILocation(line: 53, column: 10, scope: !3302, inlinedAt: !3412)
!3415 = !DILocation(line: 192, column: 9, scope: !3349, inlinedAt: !3399)
!3416 = !DILocation(line: 201, column: 11, scope: !3359, inlinedAt: !3399)
!3417 = !DILocation(line: 200, column: 11, scope: !3360, inlinedAt: !3399)
!3418 = !DILocation(line: 202, column: 9, scope: !3359, inlinedAt: !3399)
!3419 = !DILocation(line: 203, column: 14, scope: !3360, inlinedAt: !3399)
!3420 = !DILocation(line: 203, column: 18, scope: !3360, inlinedAt: !3399)
!3421 = !DILocation(line: 203, column: 9, scope: !3360, inlinedAt: !3399)
!3422 = !DILocation(line: 53, column: 8, scope: !3302, inlinedAt: !3412)
!3423 = !DILocation(line: 57, column: 7, scope: !3306, inlinedAt: !3412)
!3424 = !DILocation(line: 58, column: 7, scope: !3306, inlinedAt: !3412)
!3425 = !DILocation(line: 61, column: 7, scope: !3293, inlinedAt: !3412)
!3426 = !DILocation(line: 62, column: 8, scope: !3310, inlinedAt: !3412)
!3427 = !DILocation(line: 62, column: 13, scope: !3310, inlinedAt: !3412)
!3428 = !DILocation(line: 62, column: 10, scope: !3310, inlinedAt: !3412)
!3429 = !DILocation(line: 63, column: 5, scope: !3310, inlinedAt: !3412)
!3430 = !DILocation(line: 0, scope: !3293, inlinedAt: !3412)
!3431 = !DILocation(line: 76, column: 3, scope: !3390)
!3432 = distinct !DISubprogram(name: "xzalloc", scope: !3254, file: !3254, line: 84, type: !3255, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3433)
!3433 = !{!3434}
!3434 = !DILocalVariable(name: "s", arg: 1, scope: !3432, file: !3254, line: 84, type: !96)
!3435 = !DILocation(line: 84, column: 17, scope: !3432)
!3436 = !DILocation(line: 39, column: 17, scope: !3253, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 86, column: 18, scope: !3432)
!3438 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3437)
!3439 = !DILocation(line: 41, column: 9, scope: !3253, inlinedAt: !3437)
!3440 = !DILocation(line: 42, column: 8, scope: !3264, inlinedAt: !3437)
!3441 = !DILocation(line: 42, column: 15, scope: !3264, inlinedAt: !3437)
!3442 = !DILocation(line: 42, column: 10, scope: !3264, inlinedAt: !3437)
!3443 = !DILocation(line: 43, column: 5, scope: !3264, inlinedAt: !3437)
!3444 = !DILocation(line: 86, column: 10, scope: !3432)
!3445 = !DILocation(line: 86, column: 3, scope: !3432)
!3446 = distinct !DISubprogram(name: "xcalloc", scope: !3254, file: !3254, line: 93, type: !970, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3447)
!3447 = !{!3448, !3449, !3450}
!3448 = !DILocalVariable(name: "n", arg: 1, scope: !3446, file: !3254, line: 93, type: !96)
!3449 = !DILocalVariable(name: "s", arg: 2, scope: !3446, file: !3254, line: 93, type: !96)
!3450 = !DILocalVariable(name: "p", scope: !3446, file: !3254, line: 95, type: !23)
!3451 = !DILocation(line: 93, column: 17, scope: !3446)
!3452 = !DILocation(line: 93, column: 27, scope: !3446)
!3453 = !DILocation(line: 100, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3446, file: !3254, line: 100, column: 7)
!3455 = !DILocation(line: 101, column: 7, scope: !3454)
!3456 = !DILocation(line: 101, column: 18, scope: !3454)
!3457 = !DILocation(line: 95, column: 9, scope: !3446)
!3458 = !DILocation(line: 101, column: 16, scope: !3454)
!3459 = !DILocation(line: 100, column: 7, scope: !3446)
!3460 = !DILocation(line: 102, column: 5, scope: !3454)
!3461 = !DILocation(line: 103, column: 3, scope: !3446)
!3462 = distinct !DISubprogram(name: "xmemdup", scope: !3254, file: !3254, line: 111, type: !3463, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3467)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!23, !3465, !96}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "p", arg: 1, scope: !3462, file: !3254, line: 111, type: !3465)
!3469 = !DILocalVariable(name: "s", arg: 2, scope: !3462, file: !3254, line: 111, type: !96)
!3470 = !DILocation(line: 111, column: 22, scope: !3462)
!3471 = !DILocation(line: 111, column: 32, scope: !3462)
!3472 = !DILocation(line: 39, column: 17, scope: !3253, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 113, column: 18, scope: !3462)
!3474 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3473)
!3475 = !DILocation(line: 41, column: 9, scope: !3253, inlinedAt: !3473)
!3476 = !DILocation(line: 42, column: 8, scope: !3264, inlinedAt: !3473)
!3477 = !DILocation(line: 42, column: 15, scope: !3264, inlinedAt: !3473)
!3478 = !DILocation(line: 42, column: 10, scope: !3264, inlinedAt: !3473)
!3479 = !DILocation(line: 43, column: 5, scope: !3264, inlinedAt: !3473)
!3480 = !DILocation(line: 113, column: 10, scope: !3462)
!3481 = !DILocation(line: 113, column: 3, scope: !3462)
!3482 = distinct !DISubprogram(name: "xstrdup", scope: !3254, file: !3254, line: 119, type: !2537, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3483)
!3483 = !{!3484}
!3484 = !DILocalVariable(name: "string", arg: 1, scope: !3482, file: !3254, line: 119, type: !31)
!3485 = !DILocation(line: 119, column: 22, scope: !3482)
!3486 = !DILocation(line: 121, column: 27, scope: !3482)
!3487 = !DILocation(line: 121, column: 43, scope: !3482)
!3488 = !DILocation(line: 111, column: 22, scope: !3462, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 121, column: 10, scope: !3482)
!3490 = !DILocation(line: 111, column: 32, scope: !3462, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 17, scope: !3253, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 113, column: 18, scope: !3462, inlinedAt: !3489)
!3493 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3492)
!3494 = !DILocation(line: 41, column: 9, scope: !3253, inlinedAt: !3492)
!3495 = !DILocation(line: 42, column: 8, scope: !3264, inlinedAt: !3492)
!3496 = !DILocation(line: 42, column: 15, scope: !3264, inlinedAt: !3492)
!3497 = !DILocation(line: 42, column: 10, scope: !3264, inlinedAt: !3492)
!3498 = !DILocation(line: 43, column: 5, scope: !3264, inlinedAt: !3492)
!3499 = !DILocation(line: 113, column: 10, scope: !3462, inlinedAt: !3489)
!3500 = !DILocation(line: 121, column: 3, scope: !3482)
!3501 = distinct !DISubprogram(name: "xalloc_die", scope: !3502, file: !3502, line: 32, type: !640, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !188, retainedNodes: !44)
!3502 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3503 = !DILocation(line: 34, column: 10, scope: !3501)
!3504 = !DILocation(line: 34, column: 33, scope: !3501)
!3505 = !DILocation(line: 34, column: 3, scope: !3501)
!3506 = !DILocation(line: 40, column: 3, scope: !3501)
!3507 = distinct !DISubprogram(name: "rpl_calloc", scope: !3508, file: !3508, line: 42, type: !970, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !190, retainedNodes: !3509)
!3508 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !3508, line: 42, type: !96)
!3511 = !DILocalVariable(name: "s", arg: 2, scope: !3507, file: !3508, line: 42, type: !96)
!3512 = !DILocalVariable(name: "result", scope: !3507, file: !3508, line: 44, type: !23)
!3513 = !DILocalVariable(name: "bytes", scope: !3514, file: !3508, line: 56, type: !96)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !3508, line: 53, column: 5)
!3515 = distinct !DILexicalBlock(scope: !3507, file: !3508, line: 47, column: 7)
!3516 = !DILocation(line: 42, column: 20, scope: !3507)
!3517 = !DILocation(line: 42, column: 30, scope: !3507)
!3518 = !DILocation(line: 47, column: 9, scope: !3515)
!3519 = !DILocation(line: 47, column: 19, scope: !3515)
!3520 = !DILocation(line: 47, column: 14, scope: !3515)
!3521 = !DILocation(line: 56, column: 24, scope: !3514)
!3522 = !DILocation(line: 56, column: 14, scope: !3514)
!3523 = !DILocation(line: 57, column: 17, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !3508, line: 57, column: 11)
!3525 = !DILocation(line: 57, column: 21, scope: !3524)
!3526 = !DILocation(line: 57, column: 11, scope: !3514)
!3527 = !DILocation(line: 59, column: 11, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !3508, line: 58, column: 9)
!3529 = !DILocation(line: 59, column: 17, scope: !3528)
!3530 = !DILocation(line: 65, column: 12, scope: !3507)
!3531 = !DILocation(line: 44, column: 9, scope: !3507)
!3532 = !DILocation(line: 72, column: 3, scope: !3507)
!3533 = !DILocation(line: 0, scope: !3528)
!3534 = !DILocation(line: 73, column: 1, scope: !3507)
!3535 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3536, file: !3536, line: 385, type: !3537, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3551)
!3536 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!96, !3539, !31, !96, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1495, line: 6, baseType: !3542)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1497, line: 21, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 13, size: 64, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3543, file: !1497, line: 15, baseType: !34, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3543, file: !1497, line: 20, baseType: !3547, size: 32, offset: 32)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3543, file: !1497, line: 16, size: 32, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3547, file: !1497, line: 18, baseType: !7, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3547, file: !1497, line: 19, baseType: !1506, size: 32)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3552 = !DILocalVariable(name: "pwc", arg: 1, scope: !3535, file: !3536, line: 385, type: !3539)
!3553 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !3536, line: 385, type: !31)
!3554 = !DILocalVariable(name: "n", arg: 3, scope: !3535, file: !3536, line: 385, type: !96)
!3555 = !DILocalVariable(name: "ps", arg: 4, scope: !3535, file: !3536, line: 385, type: !3540)
!3556 = !DILocalVariable(name: "ret", scope: !3535, file: !3536, line: 387, type: !96)
!3557 = !DILocalVariable(name: "wc", scope: !3535, file: !3536, line: 388, type: !1511)
!3558 = !DILocalVariable(name: "uc", scope: !3559, file: !3536, line: 449, type: !1355)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3536, line: 448, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3535, file: !3536, line: 447, column: 7)
!3561 = !DILocation(line: 385, column: 23, scope: !3535)
!3562 = !DILocation(line: 385, column: 40, scope: !3535)
!3563 = !DILocation(line: 385, column: 50, scope: !3535)
!3564 = !DILocation(line: 385, column: 64, scope: !3535)
!3565 = !DILocation(line: 388, column: 3, scope: !3535)
!3566 = !DILocation(line: 404, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3535, file: !3536, line: 404, column: 7)
!3568 = !DILocation(line: 404, column: 7, scope: !3535)
!3569 = !DILocation(line: 439, column: 9, scope: !3535)
!3570 = !DILocation(line: 387, column: 10, scope: !3535)
!3571 = !DILocation(line: 447, column: 19, scope: !3560)
!3572 = !DILocation(line: 447, column: 31, scope: !3560)
!3573 = !DILocation(line: 447, column: 26, scope: !3560)
!3574 = !DILocation(line: 447, column: 41, scope: !3560)
!3575 = !DILocation(line: 447, column: 7, scope: !3535)
!3576 = !DILocation(line: 449, column: 26, scope: !3559)
!3577 = !DILocation(line: 449, column: 21, scope: !3559)
!3578 = !DILocation(line: 450, column: 14, scope: !3559)
!3579 = !DILocation(line: 450, column: 12, scope: !3559)
!3580 = !DILocation(line: 0, scope: !3559)
!3581 = !DILocation(line: 456, column: 1, scope: !3535)
!3582 = distinct !DISubprogram(name: "close_stream", scope: !3583, file: !3583, line: 56, type: !3584, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3620)
!3583 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!34, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3052, line: 7, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3054, line: 49, size: 1728, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3588, file: !3054, line: 51, baseType: !34, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3588, file: !3054, line: 54, baseType: !21, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3588, file: !3054, line: 55, baseType: !21, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3588, file: !3054, line: 56, baseType: !21, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3588, file: !3054, line: 57, baseType: !21, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3588, file: !3054, line: 58, baseType: !21, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3588, file: !3054, line: 59, baseType: !21, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3588, file: !3054, line: 60, baseType: !21, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3588, file: !3054, line: 61, baseType: !21, size: 64, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3588, file: !3054, line: 64, baseType: !21, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3588, file: !3054, line: 65, baseType: !21, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3588, file: !3054, line: 66, baseType: !21, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3588, file: !3054, line: 68, baseType: !3069, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3588, file: !3054, line: 70, baseType: !3604, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3588, file: !3054, line: 72, baseType: !34, size: 32, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3588, file: !3054, line: 73, baseType: !34, size: 32, offset: 928)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3588, file: !3054, line: 74, baseType: !1112, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3588, file: !3054, line: 77, baseType: !95, size: 16, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3588, file: !3054, line: 78, baseType: !3078, size: 8, offset: 1040)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3588, file: !3054, line: 79, baseType: !3080, size: 8, offset: 1048)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3588, file: !3054, line: 81, baseType: !3084, size: 64, offset: 1088)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3588, file: !3054, line: 89, baseType: !3087, size: 64, offset: 1152)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3588, file: !3054, line: 91, baseType: !3089, size: 64, offset: 1216)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3588, file: !3054, line: 92, baseType: !3092, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3588, file: !3054, line: 93, baseType: !3604, size: 64, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3588, file: !3054, line: 94, baseType: !23, size: 64, offset: 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3588, file: !3054, line: 95, baseType: !96, size: 64, offset: 1472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3588, file: !3054, line: 96, baseType: !34, size: 32, offset: 1536)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3588, file: !3054, line: 98, baseType: !3099, size: 160, offset: 1568)
!3620 = !{!3621, !3622, !3624, !3625}
!3621 = !DILocalVariable(name: "stream", arg: 1, scope: !3582, file: !3583, line: 56, type: !3586)
!3622 = !DILocalVariable(name: "some_pending", scope: !3582, file: !3583, line: 58, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!3624 = !DILocalVariable(name: "prev_fail", scope: !3582, file: !3583, line: 59, type: !3623)
!3625 = !DILocalVariable(name: "fclose_fail", scope: !3582, file: !3583, line: 60, type: !3623)
!3626 = !DILocation(line: 56, column: 21, scope: !3582)
!3627 = !DILocation(line: 58, column: 30, scope: !3582)
!3628 = !DILocalVariable(name: "__stream", arg: 1, scope: !3629, file: !3630, line: 135, type: !3586)
!3629 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3630, file: !3630, line: 135, type: !3584, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3631)
!3630 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3631 = !{!3628}
!3632 = !DILocation(line: 135, column: 1, scope: !3629, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 59, column: 27, scope: !3582)
!3634 = !DILocation(line: 137, column: 10, scope: !3629, inlinedAt: !3633)
!3635 = !{!3636, !746, i64 0}
!3636 = !{!"_IO_FILE", !746, i64 0, !633, i64 8, !633, i64 16, !633, i64 24, !633, i64 32, !633, i64 40, !633, i64 48, !633, i64 56, !633, i64 64, !633, i64 72, !633, i64 80, !633, i64 88, !633, i64 96, !633, i64 104, !746, i64 112, !746, i64 116, !1152, i64 120, !1751, i64 128, !634, i64 130, !634, i64 131, !633, i64 136, !1152, i64 144, !633, i64 152, !633, i64 160, !633, i64 168, !633, i64 176, !1152, i64 184, !746, i64 192, !634, i64 196}
!3637 = !DILocation(line: 59, column: 43, scope: !3582)
!3638 = !DILocation(line: 60, column: 29, scope: !3582)
!3639 = !DILocation(line: 60, column: 45, scope: !3582)
!3640 = !DILocation(line: 70, column: 17, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3582, file: !3583, line: 70, column: 7)
!3642 = !DILocation(line: 58, column: 50, scope: !3582)
!3643 = !DILocation(line: 70, column: 33, scope: !3641)
!3644 = !DILocation(line: 70, column: 53, scope: !3641)
!3645 = !DILocation(line: 70, column: 59, scope: !3641)
!3646 = !DILocation(line: 70, column: 7, scope: !3582)
!3647 = !DILocation(line: 72, column: 11, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3641, file: !3583, line: 71, column: 5)
!3649 = !DILocation(line: 73, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3648, file: !3583, line: 72, column: 11)
!3651 = !DILocation(line: 73, column: 15, scope: !3650)
!3652 = !DILocation(line: 0, scope: !3582)
!3653 = !DILocation(line: 78, column: 1, scope: !3582)
!3654 = distinct !DISubprogram(name: "hard_locale", scope: !3655, file: !3655, line: 38, type: !3656, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !196, retainedNodes: !3658)
!3655 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!54, !34}
!3658 = !{!3659, !3660, !3661}
!3659 = !DILocalVariable(name: "category", arg: 1, scope: !3654, file: !3655, line: 38, type: !34)
!3660 = !DILocalVariable(name: "hard", scope: !3654, file: !3655, line: 40, type: !54)
!3661 = !DILocalVariable(name: "p", scope: !3654, file: !3655, line: 41, type: !31)
!3662 = !DILocation(line: 38, column: 18, scope: !3654)
!3663 = !DILocation(line: 40, column: 8, scope: !3654)
!3664 = !DILocation(line: 41, column: 19, scope: !3654)
!3665 = !DILocation(line: 41, column: 15, scope: !3654)
!3666 = !DILocation(line: 43, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3654, file: !3655, line: 43, column: 7)
!3668 = !DILocation(line: 43, column: 7, scope: !3654)
!3669 = !DILocation(line: 47, column: 15, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3655, line: 47, column: 15)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3655, line: 46, column: 9)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3655, line: 45, column: 11)
!3673 = distinct !DILexicalBlock(scope: !3667, file: !3655, line: 44, column: 5)
!3674 = !DILocation(line: 47, column: 31, scope: !3670)
!3675 = !DILocation(line: 47, column: 36, scope: !3670)
!3676 = !DILocation(line: 47, column: 39, scope: !3670)
!3677 = !DILocation(line: 47, column: 59, scope: !3670)
!3678 = !DILocation(line: 47, column: 15, scope: !3671)
!3679 = !DILocation(line: 48, column: 13, scope: !3670)
!3680 = !DILocation(line: 71, column: 3, scope: !3654)
!3681 = distinct !DISubprogram(name: "locale_charset", scope: !3682, file: !3682, line: 687, type: !3683, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3685)
!3682 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!31}
!3685 = !{!3686}
!3686 = !DILocalVariable(name: "codeset", scope: !3681, file: !3682, line: 689, type: !31)
!3687 = !DILocation(line: 696, column: 13, scope: !3681)
!3688 = !DILocation(line: 689, column: 15, scope: !3681)
!3689 = !DILocation(line: 754, column: 15, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 754, column: 7)
!3691 = !DILocation(line: 754, column: 7, scope: !3681)
!3692 = !DILocation(line: 907, column: 13, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3682, line: 907, column: 13)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3682, line: 897, column: 7)
!3695 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 856, column: 3)
!3696 = !DILocation(line: 907, column: 24, scope: !3693)
!3697 = !DILocation(line: 907, column: 13, scope: !3694)
!3698 = !DILocation(line: 995, column: 3, scope: !3681)
!3699 = distinct !DISubprogram(name: "rpl_fclose", scope: !3700, file: !3700, line: 58, type: !3701, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !587, retainedNodes: !3737)
!3700 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!34, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3052, line: 7, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3054, line: 49, size: 1728, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !3054, line: 51, baseType: !34, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3705, file: !3054, line: 54, baseType: !21, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3705, file: !3054, line: 55, baseType: !21, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3705, file: !3054, line: 56, baseType: !21, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3705, file: !3054, line: 57, baseType: !21, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3705, file: !3054, line: 58, baseType: !21, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3705, file: !3054, line: 59, baseType: !21, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3705, file: !3054, line: 60, baseType: !21, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3705, file: !3054, line: 61, baseType: !21, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3705, file: !3054, line: 64, baseType: !21, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3705, file: !3054, line: 65, baseType: !21, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3705, file: !3054, line: 66, baseType: !21, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3705, file: !3054, line: 68, baseType: !3069, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3705, file: !3054, line: 70, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3705, file: !3054, line: 72, baseType: !34, size: 32, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3705, file: !3054, line: 73, baseType: !34, size: 32, offset: 928)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3705, file: !3054, line: 74, baseType: !1112, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3705, file: !3054, line: 77, baseType: !95, size: 16, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3705, file: !3054, line: 78, baseType: !3078, size: 8, offset: 1040)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3705, file: !3054, line: 79, baseType: !3080, size: 8, offset: 1048)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3705, file: !3054, line: 81, baseType: !3084, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3705, file: !3054, line: 89, baseType: !3087, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3705, file: !3054, line: 91, baseType: !3089, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3705, file: !3054, line: 92, baseType: !3092, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3705, file: !3054, line: 93, baseType: !3721, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3705, file: !3054, line: 94, baseType: !23, size: 64, offset: 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3705, file: !3054, line: 95, baseType: !96, size: 64, offset: 1472)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3705, file: !3054, line: 96, baseType: !34, size: 32, offset: 1536)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3705, file: !3054, line: 98, baseType: !3099, size: 160, offset: 1568)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "fp", arg: 1, scope: !3699, file: !3700, line: 58, type: !3703)
!3739 = !DILocalVariable(name: "saved_errno", scope: !3699, file: !3700, line: 60, type: !34)
!3740 = !DILocalVariable(name: "fd", scope: !3699, file: !3700, line: 61, type: !34)
!3741 = !DILocalVariable(name: "result", scope: !3699, file: !3700, line: 62, type: !34)
!3742 = !DILocation(line: 58, column: 19, scope: !3699)
!3743 = !DILocation(line: 60, column: 7, scope: !3699)
!3744 = !DILocation(line: 62, column: 7, scope: !3699)
!3745 = !DILocation(line: 65, column: 8, scope: !3699)
!3746 = !DILocation(line: 61, column: 7, scope: !3699)
!3747 = !DILocation(line: 66, column: 10, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3699, file: !3700, line: 66, column: 7)
!3749 = !DILocation(line: 66, column: 7, scope: !3699)
!3750 = !DILocation(line: 67, column: 12, scope: !3748)
!3751 = !DILocation(line: 67, column: 5, scope: !3748)
!3752 = !DILocation(line: 72, column: 9, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3699, file: !3700, line: 72, column: 7)
!3754 = !DILocation(line: 72, column: 23, scope: !3753)
!3755 = !DILocation(line: 72, column: 33, scope: !3753)
!3756 = !DILocation(line: 72, column: 26, scope: !3753)
!3757 = !DILocation(line: 72, column: 59, scope: !3753)
!3758 = !DILocation(line: 73, column: 7, scope: !3753)
!3759 = !DILocation(line: 73, column: 10, scope: !3753)
!3760 = !DILocation(line: 72, column: 7, scope: !3699)
!3761 = !DILocation(line: 100, column: 12, scope: !3699)
!3762 = !DILocation(line: 105, column: 7, scope: !3699)
!3763 = !DILocation(line: 74, column: 19, scope: !3753)
!3764 = !DILocation(line: 105, column: 19, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3699, file: !3700, line: 105, column: 7)
!3766 = !DILocation(line: 107, column: 13, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3765, file: !3700, line: 106, column: 5)
!3768 = !DILocation(line: 109, column: 5, scope: !3767)
!3769 = !DILocation(line: 0, scope: !3699)
!3770 = !DILocation(line: 112, column: 1, scope: !3699)
!3771 = distinct !DISubprogram(name: "rpl_fflush", scope: !3772, file: !3772, line: 129, type: !3773, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !589, retainedNodes: !3809)
!3772 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!34, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3052, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3054, line: 49, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !3054, line: 51, baseType: !34, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !3054, line: 54, baseType: !21, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !3054, line: 55, baseType: !21, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !3054, line: 56, baseType: !21, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !3054, line: 57, baseType: !21, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !3054, line: 58, baseType: !21, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !3054, line: 59, baseType: !21, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !3054, line: 60, baseType: !21, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !3054, line: 61, baseType: !21, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !3054, line: 64, baseType: !21, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !3054, line: 65, baseType: !21, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !3054, line: 66, baseType: !21, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !3054, line: 68, baseType: !3069, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !3054, line: 70, baseType: !3793, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !3054, line: 72, baseType: !34, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !3054, line: 73, baseType: !34, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !3054, line: 74, baseType: !1112, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !3054, line: 77, baseType: !95, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !3054, line: 78, baseType: !3078, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !3054, line: 79, baseType: !3080, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !3054, line: 81, baseType: !3084, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !3054, line: 89, baseType: !3087, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3777, file: !3054, line: 91, baseType: !3089, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3777, file: !3054, line: 92, baseType: !3092, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3777, file: !3054, line: 93, baseType: !3793, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3777, file: !3054, line: 94, baseType: !23, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !3054, line: 95, baseType: !96, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !3054, line: 96, baseType: !34, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !3054, line: 98, baseType: !3099, size: 160, offset: 1568)
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !3772, line: 129, type: !3775)
!3811 = !DILocation(line: 129, column: 19, scope: !3771)
!3812 = !DILocation(line: 150, column: 14, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 150, column: 7)
!3814 = !DILocation(line: 150, column: 22, scope: !3813)
!3815 = !DILocation(line: 150, column: 27, scope: !3813)
!3816 = !DILocation(line: 150, column: 7, scope: !3771)
!3817 = !DILocation(line: 151, column: 12, scope: !3813)
!3818 = !DILocation(line: 151, column: 5, scope: !3813)
!3819 = !DILocalVariable(name: "fp", arg: 1, scope: !3820, file: !3772, line: 41, type: !3775)
!3820 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3772, file: !3772, line: 41, type: !3821, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !589, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3775}
!3823 = !{!3819}
!3824 = !DILocation(line: 41, column: 48, scope: !3820, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 156, column: 3, scope: !3771)
!3826 = !DILocation(line: 43, column: 11, scope: !3827, inlinedAt: !3825)
!3827 = distinct !DILexicalBlock(scope: !3820, file: !3772, line: 43, column: 7)
!3828 = !DILocation(line: 43, column: 18, scope: !3827, inlinedAt: !3825)
!3829 = !DILocation(line: 43, column: 7, scope: !3820, inlinedAt: !3825)
!3830 = !DILocation(line: 45, column: 5, scope: !3827, inlinedAt: !3825)
!3831 = !DILocation(line: 158, column: 10, scope: !3771)
!3832 = !DILocation(line: 158, column: 3, scope: !3771)
!3833 = !DILocation(line: 0, scope: !3771)
!3834 = !DILocation(line: 232, column: 1, scope: !3771)
!3835 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3836, file: !3836, line: 28, type: !3837, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !591, retainedNodes: !3874)
!3836 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!34, !3839, !3873, !34}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3052, line: 7, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3054, line: 49, size: 1728, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3841, file: !3054, line: 51, baseType: !34, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3841, file: !3054, line: 54, baseType: !21, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3841, file: !3054, line: 55, baseType: !21, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3841, file: !3054, line: 56, baseType: !21, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3841, file: !3054, line: 57, baseType: !21, size: 64, offset: 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3841, file: !3054, line: 58, baseType: !21, size: 64, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3841, file: !3054, line: 59, baseType: !21, size: 64, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3841, file: !3054, line: 60, baseType: !21, size: 64, offset: 448)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3841, file: !3054, line: 61, baseType: !21, size: 64, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3841, file: !3054, line: 64, baseType: !21, size: 64, offset: 576)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3841, file: !3054, line: 65, baseType: !21, size: 64, offset: 640)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3841, file: !3054, line: 66, baseType: !21, size: 64, offset: 704)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3841, file: !3054, line: 68, baseType: !3069, size: 64, offset: 768)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3841, file: !3054, line: 70, baseType: !3857, size: 64, offset: 832)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3841, file: !3054, line: 72, baseType: !34, size: 32, offset: 896)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3841, file: !3054, line: 73, baseType: !34, size: 32, offset: 928)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3841, file: !3054, line: 74, baseType: !1112, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3841, file: !3054, line: 77, baseType: !95, size: 16, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3841, file: !3054, line: 78, baseType: !3078, size: 8, offset: 1040)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3841, file: !3054, line: 79, baseType: !3080, size: 8, offset: 1048)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3841, file: !3054, line: 81, baseType: !3084, size: 64, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3841, file: !3054, line: 89, baseType: !3087, size: 64, offset: 1152)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3841, file: !3054, line: 91, baseType: !3089, size: 64, offset: 1216)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3841, file: !3054, line: 92, baseType: !3092, size: 64, offset: 1280)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3841, file: !3054, line: 93, baseType: !3857, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3841, file: !3054, line: 94, baseType: !23, size: 64, offset: 1408)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3841, file: !3054, line: 95, baseType: !96, size: 64, offset: 1472)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3841, file: !3054, line: 96, baseType: !34, size: 32, offset: 1536)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3841, file: !3054, line: 98, baseType: !3099, size: 160, offset: 1568)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3221, line: 63, baseType: !1112)
!3874 = !{!3875, !3876, !3877, !3878}
!3875 = !DILocalVariable(name: "fp", arg: 1, scope: !3835, file: !3836, line: 28, type: !3839)
!3876 = !DILocalVariable(name: "offset", arg: 2, scope: !3835, file: !3836, line: 28, type: !3873)
!3877 = !DILocalVariable(name: "whence", arg: 3, scope: !3835, file: !3836, line: 28, type: !34)
!3878 = !DILocalVariable(name: "pos", scope: !3879, file: !3836, line: 117, type: !3873)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3836, line: 113, column: 5)
!3880 = distinct !DILexicalBlock(scope: !3835, file: !3836, line: 52, column: 7)
!3881 = !DILocation(line: 28, column: 15, scope: !3835)
!3882 = !DILocation(line: 28, column: 25, scope: !3835)
!3883 = !DILocation(line: 28, column: 37, scope: !3835)
!3884 = !DILocation(line: 52, column: 11, scope: !3880)
!3885 = !{!3636, !633, i64 16}
!3886 = !DILocation(line: 52, column: 31, scope: !3880)
!3887 = !{!3636, !633, i64 8}
!3888 = !DILocation(line: 52, column: 24, scope: !3880)
!3889 = !DILocation(line: 53, column: 7, scope: !3880)
!3890 = !DILocation(line: 53, column: 14, scope: !3880)
!3891 = !{!3636, !633, i64 40}
!3892 = !DILocation(line: 53, column: 35, scope: !3880)
!3893 = !{!3636, !633, i64 32}
!3894 = !DILocation(line: 53, column: 28, scope: !3880)
!3895 = !DILocation(line: 54, column: 7, scope: !3880)
!3896 = !DILocation(line: 54, column: 14, scope: !3880)
!3897 = !{!3636, !633, i64 72}
!3898 = !DILocation(line: 54, column: 28, scope: !3880)
!3899 = !DILocation(line: 52, column: 7, scope: !3835)
!3900 = !DILocation(line: 117, column: 26, scope: !3879)
!3901 = !DILocation(line: 117, column: 19, scope: !3879)
!3902 = !DILocation(line: 117, column: 13, scope: !3879)
!3903 = !DILocation(line: 118, column: 15, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3879, file: !3836, line: 118, column: 11)
!3905 = !DILocation(line: 118, column: 11, scope: !3879)
!3906 = !DILocation(line: 129, column: 11, scope: !3879)
!3907 = !DILocation(line: 129, column: 18, scope: !3879)
!3908 = !DILocation(line: 130, column: 11, scope: !3879)
!3909 = !DILocation(line: 130, column: 19, scope: !3879)
!3910 = !{!3636, !1152, i64 144}
!3911 = !DILocation(line: 161, column: 7, scope: !3879)
!3912 = !DILocation(line: 163, column: 10, scope: !3835)
!3913 = !DILocation(line: 163, column: 3, scope: !3835)
!3914 = !DILocation(line: 0, scope: !3835)
!3915 = !DILocation(line: 164, column: 1, scope: !3835)
