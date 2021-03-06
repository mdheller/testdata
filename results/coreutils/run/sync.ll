; ModuleID = 'coreutils-8.30/src/sync.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !46
@.str.38 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !52
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !57
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !61
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !68
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !75
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !106
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !113
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !125
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !132
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !139
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !127
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !141
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.97 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !147
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !156
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !630 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !635, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 %0, metadata !634, metadata !DIExpression()), !dbg !658
  %3 = icmp eq i32 %0, 0, !dbg !659
  br i1 %3, label %9, label %4, !dbg !660

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !663
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !661
  %7 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !663
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !661
  br label %63, !dbg !661

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !667
  %11 = load i8*, i8** @program_name, align 8, !dbg !667, !tbaa !663
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !667
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !668
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !663
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !668
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !669
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !663
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !669
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !670
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !663
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !670
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !671
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !663
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !671
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !672
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !663
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !672
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #10, !dbg !673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !654
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !674
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !643, metadata !DIExpression()) #10, !dbg !675
  br label %30, !dbg !676

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !643, metadata !DIExpression()) #10, !dbg !675
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #14, !dbg !676
  %34 = icmp eq i32 %33, 0, !dbg !676
  br i1 %34, label %40, label %35, !dbg !677

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !678
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !643, metadata !DIExpression()) #10, !dbg !675
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !679
  %38 = load i8*, i8** %37, align 8, !dbg !679, !tbaa !680
  %39 = icmp eq i8* %38, null, !dbg !682
  br i1 %39, label %40, label %30, !dbg !683, !llvm.loop !684

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !643, metadata !DIExpression()) #10, !dbg !675
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !643, metadata !DIExpression()) #10, !dbg !675
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !687
  %43 = load i8*, i8** %42, align 8, !dbg !687, !tbaa !689
  %44 = icmp eq i8* %43, null, !dbg !690
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !691
  call void @llvm.dbg.value(metadata i8* %45, metadata !642, metadata !DIExpression()) #10, !dbg !692
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !693
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !693
  %48 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !694
  call void @llvm.dbg.value(metadata i8* %48, metadata !650, metadata !DIExpression()) #10, !dbg !695
  %49 = icmp eq i8* %48, null, !dbg !696
  br i1 %49, label %56, label %50, !dbg !698

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !699
  %52 = icmp eq i32 %51, 0, !dbg !699
  br i1 %52, label %56, label %53, !dbg !700

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !701
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !701
  br label %56, !dbg !703

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !704
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !704
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !705
  %60 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !705
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !705
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #10, !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #10, !dbg !706
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !707
  unreachable, !dbg !707
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !713, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8** %1, metadata !714, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8 0, metadata !717, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8 0, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 1, metadata !720, metadata !DIExpression()), !dbg !725
  %3 = load i8*, i8** %1, align 8, !dbg !726, !tbaa !663
  tail call void @set_program_name(i8* %3) #10, !dbg !727
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !728
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !729
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !730
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !731
  br label %8, !dbg !732

; <label>:8:                                      ; preds = %11, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %11 ]
  %10 = phi i8 [ 0, %2 ], [ %12, %11 ]
  br label %11, !dbg !733

; <label>:11:                                     ; preds = %11, %8
  %12 = phi i8 [ %10, %8 ], [ 1, %11 ], !dbg !734
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %9, metadata !717, metadata !DIExpression()), !dbg !723
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !733
  call void @llvm.dbg.value(metadata i32 %13, metadata !715, metadata !DIExpression()), !dbg !737
  switch i32 %13, label %18 [
    i32 -1, label %19
    i32 100, label %8
    i32 102, label %11
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !732, !llvm.loop !738

; <label>:14:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !740
  unreachable, !dbg !740

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !663
  %17 = load i8*, i8** @Version, align 8, !dbg !741, !tbaa !663
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* null) #10, !dbg !741
  tail call void @exit(i32 0) #15, !dbg !741
  unreachable, !dbg !741

; <label>:18:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !742
  unreachable, !dbg !742

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %9, metadata !717, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %9, metadata !717, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %9, metadata !717, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %9, metadata !717, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8 %12, metadata !718, metadata !DIExpression()), !dbg !724
  %20 = load i32, i32* @optind, align 4, !dbg !743, !tbaa !744
  %21 = icmp slt i32 %20, %0, !dbg !746
  %22 = icmp eq i8 %12, 0, !dbg !747
  %23 = and i8 %9, %12, !dbg !749
  %24 = icmp eq i8 %23, 0, !dbg !749
  br i1 %24, label %27, label %25, !dbg !749

; <label>:25:                                     ; preds = %19
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !750
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !750
  unreachable, !dbg !750

; <label>:27:                                     ; preds = %19
  %28 = icmp eq i8 %9, 0, !dbg !752
  %29 = or i1 %28, %21, !dbg !753
  br i1 %29, label %32, label %30, !dbg !753

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !755
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %31) #10, !dbg !755
  unreachable, !dbg !755

; <label>:32:                                     ; preds = %27
  br i1 %21, label %33, label %36, !dbg !756

; <label>:33:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8 1, metadata !720, metadata !DIExpression()), !dbg !725
  %34 = select i1 %22, i8 %9, i8 2, !dbg !758
  %35 = trunc i8 %34 to i2
  br label %37, !dbg !759

; <label>:36:                                     ; preds = %32
  tail call void @sync() #10, !dbg !763
  br label %103, !dbg !763

; <label>:37:                                     ; preds = %33, %93
  %38 = phi i32 [ %20, %33 ], [ %98, %93 ]
  %39 = phi i8 [ 1, %33 ], [ %96, %93 ]
  call void @llvm.dbg.value(metadata i8 %39, metadata !720, metadata !DIExpression()), !dbg !725
  %40 = sext i32 %38 to i64, !dbg !764
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !764
  %42 = load i8*, i8** %41, align 8, !dbg !764, !tbaa !663
  call void @llvm.dbg.value(metadata i8* %42, metadata !766, metadata !DIExpression()) #10, !dbg !782
  call void @llvm.dbg.value(metadata i8 1, metadata !772, metadata !DIExpression()) #10, !dbg !784
  call void @llvm.dbg.value(metadata i32 2048, metadata !773, metadata !DIExpression()) #10, !dbg !785
  %43 = tail call i32 (i8*, i32, ...) @open(i8* %42, i32 2048) #10, !dbg !786
  call void @llvm.dbg.value(metadata i32 %43, metadata !774, metadata !DIExpression()) #10, !dbg !787
  %44 = icmp slt i32 %43, 0, !dbg !788
  br i1 %44, label %45, label %53, !dbg !789

; <label>:45:                                     ; preds = %37
  %46 = tail call i32* @__errno_location() #17, !dbg !790
  %47 = load i32, i32* %46, align 4, !dbg !790, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %47, metadata !775, metadata !DIExpression()) #10, !dbg !791
  %48 = tail call i32 (i8*, i32, ...) @open(i8* %42, i32 2049) #10, !dbg !792
  call void @llvm.dbg.value(metadata i32 %48, metadata !774, metadata !DIExpression()) #10, !dbg !787
  call void @llvm.dbg.value(metadata i32 %48, metadata !774, metadata !DIExpression()) #10, !dbg !787
  %49 = icmp slt i32 %48, 0, !dbg !794
  br i1 %49, label %50, label %93, !dbg !796

; <label>:50:                                     ; preds = %45
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !797
  %52 = tail call i8* @quotearg_style(i32 4, i8* %42) #10, !dbg !798
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %47, i8* %51, i8* %52) #10, !dbg !799
  br label %93, !dbg !799

; <label>:53:                                     ; preds = %37
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %43, i32 3) #10, !dbg !800
  call void @llvm.dbg.value(metadata i32 %54, metadata !778, metadata !DIExpression()) #10, !dbg !801
  %55 = icmp eq i32 %54, -1, !dbg !802
  br i1 %55, label %60, label %56, !dbg !804

; <label>:56:                                     ; preds = %53
  %57 = and i32 %54, -2049, !dbg !805
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %43, i32 4, i32 %57) #10, !dbg !806
  %59 = icmp slt i32 %58, 0, !dbg !807
  br i1 %59, label %60, label %65, !dbg !808

; <label>:60:                                     ; preds = %56, %53
  %61 = tail call i32* @__errno_location() #17, !dbg !809
  %62 = load i32, i32* %61, align 4, !dbg !809, !tbaa !744
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !811
  %64 = tail call i8* @quotearg_style(i32 4, i8* %42) #10, !dbg !812
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %62, i8* %63, i8* %64) #10, !dbg !813
  call void @llvm.dbg.value(metadata i8 0, metadata !772, metadata !DIExpression()) #10, !dbg !784
  call void @llvm.dbg.value(metadata i8 1, metadata !772, metadata !DIExpression()) #10, !dbg !784
  br label %80, !dbg !814

; <label>:65:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8 1, metadata !772, metadata !DIExpression()) #10, !dbg !784
  call void @llvm.dbg.value(metadata i32 -1, metadata !779, metadata !DIExpression()) #10, !dbg !815
  switch i2 %35, label %75 [
    i2 1, label %66
    i2 0, label %68
    i2 -2, label %70
  ], !dbg !816

; <label>:66:                                     ; preds = %65
  %67 = tail call i32 @fdatasync(i32 %43) #10, !dbg !817
  call void @llvm.dbg.value(metadata i32 %67, metadata !779, metadata !DIExpression()) #10, !dbg !815
  br label %72, !dbg !819

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @fsync(i32 %43) #10, !dbg !820
  call void @llvm.dbg.value(metadata i32 %69, metadata !779, metadata !DIExpression()) #10, !dbg !815
  br label %72, !dbg !821

; <label>:70:                                     ; preds = %65
  %71 = tail call i32 @syncfs(i32 %43) #10, !dbg !822
  call void @llvm.dbg.value(metadata i32 %71, metadata !779, metadata !DIExpression()) #10, !dbg !815
  br label %72, !dbg !823

; <label>:72:                                     ; preds = %70, %68, %66
  %73 = phi i32 [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], !dbg !824
  call void @llvm.dbg.value(metadata i32 %73, metadata !779, metadata !DIExpression()) #10, !dbg !815
  %74 = icmp slt i32 %73, 0, !dbg !825
  br i1 %74, label %75, label %80, !dbg !827

; <label>:75:                                     ; preds = %72, %65
  %76 = tail call i32* @__errno_location() #17, !dbg !828
  %77 = load i32, i32* %76, align 4, !dbg !828, !tbaa !744
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !830
  %79 = tail call i8* @quotearg_style(i32 4, i8* %42) #10, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %77, i8* %78, i8* %79) #10, !dbg !832
  call void @llvm.dbg.value(metadata i8 0, metadata !772, metadata !DIExpression()) #10, !dbg !784
  br label %80, !dbg !833

; <label>:80:                                     ; preds = %75, %72, %60
  %81 = phi i8 [ 0, %75 ], [ 1, %72 ], [ 0, %60 ], !dbg !834
  call void @llvm.dbg.value(metadata i8 %81, metadata !772, metadata !DIExpression()) #10, !dbg !784
  %82 = tail call i32 @close(i32 %43) #10, !dbg !835
  %83 = icmp slt i32 %82, 0, !dbg !837
  br i1 %83, label %84, label %89, !dbg !838

; <label>:84:                                     ; preds = %80
  %85 = tail call i32* @__errno_location() #17, !dbg !839
  %86 = load i32, i32* %85, align 4, !dbg !839, !tbaa !744
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !841
  %88 = tail call i8* @quotearg_style(i32 4, i8* %42) #10, !dbg !842
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %86, i8* %87, i8* %88) #10, !dbg !843
  call void @llvm.dbg.value(metadata i8 0, metadata !772, metadata !DIExpression()) #10, !dbg !784
  br label %89, !dbg !844

; <label>:89:                                     ; preds = %84, %80
  %90 = phi i8 [ 0, %84 ], [ %81, %80 ], !dbg !845
  call void @llvm.dbg.value(metadata i8 %90, metadata !772, metadata !DIExpression()) #10, !dbg !784
  %91 = and i8 %90, 1, !dbg !846
  %92 = icmp ne i8 %91, 0, !dbg !846
  br label %93

; <label>:93:                                     ; preds = %45, %50, %89
  %94 = phi i1 [ %92, %89 ], [ false, %50 ], [ false, %45 ], !dbg !847
  %95 = zext i1 %94 to i8, !dbg !848
  %96 = and i8 %39, %95, !dbg !849
  %97 = load i32, i32* @optind, align 4, !dbg !850, !tbaa !744
  %98 = add nsw i32 %97, 1, !dbg !850
  store i32 %98, i32* @optind, align 4, !dbg !850, !tbaa !744
  call void @llvm.dbg.value(metadata i8 %96, metadata !720, metadata !DIExpression()), !dbg !725
  %99 = icmp slt i32 %98, %0, !dbg !851
  br i1 %99, label %37, label %100, !dbg !759, !llvm.loop !852

; <label>:100:                                    ; preds = %93
  %101 = xor i8 %96, 1, !dbg !854
  %102 = zext i8 %101 to i32, !dbg !854
  br label %103, !dbg !854

; <label>:103:                                    ; preds = %100, %36
  %104 = phi i32 [ 0, %36 ], [ %102, %100 ]
  ret i32 %104, !dbg !855
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
declare void @sync() local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @fdatasync(i32) local_unnamed_addr #3

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @syncfs(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !858, metadata !DIExpression()), !dbg !859
  store i8* %0, i8** @file_name, align 8, !dbg !860, !tbaa !663
  ret void, !dbg !861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !862 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !866, metadata !DIExpression()), !dbg !867
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !868, !tbaa !869
  ret void, !dbg !871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !872 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !663
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !880
  %3 = icmp eq i32 %2, 0, !dbg !881
  br i1 %3, label %22, label %4, !dbg !882

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !883, !tbaa !869, !range !884
  %6 = icmp eq i8 %5, 0, !dbg !883
  br i1 %6, label %11, label %7, !dbg !885

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !886
  %9 = load i32, i32* %8, align 4, !dbg !886, !tbaa !744
  %10 = icmp eq i32 %9, 32, !dbg !887
  br i1 %10, label %22, label %11, !dbg !888

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !889
  call void @llvm.dbg.value(metadata i8* %12, metadata !876, metadata !DIExpression()), !dbg !890
  %13 = load i8*, i8** @file_name, align 8, !dbg !891, !tbaa !663
  %14 = icmp eq i8* %13, null, !dbg !891
  %15 = tail call i32* @__errno_location() #17, !dbg !893
  %16 = load i32, i32* %15, align 4, !dbg !893, !tbaa !744
  br i1 %14, label %19, label %17, !dbg !894

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !895
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.44, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !896
  br label %20, !dbg !896

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.45, i64 0, i64 0), i8* %12) #10, !dbg !897
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !898, !tbaa !744
  tail call void @_exit(i32 %21) #15, !dbg !899
  unreachable, !dbg !899

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !900, !tbaa !663
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !902
  %25 = icmp eq i32 %24, 0, !dbg !903
  br i1 %25, label %28, label %26, !dbg !904

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !905, !tbaa !744
  tail call void @_exit(i32 %27) #15, !dbg !906
  unreachable, !dbg !906

; <label>:28:                                     ; preds = %22
  ret void, !dbg !907
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !910, metadata !DIExpression()), !dbg !913
  %2 = icmp eq i8* %0, null, !dbg !914
  br i1 %2, label %3, label %6, !dbg !916

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !917, !tbaa !663
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !919
  tail call void @abort() #15, !dbg !920
  unreachable, !dbg !920

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !921
  call void @llvm.dbg.value(metadata i8* %7, metadata !911, metadata !DIExpression()), !dbg !922
  %8 = icmp eq i8* %7, null, !dbg !923
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !924
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !925
  call void @llvm.dbg.value(metadata i8* %10, metadata !912, metadata !DIExpression()), !dbg !926
  %11 = ptrtoint i8* %10 to i64, !dbg !927
  %12 = ptrtoint i8* %0 to i64, !dbg !927
  %13 = sub i64 %11, %12, !dbg !927
  %14 = icmp sgt i64 %13, 6, !dbg !929
  br i1 %14, label %15, label %24, !dbg !930

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !931
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #14, !dbg !932
  %18 = icmp eq i32 %17, 0, !dbg !933
  br i1 %18, label %19, label %24, !dbg !934

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !910, metadata !DIExpression()), !dbg !913
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #14, !dbg !935
  %21 = icmp eq i32 %20, 0, !dbg !938
  br i1 %21, label %22, label %24, !dbg !939

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !940
  call void @llvm.dbg.value(metadata i8* %23, metadata !910, metadata !DIExpression()), !dbg !913
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !942, !tbaa !663
  br label %24, !dbg !943

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !910, metadata !DIExpression()), !dbg !913
  store i8* %25, i8** @program_name, align 8, !dbg !944, !tbaa !663
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !945, !tbaa !663
  ret void, !dbg !946
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !947 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !952, metadata !DIExpression()), !dbg !955
  %2 = tail call i32* @__errno_location() #17, !dbg !956
  %3 = load i32, i32* %2, align 4, !dbg !956, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %3, metadata !953, metadata !DIExpression()), !dbg !957
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !958
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !958
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !958
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !959
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !959
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !954, metadata !DIExpression()), !dbg !960
  store i32 %3, i32* %2, align 4, !dbg !961, !tbaa !744
  ret %struct.quoting_options* %8, !dbg !962
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !963 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !969, metadata !DIExpression()), !dbg !970
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !971
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !971
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !972
  %5 = load i32, i32* %4, align 8, !dbg !972, !tbaa !973
  ret i32 %5, !dbg !975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !976 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 %1, metadata !981, metadata !DIExpression()), !dbg !983
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !984
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !984
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !985
  store i32 %1, i32* %5, align 8, !dbg !986, !tbaa !973
  ret void, !dbg !987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !988 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !992, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %1, metadata !993, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %2, metadata !994, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %1, metadata !995, metadata !DIExpression()), !dbg !1004
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1005
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1005
  %6 = lshr i8 %1, 5, !dbg !1006
  %7 = zext i8 %6 to i64, !dbg !1006
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1007
  call void @llvm.dbg.value(metadata i32* %8, metadata !997, metadata !DIExpression()), !dbg !1008
  %9 = and i8 %1, 31, !dbg !1009
  %10 = zext i8 %9 to i32, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %10, metadata !999, metadata !DIExpression()), !dbg !1010
  %11 = load i32, i32* %8, align 4, !dbg !1011, !tbaa !744
  %12 = lshr i32 %11, %10, !dbg !1012
  %13 = and i32 %12, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %13, metadata !1000, metadata !DIExpression()), !dbg !1014
  %14 = and i32 %2, 1, !dbg !1015
  %15 = xor i32 %13, %14, !dbg !1016
  %16 = shl i32 %15, %10, !dbg !1017
  %17 = xor i32 %16, %11, !dbg !1018
  store i32 %17, i32* %8, align 4, !dbg !1018, !tbaa !744
  ret i32 %13, !dbg !1019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1020 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1024, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i32 %1, metadata !1025, metadata !DIExpression()), !dbg !1028
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1029
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1024, metadata !DIExpression()), !dbg !1027
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1032
  %6 = load i32, i32* %5, align 4, !dbg !1032, !tbaa !1033
  call void @llvm.dbg.value(metadata i32 %6, metadata !1026, metadata !DIExpression()), !dbg !1034
  store i32 %1, i32* %5, align 4, !dbg !1035, !tbaa !1033
  ret i32 %6, !dbg !1036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1037 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1041, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %2, metadata !1043, metadata !DIExpression()), !dbg !1046
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1047
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1041, metadata !DIExpression()), !dbg !1044
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1050
  store i32 10, i32* %6, align 8, !dbg !1051, !tbaa !973
  %7 = icmp ne i8* %1, null, !dbg !1052
  %8 = icmp ne i8* %2, null, !dbg !1054
  %9 = and i1 %7, %8, !dbg !1055
  br i1 %9, label %11, label %10, !dbg !1055

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1056
  unreachable, !dbg !1056

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1057
  store i8* %1, i8** %12, align 8, !dbg !1058, !tbaa !1059
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1060
  store i8* %2, i8** %13, align 8, !dbg !1061, !tbaa !1062
  ret void, !dbg !1063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1068, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %1, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %2, metadata !1070, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %3, metadata !1071, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1072, metadata !DIExpression()), !dbg !1080
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1081
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1073, metadata !DIExpression()), !dbg !1082
  %8 = tail call i32* @__errno_location() #17, !dbg !1083
  %9 = load i32, i32* %8, align 4, !dbg !1083, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %9, metadata !1074, metadata !DIExpression()), !dbg !1084
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1085
  %11 = load i32, i32* %10, align 8, !dbg !1085, !tbaa !973
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1086
  %13 = load i32, i32* %12, align 4, !dbg !1086, !tbaa !1033
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1087
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1088
  %16 = load i8*, i8** %15, align 8, !dbg !1088, !tbaa !1059
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1089
  %18 = load i8*, i8** %17, align 8, !dbg !1089, !tbaa !1062
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %19, metadata !1075, metadata !DIExpression()), !dbg !1091
  store i32 %9, i32* %8, align 4, !dbg !1092, !tbaa !744
  ret i64 %19, !dbg !1093
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1094 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1100, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %1, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %2, metadata !1102, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %3, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %4, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %5, metadata !1105, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32* %6, metadata !1106, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %7, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %8, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* null, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 0, metadata !1113, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 0, metadata !1114, metadata !DIExpression()), !dbg !1177
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1178
  %14 = icmp eq i64 %13, 1, !dbg !1179
  %15 = lshr i32 %5, 1, !dbg !1180
  %16 = trunc i32 %15 to i8, !dbg !1180
  %17 = and i8 %16, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i8 %17, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 0, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 1, metadata !1119, metadata !DIExpression()), !dbg !1183
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1184

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1174
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1175
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1176
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1177
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1185
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1181
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1182
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1183
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %39, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %38, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %37, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %36, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %35, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %34, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %33, metadata !1113, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %32, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %31, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %30, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %29, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 %28, metadata !1104, metadata !DIExpression()), !dbg !1168
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
  ], !dbg !1187

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 1, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %36, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 5, metadata !1104, metadata !DIExpression()), !dbg !1168
  br label %93, !dbg !1188

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 5, metadata !1104, metadata !DIExpression()), !dbg !1168
  %43 = and i8 %36, 1, !dbg !1189
  %44 = icmp eq i8 %43, 0, !dbg !1189
  br i1 %44, label %45, label %93, !dbg !1188

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1191
  br i1 %46, label %93, label %47, !dbg !1194

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1191, !tbaa !1195
  br label %93, !dbg !1191

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %49, metadata !1107, metadata !DIExpression()), !dbg !1171
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %50, metadata !1108, metadata !DIExpression()), !dbg !1172
  br label %51, !dbg !1201

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %52, metadata !1107, metadata !DIExpression()), !dbg !1171
  %54 = and i8 %36, 1, !dbg !1202
  %55 = icmp eq i8 %54, 0, !dbg !1202
  br i1 %55, label %56, label %71, !dbg !1204

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 0, metadata !1110, metadata !DIExpression()), !dbg !1173
  %57 = load i8, i8* %52, align 1, !dbg !1205, !tbaa !1195
  %58 = icmp eq i8 %57, 0, !dbg !1208
  br i1 %58, label %71, label %59, !dbg !1208

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %62, metadata !1110, metadata !DIExpression()), !dbg !1173
  %63 = icmp ult i64 %62, %40, !dbg !1209
  br i1 %63, label %64, label %66, !dbg !1212

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1209
  store i8 %60, i8* %65, align 1, !dbg !1209, !tbaa !1195
  br label %66, !dbg !1209

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1212
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata i8* %68, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %67, metadata !1110, metadata !DIExpression()), !dbg !1173
  %69 = load i8, i8* %68, align 1, !dbg !1205, !tbaa !1195
  %70 = icmp eq i8 %69, 0, !dbg !1208
  br i1 %70, label %71, label %59, !dbg !1208, !llvm.loop !1214

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1173
  call void @llvm.dbg.value(metadata i64 %72, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %53, metadata !1112, metadata !DIExpression()), !dbg !1175
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %73, metadata !1113, metadata !DIExpression()), !dbg !1176
  br label %93, !dbg !1217

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1114, metadata !DIExpression()), !dbg !1177
  br label %75, !dbg !1218

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1185
  call void @llvm.dbg.value(metadata i8 %76, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 1, metadata !1116, metadata !DIExpression()), !dbg !1180
  br label %77, !dbg !1219

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1177
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1185
  call void @llvm.dbg.value(metadata i8 %79, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %78, metadata !1114, metadata !DIExpression()), !dbg !1177
  %80 = and i8 %79, 1, !dbg !1220
  %81 = icmp eq i8 %80, 0, !dbg !1220
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1222
  br label %83, !dbg !1222

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1223
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1180
  call void @llvm.dbg.value(metadata i8 %85, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %84, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  %86 = and i8 %85, 1, !dbg !1224
  %87 = icmp eq i8 %86, 0, !dbg !1224
  br i1 %87, label %88, label %93, !dbg !1226

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1227
  br i1 %89, label %93, label %90, !dbg !1230

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1227, !tbaa !1195
  br label %93, !dbg !1227

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1116, metadata !DIExpression()), !dbg !1180
  br label %93, !dbg !1231

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1232
  unreachable, !dbg !1232

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1173
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], !dbg !1185
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1185
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1185
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %101, metadata !1116, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %99, metadata !1113, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %97, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i64 0, metadata !1109, metadata !DIExpression()), !dbg !1234
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
  br label %121, !dbg !1235

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1236
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1173
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1174
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1181
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1182
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1183
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %125, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %122, metadata !1109, metadata !DIExpression()), !dbg !1234
  %130 = icmp eq i64 %125, -1, !dbg !1237
  br i1 %130, label %131, label %135, !dbg !1238

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1239
  %133 = load i8, i8* %132, align 1, !dbg !1239, !tbaa !1195
  %134 = icmp eq i8 %133, 0, !dbg !1240
  br i1 %134, label %617, label %137, !dbg !1241

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1242
  br i1 %136, label %617, label %137, !dbg !1241

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1125, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8 0, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 0, metadata !1127, metadata !DIExpression()), !dbg !1245
  br i1 %107, label %138, label %153, !dbg !1246

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1248
  %140 = and i1 %108, %130, !dbg !1249
  br i1 %140, label %141, label %143, !dbg !1249

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %142, metadata !1103, metadata !DIExpression()), !dbg !1167
  br label %143, !dbg !1251

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1103, metadata !DIExpression()), !dbg !1167
  %145 = icmp ugt i64 %139, %144, !dbg !1252
  br i1 %145, label %153, label %146, !dbg !1253

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1254
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1255
  %149 = icmp ne i32 %148, 0, !dbg !1256
  %150 = or i1 %149, %110, !dbg !1257
  %151 = xor i1 %149, true, !dbg !1257
  %152 = zext i1 %151 to i8, !dbg !1257
  br i1 %150, label %153, label %661, !dbg !1257

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %155, metadata !1125, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i64 %154, metadata !1103, metadata !DIExpression()), !dbg !1167
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1259
  %157 = load i8, i8* %156, align 1, !dbg !1259, !tbaa !1195
  call void @llvm.dbg.value(metadata i8 %157, metadata !1120, metadata !DIExpression()), !dbg !1260
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
  ], !dbg !1261

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1262

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1263

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1244
  %161 = and i8 %126, 1, !dbg !1267
  %162 = icmp eq i8 %161, 0, !dbg !1267
  %163 = and i1 %114, %162, !dbg !1267
  br i1 %163, label %164, label %180, !dbg !1267

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1269
  br i1 %165, label %166, label %168, !dbg !1273

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1269
  store i8 39, i8* %167, align 1, !dbg !1269, !tbaa !1195
  br label %168, !dbg !1269

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %169, metadata !1110, metadata !DIExpression()), !dbg !1173
  %170 = icmp ult i64 %169, %129, !dbg !1274
  br i1 %170, label %171, label %173, !dbg !1277

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1274
  store i8 36, i8* %172, align 1, !dbg !1274, !tbaa !1195
  br label %173, !dbg !1274

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %174, metadata !1110, metadata !DIExpression()), !dbg !1173
  %175 = icmp ult i64 %174, %129, !dbg !1278
  br i1 %175, label %176, label %178, !dbg !1281

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1278
  store i8 39, i8* %177, align 1, !dbg !1278, !tbaa !1195
  br label %178, !dbg !1278

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %179, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %180, !dbg !1282

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1233
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %182, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %181, metadata !1110, metadata !DIExpression()), !dbg !1173
  %183 = icmp ult i64 %181, %129, !dbg !1283
  br i1 %183, label %184, label %186, !dbg !1286

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1283
  store i8 92, i8* %185, align 1, !dbg !1283, !tbaa !1195
  br label %186, !dbg !1283

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %187, metadata !1110, metadata !DIExpression()), !dbg !1173
  br i1 %104, label %188, label %478, !dbg !1287

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1289
  %190 = icmp ult i64 %189, %154, !dbg !1290
  br i1 %190, label %191, label %467, !dbg !1291

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1292
  %193 = load i8, i8* %192, align 1, !dbg !1292, !tbaa !1195
  %194 = add i8 %193, -48, !dbg !1293
  %195 = icmp ult i8 %194, 10, !dbg !1293
  br i1 %195, label %196, label %467, !dbg !1293

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1294
  br i1 %197, label %198, label %200, !dbg !1298

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1294
  store i8 48, i8* %199, align 1, !dbg !1294, !tbaa !1195
  br label %200, !dbg !1294

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %201, metadata !1110, metadata !DIExpression()), !dbg !1173
  %202 = icmp ult i64 %201, %129, !dbg !1299
  br i1 %202, label %203, label %205, !dbg !1302

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1299
  store i8 48, i8* %204, align 1, !dbg !1299, !tbaa !1195
  br label %205, !dbg !1299

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %206, metadata !1110, metadata !DIExpression()), !dbg !1173
  br label %467, !dbg !1303

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1304

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1305

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1306

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1308

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1310
  %213 = icmp ult i64 %212, %154, !dbg !1311
  br i1 %213, label %214, label %467, !dbg !1312

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1313
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1314
  %217 = load i8, i8* %216, align 1, !dbg !1314, !tbaa !1195
  %218 = icmp eq i8 %217, 63, !dbg !1315
  br i1 %218, label %219, label %467, !dbg !1316

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1317
  %221 = load i8, i8* %220, align 1, !dbg !1317, !tbaa !1195
  %222 = sext i8 %221 to i32, !dbg !1317
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
  ], !dbg !1318

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1319

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %212, metadata !1109, metadata !DIExpression()), !dbg !1234
  %225 = icmp ult i64 %123, %129, !dbg !1321
  br i1 %225, label %226, label %228, !dbg !1324

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1321
  store i8 63, i8* %227, align 1, !dbg !1321, !tbaa !1195
  br label %228, !dbg !1321

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %229, metadata !1110, metadata !DIExpression()), !dbg !1173
  %230 = icmp ult i64 %229, %129, !dbg !1325
  br i1 %230, label %231, label %233, !dbg !1328

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1325
  store i8 34, i8* %232, align 1, !dbg !1325, !tbaa !1195
  br label %233, !dbg !1325

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %234, metadata !1110, metadata !DIExpression()), !dbg !1173
  %235 = icmp ult i64 %234, %129, !dbg !1329
  br i1 %235, label %236, label %238, !dbg !1332

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1329
  store i8 34, i8* %237, align 1, !dbg !1329, !tbaa !1195
  br label %238, !dbg !1329

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %239, metadata !1110, metadata !DIExpression()), !dbg !1173
  %240 = icmp ult i64 %239, %129, !dbg !1333
  br i1 %240, label %241, label %243, !dbg !1336

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1333
  store i8 63, i8* %242, align 1, !dbg !1333, !tbaa !1195
  br label %243, !dbg !1333

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %244, metadata !1110, metadata !DIExpression()), !dbg !1173
  br label %467, !dbg !1337

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1124, metadata !DIExpression()), !dbg !1338
  br label %255, !dbg !1339

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1124, metadata !DIExpression()), !dbg !1338
  br label %255, !dbg !1340

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1124, metadata !DIExpression()), !dbg !1338
  br label %253, !dbg !1341

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1124, metadata !DIExpression()), !dbg !1338
  br label %253, !dbg !1342

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1124, metadata !DIExpression()), !dbg !1338
  br label %255, !dbg !1343

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1124, metadata !DIExpression()), !dbg !1338
  br i1 %114, label %251, label %252, !dbg !1344

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1345

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1348

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1350
  call void @llvm.dbg.value(metadata i8 %254, metadata !1124, metadata !DIExpression()), !dbg !1338
  br i1 %113, label %255, label %661, !dbg !1351

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1350
  call void @llvm.dbg.value(metadata i8 %256, metadata !1124, metadata !DIExpression()), !dbg !1338
  br i1 %103, label %524, label %478, !dbg !1353

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1354
  br i1 %258, label %259, label %264, !dbg !1356

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1357, !tbaa !1195
  %261 = icmp ne i8 %260, 0, !dbg !1358
  %262 = icmp ne i64 %122, 0, !dbg !1359
  %263 = or i1 %262, %261, !dbg !1361
  br i1 %263, label %467, label %270, !dbg !1361

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1362
  %266 = icmp ne i64 %122, 0, !dbg !1359
  %267 = or i1 %266, %265, !dbg !1356
  br i1 %267, label %467, label %270, !dbg !1356

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1359
  br i1 %269, label %270, label %467, !dbg !1363

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1127, metadata !DIExpression()), !dbg !1245
  br label %271, !dbg !1364

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1350
  call void @llvm.dbg.value(metadata i8 %272, metadata !1127, metadata !DIExpression()), !dbg !1245
  br i1 %113, label %467, label %661, !dbg !1365

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 1, metadata !1127, metadata !DIExpression()), !dbg !1245
  br i1 %114, label %274, label %467, !dbg !1367

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1368

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1371
  %277 = icmp ne i64 %124, 0, !dbg !1373
  %278 = or i1 %277, %276, !dbg !1374
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1374
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %280, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %279, metadata !1111, metadata !DIExpression()), !dbg !1174
  %281 = icmp ult i64 %123, %280, !dbg !1375
  br i1 %281, label %282, label %284, !dbg !1378

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1375
  store i8 39, i8* %283, align 1, !dbg !1375, !tbaa !1195
  br label %284, !dbg !1375

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %285, metadata !1110, metadata !DIExpression()), !dbg !1173
  %286 = icmp ult i64 %285, %280, !dbg !1379
  br i1 %286, label %287, label %289, !dbg !1382

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1379
  store i8 92, i8* %288, align 1, !dbg !1379, !tbaa !1195
  br label %289, !dbg !1379

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %290, metadata !1110, metadata !DIExpression()), !dbg !1173
  %291 = icmp ult i64 %290, %280, !dbg !1383
  br i1 %291, label %292, label %294, !dbg !1386

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1383
  store i8 39, i8* %293, align 1, !dbg !1383, !tbaa !1195
  br label %294, !dbg !1383

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %295, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %467, !dbg !1387

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1388

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1128, metadata !DIExpression()), !dbg !1389
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1390
  %299 = load i16*, i16** %298, align 8, !dbg !1390, !tbaa !663
  %300 = zext i8 %157 to i64, !dbg !1390
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1390
  %302 = load i16, i16* %301, align 2, !dbg !1390, !tbaa !1392
  %303 = lshr i16 %302, 14, !dbg !1394
  %304 = trunc i16 %303 to i8, !dbg !1394
  %305 = and i8 %304, 1, !dbg !1394
  call void @llvm.dbg.value(metadata i8 %305, metadata !1131, metadata !DIExpression()), !dbg !1395
  br label %359, !dbg !1396

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1397
  store i64 0, i64* %10, align 8, !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 1, metadata !1131, metadata !DIExpression()), !dbg !1395
  %307 = icmp eq i64 %154, -1, !dbg !1399
  br i1 %307, label %308, label %310, !dbg !1401

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %309, metadata !1103, metadata !DIExpression()), !dbg !1167
  br label %310, !dbg !1403

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1404
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  br label %312, !dbg !1405

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1406
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1407
  call void @llvm.dbg.value(metadata i8 %314, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1408
  %315 = add i64 %313, %122, !dbg !1409
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1410
  %317 = sub i64 %311, %315, !dbg !1411
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1132, metadata !DIExpression(DW_OP_deref)), !dbg !1412
  call void @llvm.dbg.value(metadata i32* %12, metadata !1150, metadata !DIExpression(DW_OP_deref)), !dbg !1413
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %318, metadata !1153, metadata !DIExpression()), !dbg !1415
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1416

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  %320 = icmp ugt i64 %311, %315, !dbg !1417
  br i1 %320, label %321, label %344, !dbg !1419

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1128, metadata !DIExpression()), !dbg !1389
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1420
  %325 = load i8, i8* %324, align 1, !dbg !1420, !tbaa !1195
  %326 = icmp eq i8 %325, 0, !dbg !1419
  br i1 %326, label %344, label %327, !dbg !1421

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %328, metadata !1128, metadata !DIExpression()), !dbg !1389
  %329 = add i64 %328, %122, !dbg !1423
  %330 = icmp ult i64 %329, %311, !dbg !1417
  br i1 %330, label %321, label %344, !dbg !1419, !llvm.loop !1424

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1425
  %333 = and i1 %116, %332, !dbg !1428
  call void @llvm.dbg.value(metadata i64 1, metadata !1154, metadata !DIExpression()), !dbg !1429
  br i1 %333, label %334, label %347, !dbg !1428

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1154, metadata !DIExpression()), !dbg !1429
  %336 = add i64 %335, %315, !dbg !1430
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1431
  %338 = load i8, i8* %337, align 1, !dbg !1431, !tbaa !1195
  %339 = sext i8 %338 to i32, !dbg !1431
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1432

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %341, metadata !1154, metadata !DIExpression()), !dbg !1429
  %342 = icmp ult i64 %341, %318, !dbg !1425
  br i1 %342, label %334, label %347, !dbg !1434, !llvm.loop !1435

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %314, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %314, metadata !1131, metadata !DIExpression()), !dbg !1395
  br label %344, !dbg !1437

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %352, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1437
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1438, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %348, metadata !1150, metadata !DIExpression()), !dbg !1413
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1440
  %350 = icmp eq i32 %349, 0, !dbg !1440
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1441
  call void @llvm.dbg.value(metadata i8 %351, metadata !1131, metadata !DIExpression()), !dbg !1395
  %352 = add i64 %318, %313, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %352, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %351, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %352, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1437
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1132, metadata !DIExpression(DW_OP_deref)), !dbg !1412
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1443
  %354 = icmp eq i32 %353, 0, !dbg !1444
  br i1 %354, label %312, label %355, !dbg !1445, !llvm.loop !1446

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1448
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %94, metadata !1104, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %100, metadata !1114, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %311, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %351, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %352, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1448
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1449
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1450
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1450
  call void @llvm.dbg.value(metadata i8 %362, metadata !1131, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %361, metadata !1128, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %360, metadata !1103, metadata !DIExpression()), !dbg !1167
  %363 = and i8 %362, 1, !dbg !1451
  %364 = icmp ne i8 %363, 0, !dbg !1451
  call void @llvm.dbg.value(metadata i8 %363, metadata !1127, metadata !DIExpression()), !dbg !1245
  %365 = icmp ult i64 %361, 2, !dbg !1452
  %366 = or i1 %364, %115, !dbg !1453
  %367 = and i1 %365, %366, !dbg !1454
  br i1 %367, label %467, label %368, !dbg !1454

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %369, metadata !1161, metadata !DIExpression()), !dbg !1456
  br label %370, !dbg !1457

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1458
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1462
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1181
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1458
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1464
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8 %376, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %375, metadata !1125, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %374, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %373, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %372, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %371, metadata !1109, metadata !DIExpression()), !dbg !1234
  br i1 %366, label %423, label %377, !dbg !1468

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1469

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1244
  %379 = and i8 %373, 1, !dbg !1472
  %380 = icmp eq i8 %379, 0, !dbg !1472
  %381 = and i1 %114, %380, !dbg !1472
  br i1 %381, label %382, label %398, !dbg !1472

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1474
  br i1 %383, label %384, label %386, !dbg !1478

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1474
  store i8 39, i8* %385, align 1, !dbg !1474, !tbaa !1195
  br label %386, !dbg !1474

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %387, metadata !1110, metadata !DIExpression()), !dbg !1173
  %388 = icmp ult i64 %387, %129, !dbg !1479
  br i1 %388, label %389, label %391, !dbg !1482

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1479
  store i8 36, i8* %390, align 1, !dbg !1479, !tbaa !1195
  br label %391, !dbg !1479

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %392, metadata !1110, metadata !DIExpression()), !dbg !1173
  %393 = icmp ult i64 %392, %129, !dbg !1483
  br i1 %393, label %394, label %396, !dbg !1486

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1483
  store i8 39, i8* %395, align 1, !dbg !1483, !tbaa !1195
  br label %396, !dbg !1483

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %397, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %398, !dbg !1487

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1233
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %400, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %399, metadata !1110, metadata !DIExpression()), !dbg !1173
  %401 = icmp ult i64 %399, %129, !dbg !1488
  br i1 %401, label %402, label %404, !dbg !1491

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1488
  store i8 92, i8* %403, align 1, !dbg !1488, !tbaa !1195
  br label %404, !dbg !1488

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %405, metadata !1110, metadata !DIExpression()), !dbg !1173
  %406 = icmp ult i64 %405, %129, !dbg !1492
  br i1 %406, label %407, label %411, !dbg !1495

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1492
  %409 = or i8 %408, 48, !dbg !1492
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1492
  store i8 %409, i8* %410, align 1, !dbg !1492, !tbaa !1195
  br label %411, !dbg !1492

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %412, metadata !1110, metadata !DIExpression()), !dbg !1173
  %413 = icmp ult i64 %412, %129, !dbg !1496
  br i1 %413, label %414, label %419, !dbg !1499

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1496
  %416 = and i8 %415, 7, !dbg !1496
  %417 = or i8 %416, 48, !dbg !1496
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1496
  store i8 %417, i8* %418, align 1, !dbg !1496, !tbaa !1195
  br label %419, !dbg !1496

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %420, metadata !1110, metadata !DIExpression()), !dbg !1173
  %421 = and i8 %374, 7, !dbg !1500
  %422 = or i8 %421, 48, !dbg !1501
  call void @llvm.dbg.value(metadata i8 %422, metadata !1120, metadata !DIExpression()), !dbg !1260
  br label %432, !dbg !1502

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1503
  %425 = icmp eq i8 %424, 0, !dbg !1503
  br i1 %425, label %432, label %426, !dbg !1504

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1505
  br i1 %427, label %428, label %430, !dbg !1508

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1505
  store i8 92, i8* %429, align 1, !dbg !1505, !tbaa !1195
  br label %430, !dbg !1505

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %431, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 0, metadata !1125, metadata !DIExpression()), !dbg !1243
  br label %432, !dbg !1509

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1510
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1181
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1511
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1512
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1514
  call void @llvm.dbg.value(metadata i8 %437, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %436, metadata !1125, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %435, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %434, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %433, metadata !1110, metadata !DIExpression()), !dbg !1173
  %438 = add i64 %371, 1, !dbg !1515
  %439 = icmp ugt i64 %369, %438, !dbg !1517
  br i1 %439, label %440, label %562, !dbg !1518

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1519
  %442 = icmp ne i8 %441, 0, !dbg !1519
  %443 = and i8 %437, 1, !dbg !1519
  %444 = icmp eq i8 %443, 0, !dbg !1519
  %445 = and i1 %442, %444, !dbg !1519
  br i1 %445, label %446, label %457, !dbg !1519

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1522
  br i1 %447, label %448, label %450, !dbg !1526

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1522
  store i8 39, i8* %449, align 1, !dbg !1522, !tbaa !1195
  br label %450, !dbg !1522

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %451, metadata !1110, metadata !DIExpression()), !dbg !1173
  %452 = icmp ult i64 %451, %129, !dbg !1527
  br i1 %452, label %453, label %455, !dbg !1530

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1527
  store i8 39, i8* %454, align 1, !dbg !1527, !tbaa !1195
  br label %455, !dbg !1527

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %456, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %457, !dbg !1531

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1532
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %459, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %458, metadata !1110, metadata !DIExpression()), !dbg !1173
  %460 = icmp ult i64 %458, %129, !dbg !1533
  br i1 %460, label %461, label %463, !dbg !1535

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1533
  store i8 %435, i8* %462, align 1, !dbg !1533, !tbaa !1195
  br label %463, !dbg !1533

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %464, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %438, metadata !1109, metadata !DIExpression()), !dbg !1234
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1536
  %466 = load i8, i8* %465, align 1, !dbg !1536, !tbaa !1195
  call void @llvm.dbg.value(metadata i8 %466, metadata !1120, metadata !DIExpression()), !dbg !1260
  br label %370, !dbg !1537, !llvm.loop !1538

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1541
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1233
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1174
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1542
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1233
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1233
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1258
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1258
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1258
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %476, metadata !1127, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %475, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %155, metadata !1125, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %474, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %473, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %472, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %471, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %470, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %469, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %468, metadata !1109, metadata !DIExpression()), !dbg !1234
  br i1 %105, label %489, label %478, !dbg !1543

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
  br i1 %112, label %490, label %512, !dbg !1545

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1546

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
  %501 = lshr i8 %494, 5, !dbg !1547
  %502 = zext i8 %501 to i64, !dbg !1547
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1548
  %504 = load i32, i32* %503, align 4, !dbg !1548, !tbaa !744
  %505 = and i8 %494, 31, !dbg !1549
  %506 = zext i8 %505 to i32, !dbg !1549
  %507 = shl i32 1, %506, !dbg !1550
  %508 = and i32 %504, %507, !dbg !1550
  %509 = icmp eq i32 %508, 0, !dbg !1550
  %510 = icmp eq i8 %155, 0, !dbg !1551
  %511 = and i1 %510, %509, !dbg !1552
  br i1 %511, label %562, label %524, !dbg !1552

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
  %523 = icmp eq i8 %155, 0, !dbg !1551
  br i1 %523, label %562, label %524, !dbg !1553

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1554
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1233
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1174
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1542
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1181
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1182
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1555
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1258
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %532, metadata !1127, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %531, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %530, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %529, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %528, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %527, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %526, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %525, metadata !1109, metadata !DIExpression()), !dbg !1234
  br i1 %110, label %534, label %661, !dbg !1558

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1244
  %535 = and i8 %529, 1, !dbg !1560
  %536 = icmp eq i8 %535, 0, !dbg !1560
  %537 = and i1 %114, %536, !dbg !1560
  br i1 %537, label %538, label %554, !dbg !1560

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1562
  br i1 %539, label %540, label %542, !dbg !1566

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1562
  store i8 39, i8* %541, align 1, !dbg !1562, !tbaa !1195
  br label %542, !dbg !1562

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %543, metadata !1110, metadata !DIExpression()), !dbg !1173
  %544 = icmp ult i64 %543, %533, !dbg !1567
  br i1 %544, label %545, label %547, !dbg !1570

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1567
  store i8 36, i8* %546, align 1, !dbg !1567, !tbaa !1195
  br label %547, !dbg !1567

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %548, metadata !1110, metadata !DIExpression()), !dbg !1173
  %549 = icmp ult i64 %548, %533, !dbg !1571
  br i1 %549, label %550, label %552, !dbg !1574

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1571
  store i8 39, i8* %551, align 1, !dbg !1571, !tbaa !1195
  br label %552, !dbg !1571

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %553, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 1, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %554, !dbg !1575

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1532
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %556, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %555, metadata !1110, metadata !DIExpression()), !dbg !1173
  %557 = icmp ult i64 %555, %533, !dbg !1576
  br i1 %557, label %558, label %560, !dbg !1579

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1576
  store i8 92, i8* %559, align 1, !dbg !1576, !tbaa !1195
  br label %560, !dbg !1576

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %561, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %572, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %571, metadata !1127, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %570, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %569, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %568, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %567, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %566, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %565, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %564, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %563, metadata !1109, metadata !DIExpression()), !dbg !1234
  br label %589, !dbg !1580

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1554
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1233
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1174
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1542
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1181
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1182
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1583
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1258
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1258
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %571, metadata !1127, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %570, metadata !1126, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %569, metadata !1120, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %568, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %567, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %566, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %565, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %564, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %563, metadata !1109, metadata !DIExpression()), !dbg !1234
  %573 = and i8 %567, 1, !dbg !1580
  %574 = icmp ne i8 %573, 0, !dbg !1580
  %575 = and i8 %570, 1, !dbg !1580
  %576 = icmp eq i8 %575, 0, !dbg !1580
  %577 = and i1 %574, %576, !dbg !1580
  br i1 %577, label %578, label %589, !dbg !1580

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1584
  br i1 %579, label %580, label %582, !dbg !1588

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1584
  store i8 39, i8* %581, align 1, !dbg !1584, !tbaa !1195
  br label %582, !dbg !1584

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %583, metadata !1110, metadata !DIExpression()), !dbg !1173
  %584 = icmp ult i64 %583, %572, !dbg !1589
  br i1 %584, label %585, label %587, !dbg !1592

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1589
  store i8 39, i8* %586, align 1, !dbg !1589, !tbaa !1195
  br label %587, !dbg !1589

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %588, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1181
  br label %589, !dbg !1593

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1532
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %598, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %597, metadata !1110, metadata !DIExpression()), !dbg !1173
  %599 = icmp ult i64 %597, %590, !dbg !1594
  br i1 %599, label %600, label %602, !dbg !1597

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1594
  store i8 %592, i8* %601, align 1, !dbg !1594, !tbaa !1195
  br label %602, !dbg !1594

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %603, metadata !1110, metadata !DIExpression()), !dbg !1173
  %604 = and i8 %591, 1, !dbg !1598
  %605 = icmp eq i8 %604, 0, !dbg !1598
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1600
  call void @llvm.dbg.value(metadata i8 %606, metadata !1119, metadata !DIExpression()), !dbg !1183
  br label %607, !dbg !1601

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1554
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1233
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1174
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1542
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1181
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1233
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1183
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %614, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %613, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %612, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %611, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %610, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %609, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %608, metadata !1109, metadata !DIExpression()), !dbg !1234
  %616 = add i64 %608, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %616, metadata !1109, metadata !DIExpression()), !dbg !1234
  br label %121, !dbg !1603, !llvm.loop !1604

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %125, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %125, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1117, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %127, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %128, metadata !1119, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  %619 = icmp eq i64 %123, 0, !dbg !1606
  %620 = and i1 %114, %619, !dbg !1608
  %621 = xor i1 %620, true, !dbg !1608
  %622 = or i1 %110, %621, !dbg !1608
  br i1 %622, label %623, label %661, !dbg !1608

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1609
  %625 = xor i1 %624, true, !dbg !1609
  %626 = and i8 %127, 1, !dbg !1611
  %627 = icmp eq i8 %626, 0, !dbg !1611
  %628 = or i1 %627, %625, !dbg !1609
  br i1 %628, label %638, label %629, !dbg !1609

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1612
  %631 = icmp eq i8 %630, 0, !dbg !1612
  br i1 %631, label %634, label %632, !dbg !1615

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1103, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %95, metadata !1107, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %96, metadata !1108, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %124, metadata !1111, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %125, metadata !1103, metadata !DIExpression()), !dbg !1167
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1616
  br label %671, !dbg !1617

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1618
  %636 = icmp ne i64 %124, 0, !dbg !1620
  %637 = and i1 %636, %635, !dbg !1621
  br i1 %637, label %27, label %638, !dbg !1621

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %129, metadata !1101, metadata !DIExpression()), !dbg !1165
  %639 = icmp ne i8* %98, null, !dbg !1622
  %640 = and i1 %639, %110, !dbg !1624
  br i1 %640, label %641, label %656, !dbg !1624

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %123, metadata !1110, metadata !DIExpression()), !dbg !1173
  %642 = load i8, i8* %98, align 1, !dbg !1625, !tbaa !1195
  %643 = icmp eq i8 %642, 0, !dbg !1628
  br i1 %643, label %656, label %644, !dbg !1628

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %647, metadata !1110, metadata !DIExpression()), !dbg !1173
  %648 = icmp ult i64 %647, %129, !dbg !1629
  br i1 %648, label %649, label %651, !dbg !1632

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1629
  store i8 %645, i8* %650, align 1, !dbg !1629, !tbaa !1195
  br label %651, !dbg !1629

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1632
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %653, metadata !1112, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %652, metadata !1110, metadata !DIExpression()), !dbg !1173
  %654 = load i8, i8* %653, align 1, !dbg !1625, !tbaa !1195
  %655 = icmp eq i8 %654, 0, !dbg !1628
  br i1 %655, label %656, label %644, !dbg !1628, !llvm.loop !1634

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1173
  call void @llvm.dbg.value(metadata i64 %657, metadata !1110, metadata !DIExpression()), !dbg !1173
  %658 = icmp ult i64 %657, %129, !dbg !1636
  br i1 %658, label %659, label %671, !dbg !1638

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1639
  store i8 0, i8* %660, align 1, !dbg !1640, !tbaa !1195
  br label %671, !dbg !1639

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1101, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %663, metadata !1103, metadata !DIExpression()), !dbg !1167
  %665 = icmp ne i32 %662, 2, !dbg !1641
  %666 = icmp eq i8 %102, 0, !dbg !1643
  %667 = or i1 %665, %666, !dbg !1644
  call void @llvm.dbg.value(metadata i32 4, metadata !1104, metadata !DIExpression()), !dbg !1168
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %668, metadata !1104, metadata !DIExpression()), !dbg !1168
  %669 = and i32 %5, -3, !dbg !1645
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1646
  br label %671, !dbg !1647

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1648
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1653, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %1, metadata !1654, metadata !DIExpression()), !dbg !1658
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1659
  call void @llvm.dbg.value(metadata i8* %3, metadata !1655, metadata !DIExpression()), !dbg !1660
  %4 = icmp eq i8* %3, %0, !dbg !1661
  br i1 %4, label %5, label %71, !dbg !1663

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %6, metadata !1656, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8* %6, metadata !1666, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* null, metadata !1672, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 85, metadata !1673, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 84, metadata !1674, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 70, metadata !1675, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 45, metadata !1676, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 56, metadata !1677, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8 0, metadata !1681, metadata !DIExpression()), !dbg !1694
  %7 = load i8, i8* %6, align 1, !dbg !1695, !tbaa !1195
  %8 = and i8 %7, -33, !dbg !1695
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1695

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* null, metadata !1702, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 84, metadata !1703, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 70, metadata !1704, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 45, metadata !1705, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 56, metadata !1706, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1723
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1724
  %11 = load i8, i8* %10, align 1, !dbg !1724, !tbaa !1195
  %12 = and i8 %11, -33, !dbg !1724
  %13 = icmp eq i8 %12, 84, !dbg !1724
  br i1 %13, label %14, label %68, !dbg !1724

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1726, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* null, metadata !1731, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 70, metadata !1732, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 45, metadata !1733, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 56, metadata !1734, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1750
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1751
  %16 = load i8, i8* %15, align 1, !dbg !1751, !tbaa !1195
  %17 = and i8 %16, -33, !dbg !1751
  %18 = icmp eq i8 %17, 70, !dbg !1751
  br i1 %18, label %19, label %68, !dbg !1751

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1753, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* null, metadata !1758, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 45, metadata !1759, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 56, metadata !1760, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1775
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1776
  %21 = load i8, i8* %20, align 1, !dbg !1776, !tbaa !1195
  %22 = icmp eq i8 %21, 45, !dbg !1776
  br i1 %22, label %23, label %68, !dbg !1778

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1779, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* null, metadata !1784, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 56, metadata !1785, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1787, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1788, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1799
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1800
  %25 = load i8, i8* %24, align 1, !dbg !1800, !tbaa !1195
  %26 = icmp eq i8 %25, 56, !dbg !1800
  br i1 %26, label %27, label %68, !dbg !1802

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1803, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* null, metadata !1808, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1821
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1822
  %29 = load i8, i8* %28, align 1, !dbg !1822, !tbaa !1195
  %30 = icmp eq i8 %29, 0, !dbg !1822
  br i1 %30, label %31, label %68, !dbg !1824

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1825, !tbaa !1195
  %33 = icmp eq i8 %32, 96, !dbg !1826
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !1825
  br label %71, !dbg !1827

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* null, metadata !1702, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8 66, metadata !1703, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 49, metadata !1704, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 56, metadata !1705, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 48, metadata !1706, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8 51, metadata !1707, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 48, metadata !1708, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1840
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1841
  %37 = load i8, i8* %36, align 1, !dbg !1841, !tbaa !1195
  %38 = and i8 %37, -33, !dbg !1841
  %39 = icmp eq i8 %38, 66, !dbg !1841
  br i1 %39, label %40, label %68, !dbg !1841

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1726, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* null, metadata !1731, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 49, metadata !1732, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 56, metadata !1733, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 48, metadata !1734, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 51, metadata !1735, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 48, metadata !1736, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1851
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1852
  %42 = load i8, i8* %41, align 1, !dbg !1852, !tbaa !1195
  %43 = icmp eq i8 %42, 49, !dbg !1852
  br i1 %43, label %44, label %68, !dbg !1853

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1753, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* null, metadata !1758, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 56, metadata !1759, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 48, metadata !1760, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 51, metadata !1761, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 48, metadata !1762, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1862
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1863
  %46 = load i8, i8* %45, align 1, !dbg !1863, !tbaa !1195
  %47 = icmp eq i8 %46, 56, !dbg !1863
  br i1 %47, label %48, label %68, !dbg !1864

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1779, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8* null, metadata !1784, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 48, metadata !1785, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 51, metadata !1786, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 48, metadata !1787, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 0, metadata !1788, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1872
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1873
  %50 = load i8, i8* %49, align 1, !dbg !1873, !tbaa !1195
  %51 = icmp eq i8 %50, 48, !dbg !1873
  br i1 %51, label %52, label %68, !dbg !1874

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1803, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* null, metadata !1808, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 51, metadata !1809, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 48, metadata !1810, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1881
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1882
  %54 = load i8, i8* %53, align 1, !dbg !1882, !tbaa !1195
  %55 = icmp eq i8 %54, 51, !dbg !1882
  br i1 %55, label %56, label %68, !dbg !1883

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* null, metadata !1889, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 48, metadata !1890, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1900
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1901
  %58 = load i8, i8* %57, align 1, !dbg !1901, !tbaa !1195
  %59 = icmp eq i8 %58, 48, !dbg !1901
  br i1 %59, label %60, label %68, !dbg !1903

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1904, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8* null, metadata !1909, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1918
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1919
  %62 = load i8, i8* %61, align 1, !dbg !1919, !tbaa !1195
  %63 = icmp eq i8 %62, 0, !dbg !1919
  br i1 %63, label %64, label %68, !dbg !1921

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1922, !tbaa !1195
  %66 = icmp eq i8 %65, 96, !dbg !1923
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !1922
  br label %71, !dbg !1924

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1925
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !1926
  br label %71, !dbg !1927

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1928
  ret i8* %72, !dbg !1929
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %1, metadata !1935, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1936, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %0, metadata !1940, metadata !DIExpression()) #10, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %1, metadata !1945, metadata !DIExpression()) #10, !dbg !1955
  call void @llvm.dbg.value(metadata i64* null, metadata !1946, metadata !DIExpression()) #10, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1947, metadata !DIExpression()) #10, !dbg !1957
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1958
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()) #10, !dbg !1959
  %6 = tail call i32* @__errno_location() #17, !dbg !1960
  %7 = load i32, i32* %6, align 4, !dbg !1960, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %7, metadata !1949, metadata !DIExpression()) #10, !dbg !1961
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1962
  %9 = load i32, i32* %8, align 4, !dbg !1962, !tbaa !1033
  %10 = or i32 %9, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %10, metadata !1950, metadata !DIExpression()) #10, !dbg !1964
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1965
  %12 = load i32, i32* %11, align 8, !dbg !1965, !tbaa !973
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1966
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1967
  %15 = load i8*, i8** %14, align 8, !dbg !1967, !tbaa !1059
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1968
  %17 = load i8*, i8** %16, align 8, !dbg !1968, !tbaa !1062
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1969
  %19 = add i64 %18, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %19, metadata !1951, metadata !DIExpression()) #10, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %19, metadata !1972, metadata !DIExpression()) #10, !dbg !1977
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %20, metadata !1952, metadata !DIExpression()) #10, !dbg !1980
  %21 = load i32, i32* %11, align 8, !dbg !1981, !tbaa !973
  %22 = load i8*, i8** %14, align 8, !dbg !1982, !tbaa !1059
  %23 = load i8*, i8** %16, align 8, !dbg !1983, !tbaa !1062
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1984
  store i32 %7, i32* %6, align 4, !dbg !1985, !tbaa !744
  ret i8* %20, !dbg !1986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1940, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %1, metadata !1945, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64* %2, metadata !1946, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1947, metadata !DIExpression()), !dbg !1990
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1991
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1948, metadata !DIExpression()), !dbg !1992
  %7 = tail call i32* @__errno_location() #17, !dbg !1993
  %8 = load i32, i32* %7, align 4, !dbg !1993, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %8, metadata !1949, metadata !DIExpression()), !dbg !1994
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1995
  %10 = load i32, i32* %9, align 4, !dbg !1995, !tbaa !1033
  %11 = icmp ne i64* %2, null, !dbg !1996
  %12 = xor i1 %11, true, !dbg !1996
  %13 = zext i1 %12 to i32, !dbg !1996
  %14 = or i32 %10, %13, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %14, metadata !1950, metadata !DIExpression()), !dbg !1998
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1999
  %16 = load i32, i32* %15, align 8, !dbg !1999, !tbaa !973
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2000
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2001
  %19 = load i8*, i8** %18, align 8, !dbg !2001, !tbaa !1059
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2002
  %21 = load i8*, i8** %20, align 8, !dbg !2002, !tbaa !1062
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2003
  %23 = add i64 %22, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %23, metadata !1951, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %23, metadata !1972, metadata !DIExpression()) #10, !dbg !2006
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %24, metadata !1952, metadata !DIExpression()), !dbg !2009
  %25 = load i32, i32* %15, align 8, !dbg !2010, !tbaa !973
  %26 = load i8*, i8** %18, align 8, !dbg !2011, !tbaa !1059
  %27 = load i8*, i8** %20, align 8, !dbg !2012, !tbaa !1062
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2013
  store i32 %8, i32* %7, align 4, !dbg !2014, !tbaa !744
  br i1 %11, label %29, label %30, !dbg !2015

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2016, !tbaa !2018
  br label %30, !dbg !2020

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2022 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2026, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2024, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 1, metadata !2025, metadata !DIExpression()), !dbg !2028
  %2 = load i32, i32* @nslots, align 4, !dbg !2029, !tbaa !744
  %3 = icmp sgt i32 %2, 1, !dbg !2032
  br i1 %3, label %4, label %12, !dbg !2033

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2025, metadata !DIExpression()), !dbg !2028
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2034
  %7 = load i8*, i8** %6, align 8, !dbg !2034, !tbaa !2035
  tail call void @free(i8* %7) #10, !dbg !2037
  %8 = add nuw nsw i64 %5, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i32 undef, metadata !2025, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2028
  %9 = load i32, i32* @nslots, align 4, !dbg !2029, !tbaa !744
  %10 = sext i32 %9 to i64, !dbg !2032
  %11 = icmp slt i64 %8, %10, !dbg !2032
  br i1 %11, label %4, label %12, !dbg !2033, !llvm.loop !2039

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2041
  %14 = load i8*, i8** %13, align 8, !dbg !2041, !tbaa !2035
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2043
  br i1 %15, label %17, label %16, !dbg !2044

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2045
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2047, !tbaa !2048
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2049, !tbaa !2035
  br label %17, !dbg !2050

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2051
  br i1 %18, label %21, label %19, !dbg !2053

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2054
  tail call void @free(i8* %20) #10, !dbg !2056
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2057, !tbaa !663
  br label %21, !dbg !2058

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2059, !tbaa !744
  ret void, !dbg !2060
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2065, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %1, metadata !2066, metadata !DIExpression()), !dbg !2068
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2069
  ret i8* %3, !dbg !2070
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2075, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2076, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %2, metadata !2077, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2078, metadata !DIExpression()), !dbg !2093
  %5 = tail call i32* @__errno_location() #17, !dbg !2094
  %6 = load i32, i32* %5, align 4, !dbg !2094, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %6, metadata !2079, metadata !DIExpression()), !dbg !2095
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2096, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2080, metadata !DIExpression()), !dbg !2097
  %8 = icmp slt i32 %0, 0, !dbg !2098
  br i1 %8, label %9, label %10, !dbg !2100

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2101
  unreachable, !dbg !2101

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2102, !tbaa !744
  %12 = icmp sgt i32 %11, %0, !dbg !2103
  br i1 %12, label %34, label %13, !dbg !2104

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2105
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2084, metadata !DIExpression()), !dbg !2106
  %15 = icmp eq i32 %0, 2147483647, !dbg !2107
  br i1 %15, label %16, label %17, !dbg !2109

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2110
  unreachable, !dbg !2110

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2111
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2111
  %20 = add nsw i32 %0, 1, !dbg !2112
  %21 = sext i32 %20 to i64, !dbg !2113
  %22 = shl nsw i64 %21, 4, !dbg !2114
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2115
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2080, metadata !DIExpression()), !dbg !2097
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2116, !tbaa !663
  br i1 %14, label %25, label %26, !dbg !2117

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2118, !tbaa.struct !2120
  br label %26, !dbg !2121

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2122, !tbaa !744
  %28 = sext i32 %27 to i64, !dbg !2123
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2123
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2124
  %31 = sub nsw i32 %20, %27, !dbg !2125
  %32 = sext i32 %31 to i64, !dbg !2126
  %33 = shl nsw i64 %32, 4, !dbg !2127
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2124
  store i32 %20, i32* @nslots, align 4, !dbg !2128, !tbaa !744
  br label %34, !dbg !2129

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2130
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2080, metadata !DIExpression()), !dbg !2097
  %36 = sext i32 %0 to i64, !dbg !2131
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2132
  %38 = load i64, i64* %37, align 8, !dbg !2132, !tbaa !2048
  call void @llvm.dbg.value(metadata i64 %38, metadata !2085, metadata !DIExpression()), !dbg !2133
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2134
  %40 = load i8*, i8** %39, align 8, !dbg !2134, !tbaa !2035
  call void @llvm.dbg.value(metadata i8* %40, metadata !2087, metadata !DIExpression()), !dbg !2135
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2136
  %42 = load i32, i32* %41, align 4, !dbg !2136, !tbaa !1033
  %43 = or i32 %42, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %43, metadata !2088, metadata !DIExpression()), !dbg !2138
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2139
  %45 = load i32, i32* %44, align 8, !dbg !2139, !tbaa !973
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2140
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2141
  %48 = load i8*, i8** %47, align 8, !dbg !2141, !tbaa !1059
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2142
  %50 = load i8*, i8** %49, align 8, !dbg !2142, !tbaa !1062
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %51, metadata !2089, metadata !DIExpression()), !dbg !2144
  %52 = icmp ugt i64 %38, %51, !dbg !2145
  br i1 %52, label %63, label %53, !dbg !2147

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %54, metadata !2085, metadata !DIExpression()), !dbg !2133
  store i64 %54, i64* %37, align 8, !dbg !2150, !tbaa !2048
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2151
  br i1 %55, label %57, label %56, !dbg !2153

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2154
  br label %57, !dbg !2154

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1972, metadata !DIExpression()) #10, !dbg !2155
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %58, metadata !2087, metadata !DIExpression()), !dbg !2135
  store i8* %58, i8** %39, align 8, !dbg !2158, !tbaa !2035
  %59 = load i32, i32* %44, align 8, !dbg !2159, !tbaa !973
  %60 = load i8*, i8** %47, align 8, !dbg !2160, !tbaa !1059
  %61 = load i8*, i8** %49, align 8, !dbg !2161, !tbaa !1062
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2162
  br label %63, !dbg !2163

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2164
  call void @llvm.dbg.value(metadata i8* %64, metadata !2087, metadata !DIExpression()), !dbg !2135
  store i32 %6, i32* %5, align 4, !dbg !2165, !tbaa !744
  ret i8* %64, !dbg !2166
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %1, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %2, metadata !2173, metadata !DIExpression()), !dbg !2176
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2177
  ret i8* %4, !dbg !2178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 0, metadata !2065, metadata !DIExpression()) #10, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !2066, metadata !DIExpression()) #10, !dbg !2187
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2188
  ret i8* %2, !dbg !2189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %1, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i32 0, metadata !2171, metadata !DIExpression()) #10, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %0, metadata !2172, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %1, metadata !2173, metadata !DIExpression()) #10, !dbg !2201
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2202
  ret i8* %3, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2204 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2208, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i32 %1, metadata !2209, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8* %2, metadata !2210, metadata !DIExpression()), !dbg !2214
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %1, metadata !2217, metadata !DIExpression()) #10, !dbg !2223
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2225, !alias.scope !2226
  %6 = icmp eq i32 %1, 10, !dbg !2229
  br i1 %6, label %7, label %8, !dbg !2231

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2232, !noalias !2226
  unreachable, !dbg !2232

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2233
  store i32 %1, i32* %9, align 8, !dbg !2234, !tbaa !973, !alias.scope !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2222, metadata !DIExpression(DW_OP_deref)), !dbg !2225
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2236
  ret i8* %10, !dbg !2237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2238 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2242, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 %1, metadata !2243, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %3, metadata !2245, metadata !DIExpression()), !dbg !2250
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %1, metadata !2217, metadata !DIExpression()) #10, !dbg !2253
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2255, !alias.scope !2256
  %7 = icmp eq i32 %1, 10, !dbg !2259
  br i1 %7, label %8, label %9, !dbg !2260

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2261, !noalias !2256
  unreachable, !dbg !2261

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2262
  store i32 %1, i32* %10, align 8, !dbg !2263, !tbaa !973, !alias.scope !2256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression(DW_OP_deref)), !dbg !2255
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2265
  ret i8* %11, !dbg !2266
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2267 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %1, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2208, metadata !DIExpression()) #10, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()) #10, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()) #10, !dbg !2278
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2211, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %0, metadata !2217, metadata !DIExpression()) #10, !dbg !2281
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2283, !alias.scope !2284
  %5 = icmp eq i32 %0, 10, !dbg !2287
  br i1 %5, label %6, label %7, !dbg !2288

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2289, !noalias !2284
  unreachable, !dbg !2289

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2290
  store i32 %0, i32* %8, align 8, !dbg !2291, !tbaa !973, !alias.scope !2284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2211, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2222, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2283
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2292
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2293
  ret i8* %9, !dbg !2294
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2295 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %1, metadata !2300, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %2, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !2242, metadata !DIExpression()) #10, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %0, metadata !2243, metadata !DIExpression()) #10, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %2, metadata !2245, metadata !DIExpression()) #10, !dbg !2309
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2246, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %0, metadata !2217, metadata !DIExpression()) #10, !dbg !2312
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2314, !alias.scope !2315
  %6 = icmp eq i32 %0, 10, !dbg !2318
  br i1 %6, label %7, label %8, !dbg !2319

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2320, !noalias !2315
  unreachable, !dbg !2320

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2321
  store i32 %0, i32* %9, align 8, !dbg !2322, !tbaa !973, !alias.scope !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2246, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2222, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2314
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2323
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2324
  ret i8* %10, !dbg !2325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2326 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %1, metadata !2331, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 %2, metadata !2332, metadata !DIExpression()), !dbg !2336
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2338, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %2, metadata !993, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 %2, metadata !995, metadata !DIExpression()), !dbg !2345
  %6 = lshr i8 %2, 5, !dbg !2346
  %7 = zext i8 %6 to i64, !dbg !2346
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2347
  call void @llvm.dbg.value(metadata i32* %8, metadata !997, metadata !DIExpression()), !dbg !2348
  %9 = and i8 %2, 31, !dbg !2349
  %10 = zext i8 %9 to i32, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %10, metadata !999, metadata !DIExpression()), !dbg !2350
  %11 = load i32, i32* %8, align 4, !dbg !2351, !tbaa !744
  %12 = lshr i32 %11, %10, !dbg !2352
  %13 = and i32 %12, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %13, metadata !1000, metadata !DIExpression()), !dbg !2354
  %14 = xor i32 %13, 1, !dbg !2355
  %15 = shl i32 %14, %10, !dbg !2356
  %16 = xor i32 %15, %11, !dbg !2357
  store i32 %16, i32* %8, align 4, !dbg !2357, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2358
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2359
  ret i8* %17, !dbg !2360
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2361 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %1, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #10, !dbg !2369
  call void @llvm.dbg.value(metadata i64 -1, metadata !2331, metadata !DIExpression()) #10, !dbg !2371
  call void @llvm.dbg.value(metadata i8 %1, metadata !2332, metadata !DIExpression()) #10, !dbg !2372
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2373
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2373
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2374, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !992, metadata !DIExpression()) #10, !dbg !2376
  call void @llvm.dbg.value(metadata i8 %1, metadata !993, metadata !DIExpression()) #10, !dbg !2378
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()) #10, !dbg !2379
  call void @llvm.dbg.value(metadata i8 %1, metadata !995, metadata !DIExpression()) #10, !dbg !2380
  %5 = lshr i8 %1, 5, !dbg !2381
  %6 = zext i8 %5 to i64, !dbg !2381
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2382
  call void @llvm.dbg.value(metadata i32* %7, metadata !997, metadata !DIExpression()) #10, !dbg !2383
  %8 = and i8 %1, 31, !dbg !2384
  %9 = zext i8 %8 to i32, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %9, metadata !999, metadata !DIExpression()) #10, !dbg !2385
  %10 = load i32, i32* %7, align 4, !dbg !2386, !tbaa !744
  %11 = lshr i32 %10, %9, !dbg !2387
  %12 = and i32 %11, 1, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %12, metadata !1000, metadata !DIExpression()) #10, !dbg !2389
  %13 = xor i32 %12, 1, !dbg !2390
  %14 = shl i32 %13, %9, !dbg !2391
  %15 = xor i32 %14, %10, !dbg !2392
  store i32 %15, i32* %7, align 4, !dbg !2392, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2375
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2394
  ret i8* %16, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2396 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()) #10, !dbg !2400
  call void @llvm.dbg.value(metadata i8 58, metadata !2366, metadata !DIExpression()) #10, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata i64 -1, metadata !2331, metadata !DIExpression()) #10, !dbg !2405
  call void @llvm.dbg.value(metadata i8 58, metadata !2332, metadata !DIExpression()) #10, !dbg !2406
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2407
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2408, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !992, metadata !DIExpression()) #10, !dbg !2410
  call void @llvm.dbg.value(metadata i8 58, metadata !993, metadata !DIExpression()) #10, !dbg !2412
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()) #10, !dbg !2413
  call void @llvm.dbg.value(metadata i8 58, metadata !995, metadata !DIExpression()) #10, !dbg !2414
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2415
  call void @llvm.dbg.value(metadata i32* %4, metadata !997, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.dbg.value(metadata i32 26, metadata !999, metadata !DIExpression()) #10, !dbg !2417
  %5 = load i32, i32* %4, align 4, !dbg !2418, !tbaa !744
  %6 = or i32 %5, 67108864, !dbg !2419
  store i32 %6, i32* %4, align 4, !dbg !2419, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2409
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2421
  ret i8* %7, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2423 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #10, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %1, metadata !2331, metadata !DIExpression()) #10, !dbg !2431
  call void @llvm.dbg.value(metadata i8 58, metadata !2332, metadata !DIExpression()) #10, !dbg !2432
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2434, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2435
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !992, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i8 58, metadata !993, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()) #10, !dbg !2439
  call void @llvm.dbg.value(metadata i8 58, metadata !995, metadata !DIExpression()) #10, !dbg !2440
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2441
  call void @llvm.dbg.value(metadata i32* %5, metadata !997, metadata !DIExpression()) #10, !dbg !2442
  call void @llvm.dbg.value(metadata i32 26, metadata !999, metadata !DIExpression()) #10, !dbg !2443
  %6 = load i32, i32* %5, align 4, !dbg !2444, !tbaa !744
  %7 = or i32 %6, 67108864, !dbg !2445
  store i32 %7, i32* %5, align 4, !dbg !2445, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2435
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2447
  ret i8* %8, !dbg !2448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2449 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2222, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %0, metadata !2451, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %1, metadata !2452, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression()), !dbg !2459
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2460
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2461
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %1, metadata !2217, metadata !DIExpression()) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i32 0, metadata !2222, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2455
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2455, !alias.scope !2463
  %8 = icmp eq i32 %1, 10, !dbg !2466
  br i1 %8, label %9, label %10, !dbg !2467

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2468, !noalias !2463
  unreachable, !dbg !2468

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2455
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2461
  store i32 %1, i32* %11, align 8, !dbg !2461
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2461
  %13 = bitcast i32* %12 to i8*, !dbg !2461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2461
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2454, metadata !DIExpression(DW_OP_deref)), !dbg !2469
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 58, metadata !993, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !995, metadata !DIExpression()), !dbg !2474
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32* %14, metadata !997, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 26, metadata !999, metadata !DIExpression()), !dbg !2477
  %15 = load i32, i32* %14, align 4, !dbg !2478, !tbaa !744
  %16 = or i32 %15, 67108864, !dbg !2479
  store i32 %16, i32* %14, align 4, !dbg !2479, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2454, metadata !DIExpression(DW_OP_deref)), !dbg !2469
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2481
  ret i8* %17, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2483 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2487, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* %1, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %2, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %3, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()) #10, !dbg !2505
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2501, metadata !DIExpression()) #10, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %3, metadata !2502, metadata !DIExpression()) #10, !dbg !2509
  call void @llvm.dbg.value(metadata i64 -1, metadata !2503, metadata !DIExpression()) #10, !dbg !2510
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2512, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1041, metadata !DIExpression()) #10, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()) #10, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %2, metadata !1043, metadata !DIExpression()) #10, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1041, metadata !DIExpression()) #10, !dbg !2514
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2518
  store i32 10, i32* %7, align 8, !dbg !2519, !tbaa !973
  %8 = icmp ne i8* %1, null, !dbg !2520
  %9 = icmp ne i8* %2, null, !dbg !2521
  %10 = and i1 %8, %9, !dbg !2522
  br i1 %10, label %12, label %11, !dbg !2522

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2523
  unreachable, !dbg !2523

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2524
  store i8* %1, i8** %13, align 8, !dbg !2525, !tbaa !1059
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2526
  store i8* %2, i8** %14, align 8, !dbg !2527, !tbaa !1062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2513
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2529
  ret i8* %15, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2496 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %2, metadata !2501, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %3, metadata !2502, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %4, metadata !2503, metadata !DIExpression()), !dbg !2535
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2537, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1041, metadata !DIExpression()) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %2, metadata !1043, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1041, metadata !DIExpression()) #10, !dbg !2539
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2543
  store i32 10, i32* %8, align 8, !dbg !2544, !tbaa !973
  %9 = icmp ne i8* %1, null, !dbg !2545
  %10 = icmp ne i8* %2, null, !dbg !2546
  %11 = and i1 %9, %10, !dbg !2547
  br i1 %11, label %13, label %12, !dbg !2547

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2548
  unreachable, !dbg !2548

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2549
  store i8* %1, i8** %14, align 8, !dbg !2550, !tbaa !1059
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2551
  store i8* %2, i8** %15, align 8, !dbg !2552, !tbaa !1062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2538
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2554
  ret i8* %16, !dbg !2555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2556 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()) #10, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %0, metadata !2488, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %1, metadata !2489, metadata !DIExpression()) #10, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %2, metadata !2490, metadata !DIExpression()) #10, !dbg !2570
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #10, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %0, metadata !2500, metadata !DIExpression()) #10, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2501, metadata !DIExpression()) #10, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2502, metadata !DIExpression()) #10, !dbg !2575
  call void @llvm.dbg.value(metadata i64 -1, metadata !2503, metadata !DIExpression()) #10, !dbg !2576
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2578, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1041, metadata !DIExpression()) #10, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %0, metadata !1042, metadata !DIExpression()) #10, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %1, metadata !1043, metadata !DIExpression()) #10, !dbg !2583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1041, metadata !DIExpression()) #10, !dbg !2580
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2584
  store i32 10, i32* %6, align 8, !dbg !2585, !tbaa !973
  %7 = icmp ne i8* %0, null, !dbg !2586
  %8 = icmp ne i8* %1, null, !dbg !2587
  %9 = and i1 %7, %8, !dbg !2588
  br i1 %9, label %11, label %10, !dbg !2588

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2589
  unreachable, !dbg !2589

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2590
  store i8* %0, i8** %12, align 8, !dbg !2591, !tbaa !1059
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2592
  store i8* %1, i8** %13, align 8, !dbg !2593, !tbaa !1062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2579
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2594
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2595
  ret i8* %14, !dbg !2596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2597 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !2602, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %3, metadata !2604, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #10, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2500, metadata !DIExpression()) #10, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2501, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %2, metadata !2502, metadata !DIExpression()) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %3, metadata !2503, metadata !DIExpression()) #10, !dbg !2614
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2616, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1041, metadata !DIExpression()) #10, !dbg !2618
  call void @llvm.dbg.value(metadata i8* %0, metadata !1042, metadata !DIExpression()) #10, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !1043, metadata !DIExpression()) #10, !dbg !2621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1041, metadata !DIExpression()) #10, !dbg !2618
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2622
  store i32 10, i32* %7, align 8, !dbg !2623, !tbaa !973
  %8 = icmp ne i8* %0, null, !dbg !2624
  %9 = icmp ne i8* %1, null, !dbg !2625
  %10 = and i1 %8, %9, !dbg !2626
  br i1 %10, label %12, label %11, !dbg !2626

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2627
  unreachable, !dbg !2627

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2628
  store i8* %0, i8** %13, align 8, !dbg !2629, !tbaa !1059
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2630
  store i8* %1, i8** %14, align 8, !dbg !2631, !tbaa !1062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2617
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2632
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2633
  ret i8* %15, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %2, metadata !2641, metadata !DIExpression()), !dbg !2644
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2645
  ret i8* %4, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2647 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()) #10, !dbg !2655
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()) #10, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()) #10, !dbg !2658
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2659
  ret i8* %3, !dbg !2660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !2666, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()) #10, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()) #10, !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #10, !dbg !2672
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2673
  ret i8* %3, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2665, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #10, !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()) #10, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()) #10, !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #10, !dbg !2687
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2688
  ret i8* %2, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2690 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2748, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2749, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %3, metadata !2751, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8** %4, metadata !2752, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %5, metadata !2753, metadata !DIExpression()), !dbg !2759
  %7 = icmp eq i8* %1, null, !dbg !2760
  br i1 %7, label %10, label %8, !dbg !2762

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2763
  br label %12, !dbg !2763

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2764
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !2765
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2765
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !2766
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2766
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
  ], !dbg !2767

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2768
  unreachable, !dbg !2768

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !2770
  %20 = load i8*, i8** %4, align 8, !dbg !2770, !tbaa !663
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2770
  br label %146, !dbg !2771

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !2772
  %24 = load i8*, i8** %4, align 8, !dbg !2772, !tbaa !663
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2772
  %26 = load i8*, i8** %25, align 8, !dbg !2772, !tbaa !663
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2772
  br label %146, !dbg !2773

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !2774
  %30 = load i8*, i8** %4, align 8, !dbg !2774, !tbaa !663
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2774
  %32 = load i8*, i8** %31, align 8, !dbg !2774, !tbaa !663
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2774
  %34 = load i8*, i8** %33, align 8, !dbg !2774, !tbaa !663
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2774
  br label %146, !dbg !2775

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !2776
  %38 = load i8*, i8** %4, align 8, !dbg !2776, !tbaa !663
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2776
  %40 = load i8*, i8** %39, align 8, !dbg !2776, !tbaa !663
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2776
  %42 = load i8*, i8** %41, align 8, !dbg !2776, !tbaa !663
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2776
  %44 = load i8*, i8** %43, align 8, !dbg !2776, !tbaa !663
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2776
  br label %146, !dbg !2777

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !2778
  %48 = load i8*, i8** %4, align 8, !dbg !2778, !tbaa !663
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2778
  %50 = load i8*, i8** %49, align 8, !dbg !2778, !tbaa !663
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2778
  %52 = load i8*, i8** %51, align 8, !dbg !2778, !tbaa !663
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2778
  %54 = load i8*, i8** %53, align 8, !dbg !2778, !tbaa !663
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2778
  %56 = load i8*, i8** %55, align 8, !dbg !2778, !tbaa !663
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2778
  br label %146, !dbg !2779

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !2780
  %60 = load i8*, i8** %4, align 8, !dbg !2780, !tbaa !663
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2780
  %62 = load i8*, i8** %61, align 8, !dbg !2780, !tbaa !663
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2780
  %64 = load i8*, i8** %63, align 8, !dbg !2780, !tbaa !663
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2780
  %66 = load i8*, i8** %65, align 8, !dbg !2780, !tbaa !663
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2780
  %68 = load i8*, i8** %67, align 8, !dbg !2780, !tbaa !663
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2780
  %70 = load i8*, i8** %69, align 8, !dbg !2780, !tbaa !663
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2780
  br label %146, !dbg !2781

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !2782
  %74 = load i8*, i8** %4, align 8, !dbg !2782, !tbaa !663
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2782
  %76 = load i8*, i8** %75, align 8, !dbg !2782, !tbaa !663
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2782
  %78 = load i8*, i8** %77, align 8, !dbg !2782, !tbaa !663
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2782
  %80 = load i8*, i8** %79, align 8, !dbg !2782, !tbaa !663
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2782
  %82 = load i8*, i8** %81, align 8, !dbg !2782, !tbaa !663
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2782
  %84 = load i8*, i8** %83, align 8, !dbg !2782, !tbaa !663
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2782
  %86 = load i8*, i8** %85, align 8, !dbg !2782, !tbaa !663
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2782
  br label %146, !dbg !2783

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !2784
  %90 = load i8*, i8** %4, align 8, !dbg !2784, !tbaa !663
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2784
  %92 = load i8*, i8** %91, align 8, !dbg !2784, !tbaa !663
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2784
  %94 = load i8*, i8** %93, align 8, !dbg !2784, !tbaa !663
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2784
  %96 = load i8*, i8** %95, align 8, !dbg !2784, !tbaa !663
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2784
  %98 = load i8*, i8** %97, align 8, !dbg !2784, !tbaa !663
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2784
  %100 = load i8*, i8** %99, align 8, !dbg !2784, !tbaa !663
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2784
  %102 = load i8*, i8** %101, align 8, !dbg !2784, !tbaa !663
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2784
  %104 = load i8*, i8** %103, align 8, !dbg !2784, !tbaa !663
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2784
  br label %146, !dbg !2785

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !2786
  %108 = load i8*, i8** %4, align 8, !dbg !2786, !tbaa !663
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2786
  %110 = load i8*, i8** %109, align 8, !dbg !2786, !tbaa !663
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2786
  %112 = load i8*, i8** %111, align 8, !dbg !2786, !tbaa !663
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2786
  %114 = load i8*, i8** %113, align 8, !dbg !2786, !tbaa !663
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2786
  %116 = load i8*, i8** %115, align 8, !dbg !2786, !tbaa !663
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2786
  %118 = load i8*, i8** %117, align 8, !dbg !2786, !tbaa !663
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2786
  %120 = load i8*, i8** %119, align 8, !dbg !2786, !tbaa !663
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2786
  %122 = load i8*, i8** %121, align 8, !dbg !2786, !tbaa !663
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2786
  %124 = load i8*, i8** %123, align 8, !dbg !2786, !tbaa !663
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2786
  br label %146, !dbg !2787

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !2788
  %128 = load i8*, i8** %4, align 8, !dbg !2788, !tbaa !663
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2788
  %130 = load i8*, i8** %129, align 8, !dbg !2788, !tbaa !663
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2788
  %132 = load i8*, i8** %131, align 8, !dbg !2788, !tbaa !663
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2788
  %134 = load i8*, i8** %133, align 8, !dbg !2788, !tbaa !663
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2788
  %136 = load i8*, i8** %135, align 8, !dbg !2788, !tbaa !663
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2788
  %138 = load i8*, i8** %137, align 8, !dbg !2788, !tbaa !663
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2788
  %140 = load i8*, i8** %139, align 8, !dbg !2788, !tbaa !663
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2788
  %142 = load i8*, i8** %141, align 8, !dbg !2788, !tbaa !663
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2788
  %144 = load i8*, i8** %143, align 8, !dbg !2788, !tbaa !663
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2788
  br label %146, !dbg !2789

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2791 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2795, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %2, metadata !2797, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %3, metadata !2798, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8** %4, metadata !2799, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 0, metadata !2800, metadata !DIExpression()), !dbg !2806
  br label %6, !dbg !2807

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2811
  %9 = load i8*, i8** %8, align 8, !dbg !2811, !tbaa !663
  %10 = icmp eq i8* %9, null, !dbg !2812
  %11 = add i64 %7, 1, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %11, metadata !2800, metadata !DIExpression()), !dbg !2806
  br i1 %10, label %12, label %6, !dbg !2812, !llvm.loop !2814

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2806
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2816
  ret void, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2818 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2829, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %1, metadata !2830, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %2, metadata !2831, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %3, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2833, metadata !DIExpression()), !dbg !2841
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2842
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2842
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2835, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 0, metadata !2834, metadata !DIExpression()), !dbg !2844
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2834, metadata !DIExpression()), !dbg !2844
  %11 = load i32, i32* %8, align 8, !dbg !2845
  %12 = icmp ult i32 %11, 41, !dbg !2845
  br i1 %12, label %13, label %18, !dbg !2845

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2845
  %15 = sext i32 %11 to i64, !dbg !2845
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2845
  %17 = add i32 %11, 8, !dbg !2845
  store i32 %17, i32* %8, align 8, !dbg !2845
  br label %21, !dbg !2845

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2845
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2845
  store i8* %20, i8** %10, align 8, !dbg !2845
  br label %21, !dbg !2845

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2845
  %25 = load i8*, i8** %24, align 8, !dbg !2845
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2848
  store i8* %25, i8** %26, align 16, !dbg !2849, !tbaa !663
  %27 = icmp eq i8* %25, null, !dbg !2850
  br i1 %27, label %30, label %28, !dbg !2851

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 1, metadata !2834, metadata !DIExpression()), !dbg !2844
  %29 = icmp ult i32 %22, 41, !dbg !2845
  br i1 %29, label %35, label %32, !dbg !2845

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2852
  call void @llvm.dbg.value(metadata i64 %31, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %31, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2854
  ret void, !dbg !2854

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2845
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2845
  store i8* %34, i8** %10, align 8, !dbg !2845
  br label %40, !dbg !2845

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2845
  %37 = sext i32 %22 to i64, !dbg !2845
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2845
  %39 = add i32 %22, 8, !dbg !2845
  store i32 %39, i32* %8, align 8, !dbg !2845
  br label %40, !dbg !2845

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2845
  %44 = load i8*, i8** %43, align 8, !dbg !2845
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2848
  store i8* %44, i8** %45, align 8, !dbg !2849, !tbaa !663
  %46 = icmp eq i8* %44, null, !dbg !2850
  br i1 %46, label %30, label %47, !dbg !2851

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 2, metadata !2834, metadata !DIExpression()), !dbg !2844
  %48 = icmp ult i32 %41, 41, !dbg !2845
  br i1 %48, label %52, label %49, !dbg !2845

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2845
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2845
  store i8* %51, i8** %10, align 8, !dbg !2845
  br label %57, !dbg !2845

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2845
  %54 = sext i32 %41 to i64, !dbg !2845
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2845
  %56 = add i32 %41, 8, !dbg !2845
  store i32 %56, i32* %8, align 8, !dbg !2845
  br label %57, !dbg !2845

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2845
  %61 = load i8*, i8** %60, align 8, !dbg !2845
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2848
  store i8* %61, i8** %62, align 16, !dbg !2849, !tbaa !663
  %63 = icmp eq i8* %61, null, !dbg !2850
  br i1 %63, label %30, label %64, !dbg !2851

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 3, metadata !2834, metadata !DIExpression()), !dbg !2844
  %65 = icmp ult i32 %58, 41, !dbg !2845
  br i1 %65, label %69, label %66, !dbg !2845

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2845
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2845
  store i8* %68, i8** %10, align 8, !dbg !2845
  br label %74, !dbg !2845

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2845
  %71 = sext i32 %58 to i64, !dbg !2845
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2845
  %73 = add i32 %58, 8, !dbg !2845
  store i32 %73, i32* %8, align 8, !dbg !2845
  br label %74, !dbg !2845

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2845
  %78 = load i8*, i8** %77, align 8, !dbg !2845
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2848
  store i8* %78, i8** %79, align 8, !dbg !2849, !tbaa !663
  %80 = icmp eq i8* %78, null, !dbg !2850
  br i1 %80, label %30, label %81, !dbg !2851

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 4, metadata !2834, metadata !DIExpression()), !dbg !2844
  %82 = icmp ult i32 %75, 41, !dbg !2845
  br i1 %82, label %86, label %83, !dbg !2845

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2845
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2845
  store i8* %85, i8** %10, align 8, !dbg !2845
  br label %91, !dbg !2845

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2845
  %88 = sext i32 %75 to i64, !dbg !2845
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2845
  %90 = add i32 %75, 8, !dbg !2845
  store i32 %90, i32* %8, align 8, !dbg !2845
  br label %91, !dbg !2845

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2845
  %95 = load i8*, i8** %94, align 8, !dbg !2845
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2848
  store i8* %95, i8** %96, align 16, !dbg !2849, !tbaa !663
  %97 = icmp eq i8* %95, null, !dbg !2850
  br i1 %97, label %30, label %98, !dbg !2851

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 5, metadata !2834, metadata !DIExpression()), !dbg !2844
  %99 = icmp ult i32 %92, 41, !dbg !2845
  br i1 %99, label %103, label %100, !dbg !2845

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2845
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2845
  store i8* %102, i8** %10, align 8, !dbg !2845
  br label %108, !dbg !2845

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2845
  %105 = sext i32 %92 to i64, !dbg !2845
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2845
  %107 = add i32 %92, 8, !dbg !2845
  store i32 %107, i32* %8, align 8, !dbg !2845
  br label %108, !dbg !2845

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2845
  %111 = load i8*, i8** %110, align 8, !dbg !2845
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2848
  store i8* %111, i8** %112, align 8, !dbg !2849, !tbaa !663
  %113 = icmp eq i8* %111, null, !dbg !2850
  br i1 %113, label %30, label %114, !dbg !2851

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 6, metadata !2834, metadata !DIExpression()), !dbg !2844
  %115 = load i8*, i8** %10, align 8, !dbg !2845
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2845
  store i8* %116, i8** %10, align 8, !dbg !2845
  %117 = bitcast i8* %115 to i8**, !dbg !2845
  %118 = load i8*, i8** %117, align 8, !dbg !2845
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2848
  store i8* %118, i8** %119, align 16, !dbg !2849, !tbaa !663
  %120 = icmp eq i8* %118, null, !dbg !2850
  br i1 %120, label %30, label %121, !dbg !2851

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 7, metadata !2834, metadata !DIExpression()), !dbg !2844
  %122 = load i8*, i8** %10, align 8, !dbg !2845
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2845
  store i8* %123, i8** %10, align 8, !dbg !2845
  %124 = bitcast i8* %122 to i8**, !dbg !2845
  %125 = load i8*, i8** %124, align 8, !dbg !2845
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2848
  store i8* %125, i8** %126, align 8, !dbg !2849, !tbaa !663
  %127 = icmp eq i8* %125, null, !dbg !2850
  br i1 %127, label %30, label %128, !dbg !2851

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 8, metadata !2834, metadata !DIExpression()), !dbg !2844
  %129 = load i8*, i8** %10, align 8, !dbg !2845
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2845
  store i8* %130, i8** %10, align 8, !dbg !2845
  %131 = bitcast i8* %129 to i8**, !dbg !2845
  %132 = load i8*, i8** %131, align 8, !dbg !2845
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2848
  store i8* %132, i8** %133, align 16, !dbg !2849, !tbaa !663
  %134 = icmp eq i8* %132, null, !dbg !2850
  br i1 %134, label %30, label %135, !dbg !2851

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2834, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 9, metadata !2834, metadata !DIExpression()), !dbg !2844
  %136 = load i8*, i8** %10, align 8, !dbg !2845
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2845
  store i8* %137, i8** %10, align 8, !dbg !2845
  %138 = bitcast i8* %136 to i8**, !dbg !2845
  %139 = load i8*, i8** %138, align 8, !dbg !2845
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2848
  store i8* %139, i8** %140, align 8, !dbg !2849, !tbaa !663
  %141 = icmp eq i8* %139, null, !dbg !2850
  %142 = select i1 %141, i64 9, i64 10, !dbg !2851
  br label %30, !dbg !2851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2855 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2859, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %3, metadata !2862, metadata !DIExpression()), !dbg !2872
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2873
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2873
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2863, metadata !DIExpression()), !dbg !2874
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2875
  call void @llvm.va_start(i8* nonnull %6), !dbg !2875
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2876
  call void @llvm.va_end(i8* nonnull %6), !dbg !2877
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2878
  ret void, !dbg !2878
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2879 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !2880
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !2880
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !2881
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !2881
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.97, i64 0, i64 0), i32 5) #10, !dbg !2882
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2882, !tbaa !663
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2882
  ret void, !dbg !2883
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2884 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  %3 = udiv i64 9223372036854775807, %1, !dbg !2892
  %4 = icmp ult i64 %3, %0, !dbg !2892
  br i1 %4, label %5, label %6, !dbg !2894

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2895
  unreachable, !dbg !2895

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %7, metadata !2897, metadata !DIExpression()) #10, !dbg !2904
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %8, metadata !2903, metadata !DIExpression()) #10, !dbg !2907
  %9 = icmp eq i8* %8, null, !dbg !2908
  %10 = icmp ne i64 %7, 0, !dbg !2910
  %11 = and i1 %10, %9, !dbg !2911
  br i1 %11, label %12, label %13, !dbg !2911

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2912
  unreachable, !dbg !2912

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2913
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2898 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()), !dbg !2914
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2903, metadata !DIExpression()), !dbg !2916
  %3 = icmp eq i8* %2, null, !dbg !2917
  %4 = icmp ne i64 %0, 0, !dbg !2918
  %5 = and i1 %4, %3, !dbg !2919
  br i1 %5, label %6, label %7, !dbg !2919

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2920
  unreachable, !dbg !2920

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2921
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2926, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %2, metadata !2928, metadata !DIExpression()), !dbg !2931
  %4 = udiv i64 9223372036854775807, %2, !dbg !2932
  %5 = icmp ult i64 %4, %1, !dbg !2932
  br i1 %5, label %6, label %7, !dbg !2934

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2935
  unreachable, !dbg !2935

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %8, metadata !2942, metadata !DIExpression()) #10, !dbg !2945
  %9 = icmp eq i64 %8, 0, !dbg !2946
  %10 = icmp ne i8* %0, null, !dbg !2948
  %11 = and i1 %10, %9, !dbg !2949
  br i1 %11, label %12, label %13, !dbg !2949

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2950
  br label %19, !dbg !2952

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %14, metadata !2937, metadata !DIExpression()) #10, !dbg !2943
  %15 = icmp eq i8* %14, null, !dbg !2954
  %16 = icmp ne i64 %8, 0, !dbg !2956
  %17 = and i1 %16, %15, !dbg !2957
  br i1 %17, label %18, label %19, !dbg !2957

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2958
  unreachable, !dbg !2958

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2959
  ret i8* %20, !dbg !2960
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2962
  %3 = icmp eq i64 %1, 0, !dbg !2963
  %4 = icmp ne i8* %0, null, !dbg !2964
  %5 = and i1 %4, %3, !dbg !2965
  br i1 %5, label %6, label %7, !dbg !2965

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2966
  br label %13, !dbg !2967

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %8, metadata !2937, metadata !DIExpression()), !dbg !2961
  %9 = icmp eq i8* %8, null, !dbg !2969
  %10 = icmp ne i64 %1, 0, !dbg !2970
  %11 = and i1 %10, %9, !dbg !2971
  br i1 %11, label %12, label %13, !dbg !2971

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2972
  unreachable, !dbg !2972

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2973
  ret i8* %14, !dbg !2974
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %2, metadata !213, metadata !DIExpression()), !dbg !2977
  %4 = load i64, i64* %1, align 8, !dbg !2978, !tbaa !2018
  call void @llvm.dbg.value(metadata i64 %4, metadata !214, metadata !DIExpression()), !dbg !2979
  %5 = icmp eq i8* %0, null, !dbg !2980
  br i1 %5, label %6, label %20, !dbg !2982

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2983
  br i1 %7, label %8, label %13, !dbg !2986

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %9, metadata !214, metadata !DIExpression()), !dbg !2979
  %10 = icmp ugt i64 %2, 128, !dbg !2989
  %11 = zext i1 %10 to i64, !dbg !2989
  %12 = add nuw nsw i64 %9, %11, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %12, metadata !214, metadata !DIExpression()), !dbg !2979
  br label %13, !dbg !2991

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2992
  call void @llvm.dbg.value(metadata i64 %14, metadata !214, metadata !DIExpression()), !dbg !2979
  %15 = udiv i64 9223372036854775807, %2, !dbg !2993
  %16 = icmp ult i64 %15, %14, !dbg !2993
  br i1 %16, label %19, label %17, !dbg !2995

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !2979
  store i64 %14, i64* %1, align 8, !dbg !2996, !tbaa !2018
  %18 = mul i64 %14, %2, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %28, metadata !2942, metadata !DIExpression()) #10, !dbg !3000
  br label %31, !dbg !3001

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3002
  unreachable, !dbg !3002

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3003
  %22 = icmp ugt i64 %21, %4, !dbg !3006
  br i1 %22, label %24, label %23, !dbg !3007

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3008
  unreachable, !dbg !3008

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3009
  %26 = add i64 %4, 1, !dbg !3010
  %27 = add i64 %26, %25, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !2979
  store i64 %27, i64* %1, align 8, !dbg !2996, !tbaa !2018
  %28 = mul i64 %27, %2, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %28, metadata !2942, metadata !DIExpression()) #10, !dbg !3000
  %29 = icmp eq i64 %28, 0, !dbg !3012
  br i1 %29, label %30, label %31, !dbg !3001

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3013
  br label %38, !dbg !3014

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %33, metadata !2937, metadata !DIExpression()) #10, !dbg !2998
  %34 = icmp eq i8* %33, null, !dbg !3016
  %35 = icmp ne i64 %32, 0, !dbg !3017
  %36 = and i1 %35, %34, !dbg !3018
  br i1 %36, label %37, label %38, !dbg !3018

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3019
  unreachable, !dbg !3019

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3020
  ret i8* %39, !dbg !3021
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3022 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #10, !dbg !3026
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %2, metadata !2903, metadata !DIExpression()) #10, !dbg !3029
  %3 = icmp eq i8* %2, null, !dbg !3030
  %4 = icmp ne i64 %0, 0, !dbg !3031
  %5 = and i1 %4, %3, !dbg !3032
  br i1 %5, label %6, label %7, !dbg !3032

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3033
  unreachable, !dbg !3033

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3035 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64* %1, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #10, !dbg !3043
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()) #10, !dbg !3045
  call void @llvm.dbg.value(metadata i64 1, metadata !213, metadata !DIExpression()) #10, !dbg !3046
  %3 = load i64, i64* %1, align 8, !dbg !3047, !tbaa !2018
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #10, !dbg !3048
  %4 = icmp eq i8* %0, null, !dbg !3049
  br i1 %4, label %5, label %12, !dbg !3050

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3051
  br i1 %6, label %9, label %7, !dbg !3052

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #10, !dbg !3048
  %8 = icmp slt i64 %3, 0, !dbg !3053
  br i1 %8, label %11, label %9, !dbg !3054

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3048
  store i64 %10, i64* %1, align 8, !dbg !3055, !tbaa !2018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #10, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %18, metadata !2942, metadata !DIExpression()) #10, !dbg !3058
  br label %21, !dbg !3059

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3060
  unreachable, !dbg !3060

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3061
  br i1 %13, label %15, label %14, !dbg !3062

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3063
  unreachable, !dbg !3063

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3064
  %17 = add i64 %3, 1, !dbg !3065
  %18 = add i64 %17, %16, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3048
  store i64 %18, i64* %1, align 8, !dbg !3055, !tbaa !2018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #10, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %18, metadata !2942, metadata !DIExpression()) #10, !dbg !3058
  %19 = icmp eq i64 %18, 0, !dbg !3067
  br i1 %19, label %20, label %21, !dbg !3059

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3068
  br label %28, !dbg !3069

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %23, metadata !2937, metadata !DIExpression()) #10, !dbg !3056
  %24 = icmp eq i8* %23, null, !dbg !3071
  %25 = icmp ne i64 %22, 0, !dbg !3072
  %26 = and i1 %25, %24, !dbg !3073
  br i1 %26, label %27, label %28, !dbg !3073

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3074
  unreachable, !dbg !3074

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3075
  ret i8* %29, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3077 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #10, !dbg !3081
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !2903, metadata !DIExpression()) #10, !dbg !3084
  %3 = icmp eq i8* %2, null, !dbg !3085
  %4 = icmp ne i64 %0, 0, !dbg !3086
  %5 = and i1 %4, %3, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3087

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3088
  unreachable, !dbg !3088

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3089
  ret i8* %2, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3091 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3097
  %3 = udiv i64 9223372036854775807, %1, !dbg !3098
  %4 = icmp ult i64 %3, %0, !dbg !3098
  br i1 %4, label %8, label %5, !dbg !3100

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %6, metadata !3095, metadata !DIExpression()), !dbg !3102
  %7 = icmp eq i8* %6, null, !dbg !3103
  br i1 %7, label %8, label %9, !dbg !3104

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3105
  unreachable, !dbg !3105

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !2897, metadata !DIExpression()) #10, !dbg !3117
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %3, metadata !2903, metadata !DIExpression()) #10, !dbg !3120
  %4 = icmp eq i8* %3, null, !dbg !3121
  %5 = icmp ne i64 %1, 0, !dbg !3122
  %6 = and i1 %5, %4, !dbg !3123
  br i1 %6, label %7, label %8, !dbg !3123

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3124
  unreachable, !dbg !3124

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3125
  ret i8* %3, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3127 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()), !dbg !3130
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3131
  %3 = add i64 %2, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #10, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %3, metadata !3114, metadata !DIExpression()) #10, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %3, metadata !2897, metadata !DIExpression()) #10, !dbg !3136
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %4, metadata !2903, metadata !DIExpression()) #10, !dbg !3139
  %5 = icmp eq i8* %4, null, !dbg !3140
  %6 = icmp ne i64 %3, 0, !dbg !3141
  %7 = and i1 %6, %5, !dbg !3142
  br i1 %7, label %8, label %9, !dbg !3142

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3143
  unreachable, !dbg !3143

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3144
  ret i8* %4, !dbg !3145
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3146 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3148, !tbaa !744
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #10, !dbg !3149
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #10, !dbg !3150
  tail call void @abort() #15, !dbg !3151
  unreachable, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3155, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3162
  %3 = icmp eq i64 %0, 0, !dbg !3163
  %4 = icmp eq i64 %1, 0, !dbg !3164
  %5 = or i1 %3, %4, !dbg !3165
  br i1 %5, label %12, label %6, !dbg !3165

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %7, metadata !3158, metadata !DIExpression()), !dbg !3167
  %8 = udiv i64 %7, %1, !dbg !3168
  %9 = icmp eq i64 %8, %0, !dbg !3170
  br i1 %9, label %12, label %10, !dbg !3171

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3172
  store i32 12, i32* %11, align 4, !dbg !3174, !tbaa !744
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3155, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %13, metadata !3156, metadata !DIExpression()), !dbg !3162
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %15, metadata !3157, metadata !DIExpression()), !dbg !3176
  br label %16, !dbg !3177

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3178
  ret i8* %17, !dbg !3179
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !158 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !166, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %1, metadata !167, metadata !DIExpression()), !dbg !3181
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !3182
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !168, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 -1, metadata !181, metadata !DIExpression()), !dbg !3184
  call void @llvm.va_start(i8* nonnull %4), !dbg !3185
  %5 = icmp eq i32 %1, 1030, !dbg !3186
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3187
  %7 = load i32, i32* %6, align 16, !dbg !3187
  %8 = icmp ult i32 %7, 41, !dbg !3187
  br i1 %5, label %9, label %58, !dbg !3186

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3188

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3188
  %12 = load i8*, i8** %11, align 16, !dbg !3188
  %13 = sext i32 %7 to i64, !dbg !3188
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3188
  %15 = add i32 %7, 8, !dbg !3188
  store i32 %15, i32* %6, align 16, !dbg !3188
  br label %20, !dbg !3188

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3188
  %18 = load i8*, i8** %17, align 8, !dbg !3188
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3188
  store i8* %19, i8** %17, align 8, !dbg !3188
  br label %20, !dbg !3188

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3188
  %23 = load i32, i32* %22, align 4, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %23, metadata !182, metadata !DIExpression()), !dbg !3189
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3190, !tbaa !744
  %25 = icmp sgt i32 %24, -1, !dbg !3192
  br i1 %25, label %26, label %38, !dbg !3193

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %27, metadata !181, metadata !DIExpression()), !dbg !3184
  %28 = icmp sgt i32 %27, -1, !dbg !3196
  br i1 %28, label %33, label %29, !dbg !3198

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3199
  %31 = load i32, i32* %30, align 4, !dbg !3199, !tbaa !744
  %32 = icmp eq i32 %31, 22, !dbg !3200
  br i1 %32, label %34, label %33, !dbg !3201

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3202, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %44, metadata !181, metadata !DIExpression()), !dbg !3184
  br label %74, !dbg !3204

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %35, metadata !181, metadata !DIExpression()), !dbg !3184
  %36 = icmp slt i32 %35, 0, !dbg !3207
  br i1 %36, label %74, label %37, !dbg !3209

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3210, !tbaa !744
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %39, metadata !181, metadata !DIExpression()), !dbg !3184
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3212
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !3213
  call void @llvm.dbg.value(metadata i32 %44, metadata !181, metadata !DIExpression()), !dbg !3184
  %45 = icmp sgt i32 %44, -1, !dbg !3214
  %46 = and i1 %45, %43, !dbg !3204
  br i1 %46, label %47, label %74, !dbg !3204

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %48, metadata !185, metadata !DIExpression()), !dbg !3216
  %49 = icmp slt i32 %48, 0, !dbg !3217
  br i1 %49, label %54, label %50, !dbg !3218

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !3219
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #10, !dbg !3220
  %53 = icmp eq i32 %52, -1, !dbg !3221
  br i1 %53, label %54, label %74, !dbg !3222

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !3223
  %56 = load i32, i32* %55, align 4, !dbg !3223, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %56, metadata !188, metadata !DIExpression()), !dbg !3224
  %57 = call i32 @close(i32 %44) #10, !dbg !3225
  store i32 %56, i32* %55, align 4, !dbg !3226, !tbaa !744
  call void @llvm.dbg.value(metadata i32 -1, metadata !181, metadata !DIExpression()), !dbg !3184
  br label %74, !dbg !3227

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !3228

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3228
  %61 = load i8*, i8** %60, align 16, !dbg !3228
  %62 = sext i32 %7 to i64, !dbg !3228
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !3228
  %64 = add i32 %7, 8, !dbg !3228
  store i32 %64, i32* %6, align 16, !dbg !3228
  br label %69, !dbg !3228

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3228
  %67 = load i8*, i8** %66, align 8, !dbg !3228
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3228
  store i8* %68, i8** %66, align 8, !dbg !3228
  br label %69, !dbg !3228

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !3228
  %72 = load i8*, i8** %71, align 8, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %72, metadata !191, metadata !DIExpression()), !dbg !3229
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #10, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %73, metadata !181, metadata !DIExpression()), !dbg !3184
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !3187
  call void @llvm.dbg.value(metadata i32 %75, metadata !181, metadata !DIExpression()), !dbg !3184
  call void @llvm.va_end(i8* nonnull %4), !dbg !3231
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !3232
  ret i32 %75, !dbg !3233
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3234 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3251, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3252, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %2, metadata !3253, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3254, metadata !DIExpression()), !dbg !3263
  %6 = bitcast i32* %5 to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3264
  %7 = icmp eq i32* %0, null, !dbg !3265
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3267
  call void @llvm.dbg.value(metadata i32* %8, metadata !3251, metadata !DIExpression()), !dbg !3260
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %9, metadata !3255, metadata !DIExpression()), !dbg !3269
  %10 = icmp ugt i64 %9, -3, !dbg !3270
  %11 = icmp ne i64 %2, 0, !dbg !3271
  %12 = and i1 %11, %10, !dbg !3272
  br i1 %12, label %13, label %18, !dbg !3272

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3273
  br i1 %14, label %18, label %15, !dbg !3274

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3275, !tbaa !1195
  call void @llvm.dbg.value(metadata i8 %16, metadata !3257, metadata !DIExpression()), !dbg !3276
  %17 = zext i8 %16 to i32, !dbg !3277
  store i32 %17, i32* %8, align 4, !dbg !3278, !tbaa !744
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3280
  ret i64 %19, !dbg !3280
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3281 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3320, metadata !DIExpression()), !dbg !3325
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3326
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3331
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3333
  %4 = load i32, i32* %3, align 8, !dbg !3333, !tbaa !3334
  %5 = and i32 %4, 32, !dbg !3333
  %6 = icmp eq i32 %5, 0, !dbg !3336
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3337
  %8 = icmp ne i32 %7, 0, !dbg !3338
  br i1 %6, label %9, label %19, !dbg !3339

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3341
  %11 = xor i1 %8, true, !dbg !3342
  %12 = or i1 %10, %11, !dbg !3342
  %13 = sext i1 %8 to i32, !dbg !3342
  br i1 %12, label %22, label %14, !dbg !3342

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3343
  %16 = load i32, i32* %15, align 4, !dbg !3343, !tbaa !744
  %17 = icmp ne i32 %16, 9, !dbg !3344
  %18 = sext i1 %17 to i32, !dbg !3345
  br label %22, !dbg !3345

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3346

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3348
  store i32 0, i32* %21, align 4, !dbg !3350, !tbaa !744
  br label %22, !dbg !3348

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3351
  ret i32 %23, !dbg !3352
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3358, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 1, metadata !3359, metadata !DIExpression()), !dbg !3362
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3360, metadata !DIExpression()), !dbg !3364
  %3 = icmp eq i8* %2, null, !dbg !3365
  br i1 %3, label %11, label %4, !dbg !3367

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !3368
  %6 = icmp eq i32 %5, 0, !dbg !3373
  br i1 %6, label %10, label %7, !dbg !3374

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !3375
  %9 = icmp eq i32 %8, 0, !dbg !3376
  br i1 %9, label %10, label %11, !dbg !3377

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3359, metadata !DIExpression()), !dbg !3362
  br label %11, !dbg !3378

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3380 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3385, metadata !DIExpression()), !dbg !3387
  %2 = icmp eq i8* %1, null, !dbg !3388
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %1, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %3, metadata !3385, metadata !DIExpression()), !dbg !3387
  %4 = load i8, i8* %3, align 1, !dbg !3391, !tbaa !1195
  %5 = icmp eq i8 %4, 0, !dbg !3395
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* %3, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %6, metadata !3385, metadata !DIExpression()), !dbg !3387
  ret i8* %6, !dbg !3397
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3398 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3440, metadata !DIExpression()), !dbg !3443
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %2, metadata !3439, metadata !DIExpression()), !dbg !3445
  %3 = icmp slt i32 %2, 0, !dbg !3446
  br i1 %3, label %4, label %6, !dbg !3448

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3449
  br label %24, !dbg !3450

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3451
  %8 = icmp eq i32 %7, 0, !dbg !3451
  br i1 %8, label %13, label %9, !dbg !3453

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3454
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3455
  %12 = icmp eq i64 %11, -1, !dbg !3456
  br i1 %12, label %16, label %13, !dbg !3457

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3458
  %15 = icmp eq i32 %14, 0, !dbg !3458
  br i1 %15, label %16, label %18, !dbg !3459

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3438, metadata !DIExpression()), !dbg !3442
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %21, metadata !3440, metadata !DIExpression()), !dbg !3443
  br label %24, !dbg !3461

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3462
  %20 = load i32, i32* %19, align 4, !dbg !3462, !tbaa !744
  call void @llvm.dbg.value(metadata i32 %20, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %20, metadata !3438, metadata !DIExpression()), !dbg !3442
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %21, metadata !3440, metadata !DIExpression()), !dbg !3443
  %22 = icmp eq i32 %20, 0, !dbg !3463
  br i1 %22, label %24, label %23, !dbg !3461

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3465, !tbaa !744
  call void @llvm.dbg.value(metadata i32 -1, metadata !3440, metadata !DIExpression()), !dbg !3443
  br label %24, !dbg !3467

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3468
  ret i32 %25, !dbg !3469
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3470 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3509, metadata !DIExpression()), !dbg !3510
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3511
  br i1 %2, label %6, label %3, !dbg !3513

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3514
  %5 = icmp eq i32 %4, 0, !dbg !3514
  br i1 %5, label %6, label %8, !dbg !3515

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3516
  br label %17, !dbg !3517

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3518, metadata !DIExpression()) #10, !dbg !3523
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3525
  %10 = load i32, i32* %9, align 8, !dbg !3525, !tbaa !3334
  %11 = and i32 %10, 256, !dbg !3527
  %12 = icmp eq i32 %11, 0, !dbg !3527
  br i1 %12, label %15, label %13, !dbg !3528

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3529
  br label %15, !dbg !3529

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3530
  br label %17, !dbg !3531

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3532
  ret i32 %18, !dbg !3533
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3534 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3574, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 %2, metadata !3576, metadata !DIExpression()), !dbg !3582
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3583
  %5 = load i8*, i8** %4, align 8, !dbg !3583, !tbaa !3584
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3585
  %7 = load i8*, i8** %6, align 8, !dbg !3585, !tbaa !3586
  %8 = icmp eq i8* %5, %7, !dbg !3587
  br i1 %8, label %9, label %28, !dbg !3588

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3589
  %11 = load i8*, i8** %10, align 8, !dbg !3589, !tbaa !3590
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3591
  %13 = load i8*, i8** %12, align 8, !dbg !3591, !tbaa !3592
  %14 = icmp eq i8* %11, %13, !dbg !3593
  br i1 %14, label %15, label %28, !dbg !3594

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3595
  %17 = load i8*, i8** %16, align 8, !dbg !3595, !tbaa !3596
  %18 = icmp eq i8* %17, null, !dbg !3597
  br i1 %18, label %19, label %28, !dbg !3598

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3599
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %21, metadata !3577, metadata !DIExpression()), !dbg !3601
  %22 = icmp eq i64 %21, -1, !dbg !3602
  br i1 %22, label %30, label %23, !dbg !3604

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3605
  %25 = load i32, i32* %24, align 8, !dbg !3606, !tbaa !3334
  %26 = and i32 %25, -17, !dbg !3606
  store i32 %26, i32* %24, align 8, !dbg !3606, !tbaa !3334
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3607
  store i64 %21, i64* %27, align 8, !dbg !3608, !tbaa !3609
  br label %30, !dbg !3610

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3611
  br label %30, !dbg !3612

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3613
  ret i32 %31, !dbg !3614
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

!llvm.dbg.cu = !{!2, !48, !54, !63, !70, !77, !193, !149, !201, !218, !220, !162, !222, !225, !227, !229, !618, !620, !622}
!llvm.ident = !{!624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624}
!llvm.module.flags = !{!625, !626, !627, !628, !629}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 48, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !30)
!3 = !DIFile(filename: "src/sync.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 40, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODE_FILE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "MODE_DATA", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "MODE_SYNC", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{!0}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1280, elements: !44)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !34, line: 50, size: 256, elements: !35)
!34 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!35 = !{!36, !39, !41, !43}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !34, line: 52, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !33, file: !34, line: 55, baseType: !40, size: 32, offset: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !33, file: !34, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !33, file: !34, line: 57, baseType: !40, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "Version", scope: !48, file: !49, line: 2, type: !37, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !51)
!49 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !{}
!51 = !{!46}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "file_name", scope: !54, file: !59, line: 46, type: !37, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !56)
!55 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!56 = !{!52, !57}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !54, file: !59, line: 56, type: !60, isLocal: true, isDefinition: true)
!59 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "exit_failure", scope: !63, file: !66, line: 24, type: !67, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !65)
!64 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{!61}
!66 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!67 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "program_name", scope: !70, file: !74, line: 33, type: !37, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !72, globals: !73)
!71 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!72 = !{!29, !27}
!73 = !{!68}
!74 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !77, file: !108, line: 85, type: !143, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !100, globals: !105)
!78 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = !{!12, !80, !85}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !6, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 46, baseType: !6, size: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!88 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!100 = !{!40, !101, !102, !27}
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !{!75, !106, !113, !125, !127, !132, !139, !141}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !77, file: !108, line: 101, type: !109, isLocal: false, isDefinition: true)
!108 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 320, elements: !111)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!111 = !{!112}
!112 = !DISubrange(count: 10)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !77, file: !108, line: 1052, type: !115, isLocal: false, isDefinition: true)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !108, line: 65, size: 448, elements: !116)
!116 = !{!117, !118, !119, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !115, file: !108, line: 68, baseType: !12, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !108, line: 71, baseType: !40, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !115, file: !108, line: 75, baseType: !120, size: 256, offset: 64)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !115, file: !108, line: 78, baseType: !37, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !115, file: !108, line: 81, baseType: !37, size: 64, offset: 384)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !77, file: !108, line: 116, type: !115, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "slot0", scope: !77, file: !108, line: 842, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "slotvec", scope: !77, file: !108, line: 845, type: !134, isLocal: true, isDefinition: true)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !108, line: 834, size: 128, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !135, file: !108, line: 836, baseType: !102, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !108, line: 837, baseType: !27, size: 64, offset: 64)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "nslots", scope: !77, file: !108, line: 843, type: !40, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec0", scope: !77, file: !108, line: 844, type: !135, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 704, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!145 = !{!146}
!146 = !DISubrange(count: 11)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !149, file: !152, line: 26, type: !153, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !151)
!150 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !{!147}
!152 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 47)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !158, file: !159, line: 339, type: !40, isLocal: true, isDefinition: true)
!158 = distinct !DISubprogram(name: "rpl_fcntl", scope: !159, file: !159, line: 276, type: !160, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !162, retainedNodes: !165)
!159 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = !DISubroutineType(types: !161)
!161 = !{!40, !40, !40, null}
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !164)
!163 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!164 = !{!156}
!165 = !{!166, !167, !168, !181, !182, !185, !188, !191}
!166 = !DILocalVariable(name: "fd", arg: 1, scope: !158, file: !159, line: 276, type: !40)
!167 = !DILocalVariable(name: "action", arg: 2, scope: !158, file: !159, line: 276, type: !40)
!168 = !DILocalVariable(name: "arg", scope: !158, file: !159, line: 278, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !170, line: 30, baseType: !171)
!170 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !163, line: 278, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !179)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !163, line: 278, size: 192, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !173, file: !163, line: 278, baseType: !6, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !173, file: !163, line: 278, baseType: !6, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !173, file: !163, line: 278, baseType: !29, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !173, file: !163, line: 278, baseType: !29, size: 64, offset: 128)
!179 = !{!180}
!180 = !DISubrange(count: 1)
!181 = !DILocalVariable(name: "result", scope: !158, file: !159, line: 279, type: !40)
!182 = !DILocalVariable(name: "target", scope: !183, file: !159, line: 326, type: !40)
!183 = distinct !DILexicalBlock(scope: !184, file: !159, line: 325, column: 7)
!184 = distinct !DILexicalBlock(scope: !158, file: !159, line: 282, column: 5)
!185 = !DILocalVariable(name: "flags", scope: !186, file: !159, line: 363, type: !40)
!186 = distinct !DILexicalBlock(scope: !187, file: !159, line: 362, column: 11)
!187 = distinct !DILexicalBlock(scope: !183, file: !159, line: 361, column: 13)
!188 = !DILocalVariable(name: "saved_errno", scope: !189, file: !159, line: 366, type: !40)
!189 = distinct !DILexicalBlock(scope: !190, file: !159, line: 365, column: 15)
!190 = distinct !DILexicalBlock(scope: !186, file: !159, line: 364, column: 17)
!191 = !DILocalVariable(name: "p", scope: !192, file: !159, line: 408, type: !29)
!192 = distinct !DILexicalBlock(scope: !184, file: !159, line: 406, column: 7)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !200)
!194 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 41, baseType: !6, size: 32, elements: !198)
!197 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = !{!199}
!199 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!200 = !{!29}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !217)
!202 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !206, file: !205, line: 186, baseType: !6, size: 32, elements: !215)
!205 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = distinct !DISubprogram(name: "x2nrealloc", scope: !205, file: !205, line: 174, type: !207, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!29, !29, !209, !102}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(name: "p", arg: 1, scope: !206, file: !205, line: 174, type: !29)
!212 = !DILocalVariable(name: "pn", arg: 2, scope: !206, file: !205, line: 174, type: !209)
!213 = !DILocalVariable(name: "s", arg: 3, scope: !206, file: !205, line: 174, type: !102)
!214 = !DILocalVariable(name: "n", scope: !206, file: !205, line: 176, type: !102)
!215 = !{!216}
!216 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!217 = !{!102, !27, !29}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50)
!219 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !200)
!221 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !224)
!223 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!224 = !{!102}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50)
!226 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50)
!228 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !231, retainedTypes: !200)
!230 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!231 = !{!232}
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 41, baseType: !6, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!235 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!236 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!237 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!238 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!239 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!240 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!241 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!242 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!244 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!245 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!246 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!247 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!273 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!274 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!275 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!276 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!277 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!278 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!279 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!280 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!281 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!282 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!283 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!284 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!343 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!430 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!504 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!505 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!506 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!507 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!508 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!509 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!511 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!512 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!513 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!514 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!515 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!516 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!517 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!519 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!520 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!522 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!523 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!524 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!550 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!551 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!552 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!553 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!554 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!559 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!560 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!561 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!562 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50)
!619 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !200)
!621 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !200)
!623 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!624 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!625 = !{i32 2, !"Dwarf Version", i32 4}
!626 = !{i32 2, !"Debug Info Version", i32 3}
!627 = !{i32 1, !"wchar_size", i32 4}
!628 = !{i32 7, !"PIC Level", i32 2}
!629 = !{i32 7, !"PIE Level", i32 2}
!630 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !631, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !40}
!633 = !{!634}
!634 = !DILocalVariable(name: "status", arg: 1, scope: !630, file: !3, line: 58, type: !40)
!635 = !DILocalVariable(name: "infomap", scope: !636, file: !637, line: 632, type: !651)
!636 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !637, file: !637, line: 630, type: !638, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!637 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!638 = !DISubroutineType(types: !639)
!639 = !{null, !37}
!640 = !{!641, !635, !642, !643, !650}
!641 = !DILocalVariable(name: "program", arg: 1, scope: !636, file: !637, line: 630, type: !37)
!642 = !DILocalVariable(name: "node", scope: !636, file: !637, line: 642, type: !37)
!643 = !DILocalVariable(name: "map_prog", scope: !636, file: !637, line: 643, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !636, file: !637, line: 632, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !646, file: !637, line: 632, baseType: !37, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !637, line: 632, baseType: !37, size: 64, offset: 64)
!650 = !DILocalVariable(name: "lc_messages", scope: !636, file: !637, line: 655, type: !37)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 896, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 7)
!654 = !DILocation(line: 632, column: 67, scope: !636, inlinedAt: !655)
!655 = distinct !DILocation(line: 82, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 63, column: 5)
!657 = distinct !DILexicalBlock(scope: !630, file: !3, line: 60, column: 7)
!658 = !DILocation(line: 58, column: 12, scope: !630)
!659 = !DILocation(line: 60, column: 14, scope: !657)
!660 = !DILocation(line: 60, column: 7, scope: !630)
!661 = !DILocation(line: 61, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !3, line: 61, column: 5)
!663 = !{!664, !664, i64 0}
!664 = !{!"any pointer", !665, i64 0}
!665 = !{!"omnipotent char", !666, i64 0}
!666 = !{!"Simple C/C++ TBAA"}
!667 = !DILocation(line: 64, column: 7, scope: !656)
!668 = !DILocation(line: 65, column: 7, scope: !656)
!669 = !DILocation(line: 73, column: 7, scope: !656)
!670 = !DILocation(line: 76, column: 7, scope: !656)
!671 = !DILocation(line: 80, column: 7, scope: !656)
!672 = !DILocation(line: 81, column: 7, scope: !656)
!673 = !DILocation(line: 632, column: 3, scope: !636, inlinedAt: !655)
!674 = !DILocation(line: 643, column: 36, scope: !636, inlinedAt: !655)
!675 = !DILocation(line: 643, column: 25, scope: !636, inlinedAt: !655)
!676 = !DILocation(line: 645, column: 33, scope: !636, inlinedAt: !655)
!677 = !DILocation(line: 645, column: 3, scope: !636, inlinedAt: !655)
!678 = !DILocation(line: 646, column: 13, scope: !636, inlinedAt: !655)
!679 = !DILocation(line: 645, column: 20, scope: !636, inlinedAt: !655)
!680 = !{!681, !664, i64 0}
!681 = !{!"infomap", !664, i64 0, !664, i64 8}
!682 = !DILocation(line: 645, column: 10, scope: !636, inlinedAt: !655)
!683 = !DILocation(line: 645, column: 28, scope: !636, inlinedAt: !655)
!684 = distinct !{!684, !685, !686}
!685 = !DILocation(line: 645, column: 3, scope: !636)
!686 = !DILocation(line: 646, column: 13, scope: !636)
!687 = !DILocation(line: 648, column: 17, scope: !688, inlinedAt: !655)
!688 = distinct !DILexicalBlock(scope: !636, file: !637, line: 648, column: 7)
!689 = !{!681, !664, i64 8}
!690 = !DILocation(line: 648, column: 7, scope: !688, inlinedAt: !655)
!691 = !DILocation(line: 648, column: 7, scope: !636, inlinedAt: !655)
!692 = !DILocation(line: 642, column: 15, scope: !636, inlinedAt: !655)
!693 = !DILocation(line: 651, column: 3, scope: !636, inlinedAt: !655)
!694 = !DILocation(line: 655, column: 29, scope: !636, inlinedAt: !655)
!695 = !DILocation(line: 655, column: 15, scope: !636, inlinedAt: !655)
!696 = !DILocation(line: 656, column: 7, scope: !697, inlinedAt: !655)
!697 = distinct !DILexicalBlock(scope: !636, file: !637, line: 656, column: 7)
!698 = !DILocation(line: 656, column: 19, scope: !697, inlinedAt: !655)
!699 = !DILocation(line: 656, column: 22, scope: !697, inlinedAt: !655)
!700 = !DILocation(line: 656, column: 7, scope: !636, inlinedAt: !655)
!701 = !DILocation(line: 662, column: 7, scope: !702, inlinedAt: !655)
!702 = distinct !DILexicalBlock(scope: !697, file: !637, line: 657, column: 5)
!703 = !DILocation(line: 664, column: 5, scope: !702, inlinedAt: !655)
!704 = !DILocation(line: 665, column: 3, scope: !636, inlinedAt: !655)
!705 = !DILocation(line: 667, column: 3, scope: !636, inlinedAt: !655)
!706 = !DILocation(line: 669, column: 1, scope: !636, inlinedAt: !655)
!707 = !DILocation(line: 84, column: 3, scope: !630)
!708 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 170, type: !709, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !712)
!709 = !DISubroutineType(types: !710)
!710 = !{!40, !40, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720}
!713 = !DILocalVariable(name: "argc", arg: 1, scope: !708, file: !3, line: 170, type: !40)
!714 = !DILocalVariable(name: "argv", arg: 2, scope: !708, file: !3, line: 170, type: !711)
!715 = !DILocalVariable(name: "c", scope: !708, file: !3, line: 172, type: !40)
!716 = !DILocalVariable(name: "args_specified", scope: !708, file: !3, line: 173, type: !60)
!717 = !DILocalVariable(name: "arg_data", scope: !708, file: !3, line: 174, type: !60)
!718 = !DILocalVariable(name: "arg_file_system", scope: !708, file: !3, line: 174, type: !60)
!719 = !DILocalVariable(name: "mode", scope: !708, file: !3, line: 175, type: !5)
!720 = !DILocalVariable(name: "ok", scope: !708, file: !3, line: 176, type: !60)
!721 = !DILocation(line: 170, column: 11, scope: !708)
!722 = !DILocation(line: 170, column: 24, scope: !708)
!723 = !DILocation(line: 174, column: 8, scope: !708)
!724 = !DILocation(line: 174, column: 26, scope: !708)
!725 = !DILocation(line: 176, column: 8, scope: !708)
!726 = !DILocation(line: 179, column: 21, scope: !708)
!727 = !DILocation(line: 179, column: 3, scope: !708)
!728 = !DILocation(line: 180, column: 3, scope: !708)
!729 = !DILocation(line: 181, column: 3, scope: !708)
!730 = !DILocation(line: 182, column: 3, scope: !708)
!731 = !DILocation(line: 184, column: 3, scope: !708)
!732 = !DILocation(line: 186, column: 3, scope: !708)
!733 = !DILocation(line: 186, column: 15, scope: !708)
!734 = !DILocation(line: 0, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 190, column: 9)
!736 = distinct !DILexicalBlock(scope: !708, file: !3, line: 188, column: 5)
!737 = !DILocation(line: 172, column: 7, scope: !708)
!738 = distinct !{!738, !732, !739}
!739 = !DILocation(line: 206, column: 5, scope: !708)
!740 = !DILocation(line: 199, column: 9, scope: !735)
!741 = !DILocation(line: 201, column: 9, scope: !735)
!742 = !DILocation(line: 204, column: 11, scope: !735)
!743 = !DILocation(line: 208, column: 20, scope: !708)
!744 = !{!745, !745, i64 0}
!745 = !{!"int", !665, i64 0}
!746 = !DILocation(line: 208, column: 27, scope: !708)
!747 = !DILocation(line: 210, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !708, file: !3, line: 210, column: 7)
!749 = !DILocation(line: 210, column: 16, scope: !748)
!750 = !DILocation(line: 212, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 211, column: 5)
!752 = !DILocation(line: 210, column: 7, scope: !748)
!753 = !DILocation(line: 216, column: 23, scope: !754)
!754 = distinct !DILexicalBlock(scope: !708, file: !3, line: 216, column: 7)
!755 = !DILocation(line: 217, column: 5, scope: !754)
!756 = !DILocation(line: 219, column: 24, scope: !757)
!757 = distinct !DILexicalBlock(scope: !708, file: !3, line: 219, column: 7)
!758 = !DILocation(line: 221, column: 12, scope: !757)
!759 = !DILocation(line: 232, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 232, column: 7)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 231, column: 5)
!762 = distinct !DILexicalBlock(scope: !708, file: !3, line: 228, column: 7)
!763 = !DILocation(line: 229, column: 5, scope: !762)
!764 = !DILocation(line: 233, column: 31, scope: !765)
!765 = distinct !DILexicalBlock(scope: !760, file: !3, line: 232, column: 7)
!766 = !DILocalVariable(name: "file", arg: 2, scope: !767, file: !3, line: 91, type: !37)
!767 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 91, type: !768, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!60, !5, !37}
!770 = !{!771, !766, !772, !773, !774, !775, !778, !779}
!771 = !DILocalVariable(name: "mode", arg: 1, scope: !767, file: !3, line: 91, type: !5)
!772 = !DILocalVariable(name: "ret", scope: !767, file: !3, line: 93, type: !60)
!773 = !DILocalVariable(name: "open_flags", scope: !767, file: !3, line: 94, type: !40)
!774 = !DILocalVariable(name: "fd", scope: !767, file: !3, line: 95, type: !40)
!775 = !DILocalVariable(name: "rd_errno", scope: !776, file: !3, line: 110, type: !40)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 107, column: 5)
!777 = distinct !DILexicalBlock(scope: !767, file: !3, line: 106, column: 7)
!778 = !DILocalVariable(name: "fdflags", scope: !767, file: !3, line: 120, type: !40)
!779 = !DILocalVariable(name: "sync_status", scope: !780, file: !3, line: 131, type: !40)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 130, column: 5)
!781 = distinct !DILexicalBlock(scope: !767, file: !3, line: 129, column: 7)
!782 = !DILocation(line: 91, column: 44, scope: !767, inlinedAt: !783)
!783 = distinct !DILocation(line: 233, column: 15, scope: !765)
!784 = !DILocation(line: 93, column: 8, scope: !767, inlinedAt: !783)
!785 = !DILocation(line: 94, column: 7, scope: !767, inlinedAt: !783)
!786 = !DILocation(line: 105, column: 8, scope: !767, inlinedAt: !783)
!787 = !DILocation(line: 95, column: 7, scope: !767, inlinedAt: !783)
!788 = !DILocation(line: 106, column: 10, scope: !777, inlinedAt: !783)
!789 = !DILocation(line: 106, column: 7, scope: !767, inlinedAt: !783)
!790 = !DILocation(line: 110, column: 22, scope: !776, inlinedAt: !783)
!791 = !DILocation(line: 110, column: 11, scope: !776, inlinedAt: !783)
!792 = !DILocation(line: 112, column: 14, scope: !793, inlinedAt: !783)
!793 = distinct !DILexicalBlock(scope: !776, file: !3, line: 111, column: 11)
!794 = !DILocation(line: 113, column: 14, scope: !795, inlinedAt: !783)
!795 = distinct !DILexicalBlock(scope: !776, file: !3, line: 113, column: 11)
!796 = !DILocation(line: 113, column: 11, scope: !776, inlinedAt: !783)
!797 = !DILocation(line: 114, column: 29, scope: !795, inlinedAt: !783)
!798 = !DILocation(line: 114, column: 52, scope: !795, inlinedAt: !783)
!799 = !DILocation(line: 114, column: 9, scope: !795, inlinedAt: !783)
!800 = !DILocation(line: 120, column: 17, scope: !767, inlinedAt: !783)
!801 = !DILocation(line: 120, column: 7, scope: !767, inlinedAt: !783)
!802 = !DILocation(line: 121, column: 15, scope: !803, inlinedAt: !783)
!803 = distinct !DILexicalBlock(scope: !767, file: !3, line: 121, column: 7)
!804 = !DILocation(line: 122, column: 7, scope: !803, inlinedAt: !783)
!805 = !DILocation(line: 122, column: 38, scope: !803, inlinedAt: !783)
!806 = !DILocation(line: 122, column: 10, scope: !803, inlinedAt: !783)
!807 = !DILocation(line: 122, column: 53, scope: !803, inlinedAt: !783)
!808 = !DILocation(line: 121, column: 7, scope: !767, inlinedAt: !783)
!809 = !DILocation(line: 124, column: 17, scope: !810, inlinedAt: !783)
!810 = distinct !DILexicalBlock(scope: !803, file: !3, line: 123, column: 5)
!811 = !DILocation(line: 124, column: 24, scope: !810, inlinedAt: !783)
!812 = !DILocation(line: 125, column: 14, scope: !810, inlinedAt: !783)
!813 = !DILocation(line: 124, column: 7, scope: !810, inlinedAt: !783)
!814 = !DILocation(line: 129, column: 7, scope: !767, inlinedAt: !783)
!815 = !DILocation(line: 131, column: 11, scope: !780, inlinedAt: !783)
!816 = !DILocation(line: 133, column: 7, scope: !780, inlinedAt: !783)
!817 = !DILocation(line: 136, column: 25, scope: !818, inlinedAt: !783)
!818 = distinct !DILexicalBlock(scope: !780, file: !3, line: 134, column: 9)
!819 = !DILocation(line: 137, column: 11, scope: !818, inlinedAt: !783)
!820 = !DILocation(line: 140, column: 25, scope: !818, inlinedAt: !783)
!821 = !DILocation(line: 141, column: 11, scope: !818, inlinedAt: !783)
!822 = !DILocation(line: 145, column: 25, scope: !818, inlinedAt: !783)
!823 = !DILocation(line: 146, column: 11, scope: !818, inlinedAt: !783)
!824 = !DILocation(line: 0, scope: !818, inlinedAt: !783)
!825 = !DILocation(line: 153, column: 23, scope: !826, inlinedAt: !783)
!826 = distinct !DILexicalBlock(scope: !780, file: !3, line: 153, column: 11)
!827 = !DILocation(line: 153, column: 11, scope: !780, inlinedAt: !783)
!828 = !DILocation(line: 155, column: 21, scope: !829, inlinedAt: !783)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 154, column: 9)
!830 = !DILocation(line: 155, column: 28, scope: !829, inlinedAt: !783)
!831 = !DILocation(line: 155, column: 51, scope: !829, inlinedAt: !783)
!832 = !DILocation(line: 155, column: 11, scope: !829, inlinedAt: !783)
!833 = !DILocation(line: 157, column: 9, scope: !829, inlinedAt: !783)
!834 = !DILocation(line: 0, scope: !810, inlinedAt: !783)
!835 = !DILocation(line: 160, column: 7, scope: !836, inlinedAt: !783)
!836 = distinct !DILexicalBlock(scope: !767, file: !3, line: 160, column: 7)
!837 = !DILocation(line: 160, column: 18, scope: !836, inlinedAt: !783)
!838 = !DILocation(line: 160, column: 7, scope: !767, inlinedAt: !783)
!839 = !DILocation(line: 162, column: 17, scope: !840, inlinedAt: !783)
!840 = distinct !DILexicalBlock(scope: !836, file: !3, line: 161, column: 5)
!841 = !DILocation(line: 162, column: 24, scope: !840, inlinedAt: !783)
!842 = !DILocation(line: 162, column: 49, scope: !840, inlinedAt: !783)
!843 = !DILocation(line: 162, column: 7, scope: !840, inlinedAt: !783)
!844 = !DILocation(line: 164, column: 5, scope: !840, inlinedAt: !783)
!845 = !DILocation(line: 0, scope: !829, inlinedAt: !783)
!846 = !DILocation(line: 166, column: 10, scope: !767, inlinedAt: !783)
!847 = !DILocation(line: 0, scope: !767, inlinedAt: !783)
!848 = !DILocation(line: 233, column: 15, scope: !765)
!849 = !DILocation(line: 233, column: 12, scope: !765)
!850 = !DILocation(line: 232, column: 35, scope: !765)
!851 = !DILocation(line: 232, column: 21, scope: !765)
!852 = distinct !{!852, !759, !853}
!853 = !DILocation(line: 233, column: 43, scope: !760)
!854 = !DILocation(line: 236, column: 10, scope: !708)
!855 = !DILocation(line: 237, column: 1, scope: !708)
!856 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !59, file: !59, line: 51, type: !638, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !54, retainedNodes: !857)
!857 = !{!858}
!858 = !DILocalVariable(name: "file", arg: 1, scope: !856, file: !59, line: 51, type: !37)
!859 = !DILocation(line: 51, column: 41, scope: !856)
!860 = !DILocation(line: 53, column: 13, scope: !856)
!861 = !DILocation(line: 54, column: 1, scope: !856)
!862 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !59, file: !59, line: 88, type: !863, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !54, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !60}
!865 = !{!866}
!866 = !DILocalVariable(name: "ignore", arg: 1, scope: !862, file: !59, line: 88, type: !60)
!867 = !DILocation(line: 88, column: 37, scope: !862)
!868 = !DILocation(line: 90, column: 16, scope: !862)
!869 = !{!870, !870, i64 0}
!870 = !{!"_Bool", !665, i64 0}
!871 = !DILocation(line: 91, column: 1, scope: !862)
!872 = distinct !DISubprogram(name: "close_stdout", scope: !59, file: !59, line: 117, type: !873, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !54, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null}
!875 = !{!876}
!876 = !DILocalVariable(name: "write_error", scope: !877, file: !59, line: 122, type: !37)
!877 = distinct !DILexicalBlock(scope: !878, file: !59, line: 121, column: 5)
!878 = distinct !DILexicalBlock(scope: !872, file: !59, line: 119, column: 7)
!879 = !DILocation(line: 119, column: 21, scope: !878)
!880 = !DILocation(line: 119, column: 7, scope: !878)
!881 = !DILocation(line: 119, column: 29, scope: !878)
!882 = !DILocation(line: 120, column: 7, scope: !878)
!883 = !DILocation(line: 120, column: 12, scope: !878)
!884 = !{i8 0, i8 2}
!885 = !DILocation(line: 120, column: 25, scope: !878)
!886 = !DILocation(line: 120, column: 28, scope: !878)
!887 = !DILocation(line: 120, column: 34, scope: !878)
!888 = !DILocation(line: 119, column: 7, scope: !872)
!889 = !DILocation(line: 122, column: 33, scope: !877)
!890 = !DILocation(line: 122, column: 19, scope: !877)
!891 = !DILocation(line: 123, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !877, file: !59, line: 123, column: 11)
!893 = !DILocation(line: 0, scope: !892)
!894 = !DILocation(line: 123, column: 11, scope: !877)
!895 = !DILocation(line: 124, column: 36, scope: !892)
!896 = !DILocation(line: 124, column: 9, scope: !892)
!897 = !DILocation(line: 127, column: 9, scope: !892)
!898 = !DILocation(line: 129, column: 14, scope: !877)
!899 = !DILocation(line: 129, column: 7, scope: !877)
!900 = !DILocation(line: 134, column: 42, scope: !901)
!901 = distinct !DILexicalBlock(scope: !872, file: !59, line: 134, column: 7)
!902 = !DILocation(line: 134, column: 28, scope: !901)
!903 = !DILocation(line: 134, column: 50, scope: !901)
!904 = !DILocation(line: 134, column: 7, scope: !872)
!905 = !DILocation(line: 135, column: 12, scope: !901)
!906 = !DILocation(line: 135, column: 5, scope: !901)
!907 = !DILocation(line: 136, column: 1, scope: !872)
!908 = distinct !DISubprogram(name: "set_program_name", scope: !74, file: !74, line: 39, type: !638, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !909)
!909 = !{!910, !911, !912}
!910 = !DILocalVariable(name: "argv0", arg: 1, scope: !908, file: !74, line: 39, type: !37)
!911 = !DILocalVariable(name: "slash", scope: !908, file: !74, line: 46, type: !37)
!912 = !DILocalVariable(name: "base", scope: !908, file: !74, line: 47, type: !37)
!913 = !DILocation(line: 39, column: 31, scope: !908)
!914 = !DILocation(line: 51, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !908, file: !74, line: 51, column: 7)
!916 = !DILocation(line: 51, column: 7, scope: !908)
!917 = !DILocation(line: 55, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !74, line: 52, column: 5)
!919 = !DILocation(line: 54, column: 7, scope: !918)
!920 = !DILocation(line: 56, column: 7, scope: !918)
!921 = !DILocation(line: 59, column: 11, scope: !908)
!922 = !DILocation(line: 46, column: 15, scope: !908)
!923 = !DILocation(line: 60, column: 17, scope: !908)
!924 = !DILocation(line: 60, column: 33, scope: !908)
!925 = !DILocation(line: 60, column: 11, scope: !908)
!926 = !DILocation(line: 47, column: 15, scope: !908)
!927 = !DILocation(line: 61, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !908, file: !74, line: 61, column: 7)
!929 = !DILocation(line: 61, column: 20, scope: !928)
!930 = !DILocation(line: 61, column: 25, scope: !928)
!931 = !DILocation(line: 61, column: 42, scope: !928)
!932 = !DILocation(line: 61, column: 28, scope: !928)
!933 = !DILocation(line: 61, column: 61, scope: !928)
!934 = !DILocation(line: 61, column: 7, scope: !908)
!935 = !DILocation(line: 64, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !74, line: 64, column: 11)
!937 = distinct !DILexicalBlock(scope: !928, file: !74, line: 62, column: 5)
!938 = !DILocation(line: 64, column: 36, scope: !936)
!939 = !DILocation(line: 64, column: 11, scope: !937)
!940 = !DILocation(line: 66, column: 24, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !74, line: 65, column: 9)
!942 = !DILocation(line: 70, column: 41, scope: !941)
!943 = !DILocation(line: 72, column: 9, scope: !941)
!944 = !DILocation(line: 84, column: 16, scope: !908)
!945 = !DILocation(line: 90, column: 27, scope: !908)
!946 = !DILocation(line: 92, column: 1, scope: !908)
!947 = distinct !DISubprogram(name: "clone_quoting_options", scope: !108, file: !108, line: 122, type: !948, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !951)
!948 = !DISubroutineType(types: !949)
!949 = !{!950, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!951 = !{!952, !953, !954}
!952 = !DILocalVariable(name: "o", arg: 1, scope: !947, file: !108, line: 122, type: !950)
!953 = !DILocalVariable(name: "e", scope: !947, file: !108, line: 124, type: !40)
!954 = !DILocalVariable(name: "p", scope: !947, file: !108, line: 125, type: !950)
!955 = !DILocation(line: 122, column: 48, scope: !947)
!956 = !DILocation(line: 124, column: 11, scope: !947)
!957 = !DILocation(line: 124, column: 7, scope: !947)
!958 = !DILocation(line: 125, column: 40, scope: !947)
!959 = !DILocation(line: 125, column: 31, scope: !947)
!960 = !DILocation(line: 125, column: 27, scope: !947)
!961 = !DILocation(line: 127, column: 9, scope: !947)
!962 = !DILocation(line: 128, column: 3, scope: !947)
!963 = distinct !DISubprogram(name: "get_quoting_style", scope: !108, file: !108, line: 133, type: !964, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !968)
!964 = !DISubroutineType(types: !965)
!965 = !{!12, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!968 = !{!969}
!969 = !DILocalVariable(name: "o", arg: 1, scope: !963, file: !108, line: 133, type: !966)
!970 = !DILocation(line: 133, column: 50, scope: !963)
!971 = !DILocation(line: 135, column: 11, scope: !963)
!972 = !DILocation(line: 135, column: 46, scope: !963)
!973 = !{!974, !665, i64 0}
!974 = !{!"quoting_options", !665, i64 0, !745, i64 4, !665, i64 8, !664, i64 40, !664, i64 48}
!975 = !DILocation(line: 135, column: 3, scope: !963)
!976 = distinct !DISubprogram(name: "set_quoting_style", scope: !108, file: !108, line: 141, type: !977, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !950, !12}
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "o", arg: 1, scope: !976, file: !108, line: 141, type: !950)
!981 = !DILocalVariable(name: "s", arg: 2, scope: !976, file: !108, line: 141, type: !12)
!982 = !DILocation(line: 141, column: 44, scope: !976)
!983 = !DILocation(line: 141, column: 66, scope: !976)
!984 = !DILocation(line: 143, column: 4, scope: !976)
!985 = !DILocation(line: 143, column: 39, scope: !976)
!986 = !DILocation(line: 143, column: 45, scope: !976)
!987 = !DILocation(line: 144, column: 1, scope: !976)
!988 = distinct !DISubprogram(name: "set_char_quoting", scope: !108, file: !108, line: 152, type: !989, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{!40, !950, !28, !40}
!991 = !{!992, !993, !994, !995, !997, !999, !1000}
!992 = !DILocalVariable(name: "o", arg: 1, scope: !988, file: !108, line: 152, type: !950)
!993 = !DILocalVariable(name: "c", arg: 2, scope: !988, file: !108, line: 152, type: !28)
!994 = !DILocalVariable(name: "i", arg: 3, scope: !988, file: !108, line: 152, type: !40)
!995 = !DILocalVariable(name: "uc", scope: !988, file: !108, line: 154, type: !996)
!996 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!997 = !DILocalVariable(name: "p", scope: !988, file: !108, line: 155, type: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!999 = !DILocalVariable(name: "shift", scope: !988, file: !108, line: 157, type: !40)
!1000 = !DILocalVariable(name: "r", scope: !988, file: !108, line: 158, type: !40)
!1001 = !DILocation(line: 152, column: 43, scope: !988)
!1002 = !DILocation(line: 152, column: 51, scope: !988)
!1003 = !DILocation(line: 152, column: 58, scope: !988)
!1004 = !DILocation(line: 154, column: 17, scope: !988)
!1005 = !DILocation(line: 156, column: 6, scope: !988)
!1006 = !DILocation(line: 156, column: 62, scope: !988)
!1007 = !DILocation(line: 156, column: 57, scope: !988)
!1008 = !DILocation(line: 155, column: 17, scope: !988)
!1009 = !DILocation(line: 157, column: 15, scope: !988)
!1010 = !DILocation(line: 157, column: 7, scope: !988)
!1011 = !DILocation(line: 158, column: 12, scope: !988)
!1012 = !DILocation(line: 158, column: 15, scope: !988)
!1013 = !DILocation(line: 158, column: 25, scope: !988)
!1014 = !DILocation(line: 158, column: 7, scope: !988)
!1015 = !DILocation(line: 159, column: 13, scope: !988)
!1016 = !DILocation(line: 159, column: 18, scope: !988)
!1017 = !DILocation(line: 159, column: 23, scope: !988)
!1018 = !DILocation(line: 159, column: 6, scope: !988)
!1019 = !DILocation(line: 160, column: 3, scope: !988)
!1020 = distinct !DISubprogram(name: "set_quoting_flags", scope: !108, file: !108, line: 168, type: !1021, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!40, !950, !40}
!1023 = !{!1024, !1025, !1026}
!1024 = !DILocalVariable(name: "o", arg: 1, scope: !1020, file: !108, line: 168, type: !950)
!1025 = !DILocalVariable(name: "i", arg: 2, scope: !1020, file: !108, line: 168, type: !40)
!1026 = !DILocalVariable(name: "r", scope: !1020, file: !108, line: 170, type: !40)
!1027 = !DILocation(line: 168, column: 44, scope: !1020)
!1028 = !DILocation(line: 168, column: 51, scope: !1020)
!1029 = !DILocation(line: 171, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1020, file: !108, line: 171, column: 7)
!1031 = !DILocation(line: 171, column: 7, scope: !1020)
!1032 = !DILocation(line: 173, column: 10, scope: !1020)
!1033 = !{!974, !745, i64 4}
!1034 = !DILocation(line: 170, column: 7, scope: !1020)
!1035 = !DILocation(line: 174, column: 12, scope: !1020)
!1036 = !DILocation(line: 175, column: 3, scope: !1020)
!1037 = distinct !DISubprogram(name: "set_custom_quoting", scope: !108, file: !108, line: 179, type: !1038, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !950, !37, !37}
!1040 = !{!1041, !1042, !1043}
!1041 = !DILocalVariable(name: "o", arg: 1, scope: !1037, file: !108, line: 179, type: !950)
!1042 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1037, file: !108, line: 180, type: !37)
!1043 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1037, file: !108, line: 180, type: !37)
!1044 = !DILocation(line: 179, column: 45, scope: !1037)
!1045 = !DILocation(line: 180, column: 33, scope: !1037)
!1046 = !DILocation(line: 180, column: 57, scope: !1037)
!1047 = !DILocation(line: 182, column: 8, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1037, file: !108, line: 182, column: 7)
!1049 = !DILocation(line: 182, column: 7, scope: !1037)
!1050 = !DILocation(line: 184, column: 6, scope: !1037)
!1051 = !DILocation(line: 184, column: 12, scope: !1037)
!1052 = !DILocation(line: 185, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1037, file: !108, line: 185, column: 7)
!1054 = !DILocation(line: 185, column: 23, scope: !1053)
!1055 = !DILocation(line: 185, column: 19, scope: !1053)
!1056 = !DILocation(line: 186, column: 5, scope: !1053)
!1057 = !DILocation(line: 187, column: 6, scope: !1037)
!1058 = !DILocation(line: 187, column: 17, scope: !1037)
!1059 = !{!974, !664, i64 40}
!1060 = !DILocation(line: 188, column: 6, scope: !1037)
!1061 = !DILocation(line: 188, column: 18, scope: !1037)
!1062 = !{!974, !664, i64 48}
!1063 = !DILocation(line: 189, column: 1, scope: !1037)
!1064 = distinct !DISubprogram(name: "quotearg_buffer", scope: !108, file: !108, line: 784, type: !1065, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!102, !27, !102, !37, !102, !966}
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1068 = !DILocalVariable(name: "buffer", arg: 1, scope: !1064, file: !108, line: 784, type: !27)
!1069 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1064, file: !108, line: 784, type: !102)
!1070 = !DILocalVariable(name: "arg", arg: 3, scope: !1064, file: !108, line: 785, type: !37)
!1071 = !DILocalVariable(name: "argsize", arg: 4, scope: !1064, file: !108, line: 785, type: !102)
!1072 = !DILocalVariable(name: "o", arg: 5, scope: !1064, file: !108, line: 786, type: !966)
!1073 = !DILocalVariable(name: "p", scope: !1064, file: !108, line: 788, type: !966)
!1074 = !DILocalVariable(name: "e", scope: !1064, file: !108, line: 789, type: !40)
!1075 = !DILocalVariable(name: "r", scope: !1064, file: !108, line: 790, type: !102)
!1076 = !DILocation(line: 784, column: 24, scope: !1064)
!1077 = !DILocation(line: 784, column: 39, scope: !1064)
!1078 = !DILocation(line: 785, column: 30, scope: !1064)
!1079 = !DILocation(line: 785, column: 42, scope: !1064)
!1080 = !DILocation(line: 786, column: 48, scope: !1064)
!1081 = !DILocation(line: 788, column: 37, scope: !1064)
!1082 = !DILocation(line: 788, column: 33, scope: !1064)
!1083 = !DILocation(line: 789, column: 11, scope: !1064)
!1084 = !DILocation(line: 789, column: 7, scope: !1064)
!1085 = !DILocation(line: 791, column: 43, scope: !1064)
!1086 = !DILocation(line: 791, column: 53, scope: !1064)
!1087 = !DILocation(line: 791, column: 60, scope: !1064)
!1088 = !DILocation(line: 792, column: 43, scope: !1064)
!1089 = !DILocation(line: 792, column: 58, scope: !1064)
!1090 = !DILocation(line: 790, column: 14, scope: !1064)
!1091 = !DILocation(line: 790, column: 10, scope: !1064)
!1092 = !DILocation(line: 793, column: 9, scope: !1064)
!1093 = !DILocation(line: 794, column: 3, scope: !1064)
!1094 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !108, file: !108, line: 256, type: !1095, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1099)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!102, !27, !102, !37, !102, !12, !40, !1097, !37, !37}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1124, !1125, !1126, !1127, !1128, !1131, !1132, !1150, !1153, !1154, !1161}
!1100 = !DILocalVariable(name: "buffer", arg: 1, scope: !1094, file: !108, line: 256, type: !27)
!1101 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1094, file: !108, line: 256, type: !102)
!1102 = !DILocalVariable(name: "arg", arg: 3, scope: !1094, file: !108, line: 257, type: !37)
!1103 = !DILocalVariable(name: "argsize", arg: 4, scope: !1094, file: !108, line: 257, type: !102)
!1104 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1094, file: !108, line: 258, type: !12)
!1105 = !DILocalVariable(name: "flags", arg: 6, scope: !1094, file: !108, line: 258, type: !40)
!1106 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1094, file: !108, line: 259, type: !1097)
!1107 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1094, file: !108, line: 260, type: !37)
!1108 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1094, file: !108, line: 261, type: !37)
!1109 = !DILocalVariable(name: "i", scope: !1094, file: !108, line: 263, type: !102)
!1110 = !DILocalVariable(name: "len", scope: !1094, file: !108, line: 264, type: !102)
!1111 = !DILocalVariable(name: "orig_buffersize", scope: !1094, file: !108, line: 265, type: !102)
!1112 = !DILocalVariable(name: "quote_string", scope: !1094, file: !108, line: 266, type: !37)
!1113 = !DILocalVariable(name: "quote_string_len", scope: !1094, file: !108, line: 267, type: !102)
!1114 = !DILocalVariable(name: "backslash_escapes", scope: !1094, file: !108, line: 268, type: !60)
!1115 = !DILocalVariable(name: "unibyte_locale", scope: !1094, file: !108, line: 269, type: !60)
!1116 = !DILocalVariable(name: "elide_outer_quotes", scope: !1094, file: !108, line: 270, type: !60)
!1117 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1094, file: !108, line: 271, type: !60)
!1118 = !DILocalVariable(name: "encountered_single_quote", scope: !1094, file: !108, line: 272, type: !60)
!1119 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1094, file: !108, line: 273, type: !60)
!1120 = !DILocalVariable(name: "c", scope: !1121, file: !108, line: 402, type: !996)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !108, line: 401, column: 5)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !108, line: 400, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 400, column: 3)
!1124 = !DILocalVariable(name: "esc", scope: !1121, file: !108, line: 403, type: !996)
!1125 = !DILocalVariable(name: "is_right_quote", scope: !1121, file: !108, line: 404, type: !60)
!1126 = !DILocalVariable(name: "escaping", scope: !1121, file: !108, line: 405, type: !60)
!1127 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1121, file: !108, line: 406, type: !60)
!1128 = !DILocalVariable(name: "m", scope: !1129, file: !108, line: 610, type: !102)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 608, column: 11)
!1130 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 426, column: 9)
!1131 = !DILocalVariable(name: "printable", scope: !1129, file: !108, line: 612, type: !60)
!1132 = !DILocalVariable(name: "mbstate", scope: !1133, file: !108, line: 621, type: !1135)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !108, line: 620, column: 15)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !108, line: 614, column: 17)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1136, line: 6, baseType: !1137)
!1136 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1138, line: 21, baseType: !1139)
!1138 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 13, size: 64, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1139, file: !1138, line: 15, baseType: !40, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1139, file: !1138, line: 20, baseType: !1143, size: 32, offset: 32)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !1138, line: 16, size: 32, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1143, file: !1138, line: 18, baseType: !6, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1143, file: !1138, line: 19, baseType: !1147, size: 32)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 4)
!1150 = !DILocalVariable(name: "w", scope: !1151, file: !108, line: 631, type: !1152)
!1151 = distinct !DILexicalBlock(scope: !1133, file: !108, line: 630, column: 19)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 90, baseType: !40)
!1153 = !DILocalVariable(name: "bytes", scope: !1151, file: !108, line: 632, type: !102)
!1154 = !DILocalVariable(name: "j", scope: !1155, file: !108, line: 657, type: !102)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !108, line: 656, column: 27)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !108, line: 654, column: 29)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !108, line: 649, column: 23)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !108, line: 641, column: 30)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !108, line: 636, column: 30)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !108, line: 634, column: 25)
!1161 = !DILocalVariable(name: "ilim", scope: !1162, file: !108, line: 684, type: !102)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !108, line: 681, column: 15)
!1163 = distinct !DILexicalBlock(scope: !1129, file: !108, line: 680, column: 17)
!1164 = !DILocation(line: 256, column: 33, scope: !1094)
!1165 = !DILocation(line: 256, column: 48, scope: !1094)
!1166 = !DILocation(line: 257, column: 39, scope: !1094)
!1167 = !DILocation(line: 257, column: 51, scope: !1094)
!1168 = !DILocation(line: 258, column: 46, scope: !1094)
!1169 = !DILocation(line: 258, column: 65, scope: !1094)
!1170 = !DILocation(line: 259, column: 47, scope: !1094)
!1171 = !DILocation(line: 260, column: 39, scope: !1094)
!1172 = !DILocation(line: 261, column: 39, scope: !1094)
!1173 = !DILocation(line: 264, column: 10, scope: !1094)
!1174 = !DILocation(line: 265, column: 10, scope: !1094)
!1175 = !DILocation(line: 266, column: 15, scope: !1094)
!1176 = !DILocation(line: 267, column: 10, scope: !1094)
!1177 = !DILocation(line: 268, column: 8, scope: !1094)
!1178 = !DILocation(line: 269, column: 25, scope: !1094)
!1179 = !DILocation(line: 269, column: 36, scope: !1094)
!1180 = !DILocation(line: 270, column: 8, scope: !1094)
!1181 = !DILocation(line: 271, column: 8, scope: !1094)
!1182 = !DILocation(line: 272, column: 8, scope: !1094)
!1183 = !DILocation(line: 273, column: 8, scope: !1094)
!1184 = !DILocation(line: 273, column: 3, scope: !1094)
!1185 = !DILocation(line: 0, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 317, column: 5)
!1187 = !DILocation(line: 316, column: 3, scope: !1094)
!1188 = !DILocation(line: 323, column: 11, scope: !1186)
!1189 = !DILocation(line: 323, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !108, line: 323, column: 11)
!1191 = !DILocation(line: 324, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !108, line: 324, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !108, line: 324, column: 9)
!1194 = !DILocation(line: 324, column: 9, scope: !1193)
!1195 = !{!665, !665, i64 0}
!1196 = !DILocation(line: 362, column: 26, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !108, line: 340, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !108, line: 339, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1186, file: !108, line: 338, column: 7)
!1200 = !DILocation(line: 363, column: 27, scope: !1197)
!1201 = !DILocation(line: 364, column: 11, scope: !1197)
!1202 = !DILocation(line: 365, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !108, line: 365, column: 13)
!1204 = !DILocation(line: 365, column: 13, scope: !1199)
!1205 = !DILocation(line: 366, column: 43, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !108, line: 366, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !108, line: 366, column: 11)
!1208 = !DILocation(line: 366, column: 11, scope: !1207)
!1209 = !DILocation(line: 367, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !108, line: 367, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !108, line: 367, column: 13)
!1212 = !DILocation(line: 367, column: 13, scope: !1211)
!1213 = !DILocation(line: 366, column: 70, scope: !1206)
!1214 = distinct !{!1214, !1208, !1215}
!1215 = !DILocation(line: 367, column: 13, scope: !1207)
!1216 = !DILocation(line: 370, column: 28, scope: !1199)
!1217 = !DILocation(line: 372, column: 7, scope: !1186)
!1218 = !DILocation(line: 376, column: 7, scope: !1186)
!1219 = !DILocation(line: 379, column: 7, scope: !1186)
!1220 = !DILocation(line: 381, column: 12, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1186, file: !108, line: 381, column: 11)
!1222 = !DILocation(line: 381, column: 11, scope: !1186)
!1223 = !DILocation(line: 0, scope: !1221)
!1224 = !DILocation(line: 386, column: 12, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1186, file: !108, line: 386, column: 11)
!1226 = !DILocation(line: 386, column: 11, scope: !1186)
!1227 = !DILocation(line: 387, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !108, line: 387, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !108, line: 387, column: 9)
!1230 = !DILocation(line: 387, column: 9, scope: !1229)
!1231 = !DILocation(line: 394, column: 7, scope: !1186)
!1232 = !DILocation(line: 397, column: 7, scope: !1186)
!1233 = !DILocation(line: 0, scope: !1094)
!1234 = !DILocation(line: 263, column: 10, scope: !1094)
!1235 = !DILocation(line: 400, column: 8, scope: !1123)
!1236 = !DILocation(line: 0, scope: !1122)
!1237 = !DILocation(line: 400, column: 27, scope: !1122)
!1238 = !DILocation(line: 400, column: 19, scope: !1122)
!1239 = !DILocation(line: 400, column: 41, scope: !1122)
!1240 = !DILocation(line: 400, column: 48, scope: !1122)
!1241 = !DILocation(line: 400, column: 3, scope: !1123)
!1242 = !DILocation(line: 400, column: 60, scope: !1122)
!1243 = !DILocation(line: 404, column: 12, scope: !1121)
!1244 = !DILocation(line: 405, column: 12, scope: !1121)
!1245 = !DILocation(line: 406, column: 12, scope: !1121)
!1246 = !DILocation(line: 409, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 408, column: 11)
!1248 = !DILocation(line: 411, column: 17, scope: !1247)
!1249 = !DILocation(line: 412, column: 39, scope: !1247)
!1250 = !DILocation(line: 416, column: 32, scope: !1247)
!1251 = !DILocation(line: 412, column: 19, scope: !1247)
!1252 = !DILocation(line: 412, column: 15, scope: !1247)
!1253 = !DILocation(line: 417, column: 11, scope: !1247)
!1254 = !DILocation(line: 417, column: 26, scope: !1247)
!1255 = !DILocation(line: 417, column: 14, scope: !1247)
!1256 = !DILocation(line: 417, column: 63, scope: !1247)
!1257 = !DILocation(line: 408, column: 11, scope: !1121)
!1258 = !DILocation(line: 0, scope: !1121)
!1259 = !DILocation(line: 424, column: 11, scope: !1121)
!1260 = !DILocation(line: 402, column: 21, scope: !1121)
!1261 = !DILocation(line: 425, column: 7, scope: !1121)
!1262 = !DILocation(line: 428, column: 15, scope: !1130)
!1263 = !DILocation(line: 430, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !108, line: 430, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !108, line: 429, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 428, column: 15)
!1267 = !DILocation(line: 430, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !108, line: 430, column: 15)
!1269 = !DILocation(line: 430, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !108, line: 430, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !108, line: 430, column: 15)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !108, line: 430, column: 15)
!1273 = !DILocation(line: 430, column: 15, scope: !1271)
!1274 = !DILocation(line: 430, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !108, line: 430, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !108, line: 430, column: 15)
!1277 = !DILocation(line: 430, column: 15, scope: !1276)
!1278 = !DILocation(line: 430, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !108, line: 430, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !108, line: 430, column: 15)
!1281 = !DILocation(line: 430, column: 15, scope: !1280)
!1282 = !DILocation(line: 430, column: 15, scope: !1272)
!1283 = !DILocation(line: 430, column: 15, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !108, line: 430, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1264, file: !108, line: 430, column: 15)
!1286 = !DILocation(line: 430, column: 15, scope: !1285)
!1287 = !DILocation(line: 438, column: 19, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1265, file: !108, line: 437, column: 19)
!1289 = !DILocation(line: 438, column: 24, scope: !1288)
!1290 = !DILocation(line: 438, column: 28, scope: !1288)
!1291 = !DILocation(line: 438, column: 38, scope: !1288)
!1292 = !DILocation(line: 438, column: 48, scope: !1288)
!1293 = !DILocation(line: 438, column: 59, scope: !1288)
!1294 = !DILocation(line: 440, column: 19, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !108, line: 440, column: 19)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !108, line: 440, column: 19)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !108, line: 439, column: 17)
!1298 = !DILocation(line: 440, column: 19, scope: !1296)
!1299 = !DILocation(line: 441, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !108, line: 441, column: 19)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !108, line: 441, column: 19)
!1302 = !DILocation(line: 441, column: 19, scope: !1301)
!1303 = !DILocation(line: 442, column: 17, scope: !1297)
!1304 = !DILocation(line: 449, column: 20, scope: !1266)
!1305 = !DILocation(line: 454, column: 11, scope: !1130)
!1306 = !DILocation(line: 457, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 455, column: 13)
!1308 = !DILocation(line: 463, column: 19, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !108, line: 462, column: 19)
!1310 = !DILocation(line: 463, column: 24, scope: !1309)
!1311 = !DILocation(line: 463, column: 28, scope: !1309)
!1312 = !DILocation(line: 463, column: 38, scope: !1309)
!1313 = !DILocation(line: 463, column: 47, scope: !1309)
!1314 = !DILocation(line: 463, column: 41, scope: !1309)
!1315 = !DILocation(line: 463, column: 52, scope: !1309)
!1316 = !DILocation(line: 462, column: 19, scope: !1307)
!1317 = !DILocation(line: 464, column: 25, scope: !1309)
!1318 = !DILocation(line: 464, column: 17, scope: !1309)
!1319 = !DILocation(line: 471, column: 25, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1309, file: !108, line: 465, column: 19)
!1321 = !DILocation(line: 475, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !108, line: 475, column: 21)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !108, line: 475, column: 21)
!1324 = !DILocation(line: 475, column: 21, scope: !1323)
!1325 = !DILocation(line: 476, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !108, line: 476, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !108, line: 476, column: 21)
!1328 = !DILocation(line: 476, column: 21, scope: !1327)
!1329 = !DILocation(line: 477, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !108, line: 477, column: 21)
!1331 = distinct !DILexicalBlock(scope: !1320, file: !108, line: 477, column: 21)
!1332 = !DILocation(line: 477, column: 21, scope: !1331)
!1333 = !DILocation(line: 478, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !108, line: 478, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1320, file: !108, line: 478, column: 21)
!1336 = !DILocation(line: 478, column: 21, scope: !1335)
!1337 = !DILocation(line: 479, column: 21, scope: !1320)
!1338 = !DILocation(line: 403, column: 21, scope: !1121)
!1339 = !DILocation(line: 492, column: 31, scope: !1130)
!1340 = !DILocation(line: 493, column: 31, scope: !1130)
!1341 = !DILocation(line: 495, column: 31, scope: !1130)
!1342 = !DILocation(line: 496, column: 31, scope: !1130)
!1343 = !DILocation(line: 497, column: 31, scope: !1130)
!1344 = !DILocation(line: 500, column: 15, scope: !1130)
!1345 = !DILocation(line: 502, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !108, line: 501, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 500, column: 15)
!1348 = !DILocation(line: 509, column: 33, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 509, column: 15)
!1350 = !DILocation(line: 0, scope: !1130)
!1351 = !DILocation(line: 514, column: 15, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 513, column: 15)
!1353 = !DILocation(line: 518, column: 15, scope: !1130)
!1354 = !DILocation(line: 526, column: 26, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 526, column: 15)
!1356 = !DILocation(line: 526, column: 15, scope: !1130)
!1357 = !DILocation(line: 526, column: 40, scope: !1355)
!1358 = !DILocation(line: 526, column: 47, scope: !1355)
!1359 = !DILocation(line: 530, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 530, column: 15)
!1361 = !DILocation(line: 526, column: 18, scope: !1355)
!1362 = !DILocation(line: 526, column: 65, scope: !1355)
!1363 = !DILocation(line: 530, column: 15, scope: !1130)
!1364 = !DILocation(line: 535, column: 11, scope: !1130)
!1365 = !DILocation(line: 549, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 548, column: 15)
!1367 = !DILocation(line: 556, column: 15, scope: !1130)
!1368 = !DILocation(line: 558, column: 19, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !108, line: 557, column: 13)
!1370 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 556, column: 15)
!1371 = !DILocation(line: 561, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !108, line: 561, column: 19)
!1373 = !DILocation(line: 561, column: 35, scope: !1372)
!1374 = !DILocation(line: 561, column: 30, scope: !1372)
!1375 = !DILocation(line: 570, column: 15, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !108, line: 570, column: 15)
!1377 = distinct !DILexicalBlock(scope: !1369, file: !108, line: 570, column: 15)
!1378 = !DILocation(line: 570, column: 15, scope: !1377)
!1379 = !DILocation(line: 571, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !108, line: 571, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1369, file: !108, line: 571, column: 15)
!1382 = !DILocation(line: 571, column: 15, scope: !1381)
!1383 = !DILocation(line: 572, column: 15, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !108, line: 572, column: 15)
!1385 = distinct !DILexicalBlock(scope: !1369, file: !108, line: 572, column: 15)
!1386 = !DILocation(line: 572, column: 15, scope: !1385)
!1387 = !DILocation(line: 574, column: 13, scope: !1369)
!1388 = !DILocation(line: 614, column: 17, scope: !1129)
!1389 = !DILocation(line: 610, column: 20, scope: !1129)
!1390 = !DILocation(line: 617, column: 29, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1134, file: !108, line: 615, column: 15)
!1392 = !{!1393, !1393, i64 0}
!1393 = !{!"short", !665, i64 0}
!1394 = !DILocation(line: 617, column: 27, scope: !1391)
!1395 = !DILocation(line: 612, column: 18, scope: !1129)
!1396 = !DILocation(line: 618, column: 15, scope: !1391)
!1397 = !DILocation(line: 621, column: 17, scope: !1133)
!1398 = !DILocation(line: 622, column: 17, scope: !1133)
!1399 = !DILocation(line: 626, column: 29, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1133, file: !108, line: 626, column: 21)
!1401 = !DILocation(line: 626, column: 21, scope: !1133)
!1402 = !DILocation(line: 627, column: 29, scope: !1400)
!1403 = !DILocation(line: 627, column: 19, scope: !1400)
!1404 = !DILocation(line: 0, scope: !1247)
!1405 = !DILocation(line: 629, column: 17, scope: !1133)
!1406 = !DILocation(line: 624, column: 19, scope: !1133)
!1407 = !DILocation(line: 625, column: 27, scope: !1133)
!1408 = !DILocation(line: 631, column: 21, scope: !1151)
!1409 = !DILocation(line: 632, column: 56, scope: !1151)
!1410 = !DILocation(line: 632, column: 50, scope: !1151)
!1411 = !DILocation(line: 633, column: 53, scope: !1151)
!1412 = !DILocation(line: 621, column: 27, scope: !1133)
!1413 = !DILocation(line: 631, column: 29, scope: !1151)
!1414 = !DILocation(line: 632, column: 36, scope: !1151)
!1415 = !DILocation(line: 632, column: 28, scope: !1151)
!1416 = !DILocation(line: 634, column: 25, scope: !1151)
!1417 = !DILocation(line: 644, column: 38, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1158, file: !108, line: 642, column: 23)
!1419 = !DILocation(line: 644, column: 48, scope: !1418)
!1420 = !DILocation(line: 644, column: 51, scope: !1418)
!1421 = !DILocation(line: 644, column: 25, scope: !1418)
!1422 = !DILocation(line: 645, column: 28, scope: !1418)
!1423 = !DILocation(line: 644, column: 34, scope: !1418)
!1424 = distinct !{!1424, !1421, !1422}
!1425 = !DILocation(line: 658, column: 43, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !108, line: 658, column: 29)
!1427 = distinct !DILexicalBlock(scope: !1155, file: !108, line: 658, column: 29)
!1428 = !DILocation(line: 655, column: 29, scope: !1156)
!1429 = !DILocation(line: 657, column: 36, scope: !1155)
!1430 = !DILocation(line: 659, column: 49, scope: !1426)
!1431 = !DILocation(line: 659, column: 39, scope: !1426)
!1432 = !DILocation(line: 659, column: 31, scope: !1426)
!1433 = !DILocation(line: 658, column: 53, scope: !1426)
!1434 = !DILocation(line: 658, column: 29, scope: !1427)
!1435 = distinct !{!1435, !1434, !1436}
!1436 = !DILocation(line: 667, column: 33, scope: !1427)
!1437 = !DILocation(line: 674, column: 19, scope: !1133)
!1438 = !DILocation(line: 670, column: 41, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1157, file: !108, line: 670, column: 29)
!1440 = !DILocation(line: 670, column: 31, scope: !1439)
!1441 = !DILocation(line: 670, column: 29, scope: !1157)
!1442 = !DILocation(line: 672, column: 27, scope: !1157)
!1443 = !DILocation(line: 675, column: 26, scope: !1133)
!1444 = !DILocation(line: 675, column: 24, scope: !1133)
!1445 = !DILocation(line: 674, column: 19, scope: !1151)
!1446 = distinct !{!1446, !1405, !1447}
!1447 = !DILocation(line: 675, column: 44, scope: !1133)
!1448 = !DILocation(line: 676, column: 15, scope: !1134)
!1449 = !DILocation(line: 0, scope: !1400)
!1450 = !DILocation(line: 0, scope: !1133)
!1451 = !DILocation(line: 678, column: 40, scope: !1129)
!1452 = !DILocation(line: 680, column: 19, scope: !1163)
!1453 = !DILocation(line: 680, column: 45, scope: !1163)
!1454 = !DILocation(line: 680, column: 23, scope: !1163)
!1455 = !DILocation(line: 684, column: 33, scope: !1162)
!1456 = !DILocation(line: 684, column: 24, scope: !1162)
!1457 = !DILocation(line: 686, column: 17, scope: !1162)
!1458 = !DILocation(line: 0, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !108, line: 687, column: 19)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !108, line: 686, column: 17)
!1461 = distinct !DILexicalBlock(scope: !1162, file: !108, line: 686, column: 17)
!1462 = !DILocation(line: 0, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !108, line: 703, column: 21)
!1464 = !DILocation(line: 0, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !108, line: 696, column: 23)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !108, line: 695, column: 30)
!1467 = distinct !DILexicalBlock(scope: !1459, file: !108, line: 688, column: 25)
!1468 = !DILocation(line: 688, column: 43, scope: !1467)
!1469 = !DILocation(line: 690, column: 25, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !108, line: 690, column: 25)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !108, line: 689, column: 23)
!1472 = !DILocation(line: 690, column: 25, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !108, line: 690, column: 25)
!1474 = !DILocation(line: 690, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !108, line: 690, column: 25)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !108, line: 690, column: 25)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !108, line: 690, column: 25)
!1478 = !DILocation(line: 690, column: 25, scope: !1476)
!1479 = !DILocation(line: 690, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !108, line: 690, column: 25)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !108, line: 690, column: 25)
!1482 = !DILocation(line: 690, column: 25, scope: !1481)
!1483 = !DILocation(line: 690, column: 25, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !108, line: 690, column: 25)
!1485 = distinct !DILexicalBlock(scope: !1477, file: !108, line: 690, column: 25)
!1486 = !DILocation(line: 690, column: 25, scope: !1485)
!1487 = !DILocation(line: 690, column: 25, scope: !1477)
!1488 = !DILocation(line: 690, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !108, line: 690, column: 25)
!1490 = distinct !DILexicalBlock(scope: !1470, file: !108, line: 690, column: 25)
!1491 = !DILocation(line: 690, column: 25, scope: !1490)
!1492 = !DILocation(line: 691, column: 25, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !108, line: 691, column: 25)
!1494 = distinct !DILexicalBlock(scope: !1471, file: !108, line: 691, column: 25)
!1495 = !DILocation(line: 691, column: 25, scope: !1494)
!1496 = !DILocation(line: 692, column: 25, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !108, line: 692, column: 25)
!1498 = distinct !DILexicalBlock(scope: !1471, file: !108, line: 692, column: 25)
!1499 = !DILocation(line: 692, column: 25, scope: !1498)
!1500 = !DILocation(line: 693, column: 38, scope: !1471)
!1501 = !DILocation(line: 693, column: 33, scope: !1471)
!1502 = !DILocation(line: 694, column: 23, scope: !1471)
!1503 = !DILocation(line: 695, column: 30, scope: !1466)
!1504 = !DILocation(line: 695, column: 30, scope: !1467)
!1505 = !DILocation(line: 697, column: 25, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !108, line: 697, column: 25)
!1507 = distinct !DILexicalBlock(scope: !1465, file: !108, line: 697, column: 25)
!1508 = !DILocation(line: 697, column: 25, scope: !1507)
!1509 = !DILocation(line: 699, column: 23, scope: !1465)
!1510 = !DILocation(line: 0, scope: !1498)
!1511 = !DILocation(line: 0, scope: !1471)
!1512 = !DILocation(line: 0, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1247, file: !108, line: 418, column: 9)
!1514 = !DILocation(line: 0, scope: !1470)
!1515 = !DILocation(line: 700, column: 35, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1459, file: !108, line: 700, column: 25)
!1517 = !DILocation(line: 700, column: 30, scope: !1516)
!1518 = !DILocation(line: 700, column: 25, scope: !1459)
!1519 = !DILocation(line: 702, column: 21, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !108, line: 702, column: 21)
!1521 = distinct !DILexicalBlock(scope: !1459, file: !108, line: 702, column: 21)
!1522 = !DILocation(line: 702, column: 21, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !108, line: 702, column: 21)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !108, line: 702, column: 21)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !108, line: 702, column: 21)
!1526 = !DILocation(line: 702, column: 21, scope: !1524)
!1527 = !DILocation(line: 702, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !108, line: 702, column: 21)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !108, line: 702, column: 21)
!1530 = !DILocation(line: 702, column: 21, scope: !1529)
!1531 = !DILocation(line: 702, column: 21, scope: !1525)
!1532 = !DILocation(line: 0, scope: !1507)
!1533 = !DILocation(line: 703, column: 21, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1463, file: !108, line: 703, column: 21)
!1535 = !DILocation(line: 703, column: 21, scope: !1463)
!1536 = !DILocation(line: 704, column: 25, scope: !1459)
!1537 = !DILocation(line: 686, column: 17, scope: !1460)
!1538 = distinct !{!1538, !1539, !1540}
!1539 = !DILocation(line: 686, column: 17, scope: !1461)
!1540 = !DILocation(line: 705, column: 19, scope: !1461)
!1541 = !DILocation(line: 0, scope: !1123)
!1542 = !DILocation(line: 416, column: 30, scope: !1247)
!1543 = !DILocation(line: 712, column: 34, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 712, column: 11)
!1545 = !DILocation(line: 714, column: 14, scope: !1544)
!1546 = !DILocation(line: 715, column: 14, scope: !1544)
!1547 = !DILocation(line: 715, column: 35, scope: !1544)
!1548 = !DILocation(line: 715, column: 17, scope: !1544)
!1549 = !DILocation(line: 715, column: 47, scope: !1544)
!1550 = !DILocation(line: 715, column: 65, scope: !1544)
!1551 = !DILocation(line: 716, column: 15, scope: !1544)
!1552 = !DILocation(line: 716, column: 11, scope: !1544)
!1553 = !DILocation(line: 712, column: 11, scope: !1121)
!1554 = !DILocation(line: 400, column: 10, scope: !1123)
!1555 = !DILocation(line: 0, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !108, line: 519, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1130, file: !108, line: 518, column: 15)
!1558 = !DILocation(line: 720, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 720, column: 7)
!1560 = !DILocation(line: 720, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !108, line: 720, column: 7)
!1562 = !DILocation(line: 720, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !108, line: 720, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !108, line: 720, column: 7)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !108, line: 720, column: 7)
!1566 = !DILocation(line: 720, column: 7, scope: !1564)
!1567 = !DILocation(line: 720, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !108, line: 720, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !108, line: 720, column: 7)
!1570 = !DILocation(line: 720, column: 7, scope: !1569)
!1571 = !DILocation(line: 720, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !108, line: 720, column: 7)
!1573 = distinct !DILexicalBlock(scope: !1565, file: !108, line: 720, column: 7)
!1574 = !DILocation(line: 720, column: 7, scope: !1573)
!1575 = !DILocation(line: 720, column: 7, scope: !1565)
!1576 = !DILocation(line: 720, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !108, line: 720, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1559, file: !108, line: 720, column: 7)
!1579 = !DILocation(line: 720, column: 7, scope: !1578)
!1580 = !DILocation(line: 723, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !108, line: 723, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 723, column: 7)
!1583 = !DILocation(line: 424, column: 9, scope: !1121)
!1584 = !DILocation(line: 723, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !108, line: 723, column: 7)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !108, line: 723, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !108, line: 723, column: 7)
!1588 = !DILocation(line: 723, column: 7, scope: !1586)
!1589 = !DILocation(line: 723, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !108, line: 723, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !108, line: 723, column: 7)
!1592 = !DILocation(line: 723, column: 7, scope: !1591)
!1593 = !DILocation(line: 723, column: 7, scope: !1587)
!1594 = !DILocation(line: 724, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !108, line: 724, column: 7)
!1596 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 724, column: 7)
!1597 = !DILocation(line: 724, column: 7, scope: !1596)
!1598 = !DILocation(line: 726, column: 13, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1121, file: !108, line: 726, column: 11)
!1600 = !DILocation(line: 726, column: 11, scope: !1121)
!1601 = !DILocation(line: 728, column: 5, scope: !1122)
!1602 = !DILocation(line: 400, column: 75, scope: !1122)
!1603 = !DILocation(line: 400, column: 3, scope: !1122)
!1604 = distinct !{!1604, !1241, !1605}
!1605 = !DILocation(line: 728, column: 5, scope: !1123)
!1606 = !DILocation(line: 730, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 730, column: 7)
!1608 = !DILocation(line: 730, column: 16, scope: !1607)
!1609 = !DILocation(line: 738, column: 51, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 738, column: 7)
!1611 = !DILocation(line: 739, column: 10, scope: !1610)
!1612 = !DILocation(line: 741, column: 11, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !108, line: 741, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !108, line: 740, column: 5)
!1615 = !DILocation(line: 741, column: 11, scope: !1614)
!1616 = !DILocation(line: 742, column: 16, scope: !1613)
!1617 = !DILocation(line: 742, column: 9, scope: !1613)
!1618 = !DILocation(line: 746, column: 18, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !108, line: 746, column: 16)
!1620 = !DILocation(line: 746, column: 32, scope: !1619)
!1621 = !DILocation(line: 746, column: 29, scope: !1619)
!1622 = !DILocation(line: 755, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 755, column: 7)
!1624 = !DILocation(line: 755, column: 20, scope: !1623)
!1625 = !DILocation(line: 756, column: 12, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !108, line: 756, column: 5)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !108, line: 756, column: 5)
!1628 = !DILocation(line: 756, column: 5, scope: !1627)
!1629 = !DILocation(line: 757, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !108, line: 757, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !108, line: 757, column: 7)
!1632 = !DILocation(line: 757, column: 7, scope: !1631)
!1633 = !DILocation(line: 756, column: 39, scope: !1626)
!1634 = distinct !{!1634, !1628, !1635}
!1635 = !DILocation(line: 757, column: 7, scope: !1627)
!1636 = !DILocation(line: 759, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 759, column: 7)
!1638 = !DILocation(line: 759, column: 7, scope: !1094)
!1639 = !DILocation(line: 760, column: 5, scope: !1637)
!1640 = !DILocation(line: 760, column: 17, scope: !1637)
!1641 = !DILocation(line: 766, column: 21, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1094, file: !108, line: 766, column: 7)
!1643 = !DILocation(line: 766, column: 54, scope: !1642)
!1644 = !DILocation(line: 766, column: 51, scope: !1642)
!1645 = !DILocation(line: 770, column: 42, scope: !1094)
!1646 = !DILocation(line: 768, column: 10, scope: !1094)
!1647 = !DILocation(line: 768, column: 3, scope: !1094)
!1648 = !DILocation(line: 772, column: 1, scope: !1094)
!1649 = distinct !DISubprogram(name: "gettext_quote", scope: !108, file: !108, line: 207, type: !1650, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!37, !37, !12}
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DILocalVariable(name: "msgid", arg: 1, scope: !1649, file: !108, line: 207, type: !37)
!1654 = !DILocalVariable(name: "s", arg: 2, scope: !1649, file: !108, line: 207, type: !12)
!1655 = !DILocalVariable(name: "translation", scope: !1649, file: !108, line: 209, type: !37)
!1656 = !DILocalVariable(name: "locale_code", scope: !1649, file: !108, line: 210, type: !37)
!1657 = !DILocation(line: 207, column: 28, scope: !1649)
!1658 = !DILocation(line: 207, column: 54, scope: !1649)
!1659 = !DILocation(line: 209, column: 29, scope: !1649)
!1660 = !DILocation(line: 209, column: 15, scope: !1649)
!1661 = !DILocation(line: 212, column: 19, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1649, file: !108, line: 212, column: 7)
!1663 = !DILocation(line: 212, column: 7, scope: !1649)
!1664 = !DILocation(line: 233, column: 17, scope: !1649)
!1665 = !DILocation(line: 210, column: 15, scope: !1649)
!1666 = !DILocalVariable(name: "s1", arg: 1, scope: !1667, file: !1668, line: 160, type: !37)
!1667 = distinct !DISubprogram(name: "strcaseeq0", scope: !1668, file: !1668, line: 160, type: !1669, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1671)
!1668 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!1671 = !{!1666, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1672 = !DILocalVariable(name: "s2", arg: 2, scope: !1667, file: !1668, line: 160, type: !37)
!1673 = !DILocalVariable(name: "s20", arg: 3, scope: !1667, file: !1668, line: 160, type: !28)
!1674 = !DILocalVariable(name: "s21", arg: 4, scope: !1667, file: !1668, line: 160, type: !28)
!1675 = !DILocalVariable(name: "s22", arg: 5, scope: !1667, file: !1668, line: 160, type: !28)
!1676 = !DILocalVariable(name: "s23", arg: 6, scope: !1667, file: !1668, line: 160, type: !28)
!1677 = !DILocalVariable(name: "s24", arg: 7, scope: !1667, file: !1668, line: 160, type: !28)
!1678 = !DILocalVariable(name: "s25", arg: 8, scope: !1667, file: !1668, line: 160, type: !28)
!1679 = !DILocalVariable(name: "s26", arg: 9, scope: !1667, file: !1668, line: 160, type: !28)
!1680 = !DILocalVariable(name: "s27", arg: 10, scope: !1667, file: !1668, line: 160, type: !28)
!1681 = !DILocalVariable(name: "s28", arg: 11, scope: !1667, file: !1668, line: 160, type: !28)
!1682 = !DILocation(line: 160, column: 25, scope: !1667, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 234, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1649, file: !108, line: 234, column: 7)
!1685 = !DILocation(line: 160, column: 41, scope: !1667, inlinedAt: !1683)
!1686 = !DILocation(line: 160, column: 50, scope: !1667, inlinedAt: !1683)
!1687 = !DILocation(line: 160, column: 60, scope: !1667, inlinedAt: !1683)
!1688 = !DILocation(line: 160, column: 70, scope: !1667, inlinedAt: !1683)
!1689 = !DILocation(line: 160, column: 80, scope: !1667, inlinedAt: !1683)
!1690 = !DILocation(line: 160, column: 90, scope: !1667, inlinedAt: !1683)
!1691 = !DILocation(line: 160, column: 100, scope: !1667, inlinedAt: !1683)
!1692 = !DILocation(line: 160, column: 110, scope: !1667, inlinedAt: !1683)
!1693 = !DILocation(line: 160, column: 120, scope: !1667, inlinedAt: !1683)
!1694 = !DILocation(line: 160, column: 130, scope: !1667, inlinedAt: !1683)
!1695 = !DILocation(line: 162, column: 7, scope: !1696, inlinedAt: !1683)
!1696 = distinct !DILexicalBlock(scope: !1667, file: !1668, line: 162, column: 7)
!1697 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !1668, line: 146, type: !37)
!1698 = distinct !DISubprogram(name: "strcaseeq1", scope: !1668, file: !1668, line: 146, type: !1699, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28, !28}
!1701 = !{!1697, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1702 = !DILocalVariable(name: "s2", arg: 2, scope: !1698, file: !1668, line: 146, type: !37)
!1703 = !DILocalVariable(name: "s21", arg: 3, scope: !1698, file: !1668, line: 146, type: !28)
!1704 = !DILocalVariable(name: "s22", arg: 4, scope: !1698, file: !1668, line: 146, type: !28)
!1705 = !DILocalVariable(name: "s23", arg: 5, scope: !1698, file: !1668, line: 146, type: !28)
!1706 = !DILocalVariable(name: "s24", arg: 6, scope: !1698, file: !1668, line: 146, type: !28)
!1707 = !DILocalVariable(name: "s25", arg: 7, scope: !1698, file: !1668, line: 146, type: !28)
!1708 = !DILocalVariable(name: "s26", arg: 8, scope: !1698, file: !1668, line: 146, type: !28)
!1709 = !DILocalVariable(name: "s27", arg: 9, scope: !1698, file: !1668, line: 146, type: !28)
!1710 = !DILocalVariable(name: "s28", arg: 10, scope: !1698, file: !1668, line: 146, type: !28)
!1711 = !DILocation(line: 146, column: 25, scope: !1698, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 167, column: 16, scope: !1713, inlinedAt: !1683)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !1668, line: 164, column: 11)
!1714 = distinct !DILexicalBlock(scope: !1696, file: !1668, line: 163, column: 5)
!1715 = !DILocation(line: 146, column: 41, scope: !1698, inlinedAt: !1712)
!1716 = !DILocation(line: 146, column: 50, scope: !1698, inlinedAt: !1712)
!1717 = !DILocation(line: 146, column: 60, scope: !1698, inlinedAt: !1712)
!1718 = !DILocation(line: 146, column: 70, scope: !1698, inlinedAt: !1712)
!1719 = !DILocation(line: 146, column: 80, scope: !1698, inlinedAt: !1712)
!1720 = !DILocation(line: 146, column: 90, scope: !1698, inlinedAt: !1712)
!1721 = !DILocation(line: 146, column: 100, scope: !1698, inlinedAt: !1712)
!1722 = !DILocation(line: 146, column: 110, scope: !1698, inlinedAt: !1712)
!1723 = !DILocation(line: 146, column: 120, scope: !1698, inlinedAt: !1712)
!1724 = !DILocation(line: 148, column: 7, scope: !1725, inlinedAt: !1712)
!1725 = distinct !DILexicalBlock(scope: !1698, file: !1668, line: 148, column: 7)
!1726 = !DILocalVariable(name: "s1", arg: 1, scope: !1727, file: !1668, line: 132, type: !37)
!1727 = distinct !DISubprogram(name: "strcaseeq2", scope: !1668, file: !1668, line: 132, type: !1728, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28}
!1730 = !{!1726, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1731 = !DILocalVariable(name: "s2", arg: 2, scope: !1727, file: !1668, line: 132, type: !37)
!1732 = !DILocalVariable(name: "s22", arg: 3, scope: !1727, file: !1668, line: 132, type: !28)
!1733 = !DILocalVariable(name: "s23", arg: 4, scope: !1727, file: !1668, line: 132, type: !28)
!1734 = !DILocalVariable(name: "s24", arg: 5, scope: !1727, file: !1668, line: 132, type: !28)
!1735 = !DILocalVariable(name: "s25", arg: 6, scope: !1727, file: !1668, line: 132, type: !28)
!1736 = !DILocalVariable(name: "s26", arg: 7, scope: !1727, file: !1668, line: 132, type: !28)
!1737 = !DILocalVariable(name: "s27", arg: 8, scope: !1727, file: !1668, line: 132, type: !28)
!1738 = !DILocalVariable(name: "s28", arg: 9, scope: !1727, file: !1668, line: 132, type: !28)
!1739 = !DILocation(line: 132, column: 25, scope: !1727, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 153, column: 16, scope: !1741, inlinedAt: !1712)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1668, line: 150, column: 11)
!1742 = distinct !DILexicalBlock(scope: !1725, file: !1668, line: 149, column: 5)
!1743 = !DILocation(line: 132, column: 41, scope: !1727, inlinedAt: !1740)
!1744 = !DILocation(line: 132, column: 50, scope: !1727, inlinedAt: !1740)
!1745 = !DILocation(line: 132, column: 60, scope: !1727, inlinedAt: !1740)
!1746 = !DILocation(line: 132, column: 70, scope: !1727, inlinedAt: !1740)
!1747 = !DILocation(line: 132, column: 80, scope: !1727, inlinedAt: !1740)
!1748 = !DILocation(line: 132, column: 90, scope: !1727, inlinedAt: !1740)
!1749 = !DILocation(line: 132, column: 100, scope: !1727, inlinedAt: !1740)
!1750 = !DILocation(line: 132, column: 110, scope: !1727, inlinedAt: !1740)
!1751 = !DILocation(line: 134, column: 7, scope: !1752, inlinedAt: !1740)
!1752 = distinct !DILexicalBlock(scope: !1727, file: !1668, line: 134, column: 7)
!1753 = !DILocalVariable(name: "s1", arg: 1, scope: !1754, file: !1668, line: 118, type: !37)
!1754 = distinct !DISubprogram(name: "strcaseeq3", scope: !1668, file: !1668, line: 118, type: !1755, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28}
!1757 = !{!1753, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1758 = !DILocalVariable(name: "s2", arg: 2, scope: !1754, file: !1668, line: 118, type: !37)
!1759 = !DILocalVariable(name: "s23", arg: 3, scope: !1754, file: !1668, line: 118, type: !28)
!1760 = !DILocalVariable(name: "s24", arg: 4, scope: !1754, file: !1668, line: 118, type: !28)
!1761 = !DILocalVariable(name: "s25", arg: 5, scope: !1754, file: !1668, line: 118, type: !28)
!1762 = !DILocalVariable(name: "s26", arg: 6, scope: !1754, file: !1668, line: 118, type: !28)
!1763 = !DILocalVariable(name: "s27", arg: 7, scope: !1754, file: !1668, line: 118, type: !28)
!1764 = !DILocalVariable(name: "s28", arg: 8, scope: !1754, file: !1668, line: 118, type: !28)
!1765 = !DILocation(line: 118, column: 25, scope: !1754, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 139, column: 16, scope: !1767, inlinedAt: !1740)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !1668, line: 136, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1752, file: !1668, line: 135, column: 5)
!1769 = !DILocation(line: 118, column: 41, scope: !1754, inlinedAt: !1766)
!1770 = !DILocation(line: 118, column: 50, scope: !1754, inlinedAt: !1766)
!1771 = !DILocation(line: 118, column: 60, scope: !1754, inlinedAt: !1766)
!1772 = !DILocation(line: 118, column: 70, scope: !1754, inlinedAt: !1766)
!1773 = !DILocation(line: 118, column: 80, scope: !1754, inlinedAt: !1766)
!1774 = !DILocation(line: 118, column: 90, scope: !1754, inlinedAt: !1766)
!1775 = !DILocation(line: 118, column: 100, scope: !1754, inlinedAt: !1766)
!1776 = !DILocation(line: 120, column: 7, scope: !1777, inlinedAt: !1766)
!1777 = distinct !DILexicalBlock(scope: !1754, file: !1668, line: 120, column: 7)
!1778 = !DILocation(line: 120, column: 7, scope: !1754, inlinedAt: !1766)
!1779 = !DILocalVariable(name: "s1", arg: 1, scope: !1780, file: !1668, line: 104, type: !37)
!1780 = distinct !DISubprogram(name: "strcaseeq4", scope: !1668, file: !1668, line: 104, type: !1781, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!40, !37, !37, !28, !28, !28, !28, !28}
!1783 = !{!1779, !1784, !1785, !1786, !1787, !1788, !1789}
!1784 = !DILocalVariable(name: "s2", arg: 2, scope: !1780, file: !1668, line: 104, type: !37)
!1785 = !DILocalVariable(name: "s24", arg: 3, scope: !1780, file: !1668, line: 104, type: !28)
!1786 = !DILocalVariable(name: "s25", arg: 4, scope: !1780, file: !1668, line: 104, type: !28)
!1787 = !DILocalVariable(name: "s26", arg: 5, scope: !1780, file: !1668, line: 104, type: !28)
!1788 = !DILocalVariable(name: "s27", arg: 6, scope: !1780, file: !1668, line: 104, type: !28)
!1789 = !DILocalVariable(name: "s28", arg: 7, scope: !1780, file: !1668, line: 104, type: !28)
!1790 = !DILocation(line: 104, column: 25, scope: !1780, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 125, column: 16, scope: !1792, inlinedAt: !1766)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !1668, line: 122, column: 11)
!1793 = distinct !DILexicalBlock(scope: !1777, file: !1668, line: 121, column: 5)
!1794 = !DILocation(line: 104, column: 41, scope: !1780, inlinedAt: !1791)
!1795 = !DILocation(line: 104, column: 50, scope: !1780, inlinedAt: !1791)
!1796 = !DILocation(line: 104, column: 60, scope: !1780, inlinedAt: !1791)
!1797 = !DILocation(line: 104, column: 70, scope: !1780, inlinedAt: !1791)
!1798 = !DILocation(line: 104, column: 80, scope: !1780, inlinedAt: !1791)
!1799 = !DILocation(line: 104, column: 90, scope: !1780, inlinedAt: !1791)
!1800 = !DILocation(line: 106, column: 7, scope: !1801, inlinedAt: !1791)
!1801 = distinct !DILexicalBlock(scope: !1780, file: !1668, line: 106, column: 7)
!1802 = !DILocation(line: 106, column: 7, scope: !1780, inlinedAt: !1791)
!1803 = !DILocalVariable(name: "s1", arg: 1, scope: !1804, file: !1668, line: 90, type: !37)
!1804 = distinct !DISubprogram(name: "strcaseeq5", scope: !1668, file: !1668, line: 90, type: !1805, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!40, !37, !37, !28, !28, !28, !28}
!1807 = !{!1803, !1808, !1809, !1810, !1811, !1812}
!1808 = !DILocalVariable(name: "s2", arg: 2, scope: !1804, file: !1668, line: 90, type: !37)
!1809 = !DILocalVariable(name: "s25", arg: 3, scope: !1804, file: !1668, line: 90, type: !28)
!1810 = !DILocalVariable(name: "s26", arg: 4, scope: !1804, file: !1668, line: 90, type: !28)
!1811 = !DILocalVariable(name: "s27", arg: 5, scope: !1804, file: !1668, line: 90, type: !28)
!1812 = !DILocalVariable(name: "s28", arg: 6, scope: !1804, file: !1668, line: 90, type: !28)
!1813 = !DILocation(line: 90, column: 25, scope: !1804, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 111, column: 16, scope: !1815, inlinedAt: !1791)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !1668, line: 108, column: 11)
!1816 = distinct !DILexicalBlock(scope: !1801, file: !1668, line: 107, column: 5)
!1817 = !DILocation(line: 90, column: 41, scope: !1804, inlinedAt: !1814)
!1818 = !DILocation(line: 90, column: 50, scope: !1804, inlinedAt: !1814)
!1819 = !DILocation(line: 90, column: 60, scope: !1804, inlinedAt: !1814)
!1820 = !DILocation(line: 90, column: 70, scope: !1804, inlinedAt: !1814)
!1821 = !DILocation(line: 90, column: 80, scope: !1804, inlinedAt: !1814)
!1822 = !DILocation(line: 92, column: 7, scope: !1823, inlinedAt: !1814)
!1823 = distinct !DILexicalBlock(scope: !1804, file: !1668, line: 92, column: 7)
!1824 = !DILocation(line: 92, column: 7, scope: !1804, inlinedAt: !1814)
!1825 = !DILocation(line: 235, column: 12, scope: !1684)
!1826 = !DILocation(line: 235, column: 21, scope: !1684)
!1827 = !DILocation(line: 235, column: 5, scope: !1684)
!1828 = !DILocation(line: 146, column: 25, scope: !1698, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 167, column: 16, scope: !1713, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 236, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1649, file: !108, line: 236, column: 7)
!1832 = !DILocation(line: 146, column: 41, scope: !1698, inlinedAt: !1829)
!1833 = !DILocation(line: 146, column: 50, scope: !1698, inlinedAt: !1829)
!1834 = !DILocation(line: 146, column: 60, scope: !1698, inlinedAt: !1829)
!1835 = !DILocation(line: 146, column: 70, scope: !1698, inlinedAt: !1829)
!1836 = !DILocation(line: 146, column: 80, scope: !1698, inlinedAt: !1829)
!1837 = !DILocation(line: 146, column: 90, scope: !1698, inlinedAt: !1829)
!1838 = !DILocation(line: 146, column: 100, scope: !1698, inlinedAt: !1829)
!1839 = !DILocation(line: 146, column: 110, scope: !1698, inlinedAt: !1829)
!1840 = !DILocation(line: 146, column: 120, scope: !1698, inlinedAt: !1829)
!1841 = !DILocation(line: 148, column: 7, scope: !1725, inlinedAt: !1829)
!1842 = !DILocation(line: 132, column: 25, scope: !1727, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 153, column: 16, scope: !1741, inlinedAt: !1829)
!1844 = !DILocation(line: 132, column: 41, scope: !1727, inlinedAt: !1843)
!1845 = !DILocation(line: 132, column: 50, scope: !1727, inlinedAt: !1843)
!1846 = !DILocation(line: 132, column: 60, scope: !1727, inlinedAt: !1843)
!1847 = !DILocation(line: 132, column: 70, scope: !1727, inlinedAt: !1843)
!1848 = !DILocation(line: 132, column: 80, scope: !1727, inlinedAt: !1843)
!1849 = !DILocation(line: 132, column: 90, scope: !1727, inlinedAt: !1843)
!1850 = !DILocation(line: 132, column: 100, scope: !1727, inlinedAt: !1843)
!1851 = !DILocation(line: 132, column: 110, scope: !1727, inlinedAt: !1843)
!1852 = !DILocation(line: 134, column: 7, scope: !1752, inlinedAt: !1843)
!1853 = !DILocation(line: 134, column: 7, scope: !1727, inlinedAt: !1843)
!1854 = !DILocation(line: 118, column: 25, scope: !1754, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 139, column: 16, scope: !1767, inlinedAt: !1843)
!1856 = !DILocation(line: 118, column: 41, scope: !1754, inlinedAt: !1855)
!1857 = !DILocation(line: 118, column: 50, scope: !1754, inlinedAt: !1855)
!1858 = !DILocation(line: 118, column: 60, scope: !1754, inlinedAt: !1855)
!1859 = !DILocation(line: 118, column: 70, scope: !1754, inlinedAt: !1855)
!1860 = !DILocation(line: 118, column: 80, scope: !1754, inlinedAt: !1855)
!1861 = !DILocation(line: 118, column: 90, scope: !1754, inlinedAt: !1855)
!1862 = !DILocation(line: 118, column: 100, scope: !1754, inlinedAt: !1855)
!1863 = !DILocation(line: 120, column: 7, scope: !1777, inlinedAt: !1855)
!1864 = !DILocation(line: 120, column: 7, scope: !1754, inlinedAt: !1855)
!1865 = !DILocation(line: 104, column: 25, scope: !1780, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 125, column: 16, scope: !1792, inlinedAt: !1855)
!1867 = !DILocation(line: 104, column: 41, scope: !1780, inlinedAt: !1866)
!1868 = !DILocation(line: 104, column: 50, scope: !1780, inlinedAt: !1866)
!1869 = !DILocation(line: 104, column: 60, scope: !1780, inlinedAt: !1866)
!1870 = !DILocation(line: 104, column: 70, scope: !1780, inlinedAt: !1866)
!1871 = !DILocation(line: 104, column: 80, scope: !1780, inlinedAt: !1866)
!1872 = !DILocation(line: 104, column: 90, scope: !1780, inlinedAt: !1866)
!1873 = !DILocation(line: 106, column: 7, scope: !1801, inlinedAt: !1866)
!1874 = !DILocation(line: 106, column: 7, scope: !1780, inlinedAt: !1866)
!1875 = !DILocation(line: 90, column: 25, scope: !1804, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 111, column: 16, scope: !1815, inlinedAt: !1866)
!1877 = !DILocation(line: 90, column: 41, scope: !1804, inlinedAt: !1876)
!1878 = !DILocation(line: 90, column: 50, scope: !1804, inlinedAt: !1876)
!1879 = !DILocation(line: 90, column: 60, scope: !1804, inlinedAt: !1876)
!1880 = !DILocation(line: 90, column: 70, scope: !1804, inlinedAt: !1876)
!1881 = !DILocation(line: 90, column: 80, scope: !1804, inlinedAt: !1876)
!1882 = !DILocation(line: 92, column: 7, scope: !1823, inlinedAt: !1876)
!1883 = !DILocation(line: 92, column: 7, scope: !1804, inlinedAt: !1876)
!1884 = !DILocalVariable(name: "s1", arg: 1, scope: !1885, file: !1668, line: 76, type: !37)
!1885 = distinct !DISubprogram(name: "strcaseeq6", scope: !1668, file: !1668, line: 76, type: !1886, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!40, !37, !37, !28, !28, !28}
!1888 = !{!1884, !1889, !1890, !1891, !1892}
!1889 = !DILocalVariable(name: "s2", arg: 2, scope: !1885, file: !1668, line: 76, type: !37)
!1890 = !DILocalVariable(name: "s26", arg: 3, scope: !1885, file: !1668, line: 76, type: !28)
!1891 = !DILocalVariable(name: "s27", arg: 4, scope: !1885, file: !1668, line: 76, type: !28)
!1892 = !DILocalVariable(name: "s28", arg: 5, scope: !1885, file: !1668, line: 76, type: !28)
!1893 = !DILocation(line: 76, column: 25, scope: !1885, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 97, column: 16, scope: !1895, inlinedAt: !1876)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !1668, line: 94, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1823, file: !1668, line: 93, column: 5)
!1897 = !DILocation(line: 76, column: 41, scope: !1885, inlinedAt: !1894)
!1898 = !DILocation(line: 76, column: 50, scope: !1885, inlinedAt: !1894)
!1899 = !DILocation(line: 76, column: 60, scope: !1885, inlinedAt: !1894)
!1900 = !DILocation(line: 76, column: 70, scope: !1885, inlinedAt: !1894)
!1901 = !DILocation(line: 78, column: 7, scope: !1902, inlinedAt: !1894)
!1902 = distinct !DILexicalBlock(scope: !1885, file: !1668, line: 78, column: 7)
!1903 = !DILocation(line: 78, column: 7, scope: !1885, inlinedAt: !1894)
!1904 = !DILocalVariable(name: "s1", arg: 1, scope: !1905, file: !1668, line: 62, type: !37)
!1905 = distinct !DISubprogram(name: "strcaseeq7", scope: !1668, file: !1668, line: 62, type: !1906, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!40, !37, !37, !28, !28}
!1908 = !{!1904, !1909, !1910, !1911}
!1909 = !DILocalVariable(name: "s2", arg: 2, scope: !1905, file: !1668, line: 62, type: !37)
!1910 = !DILocalVariable(name: "s27", arg: 3, scope: !1905, file: !1668, line: 62, type: !28)
!1911 = !DILocalVariable(name: "s28", arg: 4, scope: !1905, file: !1668, line: 62, type: !28)
!1912 = !DILocation(line: 62, column: 25, scope: !1905, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 83, column: 16, scope: !1914, inlinedAt: !1894)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !1668, line: 80, column: 11)
!1915 = distinct !DILexicalBlock(scope: !1902, file: !1668, line: 79, column: 5)
!1916 = !DILocation(line: 62, column: 41, scope: !1905, inlinedAt: !1913)
!1917 = !DILocation(line: 62, column: 50, scope: !1905, inlinedAt: !1913)
!1918 = !DILocation(line: 62, column: 60, scope: !1905, inlinedAt: !1913)
!1919 = !DILocation(line: 64, column: 7, scope: !1920, inlinedAt: !1913)
!1920 = distinct !DILexicalBlock(scope: !1905, file: !1668, line: 64, column: 7)
!1921 = !DILocation(line: 236, column: 7, scope: !1649)
!1922 = !DILocation(line: 237, column: 12, scope: !1831)
!1923 = !DILocation(line: 237, column: 21, scope: !1831)
!1924 = !DILocation(line: 237, column: 5, scope: !1831)
!1925 = !DILocation(line: 239, column: 13, scope: !1649)
!1926 = !DILocation(line: 239, column: 11, scope: !1649)
!1927 = !DILocation(line: 239, column: 3, scope: !1649)
!1928 = !DILocation(line: 0, scope: !1649)
!1929 = !DILocation(line: 240, column: 1, scope: !1649)
!1930 = distinct !DISubprogram(name: "quotearg_alloc", scope: !108, file: !108, line: 799, type: !1931, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!27, !37, !102, !966}
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "arg", arg: 1, scope: !1930, file: !108, line: 799, type: !37)
!1935 = !DILocalVariable(name: "argsize", arg: 2, scope: !1930, file: !108, line: 799, type: !102)
!1936 = !DILocalVariable(name: "o", arg: 3, scope: !1930, file: !108, line: 800, type: !966)
!1937 = !DILocation(line: 799, column: 29, scope: !1930)
!1938 = !DILocation(line: 799, column: 41, scope: !1930)
!1939 = !DILocation(line: 800, column: 47, scope: !1930)
!1940 = !DILocalVariable(name: "arg", arg: 1, scope: !1941, file: !108, line: 812, type: !37)
!1941 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !108, file: !108, line: 812, type: !1942, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!27, !37, !102, !209, !966}
!1944 = !{!1940, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1945 = !DILocalVariable(name: "argsize", arg: 2, scope: !1941, file: !108, line: 812, type: !102)
!1946 = !DILocalVariable(name: "size", arg: 3, scope: !1941, file: !108, line: 812, type: !209)
!1947 = !DILocalVariable(name: "o", arg: 4, scope: !1941, file: !108, line: 813, type: !966)
!1948 = !DILocalVariable(name: "p", scope: !1941, file: !108, line: 815, type: !966)
!1949 = !DILocalVariable(name: "e", scope: !1941, file: !108, line: 816, type: !40)
!1950 = !DILocalVariable(name: "flags", scope: !1941, file: !108, line: 818, type: !40)
!1951 = !DILocalVariable(name: "bufsize", scope: !1941, file: !108, line: 819, type: !102)
!1952 = !DILocalVariable(name: "buf", scope: !1941, file: !108, line: 823, type: !27)
!1953 = !DILocation(line: 812, column: 33, scope: !1941, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 802, column: 10, scope: !1930)
!1955 = !DILocation(line: 812, column: 45, scope: !1941, inlinedAt: !1954)
!1956 = !DILocation(line: 812, column: 62, scope: !1941, inlinedAt: !1954)
!1957 = !DILocation(line: 813, column: 51, scope: !1941, inlinedAt: !1954)
!1958 = !DILocation(line: 815, column: 37, scope: !1941, inlinedAt: !1954)
!1959 = !DILocation(line: 815, column: 33, scope: !1941, inlinedAt: !1954)
!1960 = !DILocation(line: 816, column: 11, scope: !1941, inlinedAt: !1954)
!1961 = !DILocation(line: 816, column: 7, scope: !1941, inlinedAt: !1954)
!1962 = !DILocation(line: 818, column: 18, scope: !1941, inlinedAt: !1954)
!1963 = !DILocation(line: 818, column: 24, scope: !1941, inlinedAt: !1954)
!1964 = !DILocation(line: 818, column: 7, scope: !1941, inlinedAt: !1954)
!1965 = !DILocation(line: 819, column: 69, scope: !1941, inlinedAt: !1954)
!1966 = !DILocation(line: 820, column: 53, scope: !1941, inlinedAt: !1954)
!1967 = !DILocation(line: 821, column: 49, scope: !1941, inlinedAt: !1954)
!1968 = !DILocation(line: 822, column: 49, scope: !1941, inlinedAt: !1954)
!1969 = !DILocation(line: 819, column: 20, scope: !1941, inlinedAt: !1954)
!1970 = !DILocation(line: 822, column: 62, scope: !1941, inlinedAt: !1954)
!1971 = !DILocation(line: 819, column: 10, scope: !1941, inlinedAt: !1954)
!1972 = !DILocalVariable(name: "n", arg: 1, scope: !1973, file: !205, line: 216, type: !102)
!1973 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !1974, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!27, !102}
!1976 = !{!1972}
!1977 = !DILocation(line: 216, column: 20, scope: !1973, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 823, column: 15, scope: !1941, inlinedAt: !1954)
!1979 = !DILocation(line: 218, column: 10, scope: !1973, inlinedAt: !1978)
!1980 = !DILocation(line: 823, column: 9, scope: !1941, inlinedAt: !1954)
!1981 = !DILocation(line: 824, column: 60, scope: !1941, inlinedAt: !1954)
!1982 = !DILocation(line: 826, column: 32, scope: !1941, inlinedAt: !1954)
!1983 = !DILocation(line: 826, column: 47, scope: !1941, inlinedAt: !1954)
!1984 = !DILocation(line: 824, column: 3, scope: !1941, inlinedAt: !1954)
!1985 = !DILocation(line: 827, column: 9, scope: !1941, inlinedAt: !1954)
!1986 = !DILocation(line: 802, column: 3, scope: !1930)
!1987 = !DILocation(line: 812, column: 33, scope: !1941)
!1988 = !DILocation(line: 812, column: 45, scope: !1941)
!1989 = !DILocation(line: 812, column: 62, scope: !1941)
!1990 = !DILocation(line: 813, column: 51, scope: !1941)
!1991 = !DILocation(line: 815, column: 37, scope: !1941)
!1992 = !DILocation(line: 815, column: 33, scope: !1941)
!1993 = !DILocation(line: 816, column: 11, scope: !1941)
!1994 = !DILocation(line: 816, column: 7, scope: !1941)
!1995 = !DILocation(line: 818, column: 18, scope: !1941)
!1996 = !DILocation(line: 818, column: 27, scope: !1941)
!1997 = !DILocation(line: 818, column: 24, scope: !1941)
!1998 = !DILocation(line: 818, column: 7, scope: !1941)
!1999 = !DILocation(line: 819, column: 69, scope: !1941)
!2000 = !DILocation(line: 820, column: 53, scope: !1941)
!2001 = !DILocation(line: 821, column: 49, scope: !1941)
!2002 = !DILocation(line: 822, column: 49, scope: !1941)
!2003 = !DILocation(line: 819, column: 20, scope: !1941)
!2004 = !DILocation(line: 822, column: 62, scope: !1941)
!2005 = !DILocation(line: 819, column: 10, scope: !1941)
!2006 = !DILocation(line: 216, column: 20, scope: !1973, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 823, column: 15, scope: !1941)
!2008 = !DILocation(line: 218, column: 10, scope: !1973, inlinedAt: !2007)
!2009 = !DILocation(line: 823, column: 9, scope: !1941)
!2010 = !DILocation(line: 824, column: 60, scope: !1941)
!2011 = !DILocation(line: 826, column: 32, scope: !1941)
!2012 = !DILocation(line: 826, column: 47, scope: !1941)
!2013 = !DILocation(line: 824, column: 3, scope: !1941)
!2014 = !DILocation(line: 827, column: 9, scope: !1941)
!2015 = !DILocation(line: 828, column: 7, scope: !1941)
!2016 = !DILocation(line: 829, column: 11, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1941, file: !108, line: 828, column: 7)
!2018 = !{!2019, !2019, i64 0}
!2019 = !{!"long", !665, i64 0}
!2020 = !DILocation(line: 829, column: 5, scope: !2017)
!2021 = !DILocation(line: 830, column: 3, scope: !1941)
!2022 = distinct !DISubprogram(name: "quotearg_free", scope: !108, file: !108, line: 848, type: !873, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2023)
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "sv", scope: !2022, file: !108, line: 850, type: !134)
!2025 = !DILocalVariable(name: "i", scope: !2022, file: !108, line: 851, type: !40)
!2026 = !DILocation(line: 850, column: 24, scope: !2022)
!2027 = !DILocation(line: 850, column: 19, scope: !2022)
!2028 = !DILocation(line: 851, column: 7, scope: !2022)
!2029 = !DILocation(line: 852, column: 19, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !108, line: 852, column: 3)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !108, line: 852, column: 3)
!2032 = !DILocation(line: 852, column: 17, scope: !2030)
!2033 = !DILocation(line: 852, column: 3, scope: !2031)
!2034 = !DILocation(line: 853, column: 17, scope: !2030)
!2035 = !{!2036, !664, i64 8}
!2036 = !{!"slotvec", !2019, i64 0, !664, i64 8}
!2037 = !DILocation(line: 853, column: 5, scope: !2030)
!2038 = !DILocation(line: 852, column: 28, scope: !2030)
!2039 = distinct !{!2039, !2033, !2040}
!2040 = !DILocation(line: 853, column: 20, scope: !2031)
!2041 = !DILocation(line: 854, column: 13, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2022, file: !108, line: 854, column: 7)
!2043 = !DILocation(line: 854, column: 17, scope: !2042)
!2044 = !DILocation(line: 854, column: 7, scope: !2022)
!2045 = !DILocation(line: 856, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !108, line: 855, column: 5)
!2047 = !DILocation(line: 857, column: 21, scope: !2046)
!2048 = !{!2036, !2019, i64 0}
!2049 = !DILocation(line: 858, column: 20, scope: !2046)
!2050 = !DILocation(line: 859, column: 5, scope: !2046)
!2051 = !DILocation(line: 860, column: 10, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2022, file: !108, line: 860, column: 7)
!2053 = !DILocation(line: 860, column: 7, scope: !2022)
!2054 = !DILocation(line: 862, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !108, line: 861, column: 5)
!2056 = !DILocation(line: 862, column: 7, scope: !2055)
!2057 = !DILocation(line: 863, column: 15, scope: !2055)
!2058 = !DILocation(line: 864, column: 5, scope: !2055)
!2059 = !DILocation(line: 865, column: 10, scope: !2022)
!2060 = !DILocation(line: 866, column: 1, scope: !2022)
!2061 = distinct !DISubprogram(name: "quotearg_n", scope: !108, file: !108, line: 931, type: !2062, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!27, !40, !37}
!2064 = !{!2065, !2066}
!2065 = !DILocalVariable(name: "n", arg: 1, scope: !2061, file: !108, line: 931, type: !40)
!2066 = !DILocalVariable(name: "arg", arg: 2, scope: !2061, file: !108, line: 931, type: !37)
!2067 = !DILocation(line: 931, column: 17, scope: !2061)
!2068 = !DILocation(line: 931, column: 32, scope: !2061)
!2069 = !DILocation(line: 933, column: 10, scope: !2061)
!2070 = !DILocation(line: 933, column: 3, scope: !2061)
!2071 = distinct !DISubprogram(name: "quotearg_n_options", scope: !108, file: !108, line: 877, type: !2072, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!27, !40, !37, !102, !966}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2084, !2085, !2087, !2088, !2089}
!2075 = !DILocalVariable(name: "n", arg: 1, scope: !2071, file: !108, line: 877, type: !40)
!2076 = !DILocalVariable(name: "arg", arg: 2, scope: !2071, file: !108, line: 877, type: !37)
!2077 = !DILocalVariable(name: "argsize", arg: 3, scope: !2071, file: !108, line: 877, type: !102)
!2078 = !DILocalVariable(name: "options", arg: 4, scope: !2071, file: !108, line: 878, type: !966)
!2079 = !DILocalVariable(name: "e", scope: !2071, file: !108, line: 880, type: !40)
!2080 = !DILocalVariable(name: "sv", scope: !2071, file: !108, line: 882, type: !134)
!2081 = !DILocalVariable(name: "preallocated", scope: !2082, file: !108, line: 889, type: !60)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !108, line: 888, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2071, file: !108, line: 887, column: 7)
!2084 = !DILocalVariable(name: "nmax", scope: !2082, file: !108, line: 890, type: !40)
!2085 = !DILocalVariable(name: "size", scope: !2086, file: !108, line: 903, type: !102)
!2086 = distinct !DILexicalBlock(scope: !2071, file: !108, line: 902, column: 3)
!2087 = !DILocalVariable(name: "val", scope: !2086, file: !108, line: 904, type: !27)
!2088 = !DILocalVariable(name: "flags", scope: !2086, file: !108, line: 906, type: !40)
!2089 = !DILocalVariable(name: "qsize", scope: !2086, file: !108, line: 907, type: !102)
!2090 = !DILocation(line: 877, column: 25, scope: !2071)
!2091 = !DILocation(line: 877, column: 40, scope: !2071)
!2092 = !DILocation(line: 877, column: 52, scope: !2071)
!2093 = !DILocation(line: 878, column: 51, scope: !2071)
!2094 = !DILocation(line: 880, column: 11, scope: !2071)
!2095 = !DILocation(line: 880, column: 7, scope: !2071)
!2096 = !DILocation(line: 882, column: 24, scope: !2071)
!2097 = !DILocation(line: 882, column: 19, scope: !2071)
!2098 = !DILocation(line: 884, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2071, file: !108, line: 884, column: 7)
!2100 = !DILocation(line: 884, column: 7, scope: !2071)
!2101 = !DILocation(line: 885, column: 5, scope: !2099)
!2102 = !DILocation(line: 887, column: 7, scope: !2083)
!2103 = !DILocation(line: 887, column: 14, scope: !2083)
!2104 = !DILocation(line: 887, column: 7, scope: !2071)
!2105 = !DILocation(line: 889, column: 31, scope: !2082)
!2106 = !DILocation(line: 890, column: 11, scope: !2082)
!2107 = !DILocation(line: 892, column: 16, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2082, file: !108, line: 892, column: 11)
!2109 = !DILocation(line: 892, column: 11, scope: !2082)
!2110 = !DILocation(line: 893, column: 9, scope: !2108)
!2111 = !DILocation(line: 895, column: 32, scope: !2082)
!2112 = !DILocation(line: 895, column: 61, scope: !2082)
!2113 = !DILocation(line: 895, column: 58, scope: !2082)
!2114 = !DILocation(line: 895, column: 66, scope: !2082)
!2115 = !DILocation(line: 895, column: 22, scope: !2082)
!2116 = !DILocation(line: 895, column: 15, scope: !2082)
!2117 = !DILocation(line: 896, column: 11, scope: !2082)
!2118 = !DILocation(line: 897, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2082, file: !108, line: 896, column: 11)
!2120 = !{i64 0, i64 8, !2018, i64 8, i64 8, !663}
!2121 = !DILocation(line: 897, column: 9, scope: !2119)
!2122 = !DILocation(line: 898, column: 20, scope: !2082)
!2123 = !DILocation(line: 898, column: 18, scope: !2082)
!2124 = !DILocation(line: 898, column: 7, scope: !2082)
!2125 = !DILocation(line: 898, column: 38, scope: !2082)
!2126 = !DILocation(line: 898, column: 31, scope: !2082)
!2127 = !DILocation(line: 898, column: 48, scope: !2082)
!2128 = !DILocation(line: 899, column: 14, scope: !2082)
!2129 = !DILocation(line: 900, column: 5, scope: !2082)
!2130 = !DILocation(line: 0, scope: !2071)
!2131 = !DILocation(line: 903, column: 19, scope: !2086)
!2132 = !DILocation(line: 903, column: 25, scope: !2086)
!2133 = !DILocation(line: 903, column: 12, scope: !2086)
!2134 = !DILocation(line: 904, column: 23, scope: !2086)
!2135 = !DILocation(line: 904, column: 11, scope: !2086)
!2136 = !DILocation(line: 906, column: 26, scope: !2086)
!2137 = !DILocation(line: 906, column: 32, scope: !2086)
!2138 = !DILocation(line: 906, column: 9, scope: !2086)
!2139 = !DILocation(line: 908, column: 55, scope: !2086)
!2140 = !DILocation(line: 909, column: 46, scope: !2086)
!2141 = !DILocation(line: 910, column: 55, scope: !2086)
!2142 = !DILocation(line: 911, column: 55, scope: !2086)
!2143 = !DILocation(line: 907, column: 20, scope: !2086)
!2144 = !DILocation(line: 907, column: 12, scope: !2086)
!2145 = !DILocation(line: 913, column: 14, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2086, file: !108, line: 913, column: 9)
!2147 = !DILocation(line: 913, column: 9, scope: !2086)
!2148 = !DILocation(line: 915, column: 35, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !108, line: 914, column: 7)
!2150 = !DILocation(line: 915, column: 20, scope: !2149)
!2151 = !DILocation(line: 916, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !108, line: 916, column: 13)
!2153 = !DILocation(line: 916, column: 13, scope: !2149)
!2154 = !DILocation(line: 917, column: 11, scope: !2152)
!2155 = !DILocation(line: 216, column: 20, scope: !1973, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 918, column: 27, scope: !2149)
!2157 = !DILocation(line: 218, column: 10, scope: !1973, inlinedAt: !2156)
!2158 = !DILocation(line: 918, column: 19, scope: !2149)
!2159 = !DILocation(line: 919, column: 69, scope: !2149)
!2160 = !DILocation(line: 921, column: 44, scope: !2149)
!2161 = !DILocation(line: 922, column: 44, scope: !2149)
!2162 = !DILocation(line: 919, column: 9, scope: !2149)
!2163 = !DILocation(line: 923, column: 7, scope: !2149)
!2164 = !DILocation(line: 0, scope: !2086)
!2165 = !DILocation(line: 925, column: 11, scope: !2086)
!2166 = !DILocation(line: 926, column: 5, scope: !2086)
!2167 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !108, file: !108, line: 937, type: !2168, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!27, !40, !37, !102}
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "n", arg: 1, scope: !2167, file: !108, line: 937, type: !40)
!2172 = !DILocalVariable(name: "arg", arg: 2, scope: !2167, file: !108, line: 937, type: !37)
!2173 = !DILocalVariable(name: "argsize", arg: 3, scope: !2167, file: !108, line: 937, type: !102)
!2174 = !DILocation(line: 937, column: 21, scope: !2167)
!2175 = !DILocation(line: 937, column: 36, scope: !2167)
!2176 = !DILocation(line: 937, column: 48, scope: !2167)
!2177 = !DILocation(line: 939, column: 10, scope: !2167)
!2178 = !DILocation(line: 939, column: 3, scope: !2167)
!2179 = distinct !DISubprogram(name: "quotearg", scope: !108, file: !108, line: 943, type: !2180, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!27, !37}
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !108, line: 943, type: !37)
!2184 = !DILocation(line: 943, column: 23, scope: !2179)
!2185 = !DILocation(line: 931, column: 17, scope: !2061, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 945, column: 10, scope: !2179)
!2187 = !DILocation(line: 931, column: 32, scope: !2061, inlinedAt: !2186)
!2188 = !DILocation(line: 933, column: 10, scope: !2061, inlinedAt: !2186)
!2189 = !DILocation(line: 945, column: 3, scope: !2179)
!2190 = distinct !DISubprogram(name: "quotearg_mem", scope: !108, file: !108, line: 949, type: !2191, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!27, !37, !102}
!2193 = !{!2194, !2195}
!2194 = !DILocalVariable(name: "arg", arg: 1, scope: !2190, file: !108, line: 949, type: !37)
!2195 = !DILocalVariable(name: "argsize", arg: 2, scope: !2190, file: !108, line: 949, type: !102)
!2196 = !DILocation(line: 949, column: 27, scope: !2190)
!2197 = !DILocation(line: 949, column: 39, scope: !2190)
!2198 = !DILocation(line: 937, column: 21, scope: !2167, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 951, column: 10, scope: !2190)
!2200 = !DILocation(line: 937, column: 36, scope: !2167, inlinedAt: !2199)
!2201 = !DILocation(line: 937, column: 48, scope: !2167, inlinedAt: !2199)
!2202 = !DILocation(line: 939, column: 10, scope: !2167, inlinedAt: !2199)
!2203 = !DILocation(line: 951, column: 3, scope: !2190)
!2204 = distinct !DISubprogram(name: "quotearg_n_style", scope: !108, file: !108, line: 955, type: !2205, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!27, !40, !12, !37}
!2207 = !{!2208, !2209, !2210, !2211}
!2208 = !DILocalVariable(name: "n", arg: 1, scope: !2204, file: !108, line: 955, type: !40)
!2209 = !DILocalVariable(name: "s", arg: 2, scope: !2204, file: !108, line: 955, type: !12)
!2210 = !DILocalVariable(name: "arg", arg: 3, scope: !2204, file: !108, line: 955, type: !37)
!2211 = !DILocalVariable(name: "o", scope: !2204, file: !108, line: 957, type: !967)
!2212 = !DILocation(line: 955, column: 23, scope: !2204)
!2213 = !DILocation(line: 955, column: 45, scope: !2204)
!2214 = !DILocation(line: 955, column: 60, scope: !2204)
!2215 = !DILocation(line: 957, column: 3, scope: !2204)
!2216 = !DILocation(line: 957, column: 32, scope: !2204)
!2217 = !DILocalVariable(name: "style", arg: 1, scope: !2218, file: !108, line: 193, type: !12)
!2218 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !108, file: !108, line: 193, type: !2219, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!115, !12}
!2221 = !{!2217, !2222}
!2222 = !DILocalVariable(name: "o", scope: !2218, file: !108, line: 195, type: !115)
!2223 = !DILocation(line: 193, column: 48, scope: !2218, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 957, column: 36, scope: !2204)
!2225 = !DILocation(line: 195, column: 26, scope: !2218, inlinedAt: !2224)
!2226 = !{!2227}
!2227 = distinct !{!2227, !2228, !"quoting_options_from_style: argument 0"}
!2228 = distinct !{!2228, !"quoting_options_from_style"}
!2229 = !DILocation(line: 196, column: 13, scope: !2230, inlinedAt: !2224)
!2230 = distinct !DILexicalBlock(scope: !2218, file: !108, line: 196, column: 7)
!2231 = !DILocation(line: 196, column: 7, scope: !2218, inlinedAt: !2224)
!2232 = !DILocation(line: 197, column: 5, scope: !2230, inlinedAt: !2224)
!2233 = !DILocation(line: 198, column: 5, scope: !2218, inlinedAt: !2224)
!2234 = !DILocation(line: 198, column: 11, scope: !2218, inlinedAt: !2224)
!2235 = !DILocation(line: 958, column: 10, scope: !2204)
!2236 = !DILocation(line: 959, column: 1, scope: !2204)
!2237 = !DILocation(line: 958, column: 3, scope: !2204)
!2238 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !108, file: !108, line: 962, type: !2239, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!27, !40, !12, !37, !102}
!2241 = !{!2242, !2243, !2244, !2245, !2246}
!2242 = !DILocalVariable(name: "n", arg: 1, scope: !2238, file: !108, line: 962, type: !40)
!2243 = !DILocalVariable(name: "s", arg: 2, scope: !2238, file: !108, line: 962, type: !12)
!2244 = !DILocalVariable(name: "arg", arg: 3, scope: !2238, file: !108, line: 963, type: !37)
!2245 = !DILocalVariable(name: "argsize", arg: 4, scope: !2238, file: !108, line: 963, type: !102)
!2246 = !DILocalVariable(name: "o", scope: !2238, file: !108, line: 965, type: !967)
!2247 = !DILocation(line: 962, column: 27, scope: !2238)
!2248 = !DILocation(line: 962, column: 49, scope: !2238)
!2249 = !DILocation(line: 963, column: 35, scope: !2238)
!2250 = !DILocation(line: 963, column: 47, scope: !2238)
!2251 = !DILocation(line: 965, column: 3, scope: !2238)
!2252 = !DILocation(line: 965, column: 32, scope: !2238)
!2253 = !DILocation(line: 193, column: 48, scope: !2218, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 965, column: 36, scope: !2238)
!2255 = !DILocation(line: 195, column: 26, scope: !2218, inlinedAt: !2254)
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"quoting_options_from_style: argument 0"}
!2258 = distinct !{!2258, !"quoting_options_from_style"}
!2259 = !DILocation(line: 196, column: 13, scope: !2230, inlinedAt: !2254)
!2260 = !DILocation(line: 196, column: 7, scope: !2218, inlinedAt: !2254)
!2261 = !DILocation(line: 197, column: 5, scope: !2230, inlinedAt: !2254)
!2262 = !DILocation(line: 198, column: 5, scope: !2218, inlinedAt: !2254)
!2263 = !DILocation(line: 198, column: 11, scope: !2218, inlinedAt: !2254)
!2264 = !DILocation(line: 966, column: 10, scope: !2238)
!2265 = !DILocation(line: 967, column: 1, scope: !2238)
!2266 = !DILocation(line: 966, column: 3, scope: !2238)
!2267 = distinct !DISubprogram(name: "quotearg_style", scope: !108, file: !108, line: 970, type: !2268, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!27, !12, !37}
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "s", arg: 1, scope: !2267, file: !108, line: 970, type: !12)
!2272 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !108, line: 970, type: !37)
!2273 = !DILocation(line: 970, column: 36, scope: !2267)
!2274 = !DILocation(line: 970, column: 51, scope: !2267)
!2275 = !DILocation(line: 955, column: 23, scope: !2204, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 972, column: 10, scope: !2267)
!2277 = !DILocation(line: 955, column: 45, scope: !2204, inlinedAt: !2276)
!2278 = !DILocation(line: 955, column: 60, scope: !2204, inlinedAt: !2276)
!2279 = !DILocation(line: 957, column: 3, scope: !2204, inlinedAt: !2276)
!2280 = !DILocation(line: 957, column: 32, scope: !2204, inlinedAt: !2276)
!2281 = !DILocation(line: 193, column: 48, scope: !2218, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 957, column: 36, scope: !2204, inlinedAt: !2276)
!2283 = !DILocation(line: 195, column: 26, scope: !2218, inlinedAt: !2282)
!2284 = !{!2285}
!2285 = distinct !{!2285, !2286, !"quoting_options_from_style: argument 0"}
!2286 = distinct !{!2286, !"quoting_options_from_style"}
!2287 = !DILocation(line: 196, column: 13, scope: !2230, inlinedAt: !2282)
!2288 = !DILocation(line: 196, column: 7, scope: !2218, inlinedAt: !2282)
!2289 = !DILocation(line: 197, column: 5, scope: !2230, inlinedAt: !2282)
!2290 = !DILocation(line: 198, column: 5, scope: !2218, inlinedAt: !2282)
!2291 = !DILocation(line: 198, column: 11, scope: !2218, inlinedAt: !2282)
!2292 = !DILocation(line: 958, column: 10, scope: !2204, inlinedAt: !2276)
!2293 = !DILocation(line: 959, column: 1, scope: !2204, inlinedAt: !2276)
!2294 = !DILocation(line: 972, column: 3, scope: !2267)
!2295 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !108, file: !108, line: 976, type: !2296, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!27, !12, !37, !102}
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "s", arg: 1, scope: !2295, file: !108, line: 976, type: !12)
!2300 = !DILocalVariable(name: "arg", arg: 2, scope: !2295, file: !108, line: 976, type: !37)
!2301 = !DILocalVariable(name: "argsize", arg: 3, scope: !2295, file: !108, line: 976, type: !102)
!2302 = !DILocation(line: 976, column: 40, scope: !2295)
!2303 = !DILocation(line: 976, column: 55, scope: !2295)
!2304 = !DILocation(line: 976, column: 67, scope: !2295)
!2305 = !DILocation(line: 962, column: 27, scope: !2238, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 978, column: 10, scope: !2295)
!2307 = !DILocation(line: 962, column: 49, scope: !2238, inlinedAt: !2306)
!2308 = !DILocation(line: 963, column: 35, scope: !2238, inlinedAt: !2306)
!2309 = !DILocation(line: 963, column: 47, scope: !2238, inlinedAt: !2306)
!2310 = !DILocation(line: 965, column: 3, scope: !2238, inlinedAt: !2306)
!2311 = !DILocation(line: 965, column: 32, scope: !2238, inlinedAt: !2306)
!2312 = !DILocation(line: 193, column: 48, scope: !2218, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 965, column: 36, scope: !2238, inlinedAt: !2306)
!2314 = !DILocation(line: 195, column: 26, scope: !2218, inlinedAt: !2313)
!2315 = !{!2316}
!2316 = distinct !{!2316, !2317, !"quoting_options_from_style: argument 0"}
!2317 = distinct !{!2317, !"quoting_options_from_style"}
!2318 = !DILocation(line: 196, column: 13, scope: !2230, inlinedAt: !2313)
!2319 = !DILocation(line: 196, column: 7, scope: !2218, inlinedAt: !2313)
!2320 = !DILocation(line: 197, column: 5, scope: !2230, inlinedAt: !2313)
!2321 = !DILocation(line: 198, column: 5, scope: !2218, inlinedAt: !2313)
!2322 = !DILocation(line: 198, column: 11, scope: !2218, inlinedAt: !2313)
!2323 = !DILocation(line: 966, column: 10, scope: !2238, inlinedAt: !2306)
!2324 = !DILocation(line: 967, column: 1, scope: !2238, inlinedAt: !2306)
!2325 = !DILocation(line: 978, column: 3, scope: !2295)
!2326 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !108, file: !108, line: 982, type: !2327, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!27, !37, !102, !28}
!2329 = !{!2330, !2331, !2332, !2333}
!2330 = !DILocalVariable(name: "arg", arg: 1, scope: !2326, file: !108, line: 982, type: !37)
!2331 = !DILocalVariable(name: "argsize", arg: 2, scope: !2326, file: !108, line: 982, type: !102)
!2332 = !DILocalVariable(name: "ch", arg: 3, scope: !2326, file: !108, line: 982, type: !28)
!2333 = !DILocalVariable(name: "options", scope: !2326, file: !108, line: 984, type: !115)
!2334 = !DILocation(line: 982, column: 32, scope: !2326)
!2335 = !DILocation(line: 982, column: 44, scope: !2326)
!2336 = !DILocation(line: 982, column: 58, scope: !2326)
!2337 = !DILocation(line: 984, column: 3, scope: !2326)
!2338 = !DILocation(line: 985, column: 13, scope: !2326)
!2339 = !{i64 0, i64 4, !1195, i64 4, i64 4, !744, i64 8, i64 32, !1195, i64 40, i64 8, !663, i64 48, i64 8, !663}
!2340 = !DILocation(line: 984, column: 26, scope: !2326)
!2341 = !DILocation(line: 152, column: 43, scope: !988, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 986, column: 3, scope: !2326)
!2343 = !DILocation(line: 152, column: 51, scope: !988, inlinedAt: !2342)
!2344 = !DILocation(line: 152, column: 58, scope: !988, inlinedAt: !2342)
!2345 = !DILocation(line: 154, column: 17, scope: !988, inlinedAt: !2342)
!2346 = !DILocation(line: 156, column: 62, scope: !988, inlinedAt: !2342)
!2347 = !DILocation(line: 156, column: 57, scope: !988, inlinedAt: !2342)
!2348 = !DILocation(line: 155, column: 17, scope: !988, inlinedAt: !2342)
!2349 = !DILocation(line: 157, column: 15, scope: !988, inlinedAt: !2342)
!2350 = !DILocation(line: 157, column: 7, scope: !988, inlinedAt: !2342)
!2351 = !DILocation(line: 158, column: 12, scope: !988, inlinedAt: !2342)
!2352 = !DILocation(line: 158, column: 15, scope: !988, inlinedAt: !2342)
!2353 = !DILocation(line: 158, column: 25, scope: !988, inlinedAt: !2342)
!2354 = !DILocation(line: 158, column: 7, scope: !988, inlinedAt: !2342)
!2355 = !DILocation(line: 159, column: 18, scope: !988, inlinedAt: !2342)
!2356 = !DILocation(line: 159, column: 23, scope: !988, inlinedAt: !2342)
!2357 = !DILocation(line: 159, column: 6, scope: !988, inlinedAt: !2342)
!2358 = !DILocation(line: 987, column: 10, scope: !2326)
!2359 = !DILocation(line: 988, column: 1, scope: !2326)
!2360 = !DILocation(line: 987, column: 3, scope: !2326)
!2361 = distinct !DISubprogram(name: "quotearg_char", scope: !108, file: !108, line: 991, type: !2362, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!27, !37, !28}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2361, file: !108, line: 991, type: !37)
!2366 = !DILocalVariable(name: "ch", arg: 2, scope: !2361, file: !108, line: 991, type: !28)
!2367 = !DILocation(line: 991, column: 28, scope: !2361)
!2368 = !DILocation(line: 991, column: 38, scope: !2361)
!2369 = !DILocation(line: 982, column: 32, scope: !2326, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 993, column: 10, scope: !2361)
!2371 = !DILocation(line: 982, column: 44, scope: !2326, inlinedAt: !2370)
!2372 = !DILocation(line: 982, column: 58, scope: !2326, inlinedAt: !2370)
!2373 = !DILocation(line: 984, column: 3, scope: !2326, inlinedAt: !2370)
!2374 = !DILocation(line: 985, column: 13, scope: !2326, inlinedAt: !2370)
!2375 = !DILocation(line: 984, column: 26, scope: !2326, inlinedAt: !2370)
!2376 = !DILocation(line: 152, column: 43, scope: !988, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 986, column: 3, scope: !2326, inlinedAt: !2370)
!2378 = !DILocation(line: 152, column: 51, scope: !988, inlinedAt: !2377)
!2379 = !DILocation(line: 152, column: 58, scope: !988, inlinedAt: !2377)
!2380 = !DILocation(line: 154, column: 17, scope: !988, inlinedAt: !2377)
!2381 = !DILocation(line: 156, column: 62, scope: !988, inlinedAt: !2377)
!2382 = !DILocation(line: 156, column: 57, scope: !988, inlinedAt: !2377)
!2383 = !DILocation(line: 155, column: 17, scope: !988, inlinedAt: !2377)
!2384 = !DILocation(line: 157, column: 15, scope: !988, inlinedAt: !2377)
!2385 = !DILocation(line: 157, column: 7, scope: !988, inlinedAt: !2377)
!2386 = !DILocation(line: 158, column: 12, scope: !988, inlinedAt: !2377)
!2387 = !DILocation(line: 158, column: 15, scope: !988, inlinedAt: !2377)
!2388 = !DILocation(line: 158, column: 25, scope: !988, inlinedAt: !2377)
!2389 = !DILocation(line: 158, column: 7, scope: !988, inlinedAt: !2377)
!2390 = !DILocation(line: 159, column: 18, scope: !988, inlinedAt: !2377)
!2391 = !DILocation(line: 159, column: 23, scope: !988, inlinedAt: !2377)
!2392 = !DILocation(line: 159, column: 6, scope: !988, inlinedAt: !2377)
!2393 = !DILocation(line: 987, column: 10, scope: !2326, inlinedAt: !2370)
!2394 = !DILocation(line: 988, column: 1, scope: !2326, inlinedAt: !2370)
!2395 = !DILocation(line: 993, column: 3, scope: !2361)
!2396 = distinct !DISubprogram(name: "quotearg_colon", scope: !108, file: !108, line: 997, type: !2180, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2397)
!2397 = !{!2398}
!2398 = !DILocalVariable(name: "arg", arg: 1, scope: !2396, file: !108, line: 997, type: !37)
!2399 = !DILocation(line: 997, column: 29, scope: !2396)
!2400 = !DILocation(line: 991, column: 28, scope: !2361, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 999, column: 10, scope: !2396)
!2402 = !DILocation(line: 991, column: 38, scope: !2361, inlinedAt: !2401)
!2403 = !DILocation(line: 982, column: 32, scope: !2326, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 993, column: 10, scope: !2361, inlinedAt: !2401)
!2405 = !DILocation(line: 982, column: 44, scope: !2326, inlinedAt: !2404)
!2406 = !DILocation(line: 982, column: 58, scope: !2326, inlinedAt: !2404)
!2407 = !DILocation(line: 984, column: 3, scope: !2326, inlinedAt: !2404)
!2408 = !DILocation(line: 985, column: 13, scope: !2326, inlinedAt: !2404)
!2409 = !DILocation(line: 984, column: 26, scope: !2326, inlinedAt: !2404)
!2410 = !DILocation(line: 152, column: 43, scope: !988, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 986, column: 3, scope: !2326, inlinedAt: !2404)
!2412 = !DILocation(line: 152, column: 51, scope: !988, inlinedAt: !2411)
!2413 = !DILocation(line: 152, column: 58, scope: !988, inlinedAt: !2411)
!2414 = !DILocation(line: 154, column: 17, scope: !988, inlinedAt: !2411)
!2415 = !DILocation(line: 156, column: 57, scope: !988, inlinedAt: !2411)
!2416 = !DILocation(line: 155, column: 17, scope: !988, inlinedAt: !2411)
!2417 = !DILocation(line: 157, column: 7, scope: !988, inlinedAt: !2411)
!2418 = !DILocation(line: 158, column: 12, scope: !988, inlinedAt: !2411)
!2419 = !DILocation(line: 159, column: 6, scope: !988, inlinedAt: !2411)
!2420 = !DILocation(line: 987, column: 10, scope: !2326, inlinedAt: !2404)
!2421 = !DILocation(line: 988, column: 1, scope: !2326, inlinedAt: !2404)
!2422 = !DILocation(line: 999, column: 3, scope: !2396)
!2423 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !108, file: !108, line: 1003, type: !2191, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2424)
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "arg", arg: 1, scope: !2423, file: !108, line: 1003, type: !37)
!2426 = !DILocalVariable(name: "argsize", arg: 2, scope: !2423, file: !108, line: 1003, type: !102)
!2427 = !DILocation(line: 1003, column: 33, scope: !2423)
!2428 = !DILocation(line: 1003, column: 45, scope: !2423)
!2429 = !DILocation(line: 982, column: 32, scope: !2326, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1005, column: 10, scope: !2423)
!2431 = !DILocation(line: 982, column: 44, scope: !2326, inlinedAt: !2430)
!2432 = !DILocation(line: 982, column: 58, scope: !2326, inlinedAt: !2430)
!2433 = !DILocation(line: 984, column: 3, scope: !2326, inlinedAt: !2430)
!2434 = !DILocation(line: 985, column: 13, scope: !2326, inlinedAt: !2430)
!2435 = !DILocation(line: 984, column: 26, scope: !2326, inlinedAt: !2430)
!2436 = !DILocation(line: 152, column: 43, scope: !988, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 986, column: 3, scope: !2326, inlinedAt: !2430)
!2438 = !DILocation(line: 152, column: 51, scope: !988, inlinedAt: !2437)
!2439 = !DILocation(line: 152, column: 58, scope: !988, inlinedAt: !2437)
!2440 = !DILocation(line: 154, column: 17, scope: !988, inlinedAt: !2437)
!2441 = !DILocation(line: 156, column: 57, scope: !988, inlinedAt: !2437)
!2442 = !DILocation(line: 155, column: 17, scope: !988, inlinedAt: !2437)
!2443 = !DILocation(line: 157, column: 7, scope: !988, inlinedAt: !2437)
!2444 = !DILocation(line: 158, column: 12, scope: !988, inlinedAt: !2437)
!2445 = !DILocation(line: 159, column: 6, scope: !988, inlinedAt: !2437)
!2446 = !DILocation(line: 987, column: 10, scope: !2326, inlinedAt: !2430)
!2447 = !DILocation(line: 988, column: 1, scope: !2326, inlinedAt: !2430)
!2448 = !DILocation(line: 1005, column: 3, scope: !2423)
!2449 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !108, file: !108, line: 1009, type: !2205, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2450)
!2450 = !{!2451, !2452, !2453, !2454}
!2451 = !DILocalVariable(name: "n", arg: 1, scope: !2449, file: !108, line: 1009, type: !40)
!2452 = !DILocalVariable(name: "s", arg: 2, scope: !2449, file: !108, line: 1009, type: !12)
!2453 = !DILocalVariable(name: "arg", arg: 3, scope: !2449, file: !108, line: 1009, type: !37)
!2454 = !DILocalVariable(name: "options", scope: !2449, file: !108, line: 1011, type: !115)
!2455 = !DILocation(line: 195, column: 26, scope: !2218, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 1012, column: 13, scope: !2449)
!2457 = !DILocation(line: 1009, column: 29, scope: !2449)
!2458 = !DILocation(line: 1009, column: 51, scope: !2449)
!2459 = !DILocation(line: 1009, column: 66, scope: !2449)
!2460 = !DILocation(line: 1011, column: 3, scope: !2449)
!2461 = !DILocation(line: 1012, column: 13, scope: !2449)
!2462 = !DILocation(line: 193, column: 48, scope: !2218, inlinedAt: !2456)
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"quoting_options_from_style: argument 0"}
!2465 = distinct !{!2465, !"quoting_options_from_style"}
!2466 = !DILocation(line: 196, column: 13, scope: !2230, inlinedAt: !2456)
!2467 = !DILocation(line: 196, column: 7, scope: !2218, inlinedAt: !2456)
!2468 = !DILocation(line: 197, column: 5, scope: !2230, inlinedAt: !2456)
!2469 = !DILocation(line: 1011, column: 26, scope: !2449)
!2470 = !DILocation(line: 152, column: 43, scope: !988, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1013, column: 3, scope: !2449)
!2472 = !DILocation(line: 152, column: 51, scope: !988, inlinedAt: !2471)
!2473 = !DILocation(line: 152, column: 58, scope: !988, inlinedAt: !2471)
!2474 = !DILocation(line: 154, column: 17, scope: !988, inlinedAt: !2471)
!2475 = !DILocation(line: 156, column: 57, scope: !988, inlinedAt: !2471)
!2476 = !DILocation(line: 155, column: 17, scope: !988, inlinedAt: !2471)
!2477 = !DILocation(line: 157, column: 7, scope: !988, inlinedAt: !2471)
!2478 = !DILocation(line: 158, column: 12, scope: !988, inlinedAt: !2471)
!2479 = !DILocation(line: 159, column: 6, scope: !988, inlinedAt: !2471)
!2480 = !DILocation(line: 1014, column: 10, scope: !2449)
!2481 = !DILocation(line: 1015, column: 1, scope: !2449)
!2482 = !DILocation(line: 1014, column: 3, scope: !2449)
!2483 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !108, file: !108, line: 1018, type: !2484, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!27, !40, !37, !37, !37}
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DILocalVariable(name: "n", arg: 1, scope: !2483, file: !108, line: 1018, type: !40)
!2488 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2483, file: !108, line: 1018, type: !37)
!2489 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2483, file: !108, line: 1019, type: !37)
!2490 = !DILocalVariable(name: "arg", arg: 4, scope: !2483, file: !108, line: 1019, type: !37)
!2491 = !DILocation(line: 1018, column: 24, scope: !2483)
!2492 = !DILocation(line: 1018, column: 39, scope: !2483)
!2493 = !DILocation(line: 1019, column: 32, scope: !2483)
!2494 = !DILocation(line: 1019, column: 57, scope: !2483)
!2495 = !DILocalVariable(name: "n", arg: 1, scope: !2496, file: !108, line: 1026, type: !40)
!2496 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !108, file: !108, line: 1026, type: !2497, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!27, !40, !37, !37, !37, !102}
!2499 = !{!2495, !2500, !2501, !2502, !2503, !2504}
!2500 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2496, file: !108, line: 1026, type: !37)
!2501 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2496, file: !108, line: 1027, type: !37)
!2502 = !DILocalVariable(name: "arg", arg: 4, scope: !2496, file: !108, line: 1028, type: !37)
!2503 = !DILocalVariable(name: "argsize", arg: 5, scope: !2496, file: !108, line: 1028, type: !102)
!2504 = !DILocalVariable(name: "o", scope: !2496, file: !108, line: 1030, type: !115)
!2505 = !DILocation(line: 1026, column: 28, scope: !2496, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1021, column: 10, scope: !2483)
!2507 = !DILocation(line: 1026, column: 43, scope: !2496, inlinedAt: !2506)
!2508 = !DILocation(line: 1027, column: 36, scope: !2496, inlinedAt: !2506)
!2509 = !DILocation(line: 1028, column: 36, scope: !2496, inlinedAt: !2506)
!2510 = !DILocation(line: 1028, column: 48, scope: !2496, inlinedAt: !2506)
!2511 = !DILocation(line: 1030, column: 3, scope: !2496, inlinedAt: !2506)
!2512 = !DILocation(line: 1030, column: 30, scope: !2496, inlinedAt: !2506)
!2513 = !DILocation(line: 1030, column: 26, scope: !2496, inlinedAt: !2506)
!2514 = !DILocation(line: 179, column: 45, scope: !1037, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 1031, column: 3, scope: !2496, inlinedAt: !2506)
!2516 = !DILocation(line: 180, column: 33, scope: !1037, inlinedAt: !2515)
!2517 = !DILocation(line: 180, column: 57, scope: !1037, inlinedAt: !2515)
!2518 = !DILocation(line: 184, column: 6, scope: !1037, inlinedAt: !2515)
!2519 = !DILocation(line: 184, column: 12, scope: !1037, inlinedAt: !2515)
!2520 = !DILocation(line: 185, column: 8, scope: !1053, inlinedAt: !2515)
!2521 = !DILocation(line: 185, column: 23, scope: !1053, inlinedAt: !2515)
!2522 = !DILocation(line: 185, column: 19, scope: !1053, inlinedAt: !2515)
!2523 = !DILocation(line: 186, column: 5, scope: !1053, inlinedAt: !2515)
!2524 = !DILocation(line: 187, column: 6, scope: !1037, inlinedAt: !2515)
!2525 = !DILocation(line: 187, column: 17, scope: !1037, inlinedAt: !2515)
!2526 = !DILocation(line: 188, column: 6, scope: !1037, inlinedAt: !2515)
!2527 = !DILocation(line: 188, column: 18, scope: !1037, inlinedAt: !2515)
!2528 = !DILocation(line: 1032, column: 10, scope: !2496, inlinedAt: !2506)
!2529 = !DILocation(line: 1033, column: 1, scope: !2496, inlinedAt: !2506)
!2530 = !DILocation(line: 1021, column: 3, scope: !2483)
!2531 = !DILocation(line: 1026, column: 28, scope: !2496)
!2532 = !DILocation(line: 1026, column: 43, scope: !2496)
!2533 = !DILocation(line: 1027, column: 36, scope: !2496)
!2534 = !DILocation(line: 1028, column: 36, scope: !2496)
!2535 = !DILocation(line: 1028, column: 48, scope: !2496)
!2536 = !DILocation(line: 1030, column: 3, scope: !2496)
!2537 = !DILocation(line: 1030, column: 30, scope: !2496)
!2538 = !DILocation(line: 1030, column: 26, scope: !2496)
!2539 = !DILocation(line: 179, column: 45, scope: !1037, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1031, column: 3, scope: !2496)
!2541 = !DILocation(line: 180, column: 33, scope: !1037, inlinedAt: !2540)
!2542 = !DILocation(line: 180, column: 57, scope: !1037, inlinedAt: !2540)
!2543 = !DILocation(line: 184, column: 6, scope: !1037, inlinedAt: !2540)
!2544 = !DILocation(line: 184, column: 12, scope: !1037, inlinedAt: !2540)
!2545 = !DILocation(line: 185, column: 8, scope: !1053, inlinedAt: !2540)
!2546 = !DILocation(line: 185, column: 23, scope: !1053, inlinedAt: !2540)
!2547 = !DILocation(line: 185, column: 19, scope: !1053, inlinedAt: !2540)
!2548 = !DILocation(line: 186, column: 5, scope: !1053, inlinedAt: !2540)
!2549 = !DILocation(line: 187, column: 6, scope: !1037, inlinedAt: !2540)
!2550 = !DILocation(line: 187, column: 17, scope: !1037, inlinedAt: !2540)
!2551 = !DILocation(line: 188, column: 6, scope: !1037, inlinedAt: !2540)
!2552 = !DILocation(line: 188, column: 18, scope: !1037, inlinedAt: !2540)
!2553 = !DILocation(line: 1032, column: 10, scope: !2496)
!2554 = !DILocation(line: 1033, column: 1, scope: !2496)
!2555 = !DILocation(line: 1032, column: 3, scope: !2496)
!2556 = distinct !DISubprogram(name: "quotearg_custom", scope: !108, file: !108, line: 1036, type: !2557, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!27, !37, !37, !37}
!2559 = !{!2560, !2561, !2562}
!2560 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2556, file: !108, line: 1036, type: !37)
!2561 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2556, file: !108, line: 1036, type: !37)
!2562 = !DILocalVariable(name: "arg", arg: 3, scope: !2556, file: !108, line: 1037, type: !37)
!2563 = !DILocation(line: 1036, column: 30, scope: !2556)
!2564 = !DILocation(line: 1036, column: 54, scope: !2556)
!2565 = !DILocation(line: 1037, column: 30, scope: !2556)
!2566 = !DILocation(line: 1018, column: 24, scope: !2483, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 1039, column: 10, scope: !2556)
!2568 = !DILocation(line: 1018, column: 39, scope: !2483, inlinedAt: !2567)
!2569 = !DILocation(line: 1019, column: 32, scope: !2483, inlinedAt: !2567)
!2570 = !DILocation(line: 1019, column: 57, scope: !2483, inlinedAt: !2567)
!2571 = !DILocation(line: 1026, column: 28, scope: !2496, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 1021, column: 10, scope: !2483, inlinedAt: !2567)
!2573 = !DILocation(line: 1026, column: 43, scope: !2496, inlinedAt: !2572)
!2574 = !DILocation(line: 1027, column: 36, scope: !2496, inlinedAt: !2572)
!2575 = !DILocation(line: 1028, column: 36, scope: !2496, inlinedAt: !2572)
!2576 = !DILocation(line: 1028, column: 48, scope: !2496, inlinedAt: !2572)
!2577 = !DILocation(line: 1030, column: 3, scope: !2496, inlinedAt: !2572)
!2578 = !DILocation(line: 1030, column: 30, scope: !2496, inlinedAt: !2572)
!2579 = !DILocation(line: 1030, column: 26, scope: !2496, inlinedAt: !2572)
!2580 = !DILocation(line: 179, column: 45, scope: !1037, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 1031, column: 3, scope: !2496, inlinedAt: !2572)
!2582 = !DILocation(line: 180, column: 33, scope: !1037, inlinedAt: !2581)
!2583 = !DILocation(line: 180, column: 57, scope: !1037, inlinedAt: !2581)
!2584 = !DILocation(line: 184, column: 6, scope: !1037, inlinedAt: !2581)
!2585 = !DILocation(line: 184, column: 12, scope: !1037, inlinedAt: !2581)
!2586 = !DILocation(line: 185, column: 8, scope: !1053, inlinedAt: !2581)
!2587 = !DILocation(line: 185, column: 23, scope: !1053, inlinedAt: !2581)
!2588 = !DILocation(line: 185, column: 19, scope: !1053, inlinedAt: !2581)
!2589 = !DILocation(line: 186, column: 5, scope: !1053, inlinedAt: !2581)
!2590 = !DILocation(line: 187, column: 6, scope: !1037, inlinedAt: !2581)
!2591 = !DILocation(line: 187, column: 17, scope: !1037, inlinedAt: !2581)
!2592 = !DILocation(line: 188, column: 6, scope: !1037, inlinedAt: !2581)
!2593 = !DILocation(line: 188, column: 18, scope: !1037, inlinedAt: !2581)
!2594 = !DILocation(line: 1032, column: 10, scope: !2496, inlinedAt: !2572)
!2595 = !DILocation(line: 1033, column: 1, scope: !2496, inlinedAt: !2572)
!2596 = !DILocation(line: 1039, column: 3, scope: !2556)
!2597 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !108, file: !108, line: 1043, type: !2598, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!27, !37, !37, !37, !102}
!2600 = !{!2601, !2602, !2603, !2604}
!2601 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2597, file: !108, line: 1043, type: !37)
!2602 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2597, file: !108, line: 1043, type: !37)
!2603 = !DILocalVariable(name: "arg", arg: 3, scope: !2597, file: !108, line: 1044, type: !37)
!2604 = !DILocalVariable(name: "argsize", arg: 4, scope: !2597, file: !108, line: 1044, type: !102)
!2605 = !DILocation(line: 1043, column: 34, scope: !2597)
!2606 = !DILocation(line: 1043, column: 58, scope: !2597)
!2607 = !DILocation(line: 1044, column: 34, scope: !2597)
!2608 = !DILocation(line: 1044, column: 46, scope: !2597)
!2609 = !DILocation(line: 1026, column: 28, scope: !2496, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1046, column: 10, scope: !2597)
!2611 = !DILocation(line: 1026, column: 43, scope: !2496, inlinedAt: !2610)
!2612 = !DILocation(line: 1027, column: 36, scope: !2496, inlinedAt: !2610)
!2613 = !DILocation(line: 1028, column: 36, scope: !2496, inlinedAt: !2610)
!2614 = !DILocation(line: 1028, column: 48, scope: !2496, inlinedAt: !2610)
!2615 = !DILocation(line: 1030, column: 3, scope: !2496, inlinedAt: !2610)
!2616 = !DILocation(line: 1030, column: 30, scope: !2496, inlinedAt: !2610)
!2617 = !DILocation(line: 1030, column: 26, scope: !2496, inlinedAt: !2610)
!2618 = !DILocation(line: 179, column: 45, scope: !1037, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 1031, column: 3, scope: !2496, inlinedAt: !2610)
!2620 = !DILocation(line: 180, column: 33, scope: !1037, inlinedAt: !2619)
!2621 = !DILocation(line: 180, column: 57, scope: !1037, inlinedAt: !2619)
!2622 = !DILocation(line: 184, column: 6, scope: !1037, inlinedAt: !2619)
!2623 = !DILocation(line: 184, column: 12, scope: !1037, inlinedAt: !2619)
!2624 = !DILocation(line: 185, column: 8, scope: !1053, inlinedAt: !2619)
!2625 = !DILocation(line: 185, column: 23, scope: !1053, inlinedAt: !2619)
!2626 = !DILocation(line: 185, column: 19, scope: !1053, inlinedAt: !2619)
!2627 = !DILocation(line: 186, column: 5, scope: !1053, inlinedAt: !2619)
!2628 = !DILocation(line: 187, column: 6, scope: !1037, inlinedAt: !2619)
!2629 = !DILocation(line: 187, column: 17, scope: !1037, inlinedAt: !2619)
!2630 = !DILocation(line: 188, column: 6, scope: !1037, inlinedAt: !2619)
!2631 = !DILocation(line: 188, column: 18, scope: !1037, inlinedAt: !2619)
!2632 = !DILocation(line: 1032, column: 10, scope: !2496, inlinedAt: !2610)
!2633 = !DILocation(line: 1033, column: 1, scope: !2496, inlinedAt: !2610)
!2634 = !DILocation(line: 1046, column: 3, scope: !2597)
!2635 = distinct !DISubprogram(name: "quote_n_mem", scope: !108, file: !108, line: 1061, type: !2636, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!37, !40, !37, !102}
!2638 = !{!2639, !2640, !2641}
!2639 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !108, line: 1061, type: !40)
!2640 = !DILocalVariable(name: "arg", arg: 2, scope: !2635, file: !108, line: 1061, type: !37)
!2641 = !DILocalVariable(name: "argsize", arg: 3, scope: !2635, file: !108, line: 1061, type: !102)
!2642 = !DILocation(line: 1061, column: 18, scope: !2635)
!2643 = !DILocation(line: 1061, column: 33, scope: !2635)
!2644 = !DILocation(line: 1061, column: 45, scope: !2635)
!2645 = !DILocation(line: 1063, column: 10, scope: !2635)
!2646 = !DILocation(line: 1063, column: 3, scope: !2635)
!2647 = distinct !DISubprogram(name: "quote_mem", scope: !108, file: !108, line: 1067, type: !2648, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!37, !37, !102}
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "arg", arg: 1, scope: !2647, file: !108, line: 1067, type: !37)
!2652 = !DILocalVariable(name: "argsize", arg: 2, scope: !2647, file: !108, line: 1067, type: !102)
!2653 = !DILocation(line: 1067, column: 24, scope: !2647)
!2654 = !DILocation(line: 1067, column: 36, scope: !2647)
!2655 = !DILocation(line: 1061, column: 18, scope: !2635, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1069, column: 10, scope: !2647)
!2657 = !DILocation(line: 1061, column: 33, scope: !2635, inlinedAt: !2656)
!2658 = !DILocation(line: 1061, column: 45, scope: !2635, inlinedAt: !2656)
!2659 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2656)
!2660 = !DILocation(line: 1069, column: 3, scope: !2647)
!2661 = distinct !DISubprogram(name: "quote_n", scope: !108, file: !108, line: 1073, type: !2662, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!37, !40, !37}
!2664 = !{!2665, !2666}
!2665 = !DILocalVariable(name: "n", arg: 1, scope: !2661, file: !108, line: 1073, type: !40)
!2666 = !DILocalVariable(name: "arg", arg: 2, scope: !2661, file: !108, line: 1073, type: !37)
!2667 = !DILocation(line: 1073, column: 14, scope: !2661)
!2668 = !DILocation(line: 1073, column: 29, scope: !2661)
!2669 = !DILocation(line: 1061, column: 18, scope: !2635, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1075, column: 10, scope: !2661)
!2671 = !DILocation(line: 1061, column: 33, scope: !2635, inlinedAt: !2670)
!2672 = !DILocation(line: 1061, column: 45, scope: !2635, inlinedAt: !2670)
!2673 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2670)
!2674 = !DILocation(line: 1075, column: 3, scope: !2661)
!2675 = distinct !DISubprogram(name: "quote", scope: !108, file: !108, line: 1079, type: !2676, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!37, !37}
!2678 = !{!2679}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !108, line: 1079, type: !37)
!2680 = !DILocation(line: 1079, column: 20, scope: !2675)
!2681 = !DILocation(line: 1073, column: 14, scope: !2661, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1081, column: 10, scope: !2675)
!2683 = !DILocation(line: 1073, column: 29, scope: !2661, inlinedAt: !2682)
!2684 = !DILocation(line: 1061, column: 18, scope: !2635, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1075, column: 10, scope: !2661, inlinedAt: !2682)
!2686 = !DILocation(line: 1061, column: 33, scope: !2635, inlinedAt: !2685)
!2687 = !DILocation(line: 1061, column: 45, scope: !2635, inlinedAt: !2685)
!2688 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2685)
!2689 = !DILocation(line: 1081, column: 3, scope: !2675)
!2690 = distinct !DISubprogram(name: "version_etc_arn", scope: !197, file: !197, line: 62, type: !2691, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !2747)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2693, !37, !37, !37, !2746, !102}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2695, line: 7, baseType: !2696)
!2695 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2697, line: 49, size: 1728, elements: !2698)
!2697 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2714, !2716, !2717, !2718, !2722, !2723, !2725, !2727, !2730, !2732, !2735, !2738, !2739, !2740, !2741, !2742}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2696, file: !2697, line: 51, baseType: !40, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2696, file: !2697, line: 54, baseType: !27, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2696, file: !2697, line: 55, baseType: !27, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2696, file: !2697, line: 56, baseType: !27, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2696, file: !2697, line: 57, baseType: !27, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2696, file: !2697, line: 58, baseType: !27, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2696, file: !2697, line: 59, baseType: !27, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2696, file: !2697, line: 60, baseType: !27, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2696, file: !2697, line: 61, baseType: !27, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2696, file: !2697, line: 64, baseType: !27, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2696, file: !2697, line: 65, baseType: !27, size: 64, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2696, file: !2697, line: 66, baseType: !27, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2696, file: !2697, line: 68, baseType: !2712, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2697, line: 36, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2696, file: !2697, line: 70, baseType: !2715, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2696, file: !2697, line: 72, baseType: !40, size: 32, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2696, file: !2697, line: 73, baseType: !40, size: 32, offset: 928)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2696, file: !2697, line: 74, baseType: !2719, size: 64, offset: 960)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2720, line: 150, baseType: !2721)
!2720 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2721 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2696, file: !2697, line: 77, baseType: !101, size: 16, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2696, file: !2697, line: 78, baseType: !2724, size: 8, offset: 1040)
!2724 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2696, file: !2697, line: 79, baseType: !2726, size: 8, offset: 1048)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !179)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2696, file: !2697, line: 81, baseType: !2728, size: 64, offset: 1088)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2697, line: 43, baseType: null)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2696, file: !2697, line: 89, baseType: !2731, size: 64, offset: 1152)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2720, line: 151, baseType: !2721)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2696, file: !2697, line: 91, baseType: !2733, size: 64, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2697, line: 37, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2696, file: !2697, line: 92, baseType: !2736, size: 64, offset: 1280)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2697, line: 38, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2696, file: !2697, line: 93, baseType: !2715, size: 64, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2696, file: !2697, line: 94, baseType: !29, size: 64, offset: 1408)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2696, file: !2697, line: 95, baseType: !102, size: 64, offset: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2696, file: !2697, line: 96, baseType: !40, size: 32, offset: 1536)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2696, file: !2697, line: 98, baseType: !2743, size: 160, offset: 1568)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !2744)
!2744 = !{!2745}
!2745 = !DISubrange(count: 20)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753}
!2748 = !DILocalVariable(name: "stream", arg: 1, scope: !2690, file: !197, line: 62, type: !2693)
!2749 = !DILocalVariable(name: "command_name", arg: 2, scope: !2690, file: !197, line: 63, type: !37)
!2750 = !DILocalVariable(name: "package", arg: 3, scope: !2690, file: !197, line: 63, type: !37)
!2751 = !DILocalVariable(name: "version", arg: 4, scope: !2690, file: !197, line: 64, type: !37)
!2752 = !DILocalVariable(name: "authors", arg: 5, scope: !2690, file: !197, line: 65, type: !2746)
!2753 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2690, file: !197, line: 65, type: !102)
!2754 = !DILocation(line: 62, column: 24, scope: !2690)
!2755 = !DILocation(line: 63, column: 30, scope: !2690)
!2756 = !DILocation(line: 63, column: 56, scope: !2690)
!2757 = !DILocation(line: 64, column: 30, scope: !2690)
!2758 = !DILocation(line: 65, column: 39, scope: !2690)
!2759 = !DILocation(line: 65, column: 55, scope: !2690)
!2760 = !DILocation(line: 67, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2690, file: !197, line: 67, column: 7)
!2762 = !DILocation(line: 67, column: 7, scope: !2690)
!2763 = !DILocation(line: 68, column: 5, scope: !2761)
!2764 = !DILocation(line: 70, column: 5, scope: !2761)
!2765 = !DILocation(line: 84, column: 3, scope: !2690)
!2766 = !DILocation(line: 86, column: 3, scope: !2690)
!2767 = !DILocation(line: 95, column: 3, scope: !2690)
!2768 = !DILocation(line: 99, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2690, file: !197, line: 96, column: 5)
!2770 = !DILocation(line: 102, column: 7, scope: !2769)
!2771 = !DILocation(line: 103, column: 7, scope: !2769)
!2772 = !DILocation(line: 106, column: 7, scope: !2769)
!2773 = !DILocation(line: 107, column: 7, scope: !2769)
!2774 = !DILocation(line: 110, column: 7, scope: !2769)
!2775 = !DILocation(line: 112, column: 7, scope: !2769)
!2776 = !DILocation(line: 117, column: 7, scope: !2769)
!2777 = !DILocation(line: 119, column: 7, scope: !2769)
!2778 = !DILocation(line: 124, column: 7, scope: !2769)
!2779 = !DILocation(line: 126, column: 7, scope: !2769)
!2780 = !DILocation(line: 131, column: 7, scope: !2769)
!2781 = !DILocation(line: 134, column: 7, scope: !2769)
!2782 = !DILocation(line: 139, column: 7, scope: !2769)
!2783 = !DILocation(line: 142, column: 7, scope: !2769)
!2784 = !DILocation(line: 147, column: 7, scope: !2769)
!2785 = !DILocation(line: 151, column: 7, scope: !2769)
!2786 = !DILocation(line: 156, column: 7, scope: !2769)
!2787 = !DILocation(line: 160, column: 7, scope: !2769)
!2788 = !DILocation(line: 167, column: 7, scope: !2769)
!2789 = !DILocation(line: 171, column: 7, scope: !2769)
!2790 = !DILocation(line: 173, column: 1, scope: !2690)
!2791 = distinct !DISubprogram(name: "version_etc_ar", scope: !197, file: !197, line: 180, type: !2792, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2693, !37, !37, !37, !2746}
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800}
!2795 = !DILocalVariable(name: "stream", arg: 1, scope: !2791, file: !197, line: 180, type: !2693)
!2796 = !DILocalVariable(name: "command_name", arg: 2, scope: !2791, file: !197, line: 181, type: !37)
!2797 = !DILocalVariable(name: "package", arg: 3, scope: !2791, file: !197, line: 181, type: !37)
!2798 = !DILocalVariable(name: "version", arg: 4, scope: !2791, file: !197, line: 182, type: !37)
!2799 = !DILocalVariable(name: "authors", arg: 5, scope: !2791, file: !197, line: 182, type: !2746)
!2800 = !DILocalVariable(name: "n_authors", scope: !2791, file: !197, line: 184, type: !102)
!2801 = !DILocation(line: 180, column: 23, scope: !2791)
!2802 = !DILocation(line: 181, column: 29, scope: !2791)
!2803 = !DILocation(line: 181, column: 55, scope: !2791)
!2804 = !DILocation(line: 182, column: 29, scope: !2791)
!2805 = !DILocation(line: 182, column: 59, scope: !2791)
!2806 = !DILocation(line: 184, column: 10, scope: !2791)
!2807 = !DILocation(line: 186, column: 8, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2791, file: !197, line: 186, column: 3)
!2809 = !DILocation(line: 0, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2808, file: !197, line: 186, column: 3)
!2811 = !DILocation(line: 186, column: 23, scope: !2810)
!2812 = !DILocation(line: 186, column: 3, scope: !2808)
!2813 = !DILocation(line: 186, column: 52, scope: !2810)
!2814 = distinct !{!2814, !2812, !2815}
!2815 = !DILocation(line: 187, column: 5, scope: !2808)
!2816 = !DILocation(line: 188, column: 3, scope: !2791)
!2817 = !DILocation(line: 189, column: 1, scope: !2791)
!2818 = distinct !DISubprogram(name: "version_etc_va", scope: !197, file: !197, line: 196, type: !2819, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !2828)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2693, !37, !37, !37, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !194, line: 189, size: 192, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2822, file: !194, line: 189, baseType: !6, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2822, file: !194, line: 189, baseType: !6, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2822, file: !194, line: 189, baseType: !29, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2822, file: !194, line: 189, baseType: !29, size: 64, offset: 128)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2829 = !DILocalVariable(name: "stream", arg: 1, scope: !2818, file: !197, line: 196, type: !2693)
!2830 = !DILocalVariable(name: "command_name", arg: 2, scope: !2818, file: !197, line: 197, type: !37)
!2831 = !DILocalVariable(name: "package", arg: 3, scope: !2818, file: !197, line: 197, type: !37)
!2832 = !DILocalVariable(name: "version", arg: 4, scope: !2818, file: !197, line: 198, type: !37)
!2833 = !DILocalVariable(name: "authors", arg: 5, scope: !2818, file: !197, line: 198, type: !2821)
!2834 = !DILocalVariable(name: "n_authors", scope: !2818, file: !197, line: 200, type: !102)
!2835 = !DILocalVariable(name: "authtab", scope: !2818, file: !197, line: 201, type: !2836)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !111)
!2837 = !DILocation(line: 196, column: 23, scope: !2818)
!2838 = !DILocation(line: 197, column: 29, scope: !2818)
!2839 = !DILocation(line: 197, column: 55, scope: !2818)
!2840 = !DILocation(line: 198, column: 29, scope: !2818)
!2841 = !DILocation(line: 198, column: 46, scope: !2818)
!2842 = !DILocation(line: 201, column: 3, scope: !2818)
!2843 = !DILocation(line: 201, column: 15, scope: !2818)
!2844 = !DILocation(line: 200, column: 10, scope: !2818)
!2845 = !DILocation(line: 205, column: 35, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !197, line: 203, column: 3)
!2847 = distinct !DILexicalBlock(scope: !2818, file: !197, line: 203, column: 3)
!2848 = !DILocation(line: 205, column: 14, scope: !2846)
!2849 = !DILocation(line: 205, column: 33, scope: !2846)
!2850 = !DILocation(line: 205, column: 67, scope: !2846)
!2851 = !DILocation(line: 203, column: 3, scope: !2847)
!2852 = !DILocation(line: 0, scope: !2846)
!2853 = !DILocation(line: 208, column: 3, scope: !2818)
!2854 = !DILocation(line: 210, column: 1, scope: !2818)
!2855 = distinct !DISubprogram(name: "version_etc", scope: !197, file: !197, line: 227, type: !2856, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2693, !37, !37, !37, null}
!2858 = !{!2859, !2860, !2861, !2862, !2863}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2855, file: !197, line: 227, type: !2693)
!2860 = !DILocalVariable(name: "command_name", arg: 2, scope: !2855, file: !197, line: 228, type: !37)
!2861 = !DILocalVariable(name: "package", arg: 3, scope: !2855, file: !197, line: 228, type: !37)
!2862 = !DILocalVariable(name: "version", arg: 4, scope: !2855, file: !197, line: 229, type: !37)
!2863 = !DILocalVariable(name: "authors", scope: !2855, file: !197, line: 231, type: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2865, line: 52, baseType: !2866)
!2865 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !170, line: 48, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !194, line: 231, baseType: !2868)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, size: 192, elements: !179)
!2869 = !DILocation(line: 227, column: 20, scope: !2855)
!2870 = !DILocation(line: 228, column: 26, scope: !2855)
!2871 = !DILocation(line: 228, column: 52, scope: !2855)
!2872 = !DILocation(line: 229, column: 26, scope: !2855)
!2873 = !DILocation(line: 231, column: 3, scope: !2855)
!2874 = !DILocation(line: 231, column: 11, scope: !2855)
!2875 = !DILocation(line: 233, column: 3, scope: !2855)
!2876 = !DILocation(line: 234, column: 3, scope: !2855)
!2877 = !DILocation(line: 235, column: 3, scope: !2855)
!2878 = !DILocation(line: 236, column: 1, scope: !2855)
!2879 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !197, file: !197, line: 239, type: !873, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !50)
!2880 = !DILocation(line: 245, column: 3, scope: !2879)
!2881 = !DILocation(line: 251, column: 3, scope: !2879)
!2882 = !DILocation(line: 256, column: 3, scope: !2879)
!2883 = !DILocation(line: 258, column: 1, scope: !2879)
!2884 = distinct !DISubprogram(name: "xnmalloc", scope: !205, file: !205, line: 99, type: !2885, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!29, !102, !102}
!2887 = !{!2888, !2889}
!2888 = !DILocalVariable(name: "n", arg: 1, scope: !2884, file: !205, line: 99, type: !102)
!2889 = !DILocalVariable(name: "s", arg: 2, scope: !2884, file: !205, line: 99, type: !102)
!2890 = !DILocation(line: 99, column: 18, scope: !2884)
!2891 = !DILocation(line: 99, column: 28, scope: !2884)
!2892 = !DILocation(line: 101, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2884, file: !205, line: 101, column: 7)
!2894 = !DILocation(line: 101, column: 7, scope: !2884)
!2895 = !DILocation(line: 102, column: 5, scope: !2893)
!2896 = !DILocation(line: 103, column: 21, scope: !2884)
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !2899, line: 39, type: !102)
!2898 = distinct !DISubprogram(name: "xmalloc", scope: !2899, file: !2899, line: 39, type: !2900, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2902)
!2899 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!29, !102}
!2902 = !{!2897, !2903}
!2903 = !DILocalVariable(name: "p", scope: !2898, file: !2899, line: 41, type: !29)
!2904 = !DILocation(line: 39, column: 17, scope: !2898, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 103, column: 10, scope: !2884)
!2906 = !DILocation(line: 41, column: 13, scope: !2898, inlinedAt: !2905)
!2907 = !DILocation(line: 41, column: 9, scope: !2898, inlinedAt: !2905)
!2908 = !DILocation(line: 42, column: 8, scope: !2909, inlinedAt: !2905)
!2909 = distinct !DILexicalBlock(scope: !2898, file: !2899, line: 42, column: 7)
!2910 = !DILocation(line: 42, column: 15, scope: !2909, inlinedAt: !2905)
!2911 = !DILocation(line: 42, column: 10, scope: !2909, inlinedAt: !2905)
!2912 = !DILocation(line: 43, column: 5, scope: !2909, inlinedAt: !2905)
!2913 = !DILocation(line: 103, column: 3, scope: !2884)
!2914 = !DILocation(line: 39, column: 17, scope: !2898)
!2915 = !DILocation(line: 41, column: 13, scope: !2898)
!2916 = !DILocation(line: 41, column: 9, scope: !2898)
!2917 = !DILocation(line: 42, column: 8, scope: !2909)
!2918 = !DILocation(line: 42, column: 15, scope: !2909)
!2919 = !DILocation(line: 42, column: 10, scope: !2909)
!2920 = !DILocation(line: 43, column: 5, scope: !2909)
!2921 = !DILocation(line: 44, column: 3, scope: !2898)
!2922 = distinct !DISubprogram(name: "xnrealloc", scope: !205, file: !205, line: 112, type: !2923, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!29, !29, !102, !102}
!2925 = !{!2926, !2927, !2928}
!2926 = !DILocalVariable(name: "p", arg: 1, scope: !2922, file: !205, line: 112, type: !29)
!2927 = !DILocalVariable(name: "n", arg: 2, scope: !2922, file: !205, line: 112, type: !102)
!2928 = !DILocalVariable(name: "s", arg: 3, scope: !2922, file: !205, line: 112, type: !102)
!2929 = !DILocation(line: 112, column: 18, scope: !2922)
!2930 = !DILocation(line: 112, column: 28, scope: !2922)
!2931 = !DILocation(line: 112, column: 38, scope: !2922)
!2932 = !DILocation(line: 114, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !205, line: 114, column: 7)
!2934 = !DILocation(line: 114, column: 7, scope: !2922)
!2935 = !DILocation(line: 115, column: 5, scope: !2933)
!2936 = !DILocation(line: 116, column: 25, scope: !2922)
!2937 = !DILocalVariable(name: "p", arg: 1, scope: !2938, file: !2899, line: 51, type: !29)
!2938 = distinct !DISubprogram(name: "xrealloc", scope: !2899, file: !2899, line: 51, type: !2939, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!29, !29, !102}
!2941 = !{!2937, !2942}
!2942 = !DILocalVariable(name: "n", arg: 2, scope: !2938, file: !2899, line: 51, type: !102)
!2943 = !DILocation(line: 51, column: 17, scope: !2938, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 116, column: 10, scope: !2922)
!2945 = !DILocation(line: 51, column: 27, scope: !2938, inlinedAt: !2944)
!2946 = !DILocation(line: 53, column: 8, scope: !2947, inlinedAt: !2944)
!2947 = distinct !DILexicalBlock(scope: !2938, file: !2899, line: 53, column: 7)
!2948 = !DILocation(line: 53, column: 13, scope: !2947, inlinedAt: !2944)
!2949 = !DILocation(line: 53, column: 10, scope: !2947, inlinedAt: !2944)
!2950 = !DILocation(line: 57, column: 7, scope: !2951, inlinedAt: !2944)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !2899, line: 54, column: 5)
!2952 = !DILocation(line: 58, column: 7, scope: !2951, inlinedAt: !2944)
!2953 = !DILocation(line: 61, column: 7, scope: !2938, inlinedAt: !2944)
!2954 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !2944)
!2955 = distinct !DILexicalBlock(scope: !2938, file: !2899, line: 62, column: 7)
!2956 = !DILocation(line: 62, column: 13, scope: !2955, inlinedAt: !2944)
!2957 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !2944)
!2958 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !2944)
!2959 = !DILocation(line: 0, scope: !2938, inlinedAt: !2944)
!2960 = !DILocation(line: 116, column: 3, scope: !2922)
!2961 = !DILocation(line: 51, column: 17, scope: !2938)
!2962 = !DILocation(line: 51, column: 27, scope: !2938)
!2963 = !DILocation(line: 53, column: 8, scope: !2947)
!2964 = !DILocation(line: 53, column: 13, scope: !2947)
!2965 = !DILocation(line: 53, column: 10, scope: !2947)
!2966 = !DILocation(line: 57, column: 7, scope: !2951)
!2967 = !DILocation(line: 58, column: 7, scope: !2951)
!2968 = !DILocation(line: 61, column: 7, scope: !2938)
!2969 = !DILocation(line: 62, column: 8, scope: !2955)
!2970 = !DILocation(line: 62, column: 13, scope: !2955)
!2971 = !DILocation(line: 62, column: 10, scope: !2955)
!2972 = !DILocation(line: 63, column: 5, scope: !2955)
!2973 = !DILocation(line: 0, scope: !2938)
!2974 = !DILocation(line: 65, column: 1, scope: !2938)
!2975 = !DILocation(line: 174, column: 19, scope: !206)
!2976 = !DILocation(line: 174, column: 30, scope: !206)
!2977 = !DILocation(line: 174, column: 41, scope: !206)
!2978 = !DILocation(line: 176, column: 14, scope: !206)
!2979 = !DILocation(line: 176, column: 10, scope: !206)
!2980 = !DILocation(line: 178, column: 9, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !206, file: !205, line: 178, column: 7)
!2982 = !DILocation(line: 178, column: 7, scope: !206)
!2983 = !DILocation(line: 180, column: 13, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !205, line: 180, column: 11)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !205, line: 179, column: 5)
!2986 = !DILocation(line: 180, column: 11, scope: !2985)
!2987 = !DILocation(line: 188, column: 30, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !205, line: 181, column: 9)
!2989 = !DILocation(line: 189, column: 16, scope: !2988)
!2990 = !DILocation(line: 189, column: 13, scope: !2988)
!2991 = !DILocation(line: 190, column: 9, scope: !2988)
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !DILocation(line: 191, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2985, file: !205, line: 191, column: 11)
!2995 = !DILocation(line: 191, column: 11, scope: !2985)
!2996 = !DILocation(line: 206, column: 7, scope: !206)
!2997 = !DILocation(line: 207, column: 25, scope: !206)
!2998 = !DILocation(line: 51, column: 17, scope: !2938, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 207, column: 10, scope: !206)
!3000 = !DILocation(line: 51, column: 27, scope: !2938, inlinedAt: !2999)
!3001 = !DILocation(line: 53, column: 10, scope: !2947, inlinedAt: !2999)
!3002 = !DILocation(line: 192, column: 9, scope: !2994)
!3003 = !DILocation(line: 200, column: 69, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !205, line: 200, column: 11)
!3005 = distinct !DILexicalBlock(scope: !2981, file: !205, line: 195, column: 5)
!3006 = !DILocation(line: 201, column: 11, scope: !3004)
!3007 = !DILocation(line: 200, column: 11, scope: !3005)
!3008 = !DILocation(line: 202, column: 9, scope: !3004)
!3009 = !DILocation(line: 203, column: 14, scope: !3005)
!3010 = !DILocation(line: 203, column: 18, scope: !3005)
!3011 = !DILocation(line: 203, column: 9, scope: !3005)
!3012 = !DILocation(line: 53, column: 8, scope: !2947, inlinedAt: !2999)
!3013 = !DILocation(line: 57, column: 7, scope: !2951, inlinedAt: !2999)
!3014 = !DILocation(line: 58, column: 7, scope: !2951, inlinedAt: !2999)
!3015 = !DILocation(line: 61, column: 7, scope: !2938, inlinedAt: !2999)
!3016 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !2999)
!3017 = !DILocation(line: 62, column: 13, scope: !2955, inlinedAt: !2999)
!3018 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !2999)
!3019 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !2999)
!3020 = !DILocation(line: 0, scope: !2938, inlinedAt: !2999)
!3021 = !DILocation(line: 207, column: 3, scope: !206)
!3022 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !1974, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3023)
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !205, line: 216, type: !102)
!3025 = !DILocation(line: 216, column: 20, scope: !3022)
!3026 = !DILocation(line: 39, column: 17, scope: !2898, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 218, column: 10, scope: !3022)
!3028 = !DILocation(line: 41, column: 13, scope: !2898, inlinedAt: !3027)
!3029 = !DILocation(line: 41, column: 9, scope: !2898, inlinedAt: !3027)
!3030 = !DILocation(line: 42, column: 8, scope: !2909, inlinedAt: !3027)
!3031 = !DILocation(line: 42, column: 15, scope: !2909, inlinedAt: !3027)
!3032 = !DILocation(line: 42, column: 10, scope: !2909, inlinedAt: !3027)
!3033 = !DILocation(line: 43, column: 5, scope: !2909, inlinedAt: !3027)
!3034 = !DILocation(line: 218, column: 3, scope: !3022)
!3035 = distinct !DISubprogram(name: "x2realloc", scope: !2899, file: !2899, line: 74, type: !3036, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!29, !29, !209}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !2899, line: 74, type: !29)
!3040 = !DILocalVariable(name: "pn", arg: 2, scope: !3035, file: !2899, line: 74, type: !209)
!3041 = !DILocation(line: 74, column: 18, scope: !3035)
!3042 = !DILocation(line: 74, column: 29, scope: !3035)
!3043 = !DILocation(line: 174, column: 19, scope: !206, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 76, column: 10, scope: !3035)
!3045 = !DILocation(line: 174, column: 30, scope: !206, inlinedAt: !3044)
!3046 = !DILocation(line: 174, column: 41, scope: !206, inlinedAt: !3044)
!3047 = !DILocation(line: 176, column: 14, scope: !206, inlinedAt: !3044)
!3048 = !DILocation(line: 176, column: 10, scope: !206, inlinedAt: !3044)
!3049 = !DILocation(line: 178, column: 9, scope: !2981, inlinedAt: !3044)
!3050 = !DILocation(line: 178, column: 7, scope: !206, inlinedAt: !3044)
!3051 = !DILocation(line: 180, column: 13, scope: !2984, inlinedAt: !3044)
!3052 = !DILocation(line: 180, column: 11, scope: !2985, inlinedAt: !3044)
!3053 = !DILocation(line: 191, column: 11, scope: !2994, inlinedAt: !3044)
!3054 = !DILocation(line: 191, column: 11, scope: !2985, inlinedAt: !3044)
!3055 = !DILocation(line: 206, column: 7, scope: !206, inlinedAt: !3044)
!3056 = !DILocation(line: 51, column: 17, scope: !2938, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 207, column: 10, scope: !206, inlinedAt: !3044)
!3058 = !DILocation(line: 51, column: 27, scope: !2938, inlinedAt: !3057)
!3059 = !DILocation(line: 53, column: 10, scope: !2947, inlinedAt: !3057)
!3060 = !DILocation(line: 192, column: 9, scope: !2994, inlinedAt: !3044)
!3061 = !DILocation(line: 201, column: 11, scope: !3004, inlinedAt: !3044)
!3062 = !DILocation(line: 200, column: 11, scope: !3005, inlinedAt: !3044)
!3063 = !DILocation(line: 202, column: 9, scope: !3004, inlinedAt: !3044)
!3064 = !DILocation(line: 203, column: 14, scope: !3005, inlinedAt: !3044)
!3065 = !DILocation(line: 203, column: 18, scope: !3005, inlinedAt: !3044)
!3066 = !DILocation(line: 203, column: 9, scope: !3005, inlinedAt: !3044)
!3067 = !DILocation(line: 53, column: 8, scope: !2947, inlinedAt: !3057)
!3068 = !DILocation(line: 57, column: 7, scope: !2951, inlinedAt: !3057)
!3069 = !DILocation(line: 58, column: 7, scope: !2951, inlinedAt: !3057)
!3070 = !DILocation(line: 61, column: 7, scope: !2938, inlinedAt: !3057)
!3071 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !3057)
!3072 = !DILocation(line: 62, column: 13, scope: !2955, inlinedAt: !3057)
!3073 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !3057)
!3074 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !3057)
!3075 = !DILocation(line: 0, scope: !2938, inlinedAt: !3057)
!3076 = !DILocation(line: 76, column: 3, scope: !3035)
!3077 = distinct !DISubprogram(name: "xzalloc", scope: !2899, file: !2899, line: 84, type: !2900, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3078)
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "s", arg: 1, scope: !3077, file: !2899, line: 84, type: !102)
!3080 = !DILocation(line: 84, column: 17, scope: !3077)
!3081 = !DILocation(line: 39, column: 17, scope: !2898, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 86, column: 18, scope: !3077)
!3083 = !DILocation(line: 41, column: 13, scope: !2898, inlinedAt: !3082)
!3084 = !DILocation(line: 41, column: 9, scope: !2898, inlinedAt: !3082)
!3085 = !DILocation(line: 42, column: 8, scope: !2909, inlinedAt: !3082)
!3086 = !DILocation(line: 42, column: 15, scope: !2909, inlinedAt: !3082)
!3087 = !DILocation(line: 42, column: 10, scope: !2909, inlinedAt: !3082)
!3088 = !DILocation(line: 43, column: 5, scope: !2909, inlinedAt: !3082)
!3089 = !DILocation(line: 86, column: 10, scope: !3077)
!3090 = !DILocation(line: 86, column: 3, scope: !3077)
!3091 = distinct !DISubprogram(name: "xcalloc", scope: !2899, file: !2899, line: 93, type: !2885, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !2899, line: 93, type: !102)
!3094 = !DILocalVariable(name: "s", arg: 2, scope: !3091, file: !2899, line: 93, type: !102)
!3095 = !DILocalVariable(name: "p", scope: !3091, file: !2899, line: 95, type: !29)
!3096 = !DILocation(line: 93, column: 17, scope: !3091)
!3097 = !DILocation(line: 93, column: 27, scope: !3091)
!3098 = !DILocation(line: 100, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3091, file: !2899, line: 100, column: 7)
!3100 = !DILocation(line: 101, column: 7, scope: !3099)
!3101 = !DILocation(line: 101, column: 18, scope: !3099)
!3102 = !DILocation(line: 95, column: 9, scope: !3091)
!3103 = !DILocation(line: 101, column: 16, scope: !3099)
!3104 = !DILocation(line: 100, column: 7, scope: !3091)
!3105 = !DILocation(line: 102, column: 5, scope: !3099)
!3106 = !DILocation(line: 103, column: 3, scope: !3091)
!3107 = distinct !DISubprogram(name: "xmemdup", scope: !2899, file: !2899, line: 111, type: !3108, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3112)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!29, !3110, !102}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3112 = !{!3113, !3114}
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3107, file: !2899, line: 111, type: !3110)
!3114 = !DILocalVariable(name: "s", arg: 2, scope: !3107, file: !2899, line: 111, type: !102)
!3115 = !DILocation(line: 111, column: 22, scope: !3107)
!3116 = !DILocation(line: 111, column: 32, scope: !3107)
!3117 = !DILocation(line: 39, column: 17, scope: !2898, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 113, column: 18, scope: !3107)
!3119 = !DILocation(line: 41, column: 13, scope: !2898, inlinedAt: !3118)
!3120 = !DILocation(line: 41, column: 9, scope: !2898, inlinedAt: !3118)
!3121 = !DILocation(line: 42, column: 8, scope: !2909, inlinedAt: !3118)
!3122 = !DILocation(line: 42, column: 15, scope: !2909, inlinedAt: !3118)
!3123 = !DILocation(line: 42, column: 10, scope: !2909, inlinedAt: !3118)
!3124 = !DILocation(line: 43, column: 5, scope: !2909, inlinedAt: !3118)
!3125 = !DILocation(line: 113, column: 10, scope: !3107)
!3126 = !DILocation(line: 113, column: 3, scope: !3107)
!3127 = distinct !DISubprogram(name: "xstrdup", scope: !2899, file: !2899, line: 119, type: !2180, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3128)
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "string", arg: 1, scope: !3127, file: !2899, line: 119, type: !37)
!3130 = !DILocation(line: 119, column: 22, scope: !3127)
!3131 = !DILocation(line: 121, column: 27, scope: !3127)
!3132 = !DILocation(line: 121, column: 43, scope: !3127)
!3133 = !DILocation(line: 111, column: 22, scope: !3107, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 121, column: 10, scope: !3127)
!3135 = !DILocation(line: 111, column: 32, scope: !3107, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 17, scope: !2898, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 113, column: 18, scope: !3107, inlinedAt: !3134)
!3138 = !DILocation(line: 41, column: 13, scope: !2898, inlinedAt: !3137)
!3139 = !DILocation(line: 41, column: 9, scope: !2898, inlinedAt: !3137)
!3140 = !DILocation(line: 42, column: 8, scope: !2909, inlinedAt: !3137)
!3141 = !DILocation(line: 42, column: 15, scope: !2909, inlinedAt: !3137)
!3142 = !DILocation(line: 42, column: 10, scope: !2909, inlinedAt: !3137)
!3143 = !DILocation(line: 43, column: 5, scope: !2909, inlinedAt: !3137)
!3144 = !DILocation(line: 113, column: 10, scope: !3107, inlinedAt: !3134)
!3145 = !DILocation(line: 121, column: 3, scope: !3127)
!3146 = distinct !DISubprogram(name: "xalloc_die", scope: !3147, file: !3147, line: 32, type: !873, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !218, retainedNodes: !50)
!3147 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3148 = !DILocation(line: 34, column: 10, scope: !3146)
!3149 = !DILocation(line: 34, column: 33, scope: !3146)
!3150 = !DILocation(line: 34, column: 3, scope: !3146)
!3151 = !DILocation(line: 40, column: 3, scope: !3146)
!3152 = distinct !DISubprogram(name: "rpl_calloc", scope: !3153, file: !3153, line: 42, type: !2885, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3154)
!3153 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !3153, line: 42, type: !102)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !3153, line: 42, type: !102)
!3157 = !DILocalVariable(name: "result", scope: !3152, file: !3153, line: 44, type: !29)
!3158 = !DILocalVariable(name: "bytes", scope: !3159, file: !3153, line: 56, type: !102)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3153, line: 53, column: 5)
!3160 = distinct !DILexicalBlock(scope: !3152, file: !3153, line: 47, column: 7)
!3161 = !DILocation(line: 42, column: 20, scope: !3152)
!3162 = !DILocation(line: 42, column: 30, scope: !3152)
!3163 = !DILocation(line: 47, column: 9, scope: !3160)
!3164 = !DILocation(line: 47, column: 19, scope: !3160)
!3165 = !DILocation(line: 47, column: 14, scope: !3160)
!3166 = !DILocation(line: 56, column: 24, scope: !3159)
!3167 = !DILocation(line: 56, column: 14, scope: !3159)
!3168 = !DILocation(line: 57, column: 17, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3159, file: !3153, line: 57, column: 11)
!3170 = !DILocation(line: 57, column: 21, scope: !3169)
!3171 = !DILocation(line: 57, column: 11, scope: !3159)
!3172 = !DILocation(line: 59, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !3153, line: 58, column: 9)
!3174 = !DILocation(line: 59, column: 17, scope: !3173)
!3175 = !DILocation(line: 65, column: 12, scope: !3152)
!3176 = !DILocation(line: 44, column: 9, scope: !3152)
!3177 = !DILocation(line: 72, column: 3, scope: !3152)
!3178 = !DILocation(line: 0, scope: !3173)
!3179 = !DILocation(line: 73, column: 1, scope: !3152)
!3180 = !DILocation(line: 276, column: 16, scope: !158)
!3181 = !DILocation(line: 276, column: 24, scope: !158)
!3182 = !DILocation(line: 278, column: 3, scope: !158)
!3183 = !DILocation(line: 278, column: 11, scope: !158)
!3184 = !DILocation(line: 279, column: 7, scope: !158)
!3185 = !DILocation(line: 280, column: 3, scope: !158)
!3186 = !DILocation(line: 281, column: 3, scope: !158)
!3187 = !DILocation(line: 0, scope: !192)
!3188 = !DILocation(line: 326, column: 22, scope: !183)
!3189 = !DILocation(line: 326, column: 13, scope: !183)
!3190 = !DILocation(line: 340, column: 18, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !183, file: !159, line: 340, column: 13)
!3192 = !DILocation(line: 340, column: 15, scope: !3191)
!3193 = !DILocation(line: 340, column: 13, scope: !183)
!3194 = !DILocation(line: 342, column: 22, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !159, line: 341, column: 11)
!3196 = !DILocation(line: 343, column: 19, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3195, file: !159, line: 343, column: 17)
!3198 = !DILocation(line: 343, column: 29, scope: !3197)
!3199 = !DILocation(line: 343, column: 32, scope: !3197)
!3200 = !DILocation(line: 343, column: 38, scope: !3197)
!3201 = !DILocation(line: 343, column: 17, scope: !3195)
!3202 = !DILocation(line: 345, column: 36, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !159, line: 344, column: 15)
!3204 = !DILocation(line: 361, column: 25, scope: !187)
!3205 = !DILocation(line: 353, column: 26, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3197, file: !159, line: 352, column: 15)
!3207 = !DILocation(line: 354, column: 28, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3206, file: !159, line: 354, column: 21)
!3209 = !DILocation(line: 354, column: 21, scope: !3206)
!3210 = !DILocation(line: 356, column: 36, scope: !3206)
!3211 = !DILocation(line: 360, column: 20, scope: !3191)
!3212 = !DILocation(line: 361, column: 28, scope: !187)
!3213 = !DILocation(line: 0, scope: !3191)
!3214 = !DILocation(line: 361, column: 15, scope: !187)
!3215 = !DILocation(line: 363, column: 25, scope: !186)
!3216 = !DILocation(line: 363, column: 17, scope: !186)
!3217 = !DILocation(line: 364, column: 23, scope: !190)
!3218 = !DILocation(line: 364, column: 27, scope: !190)
!3219 = !DILocation(line: 364, column: 60, scope: !190)
!3220 = !DILocation(line: 364, column: 30, scope: !190)
!3221 = !DILocation(line: 364, column: 74, scope: !190)
!3222 = !DILocation(line: 364, column: 17, scope: !186)
!3223 = !DILocation(line: 366, column: 35, scope: !189)
!3224 = !DILocation(line: 366, column: 21, scope: !189)
!3225 = !DILocation(line: 367, column: 17, scope: !189)
!3226 = !DILocation(line: 368, column: 23, scope: !189)
!3227 = !DILocation(line: 370, column: 15, scope: !189)
!3228 = !DILocation(line: 408, column: 19, scope: !192)
!3229 = !DILocation(line: 408, column: 15, scope: !192)
!3230 = !DILocation(line: 409, column: 18, scope: !192)
!3231 = !DILocation(line: 416, column: 3, scope: !158)
!3232 = !DILocation(line: 418, column: 1, scope: !158)
!3233 = !DILocation(line: 417, column: 3, scope: !158)
!3234 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3235, file: !3235, line: 385, type: !3236, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !3250)
!3235 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!102, !3238, !37, !102, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1136, line: 6, baseType: !3241)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1138, line: 21, baseType: !3242)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 13, size: 64, elements: !3243)
!3243 = !{!3244, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3242, file: !1138, line: 15, baseType: !40, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3242, file: !1138, line: 20, baseType: !3246, size: 32, offset: 32)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3242, file: !1138, line: 16, size: 32, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3246, file: !1138, line: 18, baseType: !6, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3246, file: !1138, line: 19, baseType: !1147, size: 32)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3251 = !DILocalVariable(name: "pwc", arg: 1, scope: !3234, file: !3235, line: 385, type: !3238)
!3252 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !3235, line: 385, type: !37)
!3253 = !DILocalVariable(name: "n", arg: 3, scope: !3234, file: !3235, line: 385, type: !102)
!3254 = !DILocalVariable(name: "ps", arg: 4, scope: !3234, file: !3235, line: 385, type: !3239)
!3255 = !DILocalVariable(name: "ret", scope: !3234, file: !3235, line: 387, type: !102)
!3256 = !DILocalVariable(name: "wc", scope: !3234, file: !3235, line: 388, type: !1152)
!3257 = !DILocalVariable(name: "uc", scope: !3258, file: !3235, line: 449, type: !996)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3235, line: 448, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3234, file: !3235, line: 447, column: 7)
!3260 = !DILocation(line: 385, column: 23, scope: !3234)
!3261 = !DILocation(line: 385, column: 40, scope: !3234)
!3262 = !DILocation(line: 385, column: 50, scope: !3234)
!3263 = !DILocation(line: 385, column: 64, scope: !3234)
!3264 = !DILocation(line: 388, column: 3, scope: !3234)
!3265 = !DILocation(line: 404, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3234, file: !3235, line: 404, column: 7)
!3267 = !DILocation(line: 404, column: 7, scope: !3234)
!3268 = !DILocation(line: 439, column: 9, scope: !3234)
!3269 = !DILocation(line: 387, column: 10, scope: !3234)
!3270 = !DILocation(line: 447, column: 19, scope: !3259)
!3271 = !DILocation(line: 447, column: 31, scope: !3259)
!3272 = !DILocation(line: 447, column: 26, scope: !3259)
!3273 = !DILocation(line: 447, column: 41, scope: !3259)
!3274 = !DILocation(line: 447, column: 7, scope: !3234)
!3275 = !DILocation(line: 449, column: 26, scope: !3258)
!3276 = !DILocation(line: 449, column: 21, scope: !3258)
!3277 = !DILocation(line: 450, column: 14, scope: !3258)
!3278 = !DILocation(line: 450, column: 12, scope: !3258)
!3279 = !DILocation(line: 0, scope: !3258)
!3280 = !DILocation(line: 456, column: 1, scope: !3234)
!3281 = distinct !DISubprogram(name: "close_stream", scope: !3282, file: !3282, line: 56, type: !3283, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !3319)
!3282 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!40, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2695, line: 7, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2697, line: 49, size: 1728, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3287, file: !2697, line: 51, baseType: !40, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3287, file: !2697, line: 54, baseType: !27, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3287, file: !2697, line: 55, baseType: !27, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3287, file: !2697, line: 56, baseType: !27, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3287, file: !2697, line: 57, baseType: !27, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3287, file: !2697, line: 58, baseType: !27, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3287, file: !2697, line: 59, baseType: !27, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3287, file: !2697, line: 60, baseType: !27, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3287, file: !2697, line: 61, baseType: !27, size: 64, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3287, file: !2697, line: 64, baseType: !27, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3287, file: !2697, line: 65, baseType: !27, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3287, file: !2697, line: 66, baseType: !27, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3287, file: !2697, line: 68, baseType: !2712, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3287, file: !2697, line: 70, baseType: !3303, size: 64, offset: 832)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3287, file: !2697, line: 72, baseType: !40, size: 32, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3287, file: !2697, line: 73, baseType: !40, size: 32, offset: 928)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3287, file: !2697, line: 74, baseType: !2719, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3287, file: !2697, line: 77, baseType: !101, size: 16, offset: 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3287, file: !2697, line: 78, baseType: !2724, size: 8, offset: 1040)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3287, file: !2697, line: 79, baseType: !2726, size: 8, offset: 1048)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3287, file: !2697, line: 81, baseType: !2728, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3287, file: !2697, line: 89, baseType: !2731, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3287, file: !2697, line: 91, baseType: !2733, size: 64, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3287, file: !2697, line: 92, baseType: !2736, size: 64, offset: 1280)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3287, file: !2697, line: 93, baseType: !3303, size: 64, offset: 1344)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3287, file: !2697, line: 94, baseType: !29, size: 64, offset: 1408)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3287, file: !2697, line: 95, baseType: !102, size: 64, offset: 1472)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3287, file: !2697, line: 96, baseType: !40, size: 32, offset: 1536)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3287, file: !2697, line: 98, baseType: !2743, size: 160, offset: 1568)
!3319 = !{!3320, !3321, !3323, !3324}
!3320 = !DILocalVariable(name: "stream", arg: 1, scope: !3281, file: !3282, line: 56, type: !3285)
!3321 = !DILocalVariable(name: "some_pending", scope: !3281, file: !3282, line: 58, type: !3322)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3323 = !DILocalVariable(name: "prev_fail", scope: !3281, file: !3282, line: 59, type: !3322)
!3324 = !DILocalVariable(name: "fclose_fail", scope: !3281, file: !3282, line: 60, type: !3322)
!3325 = !DILocation(line: 56, column: 21, scope: !3281)
!3326 = !DILocation(line: 58, column: 30, scope: !3281)
!3327 = !DILocalVariable(name: "__stream", arg: 1, scope: !3328, file: !3329, line: 135, type: !3285)
!3328 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3329, file: !3329, line: 135, type: !3283, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !3330)
!3329 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3330 = !{!3327}
!3331 = !DILocation(line: 135, column: 1, scope: !3328, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 59, column: 27, scope: !3281)
!3333 = !DILocation(line: 137, column: 10, scope: !3328, inlinedAt: !3332)
!3334 = !{!3335, !745, i64 0}
!3335 = !{!"_IO_FILE", !745, i64 0, !664, i64 8, !664, i64 16, !664, i64 24, !664, i64 32, !664, i64 40, !664, i64 48, !664, i64 56, !664, i64 64, !664, i64 72, !664, i64 80, !664, i64 88, !664, i64 96, !664, i64 104, !745, i64 112, !745, i64 116, !2019, i64 120, !1393, i64 128, !665, i64 130, !665, i64 131, !664, i64 136, !2019, i64 144, !664, i64 152, !664, i64 160, !664, i64 168, !664, i64 176, !2019, i64 184, !745, i64 192, !665, i64 196}
!3336 = !DILocation(line: 59, column: 43, scope: !3281)
!3337 = !DILocation(line: 60, column: 29, scope: !3281)
!3338 = !DILocation(line: 60, column: 45, scope: !3281)
!3339 = !DILocation(line: 70, column: 17, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3281, file: !3282, line: 70, column: 7)
!3341 = !DILocation(line: 58, column: 50, scope: !3281)
!3342 = !DILocation(line: 70, column: 33, scope: !3340)
!3343 = !DILocation(line: 70, column: 53, scope: !3340)
!3344 = !DILocation(line: 70, column: 59, scope: !3340)
!3345 = !DILocation(line: 70, column: 7, scope: !3281)
!3346 = !DILocation(line: 72, column: 11, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3340, file: !3282, line: 71, column: 5)
!3348 = !DILocation(line: 73, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !3282, line: 72, column: 11)
!3350 = !DILocation(line: 73, column: 15, scope: !3349)
!3351 = !DILocation(line: 0, scope: !3281)
!3352 = !DILocation(line: 78, column: 1, scope: !3281)
!3353 = distinct !DISubprogram(name: "hard_locale", scope: !3354, file: !3354, line: 38, type: !3355, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3357)
!3354 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!60, !40}
!3357 = !{!3358, !3359, !3360}
!3358 = !DILocalVariable(name: "category", arg: 1, scope: !3353, file: !3354, line: 38, type: !40)
!3359 = !DILocalVariable(name: "hard", scope: !3353, file: !3354, line: 40, type: !60)
!3360 = !DILocalVariable(name: "p", scope: !3353, file: !3354, line: 41, type: !37)
!3361 = !DILocation(line: 38, column: 18, scope: !3353)
!3362 = !DILocation(line: 40, column: 8, scope: !3353)
!3363 = !DILocation(line: 41, column: 19, scope: !3353)
!3364 = !DILocation(line: 41, column: 15, scope: !3353)
!3365 = !DILocation(line: 43, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !3354, line: 43, column: 7)
!3367 = !DILocation(line: 43, column: 7, scope: !3353)
!3368 = !DILocation(line: 47, column: 15, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3354, line: 47, column: 15)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3354, line: 46, column: 9)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3354, line: 45, column: 11)
!3372 = distinct !DILexicalBlock(scope: !3366, file: !3354, line: 44, column: 5)
!3373 = !DILocation(line: 47, column: 31, scope: !3369)
!3374 = !DILocation(line: 47, column: 36, scope: !3369)
!3375 = !DILocation(line: 47, column: 39, scope: !3369)
!3376 = !DILocation(line: 47, column: 59, scope: !3369)
!3377 = !DILocation(line: 47, column: 15, scope: !3370)
!3378 = !DILocation(line: 48, column: 13, scope: !3369)
!3379 = !DILocation(line: 71, column: 3, scope: !3353)
!3380 = distinct !DISubprogram(name: "locale_charset", scope: !3381, file: !3381, line: 687, type: !3382, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !3384)
!3381 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!37}
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "codeset", scope: !3380, file: !3381, line: 689, type: !37)
!3386 = !DILocation(line: 696, column: 13, scope: !3380)
!3387 = !DILocation(line: 689, column: 15, scope: !3380)
!3388 = !DILocation(line: 754, column: 15, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3380, file: !3381, line: 754, column: 7)
!3390 = !DILocation(line: 754, column: 7, scope: !3380)
!3391 = !DILocation(line: 907, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3381, line: 907, column: 13)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !3381, line: 897, column: 7)
!3394 = distinct !DILexicalBlock(scope: !3380, file: !3381, line: 856, column: 3)
!3395 = !DILocation(line: 907, column: 24, scope: !3392)
!3396 = !DILocation(line: 907, column: 13, scope: !3393)
!3397 = !DILocation(line: 995, column: 3, scope: !3380)
!3398 = distinct !DISubprogram(name: "rpl_fclose", scope: !3399, file: !3399, line: 58, type: !3400, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !618, retainedNodes: !3436)
!3399 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!40, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2695, line: 7, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2697, line: 49, size: 1728, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3404, file: !2697, line: 51, baseType: !40, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3404, file: !2697, line: 54, baseType: !27, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3404, file: !2697, line: 55, baseType: !27, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3404, file: !2697, line: 56, baseType: !27, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3404, file: !2697, line: 57, baseType: !27, size: 64, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3404, file: !2697, line: 58, baseType: !27, size: 64, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3404, file: !2697, line: 59, baseType: !27, size: 64, offset: 384)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3404, file: !2697, line: 60, baseType: !27, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3404, file: !2697, line: 61, baseType: !27, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3404, file: !2697, line: 64, baseType: !27, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3404, file: !2697, line: 65, baseType: !27, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3404, file: !2697, line: 66, baseType: !27, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3404, file: !2697, line: 68, baseType: !2712, size: 64, offset: 768)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3404, file: !2697, line: 70, baseType: !3420, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3404, file: !2697, line: 72, baseType: !40, size: 32, offset: 896)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3404, file: !2697, line: 73, baseType: !40, size: 32, offset: 928)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3404, file: !2697, line: 74, baseType: !2719, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3404, file: !2697, line: 77, baseType: !101, size: 16, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3404, file: !2697, line: 78, baseType: !2724, size: 8, offset: 1040)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3404, file: !2697, line: 79, baseType: !2726, size: 8, offset: 1048)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3404, file: !2697, line: 81, baseType: !2728, size: 64, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3404, file: !2697, line: 89, baseType: !2731, size: 64, offset: 1152)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3404, file: !2697, line: 91, baseType: !2733, size: 64, offset: 1216)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3404, file: !2697, line: 92, baseType: !2736, size: 64, offset: 1280)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3404, file: !2697, line: 93, baseType: !3420, size: 64, offset: 1344)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3404, file: !2697, line: 94, baseType: !29, size: 64, offset: 1408)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3404, file: !2697, line: 95, baseType: !102, size: 64, offset: 1472)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3404, file: !2697, line: 96, baseType: !40, size: 32, offset: 1536)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3404, file: !2697, line: 98, baseType: !2743, size: 160, offset: 1568)
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DILocalVariable(name: "fp", arg: 1, scope: !3398, file: !3399, line: 58, type: !3402)
!3438 = !DILocalVariable(name: "saved_errno", scope: !3398, file: !3399, line: 60, type: !40)
!3439 = !DILocalVariable(name: "fd", scope: !3398, file: !3399, line: 61, type: !40)
!3440 = !DILocalVariable(name: "result", scope: !3398, file: !3399, line: 62, type: !40)
!3441 = !DILocation(line: 58, column: 19, scope: !3398)
!3442 = !DILocation(line: 60, column: 7, scope: !3398)
!3443 = !DILocation(line: 62, column: 7, scope: !3398)
!3444 = !DILocation(line: 65, column: 8, scope: !3398)
!3445 = !DILocation(line: 61, column: 7, scope: !3398)
!3446 = !DILocation(line: 66, column: 10, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3398, file: !3399, line: 66, column: 7)
!3448 = !DILocation(line: 66, column: 7, scope: !3398)
!3449 = !DILocation(line: 67, column: 12, scope: !3447)
!3450 = !DILocation(line: 67, column: 5, scope: !3447)
!3451 = !DILocation(line: 72, column: 9, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3398, file: !3399, line: 72, column: 7)
!3453 = !DILocation(line: 72, column: 23, scope: !3452)
!3454 = !DILocation(line: 72, column: 33, scope: !3452)
!3455 = !DILocation(line: 72, column: 26, scope: !3452)
!3456 = !DILocation(line: 72, column: 59, scope: !3452)
!3457 = !DILocation(line: 73, column: 7, scope: !3452)
!3458 = !DILocation(line: 73, column: 10, scope: !3452)
!3459 = !DILocation(line: 72, column: 7, scope: !3398)
!3460 = !DILocation(line: 100, column: 12, scope: !3398)
!3461 = !DILocation(line: 105, column: 7, scope: !3398)
!3462 = !DILocation(line: 74, column: 19, scope: !3452)
!3463 = !DILocation(line: 105, column: 19, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3398, file: !3399, line: 105, column: 7)
!3465 = !DILocation(line: 107, column: 13, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !3399, line: 106, column: 5)
!3467 = !DILocation(line: 109, column: 5, scope: !3466)
!3468 = !DILocation(line: 0, scope: !3398)
!3469 = !DILocation(line: 112, column: 1, scope: !3398)
!3470 = distinct !DISubprogram(name: "rpl_fflush", scope: !3471, file: !3471, line: 129, type: !3472, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !620, retainedNodes: !3508)
!3471 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!40, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2695, line: 7, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2697, line: 49, size: 1728, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3476, file: !2697, line: 51, baseType: !40, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3476, file: !2697, line: 54, baseType: !27, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3476, file: !2697, line: 55, baseType: !27, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3476, file: !2697, line: 56, baseType: !27, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3476, file: !2697, line: 57, baseType: !27, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3476, file: !2697, line: 58, baseType: !27, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3476, file: !2697, line: 59, baseType: !27, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3476, file: !2697, line: 60, baseType: !27, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3476, file: !2697, line: 61, baseType: !27, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3476, file: !2697, line: 64, baseType: !27, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3476, file: !2697, line: 65, baseType: !27, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3476, file: !2697, line: 66, baseType: !27, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3476, file: !2697, line: 68, baseType: !2712, size: 64, offset: 768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3476, file: !2697, line: 70, baseType: !3492, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3476, file: !2697, line: 72, baseType: !40, size: 32, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3476, file: !2697, line: 73, baseType: !40, size: 32, offset: 928)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3476, file: !2697, line: 74, baseType: !2719, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3476, file: !2697, line: 77, baseType: !101, size: 16, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3476, file: !2697, line: 78, baseType: !2724, size: 8, offset: 1040)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3476, file: !2697, line: 79, baseType: !2726, size: 8, offset: 1048)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3476, file: !2697, line: 81, baseType: !2728, size: 64, offset: 1088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3476, file: !2697, line: 89, baseType: !2731, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3476, file: !2697, line: 91, baseType: !2733, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3476, file: !2697, line: 92, baseType: !2736, size: 64, offset: 1280)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3476, file: !2697, line: 93, baseType: !3492, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3476, file: !2697, line: 94, baseType: !29, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3476, file: !2697, line: 95, baseType: !102, size: 64, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3476, file: !2697, line: 96, baseType: !40, size: 32, offset: 1536)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3476, file: !2697, line: 98, baseType: !2743, size: 160, offset: 1568)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "stream", arg: 1, scope: !3470, file: !3471, line: 129, type: !3474)
!3510 = !DILocation(line: 129, column: 19, scope: !3470)
!3511 = !DILocation(line: 150, column: 14, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3470, file: !3471, line: 150, column: 7)
!3513 = !DILocation(line: 150, column: 22, scope: !3512)
!3514 = !DILocation(line: 150, column: 27, scope: !3512)
!3515 = !DILocation(line: 150, column: 7, scope: !3470)
!3516 = !DILocation(line: 151, column: 12, scope: !3512)
!3517 = !DILocation(line: 151, column: 5, scope: !3512)
!3518 = !DILocalVariable(name: "fp", arg: 1, scope: !3519, file: !3471, line: 41, type: !3474)
!3519 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3471, file: !3471, line: 41, type: !3520, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !620, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !3474}
!3522 = !{!3518}
!3523 = !DILocation(line: 41, column: 48, scope: !3519, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 156, column: 3, scope: !3470)
!3525 = !DILocation(line: 43, column: 11, scope: !3526, inlinedAt: !3524)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !3471, line: 43, column: 7)
!3527 = !DILocation(line: 43, column: 18, scope: !3526, inlinedAt: !3524)
!3528 = !DILocation(line: 43, column: 7, scope: !3519, inlinedAt: !3524)
!3529 = !DILocation(line: 45, column: 5, scope: !3526, inlinedAt: !3524)
!3530 = !DILocation(line: 158, column: 10, scope: !3470)
!3531 = !DILocation(line: 158, column: 3, scope: !3470)
!3532 = !DILocation(line: 0, scope: !3470)
!3533 = !DILocation(line: 232, column: 1, scope: !3470)
!3534 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3535, file: !3535, line: 28, type: !3536, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !622, retainedNodes: !3573)
!3535 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!40, !3538, !3572, !40}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2695, line: 7, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2697, line: 49, size: 1728, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3540, file: !2697, line: 51, baseType: !40, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3540, file: !2697, line: 54, baseType: !27, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3540, file: !2697, line: 55, baseType: !27, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3540, file: !2697, line: 56, baseType: !27, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3540, file: !2697, line: 57, baseType: !27, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3540, file: !2697, line: 58, baseType: !27, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3540, file: !2697, line: 59, baseType: !27, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3540, file: !2697, line: 60, baseType: !27, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3540, file: !2697, line: 61, baseType: !27, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3540, file: !2697, line: 64, baseType: !27, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3540, file: !2697, line: 65, baseType: !27, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3540, file: !2697, line: 66, baseType: !27, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3540, file: !2697, line: 68, baseType: !2712, size: 64, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3540, file: !2697, line: 70, baseType: !3556, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3540, file: !2697, line: 72, baseType: !40, size: 32, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3540, file: !2697, line: 73, baseType: !40, size: 32, offset: 928)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3540, file: !2697, line: 74, baseType: !2719, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3540, file: !2697, line: 77, baseType: !101, size: 16, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3540, file: !2697, line: 78, baseType: !2724, size: 8, offset: 1040)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3540, file: !2697, line: 79, baseType: !2726, size: 8, offset: 1048)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3540, file: !2697, line: 81, baseType: !2728, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3540, file: !2697, line: 89, baseType: !2731, size: 64, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3540, file: !2697, line: 91, baseType: !2733, size: 64, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3540, file: !2697, line: 92, baseType: !2736, size: 64, offset: 1280)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3540, file: !2697, line: 93, baseType: !3556, size: 64, offset: 1344)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3540, file: !2697, line: 94, baseType: !29, size: 64, offset: 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3540, file: !2697, line: 95, baseType: !102, size: 64, offset: 1472)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3540, file: !2697, line: 96, baseType: !40, size: 32, offset: 1536)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3540, file: !2697, line: 98, baseType: !2743, size: 160, offset: 1568)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2865, line: 63, baseType: !2719)
!3573 = !{!3574, !3575, !3576, !3577}
!3574 = !DILocalVariable(name: "fp", arg: 1, scope: !3534, file: !3535, line: 28, type: !3538)
!3575 = !DILocalVariable(name: "offset", arg: 2, scope: !3534, file: !3535, line: 28, type: !3572)
!3576 = !DILocalVariable(name: "whence", arg: 3, scope: !3534, file: !3535, line: 28, type: !40)
!3577 = !DILocalVariable(name: "pos", scope: !3578, file: !3535, line: 117, type: !3572)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3535, line: 113, column: 5)
!3579 = distinct !DILexicalBlock(scope: !3534, file: !3535, line: 52, column: 7)
!3580 = !DILocation(line: 28, column: 15, scope: !3534)
!3581 = !DILocation(line: 28, column: 25, scope: !3534)
!3582 = !DILocation(line: 28, column: 37, scope: !3534)
!3583 = !DILocation(line: 52, column: 11, scope: !3579)
!3584 = !{!3335, !664, i64 16}
!3585 = !DILocation(line: 52, column: 31, scope: !3579)
!3586 = !{!3335, !664, i64 8}
!3587 = !DILocation(line: 52, column: 24, scope: !3579)
!3588 = !DILocation(line: 53, column: 7, scope: !3579)
!3589 = !DILocation(line: 53, column: 14, scope: !3579)
!3590 = !{!3335, !664, i64 40}
!3591 = !DILocation(line: 53, column: 35, scope: !3579)
!3592 = !{!3335, !664, i64 32}
!3593 = !DILocation(line: 53, column: 28, scope: !3579)
!3594 = !DILocation(line: 54, column: 7, scope: !3579)
!3595 = !DILocation(line: 54, column: 14, scope: !3579)
!3596 = !{!3335, !664, i64 72}
!3597 = !DILocation(line: 54, column: 28, scope: !3579)
!3598 = !DILocation(line: 52, column: 7, scope: !3534)
!3599 = !DILocation(line: 117, column: 26, scope: !3578)
!3600 = !DILocation(line: 117, column: 19, scope: !3578)
!3601 = !DILocation(line: 117, column: 13, scope: !3578)
!3602 = !DILocation(line: 118, column: 15, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3578, file: !3535, line: 118, column: 11)
!3604 = !DILocation(line: 118, column: 11, scope: !3578)
!3605 = !DILocation(line: 129, column: 11, scope: !3578)
!3606 = !DILocation(line: 129, column: 18, scope: !3578)
!3607 = !DILocation(line: 130, column: 11, scope: !3578)
!3608 = !DILocation(line: 130, column: 19, scope: !3578)
!3609 = !{!3335, !2019, i64 144}
!3610 = !DILocation(line: 161, column: 7, scope: !3578)
!3611 = !DILocation(line: 163, column: 10, scope: !3534)
!3612 = !DILocation(line: 163, column: 3, scope: !3534)
!3613 = !DILocation(line: 0, scope: !3534)
!3614 = !DILocation(line: 164, column: 1, scope: !3534)
