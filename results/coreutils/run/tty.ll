; ModuleID = 'coreutils-8.30/src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@silent = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !17
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !35
@.str.33 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !41
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !46
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !49
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !56
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !63
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !108
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !115
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !127
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !134
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !141
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !129
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !143
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !149
@.str.1.101 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !595 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !600, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %0, metadata !599, metadata !DIExpression()), !dbg !623
  %3 = icmp eq i32 %0, 0, !dbg !624
  br i1 %3, label %9, label %4, !dbg !625

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !626, !tbaa !628
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !626
  %7 = load i8*, i8** @program_name, align 8, !dbg !626, !tbaa !628
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !626
  br label %57, !dbg !626

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !632
  %11 = load i8*, i8** @program_name, align 8, !dbg !632, !tbaa !628
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !632
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !633
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !628
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !633
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !634
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !628
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !634
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !635
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !628
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !635
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10, !dbg !636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !619
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !608, metadata !DIExpression()) #10, !dbg !638
  br label %24, !dbg !639

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !608, metadata !DIExpression()) #10, !dbg !638
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !639
  %28 = icmp eq i32 %27, 0, !dbg !639
  br i1 %28, label %34, label %29, !dbg !640

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !641
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !608, metadata !DIExpression()) #10, !dbg !638
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !642
  %32 = load i8*, i8** %31, align 8, !dbg !642, !tbaa !643
  %33 = icmp eq i8* %32, null, !dbg !645
  br i1 %33, label %34, label %24, !dbg !646, !llvm.loop !647

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !608, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !608, metadata !DIExpression()) #10, !dbg !638
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !650
  %37 = load i8*, i8** %36, align 8, !dbg !650, !tbaa !652
  %38 = icmp eq i8* %37, null, !dbg !653
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !654
  call void @llvm.dbg.value(metadata i8* %39, metadata !607, metadata !DIExpression()) #10, !dbg !655
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !656
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !656
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !657
  call void @llvm.dbg.value(metadata i8* %42, metadata !615, metadata !DIExpression()) #10, !dbg !658
  %43 = icmp eq i8* %42, null, !dbg !659
  br i1 %43, label %50, label %44, !dbg !661

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !662
  %46 = icmp eq i32 %45, 0, !dbg !662
  br i1 %46, label %50, label %47, !dbg !663

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !664
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !664
  br label %50, !dbg !666

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !667
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !667
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !668
  %54 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !668
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !668
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #10, !dbg !668
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10, !dbg !669
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !670
  unreachable, !dbg !670
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8** %1, metadata !677, metadata !DIExpression()), !dbg !682
  %3 = load i8*, i8** %1, align 8, !dbg !683, !tbaa !628
  tail call void @set_program_name(i8* %3) #10, !dbg !684
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !685
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !686
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !687
  call void @llvm.dbg.value(metadata i32 3, metadata !688, metadata !DIExpression()), !dbg !691
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !693, !tbaa !695
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !697
  br label %8, !dbg !698

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i1 [ false, %2 ], [ true, %8 ]
  store i1 %9, i1* @silent, align 1
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !699
  call void @llvm.dbg.value(metadata i32 %10, metadata !678, metadata !DIExpression()), !dbg !700
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 115, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !698, !llvm.loop !701

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !703
  unreachable, !dbg !703

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !628
  %14 = load i8*, i8** @Version, align 8, !dbg !706, !tbaa !628
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !706
  tail call void @exit(i32 0) #15, !dbg !706
  unreachable, !dbg !706

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #16, !dbg !707
  unreachable, !dbg !707

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !708, !tbaa !695
  %18 = icmp slt i32 %17, %0, !dbg !710
  br i1 %18, label %19, label %26, !dbg !711

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !712
  %21 = load i32, i32* @optind, align 4, !dbg !714, !tbaa !695
  %22 = sext i32 %21 to i64, !dbg !715
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !715
  %24 = load i8*, i8** %23, align 8, !dbg !715, !tbaa !628
  %25 = tail call i8* @quote(i8* %24) #10, !dbg !716
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %25) #10, !dbg !717
  tail call void @usage(i32 2) #16, !dbg !718
  unreachable, !dbg !718

; <label>:26:                                     ; preds = %16
  %27 = tail call i32* @__errno_location() #17, !dbg !719
  store i32 2, i32* %27, align 4, !dbg !720, !tbaa !695
  %28 = load i1, i1* @silent, align 1
  br i1 %28, label %29, label %33, !dbg !721

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @isatty(i32 0) #10, !dbg !722
  %31 = icmp eq i32 %30, 0, !dbg !722
  %32 = zext i1 %31 to i32, !dbg !722
  br label %42, !dbg !724

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !725
  %34 = tail call i8* @ttyname(i32 0) #10, !dbg !726
  call void @llvm.dbg.value(metadata i8* %34, metadata !680, metadata !DIExpression()), !dbg !727
  %35 = icmp eq i8* %34, null, !dbg !728
  br i1 %35, label %36, label %38, !dbg !730

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !731
  call void @llvm.dbg.value(metadata i8* %37, metadata !680, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 1, metadata !679, metadata !DIExpression()), !dbg !725
  br label %38, !dbg !733

; <label>:38:                                     ; preds = %33, %36
  %39 = phi i32 [ 0, %33 ], [ 1, %36 ], !dbg !734
  %40 = phi i8* [ %34, %33 ], [ %37, %36 ], !dbg !734
  call void @llvm.dbg.value(metadata i8* %40, metadata !680, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 %39, metadata !679, metadata !DIExpression()), !dbg !725
  %41 = tail call i32 @puts(i8* %40), !dbg !735
  br label %42

; <label>:42:                                     ; preds = %38, %29
  %43 = phi i32 [ %32, %29 ], [ %39, %38 ], !dbg !736
  ret i32 %43, !dbg !737
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

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !740, metadata !DIExpression()), !dbg !741
  store i8* %0, i8** @file_name, align 8, !dbg !742, !tbaa !628
  ret void, !dbg !743
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !744 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !748, metadata !DIExpression()), !dbg !749
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !750, !tbaa !751
  ret void, !dbg !753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !754 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !628
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !762
  %3 = icmp eq i32 %2, 0, !dbg !763
  br i1 %3, label %22, label %4, !dbg !764

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !765, !tbaa !751, !range !766
  %6 = icmp eq i8 %5, 0, !dbg !765
  br i1 %6, label %11, label %7, !dbg !767

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !768
  %9 = load i32, i32* %8, align 4, !dbg !768, !tbaa !695
  %10 = icmp eq i32 %9, 32, !dbg !769
  br i1 %10, label %22, label %11, !dbg !770

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !771
  call void @llvm.dbg.value(metadata i8* %12, metadata !758, metadata !DIExpression()), !dbg !772
  %13 = load i8*, i8** @file_name, align 8, !dbg !773, !tbaa !628
  %14 = icmp eq i8* %13, null, !dbg !773
  %15 = tail call i32* @__errno_location() #17, !dbg !775
  %16 = load i32, i32* %15, align 4, !dbg !775, !tbaa !695
  br i1 %14, label %19, label %17, !dbg !776

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !777
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !778
  br label %20, !dbg !778

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #10, !dbg !779
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !780, !tbaa !695
  tail call void @_exit(i32 %21) #15, !dbg !781
  unreachable, !dbg !781

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !782, !tbaa !628
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !784
  %25 = icmp eq i32 %24, 0, !dbg !785
  br i1 %25, label %28, label %26, !dbg !786

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !787, !tbaa !695
  tail call void @_exit(i32 %27) #15, !dbg !788
  unreachable, !dbg !788

; <label>:28:                                     ; preds = %22
  ret void, !dbg !789
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !792, metadata !DIExpression()), !dbg !795
  %2 = icmp eq i8* %0, null, !dbg !796
  br i1 %2, label %3, label %6, !dbg !798

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !799, !tbaa !628
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !801
  tail call void @abort() #15, !dbg !802
  unreachable, !dbg !802

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !803
  call void @llvm.dbg.value(metadata i8* %7, metadata !793, metadata !DIExpression()), !dbg !804
  %8 = icmp eq i8* %7, null, !dbg !805
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !806
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !807
  call void @llvm.dbg.value(metadata i8* %10, metadata !794, metadata !DIExpression()), !dbg !808
  %11 = ptrtoint i8* %10 to i64, !dbg !809
  %12 = ptrtoint i8* %0 to i64, !dbg !809
  %13 = sub i64 %11, %12, !dbg !809
  %14 = icmp sgt i64 %13, 6, !dbg !811
  br i1 %14, label %15, label %24, !dbg !812

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !813
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #14, !dbg !814
  %18 = icmp eq i32 %17, 0, !dbg !815
  br i1 %18, label %19, label %24, !dbg !816

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !792, metadata !DIExpression()), !dbg !795
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #14, !dbg !817
  %21 = icmp eq i32 %20, 0, !dbg !820
  br i1 %21, label %22, label %24, !dbg !821

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !822
  call void @llvm.dbg.value(metadata i8* %23, metadata !792, metadata !DIExpression()), !dbg !795
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !824, !tbaa !628
  br label %24, !dbg !825

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !792, metadata !DIExpression()), !dbg !795
  store i8* %25, i8** @program_name, align 8, !dbg !826, !tbaa !628
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !827, !tbaa !628
  ret void, !dbg !828
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !829 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !834, metadata !DIExpression()), !dbg !837
  %2 = tail call i32* @__errno_location() #17, !dbg !838
  %3 = load i32, i32* %2, align 4, !dbg !838, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %3, metadata !835, metadata !DIExpression()), !dbg !839
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !840
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !840
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !840
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !841
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !841
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !836, metadata !DIExpression()), !dbg !842
  store i32 %3, i32* %2, align 4, !dbg !843, !tbaa !695
  ret %struct.quoting_options* %8, !dbg !844
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !845 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !851, metadata !DIExpression()), !dbg !852
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !853
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !853
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !854
  %5 = load i32, i32* %4, align 8, !dbg !854, !tbaa !855
  ret i32 %5, !dbg !857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !858 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !862, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i32 %1, metadata !863, metadata !DIExpression()), !dbg !865
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !866
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !866
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !867
  store i32 %1, i32* %5, align 8, !dbg !868, !tbaa !855
  ret void, !dbg !869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !870 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !874, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8 %1, metadata !875, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 %2, metadata !876, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8 %1, metadata !877, metadata !DIExpression()), !dbg !886
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !887
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !887
  %6 = lshr i8 %1, 5, !dbg !888
  %7 = zext i8 %6 to i64, !dbg !888
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !889
  call void @llvm.dbg.value(metadata i32* %8, metadata !879, metadata !DIExpression()), !dbg !890
  %9 = and i8 %1, 31, !dbg !891
  %10 = zext i8 %9 to i32, !dbg !891
  call void @llvm.dbg.value(metadata i32 %10, metadata !881, metadata !DIExpression()), !dbg !892
  %11 = load i32, i32* %8, align 4, !dbg !893, !tbaa !695
  %12 = lshr i32 %11, %10, !dbg !894
  %13 = and i32 %12, 1, !dbg !895
  call void @llvm.dbg.value(metadata i32 %13, metadata !882, metadata !DIExpression()), !dbg !896
  %14 = and i32 %2, 1, !dbg !897
  %15 = xor i32 %13, %14, !dbg !898
  %16 = shl i32 %15, %10, !dbg !899
  %17 = xor i32 %16, %11, !dbg !900
  store i32 %17, i32* %8, align 4, !dbg !900, !tbaa !695
  ret i32 %13, !dbg !901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !902 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !906, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %1, metadata !907, metadata !DIExpression()), !dbg !910
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !911
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !913
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !906, metadata !DIExpression()), !dbg !909
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !914
  %6 = load i32, i32* %5, align 4, !dbg !914, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %6, metadata !908, metadata !DIExpression()), !dbg !916
  store i32 %1, i32* %5, align 4, !dbg !917, !tbaa !915
  ret i32 %6, !dbg !918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !919 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !923, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i8* %1, metadata !924, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* %2, metadata !925, metadata !DIExpression()), !dbg !928
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !929
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !931
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !923, metadata !DIExpression()), !dbg !926
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !932
  store i32 10, i32* %6, align 8, !dbg !933, !tbaa !855
  %7 = icmp ne i8* %1, null, !dbg !934
  %8 = icmp ne i8* %2, null, !dbg !936
  %9 = and i1 %7, %8, !dbg !937
  br i1 %9, label %11, label %10, !dbg !937

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !938
  unreachable, !dbg !938

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !939
  store i8* %1, i8** %12, align 8, !dbg !940, !tbaa !941
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !942
  store i8* %2, i8** %13, align 8, !dbg !943, !tbaa !944
  ret void, !dbg !945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !950, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 %1, metadata !951, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %2, metadata !952, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %3, metadata !953, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !954, metadata !DIExpression()), !dbg !962
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !963
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !963
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !955, metadata !DIExpression()), !dbg !964
  %8 = tail call i32* @__errno_location() #17, !dbg !965
  %9 = load i32, i32* %8, align 4, !dbg !965, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %9, metadata !956, metadata !DIExpression()), !dbg !966
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !967
  %11 = load i32, i32* %10, align 8, !dbg !967, !tbaa !855
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !968
  %13 = load i32, i32* %12, align 4, !dbg !968, !tbaa !915
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !969
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !970
  %16 = load i8*, i8** %15, align 8, !dbg !970, !tbaa !941
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !971
  %18 = load i8*, i8** %17, align 8, !dbg !971, !tbaa !944
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !972
  call void @llvm.dbg.value(metadata i64 %19, metadata !957, metadata !DIExpression()), !dbg !973
  store i32 %9, i32* %8, align 4, !dbg !974, !tbaa !695
  ret i64 %19, !dbg !975
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !976 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !982, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %1, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %2, metadata !984, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %3, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %4, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %5, metadata !987, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32* %6, metadata !988, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %7, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %8, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8* null, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8 0, metadata !996, metadata !DIExpression()), !dbg !1059
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1060
  %14 = icmp eq i64 %13, 1, !dbg !1061
  %15 = lshr i32 %5, 1, !dbg !1062
  %16 = trunc i32 %15 to i8, !dbg !1062
  %17 = and i8 %16, 1, !dbg !1062
  call void @llvm.dbg.value(metadata i8 %17, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 0, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 0, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 1, metadata !1001, metadata !DIExpression()), !dbg !1065
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1066

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1056
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1057
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1058
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1059
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1067
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1063
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1064
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1065
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %39, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %38, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %37, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %36, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %35, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %34, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %33, metadata !995, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %32, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %31, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %30, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %29, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %28, metadata !986, metadata !DIExpression()), !dbg !1050
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
  ], !dbg !1069

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %36, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, metadata !986, metadata !DIExpression()), !dbg !1050
  br label %93, !dbg !1070

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, metadata !986, metadata !DIExpression()), !dbg !1050
  %43 = and i8 %36, 1, !dbg !1071
  %44 = icmp eq i8 %43, 0, !dbg !1071
  br i1 %44, label %45, label %93, !dbg !1070

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1073
  br i1 %46, label %93, label %47, !dbg !1076

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1073, !tbaa !1077
  br label %93, !dbg !1073

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %49, metadata !989, metadata !DIExpression()), !dbg !1053
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %50, metadata !990, metadata !DIExpression()), !dbg !1054
  br label %51, !dbg !1083

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %52, metadata !989, metadata !DIExpression()), !dbg !1053
  %54 = and i8 %36, 1, !dbg !1084
  %55 = icmp eq i8 %54, 0, !dbg !1084
  br i1 %55, label %56, label %71, !dbg !1086

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, metadata !992, metadata !DIExpression()), !dbg !1055
  %57 = load i8, i8* %52, align 1, !dbg !1087, !tbaa !1077
  %58 = icmp eq i8 %57, 0, !dbg !1090
  br i1 %58, label %71, label %59, !dbg !1090

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %62, metadata !992, metadata !DIExpression()), !dbg !1055
  %63 = icmp ult i64 %62, %40, !dbg !1091
  br i1 %63, label %64, label %66, !dbg !1094

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1091
  store i8 %60, i8* %65, align 1, !dbg !1091, !tbaa !1077
  br label %66, !dbg !1091

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1094
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %68, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %67, metadata !992, metadata !DIExpression()), !dbg !1055
  %69 = load i8, i8* %68, align 1, !dbg !1087, !tbaa !1077
  %70 = icmp eq i8 %69, 0, !dbg !1090
  br i1 %70, label %71, label %59, !dbg !1090, !llvm.loop !1096

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1055
  call void @llvm.dbg.value(metadata i64 %72, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %53, metadata !994, metadata !DIExpression()), !dbg !1057
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %73, metadata !995, metadata !DIExpression()), !dbg !1058
  br label %93, !dbg !1099

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !996, metadata !DIExpression()), !dbg !1059
  br label %75, !dbg !1100

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %76, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()), !dbg !1062
  br label %77, !dbg !1101

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1059
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %79, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %78, metadata !996, metadata !DIExpression()), !dbg !1059
  %80 = and i8 %79, 1, !dbg !1102
  %81 = icmp eq i8 %80, 0, !dbg !1102
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1104
  br label %83, !dbg !1104

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1105
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1062
  call void @llvm.dbg.value(metadata i8 %85, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %84, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  %86 = and i8 %85, 1, !dbg !1106
  %87 = icmp eq i8 %86, 0, !dbg !1106
  br i1 %87, label %88, label %93, !dbg !1108

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1109
  br i1 %89, label %93, label %90, !dbg !1112

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1109, !tbaa !1077
  br label %93, !dbg !1109

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()), !dbg !1062
  br label %93, !dbg !1113

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1114
  unreachable, !dbg !1114

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1055
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], !dbg !1067
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1067
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1067
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %101, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %99, metadata !995, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %97, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 0, metadata !991, metadata !DIExpression()), !dbg !1116
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
  br label %121, !dbg !1117

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1118
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1055
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1056
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1063
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1064
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1065
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %125, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %122, metadata !991, metadata !DIExpression()), !dbg !1116
  %130 = icmp eq i64 %125, -1, !dbg !1119
  br i1 %130, label %131, label %135, !dbg !1120

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1121
  %133 = load i8, i8* %132, align 1, !dbg !1121, !tbaa !1077
  %134 = icmp eq i8 %133, 0, !dbg !1122
  br i1 %134, label %617, label %137, !dbg !1123

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1124
  br i1 %136, label %617, label %137, !dbg !1123

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1007, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 0, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 0, metadata !1009, metadata !DIExpression()), !dbg !1127
  br i1 %107, label %138, label %153, !dbg !1128

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1130
  %140 = and i1 %108, %130, !dbg !1131
  br i1 %140, label %141, label %143, !dbg !1131

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %142, metadata !985, metadata !DIExpression()), !dbg !1049
  br label %143, !dbg !1133

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !985, metadata !DIExpression()), !dbg !1049
  %145 = icmp ugt i64 %139, %144, !dbg !1134
  br i1 %145, label %153, label %146, !dbg !1135

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1136
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1137
  %149 = icmp ne i32 %148, 0, !dbg !1138
  %150 = or i1 %149, %110, !dbg !1139
  %151 = xor i1 %149, true, !dbg !1139
  %152 = zext i1 %151 to i8, !dbg !1139
  br i1 %150, label %153, label %661, !dbg !1139

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1140
  call void @llvm.dbg.value(metadata i8 %155, metadata !1007, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %154, metadata !985, metadata !DIExpression()), !dbg !1049
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1141
  %157 = load i8, i8* %156, align 1, !dbg !1141, !tbaa !1077
  call void @llvm.dbg.value(metadata i8 %157, metadata !1002, metadata !DIExpression()), !dbg !1142
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
  ], !dbg !1143

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1144

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1145

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1008, metadata !DIExpression()), !dbg !1126
  %161 = and i8 %126, 1, !dbg !1149
  %162 = icmp eq i8 %161, 0, !dbg !1149
  %163 = and i1 %114, %162, !dbg !1149
  br i1 %163, label %164, label %180, !dbg !1149

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1151
  br i1 %165, label %166, label %168, !dbg !1155

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1151
  store i8 39, i8* %167, align 1, !dbg !1151, !tbaa !1077
  br label %168, !dbg !1151

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %169, metadata !992, metadata !DIExpression()), !dbg !1055
  %170 = icmp ult i64 %169, %129, !dbg !1156
  br i1 %170, label %171, label %173, !dbg !1159

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1156
  store i8 36, i8* %172, align 1, !dbg !1156, !tbaa !1077
  br label %173, !dbg !1156

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %174, metadata !992, metadata !DIExpression()), !dbg !1055
  %175 = icmp ult i64 %174, %129, !dbg !1160
  br i1 %175, label %176, label %178, !dbg !1163

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1160
  store i8 39, i8* %177, align 1, !dbg !1160, !tbaa !1077
  br label %178, !dbg !1160

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %179, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %180, !dbg !1164

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1115
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %182, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %181, metadata !992, metadata !DIExpression()), !dbg !1055
  %183 = icmp ult i64 %181, %129, !dbg !1165
  br i1 %183, label %184, label %186, !dbg !1168

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1165
  store i8 92, i8* %185, align 1, !dbg !1165, !tbaa !1077
  br label %186, !dbg !1165

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %187, metadata !992, metadata !DIExpression()), !dbg !1055
  br i1 %104, label %188, label %478, !dbg !1169

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1171
  %190 = icmp ult i64 %189, %154, !dbg !1172
  br i1 %190, label %191, label %467, !dbg !1173

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1174
  %193 = load i8, i8* %192, align 1, !dbg !1174, !tbaa !1077
  %194 = add i8 %193, -48, !dbg !1175
  %195 = icmp ult i8 %194, 10, !dbg !1175
  br i1 %195, label %196, label %467, !dbg !1175

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1176
  br i1 %197, label %198, label %200, !dbg !1180

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1176
  store i8 48, i8* %199, align 1, !dbg !1176, !tbaa !1077
  br label %200, !dbg !1176

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %201, metadata !992, metadata !DIExpression()), !dbg !1055
  %202 = icmp ult i64 %201, %129, !dbg !1181
  br i1 %202, label %203, label %205, !dbg !1184

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1181
  store i8 48, i8* %204, align 1, !dbg !1181, !tbaa !1077
  br label %205, !dbg !1181

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %206, metadata !992, metadata !DIExpression()), !dbg !1055
  br label %467, !dbg !1185

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1186

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1187

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1188

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1190

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1192
  %213 = icmp ult i64 %212, %154, !dbg !1193
  br i1 %213, label %214, label %467, !dbg !1194

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1195
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1196
  %217 = load i8, i8* %216, align 1, !dbg !1196, !tbaa !1077
  %218 = icmp eq i8 %217, 63, !dbg !1197
  br i1 %218, label %219, label %467, !dbg !1198

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1199
  %221 = load i8, i8* %220, align 1, !dbg !1199, !tbaa !1077
  %222 = sext i8 %221 to i32, !dbg !1199
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
  ], !dbg !1200

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1201

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %212, metadata !991, metadata !DIExpression()), !dbg !1116
  %225 = icmp ult i64 %123, %129, !dbg !1203
  br i1 %225, label %226, label %228, !dbg !1206

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1203
  store i8 63, i8* %227, align 1, !dbg !1203, !tbaa !1077
  br label %228, !dbg !1203

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %229, metadata !992, metadata !DIExpression()), !dbg !1055
  %230 = icmp ult i64 %229, %129, !dbg !1207
  br i1 %230, label %231, label %233, !dbg !1210

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1207
  store i8 34, i8* %232, align 1, !dbg !1207, !tbaa !1077
  br label %233, !dbg !1207

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %234, metadata !992, metadata !DIExpression()), !dbg !1055
  %235 = icmp ult i64 %234, %129, !dbg !1211
  br i1 %235, label %236, label %238, !dbg !1214

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1211
  store i8 34, i8* %237, align 1, !dbg !1211, !tbaa !1077
  br label %238, !dbg !1211

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %239, metadata !992, metadata !DIExpression()), !dbg !1055
  %240 = icmp ult i64 %239, %129, !dbg !1215
  br i1 %240, label %241, label %243, !dbg !1218

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1215
  store i8 63, i8* %242, align 1, !dbg !1215, !tbaa !1077
  br label %243, !dbg !1215

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %244, metadata !992, metadata !DIExpression()), !dbg !1055
  br label %467, !dbg !1219

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1006, metadata !DIExpression()), !dbg !1220
  br label %255, !dbg !1221

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1006, metadata !DIExpression()), !dbg !1220
  br label %255, !dbg !1222

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1006, metadata !DIExpression()), !dbg !1220
  br label %253, !dbg !1223

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1006, metadata !DIExpression()), !dbg !1220
  br label %253, !dbg !1224

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1006, metadata !DIExpression()), !dbg !1220
  br label %255, !dbg !1225

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1006, metadata !DIExpression()), !dbg !1220
  br i1 %114, label %251, label %252, !dbg !1226

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1227

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1230

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1232
  call void @llvm.dbg.value(metadata i8 %254, metadata !1006, metadata !DIExpression()), !dbg !1220
  br i1 %113, label %255, label %661, !dbg !1233

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1232
  call void @llvm.dbg.value(metadata i8 %256, metadata !1006, metadata !DIExpression()), !dbg !1220
  br i1 %103, label %524, label %478, !dbg !1235

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1236
  br i1 %258, label %259, label %264, !dbg !1238

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1239, !tbaa !1077
  %261 = icmp ne i8 %260, 0, !dbg !1240
  %262 = icmp ne i64 %122, 0, !dbg !1241
  %263 = or i1 %262, %261, !dbg !1243
  br i1 %263, label %467, label %270, !dbg !1243

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1244
  %266 = icmp ne i64 %122, 0, !dbg !1241
  %267 = or i1 %266, %265, !dbg !1238
  br i1 %267, label %467, label %270, !dbg !1238

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1241
  br i1 %269, label %270, label %467, !dbg !1245

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1009, metadata !DIExpression()), !dbg !1127
  br label %271, !dbg !1246

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1232
  call void @llvm.dbg.value(metadata i8 %272, metadata !1009, metadata !DIExpression()), !dbg !1127
  br i1 %113, label %467, label %661, !dbg !1247

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 1, metadata !1009, metadata !DIExpression()), !dbg !1127
  br i1 %114, label %274, label %467, !dbg !1249

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1250

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1253
  %277 = icmp ne i64 %124, 0, !dbg !1255
  %278 = or i1 %277, %276, !dbg !1256
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1256
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %280, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %279, metadata !993, metadata !DIExpression()), !dbg !1056
  %281 = icmp ult i64 %123, %280, !dbg !1257
  br i1 %281, label %282, label %284, !dbg !1260

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1257
  store i8 39, i8* %283, align 1, !dbg !1257, !tbaa !1077
  br label %284, !dbg !1257

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %285, metadata !992, metadata !DIExpression()), !dbg !1055
  %286 = icmp ult i64 %285, %280, !dbg !1261
  br i1 %286, label %287, label %289, !dbg !1264

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1261
  store i8 92, i8* %288, align 1, !dbg !1261, !tbaa !1077
  br label %289, !dbg !1261

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %290, metadata !992, metadata !DIExpression()), !dbg !1055
  %291 = icmp ult i64 %290, %280, !dbg !1265
  br i1 %291, label %292, label %294, !dbg !1268

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1265
  store i8 39, i8* %293, align 1, !dbg !1265, !tbaa !1077
  br label %294, !dbg !1265

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %295, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %467, !dbg !1269

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1270

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1010, metadata !DIExpression()), !dbg !1271
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1272
  %299 = load i16*, i16** %298, align 8, !dbg !1272, !tbaa !628
  %300 = zext i8 %157 to i64, !dbg !1272
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1272
  %302 = load i16, i16* %301, align 2, !dbg !1272, !tbaa !1274
  %303 = lshr i16 %302, 14, !dbg !1276
  %304 = trunc i16 %303 to i8, !dbg !1276
  %305 = and i8 %304, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i8 %305, metadata !1013, metadata !DIExpression()), !dbg !1277
  br label %359, !dbg !1278

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1279
  store i64 0, i64* %10, align 8, !dbg !1280
  call void @llvm.dbg.value(metadata i64 0, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 1, metadata !1013, metadata !DIExpression()), !dbg !1277
  %307 = icmp eq i64 %154, -1, !dbg !1281
  br i1 %307, label %308, label %310, !dbg !1283

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %309, metadata !985, metadata !DIExpression()), !dbg !1049
  br label %310, !dbg !1285

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  br label %312, !dbg !1287

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1288
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1289
  call void @llvm.dbg.value(metadata i8 %314, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1290
  %315 = add i64 %313, %122, !dbg !1291
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1292
  %317 = sub i64 %311, %315, !dbg !1293
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1014, metadata !DIExpression(DW_OP_deref)), !dbg !1294
  call void @llvm.dbg.value(metadata i32* %12, metadata !1032, metadata !DIExpression(DW_OP_deref)), !dbg !1295
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %318, metadata !1035, metadata !DIExpression()), !dbg !1297
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1298

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  %320 = icmp ugt i64 %311, %315, !dbg !1299
  br i1 %320, label %321, label %344, !dbg !1301

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1010, metadata !DIExpression()), !dbg !1271
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1302
  %325 = load i8, i8* %324, align 1, !dbg !1302, !tbaa !1077
  %326 = icmp eq i8 %325, 0, !dbg !1301
  br i1 %326, label %344, label %327, !dbg !1303

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %328, metadata !1010, metadata !DIExpression()), !dbg !1271
  %329 = add i64 %328, %122, !dbg !1305
  %330 = icmp ult i64 %329, %311, !dbg !1299
  br i1 %330, label %321, label %344, !dbg !1301, !llvm.loop !1306

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1307
  %333 = and i1 %116, %332, !dbg !1310
  call void @llvm.dbg.value(metadata i64 1, metadata !1036, metadata !DIExpression()), !dbg !1311
  br i1 %333, label %334, label %347, !dbg !1310

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1036, metadata !DIExpression()), !dbg !1311
  %336 = add i64 %335, %315, !dbg !1312
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1313
  %338 = load i8, i8* %337, align 1, !dbg !1313, !tbaa !1077
  %339 = sext i8 %338 to i32, !dbg !1313
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1314

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %341, metadata !1036, metadata !DIExpression()), !dbg !1311
  %342 = icmp ult i64 %341, %318, !dbg !1307
  br i1 %342, label %334, label %347, !dbg !1316, !llvm.loop !1317

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %314, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %313, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %314, metadata !1013, metadata !DIExpression()), !dbg !1277
  br label %344, !dbg !1319

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %352, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1319
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1320, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %348, metadata !1032, metadata !DIExpression()), !dbg !1295
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1322
  %350 = icmp eq i32 %349, 0, !dbg !1322
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1323
  call void @llvm.dbg.value(metadata i8 %351, metadata !1013, metadata !DIExpression()), !dbg !1277
  %352 = add i64 %318, %313, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %352, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %351, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %352, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1319
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1014, metadata !DIExpression(DW_OP_deref)), !dbg !1294
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1325
  %354 = icmp eq i32 %353, 0, !dbg !1326
  br i1 %354, label %312, label %355, !dbg !1327, !llvm.loop !1328

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1330
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 2, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %94, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %100, metadata !996, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %311, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %351, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %352, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1319
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1330
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1331
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1332
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1332
  call void @llvm.dbg.value(metadata i8 %362, metadata !1013, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %361, metadata !1010, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %360, metadata !985, metadata !DIExpression()), !dbg !1049
  %363 = and i8 %362, 1, !dbg !1333
  %364 = icmp ne i8 %363, 0, !dbg !1333
  call void @llvm.dbg.value(metadata i8 %363, metadata !1009, metadata !DIExpression()), !dbg !1127
  %365 = icmp ult i64 %361, 2, !dbg !1334
  %366 = or i1 %364, %115, !dbg !1335
  %367 = and i1 %365, %366, !dbg !1336
  br i1 %367, label %467, label %368, !dbg !1336

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %369, metadata !1043, metadata !DIExpression()), !dbg !1338
  br label %370, !dbg !1339

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1340
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1344
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1063
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1340
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1346
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1126
  call void @llvm.dbg.value(metadata i8 %376, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %375, metadata !1007, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %374, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %373, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %372, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %371, metadata !991, metadata !DIExpression()), !dbg !1116
  br i1 %366, label %423, label %377, !dbg !1350

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1351

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1008, metadata !DIExpression()), !dbg !1126
  %379 = and i8 %373, 1, !dbg !1354
  %380 = icmp eq i8 %379, 0, !dbg !1354
  %381 = and i1 %114, %380, !dbg !1354
  br i1 %381, label %382, label %398, !dbg !1354

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1356
  br i1 %383, label %384, label %386, !dbg !1360

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1356
  store i8 39, i8* %385, align 1, !dbg !1356, !tbaa !1077
  br label %386, !dbg !1356

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %387, metadata !992, metadata !DIExpression()), !dbg !1055
  %388 = icmp ult i64 %387, %129, !dbg !1361
  br i1 %388, label %389, label %391, !dbg !1364

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1361
  store i8 36, i8* %390, align 1, !dbg !1361, !tbaa !1077
  br label %391, !dbg !1361

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %392, metadata !992, metadata !DIExpression()), !dbg !1055
  %393 = icmp ult i64 %392, %129, !dbg !1365
  br i1 %393, label %394, label %396, !dbg !1368

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1365
  store i8 39, i8* %395, align 1, !dbg !1365, !tbaa !1077
  br label %396, !dbg !1365

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %397, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %398, !dbg !1369

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1115
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %400, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %399, metadata !992, metadata !DIExpression()), !dbg !1055
  %401 = icmp ult i64 %399, %129, !dbg !1370
  br i1 %401, label %402, label %404, !dbg !1373

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1370
  store i8 92, i8* %403, align 1, !dbg !1370, !tbaa !1077
  br label %404, !dbg !1370

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %405, metadata !992, metadata !DIExpression()), !dbg !1055
  %406 = icmp ult i64 %405, %129, !dbg !1374
  br i1 %406, label %407, label %411, !dbg !1377

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1374
  %409 = or i8 %408, 48, !dbg !1374
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1374
  store i8 %409, i8* %410, align 1, !dbg !1374, !tbaa !1077
  br label %411, !dbg !1374

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %412, metadata !992, metadata !DIExpression()), !dbg !1055
  %413 = icmp ult i64 %412, %129, !dbg !1378
  br i1 %413, label %414, label %419, !dbg !1381

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1378
  %416 = and i8 %415, 7, !dbg !1378
  %417 = or i8 %416, 48, !dbg !1378
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1378
  store i8 %417, i8* %418, align 1, !dbg !1378, !tbaa !1077
  br label %419, !dbg !1378

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %420, metadata !992, metadata !DIExpression()), !dbg !1055
  %421 = and i8 %374, 7, !dbg !1382
  %422 = or i8 %421, 48, !dbg !1383
  call void @llvm.dbg.value(metadata i8 %422, metadata !1002, metadata !DIExpression()), !dbg !1142
  br label %432, !dbg !1384

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1385
  %425 = icmp eq i8 %424, 0, !dbg !1385
  br i1 %425, label %432, label %426, !dbg !1386

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1387
  br i1 %427, label %428, label %430, !dbg !1390

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1387
  store i8 92, i8* %429, align 1, !dbg !1387, !tbaa !1077
  br label %430, !dbg !1387

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %431, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, metadata !1007, metadata !DIExpression()), !dbg !1125
  br label %432, !dbg !1391

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1392
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1063
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1393
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1394
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1396
  call void @llvm.dbg.value(metadata i8 %437, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %436, metadata !1007, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %435, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %434, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %433, metadata !992, metadata !DIExpression()), !dbg !1055
  %438 = add i64 %371, 1, !dbg !1397
  %439 = icmp ugt i64 %369, %438, !dbg !1399
  br i1 %439, label %440, label %562, !dbg !1400

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1401
  %442 = icmp ne i8 %441, 0, !dbg !1401
  %443 = and i8 %437, 1, !dbg !1401
  %444 = icmp eq i8 %443, 0, !dbg !1401
  %445 = and i1 %442, %444, !dbg !1401
  br i1 %445, label %446, label %457, !dbg !1401

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1404
  br i1 %447, label %448, label %450, !dbg !1408

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1404
  store i8 39, i8* %449, align 1, !dbg !1404, !tbaa !1077
  br label %450, !dbg !1404

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %451, metadata !992, metadata !DIExpression()), !dbg !1055
  %452 = icmp ult i64 %451, %129, !dbg !1409
  br i1 %452, label %453, label %455, !dbg !1412

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1409
  store i8 39, i8* %454, align 1, !dbg !1409, !tbaa !1077
  br label %455, !dbg !1409

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %456, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %457, !dbg !1413

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1414
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %459, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %458, metadata !992, metadata !DIExpression()), !dbg !1055
  %460 = icmp ult i64 %458, %129, !dbg !1415
  br i1 %460, label %461, label %463, !dbg !1417

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1415
  store i8 %435, i8* %462, align 1, !dbg !1415, !tbaa !1077
  br label %463, !dbg !1415

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %464, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %438, metadata !991, metadata !DIExpression()), !dbg !1116
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1418
  %466 = load i8, i8* %465, align 1, !dbg !1418, !tbaa !1077
  call void @llvm.dbg.value(metadata i8 %466, metadata !1002, metadata !DIExpression()), !dbg !1142
  br label %370, !dbg !1419, !llvm.loop !1420

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1423
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1115
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1056
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1424
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1115
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1115
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1140
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1140
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1140
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %476, metadata !1009, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 %475, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %155, metadata !1007, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %474, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %473, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %472, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %471, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %470, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %469, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %468, metadata !991, metadata !DIExpression()), !dbg !1116
  br i1 %105, label %489, label %478, !dbg !1425

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
  br i1 %112, label %490, label %512, !dbg !1427

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1428

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
  %501 = lshr i8 %494, 5, !dbg !1429
  %502 = zext i8 %501 to i64, !dbg !1429
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1430
  %504 = load i32, i32* %503, align 4, !dbg !1430, !tbaa !695
  %505 = and i8 %494, 31, !dbg !1431
  %506 = zext i8 %505 to i32, !dbg !1431
  %507 = shl i32 1, %506, !dbg !1432
  %508 = and i32 %504, %507, !dbg !1432
  %509 = icmp eq i32 %508, 0, !dbg !1432
  %510 = icmp eq i8 %155, 0, !dbg !1433
  %511 = and i1 %510, %509, !dbg !1434
  br i1 %511, label %562, label %524, !dbg !1434

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
  %523 = icmp eq i8 %155, 0, !dbg !1433
  br i1 %523, label %562, label %524, !dbg !1435

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1436
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1115
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1056
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1424
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1063
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1064
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1437
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1140
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %532, metadata !1009, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 %531, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %530, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %529, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %528, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %527, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %526, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %525, metadata !991, metadata !DIExpression()), !dbg !1116
  br i1 %110, label %534, label %661, !dbg !1440

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1008, metadata !DIExpression()), !dbg !1126
  %535 = and i8 %529, 1, !dbg !1442
  %536 = icmp eq i8 %535, 0, !dbg !1442
  %537 = and i1 %114, %536, !dbg !1442
  br i1 %537, label %538, label %554, !dbg !1442

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1444
  br i1 %539, label %540, label %542, !dbg !1448

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1444
  store i8 39, i8* %541, align 1, !dbg !1444, !tbaa !1077
  br label %542, !dbg !1444

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %543, metadata !992, metadata !DIExpression()), !dbg !1055
  %544 = icmp ult i64 %543, %533, !dbg !1449
  br i1 %544, label %545, label %547, !dbg !1452

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1449
  store i8 36, i8* %546, align 1, !dbg !1449, !tbaa !1077
  br label %547, !dbg !1449

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %548, metadata !992, metadata !DIExpression()), !dbg !1055
  %549 = icmp ult i64 %548, %533, !dbg !1453
  br i1 %549, label %550, label %552, !dbg !1456

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1453
  store i8 39, i8* %551, align 1, !dbg !1453, !tbaa !1077
  br label %552, !dbg !1453

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %553, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %554, !dbg !1457

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1414
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %556, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %555, metadata !992, metadata !DIExpression()), !dbg !1055
  %557 = icmp ult i64 %555, %533, !dbg !1458
  br i1 %557, label %558, label %560, !dbg !1461

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1458
  store i8 92, i8* %559, align 1, !dbg !1458, !tbaa !1077
  br label %560, !dbg !1458

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %561, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %572, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %571, metadata !1009, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 %570, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %569, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %568, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %567, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %566, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %565, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %564, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %563, metadata !991, metadata !DIExpression()), !dbg !1116
  br label %589, !dbg !1462

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1436
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1115
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1056
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1424
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1063
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1064
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1465
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1140
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1140
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %571, metadata !1009, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 %570, metadata !1008, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %569, metadata !1002, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8 %568, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %567, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %566, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %565, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %564, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %563, metadata !991, metadata !DIExpression()), !dbg !1116
  %573 = and i8 %567, 1, !dbg !1462
  %574 = icmp ne i8 %573, 0, !dbg !1462
  %575 = and i8 %570, 1, !dbg !1462
  %576 = icmp eq i8 %575, 0, !dbg !1462
  %577 = and i1 %574, %576, !dbg !1462
  br i1 %577, label %578, label %589, !dbg !1462

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1466
  br i1 %579, label %580, label %582, !dbg !1470

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1466
  store i8 39, i8* %581, align 1, !dbg !1466, !tbaa !1077
  br label %582, !dbg !1466

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %583, metadata !992, metadata !DIExpression()), !dbg !1055
  %584 = icmp ult i64 %583, %572, !dbg !1471
  br i1 %584, label %585, label %587, !dbg !1474

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1471
  store i8 39, i8* %586, align 1, !dbg !1471, !tbaa !1077
  br label %587, !dbg !1471

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %588, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, metadata !999, metadata !DIExpression()), !dbg !1063
  br label %589, !dbg !1475

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1414
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %598, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %597, metadata !992, metadata !DIExpression()), !dbg !1055
  %599 = icmp ult i64 %597, %590, !dbg !1476
  br i1 %599, label %600, label %602, !dbg !1479

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1476
  store i8 %592, i8* %601, align 1, !dbg !1476, !tbaa !1077
  br label %602, !dbg !1476

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %603, metadata !992, metadata !DIExpression()), !dbg !1055
  %604 = and i8 %591, 1, !dbg !1480
  %605 = icmp eq i8 %604, 0, !dbg !1480
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1482
  call void @llvm.dbg.value(metadata i8 %606, metadata !1001, metadata !DIExpression()), !dbg !1065
  br label %607, !dbg !1483

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1436
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1115
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1056
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1424
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1063
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1115
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1065
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %614, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %613, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %612, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %611, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %610, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %609, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %608, metadata !991, metadata !DIExpression()), !dbg !1116
  %616 = add i64 %608, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %616, metadata !991, metadata !DIExpression()), !dbg !1116
  br label %121, !dbg !1485, !llvm.loop !1486

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %125, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %125, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %126, metadata !999, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, metadata !1000, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, metadata !1001, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  %619 = icmp eq i64 %123, 0, !dbg !1488
  %620 = and i1 %114, %619, !dbg !1490
  %621 = xor i1 %620, true, !dbg !1490
  %622 = or i1 %110, %621, !dbg !1490
  br i1 %622, label %623, label %661, !dbg !1490

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1491
  %625 = xor i1 %624, true, !dbg !1491
  %626 = and i8 %127, 1, !dbg !1493
  %627 = icmp eq i8 %626, 0, !dbg !1493
  %628 = or i1 %627, %625, !dbg !1491
  br i1 %628, label %638, label %629, !dbg !1491

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1494
  %631 = icmp eq i8 %630, 0, !dbg !1494
  br i1 %631, label %634, label %632, !dbg !1497

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %618, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %95, metadata !989, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %96, metadata !990, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %124, metadata !993, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %125, metadata !985, metadata !DIExpression()), !dbg !1049
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1498
  br label %671, !dbg !1499

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1500
  %636 = icmp ne i64 %124, 0, !dbg !1502
  %637 = and i1 %636, %635, !dbg !1503
  br i1 %637, label %27, label %638, !dbg !1503

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !1047
  %639 = icmp ne i8* %98, null, !dbg !1504
  %640 = and i1 %639, %110, !dbg !1506
  br i1 %640, label %641, label %656, !dbg !1506

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !992, metadata !DIExpression()), !dbg !1055
  %642 = load i8, i8* %98, align 1, !dbg !1507, !tbaa !1077
  %643 = icmp eq i8 %642, 0, !dbg !1510
  br i1 %643, label %656, label %644, !dbg !1510

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %647, metadata !992, metadata !DIExpression()), !dbg !1055
  %648 = icmp ult i64 %647, %129, !dbg !1511
  br i1 %648, label %649, label %651, !dbg !1514

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1511
  store i8 %645, i8* %650, align 1, !dbg !1511, !tbaa !1077
  br label %651, !dbg !1511

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1514
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %653, metadata !994, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %652, metadata !992, metadata !DIExpression()), !dbg !1055
  %654 = load i8, i8* %653, align 1, !dbg !1507, !tbaa !1077
  %655 = icmp eq i8 %654, 0, !dbg !1510
  br i1 %655, label %656, label %644, !dbg !1510, !llvm.loop !1516

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1055
  call void @llvm.dbg.value(metadata i64 %657, metadata !992, metadata !DIExpression()), !dbg !1055
  %658 = icmp ult i64 %657, %129, !dbg !1518
  br i1 %658, label %659, label %671, !dbg !1520

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1521
  store i8 0, i8* %660, align 1, !dbg !1522, !tbaa !1077
  br label %671, !dbg !1521

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !983, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %663, metadata !985, metadata !DIExpression()), !dbg !1049
  %665 = icmp ne i32 %662, 2, !dbg !1523
  %666 = icmp eq i8 %102, 0, !dbg !1525
  %667 = or i1 %665, %666, !dbg !1526
  call void @llvm.dbg.value(metadata i32 4, metadata !986, metadata !DIExpression()), !dbg !1050
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %668, metadata !986, metadata !DIExpression()), !dbg !1050
  %669 = and i32 %5, -3, !dbg !1527
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1528
  br label %671, !dbg !1529

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1530
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1535, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %1, metadata !1536, metadata !DIExpression()), !dbg !1540
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1541
  call void @llvm.dbg.value(metadata i8* %3, metadata !1537, metadata !DIExpression()), !dbg !1542
  %4 = icmp eq i8* %3, %0, !dbg !1543
  br i1 %4, label %5, label %71, !dbg !1545

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %6, metadata !1538, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %6, metadata !1548, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* null, metadata !1554, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8 85, metadata !1555, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 84, metadata !1556, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8 70, metadata !1557, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8 45, metadata !1558, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8 56, metadata !1559, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 0, metadata !1560, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1563, metadata !DIExpression()), !dbg !1576
  %7 = load i8, i8* %6, align 1, !dbg !1577, !tbaa !1077
  %8 = and i8 %7, -33, !dbg !1577
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1577

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1579, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* null, metadata !1584, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 84, metadata !1585, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i8 70, metadata !1586, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 45, metadata !1587, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i8 56, metadata !1588, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1605
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1606
  %11 = load i8, i8* %10, align 1, !dbg !1606, !tbaa !1077
  %12 = and i8 %11, -33, !dbg !1606
  %13 = icmp eq i8 %12, 84, !dbg !1606
  br i1 %13, label %14, label %68, !dbg !1606

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8* null, metadata !1613, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 70, metadata !1614, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8 45, metadata !1615, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 56, metadata !1616, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1632
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1633
  %16 = load i8, i8* %15, align 1, !dbg !1633, !tbaa !1077
  %17 = and i8 %16, -33, !dbg !1633
  %18 = icmp eq i8 %17, 70, !dbg !1633
  br i1 %18, label %19, label %68, !dbg !1633

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1635, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* null, metadata !1640, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 45, metadata !1641, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 56, metadata !1642, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1657
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1658
  %21 = load i8, i8* %20, align 1, !dbg !1658, !tbaa !1077
  %22 = icmp eq i8 %21, 45, !dbg !1658
  br i1 %22, label %23, label %68, !dbg !1660

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1661, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8* null, metadata !1666, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 56, metadata !1667, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1681
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1682
  %25 = load i8, i8* %24, align 1, !dbg !1682, !tbaa !1077
  %26 = icmp eq i8 %25, 56, !dbg !1682
  br i1 %26, label %27, label %68, !dbg !1684

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1685, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* null, metadata !1690, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1691, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1694, metadata !DIExpression()), !dbg !1703
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1704
  %29 = load i8, i8* %28, align 1, !dbg !1704, !tbaa !1077
  %30 = icmp eq i8 %29, 0, !dbg !1704
  br i1 %30, label %31, label %68, !dbg !1706

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1707, !tbaa !1077
  %33 = icmp eq i8 %32, 96, !dbg !1708
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1707
  br label %71, !dbg !1709

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1579, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8* null, metadata !1584, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 66, metadata !1585, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 49, metadata !1586, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 56, metadata !1587, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 48, metadata !1588, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 51, metadata !1589, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 48, metadata !1590, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1722
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1723
  %37 = load i8, i8* %36, align 1, !dbg !1723, !tbaa !1077
  %38 = and i8 %37, -33, !dbg !1723
  %39 = icmp eq i8 %38, 66, !dbg !1723
  br i1 %39, label %40, label %68, !dbg !1723

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1608, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8* null, metadata !1613, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 49, metadata !1614, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 56, metadata !1615, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 48, metadata !1616, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 51, metadata !1617, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 48, metadata !1618, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1733
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1734
  %42 = load i8, i8* %41, align 1, !dbg !1734, !tbaa !1077
  %43 = icmp eq i8 %42, 49, !dbg !1734
  br i1 %43, label %44, label %68, !dbg !1735

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1635, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8* null, metadata !1640, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 56, metadata !1641, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 48, metadata !1642, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 51, metadata !1643, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 48, metadata !1644, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1744
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1745
  %46 = load i8, i8* %45, align 1, !dbg !1745, !tbaa !1077
  %47 = icmp eq i8 %46, 56, !dbg !1745
  br i1 %47, label %48, label %68, !dbg !1746

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1661, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* null, metadata !1666, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 48, metadata !1667, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 51, metadata !1668, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 48, metadata !1669, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1754
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1755
  %50 = load i8, i8* %49, align 1, !dbg !1755, !tbaa !1077
  %51 = icmp eq i8 %50, 48, !dbg !1755
  br i1 %51, label %52, label %68, !dbg !1756

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1685, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* null, metadata !1690, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 51, metadata !1691, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 48, metadata !1692, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1694, metadata !DIExpression()), !dbg !1763
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1764
  %54 = load i8, i8* %53, align 1, !dbg !1764, !tbaa !1077
  %55 = icmp eq i8 %54, 51, !dbg !1764
  br i1 %55, label %56, label %68, !dbg !1765

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1766, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* null, metadata !1771, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 48, metadata !1772, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1782
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1783
  %58 = load i8, i8* %57, align 1, !dbg !1783, !tbaa !1077
  %59 = icmp eq i8 %58, 48, !dbg !1783
  br i1 %59, label %60, label %68, !dbg !1785

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1786, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* null, metadata !1791, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1792, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1800
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1801
  %62 = load i8, i8* %61, align 1, !dbg !1801, !tbaa !1077
  %63 = icmp eq i8 %62, 0, !dbg !1801
  br i1 %63, label %64, label %68, !dbg !1803

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1804, !tbaa !1077
  %66 = icmp eq i8 %65, 96, !dbg !1805
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1804
  br label %71, !dbg !1806

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1807
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1808
  br label %71, !dbg !1809

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1810
  ret i8* %72, !dbg !1811
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1812 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1816, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %1, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1818, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %0, metadata !1822, metadata !DIExpression()) #10, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %1, metadata !1827, metadata !DIExpression()) #10, !dbg !1837
  call void @llvm.dbg.value(metadata i64* null, metadata !1828, metadata !DIExpression()) #10, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1829, metadata !DIExpression()) #10, !dbg !1839
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1840
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1830, metadata !DIExpression()) #10, !dbg !1841
  %6 = tail call i32* @__errno_location() #17, !dbg !1842
  %7 = load i32, i32* %6, align 4, !dbg !1842, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %7, metadata !1831, metadata !DIExpression()) #10, !dbg !1843
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1844
  %9 = load i32, i32* %8, align 4, !dbg !1844, !tbaa !915
  %10 = or i32 %9, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %10, metadata !1832, metadata !DIExpression()) #10, !dbg !1846
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1847
  %12 = load i32, i32* %11, align 8, !dbg !1847, !tbaa !855
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1848
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1849
  %15 = load i8*, i8** %14, align 8, !dbg !1849, !tbaa !941
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1850
  %17 = load i8*, i8** %16, align 8, !dbg !1850, !tbaa !944
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1851
  %19 = add i64 %18, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %19, metadata !1833, metadata !DIExpression()) #10, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %19, metadata !1854, metadata !DIExpression()) #10, !dbg !1859
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %20, metadata !1834, metadata !DIExpression()) #10, !dbg !1862
  %21 = load i32, i32* %11, align 8, !dbg !1863, !tbaa !855
  %22 = load i8*, i8** %14, align 8, !dbg !1864, !tbaa !941
  %23 = load i8*, i8** %16, align 8, !dbg !1865, !tbaa !944
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1866
  store i32 %7, i32* %6, align 4, !dbg !1867, !tbaa !695
  ret i8* %20, !dbg !1868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1822, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %1, metadata !1827, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64* %2, metadata !1828, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1829, metadata !DIExpression()), !dbg !1872
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1873
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1873
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1830, metadata !DIExpression()), !dbg !1874
  %7 = tail call i32* @__errno_location() #17, !dbg !1875
  %8 = load i32, i32* %7, align 4, !dbg !1875, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %8, metadata !1831, metadata !DIExpression()), !dbg !1876
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1877
  %10 = load i32, i32* %9, align 4, !dbg !1877, !tbaa !915
  %11 = icmp ne i64* %2, null, !dbg !1878
  %12 = xor i1 %11, true, !dbg !1878
  %13 = zext i1 %12 to i32, !dbg !1878
  %14 = or i32 %10, %13, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %14, metadata !1832, metadata !DIExpression()), !dbg !1880
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1881
  %16 = load i32, i32* %15, align 8, !dbg !1881, !tbaa !855
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1882
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1883
  %19 = load i8*, i8** %18, align 8, !dbg !1883, !tbaa !941
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1884
  %21 = load i8*, i8** %20, align 8, !dbg !1884, !tbaa !944
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1885
  %23 = add i64 %22, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %23, metadata !1833, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %23, metadata !1854, metadata !DIExpression()) #10, !dbg !1888
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %24, metadata !1834, metadata !DIExpression()), !dbg !1891
  %25 = load i32, i32* %15, align 8, !dbg !1892, !tbaa !855
  %26 = load i8*, i8** %18, align 8, !dbg !1893, !tbaa !941
  %27 = load i8*, i8** %20, align 8, !dbg !1894, !tbaa !944
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1895
  store i32 %8, i32* %7, align 4, !dbg !1896, !tbaa !695
  br i1 %11, label %29, label %30, !dbg !1897

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1898, !tbaa !1900
  br label %30, !dbg !1902

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1904 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1908, !tbaa !628
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 1, metadata !1907, metadata !DIExpression()), !dbg !1910
  %2 = load i32, i32* @nslots, align 4, !dbg !1911, !tbaa !695
  %3 = icmp sgt i32 %2, 1, !dbg !1914
  br i1 %3, label %4, label %12, !dbg !1915

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1907, metadata !DIExpression()), !dbg !1910
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1916
  %7 = load i8*, i8** %6, align 8, !dbg !1916, !tbaa !1917
  tail call void @free(i8* %7) #10, !dbg !1919
  %8 = add nuw nsw i64 %5, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i32 undef, metadata !1907, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1910
  %9 = load i32, i32* @nslots, align 4, !dbg !1911, !tbaa !695
  %10 = sext i32 %9 to i64, !dbg !1914
  %11 = icmp slt i64 %8, %10, !dbg !1914
  br i1 %11, label %4, label %12, !dbg !1915, !llvm.loop !1921

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1923
  %14 = load i8*, i8** %13, align 8, !dbg !1923, !tbaa !1917
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1925
  br i1 %15, label %17, label %16, !dbg !1926

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1927
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1929, !tbaa !1930
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1931, !tbaa !1917
  br label %17, !dbg !1932

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1933
  br i1 %18, label %21, label %19, !dbg !1935

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1936
  tail call void @free(i8* %20) #10, !dbg !1938
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1939, !tbaa !628
  br label %21, !dbg !1940

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1941, !tbaa !695
  ret void, !dbg !1942
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1943 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1947, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %1, metadata !1948, metadata !DIExpression()), !dbg !1950
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1951
  ret i8* %3, !dbg !1952
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !1953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1957, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %1, metadata !1958, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %2, metadata !1959, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1960, metadata !DIExpression()), !dbg !1975
  %5 = tail call i32* @__errno_location() #17, !dbg !1976
  %6 = load i32, i32* %5, align 4, !dbg !1976, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %6, metadata !1961, metadata !DIExpression()), !dbg !1977
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1978, !tbaa !628
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1962, metadata !DIExpression()), !dbg !1979
  %8 = icmp slt i32 %0, 0, !dbg !1980
  br i1 %8, label %9, label %10, !dbg !1982

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1983
  unreachable, !dbg !1983

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1984, !tbaa !695
  %12 = icmp sgt i32 %11, %0, !dbg !1985
  br i1 %12, label %34, label %13, !dbg !1986

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1987
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1966, metadata !DIExpression()), !dbg !1988
  %15 = icmp eq i32 %0, 2147483647, !dbg !1989
  br i1 %15, label %16, label %17, !dbg !1991

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1992
  unreachable, !dbg !1992

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1993
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1993
  %20 = add nsw i32 %0, 1, !dbg !1994
  %21 = sext i32 %20 to i64, !dbg !1995
  %22 = shl nsw i64 %21, 4, !dbg !1996
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1997
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1962, metadata !DIExpression()), !dbg !1979
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1998, !tbaa !628
  br i1 %14, label %25, label %26, !dbg !1999

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2000, !tbaa.struct !2002
  br label %26, !dbg !2003

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2004, !tbaa !695
  %28 = sext i32 %27 to i64, !dbg !2005
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2005
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2006
  %31 = sub nsw i32 %20, %27, !dbg !2007
  %32 = sext i32 %31 to i64, !dbg !2008
  %33 = shl nsw i64 %32, 4, !dbg !2009
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2006
  store i32 %20, i32* @nslots, align 4, !dbg !2010, !tbaa !695
  br label %34, !dbg !2011

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2012
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1962, metadata !DIExpression()), !dbg !1979
  %36 = sext i32 %0 to i64, !dbg !2013
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2014
  %38 = load i64, i64* %37, align 8, !dbg !2014, !tbaa !1930
  call void @llvm.dbg.value(metadata i64 %38, metadata !1967, metadata !DIExpression()), !dbg !2015
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2016
  %40 = load i8*, i8** %39, align 8, !dbg !2016, !tbaa !1917
  call void @llvm.dbg.value(metadata i8* %40, metadata !1969, metadata !DIExpression()), !dbg !2017
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2018
  %42 = load i32, i32* %41, align 4, !dbg !2018, !tbaa !915
  %43 = or i32 %42, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %43, metadata !1970, metadata !DIExpression()), !dbg !2020
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2021
  %45 = load i32, i32* %44, align 8, !dbg !2021, !tbaa !855
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2022
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2023
  %48 = load i8*, i8** %47, align 8, !dbg !2023, !tbaa !941
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2024
  %50 = load i8*, i8** %49, align 8, !dbg !2024, !tbaa !944
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %51, metadata !1971, metadata !DIExpression()), !dbg !2026
  %52 = icmp ugt i64 %38, %51, !dbg !2027
  br i1 %52, label %63, label %53, !dbg !2029

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %54, metadata !1967, metadata !DIExpression()), !dbg !2015
  store i64 %54, i64* %37, align 8, !dbg !2032, !tbaa !1930
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2033
  br i1 %55, label %57, label %56, !dbg !2035

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2036
  br label %57, !dbg !2036

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1854, metadata !DIExpression()) #10, !dbg !2037
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %58, metadata !1969, metadata !DIExpression()), !dbg !2017
  store i8* %58, i8** %39, align 8, !dbg !2040, !tbaa !1917
  %59 = load i32, i32* %44, align 8, !dbg !2041, !tbaa !855
  %60 = load i8*, i8** %47, align 8, !dbg !2042, !tbaa !941
  %61 = load i8*, i8** %49, align 8, !dbg !2043, !tbaa !944
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2044
  br label %63, !dbg !2045

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2046
  call void @llvm.dbg.value(metadata i8* %64, metadata !1969, metadata !DIExpression()), !dbg !2017
  store i32 %6, i32* %5, align 4, !dbg !2047, !tbaa !695
  ret i8* %64, !dbg !2048
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %1, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %2, metadata !2055, metadata !DIExpression()), !dbg !2058
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2059
  ret i8* %4, !dbg !2060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2061 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 0, metadata !1947, metadata !DIExpression()) #10, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %0, metadata !1948, metadata !DIExpression()) #10, !dbg !2069
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2070
  ret i8* %2, !dbg !2071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2072 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %1, metadata !2077, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()) #10, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %0, metadata !2054, metadata !DIExpression()) #10, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()) #10, !dbg !2083
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2084
  ret i8* %3, !dbg !2085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2086 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %1, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %2, metadata !2092, metadata !DIExpression()), !dbg !2096
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2093, metadata !DIExpression(DW_OP_deref)), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !2099, metadata !DIExpression()) #10, !dbg !2105
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2107, !alias.scope !2108
  %6 = icmp eq i32 %1, 10, !dbg !2111
  br i1 %6, label %7, label %8, !dbg !2113

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2114, !noalias !2108
  unreachable, !dbg !2114

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2115
  store i32 %1, i32* %9, align 8, !dbg !2116, !tbaa !855, !alias.scope !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2093, metadata !DIExpression(DW_OP_deref)), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2104, metadata !DIExpression(DW_OP_deref)), !dbg !2107
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2118
  ret i8* %10, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2120 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %1, metadata !2125, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %2, metadata !2126, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %3, metadata !2127, metadata !DIExpression()), !dbg !2132
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %1, metadata !2099, metadata !DIExpression()) #10, !dbg !2135
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2137, !alias.scope !2138
  %7 = icmp eq i32 %1, 10, !dbg !2141
  br i1 %7, label %8, label %9, !dbg !2142

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2143, !noalias !2138
  unreachable, !dbg !2143

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2144
  store i32 %1, i32* %10, align 8, !dbg !2145, !tbaa !855, !alias.scope !2138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2104, metadata !DIExpression(DW_OP_deref)), !dbg !2137
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2146
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2147
  ret i8* %11, !dbg !2148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2149 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8* %1, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 0, metadata !2090, metadata !DIExpression()) #10, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()) #10, !dbg !2159
  call void @llvm.dbg.value(metadata i8* %1, metadata !2092, metadata !DIExpression()) #10, !dbg !2160
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2161
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2093, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %0, metadata !2099, metadata !DIExpression()) #10, !dbg !2163
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2165, !alias.scope !2166
  %5 = icmp eq i32 %0, 10, !dbg !2169
  br i1 %5, label %6, label %7, !dbg !2170

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2171, !noalias !2166
  unreachable, !dbg !2171

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2172
  store i32 %0, i32* %8, align 8, !dbg !2173, !tbaa !855, !alias.scope !2166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2093, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2104, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2165
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2175
  ret i8* %9, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2177 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %1, metadata !2182, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %2, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()) #10, !dbg !2189
  call void @llvm.dbg.value(metadata i8* %1, metadata !2126, metadata !DIExpression()) #10, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %2, metadata !2127, metadata !DIExpression()) #10, !dbg !2191
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2128, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %0, metadata !2099, metadata !DIExpression()) #10, !dbg !2194
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2196, !alias.scope !2197
  %6 = icmp eq i32 %0, 10, !dbg !2200
  br i1 %6, label %7, label %8, !dbg !2201

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2202, !noalias !2197
  unreachable, !dbg !2202

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2203
  store i32 %0, i32* %9, align 8, !dbg !2204, !tbaa !855, !alias.scope !2197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2128, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2104, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2196
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2205
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2206
  ret i8* %10, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2208 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %2, metadata !2214, metadata !DIExpression()), !dbg !2218
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2219
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2220, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2215, metadata !DIExpression(DW_OP_deref)), !dbg !2222
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !874, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %2, metadata !875, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %2, metadata !877, metadata !DIExpression()), !dbg !2227
  %6 = lshr i8 %2, 5, !dbg !2228
  %7 = zext i8 %6 to i64, !dbg !2228
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2229
  call void @llvm.dbg.value(metadata i32* %8, metadata !879, metadata !DIExpression()), !dbg !2230
  %9 = and i8 %2, 31, !dbg !2231
  %10 = zext i8 %9 to i32, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %10, metadata !881, metadata !DIExpression()), !dbg !2232
  %11 = load i32, i32* %8, align 4, !dbg !2233, !tbaa !695
  %12 = lshr i32 %11, %10, !dbg !2234
  %13 = and i32 %12, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %13, metadata !882, metadata !DIExpression()), !dbg !2236
  %14 = xor i32 %13, 1, !dbg !2237
  %15 = shl i32 %14, %10, !dbg !2238
  %16 = xor i32 %15, %11, !dbg !2239
  store i32 %16, i32* %8, align 4, !dbg !2239, !tbaa !695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2215, metadata !DIExpression(DW_OP_deref)), !dbg !2222
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2241
  ret i8* %17, !dbg !2242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2243 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %1, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #10, !dbg !2251
  call void @llvm.dbg.value(metadata i64 -1, metadata !2213, metadata !DIExpression()) #10, !dbg !2253
  call void @llvm.dbg.value(metadata i8 %1, metadata !2214, metadata !DIExpression()) #10, !dbg !2254
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2256, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2257
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !874, metadata !DIExpression()) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i8 %1, metadata !875, metadata !DIExpression()) #10, !dbg !2260
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8 %1, metadata !877, metadata !DIExpression()) #10, !dbg !2262
  %5 = lshr i8 %1, 5, !dbg !2263
  %6 = zext i8 %5 to i64, !dbg !2263
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2264
  call void @llvm.dbg.value(metadata i32* %7, metadata !879, metadata !DIExpression()) #10, !dbg !2265
  %8 = and i8 %1, 31, !dbg !2266
  %9 = zext i8 %8 to i32, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %9, metadata !881, metadata !DIExpression()) #10, !dbg !2267
  %10 = load i32, i32* %7, align 4, !dbg !2268, !tbaa !695
  %11 = lshr i32 %10, %9, !dbg !2269
  %12 = and i32 %11, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %12, metadata !882, metadata !DIExpression()) #10, !dbg !2271
  %13 = xor i32 %12, 1, !dbg !2272
  %14 = shl i32 %13, %9, !dbg !2273
  %15 = xor i32 %14, %10, !dbg !2274
  store i32 %15, i32* %7, align 4, !dbg !2274, !tbaa !695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2257
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2276
  ret i8* %16, !dbg !2277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2278 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i8 58, metadata !2248, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #10, !dbg !2285
  call void @llvm.dbg.value(metadata i64 -1, metadata !2213, metadata !DIExpression()) #10, !dbg !2287
  call void @llvm.dbg.value(metadata i8 58, metadata !2214, metadata !DIExpression()) #10, !dbg !2288
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2290, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !874, metadata !DIExpression()) #10, !dbg !2292
  call void @llvm.dbg.value(metadata i8 58, metadata !875, metadata !DIExpression()) #10, !dbg !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()) #10, !dbg !2295
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()) #10, !dbg !2296
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2297
  call void @llvm.dbg.value(metadata i32* %4, metadata !879, metadata !DIExpression()) #10, !dbg !2298
  call void @llvm.dbg.value(metadata i32 26, metadata !881, metadata !DIExpression()) #10, !dbg !2299
  %5 = load i32, i32* %4, align 4, !dbg !2300, !tbaa !695
  %6 = or i32 %5, 67108864, !dbg !2301
  store i32 %6, i32* %4, align 4, !dbg !2301, !tbaa !695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2291
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2302
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2303
  ret i8* %7, !dbg !2304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2305 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %1, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8 58, metadata !2214, metadata !DIExpression()) #10, !dbg !2314
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2316, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !874, metadata !DIExpression()) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i8 58, metadata !875, metadata !DIExpression()) #10, !dbg !2320
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()) #10, !dbg !2321
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()) #10, !dbg !2322
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2323
  call void @llvm.dbg.value(metadata i32* %5, metadata !879, metadata !DIExpression()) #10, !dbg !2324
  call void @llvm.dbg.value(metadata i32 26, metadata !881, metadata !DIExpression()) #10, !dbg !2325
  %6 = load i32, i32* %5, align 4, !dbg !2326, !tbaa !695
  %7 = or i32 %6, 67108864, !dbg !2327
  store i32 %7, i32* %5, align 4, !dbg !2327, !tbaa !695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2215, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2317
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2329
  ret i8* %8, !dbg !2330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2331 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2104, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %0, metadata !2333, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %1, metadata !2334, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %2, metadata !2335, metadata !DIExpression()), !dbg !2341
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2342
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2342
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2343
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2343
  call void @llvm.dbg.value(metadata i32 %1, metadata !2099, metadata !DIExpression()) #10, !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !2104, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2337
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2337, !alias.scope !2345
  %8 = icmp eq i32 %1, 10, !dbg !2348
  br i1 %8, label %9, label %10, !dbg !2349

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2350, !noalias !2345
  unreachable, !dbg !2350

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2104, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2337
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2343
  store i32 %1, i32* %11, align 8, !dbg !2343
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2343
  %13 = bitcast i32* %12 to i8*, !dbg !2343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2343
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2336, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !874, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 58, metadata !875, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 1, metadata !876, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8 58, metadata !877, metadata !DIExpression()), !dbg !2356
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2357
  call void @llvm.dbg.value(metadata i32* %14, metadata !879, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 26, metadata !881, metadata !DIExpression()), !dbg !2359
  %15 = load i32, i32* %14, align 4, !dbg !2360, !tbaa !695
  %16 = or i32 %15, 67108864, !dbg !2361
  store i32 %16, i32* %14, align 4, !dbg !2361, !tbaa !695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2336, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2363
  ret i8* %17, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2365 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* %2, metadata !2371, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %3, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()) #10, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !2382, metadata !DIExpression()) #10, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !2383, metadata !DIExpression()) #10, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %3, metadata !2384, metadata !DIExpression()) #10, !dbg !2391
  call void @llvm.dbg.value(metadata i64 -1, metadata !2385, metadata !DIExpression()) #10, !dbg !2392
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2394, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !923, metadata !DIExpression()) #10, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %1, metadata !924, metadata !DIExpression()) #10, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %2, metadata !925, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !923, metadata !DIExpression()) #10, !dbg !2396
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2400
  store i32 10, i32* %7, align 8, !dbg !2401, !tbaa !855
  %8 = icmp ne i8* %1, null, !dbg !2402
  %9 = icmp ne i8* %2, null, !dbg !2403
  %10 = and i1 %8, %9, !dbg !2404
  br i1 %10, label %12, label %11, !dbg !2404

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2405
  unreachable, !dbg !2405

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2406
  store i8* %1, i8** %13, align 8, !dbg !2407, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2408
  store i8* %2, i8** %14, align 8, !dbg !2409, !tbaa !944
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2395
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2411
  ret i8* %15, !dbg !2412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2378 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %1, metadata !2382, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %2, metadata !2383, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %3, metadata !2384, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %4, metadata !2385, metadata !DIExpression()), !dbg !2417
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2419, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2386, metadata !DIExpression(DW_OP_deref)), !dbg !2420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !923, metadata !DIExpression()) #10, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !924, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !925, metadata !DIExpression()) #10, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !923, metadata !DIExpression()) #10, !dbg !2421
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2425
  store i32 10, i32* %8, align 8, !dbg !2426, !tbaa !855
  %9 = icmp ne i8* %1, null, !dbg !2427
  %10 = icmp ne i8* %2, null, !dbg !2428
  %11 = and i1 %9, %10, !dbg !2429
  br i1 %11, label %13, label %12, !dbg !2429

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2430
  unreachable, !dbg !2430

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2431
  store i8* %1, i8** %14, align 8, !dbg !2432, !tbaa !941
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2433
  store i8* %2, i8** %15, align 8, !dbg !2434, !tbaa !944
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2386, metadata !DIExpression(DW_OP_deref)), !dbg !2420
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2436
  ret i8* %16, !dbg !2437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2438 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %2, metadata !2444, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()) #10, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %0, metadata !2370, metadata !DIExpression()) #10, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()) #10, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %2, metadata !2372, metadata !DIExpression()) #10, !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()) #10, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %2, metadata !2384, metadata !DIExpression()) #10, !dbg !2457
  call void @llvm.dbg.value(metadata i64 -1, metadata !2385, metadata !DIExpression()) #10, !dbg !2458
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2460, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !923, metadata !DIExpression()) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %0, metadata !924, metadata !DIExpression()) #10, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %1, metadata !925, metadata !DIExpression()) #10, !dbg !2465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !923, metadata !DIExpression()) #10, !dbg !2462
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2466
  store i32 10, i32* %6, align 8, !dbg !2467, !tbaa !855
  %7 = icmp ne i8* %0, null, !dbg !2468
  %8 = icmp ne i8* %1, null, !dbg !2469
  %9 = and i1 %7, %8, !dbg !2470
  br i1 %9, label %11, label %10, !dbg !2470

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2471
  unreachable, !dbg !2471

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2472
  store i8* %0, i8** %12, align 8, !dbg !2473, !tbaa !941
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2474
  store i8* %1, i8** %13, align 8, !dbg !2475, !tbaa !944
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2461
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2476
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2477
  ret i8* %14, !dbg !2478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2479 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2483, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %1, metadata !2484, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %2, metadata !2485, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %3, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()) #10, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()) #10, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %2, metadata !2384, metadata !DIExpression()) #10, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %3, metadata !2385, metadata !DIExpression()) #10, !dbg !2496
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2498, !tbaa.struct !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !923, metadata !DIExpression()) #10, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !924, metadata !DIExpression()) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %1, metadata !925, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !923, metadata !DIExpression()) #10, !dbg !2500
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2504
  store i32 10, i32* %7, align 8, !dbg !2505, !tbaa !855
  %8 = icmp ne i8* %0, null, !dbg !2506
  %9 = icmp ne i8* %1, null, !dbg !2507
  %10 = and i1 %8, %9, !dbg !2508
  br i1 %10, label %12, label %11, !dbg !2508

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2509
  unreachable, !dbg !2509

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2510
  store i8* %0, i8** %13, align 8, !dbg !2511, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2512
  store i8* %1, i8** %14, align 8, !dbg !2513, !tbaa !944
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2386, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2499
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2515
  ret i8* %15, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %1, metadata !2522, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %2, metadata !2523, metadata !DIExpression()), !dbg !2526
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2527
  ret i8* %4, !dbg !2528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()) #10, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %1, metadata !2523, metadata !DIExpression()) #10, !dbg !2540
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2541
  ret i8* %3, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()) #10, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !2522, metadata !DIExpression()) #10, !dbg !2553
  call void @llvm.dbg.value(metadata i64 -1, metadata !2523, metadata !DIExpression()) #10, !dbg !2554
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2555
  ret i8* %3, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2547, metadata !DIExpression()) #10, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()) #10, !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()) #10, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i64 -1, metadata !2523, metadata !DIExpression()) #10, !dbg !2569
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2570
  ret i8* %2, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2572 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2632, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %1, metadata !2633, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2634, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %3, metadata !2635, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8** %4, metadata !2636, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %5, metadata !2637, metadata !DIExpression()), !dbg !2643
  %7 = icmp eq i8* %1, null, !dbg !2644
  br i1 %7, label %10, label %8, !dbg !2646

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2647
  br label %12, !dbg !2647

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2648
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #10, !dbg !2649
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2649
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #10, !dbg !2650
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2650
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
  ], !dbg !2651

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2652
  unreachable, !dbg !2652

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #10, !dbg !2654
  %20 = load i8*, i8** %4, align 8, !dbg !2654, !tbaa !628
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2654
  br label %146, !dbg !2655

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #10, !dbg !2656
  %24 = load i8*, i8** %4, align 8, !dbg !2656, !tbaa !628
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2656
  %26 = load i8*, i8** %25, align 8, !dbg !2656, !tbaa !628
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2656
  br label %146, !dbg !2657

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #10, !dbg !2658
  %30 = load i8*, i8** %4, align 8, !dbg !2658, !tbaa !628
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2658
  %32 = load i8*, i8** %31, align 8, !dbg !2658, !tbaa !628
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2658
  %34 = load i8*, i8** %33, align 8, !dbg !2658, !tbaa !628
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2658
  br label %146, !dbg !2659

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #10, !dbg !2660
  %38 = load i8*, i8** %4, align 8, !dbg !2660, !tbaa !628
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2660
  %40 = load i8*, i8** %39, align 8, !dbg !2660, !tbaa !628
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2660
  %42 = load i8*, i8** %41, align 8, !dbg !2660, !tbaa !628
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2660
  %44 = load i8*, i8** %43, align 8, !dbg !2660, !tbaa !628
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2660
  br label %146, !dbg !2661

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #10, !dbg !2662
  %48 = load i8*, i8** %4, align 8, !dbg !2662, !tbaa !628
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2662
  %50 = load i8*, i8** %49, align 8, !dbg !2662, !tbaa !628
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2662
  %52 = load i8*, i8** %51, align 8, !dbg !2662, !tbaa !628
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2662
  %54 = load i8*, i8** %53, align 8, !dbg !2662, !tbaa !628
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2662
  %56 = load i8*, i8** %55, align 8, !dbg !2662, !tbaa !628
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2662
  br label %146, !dbg !2663

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #10, !dbg !2664
  %60 = load i8*, i8** %4, align 8, !dbg !2664, !tbaa !628
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2664
  %62 = load i8*, i8** %61, align 8, !dbg !2664, !tbaa !628
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2664
  %64 = load i8*, i8** %63, align 8, !dbg !2664, !tbaa !628
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2664
  %66 = load i8*, i8** %65, align 8, !dbg !2664, !tbaa !628
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2664
  %68 = load i8*, i8** %67, align 8, !dbg !2664, !tbaa !628
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2664
  %70 = load i8*, i8** %69, align 8, !dbg !2664, !tbaa !628
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2664
  br label %146, !dbg !2665

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #10, !dbg !2666
  %74 = load i8*, i8** %4, align 8, !dbg !2666, !tbaa !628
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2666
  %76 = load i8*, i8** %75, align 8, !dbg !2666, !tbaa !628
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2666
  %78 = load i8*, i8** %77, align 8, !dbg !2666, !tbaa !628
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2666
  %80 = load i8*, i8** %79, align 8, !dbg !2666, !tbaa !628
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2666
  %82 = load i8*, i8** %81, align 8, !dbg !2666, !tbaa !628
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2666
  %84 = load i8*, i8** %83, align 8, !dbg !2666, !tbaa !628
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2666
  %86 = load i8*, i8** %85, align 8, !dbg !2666, !tbaa !628
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2666
  br label %146, !dbg !2667

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #10, !dbg !2668
  %90 = load i8*, i8** %4, align 8, !dbg !2668, !tbaa !628
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2668
  %92 = load i8*, i8** %91, align 8, !dbg !2668, !tbaa !628
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2668
  %94 = load i8*, i8** %93, align 8, !dbg !2668, !tbaa !628
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2668
  %96 = load i8*, i8** %95, align 8, !dbg !2668, !tbaa !628
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2668
  %98 = load i8*, i8** %97, align 8, !dbg !2668, !tbaa !628
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2668
  %100 = load i8*, i8** %99, align 8, !dbg !2668, !tbaa !628
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2668
  %102 = load i8*, i8** %101, align 8, !dbg !2668, !tbaa !628
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2668
  %104 = load i8*, i8** %103, align 8, !dbg !2668, !tbaa !628
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2668
  br label %146, !dbg !2669

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #10, !dbg !2670
  %108 = load i8*, i8** %4, align 8, !dbg !2670, !tbaa !628
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2670
  %110 = load i8*, i8** %109, align 8, !dbg !2670, !tbaa !628
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2670
  %112 = load i8*, i8** %111, align 8, !dbg !2670, !tbaa !628
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2670
  %114 = load i8*, i8** %113, align 8, !dbg !2670, !tbaa !628
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2670
  %116 = load i8*, i8** %115, align 8, !dbg !2670, !tbaa !628
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2670
  %118 = load i8*, i8** %117, align 8, !dbg !2670, !tbaa !628
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2670
  %120 = load i8*, i8** %119, align 8, !dbg !2670, !tbaa !628
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2670
  %122 = load i8*, i8** %121, align 8, !dbg !2670, !tbaa !628
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2670
  %124 = load i8*, i8** %123, align 8, !dbg !2670, !tbaa !628
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2670
  br label %146, !dbg !2671

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #10, !dbg !2672
  %128 = load i8*, i8** %4, align 8, !dbg !2672, !tbaa !628
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2672
  %130 = load i8*, i8** %129, align 8, !dbg !2672, !tbaa !628
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2672
  %132 = load i8*, i8** %131, align 8, !dbg !2672, !tbaa !628
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2672
  %134 = load i8*, i8** %133, align 8, !dbg !2672, !tbaa !628
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2672
  %136 = load i8*, i8** %135, align 8, !dbg !2672, !tbaa !628
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2672
  %138 = load i8*, i8** %137, align 8, !dbg !2672, !tbaa !628
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2672
  %140 = load i8*, i8** %139, align 8, !dbg !2672, !tbaa !628
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2672
  %142 = load i8*, i8** %141, align 8, !dbg !2672, !tbaa !628
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2672
  %144 = load i8*, i8** %143, align 8, !dbg !2672, !tbaa !628
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2672
  br label %146, !dbg !2673

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2675 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2679, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %3, metadata !2682, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8** %4, metadata !2683, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2684, metadata !DIExpression()), !dbg !2690
  br label %6, !dbg !2691

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2693
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2695
  %9 = load i8*, i8** %8, align 8, !dbg !2695, !tbaa !628
  %10 = icmp eq i8* %9, null, !dbg !2696
  %11 = add i64 %7, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %11, metadata !2684, metadata !DIExpression()), !dbg !2690
  br i1 %10, label %12, label %6, !dbg !2696, !llvm.loop !2698

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %7, metadata !2684, metadata !DIExpression()), !dbg !2690
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2700
  ret void, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2702 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2713, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !2715, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %3, metadata !2716, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2717, metadata !DIExpression()), !dbg !2725
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2726
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2726
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2719, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2718, metadata !DIExpression()), !dbg !2728
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2718, metadata !DIExpression()), !dbg !2728
  %11 = load i32, i32* %8, align 8, !dbg !2729
  %12 = icmp ult i32 %11, 41, !dbg !2729
  br i1 %12, label %13, label %18, !dbg !2729

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2729
  %15 = sext i32 %11 to i64, !dbg !2729
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2729
  %17 = add i32 %11, 8, !dbg !2729
  store i32 %17, i32* %8, align 8, !dbg !2729
  br label %21, !dbg !2729

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2729
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2729
  store i8* %20, i8** %10, align 8, !dbg !2729
  br label %21, !dbg !2729

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2729
  %25 = load i8*, i8** %24, align 8, !dbg !2729
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2732
  store i8* %25, i8** %26, align 16, !dbg !2733, !tbaa !628
  %27 = icmp eq i8* %25, null, !dbg !2734
  br i1 %27, label %30, label %28, !dbg !2735

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 1, metadata !2718, metadata !DIExpression()), !dbg !2728
  %29 = icmp ult i32 %22, 41, !dbg !2729
  br i1 %29, label %35, label %32, !dbg !2729

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2736
  call void @llvm.dbg.value(metadata i64 %31, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %31, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2738
  ret void, !dbg !2738

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2729
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2729
  store i8* %34, i8** %10, align 8, !dbg !2729
  br label %40, !dbg !2729

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2729
  %37 = sext i32 %22 to i64, !dbg !2729
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2729
  %39 = add i32 %22, 8, !dbg !2729
  store i32 %39, i32* %8, align 8, !dbg !2729
  br label %40, !dbg !2729

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2729
  %44 = load i8*, i8** %43, align 8, !dbg !2729
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2732
  store i8* %44, i8** %45, align 8, !dbg !2733, !tbaa !628
  %46 = icmp eq i8* %44, null, !dbg !2734
  br i1 %46, label %30, label %47, !dbg !2735

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 2, metadata !2718, metadata !DIExpression()), !dbg !2728
  %48 = icmp ult i32 %41, 41, !dbg !2729
  br i1 %48, label %52, label %49, !dbg !2729

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2729
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2729
  store i8* %51, i8** %10, align 8, !dbg !2729
  br label %57, !dbg !2729

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2729
  %54 = sext i32 %41 to i64, !dbg !2729
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2729
  %56 = add i32 %41, 8, !dbg !2729
  store i32 %56, i32* %8, align 8, !dbg !2729
  br label %57, !dbg !2729

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2729
  %61 = load i8*, i8** %60, align 8, !dbg !2729
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2732
  store i8* %61, i8** %62, align 16, !dbg !2733, !tbaa !628
  %63 = icmp eq i8* %61, null, !dbg !2734
  br i1 %63, label %30, label %64, !dbg !2735

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 3, metadata !2718, metadata !DIExpression()), !dbg !2728
  %65 = icmp ult i32 %58, 41, !dbg !2729
  br i1 %65, label %69, label %66, !dbg !2729

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2729
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2729
  store i8* %68, i8** %10, align 8, !dbg !2729
  br label %74, !dbg !2729

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2729
  %71 = sext i32 %58 to i64, !dbg !2729
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2729
  %73 = add i32 %58, 8, !dbg !2729
  store i32 %73, i32* %8, align 8, !dbg !2729
  br label %74, !dbg !2729

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2729
  %78 = load i8*, i8** %77, align 8, !dbg !2729
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2732
  store i8* %78, i8** %79, align 8, !dbg !2733, !tbaa !628
  %80 = icmp eq i8* %78, null, !dbg !2734
  br i1 %80, label %30, label %81, !dbg !2735

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 4, metadata !2718, metadata !DIExpression()), !dbg !2728
  %82 = icmp ult i32 %75, 41, !dbg !2729
  br i1 %82, label %86, label %83, !dbg !2729

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2729
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2729
  store i8* %85, i8** %10, align 8, !dbg !2729
  br label %91, !dbg !2729

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2729
  %88 = sext i32 %75 to i64, !dbg !2729
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2729
  %90 = add i32 %75, 8, !dbg !2729
  store i32 %90, i32* %8, align 8, !dbg !2729
  br label %91, !dbg !2729

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2729
  %95 = load i8*, i8** %94, align 8, !dbg !2729
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2732
  store i8* %95, i8** %96, align 16, !dbg !2733, !tbaa !628
  %97 = icmp eq i8* %95, null, !dbg !2734
  br i1 %97, label %30, label %98, !dbg !2735

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 5, metadata !2718, metadata !DIExpression()), !dbg !2728
  %99 = icmp ult i32 %92, 41, !dbg !2729
  br i1 %99, label %103, label %100, !dbg !2729

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2729
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2729
  store i8* %102, i8** %10, align 8, !dbg !2729
  br label %108, !dbg !2729

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2729
  %105 = sext i32 %92 to i64, !dbg !2729
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2729
  %107 = add i32 %92, 8, !dbg !2729
  store i32 %107, i32* %8, align 8, !dbg !2729
  br label %108, !dbg !2729

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2729
  %111 = load i8*, i8** %110, align 8, !dbg !2729
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2732
  store i8* %111, i8** %112, align 8, !dbg !2733, !tbaa !628
  %113 = icmp eq i8* %111, null, !dbg !2734
  br i1 %113, label %30, label %114, !dbg !2735

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 6, metadata !2718, metadata !DIExpression()), !dbg !2728
  %115 = load i8*, i8** %10, align 8, !dbg !2729
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2729
  store i8* %116, i8** %10, align 8, !dbg !2729
  %117 = bitcast i8* %115 to i8**, !dbg !2729
  %118 = load i8*, i8** %117, align 8, !dbg !2729
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2732
  store i8* %118, i8** %119, align 16, !dbg !2733, !tbaa !628
  %120 = icmp eq i8* %118, null, !dbg !2734
  br i1 %120, label %30, label %121, !dbg !2735

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 7, metadata !2718, metadata !DIExpression()), !dbg !2728
  %122 = load i8*, i8** %10, align 8, !dbg !2729
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2729
  store i8* %123, i8** %10, align 8, !dbg !2729
  %124 = bitcast i8* %122 to i8**, !dbg !2729
  %125 = load i8*, i8** %124, align 8, !dbg !2729
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2732
  store i8* %125, i8** %126, align 8, !dbg !2733, !tbaa !628
  %127 = icmp eq i8* %125, null, !dbg !2734
  br i1 %127, label %30, label %128, !dbg !2735

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 8, metadata !2718, metadata !DIExpression()), !dbg !2728
  %129 = load i8*, i8** %10, align 8, !dbg !2729
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2729
  store i8* %130, i8** %10, align 8, !dbg !2729
  %131 = bitcast i8* %129 to i8**, !dbg !2729
  %132 = load i8*, i8** %131, align 8, !dbg !2729
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2732
  store i8* %132, i8** %133, align 16, !dbg !2733, !tbaa !628
  %134 = icmp eq i8* %132, null, !dbg !2734
  br i1 %134, label %30, label %135, !dbg !2735

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 9, metadata !2718, metadata !DIExpression()), !dbg !2728
  %136 = load i8*, i8** %10, align 8, !dbg !2729
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2729
  store i8* %137, i8** %10, align 8, !dbg !2729
  %138 = bitcast i8* %136 to i8**, !dbg !2729
  %139 = load i8*, i8** %138, align 8, !dbg !2729
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2732
  store i8* %139, i8** %140, align 8, !dbg !2733, !tbaa !628
  %141 = icmp eq i8* %139, null, !dbg !2734
  %142 = select i1 %141, i64 9, i64 10, !dbg !2735
  br label %30, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2739 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2743, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2744, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2745, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %3, metadata !2746, metadata !DIExpression()), !dbg !2757
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2758
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2747, metadata !DIExpression()), !dbg !2759
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2760
  call void @llvm.va_start(i8* nonnull %6), !dbg !2760
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2761
  call void @llvm.va_end(i8* nonnull %6), !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2763
  ret void, !dbg !2763
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2764 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #10, !dbg !2765
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #10, !dbg !2765
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #10, !dbg !2766
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.89, i64 0, i64 0)) #10, !dbg !2766
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #10, !dbg !2767
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2767, !tbaa !628
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2767
  ret void, !dbg !2768
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2769 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  %3 = udiv i64 9223372036854775807, %1, !dbg !2777
  %4 = icmp ult i64 %3, %0, !dbg !2777
  br i1 %4, label %5, label %6, !dbg !2779

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2780
  unreachable, !dbg !2780

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %7, metadata !2782, metadata !DIExpression()) #10, !dbg !2789
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %8, metadata !2788, metadata !DIExpression()) #10, !dbg !2792
  %9 = icmp eq i8* %8, null, !dbg !2793
  %10 = icmp ne i64 %7, 0, !dbg !2795
  %11 = and i1 %10, %9, !dbg !2796
  br i1 %11, label %12, label %13, !dbg !2796

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2797
  unreachable, !dbg !2797

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2798
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2783 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2782, metadata !DIExpression()), !dbg !2799
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()), !dbg !2801
  %3 = icmp eq i8* %2, null, !dbg !2802
  %4 = icmp ne i64 %0, 0, !dbg !2803
  %5 = and i1 %4, %3, !dbg !2804
  br i1 %5, label %6, label %7, !dbg !2804

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2805
  unreachable, !dbg !2805

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2806
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2813, metadata !DIExpression()), !dbg !2816
  %4 = udiv i64 9223372036854775807, %2, !dbg !2817
  %5 = icmp ult i64 %4, %1, !dbg !2817
  br i1 %5, label %6, label %7, !dbg !2819

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2820
  unreachable, !dbg !2820

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #10, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %8, metadata !2827, metadata !DIExpression()) #10, !dbg !2830
  %9 = icmp eq i64 %8, 0, !dbg !2831
  %10 = icmp ne i8* %0, null, !dbg !2833
  %11 = and i1 %10, %9, !dbg !2834
  br i1 %11, label %12, label %13, !dbg !2834

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2835
  br label %19, !dbg !2837

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %14, metadata !2822, metadata !DIExpression()) #10, !dbg !2828
  %15 = icmp eq i8* %14, null, !dbg !2839
  %16 = icmp ne i64 %8, 0, !dbg !2841
  %17 = and i1 %16, %15, !dbg !2842
  br i1 %17, label %18, label %19, !dbg !2842

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2843
  unreachable, !dbg !2843

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2844
  ret i8* %20, !dbg !2845
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1, metadata !2827, metadata !DIExpression()), !dbg !2847
  %3 = icmp eq i64 %1, 0, !dbg !2848
  %4 = icmp ne i8* %0, null, !dbg !2849
  %5 = and i1 %4, %3, !dbg !2850
  br i1 %5, label %6, label %7, !dbg !2850

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2851
  br label %13, !dbg !2852

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %8, metadata !2822, metadata !DIExpression()), !dbg !2846
  %9 = icmp eq i8* %8, null, !dbg !2854
  %10 = icmp ne i64 %1, 0, !dbg !2855
  %11 = and i1 %10, %9, !dbg !2856
  br i1 %11, label %12, label %13, !dbg !2856

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2857
  unreachable, !dbg !2857

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2858
  ret i8* %14, !dbg !2859
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !176, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64* %1, metadata !177, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %2, metadata !178, metadata !DIExpression()), !dbg !2862
  %4 = load i64, i64* %1, align 8, !dbg !2863, !tbaa !1900
  call void @llvm.dbg.value(metadata i64 %4, metadata !179, metadata !DIExpression()), !dbg !2864
  %5 = icmp eq i8* %0, null, !dbg !2865
  br i1 %5, label %6, label %20, !dbg !2867

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2868
  br i1 %7, label %8, label %13, !dbg !2871

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %9, metadata !179, metadata !DIExpression()), !dbg !2864
  %10 = icmp ugt i64 %2, 128, !dbg !2874
  %11 = zext i1 %10 to i64, !dbg !2874
  %12 = add nuw nsw i64 %9, %11, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %12, metadata !179, metadata !DIExpression()), !dbg !2864
  br label %13, !dbg !2876

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2877
  call void @llvm.dbg.value(metadata i64 %14, metadata !179, metadata !DIExpression()), !dbg !2864
  %15 = udiv i64 9223372036854775807, %2, !dbg !2878
  %16 = icmp ult i64 %15, %14, !dbg !2878
  br i1 %16, label %19, label %17, !dbg !2880

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !179, metadata !DIExpression()), !dbg !2864
  store i64 %14, i64* %1, align 8, !dbg !2881, !tbaa !1900
  %18 = mul i64 %14, %2, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #10, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %28, metadata !2827, metadata !DIExpression()) #10, !dbg !2885
  br label %31, !dbg !2886

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2887
  unreachable, !dbg !2887

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2888
  %22 = icmp ugt i64 %21, %4, !dbg !2891
  br i1 %22, label %24, label %23, !dbg !2892

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2893
  unreachable, !dbg !2893

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2894
  %26 = add i64 %4, 1, !dbg !2895
  %27 = add i64 %26, %25, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %27, metadata !179, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %27, metadata !179, metadata !DIExpression()), !dbg !2864
  store i64 %27, i64* %1, align 8, !dbg !2881, !tbaa !1900
  %28 = mul i64 %27, %2, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #10, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %28, metadata !2827, metadata !DIExpression()) #10, !dbg !2885
  %29 = icmp eq i64 %28, 0, !dbg !2897
  br i1 %29, label %30, label %31, !dbg !2886

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2898
  br label %38, !dbg !2899

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2900
  call void @llvm.dbg.value(metadata i8* %33, metadata !2822, metadata !DIExpression()) #10, !dbg !2883
  %34 = icmp eq i8* %33, null, !dbg !2901
  %35 = icmp ne i64 %32, 0, !dbg !2902
  %36 = and i1 %35, %34, !dbg !2903
  br i1 %36, label %37, label %38, !dbg !2903

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2904
  unreachable, !dbg !2904

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2905
  ret i8* %39, !dbg !2906
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2907 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %0, metadata !2782, metadata !DIExpression()) #10, !dbg !2911
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()) #10, !dbg !2914
  %3 = icmp eq i8* %2, null, !dbg !2915
  %4 = icmp ne i64 %0, 0, !dbg !2916
  %5 = and i1 %4, %3, !dbg !2917
  br i1 %5, label %6, label %7, !dbg !2917

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2918
  unreachable, !dbg !2918

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64* %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !176, metadata !DIExpression()) #10, !dbg !2928
  call void @llvm.dbg.value(metadata i64* %1, metadata !177, metadata !DIExpression()) #10, !dbg !2930
  call void @llvm.dbg.value(metadata i64 1, metadata !178, metadata !DIExpression()) #10, !dbg !2931
  %3 = load i64, i64* %1, align 8, !dbg !2932, !tbaa !1900
  call void @llvm.dbg.value(metadata i64 %3, metadata !179, metadata !DIExpression()) #10, !dbg !2933
  %4 = icmp eq i8* %0, null, !dbg !2934
  br i1 %4, label %5, label %12, !dbg !2935

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2936
  br i1 %6, label %9, label %7, !dbg !2937

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !179, metadata !DIExpression()) #10, !dbg !2933
  %8 = icmp slt i64 %3, 0, !dbg !2938
  br i1 %8, label %11, label %9, !dbg !2939

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !179, metadata !DIExpression()) #10, !dbg !2933
  store i64 %10, i64* %1, align 8, !dbg !2940, !tbaa !1900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #10, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %18, metadata !2827, metadata !DIExpression()) #10, !dbg !2943
  br label %21, !dbg !2944

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2945
  unreachable, !dbg !2945

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2946
  br i1 %13, label %15, label %14, !dbg !2947

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2948
  unreachable, !dbg !2948

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2949
  %17 = add i64 %3, 1, !dbg !2950
  %18 = add i64 %17, %16, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %18, metadata !179, metadata !DIExpression()) #10, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %18, metadata !179, metadata !DIExpression()) #10, !dbg !2933
  store i64 %18, i64* %1, align 8, !dbg !2940, !tbaa !1900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #10, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %18, metadata !2827, metadata !DIExpression()) #10, !dbg !2943
  %19 = icmp eq i64 %18, 0, !dbg !2952
  br i1 %19, label %20, label %21, !dbg !2944

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !2953
  br label %28, !dbg !2954

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %23, metadata !2822, metadata !DIExpression()) #10, !dbg !2941
  %24 = icmp eq i8* %23, null, !dbg !2956
  %25 = icmp ne i64 %22, 0, !dbg !2957
  %26 = and i1 %25, %24, !dbg !2958
  br i1 %26, label %27, label %28, !dbg !2958

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !2959
  unreachable, !dbg !2959

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2960
  ret i8* %29, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !2962 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %0, metadata !2782, metadata !DIExpression()) #10, !dbg !2966
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()) #10, !dbg !2969
  %3 = icmp eq i8* %2, null, !dbg !2970
  %4 = icmp ne i64 %0, 0, !dbg !2971
  %5 = and i1 %4, %3, !dbg !2972
  br i1 %5, label %6, label %7, !dbg !2972

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2973
  unreachable, !dbg !2973

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !2974
  ret i8* %2, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !2976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2979, metadata !DIExpression()), !dbg !2982
  %3 = udiv i64 9223372036854775807, %1, !dbg !2983
  %4 = icmp ult i64 %3, %0, !dbg !2983
  br i1 %4, label %8, label %5, !dbg !2985

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %6, metadata !2980, metadata !DIExpression()), !dbg !2987
  %7 = icmp eq i8* %6, null, !dbg !2988
  br i1 %7, label %8, label %9, !dbg !2989

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2990
  unreachable, !dbg !2990

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2991
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !2992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()) #10, !dbg !3002
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %3, metadata !2788, metadata !DIExpression()) #10, !dbg !3005
  %4 = icmp eq i8* %3, null, !dbg !3006
  %5 = icmp ne i64 %1, 0, !dbg !3007
  %6 = and i1 %5, %4, !dbg !3008
  br i1 %6, label %7, label %8, !dbg !3008

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3009
  unreachable, !dbg !3009

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3010
  ret i8* %3, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()), !dbg !3015
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3016
  %3 = add i64 %2, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()) #10, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %3, metadata !2999, metadata !DIExpression()) #10, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %3, metadata !2782, metadata !DIExpression()) #10, !dbg !3021
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %4, metadata !2788, metadata !DIExpression()) #10, !dbg !3024
  %5 = icmp eq i8* %4, null, !dbg !3025
  %6 = icmp ne i64 %3, 0, !dbg !3026
  %7 = and i1 %6, %5, !dbg !3027
  br i1 %7, label %8, label %9, !dbg !3027

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3028
  unreachable, !dbg !3028

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3029
  ret i8* %4, !dbg !3030
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3031 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3033, !tbaa !695
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.101, i64 0, i64 0), i32 5) #10, !dbg !3034
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), i8* %2) #10, !dbg !3035
  tail call void @abort() #15, !dbg !3036
  unreachable, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3037 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3041, metadata !DIExpression()), !dbg !3047
  %3 = icmp eq i64 %0, 0, !dbg !3048
  %4 = icmp eq i64 %1, 0, !dbg !3049
  %5 = or i1 %3, %4, !dbg !3050
  br i1 %5, label %12, label %6, !dbg !3050

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %7, metadata !3043, metadata !DIExpression()), !dbg !3052
  %8 = udiv i64 %7, %1, !dbg !3053
  %9 = icmp eq i64 %8, %0, !dbg !3055
  br i1 %9, label %12, label %10, !dbg !3056

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3057
  store i32 12, i32* %11, align 4, !dbg !3059, !tbaa !695
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %13, metadata !3041, metadata !DIExpression()), !dbg !3047
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %15, metadata !3042, metadata !DIExpression()), !dbg !3061
  br label %16, !dbg !3062

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3063
  ret i8* %17, !dbg !3064
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3065 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3082, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !3084, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3085, metadata !DIExpression()), !dbg !3094
  %6 = bitcast i32* %5 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3095
  %7 = icmp eq i32* %0, null, !dbg !3096
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3098
  call void @llvm.dbg.value(metadata i32* %8, metadata !3082, metadata !DIExpression()), !dbg !3091
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %9, metadata !3086, metadata !DIExpression()), !dbg !3100
  %10 = icmp ugt i64 %9, -3, !dbg !3101
  %11 = icmp ne i64 %2, 0, !dbg !3102
  %12 = and i1 %11, %10, !dbg !3103
  br i1 %12, label %13, label %18, !dbg !3103

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3104
  br i1 %14, label %18, label %15, !dbg !3105

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3106, !tbaa !1077
  call void @llvm.dbg.value(metadata i8 %16, metadata !3088, metadata !DIExpression()), !dbg !3107
  %17 = zext i8 %16 to i32, !dbg !3108
  store i32 %17, i32* %8, align 4, !dbg !3109, !tbaa !695
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3111
  ret i64 %19, !dbg !3111
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3112 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3151, metadata !DIExpression()), !dbg !3156
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3158, metadata !DIExpression()), !dbg !3162
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3164
  %4 = load i32, i32* %3, align 8, !dbg !3164, !tbaa !3165
  %5 = and i32 %4, 32, !dbg !3164
  %6 = icmp eq i32 %5, 0, !dbg !3167
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3168
  %8 = icmp ne i32 %7, 0, !dbg !3169
  br i1 %6, label %9, label %19, !dbg !3170

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3172
  %11 = xor i1 %8, true, !dbg !3173
  %12 = or i1 %10, %11, !dbg !3173
  %13 = sext i1 %8 to i32, !dbg !3173
  br i1 %12, label %22, label %14, !dbg !3173

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3174
  %16 = load i32, i32* %15, align 4, !dbg !3174, !tbaa !695
  %17 = icmp ne i32 %16, 9, !dbg !3175
  %18 = sext i1 %17 to i32, !dbg !3176
  br label %22, !dbg !3176

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3177

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3179
  store i32 0, i32* %21, align 4, !dbg !3181, !tbaa !695
  br label %22, !dbg !3179

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3182
  ret i32 %23, !dbg !3183
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3189, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 1, metadata !3190, metadata !DIExpression()), !dbg !3193
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()), !dbg !3195
  %3 = icmp eq i8* %2, null, !dbg !3196
  br i1 %3, label %11, label %4, !dbg !3198

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0)) #14, !dbg !3199
  %6 = icmp eq i32 %5, 0, !dbg !3204
  br i1 %6, label %10, label %7, !dbg !3205

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0)) #14, !dbg !3206
  %9 = icmp eq i32 %8, 0, !dbg !3207
  br i1 %9, label %10, label %11, !dbg !3208

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3190, metadata !DIExpression()), !dbg !3193
  br label %11, !dbg !3209

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3211 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()), !dbg !3218
  %2 = icmp eq i8* %1, null, !dbg !3219
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %3, metadata !3216, metadata !DIExpression()), !dbg !3218
  %4 = load i8, i8* %3, align 1, !dbg !3222, !tbaa !1077
  %5 = icmp eq i8 %4, 0, !dbg !3226
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %3, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %6, metadata !3216, metadata !DIExpression()), !dbg !3218
  ret i8* %6, !dbg !3228
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3229 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 0, metadata !3269, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3274
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3275
  call void @llvm.dbg.value(metadata i32 %2, metadata !3270, metadata !DIExpression()), !dbg !3276
  %3 = icmp slt i32 %2, 0, !dbg !3277
  br i1 %3, label %4, label %6, !dbg !3279

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3280
  br label %24, !dbg !3281

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3282
  %8 = icmp eq i32 %7, 0, !dbg !3282
  br i1 %8, label %13, label %9, !dbg !3284

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3285
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3286
  %12 = icmp eq i64 %11, -1, !dbg !3287
  br i1 %12, label %16, label %13, !dbg !3288

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3289
  %15 = icmp eq i32 %14, 0, !dbg !3289
  br i1 %15, label %16, label %18, !dbg !3290

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3269, metadata !DIExpression()), !dbg !3273
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %21, metadata !3271, metadata !DIExpression()), !dbg !3274
  br label %24, !dbg !3292

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3293
  %20 = load i32, i32* %19, align 4, !dbg !3293, !tbaa !695
  call void @llvm.dbg.value(metadata i32 %20, metadata !3269, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 %20, metadata !3269, metadata !DIExpression()), !dbg !3273
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %21, metadata !3271, metadata !DIExpression()), !dbg !3274
  %22 = icmp eq i32 %20, 0, !dbg !3294
  br i1 %22, label %24, label %23, !dbg !3292

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3296, !tbaa !695
  call void @llvm.dbg.value(metadata i32 -1, metadata !3271, metadata !DIExpression()), !dbg !3274
  br label %24, !dbg !3298

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3299
  ret i32 %25, !dbg !3300
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3301 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3340, metadata !DIExpression()), !dbg !3341
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3342
  br i1 %2, label %6, label %3, !dbg !3344

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3345
  %5 = icmp eq i32 %4, 0, !dbg !3345
  br i1 %5, label %6, label %8, !dbg !3346

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3347
  br label %17, !dbg !3348

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3349, metadata !DIExpression()) #10, !dbg !3354
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3356
  %10 = load i32, i32* %9, align 8, !dbg !3356, !tbaa !3165
  %11 = and i32 %10, 256, !dbg !3358
  %12 = icmp eq i32 %11, 0, !dbg !3358
  br i1 %12, label %15, label %13, !dbg !3359

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3360
  br label %15, !dbg !3360

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3361
  br label %17, !dbg !3362

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3363
  ret i32 %18, !dbg !3364
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3365 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3405, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %2, metadata !3407, metadata !DIExpression()), !dbg !3413
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3414
  %5 = load i8*, i8** %4, align 8, !dbg !3414, !tbaa !3415
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3416
  %7 = load i8*, i8** %6, align 8, !dbg !3416, !tbaa !3417
  %8 = icmp eq i8* %5, %7, !dbg !3418
  br i1 %8, label %9, label %28, !dbg !3419

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3420
  %11 = load i8*, i8** %10, align 8, !dbg !3420, !tbaa !3421
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3422
  %13 = load i8*, i8** %12, align 8, !dbg !3422, !tbaa !3423
  %14 = icmp eq i8* %11, %13, !dbg !3424
  br i1 %14, label %15, label %28, !dbg !3425

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3426
  %17 = load i8*, i8** %16, align 8, !dbg !3426, !tbaa !3427
  %18 = icmp eq i8* %17, null, !dbg !3428
  br i1 %18, label %19, label %28, !dbg !3429

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3430
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %21, metadata !3408, metadata !DIExpression()), !dbg !3432
  %22 = icmp eq i64 %21, -1, !dbg !3433
  br i1 %22, label %30, label %23, !dbg !3435

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3436
  %25 = load i32, i32* %24, align 8, !dbg !3437, !tbaa !3165
  %26 = and i32 %25, -17, !dbg !3437
  store i32 %26, i32* %24, align 8, !dbg !3437, !tbaa !3165
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3438
  store i64 %21, i64* %27, align 8, !dbg !3439, !tbaa !3440
  br label %30, !dbg !3441

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3442
  br label %30, !dbg !3443

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3444
  ret i32 %31, !dbg !3445
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

!llvm.dbg.cu = !{!2, !37, !43, !51, !58, !65, !158, !151, !166, !183, !185, !187, !190, !192, !194, !583, !585, !587}
!llvm.ident = !{!589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589}
!llvm.module.flags = !{!590, !591, !592, !593, !594}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 47, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15)
!3 = !DIFile(filename: "src/tty.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 34, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TTY_FAILURE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3, isUnsigned: true)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!16, !17}
!16 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1280, elements: !32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !22, line: 50, size: 256, elements: !23)
!22 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!23 = !{!24, !27, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !22, line: 52, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !21, file: !22, line: 55, baseType: !28, size: 32, offset: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !21, file: !22, line: 56, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !21, file: !22, line: 57, baseType: !28, size: 32, offset: 192)
!32 = !{!33}
!33 = !DISubrange(count: 5)
!34 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "Version", scope: !37, file: !38, line: 2, type: !25, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !40)
!38 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!39 = !{}
!40 = !{!35}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "file_name", scope: !43, file: !48, line: 46, type: !25, isLocal: true, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !45)
!44 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!45 = !{!41, !46}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !43, file: !48, line: 56, type: !34, isLocal: true, isDefinition: true)
!48 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "exit_failure", scope: !51, file: !54, line: 24, type: !55, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !53)
!52 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !{!49}
!54 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!55 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "program_name", scope: !58, file: !62, line: 33, type: !25, isLocal: false, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !60, globals: !61)
!59 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !{!14, !12}
!61 = !{!56}
!62 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !65, file: !110, line: 85, type: !145, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !102, globals: !107)
!66 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!67 = !{!68, !82, !87}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !69, line: 32, baseType: !6, size: 32, elements: !70)
!69 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!71 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!75 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!77 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!78 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!79 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!80 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!81 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !69, line: 242, baseType: !6, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 46, baseType: !6, size: 32, elements: !89)
!88 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!90 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!102 = !{!28, !103, !104, !12}
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !{!63, !108, !115, !127, !129, !134, !141, !143}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !65, file: !110, line: 101, type: !111, isLocal: false, isDefinition: true)
!110 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 320, elements: !113)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!113 = !{!114}
!114 = !DISubrange(count: 10)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !65, file: !110, line: 1052, type: !117, isLocal: false, isDefinition: true)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !110, line: 65, size: 448, elements: !118)
!118 = !{!119, !120, !121, !125, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !117, file: !110, line: 68, baseType: !68, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !110, line: 71, baseType: !28, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !117, file: !110, line: 75, baseType: !122, size: 256, offset: 64)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 8)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !117, file: !110, line: 78, baseType: !25, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !117, file: !110, line: 81, baseType: !25, size: 64, offset: 384)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !65, file: !110, line: 116, type: !117, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slot0", scope: !65, file: !110, line: 842, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 256)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "slotvec", scope: !65, file: !110, line: 845, type: !136, isLocal: true, isDefinition: true)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !110, line: 834, size: 128, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !137, file: !110, line: 836, baseType: !104, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !110, line: 837, baseType: !12, size: 64, offset: 64)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "nslots", scope: !65, file: !110, line: 843, type: !28, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "slotvec0", scope: !65, file: !110, line: 844, type: !137, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 704, elements: !147)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!147 = !{!148}
!148 = !DISubrange(count: 11)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !151, file: !154, line: 26, type: !155, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !153)
!152 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !{!149}
!154 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 376, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 47)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !165)
!159 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = !{!161}
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 41, baseType: !6, size: 32, elements: !163)
!162 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!163 = !{!164}
!164 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!165 = !{!14}
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !168, retainedTypes: !182)
!167 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !{!169}
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !171, file: !170, line: 186, baseType: !6, size: 32, elements: !180)
!170 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = distinct !DISubprogram(name: "x2nrealloc", scope: !170, file: !170, line: 174, type: !172, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !175)
!172 = !DISubroutineType(types: !173)
!173 = !{!14, !14, !174, !104}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!175 = !{!176, !177, !178, !179}
!176 = !DILocalVariable(name: "p", arg: 1, scope: !171, file: !170, line: 174, type: !14)
!177 = !DILocalVariable(name: "pn", arg: 2, scope: !171, file: !170, line: 174, type: !174)
!178 = !DILocalVariable(name: "s", arg: 3, scope: !171, file: !170, line: 174, type: !104)
!179 = !DILocalVariable(name: "n", scope: !171, file: !170, line: 176, type: !104)
!180 = !{!181}
!181 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!182 = !{!104, !12, !14}
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39)
!184 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !165)
!186 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !189)
!188 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!104}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39)
!191 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39)
!193 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !165)
!195 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!197}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 41, baseType: !6, size: 32, elements: !199)
!198 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!200 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!202 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!203 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!204 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!205 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!206 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!209 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!210 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!211 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!212 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!238 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!239 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!240 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!241 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!242 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!243 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!244 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!245 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!246 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!247 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!248 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!249 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!308 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!468 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!469 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!470 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!471 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!472 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!473 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!474 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!476 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!477 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!478 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!479 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!480 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!481 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!482 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!487 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!515 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!516 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!517 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!518 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!519 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!524 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!525 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!526 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!527 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39)
!584 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !165)
!586 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !165)
!588 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!589 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!590 = !{i32 2, !"Dwarf Version", i32 4}
!591 = !{i32 2, !"Debug Info Version", i32 3}
!592 = !{i32 1, !"wchar_size", i32 4}
!593 = !{i32 7, !"PIC Level", i32 2}
!594 = !{i32 7, !"PIE Level", i32 2}
!595 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !596, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !28}
!598 = !{!599}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !595, file: !3, line: 59, type: !28)
!600 = !DILocalVariable(name: "infomap", scope: !601, file: !602, line: 632, type: !616)
!601 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !602, file: !602, line: 630, type: !603, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !605)
!602 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!603 = !DISubroutineType(types: !604)
!604 = !{null, !25}
!605 = !{!606, !600, !607, !608, !615}
!606 = !DILocalVariable(name: "program", arg: 1, scope: !601, file: !602, line: 630, type: !25)
!607 = !DILocalVariable(name: "node", scope: !601, file: !602, line: 642, type: !25)
!608 = !DILocalVariable(name: "map_prog", scope: !601, file: !602, line: 643, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !601, file: !602, line: 632, size: 128, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !611, file: !602, line: 632, baseType: !25, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !602, line: 632, baseType: !25, size: 64, offset: 64)
!615 = !DILocalVariable(name: "lc_messages", scope: !601, file: !602, line: 655, type: !25)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 896, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 7)
!619 = !DILocation(line: 632, column: 67, scope: !601, inlinedAt: !620)
!620 = distinct !DILocation(line: 73, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 64, column: 5)
!622 = distinct !DILexicalBlock(scope: !595, file: !3, line: 61, column: 7)
!623 = !DILocation(line: 59, column: 12, scope: !595)
!624 = !DILocation(line: 61, column: 14, scope: !622)
!625 = !DILocation(line: 61, column: 7, scope: !595)
!626 = !DILocation(line: 62, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 62, column: 5)
!628 = !{!629, !629, i64 0}
!629 = !{!"any pointer", !630, i64 0}
!630 = !{!"omnipotent char", !631, i64 0}
!631 = !{!"Simple C/C++ TBAA"}
!632 = !DILocation(line: 65, column: 7, scope: !621)
!633 = !DILocation(line: 66, column: 7, scope: !621)
!634 = !DILocation(line: 71, column: 7, scope: !621)
!635 = !DILocation(line: 72, column: 7, scope: !621)
!636 = !DILocation(line: 632, column: 3, scope: !601, inlinedAt: !620)
!637 = !DILocation(line: 643, column: 36, scope: !601, inlinedAt: !620)
!638 = !DILocation(line: 643, column: 25, scope: !601, inlinedAt: !620)
!639 = !DILocation(line: 645, column: 33, scope: !601, inlinedAt: !620)
!640 = !DILocation(line: 645, column: 3, scope: !601, inlinedAt: !620)
!641 = !DILocation(line: 646, column: 13, scope: !601, inlinedAt: !620)
!642 = !DILocation(line: 645, column: 20, scope: !601, inlinedAt: !620)
!643 = !{!644, !629, i64 0}
!644 = !{!"infomap", !629, i64 0, !629, i64 8}
!645 = !DILocation(line: 645, column: 10, scope: !601, inlinedAt: !620)
!646 = !DILocation(line: 645, column: 28, scope: !601, inlinedAt: !620)
!647 = distinct !{!647, !648, !649}
!648 = !DILocation(line: 645, column: 3, scope: !601)
!649 = !DILocation(line: 646, column: 13, scope: !601)
!650 = !DILocation(line: 648, column: 17, scope: !651, inlinedAt: !620)
!651 = distinct !DILexicalBlock(scope: !601, file: !602, line: 648, column: 7)
!652 = !{!644, !629, i64 8}
!653 = !DILocation(line: 648, column: 7, scope: !651, inlinedAt: !620)
!654 = !DILocation(line: 648, column: 7, scope: !601, inlinedAt: !620)
!655 = !DILocation(line: 642, column: 15, scope: !601, inlinedAt: !620)
!656 = !DILocation(line: 651, column: 3, scope: !601, inlinedAt: !620)
!657 = !DILocation(line: 655, column: 29, scope: !601, inlinedAt: !620)
!658 = !DILocation(line: 655, column: 15, scope: !601, inlinedAt: !620)
!659 = !DILocation(line: 656, column: 7, scope: !660, inlinedAt: !620)
!660 = distinct !DILexicalBlock(scope: !601, file: !602, line: 656, column: 7)
!661 = !DILocation(line: 656, column: 19, scope: !660, inlinedAt: !620)
!662 = !DILocation(line: 656, column: 22, scope: !660, inlinedAt: !620)
!663 = !DILocation(line: 656, column: 7, scope: !601, inlinedAt: !620)
!664 = !DILocation(line: 662, column: 7, scope: !665, inlinedAt: !620)
!665 = distinct !DILexicalBlock(scope: !660, file: !602, line: 657, column: 5)
!666 = !DILocation(line: 664, column: 5, scope: !665, inlinedAt: !620)
!667 = !DILocation(line: 665, column: 3, scope: !601, inlinedAt: !620)
!668 = !DILocation(line: 667, column: 3, scope: !601, inlinedAt: !620)
!669 = !DILocation(line: 669, column: 1, scope: !601, inlinedAt: !620)
!670 = !DILocation(line: 75, column: 3, scope: !595)
!671 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 79, type: !672, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!28, !28, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!675 = !{!676, !677, !678, !679, !680}
!676 = !DILocalVariable(name: "argc", arg: 1, scope: !671, file: !3, line: 79, type: !28)
!677 = !DILocalVariable(name: "argv", arg: 2, scope: !671, file: !3, line: 79, type: !674)
!678 = !DILocalVariable(name: "optc", scope: !671, file: !3, line: 81, type: !28)
!679 = !DILocalVariable(name: "status", scope: !671, file: !3, line: 122, type: !28)
!680 = !DILocalVariable(name: "tty", scope: !671, file: !3, line: 123, type: !25)
!681 = !DILocation(line: 79, column: 11, scope: !671)
!682 = !DILocation(line: 79, column: 24, scope: !671)
!683 = !DILocation(line: 84, column: 21, scope: !671)
!684 = !DILocation(line: 84, column: 3, scope: !671)
!685 = !DILocation(line: 85, column: 3, scope: !671)
!686 = !DILocation(line: 86, column: 3, scope: !671)
!687 = !DILocation(line: 87, column: 3, scope: !671)
!688 = !DILocalVariable(name: "status", arg: 1, scope: !689, file: !602, line: 99, type: !28)
!689 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !602, file: !602, line: 99, type: !596, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!690 = !{!688}
!691 = !DILocation(line: 99, column: 30, scope: !689, inlinedAt: !692)
!692 = distinct !DILocation(line: 89, column: 3, scope: !671)
!693 = !DILocation(line: 102, column: 18, scope: !694, inlinedAt: !692)
!694 = distinct !DILexicalBlock(scope: !689, file: !602, line: 101, column: 7)
!695 = !{!696, !696, i64 0}
!696 = !{!"int", !630, i64 0}
!697 = !DILocation(line: 90, column: 3, scope: !671)
!698 = !DILocation(line: 94, column: 3, scope: !671)
!699 = !DILocation(line: 94, column: 18, scope: !671)
!700 = !DILocation(line: 81, column: 7, scope: !671)
!701 = distinct !{!701, !698, !702}
!702 = !DILocation(line: 109, column: 5, scope: !671)
!703 = !DILocation(line: 102, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 97, column: 9)
!705 = distinct !DILexicalBlock(scope: !671, file: !3, line: 95, column: 5)
!706 = !DILocation(line: 104, column: 9, scope: !704)
!707 = !DILocation(line: 107, column: 11, scope: !704)
!708 = !DILocation(line: 111, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !671, file: !3, line: 111, column: 7)
!710 = !DILocation(line: 111, column: 14, scope: !709)
!711 = !DILocation(line: 111, column: 7, scope: !671)
!712 = !DILocation(line: 113, column: 20, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !3, line: 112, column: 5)
!714 = !DILocation(line: 113, column: 55, scope: !713)
!715 = !DILocation(line: 113, column: 50, scope: !713)
!716 = !DILocation(line: 113, column: 43, scope: !713)
!717 = !DILocation(line: 113, column: 7, scope: !713)
!718 = !DILocation(line: 114, column: 7, scope: !713)
!719 = !DILocation(line: 117, column: 3, scope: !671)
!720 = !DILocation(line: 117, column: 9, scope: !671)
!721 = !DILocation(line: 119, column: 7, scope: !671)
!722 = !DILocation(line: 120, column: 12, scope: !723)
!723 = distinct !DILexicalBlock(scope: !671, file: !3, line: 119, column: 7)
!724 = !DILocation(line: 120, column: 5, scope: !723)
!725 = !DILocation(line: 122, column: 7, scope: !671)
!726 = !DILocation(line: 123, column: 21, scope: !671)
!727 = !DILocation(line: 123, column: 15, scope: !671)
!728 = !DILocation(line: 125, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !671, file: !3, line: 125, column: 7)
!730 = !DILocation(line: 125, column: 7, scope: !671)
!731 = !DILocation(line: 127, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 126, column: 5)
!733 = !DILocation(line: 129, column: 5, scope: !732)
!734 = !DILocation(line: 0, scope: !732)
!735 = !DILocation(line: 131, column: 3, scope: !671)
!736 = !DILocation(line: 0, scope: !671)
!737 = !DILocation(line: 133, column: 1, scope: !671)
!738 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !48, file: !48, line: 51, type: !603, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !43, retainedNodes: !739)
!739 = !{!740}
!740 = !DILocalVariable(name: "file", arg: 1, scope: !738, file: !48, line: 51, type: !25)
!741 = !DILocation(line: 51, column: 41, scope: !738)
!742 = !DILocation(line: 53, column: 13, scope: !738)
!743 = !DILocation(line: 54, column: 1, scope: !738)
!744 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !48, file: !48, line: 88, type: !745, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !43, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !34}
!747 = !{!748}
!748 = !DILocalVariable(name: "ignore", arg: 1, scope: !744, file: !48, line: 88, type: !34)
!749 = !DILocation(line: 88, column: 37, scope: !744)
!750 = !DILocation(line: 90, column: 16, scope: !744)
!751 = !{!752, !752, i64 0}
!752 = !{!"_Bool", !630, i64 0}
!753 = !DILocation(line: 91, column: 1, scope: !744)
!754 = distinct !DISubprogram(name: "close_stdout", scope: !48, file: !48, line: 117, type: !755, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !43, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null}
!757 = !{!758}
!758 = !DILocalVariable(name: "write_error", scope: !759, file: !48, line: 122, type: !25)
!759 = distinct !DILexicalBlock(scope: !760, file: !48, line: 121, column: 5)
!760 = distinct !DILexicalBlock(scope: !754, file: !48, line: 119, column: 7)
!761 = !DILocation(line: 119, column: 21, scope: !760)
!762 = !DILocation(line: 119, column: 7, scope: !760)
!763 = !DILocation(line: 119, column: 29, scope: !760)
!764 = !DILocation(line: 120, column: 7, scope: !760)
!765 = !DILocation(line: 120, column: 12, scope: !760)
!766 = !{i8 0, i8 2}
!767 = !DILocation(line: 120, column: 25, scope: !760)
!768 = !DILocation(line: 120, column: 28, scope: !760)
!769 = !DILocation(line: 120, column: 34, scope: !760)
!770 = !DILocation(line: 119, column: 7, scope: !754)
!771 = !DILocation(line: 122, column: 33, scope: !759)
!772 = !DILocation(line: 122, column: 19, scope: !759)
!773 = !DILocation(line: 123, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !759, file: !48, line: 123, column: 11)
!775 = !DILocation(line: 0, scope: !774)
!776 = !DILocation(line: 123, column: 11, scope: !759)
!777 = !DILocation(line: 124, column: 36, scope: !774)
!778 = !DILocation(line: 124, column: 9, scope: !774)
!779 = !DILocation(line: 127, column: 9, scope: !774)
!780 = !DILocation(line: 129, column: 14, scope: !759)
!781 = !DILocation(line: 129, column: 7, scope: !759)
!782 = !DILocation(line: 134, column: 42, scope: !783)
!783 = distinct !DILexicalBlock(scope: !754, file: !48, line: 134, column: 7)
!784 = !DILocation(line: 134, column: 28, scope: !783)
!785 = !DILocation(line: 134, column: 50, scope: !783)
!786 = !DILocation(line: 134, column: 7, scope: !754)
!787 = !DILocation(line: 135, column: 12, scope: !783)
!788 = !DILocation(line: 135, column: 5, scope: !783)
!789 = !DILocation(line: 136, column: 1, scope: !754)
!790 = distinct !DISubprogram(name: "set_program_name", scope: !62, file: !62, line: 39, type: !603, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !791)
!791 = !{!792, !793, !794}
!792 = !DILocalVariable(name: "argv0", arg: 1, scope: !790, file: !62, line: 39, type: !25)
!793 = !DILocalVariable(name: "slash", scope: !790, file: !62, line: 46, type: !25)
!794 = !DILocalVariable(name: "base", scope: !790, file: !62, line: 47, type: !25)
!795 = !DILocation(line: 39, column: 31, scope: !790)
!796 = !DILocation(line: 51, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !62, line: 51, column: 7)
!798 = !DILocation(line: 51, column: 7, scope: !790)
!799 = !DILocation(line: 55, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !62, line: 52, column: 5)
!801 = !DILocation(line: 54, column: 7, scope: !800)
!802 = !DILocation(line: 56, column: 7, scope: !800)
!803 = !DILocation(line: 59, column: 11, scope: !790)
!804 = !DILocation(line: 46, column: 15, scope: !790)
!805 = !DILocation(line: 60, column: 17, scope: !790)
!806 = !DILocation(line: 60, column: 33, scope: !790)
!807 = !DILocation(line: 60, column: 11, scope: !790)
!808 = !DILocation(line: 47, column: 15, scope: !790)
!809 = !DILocation(line: 61, column: 12, scope: !810)
!810 = distinct !DILexicalBlock(scope: !790, file: !62, line: 61, column: 7)
!811 = !DILocation(line: 61, column: 20, scope: !810)
!812 = !DILocation(line: 61, column: 25, scope: !810)
!813 = !DILocation(line: 61, column: 42, scope: !810)
!814 = !DILocation(line: 61, column: 28, scope: !810)
!815 = !DILocation(line: 61, column: 61, scope: !810)
!816 = !DILocation(line: 61, column: 7, scope: !790)
!817 = !DILocation(line: 64, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !62, line: 64, column: 11)
!819 = distinct !DILexicalBlock(scope: !810, file: !62, line: 62, column: 5)
!820 = !DILocation(line: 64, column: 36, scope: !818)
!821 = !DILocation(line: 64, column: 11, scope: !819)
!822 = !DILocation(line: 66, column: 24, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !62, line: 65, column: 9)
!824 = !DILocation(line: 70, column: 41, scope: !823)
!825 = !DILocation(line: 72, column: 9, scope: !823)
!826 = !DILocation(line: 84, column: 16, scope: !790)
!827 = !DILocation(line: 90, column: 27, scope: !790)
!828 = !DILocation(line: 92, column: 1, scope: !790)
!829 = distinct !DISubprogram(name: "clone_quoting_options", scope: !110, file: !110, line: 122, type: !830, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !833)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "o", arg: 1, scope: !829, file: !110, line: 122, type: !832)
!835 = !DILocalVariable(name: "e", scope: !829, file: !110, line: 124, type: !28)
!836 = !DILocalVariable(name: "p", scope: !829, file: !110, line: 125, type: !832)
!837 = !DILocation(line: 122, column: 48, scope: !829)
!838 = !DILocation(line: 124, column: 11, scope: !829)
!839 = !DILocation(line: 124, column: 7, scope: !829)
!840 = !DILocation(line: 125, column: 40, scope: !829)
!841 = !DILocation(line: 125, column: 31, scope: !829)
!842 = !DILocation(line: 125, column: 27, scope: !829)
!843 = !DILocation(line: 127, column: 9, scope: !829)
!844 = !DILocation(line: 128, column: 3, scope: !829)
!845 = distinct !DISubprogram(name: "get_quoting_style", scope: !110, file: !110, line: 133, type: !846, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !850)
!846 = !DISubroutineType(types: !847)
!847 = !{!68, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!850 = !{!851}
!851 = !DILocalVariable(name: "o", arg: 1, scope: !845, file: !110, line: 133, type: !848)
!852 = !DILocation(line: 133, column: 50, scope: !845)
!853 = !DILocation(line: 135, column: 11, scope: !845)
!854 = !DILocation(line: 135, column: 46, scope: !845)
!855 = !{!856, !630, i64 0}
!856 = !{!"quoting_options", !630, i64 0, !696, i64 4, !630, i64 8, !629, i64 40, !629, i64 48}
!857 = !DILocation(line: 135, column: 3, scope: !845)
!858 = distinct !DISubprogram(name: "set_quoting_style", scope: !110, file: !110, line: 141, type: !859, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !832, !68}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !858, file: !110, line: 141, type: !832)
!863 = !DILocalVariable(name: "s", arg: 2, scope: !858, file: !110, line: 141, type: !68)
!864 = !DILocation(line: 141, column: 44, scope: !858)
!865 = !DILocation(line: 141, column: 66, scope: !858)
!866 = !DILocation(line: 143, column: 4, scope: !858)
!867 = !DILocation(line: 143, column: 39, scope: !858)
!868 = !DILocation(line: 143, column: 45, scope: !858)
!869 = !DILocation(line: 144, column: 1, scope: !858)
!870 = distinct !DISubprogram(name: "set_char_quoting", scope: !110, file: !110, line: 152, type: !871, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!28, !832, !13, !28}
!873 = !{!874, !875, !876, !877, !879, !881, !882}
!874 = !DILocalVariable(name: "o", arg: 1, scope: !870, file: !110, line: 152, type: !832)
!875 = !DILocalVariable(name: "c", arg: 2, scope: !870, file: !110, line: 152, type: !13)
!876 = !DILocalVariable(name: "i", arg: 3, scope: !870, file: !110, line: 152, type: !28)
!877 = !DILocalVariable(name: "uc", scope: !870, file: !110, line: 154, type: !878)
!878 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!879 = !DILocalVariable(name: "p", scope: !870, file: !110, line: 155, type: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!881 = !DILocalVariable(name: "shift", scope: !870, file: !110, line: 157, type: !28)
!882 = !DILocalVariable(name: "r", scope: !870, file: !110, line: 158, type: !28)
!883 = !DILocation(line: 152, column: 43, scope: !870)
!884 = !DILocation(line: 152, column: 51, scope: !870)
!885 = !DILocation(line: 152, column: 58, scope: !870)
!886 = !DILocation(line: 154, column: 17, scope: !870)
!887 = !DILocation(line: 156, column: 6, scope: !870)
!888 = !DILocation(line: 156, column: 62, scope: !870)
!889 = !DILocation(line: 156, column: 57, scope: !870)
!890 = !DILocation(line: 155, column: 17, scope: !870)
!891 = !DILocation(line: 157, column: 15, scope: !870)
!892 = !DILocation(line: 157, column: 7, scope: !870)
!893 = !DILocation(line: 158, column: 12, scope: !870)
!894 = !DILocation(line: 158, column: 15, scope: !870)
!895 = !DILocation(line: 158, column: 25, scope: !870)
!896 = !DILocation(line: 158, column: 7, scope: !870)
!897 = !DILocation(line: 159, column: 13, scope: !870)
!898 = !DILocation(line: 159, column: 18, scope: !870)
!899 = !DILocation(line: 159, column: 23, scope: !870)
!900 = !DILocation(line: 159, column: 6, scope: !870)
!901 = !DILocation(line: 160, column: 3, scope: !870)
!902 = distinct !DISubprogram(name: "set_quoting_flags", scope: !110, file: !110, line: 168, type: !903, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!28, !832, !28}
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !110, line: 168, type: !832)
!907 = !DILocalVariable(name: "i", arg: 2, scope: !902, file: !110, line: 168, type: !28)
!908 = !DILocalVariable(name: "r", scope: !902, file: !110, line: 170, type: !28)
!909 = !DILocation(line: 168, column: 44, scope: !902)
!910 = !DILocation(line: 168, column: 51, scope: !902)
!911 = !DILocation(line: 171, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !110, line: 171, column: 7)
!913 = !DILocation(line: 171, column: 7, scope: !902)
!914 = !DILocation(line: 173, column: 10, scope: !902)
!915 = !{!856, !696, i64 4}
!916 = !DILocation(line: 170, column: 7, scope: !902)
!917 = !DILocation(line: 174, column: 12, scope: !902)
!918 = !DILocation(line: 175, column: 3, scope: !902)
!919 = distinct !DISubprogram(name: "set_custom_quoting", scope: !110, file: !110, line: 179, type: !920, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !832, !25, !25}
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "o", arg: 1, scope: !919, file: !110, line: 179, type: !832)
!924 = !DILocalVariable(name: "left_quote", arg: 2, scope: !919, file: !110, line: 180, type: !25)
!925 = !DILocalVariable(name: "right_quote", arg: 3, scope: !919, file: !110, line: 180, type: !25)
!926 = !DILocation(line: 179, column: 45, scope: !919)
!927 = !DILocation(line: 180, column: 33, scope: !919)
!928 = !DILocation(line: 180, column: 57, scope: !919)
!929 = !DILocation(line: 182, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !110, line: 182, column: 7)
!931 = !DILocation(line: 182, column: 7, scope: !919)
!932 = !DILocation(line: 184, column: 6, scope: !919)
!933 = !DILocation(line: 184, column: 12, scope: !919)
!934 = !DILocation(line: 185, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !919, file: !110, line: 185, column: 7)
!936 = !DILocation(line: 185, column: 23, scope: !935)
!937 = !DILocation(line: 185, column: 19, scope: !935)
!938 = !DILocation(line: 186, column: 5, scope: !935)
!939 = !DILocation(line: 187, column: 6, scope: !919)
!940 = !DILocation(line: 187, column: 17, scope: !919)
!941 = !{!856, !629, i64 40}
!942 = !DILocation(line: 188, column: 6, scope: !919)
!943 = !DILocation(line: 188, column: 18, scope: !919)
!944 = !{!856, !629, i64 48}
!945 = !DILocation(line: 189, column: 1, scope: !919)
!946 = distinct !DISubprogram(name: "quotearg_buffer", scope: !110, file: !110, line: 784, type: !947, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!104, !12, !104, !25, !104, !848}
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957}
!950 = !DILocalVariable(name: "buffer", arg: 1, scope: !946, file: !110, line: 784, type: !12)
!951 = !DILocalVariable(name: "buffersize", arg: 2, scope: !946, file: !110, line: 784, type: !104)
!952 = !DILocalVariable(name: "arg", arg: 3, scope: !946, file: !110, line: 785, type: !25)
!953 = !DILocalVariable(name: "argsize", arg: 4, scope: !946, file: !110, line: 785, type: !104)
!954 = !DILocalVariable(name: "o", arg: 5, scope: !946, file: !110, line: 786, type: !848)
!955 = !DILocalVariable(name: "p", scope: !946, file: !110, line: 788, type: !848)
!956 = !DILocalVariable(name: "e", scope: !946, file: !110, line: 789, type: !28)
!957 = !DILocalVariable(name: "r", scope: !946, file: !110, line: 790, type: !104)
!958 = !DILocation(line: 784, column: 24, scope: !946)
!959 = !DILocation(line: 784, column: 39, scope: !946)
!960 = !DILocation(line: 785, column: 30, scope: !946)
!961 = !DILocation(line: 785, column: 42, scope: !946)
!962 = !DILocation(line: 786, column: 48, scope: !946)
!963 = !DILocation(line: 788, column: 37, scope: !946)
!964 = !DILocation(line: 788, column: 33, scope: !946)
!965 = !DILocation(line: 789, column: 11, scope: !946)
!966 = !DILocation(line: 789, column: 7, scope: !946)
!967 = !DILocation(line: 791, column: 43, scope: !946)
!968 = !DILocation(line: 791, column: 53, scope: !946)
!969 = !DILocation(line: 791, column: 60, scope: !946)
!970 = !DILocation(line: 792, column: 43, scope: !946)
!971 = !DILocation(line: 792, column: 58, scope: !946)
!972 = !DILocation(line: 790, column: 14, scope: !946)
!973 = !DILocation(line: 790, column: 10, scope: !946)
!974 = !DILocation(line: 793, column: 9, scope: !946)
!975 = !DILocation(line: 794, column: 3, scope: !946)
!976 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !110, file: !110, line: 256, type: !977, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !981)
!977 = !DISubroutineType(types: !978)
!978 = !{!104, !12, !104, !25, !104, !68, !28, !979, !25, !25}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1006, !1007, !1008, !1009, !1010, !1013, !1014, !1032, !1035, !1036, !1043}
!982 = !DILocalVariable(name: "buffer", arg: 1, scope: !976, file: !110, line: 256, type: !12)
!983 = !DILocalVariable(name: "buffersize", arg: 2, scope: !976, file: !110, line: 256, type: !104)
!984 = !DILocalVariable(name: "arg", arg: 3, scope: !976, file: !110, line: 257, type: !25)
!985 = !DILocalVariable(name: "argsize", arg: 4, scope: !976, file: !110, line: 257, type: !104)
!986 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !976, file: !110, line: 258, type: !68)
!987 = !DILocalVariable(name: "flags", arg: 6, scope: !976, file: !110, line: 258, type: !28)
!988 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !976, file: !110, line: 259, type: !979)
!989 = !DILocalVariable(name: "left_quote", arg: 8, scope: !976, file: !110, line: 260, type: !25)
!990 = !DILocalVariable(name: "right_quote", arg: 9, scope: !976, file: !110, line: 261, type: !25)
!991 = !DILocalVariable(name: "i", scope: !976, file: !110, line: 263, type: !104)
!992 = !DILocalVariable(name: "len", scope: !976, file: !110, line: 264, type: !104)
!993 = !DILocalVariable(name: "orig_buffersize", scope: !976, file: !110, line: 265, type: !104)
!994 = !DILocalVariable(name: "quote_string", scope: !976, file: !110, line: 266, type: !25)
!995 = !DILocalVariable(name: "quote_string_len", scope: !976, file: !110, line: 267, type: !104)
!996 = !DILocalVariable(name: "backslash_escapes", scope: !976, file: !110, line: 268, type: !34)
!997 = !DILocalVariable(name: "unibyte_locale", scope: !976, file: !110, line: 269, type: !34)
!998 = !DILocalVariable(name: "elide_outer_quotes", scope: !976, file: !110, line: 270, type: !34)
!999 = !DILocalVariable(name: "pending_shell_escape_end", scope: !976, file: !110, line: 271, type: !34)
!1000 = !DILocalVariable(name: "encountered_single_quote", scope: !976, file: !110, line: 272, type: !34)
!1001 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !976, file: !110, line: 273, type: !34)
!1002 = !DILocalVariable(name: "c", scope: !1003, file: !110, line: 402, type: !878)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !110, line: 401, column: 5)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !110, line: 400, column: 3)
!1005 = distinct !DILexicalBlock(scope: !976, file: !110, line: 400, column: 3)
!1006 = !DILocalVariable(name: "esc", scope: !1003, file: !110, line: 403, type: !878)
!1007 = !DILocalVariable(name: "is_right_quote", scope: !1003, file: !110, line: 404, type: !34)
!1008 = !DILocalVariable(name: "escaping", scope: !1003, file: !110, line: 405, type: !34)
!1009 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1003, file: !110, line: 406, type: !34)
!1010 = !DILocalVariable(name: "m", scope: !1011, file: !110, line: 610, type: !104)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 608, column: 11)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 426, column: 9)
!1013 = !DILocalVariable(name: "printable", scope: !1011, file: !110, line: 612, type: !34)
!1014 = !DILocalVariable(name: "mbstate", scope: !1015, file: !110, line: 621, type: !1017)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !110, line: 620, column: 15)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !110, line: 614, column: 17)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !1019)
!1018 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !1021)
!1020 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1021, file: !1020, line: 15, baseType: !28, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1021, file: !1020, line: 20, baseType: !1025, size: 32, offset: 32)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !1020, line: 16, size: 32, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1025, file: !1020, line: 18, baseType: !6, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1025, file: !1020, line: 19, baseType: !1029, size: 32)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 4)
!1032 = !DILocalVariable(name: "w", scope: !1033, file: !110, line: 631, type: !1034)
!1033 = distinct !DILexicalBlock(scope: !1015, file: !110, line: 630, column: 19)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !105, line: 90, baseType: !28)
!1035 = !DILocalVariable(name: "bytes", scope: !1033, file: !110, line: 632, type: !104)
!1036 = !DILocalVariable(name: "j", scope: !1037, file: !110, line: 657, type: !104)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !110, line: 656, column: 27)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !110, line: 654, column: 29)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !110, line: 649, column: 23)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !110, line: 641, column: 30)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !110, line: 636, column: 30)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !110, line: 634, column: 25)
!1043 = !DILocalVariable(name: "ilim", scope: !1044, file: !110, line: 684, type: !104)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !110, line: 681, column: 15)
!1045 = distinct !DILexicalBlock(scope: !1011, file: !110, line: 680, column: 17)
!1046 = !DILocation(line: 256, column: 33, scope: !976)
!1047 = !DILocation(line: 256, column: 48, scope: !976)
!1048 = !DILocation(line: 257, column: 39, scope: !976)
!1049 = !DILocation(line: 257, column: 51, scope: !976)
!1050 = !DILocation(line: 258, column: 46, scope: !976)
!1051 = !DILocation(line: 258, column: 65, scope: !976)
!1052 = !DILocation(line: 259, column: 47, scope: !976)
!1053 = !DILocation(line: 260, column: 39, scope: !976)
!1054 = !DILocation(line: 261, column: 39, scope: !976)
!1055 = !DILocation(line: 264, column: 10, scope: !976)
!1056 = !DILocation(line: 265, column: 10, scope: !976)
!1057 = !DILocation(line: 266, column: 15, scope: !976)
!1058 = !DILocation(line: 267, column: 10, scope: !976)
!1059 = !DILocation(line: 268, column: 8, scope: !976)
!1060 = !DILocation(line: 269, column: 25, scope: !976)
!1061 = !DILocation(line: 269, column: 36, scope: !976)
!1062 = !DILocation(line: 270, column: 8, scope: !976)
!1063 = !DILocation(line: 271, column: 8, scope: !976)
!1064 = !DILocation(line: 272, column: 8, scope: !976)
!1065 = !DILocation(line: 273, column: 8, scope: !976)
!1066 = !DILocation(line: 273, column: 3, scope: !976)
!1067 = !DILocation(line: 0, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !976, file: !110, line: 317, column: 5)
!1069 = !DILocation(line: 316, column: 3, scope: !976)
!1070 = !DILocation(line: 323, column: 11, scope: !1068)
!1071 = !DILocation(line: 323, column: 12, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !110, line: 323, column: 11)
!1073 = !DILocation(line: 324, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !110, line: 324, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !110, line: 324, column: 9)
!1076 = !DILocation(line: 324, column: 9, scope: !1075)
!1077 = !{!630, !630, i64 0}
!1078 = !DILocation(line: 362, column: 26, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !110, line: 340, column: 11)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !110, line: 339, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1068, file: !110, line: 338, column: 7)
!1082 = !DILocation(line: 363, column: 27, scope: !1079)
!1083 = !DILocation(line: 364, column: 11, scope: !1079)
!1084 = !DILocation(line: 365, column: 14, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !110, line: 365, column: 13)
!1086 = !DILocation(line: 365, column: 13, scope: !1081)
!1087 = !DILocation(line: 366, column: 43, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !110, line: 366, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !110, line: 366, column: 11)
!1090 = !DILocation(line: 366, column: 11, scope: !1089)
!1091 = !DILocation(line: 367, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !110, line: 367, column: 13)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !110, line: 367, column: 13)
!1094 = !DILocation(line: 367, column: 13, scope: !1093)
!1095 = !DILocation(line: 366, column: 70, scope: !1088)
!1096 = distinct !{!1096, !1090, !1097}
!1097 = !DILocation(line: 367, column: 13, scope: !1089)
!1098 = !DILocation(line: 370, column: 28, scope: !1081)
!1099 = !DILocation(line: 372, column: 7, scope: !1068)
!1100 = !DILocation(line: 376, column: 7, scope: !1068)
!1101 = !DILocation(line: 379, column: 7, scope: !1068)
!1102 = !DILocation(line: 381, column: 12, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1068, file: !110, line: 381, column: 11)
!1104 = !DILocation(line: 381, column: 11, scope: !1068)
!1105 = !DILocation(line: 0, scope: !1103)
!1106 = !DILocation(line: 386, column: 12, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1068, file: !110, line: 386, column: 11)
!1108 = !DILocation(line: 386, column: 11, scope: !1068)
!1109 = !DILocation(line: 387, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !110, line: 387, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !110, line: 387, column: 9)
!1112 = !DILocation(line: 387, column: 9, scope: !1111)
!1113 = !DILocation(line: 394, column: 7, scope: !1068)
!1114 = !DILocation(line: 397, column: 7, scope: !1068)
!1115 = !DILocation(line: 0, scope: !976)
!1116 = !DILocation(line: 263, column: 10, scope: !976)
!1117 = !DILocation(line: 400, column: 8, scope: !1005)
!1118 = !DILocation(line: 0, scope: !1004)
!1119 = !DILocation(line: 400, column: 27, scope: !1004)
!1120 = !DILocation(line: 400, column: 19, scope: !1004)
!1121 = !DILocation(line: 400, column: 41, scope: !1004)
!1122 = !DILocation(line: 400, column: 48, scope: !1004)
!1123 = !DILocation(line: 400, column: 3, scope: !1005)
!1124 = !DILocation(line: 400, column: 60, scope: !1004)
!1125 = !DILocation(line: 404, column: 12, scope: !1003)
!1126 = !DILocation(line: 405, column: 12, scope: !1003)
!1127 = !DILocation(line: 406, column: 12, scope: !1003)
!1128 = !DILocation(line: 409, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 408, column: 11)
!1130 = !DILocation(line: 411, column: 17, scope: !1129)
!1131 = !DILocation(line: 412, column: 39, scope: !1129)
!1132 = !DILocation(line: 416, column: 32, scope: !1129)
!1133 = !DILocation(line: 412, column: 19, scope: !1129)
!1134 = !DILocation(line: 412, column: 15, scope: !1129)
!1135 = !DILocation(line: 417, column: 11, scope: !1129)
!1136 = !DILocation(line: 417, column: 26, scope: !1129)
!1137 = !DILocation(line: 417, column: 14, scope: !1129)
!1138 = !DILocation(line: 417, column: 63, scope: !1129)
!1139 = !DILocation(line: 408, column: 11, scope: !1003)
!1140 = !DILocation(line: 0, scope: !1003)
!1141 = !DILocation(line: 424, column: 11, scope: !1003)
!1142 = !DILocation(line: 402, column: 21, scope: !1003)
!1143 = !DILocation(line: 425, column: 7, scope: !1003)
!1144 = !DILocation(line: 428, column: 15, scope: !1012)
!1145 = !DILocation(line: 430, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !110, line: 430, column: 15)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !110, line: 429, column: 13)
!1148 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 428, column: 15)
!1149 = !DILocation(line: 430, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !110, line: 430, column: 15)
!1151 = !DILocation(line: 430, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !110, line: 430, column: 15)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !110, line: 430, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !110, line: 430, column: 15)
!1155 = !DILocation(line: 430, column: 15, scope: !1153)
!1156 = !DILocation(line: 430, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !110, line: 430, column: 15)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !110, line: 430, column: 15)
!1159 = !DILocation(line: 430, column: 15, scope: !1158)
!1160 = !DILocation(line: 430, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !110, line: 430, column: 15)
!1162 = distinct !DILexicalBlock(scope: !1154, file: !110, line: 430, column: 15)
!1163 = !DILocation(line: 430, column: 15, scope: !1162)
!1164 = !DILocation(line: 430, column: 15, scope: !1154)
!1165 = !DILocation(line: 430, column: 15, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !110, line: 430, column: 15)
!1167 = distinct !DILexicalBlock(scope: !1146, file: !110, line: 430, column: 15)
!1168 = !DILocation(line: 430, column: 15, scope: !1167)
!1169 = !DILocation(line: 438, column: 19, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1147, file: !110, line: 437, column: 19)
!1171 = !DILocation(line: 438, column: 24, scope: !1170)
!1172 = !DILocation(line: 438, column: 28, scope: !1170)
!1173 = !DILocation(line: 438, column: 38, scope: !1170)
!1174 = !DILocation(line: 438, column: 48, scope: !1170)
!1175 = !DILocation(line: 438, column: 59, scope: !1170)
!1176 = !DILocation(line: 440, column: 19, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !110, line: 440, column: 19)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !110, line: 440, column: 19)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !110, line: 439, column: 17)
!1180 = !DILocation(line: 440, column: 19, scope: !1178)
!1181 = !DILocation(line: 441, column: 19, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !110, line: 441, column: 19)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !110, line: 441, column: 19)
!1184 = !DILocation(line: 441, column: 19, scope: !1183)
!1185 = !DILocation(line: 442, column: 17, scope: !1179)
!1186 = !DILocation(line: 449, column: 20, scope: !1148)
!1187 = !DILocation(line: 454, column: 11, scope: !1012)
!1188 = !DILocation(line: 457, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 455, column: 13)
!1190 = !DILocation(line: 463, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !110, line: 462, column: 19)
!1192 = !DILocation(line: 463, column: 24, scope: !1191)
!1193 = !DILocation(line: 463, column: 28, scope: !1191)
!1194 = !DILocation(line: 463, column: 38, scope: !1191)
!1195 = !DILocation(line: 463, column: 47, scope: !1191)
!1196 = !DILocation(line: 463, column: 41, scope: !1191)
!1197 = !DILocation(line: 463, column: 52, scope: !1191)
!1198 = !DILocation(line: 462, column: 19, scope: !1189)
!1199 = !DILocation(line: 464, column: 25, scope: !1191)
!1200 = !DILocation(line: 464, column: 17, scope: !1191)
!1201 = !DILocation(line: 471, column: 25, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1191, file: !110, line: 465, column: 19)
!1203 = !DILocation(line: 475, column: 21, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !110, line: 475, column: 21)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !110, line: 475, column: 21)
!1206 = !DILocation(line: 475, column: 21, scope: !1205)
!1207 = !DILocation(line: 476, column: 21, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !110, line: 476, column: 21)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !110, line: 476, column: 21)
!1210 = !DILocation(line: 476, column: 21, scope: !1209)
!1211 = !DILocation(line: 477, column: 21, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !110, line: 477, column: 21)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !110, line: 477, column: 21)
!1214 = !DILocation(line: 477, column: 21, scope: !1213)
!1215 = !DILocation(line: 478, column: 21, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !110, line: 478, column: 21)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !110, line: 478, column: 21)
!1218 = !DILocation(line: 478, column: 21, scope: !1217)
!1219 = !DILocation(line: 479, column: 21, scope: !1202)
!1220 = !DILocation(line: 403, column: 21, scope: !1003)
!1221 = !DILocation(line: 492, column: 31, scope: !1012)
!1222 = !DILocation(line: 493, column: 31, scope: !1012)
!1223 = !DILocation(line: 495, column: 31, scope: !1012)
!1224 = !DILocation(line: 496, column: 31, scope: !1012)
!1225 = !DILocation(line: 497, column: 31, scope: !1012)
!1226 = !DILocation(line: 500, column: 15, scope: !1012)
!1227 = !DILocation(line: 502, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !110, line: 501, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 500, column: 15)
!1230 = !DILocation(line: 509, column: 33, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 509, column: 15)
!1232 = !DILocation(line: 0, scope: !1012)
!1233 = !DILocation(line: 514, column: 15, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 513, column: 15)
!1235 = !DILocation(line: 518, column: 15, scope: !1012)
!1236 = !DILocation(line: 526, column: 26, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 526, column: 15)
!1238 = !DILocation(line: 526, column: 15, scope: !1012)
!1239 = !DILocation(line: 526, column: 40, scope: !1237)
!1240 = !DILocation(line: 526, column: 47, scope: !1237)
!1241 = !DILocation(line: 530, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 530, column: 15)
!1243 = !DILocation(line: 526, column: 18, scope: !1237)
!1244 = !DILocation(line: 526, column: 65, scope: !1237)
!1245 = !DILocation(line: 530, column: 15, scope: !1012)
!1246 = !DILocation(line: 535, column: 11, scope: !1012)
!1247 = !DILocation(line: 549, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 548, column: 15)
!1249 = !DILocation(line: 556, column: 15, scope: !1012)
!1250 = !DILocation(line: 558, column: 19, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !110, line: 557, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 556, column: 15)
!1253 = !DILocation(line: 561, column: 19, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !110, line: 561, column: 19)
!1255 = !DILocation(line: 561, column: 35, scope: !1254)
!1256 = !DILocation(line: 561, column: 30, scope: !1254)
!1257 = !DILocation(line: 570, column: 15, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !110, line: 570, column: 15)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !110, line: 570, column: 15)
!1260 = !DILocation(line: 570, column: 15, scope: !1259)
!1261 = !DILocation(line: 571, column: 15, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !110, line: 571, column: 15)
!1263 = distinct !DILexicalBlock(scope: !1251, file: !110, line: 571, column: 15)
!1264 = !DILocation(line: 571, column: 15, scope: !1263)
!1265 = !DILocation(line: 572, column: 15, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !110, line: 572, column: 15)
!1267 = distinct !DILexicalBlock(scope: !1251, file: !110, line: 572, column: 15)
!1268 = !DILocation(line: 572, column: 15, scope: !1267)
!1269 = !DILocation(line: 574, column: 13, scope: !1251)
!1270 = !DILocation(line: 614, column: 17, scope: !1011)
!1271 = !DILocation(line: 610, column: 20, scope: !1011)
!1272 = !DILocation(line: 617, column: 29, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1016, file: !110, line: 615, column: 15)
!1274 = !{!1275, !1275, i64 0}
!1275 = !{!"short", !630, i64 0}
!1276 = !DILocation(line: 617, column: 27, scope: !1273)
!1277 = !DILocation(line: 612, column: 18, scope: !1011)
!1278 = !DILocation(line: 618, column: 15, scope: !1273)
!1279 = !DILocation(line: 621, column: 17, scope: !1015)
!1280 = !DILocation(line: 622, column: 17, scope: !1015)
!1281 = !DILocation(line: 626, column: 29, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1015, file: !110, line: 626, column: 21)
!1283 = !DILocation(line: 626, column: 21, scope: !1015)
!1284 = !DILocation(line: 627, column: 29, scope: !1282)
!1285 = !DILocation(line: 627, column: 19, scope: !1282)
!1286 = !DILocation(line: 0, scope: !1129)
!1287 = !DILocation(line: 629, column: 17, scope: !1015)
!1288 = !DILocation(line: 624, column: 19, scope: !1015)
!1289 = !DILocation(line: 625, column: 27, scope: !1015)
!1290 = !DILocation(line: 631, column: 21, scope: !1033)
!1291 = !DILocation(line: 632, column: 56, scope: !1033)
!1292 = !DILocation(line: 632, column: 50, scope: !1033)
!1293 = !DILocation(line: 633, column: 53, scope: !1033)
!1294 = !DILocation(line: 621, column: 27, scope: !1015)
!1295 = !DILocation(line: 631, column: 29, scope: !1033)
!1296 = !DILocation(line: 632, column: 36, scope: !1033)
!1297 = !DILocation(line: 632, column: 28, scope: !1033)
!1298 = !DILocation(line: 634, column: 25, scope: !1033)
!1299 = !DILocation(line: 644, column: 38, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1040, file: !110, line: 642, column: 23)
!1301 = !DILocation(line: 644, column: 48, scope: !1300)
!1302 = !DILocation(line: 644, column: 51, scope: !1300)
!1303 = !DILocation(line: 644, column: 25, scope: !1300)
!1304 = !DILocation(line: 645, column: 28, scope: !1300)
!1305 = !DILocation(line: 644, column: 34, scope: !1300)
!1306 = distinct !{!1306, !1303, !1304}
!1307 = !DILocation(line: 658, column: 43, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !110, line: 658, column: 29)
!1309 = distinct !DILexicalBlock(scope: !1037, file: !110, line: 658, column: 29)
!1310 = !DILocation(line: 655, column: 29, scope: !1038)
!1311 = !DILocation(line: 657, column: 36, scope: !1037)
!1312 = !DILocation(line: 659, column: 49, scope: !1308)
!1313 = !DILocation(line: 659, column: 39, scope: !1308)
!1314 = !DILocation(line: 659, column: 31, scope: !1308)
!1315 = !DILocation(line: 658, column: 53, scope: !1308)
!1316 = !DILocation(line: 658, column: 29, scope: !1309)
!1317 = distinct !{!1317, !1316, !1318}
!1318 = !DILocation(line: 667, column: 33, scope: !1309)
!1319 = !DILocation(line: 674, column: 19, scope: !1015)
!1320 = !DILocation(line: 670, column: 41, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1039, file: !110, line: 670, column: 29)
!1322 = !DILocation(line: 670, column: 31, scope: !1321)
!1323 = !DILocation(line: 670, column: 29, scope: !1039)
!1324 = !DILocation(line: 672, column: 27, scope: !1039)
!1325 = !DILocation(line: 675, column: 26, scope: !1015)
!1326 = !DILocation(line: 675, column: 24, scope: !1015)
!1327 = !DILocation(line: 674, column: 19, scope: !1033)
!1328 = distinct !{!1328, !1287, !1329}
!1329 = !DILocation(line: 675, column: 44, scope: !1015)
!1330 = !DILocation(line: 676, column: 15, scope: !1016)
!1331 = !DILocation(line: 0, scope: !1282)
!1332 = !DILocation(line: 0, scope: !1015)
!1333 = !DILocation(line: 678, column: 40, scope: !1011)
!1334 = !DILocation(line: 680, column: 19, scope: !1045)
!1335 = !DILocation(line: 680, column: 45, scope: !1045)
!1336 = !DILocation(line: 680, column: 23, scope: !1045)
!1337 = !DILocation(line: 684, column: 33, scope: !1044)
!1338 = !DILocation(line: 684, column: 24, scope: !1044)
!1339 = !DILocation(line: 686, column: 17, scope: !1044)
!1340 = !DILocation(line: 0, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !110, line: 687, column: 19)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !110, line: 686, column: 17)
!1343 = distinct !DILexicalBlock(scope: !1044, file: !110, line: 686, column: 17)
!1344 = !DILocation(line: 0, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !110, line: 703, column: 21)
!1346 = !DILocation(line: 0, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !110, line: 696, column: 23)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !110, line: 695, column: 30)
!1349 = distinct !DILexicalBlock(scope: !1341, file: !110, line: 688, column: 25)
!1350 = !DILocation(line: 688, column: 43, scope: !1349)
!1351 = !DILocation(line: 690, column: 25, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !110, line: 690, column: 25)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !110, line: 689, column: 23)
!1354 = !DILocation(line: 690, column: 25, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !110, line: 690, column: 25)
!1356 = !DILocation(line: 690, column: 25, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !110, line: 690, column: 25)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !110, line: 690, column: 25)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !110, line: 690, column: 25)
!1360 = !DILocation(line: 690, column: 25, scope: !1358)
!1361 = !DILocation(line: 690, column: 25, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !110, line: 690, column: 25)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !110, line: 690, column: 25)
!1364 = !DILocation(line: 690, column: 25, scope: !1363)
!1365 = !DILocation(line: 690, column: 25, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !110, line: 690, column: 25)
!1367 = distinct !DILexicalBlock(scope: !1359, file: !110, line: 690, column: 25)
!1368 = !DILocation(line: 690, column: 25, scope: !1367)
!1369 = !DILocation(line: 690, column: 25, scope: !1359)
!1370 = !DILocation(line: 690, column: 25, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !110, line: 690, column: 25)
!1372 = distinct !DILexicalBlock(scope: !1352, file: !110, line: 690, column: 25)
!1373 = !DILocation(line: 690, column: 25, scope: !1372)
!1374 = !DILocation(line: 691, column: 25, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !110, line: 691, column: 25)
!1376 = distinct !DILexicalBlock(scope: !1353, file: !110, line: 691, column: 25)
!1377 = !DILocation(line: 691, column: 25, scope: !1376)
!1378 = !DILocation(line: 692, column: 25, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !110, line: 692, column: 25)
!1380 = distinct !DILexicalBlock(scope: !1353, file: !110, line: 692, column: 25)
!1381 = !DILocation(line: 692, column: 25, scope: !1380)
!1382 = !DILocation(line: 693, column: 38, scope: !1353)
!1383 = !DILocation(line: 693, column: 33, scope: !1353)
!1384 = !DILocation(line: 694, column: 23, scope: !1353)
!1385 = !DILocation(line: 695, column: 30, scope: !1348)
!1386 = !DILocation(line: 695, column: 30, scope: !1349)
!1387 = !DILocation(line: 697, column: 25, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !110, line: 697, column: 25)
!1389 = distinct !DILexicalBlock(scope: !1347, file: !110, line: 697, column: 25)
!1390 = !DILocation(line: 697, column: 25, scope: !1389)
!1391 = !DILocation(line: 699, column: 23, scope: !1347)
!1392 = !DILocation(line: 0, scope: !1380)
!1393 = !DILocation(line: 0, scope: !1353)
!1394 = !DILocation(line: 0, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1129, file: !110, line: 418, column: 9)
!1396 = !DILocation(line: 0, scope: !1352)
!1397 = !DILocation(line: 700, column: 35, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1341, file: !110, line: 700, column: 25)
!1399 = !DILocation(line: 700, column: 30, scope: !1398)
!1400 = !DILocation(line: 700, column: 25, scope: !1341)
!1401 = !DILocation(line: 702, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !110, line: 702, column: 21)
!1403 = distinct !DILexicalBlock(scope: !1341, file: !110, line: 702, column: 21)
!1404 = !DILocation(line: 702, column: 21, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !110, line: 702, column: 21)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !110, line: 702, column: 21)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !110, line: 702, column: 21)
!1408 = !DILocation(line: 702, column: 21, scope: !1406)
!1409 = !DILocation(line: 702, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !110, line: 702, column: 21)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !110, line: 702, column: 21)
!1412 = !DILocation(line: 702, column: 21, scope: !1411)
!1413 = !DILocation(line: 702, column: 21, scope: !1407)
!1414 = !DILocation(line: 0, scope: !1389)
!1415 = !DILocation(line: 703, column: 21, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1345, file: !110, line: 703, column: 21)
!1417 = !DILocation(line: 703, column: 21, scope: !1345)
!1418 = !DILocation(line: 704, column: 25, scope: !1341)
!1419 = !DILocation(line: 686, column: 17, scope: !1342)
!1420 = distinct !{!1420, !1421, !1422}
!1421 = !DILocation(line: 686, column: 17, scope: !1343)
!1422 = !DILocation(line: 705, column: 19, scope: !1343)
!1423 = !DILocation(line: 0, scope: !1005)
!1424 = !DILocation(line: 416, column: 30, scope: !1129)
!1425 = !DILocation(line: 712, column: 34, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 712, column: 11)
!1427 = !DILocation(line: 714, column: 14, scope: !1426)
!1428 = !DILocation(line: 715, column: 14, scope: !1426)
!1429 = !DILocation(line: 715, column: 35, scope: !1426)
!1430 = !DILocation(line: 715, column: 17, scope: !1426)
!1431 = !DILocation(line: 715, column: 47, scope: !1426)
!1432 = !DILocation(line: 715, column: 65, scope: !1426)
!1433 = !DILocation(line: 716, column: 15, scope: !1426)
!1434 = !DILocation(line: 716, column: 11, scope: !1426)
!1435 = !DILocation(line: 712, column: 11, scope: !1003)
!1436 = !DILocation(line: 400, column: 10, scope: !1005)
!1437 = !DILocation(line: 0, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !110, line: 519, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1012, file: !110, line: 518, column: 15)
!1440 = !DILocation(line: 720, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 720, column: 7)
!1442 = !DILocation(line: 720, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !110, line: 720, column: 7)
!1444 = !DILocation(line: 720, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !110, line: 720, column: 7)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !110, line: 720, column: 7)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !110, line: 720, column: 7)
!1448 = !DILocation(line: 720, column: 7, scope: !1446)
!1449 = !DILocation(line: 720, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !110, line: 720, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !110, line: 720, column: 7)
!1452 = !DILocation(line: 720, column: 7, scope: !1451)
!1453 = !DILocation(line: 720, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !110, line: 720, column: 7)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !110, line: 720, column: 7)
!1456 = !DILocation(line: 720, column: 7, scope: !1455)
!1457 = !DILocation(line: 720, column: 7, scope: !1447)
!1458 = !DILocation(line: 720, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !110, line: 720, column: 7)
!1460 = distinct !DILexicalBlock(scope: !1441, file: !110, line: 720, column: 7)
!1461 = !DILocation(line: 720, column: 7, scope: !1460)
!1462 = !DILocation(line: 723, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !110, line: 723, column: 7)
!1464 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 723, column: 7)
!1465 = !DILocation(line: 424, column: 9, scope: !1003)
!1466 = !DILocation(line: 723, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !110, line: 723, column: 7)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !110, line: 723, column: 7)
!1469 = distinct !DILexicalBlock(scope: !1463, file: !110, line: 723, column: 7)
!1470 = !DILocation(line: 723, column: 7, scope: !1468)
!1471 = !DILocation(line: 723, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !110, line: 723, column: 7)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !110, line: 723, column: 7)
!1474 = !DILocation(line: 723, column: 7, scope: !1473)
!1475 = !DILocation(line: 723, column: 7, scope: !1469)
!1476 = !DILocation(line: 724, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !110, line: 724, column: 7)
!1478 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 724, column: 7)
!1479 = !DILocation(line: 724, column: 7, scope: !1478)
!1480 = !DILocation(line: 726, column: 13, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1003, file: !110, line: 726, column: 11)
!1482 = !DILocation(line: 726, column: 11, scope: !1003)
!1483 = !DILocation(line: 728, column: 5, scope: !1004)
!1484 = !DILocation(line: 400, column: 75, scope: !1004)
!1485 = !DILocation(line: 400, column: 3, scope: !1004)
!1486 = distinct !{!1486, !1123, !1487}
!1487 = !DILocation(line: 728, column: 5, scope: !1005)
!1488 = !DILocation(line: 730, column: 11, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !976, file: !110, line: 730, column: 7)
!1490 = !DILocation(line: 730, column: 16, scope: !1489)
!1491 = !DILocation(line: 738, column: 51, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !976, file: !110, line: 738, column: 7)
!1493 = !DILocation(line: 739, column: 10, scope: !1492)
!1494 = !DILocation(line: 741, column: 11, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !110, line: 741, column: 11)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !110, line: 740, column: 5)
!1497 = !DILocation(line: 741, column: 11, scope: !1496)
!1498 = !DILocation(line: 742, column: 16, scope: !1495)
!1499 = !DILocation(line: 742, column: 9, scope: !1495)
!1500 = !DILocation(line: 746, column: 18, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1495, file: !110, line: 746, column: 16)
!1502 = !DILocation(line: 746, column: 32, scope: !1501)
!1503 = !DILocation(line: 746, column: 29, scope: !1501)
!1504 = !DILocation(line: 755, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !976, file: !110, line: 755, column: 7)
!1506 = !DILocation(line: 755, column: 20, scope: !1505)
!1507 = !DILocation(line: 756, column: 12, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !110, line: 756, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !110, line: 756, column: 5)
!1510 = !DILocation(line: 756, column: 5, scope: !1509)
!1511 = !DILocation(line: 757, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !110, line: 757, column: 7)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !110, line: 757, column: 7)
!1514 = !DILocation(line: 757, column: 7, scope: !1513)
!1515 = !DILocation(line: 756, column: 39, scope: !1508)
!1516 = distinct !{!1516, !1510, !1517}
!1517 = !DILocation(line: 757, column: 7, scope: !1509)
!1518 = !DILocation(line: 759, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !976, file: !110, line: 759, column: 7)
!1520 = !DILocation(line: 759, column: 7, scope: !976)
!1521 = !DILocation(line: 760, column: 5, scope: !1519)
!1522 = !DILocation(line: 760, column: 17, scope: !1519)
!1523 = !DILocation(line: 766, column: 21, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !976, file: !110, line: 766, column: 7)
!1525 = !DILocation(line: 766, column: 54, scope: !1524)
!1526 = !DILocation(line: 766, column: 51, scope: !1524)
!1527 = !DILocation(line: 770, column: 42, scope: !976)
!1528 = !DILocation(line: 768, column: 10, scope: !976)
!1529 = !DILocation(line: 768, column: 3, scope: !976)
!1530 = !DILocation(line: 772, column: 1, scope: !976)
!1531 = distinct !DISubprogram(name: "gettext_quote", scope: !110, file: !110, line: 207, type: !1532, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!25, !25, !68}
!1534 = !{!1535, !1536, !1537, !1538}
!1535 = !DILocalVariable(name: "msgid", arg: 1, scope: !1531, file: !110, line: 207, type: !25)
!1536 = !DILocalVariable(name: "s", arg: 2, scope: !1531, file: !110, line: 207, type: !68)
!1537 = !DILocalVariable(name: "translation", scope: !1531, file: !110, line: 209, type: !25)
!1538 = !DILocalVariable(name: "locale_code", scope: !1531, file: !110, line: 210, type: !25)
!1539 = !DILocation(line: 207, column: 28, scope: !1531)
!1540 = !DILocation(line: 207, column: 54, scope: !1531)
!1541 = !DILocation(line: 209, column: 29, scope: !1531)
!1542 = !DILocation(line: 209, column: 15, scope: !1531)
!1543 = !DILocation(line: 212, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1531, file: !110, line: 212, column: 7)
!1545 = !DILocation(line: 212, column: 7, scope: !1531)
!1546 = !DILocation(line: 233, column: 17, scope: !1531)
!1547 = !DILocation(line: 210, column: 15, scope: !1531)
!1548 = !DILocalVariable(name: "s1", arg: 1, scope: !1549, file: !1550, line: 160, type: !25)
!1549 = distinct !DISubprogram(name: "strcaseeq0", scope: !1550, file: !1550, line: 160, type: !1551, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1553)
!1550 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!1553 = !{!1548, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1554 = !DILocalVariable(name: "s2", arg: 2, scope: !1549, file: !1550, line: 160, type: !25)
!1555 = !DILocalVariable(name: "s20", arg: 3, scope: !1549, file: !1550, line: 160, type: !13)
!1556 = !DILocalVariable(name: "s21", arg: 4, scope: !1549, file: !1550, line: 160, type: !13)
!1557 = !DILocalVariable(name: "s22", arg: 5, scope: !1549, file: !1550, line: 160, type: !13)
!1558 = !DILocalVariable(name: "s23", arg: 6, scope: !1549, file: !1550, line: 160, type: !13)
!1559 = !DILocalVariable(name: "s24", arg: 7, scope: !1549, file: !1550, line: 160, type: !13)
!1560 = !DILocalVariable(name: "s25", arg: 8, scope: !1549, file: !1550, line: 160, type: !13)
!1561 = !DILocalVariable(name: "s26", arg: 9, scope: !1549, file: !1550, line: 160, type: !13)
!1562 = !DILocalVariable(name: "s27", arg: 10, scope: !1549, file: !1550, line: 160, type: !13)
!1563 = !DILocalVariable(name: "s28", arg: 11, scope: !1549, file: !1550, line: 160, type: !13)
!1564 = !DILocation(line: 160, column: 25, scope: !1549, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 234, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1531, file: !110, line: 234, column: 7)
!1567 = !DILocation(line: 160, column: 41, scope: !1549, inlinedAt: !1565)
!1568 = !DILocation(line: 160, column: 50, scope: !1549, inlinedAt: !1565)
!1569 = !DILocation(line: 160, column: 60, scope: !1549, inlinedAt: !1565)
!1570 = !DILocation(line: 160, column: 70, scope: !1549, inlinedAt: !1565)
!1571 = !DILocation(line: 160, column: 80, scope: !1549, inlinedAt: !1565)
!1572 = !DILocation(line: 160, column: 90, scope: !1549, inlinedAt: !1565)
!1573 = !DILocation(line: 160, column: 100, scope: !1549, inlinedAt: !1565)
!1574 = !DILocation(line: 160, column: 110, scope: !1549, inlinedAt: !1565)
!1575 = !DILocation(line: 160, column: 120, scope: !1549, inlinedAt: !1565)
!1576 = !DILocation(line: 160, column: 130, scope: !1549, inlinedAt: !1565)
!1577 = !DILocation(line: 162, column: 7, scope: !1578, inlinedAt: !1565)
!1578 = distinct !DILexicalBlock(scope: !1549, file: !1550, line: 162, column: 7)
!1579 = !DILocalVariable(name: "s1", arg: 1, scope: !1580, file: !1550, line: 146, type: !25)
!1580 = distinct !DISubprogram(name: "strcaseeq1", scope: !1550, file: !1550, line: 146, type: !1581, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13, !13}
!1583 = !{!1579, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1584 = !DILocalVariable(name: "s2", arg: 2, scope: !1580, file: !1550, line: 146, type: !25)
!1585 = !DILocalVariable(name: "s21", arg: 3, scope: !1580, file: !1550, line: 146, type: !13)
!1586 = !DILocalVariable(name: "s22", arg: 4, scope: !1580, file: !1550, line: 146, type: !13)
!1587 = !DILocalVariable(name: "s23", arg: 5, scope: !1580, file: !1550, line: 146, type: !13)
!1588 = !DILocalVariable(name: "s24", arg: 6, scope: !1580, file: !1550, line: 146, type: !13)
!1589 = !DILocalVariable(name: "s25", arg: 7, scope: !1580, file: !1550, line: 146, type: !13)
!1590 = !DILocalVariable(name: "s26", arg: 8, scope: !1580, file: !1550, line: 146, type: !13)
!1591 = !DILocalVariable(name: "s27", arg: 9, scope: !1580, file: !1550, line: 146, type: !13)
!1592 = !DILocalVariable(name: "s28", arg: 10, scope: !1580, file: !1550, line: 146, type: !13)
!1593 = !DILocation(line: 146, column: 25, scope: !1580, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 167, column: 16, scope: !1595, inlinedAt: !1565)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !1550, line: 164, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !1550, line: 163, column: 5)
!1597 = !DILocation(line: 146, column: 41, scope: !1580, inlinedAt: !1594)
!1598 = !DILocation(line: 146, column: 50, scope: !1580, inlinedAt: !1594)
!1599 = !DILocation(line: 146, column: 60, scope: !1580, inlinedAt: !1594)
!1600 = !DILocation(line: 146, column: 70, scope: !1580, inlinedAt: !1594)
!1601 = !DILocation(line: 146, column: 80, scope: !1580, inlinedAt: !1594)
!1602 = !DILocation(line: 146, column: 90, scope: !1580, inlinedAt: !1594)
!1603 = !DILocation(line: 146, column: 100, scope: !1580, inlinedAt: !1594)
!1604 = !DILocation(line: 146, column: 110, scope: !1580, inlinedAt: !1594)
!1605 = !DILocation(line: 146, column: 120, scope: !1580, inlinedAt: !1594)
!1606 = !DILocation(line: 148, column: 7, scope: !1607, inlinedAt: !1594)
!1607 = distinct !DILexicalBlock(scope: !1580, file: !1550, line: 148, column: 7)
!1608 = !DILocalVariable(name: "s1", arg: 1, scope: !1609, file: !1550, line: 132, type: !25)
!1609 = distinct !DISubprogram(name: "strcaseeq2", scope: !1550, file: !1550, line: 132, type: !1610, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13, !13}
!1612 = !{!1608, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1613 = !DILocalVariable(name: "s2", arg: 2, scope: !1609, file: !1550, line: 132, type: !25)
!1614 = !DILocalVariable(name: "s22", arg: 3, scope: !1609, file: !1550, line: 132, type: !13)
!1615 = !DILocalVariable(name: "s23", arg: 4, scope: !1609, file: !1550, line: 132, type: !13)
!1616 = !DILocalVariable(name: "s24", arg: 5, scope: !1609, file: !1550, line: 132, type: !13)
!1617 = !DILocalVariable(name: "s25", arg: 6, scope: !1609, file: !1550, line: 132, type: !13)
!1618 = !DILocalVariable(name: "s26", arg: 7, scope: !1609, file: !1550, line: 132, type: !13)
!1619 = !DILocalVariable(name: "s27", arg: 8, scope: !1609, file: !1550, line: 132, type: !13)
!1620 = !DILocalVariable(name: "s28", arg: 9, scope: !1609, file: !1550, line: 132, type: !13)
!1621 = !DILocation(line: 132, column: 25, scope: !1609, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 153, column: 16, scope: !1623, inlinedAt: !1594)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !1550, line: 150, column: 11)
!1624 = distinct !DILexicalBlock(scope: !1607, file: !1550, line: 149, column: 5)
!1625 = !DILocation(line: 132, column: 41, scope: !1609, inlinedAt: !1622)
!1626 = !DILocation(line: 132, column: 50, scope: !1609, inlinedAt: !1622)
!1627 = !DILocation(line: 132, column: 60, scope: !1609, inlinedAt: !1622)
!1628 = !DILocation(line: 132, column: 70, scope: !1609, inlinedAt: !1622)
!1629 = !DILocation(line: 132, column: 80, scope: !1609, inlinedAt: !1622)
!1630 = !DILocation(line: 132, column: 90, scope: !1609, inlinedAt: !1622)
!1631 = !DILocation(line: 132, column: 100, scope: !1609, inlinedAt: !1622)
!1632 = !DILocation(line: 132, column: 110, scope: !1609, inlinedAt: !1622)
!1633 = !DILocation(line: 134, column: 7, scope: !1634, inlinedAt: !1622)
!1634 = distinct !DILexicalBlock(scope: !1609, file: !1550, line: 134, column: 7)
!1635 = !DILocalVariable(name: "s1", arg: 1, scope: !1636, file: !1550, line: 118, type: !25)
!1636 = distinct !DISubprogram(name: "strcaseeq3", scope: !1550, file: !1550, line: 118, type: !1637, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!28, !25, !25, !13, !13, !13, !13, !13, !13}
!1639 = !{!1635, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1640 = !DILocalVariable(name: "s2", arg: 2, scope: !1636, file: !1550, line: 118, type: !25)
!1641 = !DILocalVariable(name: "s23", arg: 3, scope: !1636, file: !1550, line: 118, type: !13)
!1642 = !DILocalVariable(name: "s24", arg: 4, scope: !1636, file: !1550, line: 118, type: !13)
!1643 = !DILocalVariable(name: "s25", arg: 5, scope: !1636, file: !1550, line: 118, type: !13)
!1644 = !DILocalVariable(name: "s26", arg: 6, scope: !1636, file: !1550, line: 118, type: !13)
!1645 = !DILocalVariable(name: "s27", arg: 7, scope: !1636, file: !1550, line: 118, type: !13)
!1646 = !DILocalVariable(name: "s28", arg: 8, scope: !1636, file: !1550, line: 118, type: !13)
!1647 = !DILocation(line: 118, column: 25, scope: !1636, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 139, column: 16, scope: !1649, inlinedAt: !1622)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !1550, line: 136, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1634, file: !1550, line: 135, column: 5)
!1651 = !DILocation(line: 118, column: 41, scope: !1636, inlinedAt: !1648)
!1652 = !DILocation(line: 118, column: 50, scope: !1636, inlinedAt: !1648)
!1653 = !DILocation(line: 118, column: 60, scope: !1636, inlinedAt: !1648)
!1654 = !DILocation(line: 118, column: 70, scope: !1636, inlinedAt: !1648)
!1655 = !DILocation(line: 118, column: 80, scope: !1636, inlinedAt: !1648)
!1656 = !DILocation(line: 118, column: 90, scope: !1636, inlinedAt: !1648)
!1657 = !DILocation(line: 118, column: 100, scope: !1636, inlinedAt: !1648)
!1658 = !DILocation(line: 120, column: 7, scope: !1659, inlinedAt: !1648)
!1659 = distinct !DILexicalBlock(scope: !1636, file: !1550, line: 120, column: 7)
!1660 = !DILocation(line: 120, column: 7, scope: !1636, inlinedAt: !1648)
!1661 = !DILocalVariable(name: "s1", arg: 1, scope: !1662, file: !1550, line: 104, type: !25)
!1662 = distinct !DISubprogram(name: "strcaseeq4", scope: !1550, file: !1550, line: 104, type: !1663, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!28, !25, !25, !13, !13, !13, !13, !13}
!1665 = !{!1661, !1666, !1667, !1668, !1669, !1670, !1671}
!1666 = !DILocalVariable(name: "s2", arg: 2, scope: !1662, file: !1550, line: 104, type: !25)
!1667 = !DILocalVariable(name: "s24", arg: 3, scope: !1662, file: !1550, line: 104, type: !13)
!1668 = !DILocalVariable(name: "s25", arg: 4, scope: !1662, file: !1550, line: 104, type: !13)
!1669 = !DILocalVariable(name: "s26", arg: 5, scope: !1662, file: !1550, line: 104, type: !13)
!1670 = !DILocalVariable(name: "s27", arg: 6, scope: !1662, file: !1550, line: 104, type: !13)
!1671 = !DILocalVariable(name: "s28", arg: 7, scope: !1662, file: !1550, line: 104, type: !13)
!1672 = !DILocation(line: 104, column: 25, scope: !1662, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 125, column: 16, scope: !1674, inlinedAt: !1648)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !1550, line: 122, column: 11)
!1675 = distinct !DILexicalBlock(scope: !1659, file: !1550, line: 121, column: 5)
!1676 = !DILocation(line: 104, column: 41, scope: !1662, inlinedAt: !1673)
!1677 = !DILocation(line: 104, column: 50, scope: !1662, inlinedAt: !1673)
!1678 = !DILocation(line: 104, column: 60, scope: !1662, inlinedAt: !1673)
!1679 = !DILocation(line: 104, column: 70, scope: !1662, inlinedAt: !1673)
!1680 = !DILocation(line: 104, column: 80, scope: !1662, inlinedAt: !1673)
!1681 = !DILocation(line: 104, column: 90, scope: !1662, inlinedAt: !1673)
!1682 = !DILocation(line: 106, column: 7, scope: !1683, inlinedAt: !1673)
!1683 = distinct !DILexicalBlock(scope: !1662, file: !1550, line: 106, column: 7)
!1684 = !DILocation(line: 106, column: 7, scope: !1662, inlinedAt: !1673)
!1685 = !DILocalVariable(name: "s1", arg: 1, scope: !1686, file: !1550, line: 90, type: !25)
!1686 = distinct !DISubprogram(name: "strcaseeq5", scope: !1550, file: !1550, line: 90, type: !1687, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!28, !25, !25, !13, !13, !13, !13}
!1689 = !{!1685, !1690, !1691, !1692, !1693, !1694}
!1690 = !DILocalVariable(name: "s2", arg: 2, scope: !1686, file: !1550, line: 90, type: !25)
!1691 = !DILocalVariable(name: "s25", arg: 3, scope: !1686, file: !1550, line: 90, type: !13)
!1692 = !DILocalVariable(name: "s26", arg: 4, scope: !1686, file: !1550, line: 90, type: !13)
!1693 = !DILocalVariable(name: "s27", arg: 5, scope: !1686, file: !1550, line: 90, type: !13)
!1694 = !DILocalVariable(name: "s28", arg: 6, scope: !1686, file: !1550, line: 90, type: !13)
!1695 = !DILocation(line: 90, column: 25, scope: !1686, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 111, column: 16, scope: !1697, inlinedAt: !1673)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1550, line: 108, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !1550, line: 107, column: 5)
!1699 = !DILocation(line: 90, column: 41, scope: !1686, inlinedAt: !1696)
!1700 = !DILocation(line: 90, column: 50, scope: !1686, inlinedAt: !1696)
!1701 = !DILocation(line: 90, column: 60, scope: !1686, inlinedAt: !1696)
!1702 = !DILocation(line: 90, column: 70, scope: !1686, inlinedAt: !1696)
!1703 = !DILocation(line: 90, column: 80, scope: !1686, inlinedAt: !1696)
!1704 = !DILocation(line: 92, column: 7, scope: !1705, inlinedAt: !1696)
!1705 = distinct !DILexicalBlock(scope: !1686, file: !1550, line: 92, column: 7)
!1706 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !1696)
!1707 = !DILocation(line: 235, column: 12, scope: !1566)
!1708 = !DILocation(line: 235, column: 21, scope: !1566)
!1709 = !DILocation(line: 235, column: 5, scope: !1566)
!1710 = !DILocation(line: 146, column: 25, scope: !1580, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 167, column: 16, scope: !1595, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 236, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1531, file: !110, line: 236, column: 7)
!1714 = !DILocation(line: 146, column: 41, scope: !1580, inlinedAt: !1711)
!1715 = !DILocation(line: 146, column: 50, scope: !1580, inlinedAt: !1711)
!1716 = !DILocation(line: 146, column: 60, scope: !1580, inlinedAt: !1711)
!1717 = !DILocation(line: 146, column: 70, scope: !1580, inlinedAt: !1711)
!1718 = !DILocation(line: 146, column: 80, scope: !1580, inlinedAt: !1711)
!1719 = !DILocation(line: 146, column: 90, scope: !1580, inlinedAt: !1711)
!1720 = !DILocation(line: 146, column: 100, scope: !1580, inlinedAt: !1711)
!1721 = !DILocation(line: 146, column: 110, scope: !1580, inlinedAt: !1711)
!1722 = !DILocation(line: 146, column: 120, scope: !1580, inlinedAt: !1711)
!1723 = !DILocation(line: 148, column: 7, scope: !1607, inlinedAt: !1711)
!1724 = !DILocation(line: 132, column: 25, scope: !1609, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 153, column: 16, scope: !1623, inlinedAt: !1711)
!1726 = !DILocation(line: 132, column: 41, scope: !1609, inlinedAt: !1725)
!1727 = !DILocation(line: 132, column: 50, scope: !1609, inlinedAt: !1725)
!1728 = !DILocation(line: 132, column: 60, scope: !1609, inlinedAt: !1725)
!1729 = !DILocation(line: 132, column: 70, scope: !1609, inlinedAt: !1725)
!1730 = !DILocation(line: 132, column: 80, scope: !1609, inlinedAt: !1725)
!1731 = !DILocation(line: 132, column: 90, scope: !1609, inlinedAt: !1725)
!1732 = !DILocation(line: 132, column: 100, scope: !1609, inlinedAt: !1725)
!1733 = !DILocation(line: 132, column: 110, scope: !1609, inlinedAt: !1725)
!1734 = !DILocation(line: 134, column: 7, scope: !1634, inlinedAt: !1725)
!1735 = !DILocation(line: 134, column: 7, scope: !1609, inlinedAt: !1725)
!1736 = !DILocation(line: 118, column: 25, scope: !1636, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 139, column: 16, scope: !1649, inlinedAt: !1725)
!1738 = !DILocation(line: 118, column: 41, scope: !1636, inlinedAt: !1737)
!1739 = !DILocation(line: 118, column: 50, scope: !1636, inlinedAt: !1737)
!1740 = !DILocation(line: 118, column: 60, scope: !1636, inlinedAt: !1737)
!1741 = !DILocation(line: 118, column: 70, scope: !1636, inlinedAt: !1737)
!1742 = !DILocation(line: 118, column: 80, scope: !1636, inlinedAt: !1737)
!1743 = !DILocation(line: 118, column: 90, scope: !1636, inlinedAt: !1737)
!1744 = !DILocation(line: 118, column: 100, scope: !1636, inlinedAt: !1737)
!1745 = !DILocation(line: 120, column: 7, scope: !1659, inlinedAt: !1737)
!1746 = !DILocation(line: 120, column: 7, scope: !1636, inlinedAt: !1737)
!1747 = !DILocation(line: 104, column: 25, scope: !1662, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 125, column: 16, scope: !1674, inlinedAt: !1737)
!1749 = !DILocation(line: 104, column: 41, scope: !1662, inlinedAt: !1748)
!1750 = !DILocation(line: 104, column: 50, scope: !1662, inlinedAt: !1748)
!1751 = !DILocation(line: 104, column: 60, scope: !1662, inlinedAt: !1748)
!1752 = !DILocation(line: 104, column: 70, scope: !1662, inlinedAt: !1748)
!1753 = !DILocation(line: 104, column: 80, scope: !1662, inlinedAt: !1748)
!1754 = !DILocation(line: 104, column: 90, scope: !1662, inlinedAt: !1748)
!1755 = !DILocation(line: 106, column: 7, scope: !1683, inlinedAt: !1748)
!1756 = !DILocation(line: 106, column: 7, scope: !1662, inlinedAt: !1748)
!1757 = !DILocation(line: 90, column: 25, scope: !1686, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 111, column: 16, scope: !1697, inlinedAt: !1748)
!1759 = !DILocation(line: 90, column: 41, scope: !1686, inlinedAt: !1758)
!1760 = !DILocation(line: 90, column: 50, scope: !1686, inlinedAt: !1758)
!1761 = !DILocation(line: 90, column: 60, scope: !1686, inlinedAt: !1758)
!1762 = !DILocation(line: 90, column: 70, scope: !1686, inlinedAt: !1758)
!1763 = !DILocation(line: 90, column: 80, scope: !1686, inlinedAt: !1758)
!1764 = !DILocation(line: 92, column: 7, scope: !1705, inlinedAt: !1758)
!1765 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !1758)
!1766 = !DILocalVariable(name: "s1", arg: 1, scope: !1767, file: !1550, line: 76, type: !25)
!1767 = distinct !DISubprogram(name: "strcaseeq6", scope: !1550, file: !1550, line: 76, type: !1768, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!28, !25, !25, !13, !13, !13}
!1770 = !{!1766, !1771, !1772, !1773, !1774}
!1771 = !DILocalVariable(name: "s2", arg: 2, scope: !1767, file: !1550, line: 76, type: !25)
!1772 = !DILocalVariable(name: "s26", arg: 3, scope: !1767, file: !1550, line: 76, type: !13)
!1773 = !DILocalVariable(name: "s27", arg: 4, scope: !1767, file: !1550, line: 76, type: !13)
!1774 = !DILocalVariable(name: "s28", arg: 5, scope: !1767, file: !1550, line: 76, type: !13)
!1775 = !DILocation(line: 76, column: 25, scope: !1767, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 97, column: 16, scope: !1777, inlinedAt: !1758)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1550, line: 94, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1705, file: !1550, line: 93, column: 5)
!1779 = !DILocation(line: 76, column: 41, scope: !1767, inlinedAt: !1776)
!1780 = !DILocation(line: 76, column: 50, scope: !1767, inlinedAt: !1776)
!1781 = !DILocation(line: 76, column: 60, scope: !1767, inlinedAt: !1776)
!1782 = !DILocation(line: 76, column: 70, scope: !1767, inlinedAt: !1776)
!1783 = !DILocation(line: 78, column: 7, scope: !1784, inlinedAt: !1776)
!1784 = distinct !DILexicalBlock(scope: !1767, file: !1550, line: 78, column: 7)
!1785 = !DILocation(line: 78, column: 7, scope: !1767, inlinedAt: !1776)
!1786 = !DILocalVariable(name: "s1", arg: 1, scope: !1787, file: !1550, line: 62, type: !25)
!1787 = distinct !DISubprogram(name: "strcaseeq7", scope: !1550, file: !1550, line: 62, type: !1788, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!28, !25, !25, !13, !13}
!1790 = !{!1786, !1791, !1792, !1793}
!1791 = !DILocalVariable(name: "s2", arg: 2, scope: !1787, file: !1550, line: 62, type: !25)
!1792 = !DILocalVariable(name: "s27", arg: 3, scope: !1787, file: !1550, line: 62, type: !13)
!1793 = !DILocalVariable(name: "s28", arg: 4, scope: !1787, file: !1550, line: 62, type: !13)
!1794 = !DILocation(line: 62, column: 25, scope: !1787, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 83, column: 16, scope: !1796, inlinedAt: !1776)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !1550, line: 80, column: 11)
!1797 = distinct !DILexicalBlock(scope: !1784, file: !1550, line: 79, column: 5)
!1798 = !DILocation(line: 62, column: 41, scope: !1787, inlinedAt: !1795)
!1799 = !DILocation(line: 62, column: 50, scope: !1787, inlinedAt: !1795)
!1800 = !DILocation(line: 62, column: 60, scope: !1787, inlinedAt: !1795)
!1801 = !DILocation(line: 64, column: 7, scope: !1802, inlinedAt: !1795)
!1802 = distinct !DILexicalBlock(scope: !1787, file: !1550, line: 64, column: 7)
!1803 = !DILocation(line: 236, column: 7, scope: !1531)
!1804 = !DILocation(line: 237, column: 12, scope: !1713)
!1805 = !DILocation(line: 237, column: 21, scope: !1713)
!1806 = !DILocation(line: 237, column: 5, scope: !1713)
!1807 = !DILocation(line: 239, column: 13, scope: !1531)
!1808 = !DILocation(line: 239, column: 11, scope: !1531)
!1809 = !DILocation(line: 239, column: 3, scope: !1531)
!1810 = !DILocation(line: 0, scope: !1531)
!1811 = !DILocation(line: 240, column: 1, scope: !1531)
!1812 = distinct !DISubprogram(name: "quotearg_alloc", scope: !110, file: !110, line: 799, type: !1813, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!12, !25, !104, !848}
!1815 = !{!1816, !1817, !1818}
!1816 = !DILocalVariable(name: "arg", arg: 1, scope: !1812, file: !110, line: 799, type: !25)
!1817 = !DILocalVariable(name: "argsize", arg: 2, scope: !1812, file: !110, line: 799, type: !104)
!1818 = !DILocalVariable(name: "o", arg: 3, scope: !1812, file: !110, line: 800, type: !848)
!1819 = !DILocation(line: 799, column: 29, scope: !1812)
!1820 = !DILocation(line: 799, column: 41, scope: !1812)
!1821 = !DILocation(line: 800, column: 47, scope: !1812)
!1822 = !DILocalVariable(name: "arg", arg: 1, scope: !1823, file: !110, line: 812, type: !25)
!1823 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !110, file: !110, line: 812, type: !1824, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!12, !25, !104, !174, !848}
!1826 = !{!1822, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1827 = !DILocalVariable(name: "argsize", arg: 2, scope: !1823, file: !110, line: 812, type: !104)
!1828 = !DILocalVariable(name: "size", arg: 3, scope: !1823, file: !110, line: 812, type: !174)
!1829 = !DILocalVariable(name: "o", arg: 4, scope: !1823, file: !110, line: 813, type: !848)
!1830 = !DILocalVariable(name: "p", scope: !1823, file: !110, line: 815, type: !848)
!1831 = !DILocalVariable(name: "e", scope: !1823, file: !110, line: 816, type: !28)
!1832 = !DILocalVariable(name: "flags", scope: !1823, file: !110, line: 818, type: !28)
!1833 = !DILocalVariable(name: "bufsize", scope: !1823, file: !110, line: 819, type: !104)
!1834 = !DILocalVariable(name: "buf", scope: !1823, file: !110, line: 823, type: !12)
!1835 = !DILocation(line: 812, column: 33, scope: !1823, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 802, column: 10, scope: !1812)
!1837 = !DILocation(line: 812, column: 45, scope: !1823, inlinedAt: !1836)
!1838 = !DILocation(line: 812, column: 62, scope: !1823, inlinedAt: !1836)
!1839 = !DILocation(line: 813, column: 51, scope: !1823, inlinedAt: !1836)
!1840 = !DILocation(line: 815, column: 37, scope: !1823, inlinedAt: !1836)
!1841 = !DILocation(line: 815, column: 33, scope: !1823, inlinedAt: !1836)
!1842 = !DILocation(line: 816, column: 11, scope: !1823, inlinedAt: !1836)
!1843 = !DILocation(line: 816, column: 7, scope: !1823, inlinedAt: !1836)
!1844 = !DILocation(line: 818, column: 18, scope: !1823, inlinedAt: !1836)
!1845 = !DILocation(line: 818, column: 24, scope: !1823, inlinedAt: !1836)
!1846 = !DILocation(line: 818, column: 7, scope: !1823, inlinedAt: !1836)
!1847 = !DILocation(line: 819, column: 69, scope: !1823, inlinedAt: !1836)
!1848 = !DILocation(line: 820, column: 53, scope: !1823, inlinedAt: !1836)
!1849 = !DILocation(line: 821, column: 49, scope: !1823, inlinedAt: !1836)
!1850 = !DILocation(line: 822, column: 49, scope: !1823, inlinedAt: !1836)
!1851 = !DILocation(line: 819, column: 20, scope: !1823, inlinedAt: !1836)
!1852 = !DILocation(line: 822, column: 62, scope: !1823, inlinedAt: !1836)
!1853 = !DILocation(line: 819, column: 10, scope: !1823, inlinedAt: !1836)
!1854 = !DILocalVariable(name: "n", arg: 1, scope: !1855, file: !170, line: 216, type: !104)
!1855 = distinct !DISubprogram(name: "xcharalloc", scope: !170, file: !170, line: 216, type: !1856, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!12, !104}
!1858 = !{!1854}
!1859 = !DILocation(line: 216, column: 20, scope: !1855, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 823, column: 15, scope: !1823, inlinedAt: !1836)
!1861 = !DILocation(line: 218, column: 10, scope: !1855, inlinedAt: !1860)
!1862 = !DILocation(line: 823, column: 9, scope: !1823, inlinedAt: !1836)
!1863 = !DILocation(line: 824, column: 60, scope: !1823, inlinedAt: !1836)
!1864 = !DILocation(line: 826, column: 32, scope: !1823, inlinedAt: !1836)
!1865 = !DILocation(line: 826, column: 47, scope: !1823, inlinedAt: !1836)
!1866 = !DILocation(line: 824, column: 3, scope: !1823, inlinedAt: !1836)
!1867 = !DILocation(line: 827, column: 9, scope: !1823, inlinedAt: !1836)
!1868 = !DILocation(line: 802, column: 3, scope: !1812)
!1869 = !DILocation(line: 812, column: 33, scope: !1823)
!1870 = !DILocation(line: 812, column: 45, scope: !1823)
!1871 = !DILocation(line: 812, column: 62, scope: !1823)
!1872 = !DILocation(line: 813, column: 51, scope: !1823)
!1873 = !DILocation(line: 815, column: 37, scope: !1823)
!1874 = !DILocation(line: 815, column: 33, scope: !1823)
!1875 = !DILocation(line: 816, column: 11, scope: !1823)
!1876 = !DILocation(line: 816, column: 7, scope: !1823)
!1877 = !DILocation(line: 818, column: 18, scope: !1823)
!1878 = !DILocation(line: 818, column: 27, scope: !1823)
!1879 = !DILocation(line: 818, column: 24, scope: !1823)
!1880 = !DILocation(line: 818, column: 7, scope: !1823)
!1881 = !DILocation(line: 819, column: 69, scope: !1823)
!1882 = !DILocation(line: 820, column: 53, scope: !1823)
!1883 = !DILocation(line: 821, column: 49, scope: !1823)
!1884 = !DILocation(line: 822, column: 49, scope: !1823)
!1885 = !DILocation(line: 819, column: 20, scope: !1823)
!1886 = !DILocation(line: 822, column: 62, scope: !1823)
!1887 = !DILocation(line: 819, column: 10, scope: !1823)
!1888 = !DILocation(line: 216, column: 20, scope: !1855, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 823, column: 15, scope: !1823)
!1890 = !DILocation(line: 218, column: 10, scope: !1855, inlinedAt: !1889)
!1891 = !DILocation(line: 823, column: 9, scope: !1823)
!1892 = !DILocation(line: 824, column: 60, scope: !1823)
!1893 = !DILocation(line: 826, column: 32, scope: !1823)
!1894 = !DILocation(line: 826, column: 47, scope: !1823)
!1895 = !DILocation(line: 824, column: 3, scope: !1823)
!1896 = !DILocation(line: 827, column: 9, scope: !1823)
!1897 = !DILocation(line: 828, column: 7, scope: !1823)
!1898 = !DILocation(line: 829, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1823, file: !110, line: 828, column: 7)
!1900 = !{!1901, !1901, i64 0}
!1901 = !{!"long", !630, i64 0}
!1902 = !DILocation(line: 829, column: 5, scope: !1899)
!1903 = !DILocation(line: 830, column: 3, scope: !1823)
!1904 = distinct !DISubprogram(name: "quotearg_free", scope: !110, file: !110, line: 848, type: !755, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1905)
!1905 = !{!1906, !1907}
!1906 = !DILocalVariable(name: "sv", scope: !1904, file: !110, line: 850, type: !136)
!1907 = !DILocalVariable(name: "i", scope: !1904, file: !110, line: 851, type: !28)
!1908 = !DILocation(line: 850, column: 24, scope: !1904)
!1909 = !DILocation(line: 850, column: 19, scope: !1904)
!1910 = !DILocation(line: 851, column: 7, scope: !1904)
!1911 = !DILocation(line: 852, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !110, line: 852, column: 3)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !110, line: 852, column: 3)
!1914 = !DILocation(line: 852, column: 17, scope: !1912)
!1915 = !DILocation(line: 852, column: 3, scope: !1913)
!1916 = !DILocation(line: 853, column: 17, scope: !1912)
!1917 = !{!1918, !629, i64 8}
!1918 = !{!"slotvec", !1901, i64 0, !629, i64 8}
!1919 = !DILocation(line: 853, column: 5, scope: !1912)
!1920 = !DILocation(line: 852, column: 28, scope: !1912)
!1921 = distinct !{!1921, !1915, !1922}
!1922 = !DILocation(line: 853, column: 20, scope: !1913)
!1923 = !DILocation(line: 854, column: 13, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1904, file: !110, line: 854, column: 7)
!1925 = !DILocation(line: 854, column: 17, scope: !1924)
!1926 = !DILocation(line: 854, column: 7, scope: !1904)
!1927 = !DILocation(line: 856, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !110, line: 855, column: 5)
!1929 = !DILocation(line: 857, column: 21, scope: !1928)
!1930 = !{!1918, !1901, i64 0}
!1931 = !DILocation(line: 858, column: 20, scope: !1928)
!1932 = !DILocation(line: 859, column: 5, scope: !1928)
!1933 = !DILocation(line: 860, column: 10, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1904, file: !110, line: 860, column: 7)
!1935 = !DILocation(line: 860, column: 7, scope: !1904)
!1936 = !DILocation(line: 862, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !110, line: 861, column: 5)
!1938 = !DILocation(line: 862, column: 7, scope: !1937)
!1939 = !DILocation(line: 863, column: 15, scope: !1937)
!1940 = !DILocation(line: 864, column: 5, scope: !1937)
!1941 = !DILocation(line: 865, column: 10, scope: !1904)
!1942 = !DILocation(line: 866, column: 1, scope: !1904)
!1943 = distinct !DISubprogram(name: "quotearg_n", scope: !110, file: !110, line: 931, type: !1944, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!12, !28, !25}
!1946 = !{!1947, !1948}
!1947 = !DILocalVariable(name: "n", arg: 1, scope: !1943, file: !110, line: 931, type: !28)
!1948 = !DILocalVariable(name: "arg", arg: 2, scope: !1943, file: !110, line: 931, type: !25)
!1949 = !DILocation(line: 931, column: 17, scope: !1943)
!1950 = !DILocation(line: 931, column: 32, scope: !1943)
!1951 = !DILocation(line: 933, column: 10, scope: !1943)
!1952 = !DILocation(line: 933, column: 3, scope: !1943)
!1953 = distinct !DISubprogram(name: "quotearg_n_options", scope: !110, file: !110, line: 877, type: !1954, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!12, !28, !25, !104, !848}
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1966, !1967, !1969, !1970, !1971}
!1957 = !DILocalVariable(name: "n", arg: 1, scope: !1953, file: !110, line: 877, type: !28)
!1958 = !DILocalVariable(name: "arg", arg: 2, scope: !1953, file: !110, line: 877, type: !25)
!1959 = !DILocalVariable(name: "argsize", arg: 3, scope: !1953, file: !110, line: 877, type: !104)
!1960 = !DILocalVariable(name: "options", arg: 4, scope: !1953, file: !110, line: 878, type: !848)
!1961 = !DILocalVariable(name: "e", scope: !1953, file: !110, line: 880, type: !28)
!1962 = !DILocalVariable(name: "sv", scope: !1953, file: !110, line: 882, type: !136)
!1963 = !DILocalVariable(name: "preallocated", scope: !1964, file: !110, line: 889, type: !34)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !110, line: 888, column: 5)
!1965 = distinct !DILexicalBlock(scope: !1953, file: !110, line: 887, column: 7)
!1966 = !DILocalVariable(name: "nmax", scope: !1964, file: !110, line: 890, type: !28)
!1967 = !DILocalVariable(name: "size", scope: !1968, file: !110, line: 903, type: !104)
!1968 = distinct !DILexicalBlock(scope: !1953, file: !110, line: 902, column: 3)
!1969 = !DILocalVariable(name: "val", scope: !1968, file: !110, line: 904, type: !12)
!1970 = !DILocalVariable(name: "flags", scope: !1968, file: !110, line: 906, type: !28)
!1971 = !DILocalVariable(name: "qsize", scope: !1968, file: !110, line: 907, type: !104)
!1972 = !DILocation(line: 877, column: 25, scope: !1953)
!1973 = !DILocation(line: 877, column: 40, scope: !1953)
!1974 = !DILocation(line: 877, column: 52, scope: !1953)
!1975 = !DILocation(line: 878, column: 51, scope: !1953)
!1976 = !DILocation(line: 880, column: 11, scope: !1953)
!1977 = !DILocation(line: 880, column: 7, scope: !1953)
!1978 = !DILocation(line: 882, column: 24, scope: !1953)
!1979 = !DILocation(line: 882, column: 19, scope: !1953)
!1980 = !DILocation(line: 884, column: 9, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1953, file: !110, line: 884, column: 7)
!1982 = !DILocation(line: 884, column: 7, scope: !1953)
!1983 = !DILocation(line: 885, column: 5, scope: !1981)
!1984 = !DILocation(line: 887, column: 7, scope: !1965)
!1985 = !DILocation(line: 887, column: 14, scope: !1965)
!1986 = !DILocation(line: 887, column: 7, scope: !1953)
!1987 = !DILocation(line: 889, column: 31, scope: !1964)
!1988 = !DILocation(line: 890, column: 11, scope: !1964)
!1989 = !DILocation(line: 892, column: 16, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1964, file: !110, line: 892, column: 11)
!1991 = !DILocation(line: 892, column: 11, scope: !1964)
!1992 = !DILocation(line: 893, column: 9, scope: !1990)
!1993 = !DILocation(line: 895, column: 32, scope: !1964)
!1994 = !DILocation(line: 895, column: 61, scope: !1964)
!1995 = !DILocation(line: 895, column: 58, scope: !1964)
!1996 = !DILocation(line: 895, column: 66, scope: !1964)
!1997 = !DILocation(line: 895, column: 22, scope: !1964)
!1998 = !DILocation(line: 895, column: 15, scope: !1964)
!1999 = !DILocation(line: 896, column: 11, scope: !1964)
!2000 = !DILocation(line: 897, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1964, file: !110, line: 896, column: 11)
!2002 = !{i64 0, i64 8, !1900, i64 8, i64 8, !628}
!2003 = !DILocation(line: 897, column: 9, scope: !2001)
!2004 = !DILocation(line: 898, column: 20, scope: !1964)
!2005 = !DILocation(line: 898, column: 18, scope: !1964)
!2006 = !DILocation(line: 898, column: 7, scope: !1964)
!2007 = !DILocation(line: 898, column: 38, scope: !1964)
!2008 = !DILocation(line: 898, column: 31, scope: !1964)
!2009 = !DILocation(line: 898, column: 48, scope: !1964)
!2010 = !DILocation(line: 899, column: 14, scope: !1964)
!2011 = !DILocation(line: 900, column: 5, scope: !1964)
!2012 = !DILocation(line: 0, scope: !1953)
!2013 = !DILocation(line: 903, column: 19, scope: !1968)
!2014 = !DILocation(line: 903, column: 25, scope: !1968)
!2015 = !DILocation(line: 903, column: 12, scope: !1968)
!2016 = !DILocation(line: 904, column: 23, scope: !1968)
!2017 = !DILocation(line: 904, column: 11, scope: !1968)
!2018 = !DILocation(line: 906, column: 26, scope: !1968)
!2019 = !DILocation(line: 906, column: 32, scope: !1968)
!2020 = !DILocation(line: 906, column: 9, scope: !1968)
!2021 = !DILocation(line: 908, column: 55, scope: !1968)
!2022 = !DILocation(line: 909, column: 46, scope: !1968)
!2023 = !DILocation(line: 910, column: 55, scope: !1968)
!2024 = !DILocation(line: 911, column: 55, scope: !1968)
!2025 = !DILocation(line: 907, column: 20, scope: !1968)
!2026 = !DILocation(line: 907, column: 12, scope: !1968)
!2027 = !DILocation(line: 913, column: 14, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1968, file: !110, line: 913, column: 9)
!2029 = !DILocation(line: 913, column: 9, scope: !1968)
!2030 = !DILocation(line: 915, column: 35, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !110, line: 914, column: 7)
!2032 = !DILocation(line: 915, column: 20, scope: !2031)
!2033 = !DILocation(line: 916, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !110, line: 916, column: 13)
!2035 = !DILocation(line: 916, column: 13, scope: !2031)
!2036 = !DILocation(line: 917, column: 11, scope: !2034)
!2037 = !DILocation(line: 216, column: 20, scope: !1855, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 918, column: 27, scope: !2031)
!2039 = !DILocation(line: 218, column: 10, scope: !1855, inlinedAt: !2038)
!2040 = !DILocation(line: 918, column: 19, scope: !2031)
!2041 = !DILocation(line: 919, column: 69, scope: !2031)
!2042 = !DILocation(line: 921, column: 44, scope: !2031)
!2043 = !DILocation(line: 922, column: 44, scope: !2031)
!2044 = !DILocation(line: 919, column: 9, scope: !2031)
!2045 = !DILocation(line: 923, column: 7, scope: !2031)
!2046 = !DILocation(line: 0, scope: !1968)
!2047 = !DILocation(line: 925, column: 11, scope: !1968)
!2048 = !DILocation(line: 926, column: 5, scope: !1968)
!2049 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !110, file: !110, line: 937, type: !2050, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!12, !28, !25, !104}
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "n", arg: 1, scope: !2049, file: !110, line: 937, type: !28)
!2054 = !DILocalVariable(name: "arg", arg: 2, scope: !2049, file: !110, line: 937, type: !25)
!2055 = !DILocalVariable(name: "argsize", arg: 3, scope: !2049, file: !110, line: 937, type: !104)
!2056 = !DILocation(line: 937, column: 21, scope: !2049)
!2057 = !DILocation(line: 937, column: 36, scope: !2049)
!2058 = !DILocation(line: 937, column: 48, scope: !2049)
!2059 = !DILocation(line: 939, column: 10, scope: !2049)
!2060 = !DILocation(line: 939, column: 3, scope: !2049)
!2061 = distinct !DISubprogram(name: "quotearg", scope: !110, file: !110, line: 943, type: !2062, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!12, !25}
!2064 = !{!2065}
!2065 = !DILocalVariable(name: "arg", arg: 1, scope: !2061, file: !110, line: 943, type: !25)
!2066 = !DILocation(line: 943, column: 23, scope: !2061)
!2067 = !DILocation(line: 931, column: 17, scope: !1943, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 945, column: 10, scope: !2061)
!2069 = !DILocation(line: 931, column: 32, scope: !1943, inlinedAt: !2068)
!2070 = !DILocation(line: 933, column: 10, scope: !1943, inlinedAt: !2068)
!2071 = !DILocation(line: 945, column: 3, scope: !2061)
!2072 = distinct !DISubprogram(name: "quotearg_mem", scope: !110, file: !110, line: 949, type: !2073, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!12, !25, !104}
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "arg", arg: 1, scope: !2072, file: !110, line: 949, type: !25)
!2077 = !DILocalVariable(name: "argsize", arg: 2, scope: !2072, file: !110, line: 949, type: !104)
!2078 = !DILocation(line: 949, column: 27, scope: !2072)
!2079 = !DILocation(line: 949, column: 39, scope: !2072)
!2080 = !DILocation(line: 937, column: 21, scope: !2049, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 951, column: 10, scope: !2072)
!2082 = !DILocation(line: 937, column: 36, scope: !2049, inlinedAt: !2081)
!2083 = !DILocation(line: 937, column: 48, scope: !2049, inlinedAt: !2081)
!2084 = !DILocation(line: 939, column: 10, scope: !2049, inlinedAt: !2081)
!2085 = !DILocation(line: 951, column: 3, scope: !2072)
!2086 = distinct !DISubprogram(name: "quotearg_n_style", scope: !110, file: !110, line: 955, type: !2087, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!12, !28, !68, !25}
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "n", arg: 1, scope: !2086, file: !110, line: 955, type: !28)
!2091 = !DILocalVariable(name: "s", arg: 2, scope: !2086, file: !110, line: 955, type: !68)
!2092 = !DILocalVariable(name: "arg", arg: 3, scope: !2086, file: !110, line: 955, type: !25)
!2093 = !DILocalVariable(name: "o", scope: !2086, file: !110, line: 957, type: !849)
!2094 = !DILocation(line: 955, column: 23, scope: !2086)
!2095 = !DILocation(line: 955, column: 45, scope: !2086)
!2096 = !DILocation(line: 955, column: 60, scope: !2086)
!2097 = !DILocation(line: 957, column: 3, scope: !2086)
!2098 = !DILocation(line: 957, column: 32, scope: !2086)
!2099 = !DILocalVariable(name: "style", arg: 1, scope: !2100, file: !110, line: 193, type: !68)
!2100 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !110, file: !110, line: 193, type: !2101, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!117, !68}
!2103 = !{!2099, !2104}
!2104 = !DILocalVariable(name: "o", scope: !2100, file: !110, line: 195, type: !117)
!2105 = !DILocation(line: 193, column: 48, scope: !2100, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 957, column: 36, scope: !2086)
!2107 = !DILocation(line: 195, column: 26, scope: !2100, inlinedAt: !2106)
!2108 = !{!2109}
!2109 = distinct !{!2109, !2110, !"quoting_options_from_style: argument 0"}
!2110 = distinct !{!2110, !"quoting_options_from_style"}
!2111 = !DILocation(line: 196, column: 13, scope: !2112, inlinedAt: !2106)
!2112 = distinct !DILexicalBlock(scope: !2100, file: !110, line: 196, column: 7)
!2113 = !DILocation(line: 196, column: 7, scope: !2100, inlinedAt: !2106)
!2114 = !DILocation(line: 197, column: 5, scope: !2112, inlinedAt: !2106)
!2115 = !DILocation(line: 198, column: 5, scope: !2100, inlinedAt: !2106)
!2116 = !DILocation(line: 198, column: 11, scope: !2100, inlinedAt: !2106)
!2117 = !DILocation(line: 958, column: 10, scope: !2086)
!2118 = !DILocation(line: 959, column: 1, scope: !2086)
!2119 = !DILocation(line: 958, column: 3, scope: !2086)
!2120 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !110, file: !110, line: 962, type: !2121, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!12, !28, !68, !25, !104}
!2123 = !{!2124, !2125, !2126, !2127, !2128}
!2124 = !DILocalVariable(name: "n", arg: 1, scope: !2120, file: !110, line: 962, type: !28)
!2125 = !DILocalVariable(name: "s", arg: 2, scope: !2120, file: !110, line: 962, type: !68)
!2126 = !DILocalVariable(name: "arg", arg: 3, scope: !2120, file: !110, line: 963, type: !25)
!2127 = !DILocalVariable(name: "argsize", arg: 4, scope: !2120, file: !110, line: 963, type: !104)
!2128 = !DILocalVariable(name: "o", scope: !2120, file: !110, line: 965, type: !849)
!2129 = !DILocation(line: 962, column: 27, scope: !2120)
!2130 = !DILocation(line: 962, column: 49, scope: !2120)
!2131 = !DILocation(line: 963, column: 35, scope: !2120)
!2132 = !DILocation(line: 963, column: 47, scope: !2120)
!2133 = !DILocation(line: 965, column: 3, scope: !2120)
!2134 = !DILocation(line: 965, column: 32, scope: !2120)
!2135 = !DILocation(line: 193, column: 48, scope: !2100, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 965, column: 36, scope: !2120)
!2137 = !DILocation(line: 195, column: 26, scope: !2100, inlinedAt: !2136)
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"quoting_options_from_style: argument 0"}
!2140 = distinct !{!2140, !"quoting_options_from_style"}
!2141 = !DILocation(line: 196, column: 13, scope: !2112, inlinedAt: !2136)
!2142 = !DILocation(line: 196, column: 7, scope: !2100, inlinedAt: !2136)
!2143 = !DILocation(line: 197, column: 5, scope: !2112, inlinedAt: !2136)
!2144 = !DILocation(line: 198, column: 5, scope: !2100, inlinedAt: !2136)
!2145 = !DILocation(line: 198, column: 11, scope: !2100, inlinedAt: !2136)
!2146 = !DILocation(line: 966, column: 10, scope: !2120)
!2147 = !DILocation(line: 967, column: 1, scope: !2120)
!2148 = !DILocation(line: 966, column: 3, scope: !2120)
!2149 = distinct !DISubprogram(name: "quotearg_style", scope: !110, file: !110, line: 970, type: !2150, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!12, !68, !25}
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "s", arg: 1, scope: !2149, file: !110, line: 970, type: !68)
!2154 = !DILocalVariable(name: "arg", arg: 2, scope: !2149, file: !110, line: 970, type: !25)
!2155 = !DILocation(line: 970, column: 36, scope: !2149)
!2156 = !DILocation(line: 970, column: 51, scope: !2149)
!2157 = !DILocation(line: 955, column: 23, scope: !2086, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 972, column: 10, scope: !2149)
!2159 = !DILocation(line: 955, column: 45, scope: !2086, inlinedAt: !2158)
!2160 = !DILocation(line: 955, column: 60, scope: !2086, inlinedAt: !2158)
!2161 = !DILocation(line: 957, column: 3, scope: !2086, inlinedAt: !2158)
!2162 = !DILocation(line: 957, column: 32, scope: !2086, inlinedAt: !2158)
!2163 = !DILocation(line: 193, column: 48, scope: !2100, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 957, column: 36, scope: !2086, inlinedAt: !2158)
!2165 = !DILocation(line: 195, column: 26, scope: !2100, inlinedAt: !2164)
!2166 = !{!2167}
!2167 = distinct !{!2167, !2168, !"quoting_options_from_style: argument 0"}
!2168 = distinct !{!2168, !"quoting_options_from_style"}
!2169 = !DILocation(line: 196, column: 13, scope: !2112, inlinedAt: !2164)
!2170 = !DILocation(line: 196, column: 7, scope: !2100, inlinedAt: !2164)
!2171 = !DILocation(line: 197, column: 5, scope: !2112, inlinedAt: !2164)
!2172 = !DILocation(line: 198, column: 5, scope: !2100, inlinedAt: !2164)
!2173 = !DILocation(line: 198, column: 11, scope: !2100, inlinedAt: !2164)
!2174 = !DILocation(line: 958, column: 10, scope: !2086, inlinedAt: !2158)
!2175 = !DILocation(line: 959, column: 1, scope: !2086, inlinedAt: !2158)
!2176 = !DILocation(line: 972, column: 3, scope: !2149)
!2177 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !110, file: !110, line: 976, type: !2178, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!12, !68, !25, !104}
!2180 = !{!2181, !2182, !2183}
!2181 = !DILocalVariable(name: "s", arg: 1, scope: !2177, file: !110, line: 976, type: !68)
!2182 = !DILocalVariable(name: "arg", arg: 2, scope: !2177, file: !110, line: 976, type: !25)
!2183 = !DILocalVariable(name: "argsize", arg: 3, scope: !2177, file: !110, line: 976, type: !104)
!2184 = !DILocation(line: 976, column: 40, scope: !2177)
!2185 = !DILocation(line: 976, column: 55, scope: !2177)
!2186 = !DILocation(line: 976, column: 67, scope: !2177)
!2187 = !DILocation(line: 962, column: 27, scope: !2120, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 978, column: 10, scope: !2177)
!2189 = !DILocation(line: 962, column: 49, scope: !2120, inlinedAt: !2188)
!2190 = !DILocation(line: 963, column: 35, scope: !2120, inlinedAt: !2188)
!2191 = !DILocation(line: 963, column: 47, scope: !2120, inlinedAt: !2188)
!2192 = !DILocation(line: 965, column: 3, scope: !2120, inlinedAt: !2188)
!2193 = !DILocation(line: 965, column: 32, scope: !2120, inlinedAt: !2188)
!2194 = !DILocation(line: 193, column: 48, scope: !2100, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 965, column: 36, scope: !2120, inlinedAt: !2188)
!2196 = !DILocation(line: 195, column: 26, scope: !2100, inlinedAt: !2195)
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"quoting_options_from_style: argument 0"}
!2199 = distinct !{!2199, !"quoting_options_from_style"}
!2200 = !DILocation(line: 196, column: 13, scope: !2112, inlinedAt: !2195)
!2201 = !DILocation(line: 196, column: 7, scope: !2100, inlinedAt: !2195)
!2202 = !DILocation(line: 197, column: 5, scope: !2112, inlinedAt: !2195)
!2203 = !DILocation(line: 198, column: 5, scope: !2100, inlinedAt: !2195)
!2204 = !DILocation(line: 198, column: 11, scope: !2100, inlinedAt: !2195)
!2205 = !DILocation(line: 966, column: 10, scope: !2120, inlinedAt: !2188)
!2206 = !DILocation(line: 967, column: 1, scope: !2120, inlinedAt: !2188)
!2207 = !DILocation(line: 978, column: 3, scope: !2177)
!2208 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !110, file: !110, line: 982, type: !2209, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!12, !25, !104, !13}
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !110, line: 982, type: !25)
!2213 = !DILocalVariable(name: "argsize", arg: 2, scope: !2208, file: !110, line: 982, type: !104)
!2214 = !DILocalVariable(name: "ch", arg: 3, scope: !2208, file: !110, line: 982, type: !13)
!2215 = !DILocalVariable(name: "options", scope: !2208, file: !110, line: 984, type: !117)
!2216 = !DILocation(line: 982, column: 32, scope: !2208)
!2217 = !DILocation(line: 982, column: 44, scope: !2208)
!2218 = !DILocation(line: 982, column: 58, scope: !2208)
!2219 = !DILocation(line: 984, column: 3, scope: !2208)
!2220 = !DILocation(line: 985, column: 13, scope: !2208)
!2221 = !{i64 0, i64 4, !1077, i64 4, i64 4, !695, i64 8, i64 32, !1077, i64 40, i64 8, !628, i64 48, i64 8, !628}
!2222 = !DILocation(line: 984, column: 26, scope: !2208)
!2223 = !DILocation(line: 152, column: 43, scope: !870, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 986, column: 3, scope: !2208)
!2225 = !DILocation(line: 152, column: 51, scope: !870, inlinedAt: !2224)
!2226 = !DILocation(line: 152, column: 58, scope: !870, inlinedAt: !2224)
!2227 = !DILocation(line: 154, column: 17, scope: !870, inlinedAt: !2224)
!2228 = !DILocation(line: 156, column: 62, scope: !870, inlinedAt: !2224)
!2229 = !DILocation(line: 156, column: 57, scope: !870, inlinedAt: !2224)
!2230 = !DILocation(line: 155, column: 17, scope: !870, inlinedAt: !2224)
!2231 = !DILocation(line: 157, column: 15, scope: !870, inlinedAt: !2224)
!2232 = !DILocation(line: 157, column: 7, scope: !870, inlinedAt: !2224)
!2233 = !DILocation(line: 158, column: 12, scope: !870, inlinedAt: !2224)
!2234 = !DILocation(line: 158, column: 15, scope: !870, inlinedAt: !2224)
!2235 = !DILocation(line: 158, column: 25, scope: !870, inlinedAt: !2224)
!2236 = !DILocation(line: 158, column: 7, scope: !870, inlinedAt: !2224)
!2237 = !DILocation(line: 159, column: 18, scope: !870, inlinedAt: !2224)
!2238 = !DILocation(line: 159, column: 23, scope: !870, inlinedAt: !2224)
!2239 = !DILocation(line: 159, column: 6, scope: !870, inlinedAt: !2224)
!2240 = !DILocation(line: 987, column: 10, scope: !2208)
!2241 = !DILocation(line: 988, column: 1, scope: !2208)
!2242 = !DILocation(line: 987, column: 3, scope: !2208)
!2243 = distinct !DISubprogram(name: "quotearg_char", scope: !110, file: !110, line: 991, type: !2244, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!12, !25, !13}
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "arg", arg: 1, scope: !2243, file: !110, line: 991, type: !25)
!2248 = !DILocalVariable(name: "ch", arg: 2, scope: !2243, file: !110, line: 991, type: !13)
!2249 = !DILocation(line: 991, column: 28, scope: !2243)
!2250 = !DILocation(line: 991, column: 38, scope: !2243)
!2251 = !DILocation(line: 982, column: 32, scope: !2208, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 993, column: 10, scope: !2243)
!2253 = !DILocation(line: 982, column: 44, scope: !2208, inlinedAt: !2252)
!2254 = !DILocation(line: 982, column: 58, scope: !2208, inlinedAt: !2252)
!2255 = !DILocation(line: 984, column: 3, scope: !2208, inlinedAt: !2252)
!2256 = !DILocation(line: 985, column: 13, scope: !2208, inlinedAt: !2252)
!2257 = !DILocation(line: 984, column: 26, scope: !2208, inlinedAt: !2252)
!2258 = !DILocation(line: 152, column: 43, scope: !870, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 986, column: 3, scope: !2208, inlinedAt: !2252)
!2260 = !DILocation(line: 152, column: 51, scope: !870, inlinedAt: !2259)
!2261 = !DILocation(line: 152, column: 58, scope: !870, inlinedAt: !2259)
!2262 = !DILocation(line: 154, column: 17, scope: !870, inlinedAt: !2259)
!2263 = !DILocation(line: 156, column: 62, scope: !870, inlinedAt: !2259)
!2264 = !DILocation(line: 156, column: 57, scope: !870, inlinedAt: !2259)
!2265 = !DILocation(line: 155, column: 17, scope: !870, inlinedAt: !2259)
!2266 = !DILocation(line: 157, column: 15, scope: !870, inlinedAt: !2259)
!2267 = !DILocation(line: 157, column: 7, scope: !870, inlinedAt: !2259)
!2268 = !DILocation(line: 158, column: 12, scope: !870, inlinedAt: !2259)
!2269 = !DILocation(line: 158, column: 15, scope: !870, inlinedAt: !2259)
!2270 = !DILocation(line: 158, column: 25, scope: !870, inlinedAt: !2259)
!2271 = !DILocation(line: 158, column: 7, scope: !870, inlinedAt: !2259)
!2272 = !DILocation(line: 159, column: 18, scope: !870, inlinedAt: !2259)
!2273 = !DILocation(line: 159, column: 23, scope: !870, inlinedAt: !2259)
!2274 = !DILocation(line: 159, column: 6, scope: !870, inlinedAt: !2259)
!2275 = !DILocation(line: 987, column: 10, scope: !2208, inlinedAt: !2252)
!2276 = !DILocation(line: 988, column: 1, scope: !2208, inlinedAt: !2252)
!2277 = !DILocation(line: 993, column: 3, scope: !2243)
!2278 = distinct !DISubprogram(name: "quotearg_colon", scope: !110, file: !110, line: 997, type: !2062, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2279)
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "arg", arg: 1, scope: !2278, file: !110, line: 997, type: !25)
!2281 = !DILocation(line: 997, column: 29, scope: !2278)
!2282 = !DILocation(line: 991, column: 28, scope: !2243, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 999, column: 10, scope: !2278)
!2284 = !DILocation(line: 991, column: 38, scope: !2243, inlinedAt: !2283)
!2285 = !DILocation(line: 982, column: 32, scope: !2208, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 993, column: 10, scope: !2243, inlinedAt: !2283)
!2287 = !DILocation(line: 982, column: 44, scope: !2208, inlinedAt: !2286)
!2288 = !DILocation(line: 982, column: 58, scope: !2208, inlinedAt: !2286)
!2289 = !DILocation(line: 984, column: 3, scope: !2208, inlinedAt: !2286)
!2290 = !DILocation(line: 985, column: 13, scope: !2208, inlinedAt: !2286)
!2291 = !DILocation(line: 984, column: 26, scope: !2208, inlinedAt: !2286)
!2292 = !DILocation(line: 152, column: 43, scope: !870, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 986, column: 3, scope: !2208, inlinedAt: !2286)
!2294 = !DILocation(line: 152, column: 51, scope: !870, inlinedAt: !2293)
!2295 = !DILocation(line: 152, column: 58, scope: !870, inlinedAt: !2293)
!2296 = !DILocation(line: 154, column: 17, scope: !870, inlinedAt: !2293)
!2297 = !DILocation(line: 156, column: 57, scope: !870, inlinedAt: !2293)
!2298 = !DILocation(line: 155, column: 17, scope: !870, inlinedAt: !2293)
!2299 = !DILocation(line: 157, column: 7, scope: !870, inlinedAt: !2293)
!2300 = !DILocation(line: 158, column: 12, scope: !870, inlinedAt: !2293)
!2301 = !DILocation(line: 159, column: 6, scope: !870, inlinedAt: !2293)
!2302 = !DILocation(line: 987, column: 10, scope: !2208, inlinedAt: !2286)
!2303 = !DILocation(line: 988, column: 1, scope: !2208, inlinedAt: !2286)
!2304 = !DILocation(line: 999, column: 3, scope: !2278)
!2305 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !110, file: !110, line: 1003, type: !2073, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2306)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !110, line: 1003, type: !25)
!2308 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !110, line: 1003, type: !104)
!2309 = !DILocation(line: 1003, column: 33, scope: !2305)
!2310 = !DILocation(line: 1003, column: 45, scope: !2305)
!2311 = !DILocation(line: 982, column: 32, scope: !2208, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1005, column: 10, scope: !2305)
!2313 = !DILocation(line: 982, column: 44, scope: !2208, inlinedAt: !2312)
!2314 = !DILocation(line: 982, column: 58, scope: !2208, inlinedAt: !2312)
!2315 = !DILocation(line: 984, column: 3, scope: !2208, inlinedAt: !2312)
!2316 = !DILocation(line: 985, column: 13, scope: !2208, inlinedAt: !2312)
!2317 = !DILocation(line: 984, column: 26, scope: !2208, inlinedAt: !2312)
!2318 = !DILocation(line: 152, column: 43, scope: !870, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 986, column: 3, scope: !2208, inlinedAt: !2312)
!2320 = !DILocation(line: 152, column: 51, scope: !870, inlinedAt: !2319)
!2321 = !DILocation(line: 152, column: 58, scope: !870, inlinedAt: !2319)
!2322 = !DILocation(line: 154, column: 17, scope: !870, inlinedAt: !2319)
!2323 = !DILocation(line: 156, column: 57, scope: !870, inlinedAt: !2319)
!2324 = !DILocation(line: 155, column: 17, scope: !870, inlinedAt: !2319)
!2325 = !DILocation(line: 157, column: 7, scope: !870, inlinedAt: !2319)
!2326 = !DILocation(line: 158, column: 12, scope: !870, inlinedAt: !2319)
!2327 = !DILocation(line: 159, column: 6, scope: !870, inlinedAt: !2319)
!2328 = !DILocation(line: 987, column: 10, scope: !2208, inlinedAt: !2312)
!2329 = !DILocation(line: 988, column: 1, scope: !2208, inlinedAt: !2312)
!2330 = !DILocation(line: 1005, column: 3, scope: !2305)
!2331 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !110, file: !110, line: 1009, type: !2087, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2332)
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DILocalVariable(name: "n", arg: 1, scope: !2331, file: !110, line: 1009, type: !28)
!2334 = !DILocalVariable(name: "s", arg: 2, scope: !2331, file: !110, line: 1009, type: !68)
!2335 = !DILocalVariable(name: "arg", arg: 3, scope: !2331, file: !110, line: 1009, type: !25)
!2336 = !DILocalVariable(name: "options", scope: !2331, file: !110, line: 1011, type: !117)
!2337 = !DILocation(line: 195, column: 26, scope: !2100, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 1012, column: 13, scope: !2331)
!2339 = !DILocation(line: 1009, column: 29, scope: !2331)
!2340 = !DILocation(line: 1009, column: 51, scope: !2331)
!2341 = !DILocation(line: 1009, column: 66, scope: !2331)
!2342 = !DILocation(line: 1011, column: 3, scope: !2331)
!2343 = !DILocation(line: 1012, column: 13, scope: !2331)
!2344 = !DILocation(line: 193, column: 48, scope: !2100, inlinedAt: !2338)
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"quoting_options_from_style: argument 0"}
!2347 = distinct !{!2347, !"quoting_options_from_style"}
!2348 = !DILocation(line: 196, column: 13, scope: !2112, inlinedAt: !2338)
!2349 = !DILocation(line: 196, column: 7, scope: !2100, inlinedAt: !2338)
!2350 = !DILocation(line: 197, column: 5, scope: !2112, inlinedAt: !2338)
!2351 = !DILocation(line: 1011, column: 26, scope: !2331)
!2352 = !DILocation(line: 152, column: 43, scope: !870, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 1013, column: 3, scope: !2331)
!2354 = !DILocation(line: 152, column: 51, scope: !870, inlinedAt: !2353)
!2355 = !DILocation(line: 152, column: 58, scope: !870, inlinedAt: !2353)
!2356 = !DILocation(line: 154, column: 17, scope: !870, inlinedAt: !2353)
!2357 = !DILocation(line: 156, column: 57, scope: !870, inlinedAt: !2353)
!2358 = !DILocation(line: 155, column: 17, scope: !870, inlinedAt: !2353)
!2359 = !DILocation(line: 157, column: 7, scope: !870, inlinedAt: !2353)
!2360 = !DILocation(line: 158, column: 12, scope: !870, inlinedAt: !2353)
!2361 = !DILocation(line: 159, column: 6, scope: !870, inlinedAt: !2353)
!2362 = !DILocation(line: 1014, column: 10, scope: !2331)
!2363 = !DILocation(line: 1015, column: 1, scope: !2331)
!2364 = !DILocation(line: 1014, column: 3, scope: !2331)
!2365 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !110, file: !110, line: 1018, type: !2366, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!12, !28, !25, !25, !25}
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !110, line: 1018, type: !28)
!2370 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2365, file: !110, line: 1018, type: !25)
!2371 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2365, file: !110, line: 1019, type: !25)
!2372 = !DILocalVariable(name: "arg", arg: 4, scope: !2365, file: !110, line: 1019, type: !25)
!2373 = !DILocation(line: 1018, column: 24, scope: !2365)
!2374 = !DILocation(line: 1018, column: 39, scope: !2365)
!2375 = !DILocation(line: 1019, column: 32, scope: !2365)
!2376 = !DILocation(line: 1019, column: 57, scope: !2365)
!2377 = !DILocalVariable(name: "n", arg: 1, scope: !2378, file: !110, line: 1026, type: !28)
!2378 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !110, file: !110, line: 1026, type: !2379, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!12, !28, !25, !25, !25, !104}
!2381 = !{!2377, !2382, !2383, !2384, !2385, !2386}
!2382 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2378, file: !110, line: 1026, type: !25)
!2383 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2378, file: !110, line: 1027, type: !25)
!2384 = !DILocalVariable(name: "arg", arg: 4, scope: !2378, file: !110, line: 1028, type: !25)
!2385 = !DILocalVariable(name: "argsize", arg: 5, scope: !2378, file: !110, line: 1028, type: !104)
!2386 = !DILocalVariable(name: "o", scope: !2378, file: !110, line: 1030, type: !117)
!2387 = !DILocation(line: 1026, column: 28, scope: !2378, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1021, column: 10, scope: !2365)
!2389 = !DILocation(line: 1026, column: 43, scope: !2378, inlinedAt: !2388)
!2390 = !DILocation(line: 1027, column: 36, scope: !2378, inlinedAt: !2388)
!2391 = !DILocation(line: 1028, column: 36, scope: !2378, inlinedAt: !2388)
!2392 = !DILocation(line: 1028, column: 48, scope: !2378, inlinedAt: !2388)
!2393 = !DILocation(line: 1030, column: 3, scope: !2378, inlinedAt: !2388)
!2394 = !DILocation(line: 1030, column: 30, scope: !2378, inlinedAt: !2388)
!2395 = !DILocation(line: 1030, column: 26, scope: !2378, inlinedAt: !2388)
!2396 = !DILocation(line: 179, column: 45, scope: !919, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 1031, column: 3, scope: !2378, inlinedAt: !2388)
!2398 = !DILocation(line: 180, column: 33, scope: !919, inlinedAt: !2397)
!2399 = !DILocation(line: 180, column: 57, scope: !919, inlinedAt: !2397)
!2400 = !DILocation(line: 184, column: 6, scope: !919, inlinedAt: !2397)
!2401 = !DILocation(line: 184, column: 12, scope: !919, inlinedAt: !2397)
!2402 = !DILocation(line: 185, column: 8, scope: !935, inlinedAt: !2397)
!2403 = !DILocation(line: 185, column: 23, scope: !935, inlinedAt: !2397)
!2404 = !DILocation(line: 185, column: 19, scope: !935, inlinedAt: !2397)
!2405 = !DILocation(line: 186, column: 5, scope: !935, inlinedAt: !2397)
!2406 = !DILocation(line: 187, column: 6, scope: !919, inlinedAt: !2397)
!2407 = !DILocation(line: 187, column: 17, scope: !919, inlinedAt: !2397)
!2408 = !DILocation(line: 188, column: 6, scope: !919, inlinedAt: !2397)
!2409 = !DILocation(line: 188, column: 18, scope: !919, inlinedAt: !2397)
!2410 = !DILocation(line: 1032, column: 10, scope: !2378, inlinedAt: !2388)
!2411 = !DILocation(line: 1033, column: 1, scope: !2378, inlinedAt: !2388)
!2412 = !DILocation(line: 1021, column: 3, scope: !2365)
!2413 = !DILocation(line: 1026, column: 28, scope: !2378)
!2414 = !DILocation(line: 1026, column: 43, scope: !2378)
!2415 = !DILocation(line: 1027, column: 36, scope: !2378)
!2416 = !DILocation(line: 1028, column: 36, scope: !2378)
!2417 = !DILocation(line: 1028, column: 48, scope: !2378)
!2418 = !DILocation(line: 1030, column: 3, scope: !2378)
!2419 = !DILocation(line: 1030, column: 30, scope: !2378)
!2420 = !DILocation(line: 1030, column: 26, scope: !2378)
!2421 = !DILocation(line: 179, column: 45, scope: !919, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1031, column: 3, scope: !2378)
!2423 = !DILocation(line: 180, column: 33, scope: !919, inlinedAt: !2422)
!2424 = !DILocation(line: 180, column: 57, scope: !919, inlinedAt: !2422)
!2425 = !DILocation(line: 184, column: 6, scope: !919, inlinedAt: !2422)
!2426 = !DILocation(line: 184, column: 12, scope: !919, inlinedAt: !2422)
!2427 = !DILocation(line: 185, column: 8, scope: !935, inlinedAt: !2422)
!2428 = !DILocation(line: 185, column: 23, scope: !935, inlinedAt: !2422)
!2429 = !DILocation(line: 185, column: 19, scope: !935, inlinedAt: !2422)
!2430 = !DILocation(line: 186, column: 5, scope: !935, inlinedAt: !2422)
!2431 = !DILocation(line: 187, column: 6, scope: !919, inlinedAt: !2422)
!2432 = !DILocation(line: 187, column: 17, scope: !919, inlinedAt: !2422)
!2433 = !DILocation(line: 188, column: 6, scope: !919, inlinedAt: !2422)
!2434 = !DILocation(line: 188, column: 18, scope: !919, inlinedAt: !2422)
!2435 = !DILocation(line: 1032, column: 10, scope: !2378)
!2436 = !DILocation(line: 1033, column: 1, scope: !2378)
!2437 = !DILocation(line: 1032, column: 3, scope: !2378)
!2438 = distinct !DISubprogram(name: "quotearg_custom", scope: !110, file: !110, line: 1036, type: !2439, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!12, !25, !25, !25}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2438, file: !110, line: 1036, type: !25)
!2443 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2438, file: !110, line: 1036, type: !25)
!2444 = !DILocalVariable(name: "arg", arg: 3, scope: !2438, file: !110, line: 1037, type: !25)
!2445 = !DILocation(line: 1036, column: 30, scope: !2438)
!2446 = !DILocation(line: 1036, column: 54, scope: !2438)
!2447 = !DILocation(line: 1037, column: 30, scope: !2438)
!2448 = !DILocation(line: 1018, column: 24, scope: !2365, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 1039, column: 10, scope: !2438)
!2450 = !DILocation(line: 1018, column: 39, scope: !2365, inlinedAt: !2449)
!2451 = !DILocation(line: 1019, column: 32, scope: !2365, inlinedAt: !2449)
!2452 = !DILocation(line: 1019, column: 57, scope: !2365, inlinedAt: !2449)
!2453 = !DILocation(line: 1026, column: 28, scope: !2378, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1021, column: 10, scope: !2365, inlinedAt: !2449)
!2455 = !DILocation(line: 1026, column: 43, scope: !2378, inlinedAt: !2454)
!2456 = !DILocation(line: 1027, column: 36, scope: !2378, inlinedAt: !2454)
!2457 = !DILocation(line: 1028, column: 36, scope: !2378, inlinedAt: !2454)
!2458 = !DILocation(line: 1028, column: 48, scope: !2378, inlinedAt: !2454)
!2459 = !DILocation(line: 1030, column: 3, scope: !2378, inlinedAt: !2454)
!2460 = !DILocation(line: 1030, column: 30, scope: !2378, inlinedAt: !2454)
!2461 = !DILocation(line: 1030, column: 26, scope: !2378, inlinedAt: !2454)
!2462 = !DILocation(line: 179, column: 45, scope: !919, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 1031, column: 3, scope: !2378, inlinedAt: !2454)
!2464 = !DILocation(line: 180, column: 33, scope: !919, inlinedAt: !2463)
!2465 = !DILocation(line: 180, column: 57, scope: !919, inlinedAt: !2463)
!2466 = !DILocation(line: 184, column: 6, scope: !919, inlinedAt: !2463)
!2467 = !DILocation(line: 184, column: 12, scope: !919, inlinedAt: !2463)
!2468 = !DILocation(line: 185, column: 8, scope: !935, inlinedAt: !2463)
!2469 = !DILocation(line: 185, column: 23, scope: !935, inlinedAt: !2463)
!2470 = !DILocation(line: 185, column: 19, scope: !935, inlinedAt: !2463)
!2471 = !DILocation(line: 186, column: 5, scope: !935, inlinedAt: !2463)
!2472 = !DILocation(line: 187, column: 6, scope: !919, inlinedAt: !2463)
!2473 = !DILocation(line: 187, column: 17, scope: !919, inlinedAt: !2463)
!2474 = !DILocation(line: 188, column: 6, scope: !919, inlinedAt: !2463)
!2475 = !DILocation(line: 188, column: 18, scope: !919, inlinedAt: !2463)
!2476 = !DILocation(line: 1032, column: 10, scope: !2378, inlinedAt: !2454)
!2477 = !DILocation(line: 1033, column: 1, scope: !2378, inlinedAt: !2454)
!2478 = !DILocation(line: 1039, column: 3, scope: !2438)
!2479 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !110, file: !110, line: 1043, type: !2480, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!12, !25, !25, !25, !104}
!2482 = !{!2483, !2484, !2485, !2486}
!2483 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2479, file: !110, line: 1043, type: !25)
!2484 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2479, file: !110, line: 1043, type: !25)
!2485 = !DILocalVariable(name: "arg", arg: 3, scope: !2479, file: !110, line: 1044, type: !25)
!2486 = !DILocalVariable(name: "argsize", arg: 4, scope: !2479, file: !110, line: 1044, type: !104)
!2487 = !DILocation(line: 1043, column: 34, scope: !2479)
!2488 = !DILocation(line: 1043, column: 58, scope: !2479)
!2489 = !DILocation(line: 1044, column: 34, scope: !2479)
!2490 = !DILocation(line: 1044, column: 46, scope: !2479)
!2491 = !DILocation(line: 1026, column: 28, scope: !2378, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 1046, column: 10, scope: !2479)
!2493 = !DILocation(line: 1026, column: 43, scope: !2378, inlinedAt: !2492)
!2494 = !DILocation(line: 1027, column: 36, scope: !2378, inlinedAt: !2492)
!2495 = !DILocation(line: 1028, column: 36, scope: !2378, inlinedAt: !2492)
!2496 = !DILocation(line: 1028, column: 48, scope: !2378, inlinedAt: !2492)
!2497 = !DILocation(line: 1030, column: 3, scope: !2378, inlinedAt: !2492)
!2498 = !DILocation(line: 1030, column: 30, scope: !2378, inlinedAt: !2492)
!2499 = !DILocation(line: 1030, column: 26, scope: !2378, inlinedAt: !2492)
!2500 = !DILocation(line: 179, column: 45, scope: !919, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 1031, column: 3, scope: !2378, inlinedAt: !2492)
!2502 = !DILocation(line: 180, column: 33, scope: !919, inlinedAt: !2501)
!2503 = !DILocation(line: 180, column: 57, scope: !919, inlinedAt: !2501)
!2504 = !DILocation(line: 184, column: 6, scope: !919, inlinedAt: !2501)
!2505 = !DILocation(line: 184, column: 12, scope: !919, inlinedAt: !2501)
!2506 = !DILocation(line: 185, column: 8, scope: !935, inlinedAt: !2501)
!2507 = !DILocation(line: 185, column: 23, scope: !935, inlinedAt: !2501)
!2508 = !DILocation(line: 185, column: 19, scope: !935, inlinedAt: !2501)
!2509 = !DILocation(line: 186, column: 5, scope: !935, inlinedAt: !2501)
!2510 = !DILocation(line: 187, column: 6, scope: !919, inlinedAt: !2501)
!2511 = !DILocation(line: 187, column: 17, scope: !919, inlinedAt: !2501)
!2512 = !DILocation(line: 188, column: 6, scope: !919, inlinedAt: !2501)
!2513 = !DILocation(line: 188, column: 18, scope: !919, inlinedAt: !2501)
!2514 = !DILocation(line: 1032, column: 10, scope: !2378, inlinedAt: !2492)
!2515 = !DILocation(line: 1033, column: 1, scope: !2378, inlinedAt: !2492)
!2516 = !DILocation(line: 1046, column: 3, scope: !2479)
!2517 = distinct !DISubprogram(name: "quote_n_mem", scope: !110, file: !110, line: 1061, type: !2518, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!25, !28, !25, !104}
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !110, line: 1061, type: !28)
!2522 = !DILocalVariable(name: "arg", arg: 2, scope: !2517, file: !110, line: 1061, type: !25)
!2523 = !DILocalVariable(name: "argsize", arg: 3, scope: !2517, file: !110, line: 1061, type: !104)
!2524 = !DILocation(line: 1061, column: 18, scope: !2517)
!2525 = !DILocation(line: 1061, column: 33, scope: !2517)
!2526 = !DILocation(line: 1061, column: 45, scope: !2517)
!2527 = !DILocation(line: 1063, column: 10, scope: !2517)
!2528 = !DILocation(line: 1063, column: 3, scope: !2517)
!2529 = distinct !DISubprogram(name: "quote_mem", scope: !110, file: !110, line: 1067, type: !2530, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!25, !25, !104}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !110, line: 1067, type: !25)
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2529, file: !110, line: 1067, type: !104)
!2535 = !DILocation(line: 1067, column: 24, scope: !2529)
!2536 = !DILocation(line: 1067, column: 36, scope: !2529)
!2537 = !DILocation(line: 1061, column: 18, scope: !2517, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1069, column: 10, scope: !2529)
!2539 = !DILocation(line: 1061, column: 33, scope: !2517, inlinedAt: !2538)
!2540 = !DILocation(line: 1061, column: 45, scope: !2517, inlinedAt: !2538)
!2541 = !DILocation(line: 1063, column: 10, scope: !2517, inlinedAt: !2538)
!2542 = !DILocation(line: 1069, column: 3, scope: !2529)
!2543 = distinct !DISubprogram(name: "quote_n", scope: !110, file: !110, line: 1073, type: !2544, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!25, !28, !25}
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !110, line: 1073, type: !28)
!2548 = !DILocalVariable(name: "arg", arg: 2, scope: !2543, file: !110, line: 1073, type: !25)
!2549 = !DILocation(line: 1073, column: 14, scope: !2543)
!2550 = !DILocation(line: 1073, column: 29, scope: !2543)
!2551 = !DILocation(line: 1061, column: 18, scope: !2517, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1075, column: 10, scope: !2543)
!2553 = !DILocation(line: 1061, column: 33, scope: !2517, inlinedAt: !2552)
!2554 = !DILocation(line: 1061, column: 45, scope: !2517, inlinedAt: !2552)
!2555 = !DILocation(line: 1063, column: 10, scope: !2517, inlinedAt: !2552)
!2556 = !DILocation(line: 1075, column: 3, scope: !2543)
!2557 = distinct !DISubprogram(name: "quote", scope: !110, file: !110, line: 1079, type: !2558, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !65, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!25, !25}
!2560 = !{!2561}
!2561 = !DILocalVariable(name: "arg", arg: 1, scope: !2557, file: !110, line: 1079, type: !25)
!2562 = !DILocation(line: 1079, column: 20, scope: !2557)
!2563 = !DILocation(line: 1073, column: 14, scope: !2543, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1081, column: 10, scope: !2557)
!2565 = !DILocation(line: 1073, column: 29, scope: !2543, inlinedAt: !2564)
!2566 = !DILocation(line: 1061, column: 18, scope: !2517, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 1075, column: 10, scope: !2543, inlinedAt: !2564)
!2568 = !DILocation(line: 1061, column: 33, scope: !2517, inlinedAt: !2567)
!2569 = !DILocation(line: 1061, column: 45, scope: !2517, inlinedAt: !2567)
!2570 = !DILocation(line: 1063, column: 10, scope: !2517, inlinedAt: !2567)
!2571 = !DILocation(line: 1081, column: 3, scope: !2557)
!2572 = distinct !DISubprogram(name: "version_etc_arn", scope: !162, file: !162, line: 62, type: !2573, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !158, retainedNodes: !2631)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2575, !25, !25, !25, !2630, !104}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2577, line: 7, baseType: !2578)
!2577 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2579, line: 49, size: 1728, elements: !2580)
!2579 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2596, !2598, !2599, !2600, !2604, !2605, !2607, !2611, !2614, !2616, !2619, !2622, !2623, !2624, !2625, !2626}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2578, file: !2579, line: 51, baseType: !28, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2578, file: !2579, line: 54, baseType: !12, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2578, file: !2579, line: 55, baseType: !12, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2578, file: !2579, line: 56, baseType: !12, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2578, file: !2579, line: 57, baseType: !12, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2578, file: !2579, line: 58, baseType: !12, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2578, file: !2579, line: 59, baseType: !12, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2578, file: !2579, line: 60, baseType: !12, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2578, file: !2579, line: 61, baseType: !12, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2578, file: !2579, line: 64, baseType: !12, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2578, file: !2579, line: 65, baseType: !12, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2578, file: !2579, line: 66, baseType: !12, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2578, file: !2579, line: 68, baseType: !2594, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2579, line: 36, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2578, file: !2579, line: 70, baseType: !2597, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2578, file: !2579, line: 72, baseType: !28, size: 32, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2578, file: !2579, line: 73, baseType: !28, size: 32, offset: 928)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2578, file: !2579, line: 74, baseType: !2601, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2602, line: 150, baseType: !2603)
!2602 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2603 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2578, file: !2579, line: 77, baseType: !103, size: 16, offset: 1024)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2578, file: !2579, line: 78, baseType: !2606, size: 8, offset: 1040)
!2606 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2578, file: !2579, line: 79, baseType: !2608, size: 8, offset: 1048)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !2609)
!2609 = !{!2610}
!2610 = !DISubrange(count: 1)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2578, file: !2579, line: 81, baseType: !2612, size: 64, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2579, line: 43, baseType: null)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2578, file: !2579, line: 89, baseType: !2615, size: 64, offset: 1152)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2602, line: 151, baseType: !2603)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2578, file: !2579, line: 91, baseType: !2617, size: 64, offset: 1216)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2579, line: 37, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2578, file: !2579, line: 92, baseType: !2620, size: 64, offset: 1280)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2579, line: 38, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2578, file: !2579, line: 93, baseType: !2597, size: 64, offset: 1344)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2578, file: !2579, line: 94, baseType: !14, size: 64, offset: 1408)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2578, file: !2579, line: 95, baseType: !104, size: 64, offset: 1472)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2578, file: !2579, line: 96, baseType: !28, size: 32, offset: 1536)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2578, file: !2579, line: 98, baseType: !2627, size: 160, offset: 1568)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 20)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637}
!2632 = !DILocalVariable(name: "stream", arg: 1, scope: !2572, file: !162, line: 62, type: !2575)
!2633 = !DILocalVariable(name: "command_name", arg: 2, scope: !2572, file: !162, line: 63, type: !25)
!2634 = !DILocalVariable(name: "package", arg: 3, scope: !2572, file: !162, line: 63, type: !25)
!2635 = !DILocalVariable(name: "version", arg: 4, scope: !2572, file: !162, line: 64, type: !25)
!2636 = !DILocalVariable(name: "authors", arg: 5, scope: !2572, file: !162, line: 65, type: !2630)
!2637 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2572, file: !162, line: 65, type: !104)
!2638 = !DILocation(line: 62, column: 24, scope: !2572)
!2639 = !DILocation(line: 63, column: 30, scope: !2572)
!2640 = !DILocation(line: 63, column: 56, scope: !2572)
!2641 = !DILocation(line: 64, column: 30, scope: !2572)
!2642 = !DILocation(line: 65, column: 39, scope: !2572)
!2643 = !DILocation(line: 65, column: 55, scope: !2572)
!2644 = !DILocation(line: 67, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2572, file: !162, line: 67, column: 7)
!2646 = !DILocation(line: 67, column: 7, scope: !2572)
!2647 = !DILocation(line: 68, column: 5, scope: !2645)
!2648 = !DILocation(line: 70, column: 5, scope: !2645)
!2649 = !DILocation(line: 84, column: 3, scope: !2572)
!2650 = !DILocation(line: 86, column: 3, scope: !2572)
!2651 = !DILocation(line: 95, column: 3, scope: !2572)
!2652 = !DILocation(line: 99, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2572, file: !162, line: 96, column: 5)
!2654 = !DILocation(line: 102, column: 7, scope: !2653)
!2655 = !DILocation(line: 103, column: 7, scope: !2653)
!2656 = !DILocation(line: 106, column: 7, scope: !2653)
!2657 = !DILocation(line: 107, column: 7, scope: !2653)
!2658 = !DILocation(line: 110, column: 7, scope: !2653)
!2659 = !DILocation(line: 112, column: 7, scope: !2653)
!2660 = !DILocation(line: 117, column: 7, scope: !2653)
!2661 = !DILocation(line: 119, column: 7, scope: !2653)
!2662 = !DILocation(line: 124, column: 7, scope: !2653)
!2663 = !DILocation(line: 126, column: 7, scope: !2653)
!2664 = !DILocation(line: 131, column: 7, scope: !2653)
!2665 = !DILocation(line: 134, column: 7, scope: !2653)
!2666 = !DILocation(line: 139, column: 7, scope: !2653)
!2667 = !DILocation(line: 142, column: 7, scope: !2653)
!2668 = !DILocation(line: 147, column: 7, scope: !2653)
!2669 = !DILocation(line: 151, column: 7, scope: !2653)
!2670 = !DILocation(line: 156, column: 7, scope: !2653)
!2671 = !DILocation(line: 160, column: 7, scope: !2653)
!2672 = !DILocation(line: 167, column: 7, scope: !2653)
!2673 = !DILocation(line: 171, column: 7, scope: !2653)
!2674 = !DILocation(line: 173, column: 1, scope: !2572)
!2675 = distinct !DISubprogram(name: "version_etc_ar", scope: !162, file: !162, line: 180, type: !2676, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !158, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2575, !25, !25, !25, !2630}
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684}
!2679 = !DILocalVariable(name: "stream", arg: 1, scope: !2675, file: !162, line: 180, type: !2575)
!2680 = !DILocalVariable(name: "command_name", arg: 2, scope: !2675, file: !162, line: 181, type: !25)
!2681 = !DILocalVariable(name: "package", arg: 3, scope: !2675, file: !162, line: 181, type: !25)
!2682 = !DILocalVariable(name: "version", arg: 4, scope: !2675, file: !162, line: 182, type: !25)
!2683 = !DILocalVariable(name: "authors", arg: 5, scope: !2675, file: !162, line: 182, type: !2630)
!2684 = !DILocalVariable(name: "n_authors", scope: !2675, file: !162, line: 184, type: !104)
!2685 = !DILocation(line: 180, column: 23, scope: !2675)
!2686 = !DILocation(line: 181, column: 29, scope: !2675)
!2687 = !DILocation(line: 181, column: 55, scope: !2675)
!2688 = !DILocation(line: 182, column: 29, scope: !2675)
!2689 = !DILocation(line: 182, column: 59, scope: !2675)
!2690 = !DILocation(line: 184, column: 10, scope: !2675)
!2691 = !DILocation(line: 186, column: 8, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2675, file: !162, line: 186, column: 3)
!2693 = !DILocation(line: 0, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2692, file: !162, line: 186, column: 3)
!2695 = !DILocation(line: 186, column: 23, scope: !2694)
!2696 = !DILocation(line: 186, column: 3, scope: !2692)
!2697 = !DILocation(line: 186, column: 52, scope: !2694)
!2698 = distinct !{!2698, !2696, !2699}
!2699 = !DILocation(line: 187, column: 5, scope: !2692)
!2700 = !DILocation(line: 188, column: 3, scope: !2675)
!2701 = !DILocation(line: 189, column: 1, scope: !2675)
!2702 = distinct !DISubprogram(name: "version_etc_va", scope: !162, file: !162, line: 196, type: !2703, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !158, retainedNodes: !2712)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !2575, !25, !25, !25, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !159, line: 189, size: 192, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2711}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2706, file: !159, line: 189, baseType: !6, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2706, file: !159, line: 189, baseType: !6, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2706, file: !159, line: 189, baseType: !14, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2706, file: !159, line: 189, baseType: !14, size: 64, offset: 128)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2713 = !DILocalVariable(name: "stream", arg: 1, scope: !2702, file: !162, line: 196, type: !2575)
!2714 = !DILocalVariable(name: "command_name", arg: 2, scope: !2702, file: !162, line: 197, type: !25)
!2715 = !DILocalVariable(name: "package", arg: 3, scope: !2702, file: !162, line: 197, type: !25)
!2716 = !DILocalVariable(name: "version", arg: 4, scope: !2702, file: !162, line: 198, type: !25)
!2717 = !DILocalVariable(name: "authors", arg: 5, scope: !2702, file: !162, line: 198, type: !2705)
!2718 = !DILocalVariable(name: "n_authors", scope: !2702, file: !162, line: 200, type: !104)
!2719 = !DILocalVariable(name: "authtab", scope: !2702, file: !162, line: 201, type: !2720)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !113)
!2721 = !DILocation(line: 196, column: 23, scope: !2702)
!2722 = !DILocation(line: 197, column: 29, scope: !2702)
!2723 = !DILocation(line: 197, column: 55, scope: !2702)
!2724 = !DILocation(line: 198, column: 29, scope: !2702)
!2725 = !DILocation(line: 198, column: 46, scope: !2702)
!2726 = !DILocation(line: 201, column: 3, scope: !2702)
!2727 = !DILocation(line: 201, column: 15, scope: !2702)
!2728 = !DILocation(line: 200, column: 10, scope: !2702)
!2729 = !DILocation(line: 205, column: 35, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !162, line: 203, column: 3)
!2731 = distinct !DILexicalBlock(scope: !2702, file: !162, line: 203, column: 3)
!2732 = !DILocation(line: 205, column: 14, scope: !2730)
!2733 = !DILocation(line: 205, column: 33, scope: !2730)
!2734 = !DILocation(line: 205, column: 67, scope: !2730)
!2735 = !DILocation(line: 203, column: 3, scope: !2731)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 208, column: 3, scope: !2702)
!2738 = !DILocation(line: 210, column: 1, scope: !2702)
!2739 = distinct !DISubprogram(name: "version_etc", scope: !162, file: !162, line: 227, type: !2740, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !158, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2575, !25, !25, !25, null}
!2742 = !{!2743, !2744, !2745, !2746, !2747}
!2743 = !DILocalVariable(name: "stream", arg: 1, scope: !2739, file: !162, line: 227, type: !2575)
!2744 = !DILocalVariable(name: "command_name", arg: 2, scope: !2739, file: !162, line: 228, type: !25)
!2745 = !DILocalVariable(name: "package", arg: 3, scope: !2739, file: !162, line: 228, type: !25)
!2746 = !DILocalVariable(name: "version", arg: 4, scope: !2739, file: !162, line: 229, type: !25)
!2747 = !DILocalVariable(name: "authors", scope: !2739, file: !162, line: 231, type: !2748)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2749, line: 52, baseType: !2750)
!2749 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2751, line: 48, baseType: !2752)
!2751 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !159, line: 231, baseType: !2753)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 192, elements: !2609)
!2754 = !DILocation(line: 227, column: 20, scope: !2739)
!2755 = !DILocation(line: 228, column: 26, scope: !2739)
!2756 = !DILocation(line: 228, column: 52, scope: !2739)
!2757 = !DILocation(line: 229, column: 26, scope: !2739)
!2758 = !DILocation(line: 231, column: 3, scope: !2739)
!2759 = !DILocation(line: 231, column: 11, scope: !2739)
!2760 = !DILocation(line: 233, column: 3, scope: !2739)
!2761 = !DILocation(line: 234, column: 3, scope: !2739)
!2762 = !DILocation(line: 235, column: 3, scope: !2739)
!2763 = !DILocation(line: 236, column: 1, scope: !2739)
!2764 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !162, file: !162, line: 239, type: !755, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !158, retainedNodes: !39)
!2765 = !DILocation(line: 245, column: 3, scope: !2764)
!2766 = !DILocation(line: 251, column: 3, scope: !2764)
!2767 = !DILocation(line: 256, column: 3, scope: !2764)
!2768 = !DILocation(line: 258, column: 1, scope: !2764)
!2769 = distinct !DISubprogram(name: "xnmalloc", scope: !170, file: !170, line: 99, type: !2770, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!14, !104, !104}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !170, line: 99, type: !104)
!2774 = !DILocalVariable(name: "s", arg: 2, scope: !2769, file: !170, line: 99, type: !104)
!2775 = !DILocation(line: 99, column: 18, scope: !2769)
!2776 = !DILocation(line: 99, column: 28, scope: !2769)
!2777 = !DILocation(line: 101, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !170, line: 101, column: 7)
!2779 = !DILocation(line: 101, column: 7, scope: !2769)
!2780 = !DILocation(line: 102, column: 5, scope: !2778)
!2781 = !DILocation(line: 103, column: 21, scope: !2769)
!2782 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !2784, line: 39, type: !104)
!2783 = distinct !DISubprogram(name: "xmalloc", scope: !2784, file: !2784, line: 39, type: !2785, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2787)
!2784 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!14, !104}
!2787 = !{!2782, !2788}
!2788 = !DILocalVariable(name: "p", scope: !2783, file: !2784, line: 41, type: !14)
!2789 = !DILocation(line: 39, column: 17, scope: !2783, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 103, column: 10, scope: !2769)
!2791 = !DILocation(line: 41, column: 13, scope: !2783, inlinedAt: !2790)
!2792 = !DILocation(line: 41, column: 9, scope: !2783, inlinedAt: !2790)
!2793 = !DILocation(line: 42, column: 8, scope: !2794, inlinedAt: !2790)
!2794 = distinct !DILexicalBlock(scope: !2783, file: !2784, line: 42, column: 7)
!2795 = !DILocation(line: 42, column: 15, scope: !2794, inlinedAt: !2790)
!2796 = !DILocation(line: 42, column: 10, scope: !2794, inlinedAt: !2790)
!2797 = !DILocation(line: 43, column: 5, scope: !2794, inlinedAt: !2790)
!2798 = !DILocation(line: 103, column: 3, scope: !2769)
!2799 = !DILocation(line: 39, column: 17, scope: !2783)
!2800 = !DILocation(line: 41, column: 13, scope: !2783)
!2801 = !DILocation(line: 41, column: 9, scope: !2783)
!2802 = !DILocation(line: 42, column: 8, scope: !2794)
!2803 = !DILocation(line: 42, column: 15, scope: !2794)
!2804 = !DILocation(line: 42, column: 10, scope: !2794)
!2805 = !DILocation(line: 43, column: 5, scope: !2794)
!2806 = !DILocation(line: 44, column: 3, scope: !2783)
!2807 = distinct !DISubprogram(name: "xnrealloc", scope: !170, file: !170, line: 112, type: !2808, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!14, !14, !104, !104}
!2810 = !{!2811, !2812, !2813}
!2811 = !DILocalVariable(name: "p", arg: 1, scope: !2807, file: !170, line: 112, type: !14)
!2812 = !DILocalVariable(name: "n", arg: 2, scope: !2807, file: !170, line: 112, type: !104)
!2813 = !DILocalVariable(name: "s", arg: 3, scope: !2807, file: !170, line: 112, type: !104)
!2814 = !DILocation(line: 112, column: 18, scope: !2807)
!2815 = !DILocation(line: 112, column: 28, scope: !2807)
!2816 = !DILocation(line: 112, column: 38, scope: !2807)
!2817 = !DILocation(line: 114, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !170, line: 114, column: 7)
!2819 = !DILocation(line: 114, column: 7, scope: !2807)
!2820 = !DILocation(line: 115, column: 5, scope: !2818)
!2821 = !DILocation(line: 116, column: 25, scope: !2807)
!2822 = !DILocalVariable(name: "p", arg: 1, scope: !2823, file: !2784, line: 51, type: !14)
!2823 = distinct !DISubprogram(name: "xrealloc", scope: !2784, file: !2784, line: 51, type: !2824, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!14, !14, !104}
!2826 = !{!2822, !2827}
!2827 = !DILocalVariable(name: "n", arg: 2, scope: !2823, file: !2784, line: 51, type: !104)
!2828 = !DILocation(line: 51, column: 17, scope: !2823, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 116, column: 10, scope: !2807)
!2830 = !DILocation(line: 51, column: 27, scope: !2823, inlinedAt: !2829)
!2831 = !DILocation(line: 53, column: 8, scope: !2832, inlinedAt: !2829)
!2832 = distinct !DILexicalBlock(scope: !2823, file: !2784, line: 53, column: 7)
!2833 = !DILocation(line: 53, column: 13, scope: !2832, inlinedAt: !2829)
!2834 = !DILocation(line: 53, column: 10, scope: !2832, inlinedAt: !2829)
!2835 = !DILocation(line: 57, column: 7, scope: !2836, inlinedAt: !2829)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !2784, line: 54, column: 5)
!2837 = !DILocation(line: 58, column: 7, scope: !2836, inlinedAt: !2829)
!2838 = !DILocation(line: 61, column: 7, scope: !2823, inlinedAt: !2829)
!2839 = !DILocation(line: 62, column: 8, scope: !2840, inlinedAt: !2829)
!2840 = distinct !DILexicalBlock(scope: !2823, file: !2784, line: 62, column: 7)
!2841 = !DILocation(line: 62, column: 13, scope: !2840, inlinedAt: !2829)
!2842 = !DILocation(line: 62, column: 10, scope: !2840, inlinedAt: !2829)
!2843 = !DILocation(line: 63, column: 5, scope: !2840, inlinedAt: !2829)
!2844 = !DILocation(line: 0, scope: !2823, inlinedAt: !2829)
!2845 = !DILocation(line: 116, column: 3, scope: !2807)
!2846 = !DILocation(line: 51, column: 17, scope: !2823)
!2847 = !DILocation(line: 51, column: 27, scope: !2823)
!2848 = !DILocation(line: 53, column: 8, scope: !2832)
!2849 = !DILocation(line: 53, column: 13, scope: !2832)
!2850 = !DILocation(line: 53, column: 10, scope: !2832)
!2851 = !DILocation(line: 57, column: 7, scope: !2836)
!2852 = !DILocation(line: 58, column: 7, scope: !2836)
!2853 = !DILocation(line: 61, column: 7, scope: !2823)
!2854 = !DILocation(line: 62, column: 8, scope: !2840)
!2855 = !DILocation(line: 62, column: 13, scope: !2840)
!2856 = !DILocation(line: 62, column: 10, scope: !2840)
!2857 = !DILocation(line: 63, column: 5, scope: !2840)
!2858 = !DILocation(line: 0, scope: !2823)
!2859 = !DILocation(line: 65, column: 1, scope: !2823)
!2860 = !DILocation(line: 174, column: 19, scope: !171)
!2861 = !DILocation(line: 174, column: 30, scope: !171)
!2862 = !DILocation(line: 174, column: 41, scope: !171)
!2863 = !DILocation(line: 176, column: 14, scope: !171)
!2864 = !DILocation(line: 176, column: 10, scope: !171)
!2865 = !DILocation(line: 178, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !171, file: !170, line: 178, column: 7)
!2867 = !DILocation(line: 178, column: 7, scope: !171)
!2868 = !DILocation(line: 180, column: 13, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !170, line: 180, column: 11)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !170, line: 179, column: 5)
!2871 = !DILocation(line: 180, column: 11, scope: !2870)
!2872 = !DILocation(line: 188, column: 30, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !170, line: 181, column: 9)
!2874 = !DILocation(line: 189, column: 16, scope: !2873)
!2875 = !DILocation(line: 189, column: 13, scope: !2873)
!2876 = !DILocation(line: 190, column: 9, scope: !2873)
!2877 = !DILocation(line: 0, scope: !2873)
!2878 = !DILocation(line: 191, column: 11, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2870, file: !170, line: 191, column: 11)
!2880 = !DILocation(line: 191, column: 11, scope: !2870)
!2881 = !DILocation(line: 206, column: 7, scope: !171)
!2882 = !DILocation(line: 207, column: 25, scope: !171)
!2883 = !DILocation(line: 51, column: 17, scope: !2823, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 207, column: 10, scope: !171)
!2885 = !DILocation(line: 51, column: 27, scope: !2823, inlinedAt: !2884)
!2886 = !DILocation(line: 53, column: 10, scope: !2832, inlinedAt: !2884)
!2887 = !DILocation(line: 192, column: 9, scope: !2879)
!2888 = !DILocation(line: 200, column: 69, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !170, line: 200, column: 11)
!2890 = distinct !DILexicalBlock(scope: !2866, file: !170, line: 195, column: 5)
!2891 = !DILocation(line: 201, column: 11, scope: !2889)
!2892 = !DILocation(line: 200, column: 11, scope: !2890)
!2893 = !DILocation(line: 202, column: 9, scope: !2889)
!2894 = !DILocation(line: 203, column: 14, scope: !2890)
!2895 = !DILocation(line: 203, column: 18, scope: !2890)
!2896 = !DILocation(line: 203, column: 9, scope: !2890)
!2897 = !DILocation(line: 53, column: 8, scope: !2832, inlinedAt: !2884)
!2898 = !DILocation(line: 57, column: 7, scope: !2836, inlinedAt: !2884)
!2899 = !DILocation(line: 58, column: 7, scope: !2836, inlinedAt: !2884)
!2900 = !DILocation(line: 61, column: 7, scope: !2823, inlinedAt: !2884)
!2901 = !DILocation(line: 62, column: 8, scope: !2840, inlinedAt: !2884)
!2902 = !DILocation(line: 62, column: 13, scope: !2840, inlinedAt: !2884)
!2903 = !DILocation(line: 62, column: 10, scope: !2840, inlinedAt: !2884)
!2904 = !DILocation(line: 63, column: 5, scope: !2840, inlinedAt: !2884)
!2905 = !DILocation(line: 0, scope: !2823, inlinedAt: !2884)
!2906 = !DILocation(line: 207, column: 3, scope: !171)
!2907 = distinct !DISubprogram(name: "xcharalloc", scope: !170, file: !170, line: 216, type: !1856, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2908)
!2908 = !{!2909}
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2907, file: !170, line: 216, type: !104)
!2910 = !DILocation(line: 216, column: 20, scope: !2907)
!2911 = !DILocation(line: 39, column: 17, scope: !2783, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 218, column: 10, scope: !2907)
!2913 = !DILocation(line: 41, column: 13, scope: !2783, inlinedAt: !2912)
!2914 = !DILocation(line: 41, column: 9, scope: !2783, inlinedAt: !2912)
!2915 = !DILocation(line: 42, column: 8, scope: !2794, inlinedAt: !2912)
!2916 = !DILocation(line: 42, column: 15, scope: !2794, inlinedAt: !2912)
!2917 = !DILocation(line: 42, column: 10, scope: !2794, inlinedAt: !2912)
!2918 = !DILocation(line: 43, column: 5, scope: !2794, inlinedAt: !2912)
!2919 = !DILocation(line: 218, column: 3, scope: !2907)
!2920 = distinct !DISubprogram(name: "x2realloc", scope: !2784, file: !2784, line: 74, type: !2921, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!14, !14, !174}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2920, file: !2784, line: 74, type: !14)
!2925 = !DILocalVariable(name: "pn", arg: 2, scope: !2920, file: !2784, line: 74, type: !174)
!2926 = !DILocation(line: 74, column: 18, scope: !2920)
!2927 = !DILocation(line: 74, column: 29, scope: !2920)
!2928 = !DILocation(line: 174, column: 19, scope: !171, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 76, column: 10, scope: !2920)
!2930 = !DILocation(line: 174, column: 30, scope: !171, inlinedAt: !2929)
!2931 = !DILocation(line: 174, column: 41, scope: !171, inlinedAt: !2929)
!2932 = !DILocation(line: 176, column: 14, scope: !171, inlinedAt: !2929)
!2933 = !DILocation(line: 176, column: 10, scope: !171, inlinedAt: !2929)
!2934 = !DILocation(line: 178, column: 9, scope: !2866, inlinedAt: !2929)
!2935 = !DILocation(line: 178, column: 7, scope: !171, inlinedAt: !2929)
!2936 = !DILocation(line: 180, column: 13, scope: !2869, inlinedAt: !2929)
!2937 = !DILocation(line: 180, column: 11, scope: !2870, inlinedAt: !2929)
!2938 = !DILocation(line: 191, column: 11, scope: !2879, inlinedAt: !2929)
!2939 = !DILocation(line: 191, column: 11, scope: !2870, inlinedAt: !2929)
!2940 = !DILocation(line: 206, column: 7, scope: !171, inlinedAt: !2929)
!2941 = !DILocation(line: 51, column: 17, scope: !2823, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 207, column: 10, scope: !171, inlinedAt: !2929)
!2943 = !DILocation(line: 51, column: 27, scope: !2823, inlinedAt: !2942)
!2944 = !DILocation(line: 53, column: 10, scope: !2832, inlinedAt: !2942)
!2945 = !DILocation(line: 192, column: 9, scope: !2879, inlinedAt: !2929)
!2946 = !DILocation(line: 201, column: 11, scope: !2889, inlinedAt: !2929)
!2947 = !DILocation(line: 200, column: 11, scope: !2890, inlinedAt: !2929)
!2948 = !DILocation(line: 202, column: 9, scope: !2889, inlinedAt: !2929)
!2949 = !DILocation(line: 203, column: 14, scope: !2890, inlinedAt: !2929)
!2950 = !DILocation(line: 203, column: 18, scope: !2890, inlinedAt: !2929)
!2951 = !DILocation(line: 203, column: 9, scope: !2890, inlinedAt: !2929)
!2952 = !DILocation(line: 53, column: 8, scope: !2832, inlinedAt: !2942)
!2953 = !DILocation(line: 57, column: 7, scope: !2836, inlinedAt: !2942)
!2954 = !DILocation(line: 58, column: 7, scope: !2836, inlinedAt: !2942)
!2955 = !DILocation(line: 61, column: 7, scope: !2823, inlinedAt: !2942)
!2956 = !DILocation(line: 62, column: 8, scope: !2840, inlinedAt: !2942)
!2957 = !DILocation(line: 62, column: 13, scope: !2840, inlinedAt: !2942)
!2958 = !DILocation(line: 62, column: 10, scope: !2840, inlinedAt: !2942)
!2959 = !DILocation(line: 63, column: 5, scope: !2840, inlinedAt: !2942)
!2960 = !DILocation(line: 0, scope: !2823, inlinedAt: !2942)
!2961 = !DILocation(line: 76, column: 3, scope: !2920)
!2962 = distinct !DISubprogram(name: "xzalloc", scope: !2784, file: !2784, line: 84, type: !2785, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2963)
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !2784, line: 84, type: !104)
!2965 = !DILocation(line: 84, column: 17, scope: !2962)
!2966 = !DILocation(line: 39, column: 17, scope: !2783, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 86, column: 18, scope: !2962)
!2968 = !DILocation(line: 41, column: 13, scope: !2783, inlinedAt: !2967)
!2969 = !DILocation(line: 41, column: 9, scope: !2783, inlinedAt: !2967)
!2970 = !DILocation(line: 42, column: 8, scope: !2794, inlinedAt: !2967)
!2971 = !DILocation(line: 42, column: 15, scope: !2794, inlinedAt: !2967)
!2972 = !DILocation(line: 42, column: 10, scope: !2794, inlinedAt: !2967)
!2973 = !DILocation(line: 43, column: 5, scope: !2794, inlinedAt: !2967)
!2974 = !DILocation(line: 86, column: 10, scope: !2962)
!2975 = !DILocation(line: 86, column: 3, scope: !2962)
!2976 = distinct !DISubprogram(name: "xcalloc", scope: !2784, file: !2784, line: 93, type: !2770, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !2784, line: 93, type: !104)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !2784, line: 93, type: !104)
!2980 = !DILocalVariable(name: "p", scope: !2976, file: !2784, line: 95, type: !14)
!2981 = !DILocation(line: 93, column: 17, scope: !2976)
!2982 = !DILocation(line: 93, column: 27, scope: !2976)
!2983 = !DILocation(line: 100, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !2784, line: 100, column: 7)
!2985 = !DILocation(line: 101, column: 7, scope: !2984)
!2986 = !DILocation(line: 101, column: 18, scope: !2984)
!2987 = !DILocation(line: 95, column: 9, scope: !2976)
!2988 = !DILocation(line: 101, column: 16, scope: !2984)
!2989 = !DILocation(line: 100, column: 7, scope: !2976)
!2990 = !DILocation(line: 102, column: 5, scope: !2984)
!2991 = !DILocation(line: 103, column: 3, scope: !2976)
!2992 = distinct !DISubprogram(name: "xmemdup", scope: !2784, file: !2784, line: 111, type: !2993, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2997)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!14, !2995, !104}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "p", arg: 1, scope: !2992, file: !2784, line: 111, type: !2995)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2992, file: !2784, line: 111, type: !104)
!3000 = !DILocation(line: 111, column: 22, scope: !2992)
!3001 = !DILocation(line: 111, column: 32, scope: !2992)
!3002 = !DILocation(line: 39, column: 17, scope: !2783, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 113, column: 18, scope: !2992)
!3004 = !DILocation(line: 41, column: 13, scope: !2783, inlinedAt: !3003)
!3005 = !DILocation(line: 41, column: 9, scope: !2783, inlinedAt: !3003)
!3006 = !DILocation(line: 42, column: 8, scope: !2794, inlinedAt: !3003)
!3007 = !DILocation(line: 42, column: 15, scope: !2794, inlinedAt: !3003)
!3008 = !DILocation(line: 42, column: 10, scope: !2794, inlinedAt: !3003)
!3009 = !DILocation(line: 43, column: 5, scope: !2794, inlinedAt: !3003)
!3010 = !DILocation(line: 113, column: 10, scope: !2992)
!3011 = !DILocation(line: 113, column: 3, scope: !2992)
!3012 = distinct !DISubprogram(name: "xstrdup", scope: !2784, file: !2784, line: 119, type: !2062, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3013)
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "string", arg: 1, scope: !3012, file: !2784, line: 119, type: !25)
!3015 = !DILocation(line: 119, column: 22, scope: !3012)
!3016 = !DILocation(line: 121, column: 27, scope: !3012)
!3017 = !DILocation(line: 121, column: 43, scope: !3012)
!3018 = !DILocation(line: 111, column: 22, scope: !2992, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 121, column: 10, scope: !3012)
!3020 = !DILocation(line: 111, column: 32, scope: !2992, inlinedAt: !3019)
!3021 = !DILocation(line: 39, column: 17, scope: !2783, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 113, column: 18, scope: !2992, inlinedAt: !3019)
!3023 = !DILocation(line: 41, column: 13, scope: !2783, inlinedAt: !3022)
!3024 = !DILocation(line: 41, column: 9, scope: !2783, inlinedAt: !3022)
!3025 = !DILocation(line: 42, column: 8, scope: !2794, inlinedAt: !3022)
!3026 = !DILocation(line: 42, column: 15, scope: !2794, inlinedAt: !3022)
!3027 = !DILocation(line: 42, column: 10, scope: !2794, inlinedAt: !3022)
!3028 = !DILocation(line: 43, column: 5, scope: !2794, inlinedAt: !3022)
!3029 = !DILocation(line: 113, column: 10, scope: !2992, inlinedAt: !3019)
!3030 = !DILocation(line: 121, column: 3, scope: !3012)
!3031 = distinct !DISubprogram(name: "xalloc_die", scope: !3032, file: !3032, line: 32, type: !755, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !183, retainedNodes: !39)
!3032 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3033 = !DILocation(line: 34, column: 10, scope: !3031)
!3034 = !DILocation(line: 34, column: 33, scope: !3031)
!3035 = !DILocation(line: 34, column: 3, scope: !3031)
!3036 = !DILocation(line: 40, column: 3, scope: !3031)
!3037 = distinct !DISubprogram(name: "rpl_calloc", scope: !3038, file: !3038, line: 42, type: !2770, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3039)
!3038 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3039 = !{!3040, !3041, !3042, !3043}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3037, file: !3038, line: 42, type: !104)
!3041 = !DILocalVariable(name: "s", arg: 2, scope: !3037, file: !3038, line: 42, type: !104)
!3042 = !DILocalVariable(name: "result", scope: !3037, file: !3038, line: 44, type: !14)
!3043 = !DILocalVariable(name: "bytes", scope: !3044, file: !3038, line: 56, type: !104)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3038, line: 53, column: 5)
!3045 = distinct !DILexicalBlock(scope: !3037, file: !3038, line: 47, column: 7)
!3046 = !DILocation(line: 42, column: 20, scope: !3037)
!3047 = !DILocation(line: 42, column: 30, scope: !3037)
!3048 = !DILocation(line: 47, column: 9, scope: !3045)
!3049 = !DILocation(line: 47, column: 19, scope: !3045)
!3050 = !DILocation(line: 47, column: 14, scope: !3045)
!3051 = !DILocation(line: 56, column: 24, scope: !3044)
!3052 = !DILocation(line: 56, column: 14, scope: !3044)
!3053 = !DILocation(line: 57, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3044, file: !3038, line: 57, column: 11)
!3055 = !DILocation(line: 57, column: 21, scope: !3054)
!3056 = !DILocation(line: 57, column: 11, scope: !3044)
!3057 = !DILocation(line: 59, column: 11, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !3038, line: 58, column: 9)
!3059 = !DILocation(line: 59, column: 17, scope: !3058)
!3060 = !DILocation(line: 65, column: 12, scope: !3037)
!3061 = !DILocation(line: 44, column: 9, scope: !3037)
!3062 = !DILocation(line: 72, column: 3, scope: !3037)
!3063 = !DILocation(line: 0, scope: !3058)
!3064 = !DILocation(line: 73, column: 1, scope: !3037)
!3065 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3066, file: !3066, line: 385, type: !3067, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3081)
!3066 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!104, !3069, !25, !104, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !3072)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3073, file: !1020, line: 15, baseType: !28, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3073, file: !1020, line: 20, baseType: !3077, size: 32, offset: 32)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3073, file: !1020, line: 16, size: 32, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3077, file: !1020, line: 18, baseType: !6, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3077, file: !1020, line: 19, baseType: !1029, size: 32)
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3082 = !DILocalVariable(name: "pwc", arg: 1, scope: !3065, file: !3066, line: 385, type: !3069)
!3083 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !3066, line: 385, type: !25)
!3084 = !DILocalVariable(name: "n", arg: 3, scope: !3065, file: !3066, line: 385, type: !104)
!3085 = !DILocalVariable(name: "ps", arg: 4, scope: !3065, file: !3066, line: 385, type: !3070)
!3086 = !DILocalVariable(name: "ret", scope: !3065, file: !3066, line: 387, type: !104)
!3087 = !DILocalVariable(name: "wc", scope: !3065, file: !3066, line: 388, type: !1034)
!3088 = !DILocalVariable(name: "uc", scope: !3089, file: !3066, line: 449, type: !878)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !3066, line: 448, column: 5)
!3090 = distinct !DILexicalBlock(scope: !3065, file: !3066, line: 447, column: 7)
!3091 = !DILocation(line: 385, column: 23, scope: !3065)
!3092 = !DILocation(line: 385, column: 40, scope: !3065)
!3093 = !DILocation(line: 385, column: 50, scope: !3065)
!3094 = !DILocation(line: 385, column: 64, scope: !3065)
!3095 = !DILocation(line: 388, column: 3, scope: !3065)
!3096 = !DILocation(line: 404, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3065, file: !3066, line: 404, column: 7)
!3098 = !DILocation(line: 404, column: 7, scope: !3065)
!3099 = !DILocation(line: 439, column: 9, scope: !3065)
!3100 = !DILocation(line: 387, column: 10, scope: !3065)
!3101 = !DILocation(line: 447, column: 19, scope: !3090)
!3102 = !DILocation(line: 447, column: 31, scope: !3090)
!3103 = !DILocation(line: 447, column: 26, scope: !3090)
!3104 = !DILocation(line: 447, column: 41, scope: !3090)
!3105 = !DILocation(line: 447, column: 7, scope: !3065)
!3106 = !DILocation(line: 449, column: 26, scope: !3089)
!3107 = !DILocation(line: 449, column: 21, scope: !3089)
!3108 = !DILocation(line: 450, column: 14, scope: !3089)
!3109 = !DILocation(line: 450, column: 12, scope: !3089)
!3110 = !DILocation(line: 0, scope: !3089)
!3111 = !DILocation(line: 456, column: 1, scope: !3065)
!3112 = distinct !DISubprogram(name: "close_stream", scope: !3113, file: !3113, line: 56, type: !3114, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !190, retainedNodes: !3150)
!3113 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!28, !3116}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2577, line: 7, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2579, line: 49, size: 1728, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3118, file: !2579, line: 51, baseType: !28, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3118, file: !2579, line: 54, baseType: !12, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3118, file: !2579, line: 55, baseType: !12, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3118, file: !2579, line: 56, baseType: !12, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3118, file: !2579, line: 57, baseType: !12, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3118, file: !2579, line: 58, baseType: !12, size: 64, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3118, file: !2579, line: 59, baseType: !12, size: 64, offset: 384)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3118, file: !2579, line: 60, baseType: !12, size: 64, offset: 448)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3118, file: !2579, line: 61, baseType: !12, size: 64, offset: 512)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3118, file: !2579, line: 64, baseType: !12, size: 64, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3118, file: !2579, line: 65, baseType: !12, size: 64, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3118, file: !2579, line: 66, baseType: !12, size: 64, offset: 704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3118, file: !2579, line: 68, baseType: !2594, size: 64, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3118, file: !2579, line: 70, baseType: !3134, size: 64, offset: 832)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3118, file: !2579, line: 72, baseType: !28, size: 32, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3118, file: !2579, line: 73, baseType: !28, size: 32, offset: 928)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3118, file: !2579, line: 74, baseType: !2601, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3118, file: !2579, line: 77, baseType: !103, size: 16, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3118, file: !2579, line: 78, baseType: !2606, size: 8, offset: 1040)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3118, file: !2579, line: 79, baseType: !2608, size: 8, offset: 1048)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3118, file: !2579, line: 81, baseType: !2612, size: 64, offset: 1088)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3118, file: !2579, line: 89, baseType: !2615, size: 64, offset: 1152)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3118, file: !2579, line: 91, baseType: !2617, size: 64, offset: 1216)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3118, file: !2579, line: 92, baseType: !2620, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3118, file: !2579, line: 93, baseType: !3134, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3118, file: !2579, line: 94, baseType: !14, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3118, file: !2579, line: 95, baseType: !104, size: 64, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3118, file: !2579, line: 96, baseType: !28, size: 32, offset: 1536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3118, file: !2579, line: 98, baseType: !2627, size: 160, offset: 1568)
!3150 = !{!3151, !3152, !3154, !3155}
!3151 = !DILocalVariable(name: "stream", arg: 1, scope: !3112, file: !3113, line: 56, type: !3116)
!3152 = !DILocalVariable(name: "some_pending", scope: !3112, file: !3113, line: 58, type: !3153)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!3154 = !DILocalVariable(name: "prev_fail", scope: !3112, file: !3113, line: 59, type: !3153)
!3155 = !DILocalVariable(name: "fclose_fail", scope: !3112, file: !3113, line: 60, type: !3153)
!3156 = !DILocation(line: 56, column: 21, scope: !3112)
!3157 = !DILocation(line: 58, column: 30, scope: !3112)
!3158 = !DILocalVariable(name: "__stream", arg: 1, scope: !3159, file: !3160, line: 135, type: !3116)
!3159 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3160, file: !3160, line: 135, type: !3114, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !190, retainedNodes: !3161)
!3160 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3161 = !{!3158}
!3162 = !DILocation(line: 135, column: 1, scope: !3159, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 59, column: 27, scope: !3112)
!3164 = !DILocation(line: 137, column: 10, scope: !3159, inlinedAt: !3163)
!3165 = !{!3166, !696, i64 0}
!3166 = !{!"_IO_FILE", !696, i64 0, !629, i64 8, !629, i64 16, !629, i64 24, !629, i64 32, !629, i64 40, !629, i64 48, !629, i64 56, !629, i64 64, !629, i64 72, !629, i64 80, !629, i64 88, !629, i64 96, !629, i64 104, !696, i64 112, !696, i64 116, !1901, i64 120, !1275, i64 128, !630, i64 130, !630, i64 131, !629, i64 136, !1901, i64 144, !629, i64 152, !629, i64 160, !629, i64 168, !629, i64 176, !1901, i64 184, !696, i64 192, !630, i64 196}
!3167 = !DILocation(line: 59, column: 43, scope: !3112)
!3168 = !DILocation(line: 60, column: 29, scope: !3112)
!3169 = !DILocation(line: 60, column: 45, scope: !3112)
!3170 = !DILocation(line: 70, column: 17, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3112, file: !3113, line: 70, column: 7)
!3172 = !DILocation(line: 58, column: 50, scope: !3112)
!3173 = !DILocation(line: 70, column: 33, scope: !3171)
!3174 = !DILocation(line: 70, column: 53, scope: !3171)
!3175 = !DILocation(line: 70, column: 59, scope: !3171)
!3176 = !DILocation(line: 70, column: 7, scope: !3112)
!3177 = !DILocation(line: 72, column: 11, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !3113, line: 71, column: 5)
!3179 = !DILocation(line: 73, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3178, file: !3113, line: 72, column: 11)
!3181 = !DILocation(line: 73, column: 15, scope: !3180)
!3182 = !DILocation(line: 0, scope: !3112)
!3183 = !DILocation(line: 78, column: 1, scope: !3112)
!3184 = distinct !DISubprogram(name: "hard_locale", scope: !3185, file: !3185, line: 38, type: !3186, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3188)
!3185 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!34, !28}
!3188 = !{!3189, !3190, !3191}
!3189 = !DILocalVariable(name: "category", arg: 1, scope: !3184, file: !3185, line: 38, type: !28)
!3190 = !DILocalVariable(name: "hard", scope: !3184, file: !3185, line: 40, type: !34)
!3191 = !DILocalVariable(name: "p", scope: !3184, file: !3185, line: 41, type: !25)
!3192 = !DILocation(line: 38, column: 18, scope: !3184)
!3193 = !DILocation(line: 40, column: 8, scope: !3184)
!3194 = !DILocation(line: 41, column: 19, scope: !3184)
!3195 = !DILocation(line: 41, column: 15, scope: !3184)
!3196 = !DILocation(line: 43, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3184, file: !3185, line: 43, column: 7)
!3198 = !DILocation(line: 43, column: 7, scope: !3184)
!3199 = !DILocation(line: 47, column: 15, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3185, line: 47, column: 15)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3185, line: 46, column: 9)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3185, line: 45, column: 11)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !3185, line: 44, column: 5)
!3204 = !DILocation(line: 47, column: 31, scope: !3200)
!3205 = !DILocation(line: 47, column: 36, scope: !3200)
!3206 = !DILocation(line: 47, column: 39, scope: !3200)
!3207 = !DILocation(line: 47, column: 59, scope: !3200)
!3208 = !DILocation(line: 47, column: 15, scope: !3201)
!3209 = !DILocation(line: 48, column: 13, scope: !3200)
!3210 = !DILocation(line: 71, column: 3, scope: !3184)
!3211 = distinct !DISubprogram(name: "locale_charset", scope: !3212, file: !3212, line: 687, type: !3213, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3215)
!3212 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!25}
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "codeset", scope: !3211, file: !3212, line: 689, type: !25)
!3217 = !DILocation(line: 696, column: 13, scope: !3211)
!3218 = !DILocation(line: 689, column: 15, scope: !3211)
!3219 = !DILocation(line: 754, column: 15, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3211, file: !3212, line: 754, column: 7)
!3221 = !DILocation(line: 754, column: 7, scope: !3211)
!3222 = !DILocation(line: 907, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3212, line: 907, column: 13)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3212, line: 897, column: 7)
!3225 = distinct !DILexicalBlock(scope: !3211, file: !3212, line: 856, column: 3)
!3226 = !DILocation(line: 907, column: 24, scope: !3223)
!3227 = !DILocation(line: 907, column: 13, scope: !3224)
!3228 = !DILocation(line: 995, column: 3, scope: !3211)
!3229 = distinct !DISubprogram(name: "rpl_fclose", scope: !3230, file: !3230, line: 58, type: !3231, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !583, retainedNodes: !3267)
!3230 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!28, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2577, line: 7, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2579, line: 49, size: 1728, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3235, file: !2579, line: 51, baseType: !28, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3235, file: !2579, line: 54, baseType: !12, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3235, file: !2579, line: 55, baseType: !12, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3235, file: !2579, line: 56, baseType: !12, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3235, file: !2579, line: 57, baseType: !12, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3235, file: !2579, line: 58, baseType: !12, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3235, file: !2579, line: 59, baseType: !12, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3235, file: !2579, line: 60, baseType: !12, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3235, file: !2579, line: 61, baseType: !12, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3235, file: !2579, line: 64, baseType: !12, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3235, file: !2579, line: 65, baseType: !12, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3235, file: !2579, line: 66, baseType: !12, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3235, file: !2579, line: 68, baseType: !2594, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3235, file: !2579, line: 70, baseType: !3251, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3235, file: !2579, line: 72, baseType: !28, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3235, file: !2579, line: 73, baseType: !28, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3235, file: !2579, line: 74, baseType: !2601, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3235, file: !2579, line: 77, baseType: !103, size: 16, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3235, file: !2579, line: 78, baseType: !2606, size: 8, offset: 1040)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3235, file: !2579, line: 79, baseType: !2608, size: 8, offset: 1048)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3235, file: !2579, line: 81, baseType: !2612, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3235, file: !2579, line: 89, baseType: !2615, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3235, file: !2579, line: 91, baseType: !2617, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3235, file: !2579, line: 92, baseType: !2620, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3235, file: !2579, line: 93, baseType: !3251, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3235, file: !2579, line: 94, baseType: !14, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3235, file: !2579, line: 95, baseType: !104, size: 64, offset: 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3235, file: !2579, line: 96, baseType: !28, size: 32, offset: 1536)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3235, file: !2579, line: 98, baseType: !2627, size: 160, offset: 1568)
!3267 = !{!3268, !3269, !3270, !3271}
!3268 = !DILocalVariable(name: "fp", arg: 1, scope: !3229, file: !3230, line: 58, type: !3233)
!3269 = !DILocalVariable(name: "saved_errno", scope: !3229, file: !3230, line: 60, type: !28)
!3270 = !DILocalVariable(name: "fd", scope: !3229, file: !3230, line: 61, type: !28)
!3271 = !DILocalVariable(name: "result", scope: !3229, file: !3230, line: 62, type: !28)
!3272 = !DILocation(line: 58, column: 19, scope: !3229)
!3273 = !DILocation(line: 60, column: 7, scope: !3229)
!3274 = !DILocation(line: 62, column: 7, scope: !3229)
!3275 = !DILocation(line: 65, column: 8, scope: !3229)
!3276 = !DILocation(line: 61, column: 7, scope: !3229)
!3277 = !DILocation(line: 66, column: 10, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3229, file: !3230, line: 66, column: 7)
!3279 = !DILocation(line: 66, column: 7, scope: !3229)
!3280 = !DILocation(line: 67, column: 12, scope: !3278)
!3281 = !DILocation(line: 67, column: 5, scope: !3278)
!3282 = !DILocation(line: 72, column: 9, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3229, file: !3230, line: 72, column: 7)
!3284 = !DILocation(line: 72, column: 23, scope: !3283)
!3285 = !DILocation(line: 72, column: 33, scope: !3283)
!3286 = !DILocation(line: 72, column: 26, scope: !3283)
!3287 = !DILocation(line: 72, column: 59, scope: !3283)
!3288 = !DILocation(line: 73, column: 7, scope: !3283)
!3289 = !DILocation(line: 73, column: 10, scope: !3283)
!3290 = !DILocation(line: 72, column: 7, scope: !3229)
!3291 = !DILocation(line: 100, column: 12, scope: !3229)
!3292 = !DILocation(line: 105, column: 7, scope: !3229)
!3293 = !DILocation(line: 74, column: 19, scope: !3283)
!3294 = !DILocation(line: 105, column: 19, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3229, file: !3230, line: 105, column: 7)
!3296 = !DILocation(line: 107, column: 13, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3295, file: !3230, line: 106, column: 5)
!3298 = !DILocation(line: 109, column: 5, scope: !3297)
!3299 = !DILocation(line: 0, scope: !3229)
!3300 = !DILocation(line: 112, column: 1, scope: !3229)
!3301 = distinct !DISubprogram(name: "rpl_fflush", scope: !3302, file: !3302, line: 129, type: !3303, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !585, retainedNodes: !3339)
!3302 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!28, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2577, line: 7, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2579, line: 49, size: 1728, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3307, file: !2579, line: 51, baseType: !28, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3307, file: !2579, line: 54, baseType: !12, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3307, file: !2579, line: 55, baseType: !12, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3307, file: !2579, line: 56, baseType: !12, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3307, file: !2579, line: 57, baseType: !12, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3307, file: !2579, line: 58, baseType: !12, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3307, file: !2579, line: 59, baseType: !12, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3307, file: !2579, line: 60, baseType: !12, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3307, file: !2579, line: 61, baseType: !12, size: 64, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3307, file: !2579, line: 64, baseType: !12, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3307, file: !2579, line: 65, baseType: !12, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3307, file: !2579, line: 66, baseType: !12, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3307, file: !2579, line: 68, baseType: !2594, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3307, file: !2579, line: 70, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3307, file: !2579, line: 72, baseType: !28, size: 32, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3307, file: !2579, line: 73, baseType: !28, size: 32, offset: 928)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3307, file: !2579, line: 74, baseType: !2601, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3307, file: !2579, line: 77, baseType: !103, size: 16, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3307, file: !2579, line: 78, baseType: !2606, size: 8, offset: 1040)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3307, file: !2579, line: 79, baseType: !2608, size: 8, offset: 1048)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3307, file: !2579, line: 81, baseType: !2612, size: 64, offset: 1088)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3307, file: !2579, line: 89, baseType: !2615, size: 64, offset: 1152)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3307, file: !2579, line: 91, baseType: !2617, size: 64, offset: 1216)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3307, file: !2579, line: 92, baseType: !2620, size: 64, offset: 1280)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3307, file: !2579, line: 93, baseType: !3323, size: 64, offset: 1344)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3307, file: !2579, line: 94, baseType: !14, size: 64, offset: 1408)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3307, file: !2579, line: 95, baseType: !104, size: 64, offset: 1472)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3307, file: !2579, line: 96, baseType: !28, size: 32, offset: 1536)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3307, file: !2579, line: 98, baseType: !2627, size: 160, offset: 1568)
!3339 = !{!3340}
!3340 = !DILocalVariable(name: "stream", arg: 1, scope: !3301, file: !3302, line: 129, type: !3305)
!3341 = !DILocation(line: 129, column: 19, scope: !3301)
!3342 = !DILocation(line: 150, column: 14, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3301, file: !3302, line: 150, column: 7)
!3344 = !DILocation(line: 150, column: 22, scope: !3343)
!3345 = !DILocation(line: 150, column: 27, scope: !3343)
!3346 = !DILocation(line: 150, column: 7, scope: !3301)
!3347 = !DILocation(line: 151, column: 12, scope: !3343)
!3348 = !DILocation(line: 151, column: 5, scope: !3343)
!3349 = !DILocalVariable(name: "fp", arg: 1, scope: !3350, file: !3302, line: 41, type: !3305)
!3350 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3302, file: !3302, line: 41, type: !3351, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !585, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !3305}
!3353 = !{!3349}
!3354 = !DILocation(line: 41, column: 48, scope: !3350, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 156, column: 3, scope: !3301)
!3356 = !DILocation(line: 43, column: 11, scope: !3357, inlinedAt: !3355)
!3357 = distinct !DILexicalBlock(scope: !3350, file: !3302, line: 43, column: 7)
!3358 = !DILocation(line: 43, column: 18, scope: !3357, inlinedAt: !3355)
!3359 = !DILocation(line: 43, column: 7, scope: !3350, inlinedAt: !3355)
!3360 = !DILocation(line: 45, column: 5, scope: !3357, inlinedAt: !3355)
!3361 = !DILocation(line: 158, column: 10, scope: !3301)
!3362 = !DILocation(line: 158, column: 3, scope: !3301)
!3363 = !DILocation(line: 0, scope: !3301)
!3364 = !DILocation(line: 232, column: 1, scope: !3301)
!3365 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3366, file: !3366, line: 28, type: !3367, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !587, retainedNodes: !3404)
!3366 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!28, !3369, !3403, !28}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2577, line: 7, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2579, line: 49, size: 1728, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3371, file: !2579, line: 51, baseType: !28, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3371, file: !2579, line: 54, baseType: !12, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3371, file: !2579, line: 55, baseType: !12, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3371, file: !2579, line: 56, baseType: !12, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3371, file: !2579, line: 57, baseType: !12, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3371, file: !2579, line: 58, baseType: !12, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3371, file: !2579, line: 59, baseType: !12, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3371, file: !2579, line: 60, baseType: !12, size: 64, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3371, file: !2579, line: 61, baseType: !12, size: 64, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3371, file: !2579, line: 64, baseType: !12, size: 64, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3371, file: !2579, line: 65, baseType: !12, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3371, file: !2579, line: 66, baseType: !12, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3371, file: !2579, line: 68, baseType: !2594, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3371, file: !2579, line: 70, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3371, file: !2579, line: 72, baseType: !28, size: 32, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3371, file: !2579, line: 73, baseType: !28, size: 32, offset: 928)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3371, file: !2579, line: 74, baseType: !2601, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3371, file: !2579, line: 77, baseType: !103, size: 16, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3371, file: !2579, line: 78, baseType: !2606, size: 8, offset: 1040)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3371, file: !2579, line: 79, baseType: !2608, size: 8, offset: 1048)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3371, file: !2579, line: 81, baseType: !2612, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3371, file: !2579, line: 89, baseType: !2615, size: 64, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3371, file: !2579, line: 91, baseType: !2617, size: 64, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3371, file: !2579, line: 92, baseType: !2620, size: 64, offset: 1280)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3371, file: !2579, line: 93, baseType: !3387, size: 64, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3371, file: !2579, line: 94, baseType: !14, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3371, file: !2579, line: 95, baseType: !104, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3371, file: !2579, line: 96, baseType: !28, size: 32, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3371, file: !2579, line: 98, baseType: !2627, size: 160, offset: 1568)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2749, line: 63, baseType: !2601)
!3404 = !{!3405, !3406, !3407, !3408}
!3405 = !DILocalVariable(name: "fp", arg: 1, scope: !3365, file: !3366, line: 28, type: !3369)
!3406 = !DILocalVariable(name: "offset", arg: 2, scope: !3365, file: !3366, line: 28, type: !3403)
!3407 = !DILocalVariable(name: "whence", arg: 3, scope: !3365, file: !3366, line: 28, type: !28)
!3408 = !DILocalVariable(name: "pos", scope: !3409, file: !3366, line: 117, type: !3403)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3366, line: 113, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3365, file: !3366, line: 52, column: 7)
!3411 = !DILocation(line: 28, column: 15, scope: !3365)
!3412 = !DILocation(line: 28, column: 25, scope: !3365)
!3413 = !DILocation(line: 28, column: 37, scope: !3365)
!3414 = !DILocation(line: 52, column: 11, scope: !3410)
!3415 = !{!3166, !629, i64 16}
!3416 = !DILocation(line: 52, column: 31, scope: !3410)
!3417 = !{!3166, !629, i64 8}
!3418 = !DILocation(line: 52, column: 24, scope: !3410)
!3419 = !DILocation(line: 53, column: 7, scope: !3410)
!3420 = !DILocation(line: 53, column: 14, scope: !3410)
!3421 = !{!3166, !629, i64 40}
!3422 = !DILocation(line: 53, column: 35, scope: !3410)
!3423 = !{!3166, !629, i64 32}
!3424 = !DILocation(line: 53, column: 28, scope: !3410)
!3425 = !DILocation(line: 54, column: 7, scope: !3410)
!3426 = !DILocation(line: 54, column: 14, scope: !3410)
!3427 = !{!3166, !629, i64 72}
!3428 = !DILocation(line: 54, column: 28, scope: !3410)
!3429 = !DILocation(line: 52, column: 7, scope: !3365)
!3430 = !DILocation(line: 117, column: 26, scope: !3409)
!3431 = !DILocation(line: 117, column: 19, scope: !3409)
!3432 = !DILocation(line: 117, column: 13, scope: !3409)
!3433 = !DILocation(line: 118, column: 15, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3409, file: !3366, line: 118, column: 11)
!3435 = !DILocation(line: 118, column: 11, scope: !3409)
!3436 = !DILocation(line: 129, column: 11, scope: !3409)
!3437 = !DILocation(line: 129, column: 18, scope: !3409)
!3438 = !DILocation(line: 130, column: 11, scope: !3409)
!3439 = !DILocation(line: 130, column: 19, scope: !3409)
!3440 = !{!3166, !1901, i64 144}
!3441 = !DILocation(line: 161, column: 7, scope: !3409)
!3442 = !DILocation(line: 163, column: 10, scope: !3365)
!3443 = !DILocation(line: 163, column: 3, scope: !3365)
!3444 = !DILocation(line: 0, scope: !3365)
!3445 = !DILocation(line: 164, column: 1, scope: !3365)
